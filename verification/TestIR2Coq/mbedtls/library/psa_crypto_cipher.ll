; ModuleID = 'psa_crypto_cipher.c'
source_filename = "psa_crypto_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_psa_cipher_operation_t = type { i32, i8, i8, %union.anon }
%union.anon = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef %alg, i16 noundef zeroext %key_type, i64 noundef %key_bits, i32* noundef %cipher_id) #0 {
entry:
  %retval = alloca %struct.mbedtls_cipher_info_t*, align 8
  %alg.addr = alloca i32, align 4
  %key_type.addr = alloca i16, align 2
  %key_bits.addr = alloca i64, align 8
  %cipher_id.addr = alloca i32*, align 8
  %mode = alloca i32, align 4
  %cipher_id_tmp = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i16 %key_type, i16* %key_type.addr, align 2
  store i64 %key_bits, i64* %key_bits.addr, align 8
  store i32* %cipher_id, i32** %cipher_id.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 83886080
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -4161537
  %or = or i32 %and1, 0
  store i32 %or, i32* %alg.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and2 = and i32 %2, 2130706432
  %cmp3 = icmp eq i32 %and2, 67108864
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %3, 2130706432
  %cmp5 = icmp eq i32 %and4, 83886080
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load i32, i32* %alg.addr, align 4
  switch i32 %4, label %sw.default [
    i32 75497728, label %sw.bb
    i32 79695872, label %sw.bb7
    i32 79696128, label %sw.bb8
    i32 79696384, label %sw.bb9
    i32 71320576, label %sw.bb10
    i32 71319552, label %sw.bb11
    i32 71319808, label %sw.bb12
    i32 79696640, label %sw.bb13
    i32 88080640, label %sw.bb14
    i32 88080896, label %sw.bb15
    i32 83887360, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.then6
  store i32 7, i32* %mode, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then6
  store i32 5, i32* %mode, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then6
  store i32 3, i32* %mode, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then6
  store i32 4, i32* %mode, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then6
  store i32 1, i32* %mode, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6
  store i32 2, i32* %mode, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then6
  store i32 2, i32* %mode, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then6
  store i32 9, i32* %mode, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then6
  store i32 8, i32* %mode, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6
  store i32 6, i32* %mode, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then6
  store i32 11, i32* %mode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %alg.addr, align 4
  %cmp17 = icmp eq i32 %5, 62915072
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  store i32 1, i32* %mode, align 4
  br label %if.end20

if.else19:                                        ; preds = %if.else
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %sw.epilog
  %6 = load i16, i16* %key_type.addr, align 2
  %conv = zext i16 %6 to i32
  switch i32 %conv, label %sw.default36 [
    i32 9216, label %sw.bb22
    i32 9222, label %sw.bb23
    i32 8961, label %sw.bb24
    i32 9219, label %sw.bb34
    i32 8196, label %sw.bb35
  ]

sw.bb22:                                          ; preds = %if.end21
  store i32 2, i32* %cipher_id_tmp, align 4
  br label %sw.epilog37

sw.bb23:                                          ; preds = %if.end21
  store i32 6, i32* %cipher_id_tmp, align 4
  br label %sw.epilog37

sw.bb24:                                          ; preds = %if.end21
  %7 = load i64, i64* %key_bits.addr, align 8
  %cmp25 = icmp eq i64 %7, 64
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %sw.bb24
  store i32 3, i32* %cipher_id_tmp, align 4
  br label %if.end29

if.else28:                                        ; preds = %sw.bb24
  store i32 4, i32* %cipher_id_tmp, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %8 = load i64, i64* %key_bits.addr, align 8
  %cmp30 = icmp eq i64 %8, 128
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i64 192, i64* %key_bits.addr, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  br label %sw.epilog37

sw.bb34:                                          ; preds = %if.end21
  store i32 5, i32* %cipher_id_tmp, align 4
  br label %sw.epilog37

sw.bb35:                                          ; preds = %if.end21
  store i32 7, i32* %cipher_id_tmp, align 4
  br label %sw.epilog37

sw.default36:                                     ; preds = %if.end21
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

sw.epilog37:                                      ; preds = %sw.bb35, %sw.bb34, %if.end33, %sw.bb23, %sw.bb22
  %9 = load i32*, i32** %cipher_id.addr, align 8
  %cmp38 = icmp ne i32* %9, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %sw.epilog37
  %10 = load i32, i32* %cipher_id_tmp, align 4
  %11 = load i32*, i32** %cipher_id.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %sw.epilog37
  %12 = load i32, i32* %cipher_id_tmp, align 4
  %13 = load i64, i64* %key_bits.addr, align 8
  %conv42 = trunc i64 %13 to i32
  %14 = load i32, i32* %mode, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef %12, i32 noundef %conv42, i32 noundef %14) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %sw.default36, %if.else19, %sw.default
  %15 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %retval, align 8
  ret %struct.mbedtls_cipher_info_t* %15
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_encrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_cipher_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef 1) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_cipher_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i32 noundef %cipher_operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %cipher_operation.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %key_bits = alloca i64, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %key_type = alloca i16, align 2
  %keys = alloca [24 x i8], align 16
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 %cipher_operation, i32* %cipher_operation.addr, align 4
  store i32 0, i32* %ret, align 4
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  store i16 %1, i16* %key_type, align 2
  %2 = load i64, i64* %key_buffer_size.addr, align 8
  %3 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %3, i32 0, i32 3
  %cipher = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher) #4
  %4 = load i32, i32* %alg.addr, align 4
  %5 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %5, i32 0, i32 0
  store i32 %4, i32* %alg1, align 8
  %6 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %6, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 1
  %7 = load i16, i16* %bits, align 2
  %conv = zext i16 %7 to i64
  store i64 %conv, i64* %key_bits, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %9 = load i16, i16* %key_type, align 2
  %10 = load i64, i64* %key_bits, align 8
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_psa(i32 noundef %8, i16 noundef zeroext %9, i64 noundef %10, i32* noundef null) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %11 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx4 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %12, i32 0, i32 3
  %cipher5 = bitcast %union.anon* %ctx4 to %struct.mbedtls_cipher_context_t*
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call6 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher5, %struct.mbedtls_cipher_info_t* noundef %13) #4
  store i32 %call6, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %14, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %exit

if.end10:                                         ; preds = %if.end
  %15 = load i16, i16* %key_type, align 2
  %conv11 = zext i16 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 8961
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %16 = load i64, i64* %key_bits, align 8
  %cmp14 = icmp eq i64 %16, 128
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %keys, i64 0, i64 0
  %17 = load i8*, i8** %key_buffer.addr, align 8
  %call17 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %17, i64 noundef 16) #5
  %arraydecay18 = getelementptr inbounds [24 x i8], [24 x i8]* %keys, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 16
  %18 = load i8*, i8** %key_buffer.addr, align 8
  %call19 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %18, i64 noundef 8) #5
  %19 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx20 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %19, i32 0, i32 3
  %cipher21 = bitcast %union.anon* %ctx20 to %struct.mbedtls_cipher_context_t*
  %arraydecay22 = getelementptr inbounds [24 x i8], [24 x i8]* %keys, i64 0, i64 0
  %20 = load i32, i32* %cipher_operation.addr, align 4
  %call23 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher21, i8* noundef %arraydecay22, i32 noundef 192, i32 noundef %20) #4
  store i32 %call23, i32* %ret, align 4
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true, %if.end10
  %21 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx24 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %21, i32 0, i32 3
  %cipher25 = bitcast %union.anon* %ctx24 to %struct.mbedtls_cipher_context_t*
  %22 = load i8*, i8** %key_buffer.addr, align 8
  %23 = load i64, i64* %key_bits, align 8
  %conv26 = trunc i64 %23 to i32
  %24 = load i32, i32* %cipher_operation.addr, align 4
  %call27 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher25, i8* noundef %22, i32 noundef %conv26, i32 noundef %24) #4
  store i32 %call27, i32* %ret, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then16
  %25 = load i32, i32* %ret, align 4
  %cmp29 = icmp ne i32 %25, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  br label %exit

if.end32:                                         ; preds = %if.end28
  %26 = load i32, i32* %alg.addr, align 4
  switch i32 %26, label %sw.default [
    i32 71319552, label %sw.bb
    i32 71319808, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end32
  %27 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx33 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %27, i32 0, i32 3
  %cipher34 = bitcast %union.anon* %ctx33 to %struct.mbedtls_cipher_context_t*
  %call35 = call i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %cipher34, i32 noundef 4) #4
  store i32 %call35, i32* %ret, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end32
  %28 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx37 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %28, i32 0, i32 3
  %cipher38 = bitcast %union.anon* %ctx37 to %struct.mbedtls_cipher_context_t*
  %call39 = call i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %cipher38, i32 noundef 0) #4
  store i32 %call39, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  store i32 0, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb
  %29 = load i32, i32* %ret, align 4
  %cmp40 = icmp ne i32 %29, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.epilog
  br label %exit

if.end43:                                         ; preds = %sw.epilog
  %30 = load i32, i32* %alg.addr, align 4
  %and = and i32 %30, 2139095040
  %cmp44 = icmp eq i32 %and, 75497472
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end43
  br label %cond.end54

cond.false:                                       ; preds = %if.end43
  %31 = load i16, i16* %key_type, align 2
  %conv46 = zext i16 %31 to i32
  %and47 = and i32 %conv46, 28672
  %cmp48 = icmp eq i32 %and47, 8192
  br i1 %cmp48, label %cond.true50, label %cond.false53

cond.true50:                                      ; preds = %cond.false
  %32 = load i16, i16* %key_type, align 2
  %conv51 = zext i16 %32 to i32
  %shr = ashr i32 %conv51, 8
  %and52 = and i32 %shr, 7
  %shl = shl i32 1, %and52
  br label %cond.end

cond.false53:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false53, %cond.true50
  %cond = phi i32 [ %shl, %cond.true50 ], [ 0, %cond.false53 ]
  br label %cond.end54

cond.end54:                                       ; preds = %cond.end, %cond.true
  %cond55 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %conv56 = trunc i32 %cond55 to i8
  %33 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %block_length = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %33, i32 0, i32 2
  store i8 %conv56, i8* %block_length, align 1
  %34 = load i16, i16* %key_type, align 2
  %conv57 = zext i16 %34 to i32
  %and58 = and i32 %conv57, 28672
  %cmp59 = icmp eq i32 %and58, 8192
  br i1 %cmp59, label %cond.true61, label %cond.false66

cond.true61:                                      ; preds = %cond.end54
  %35 = load i16, i16* %key_type, align 2
  %conv62 = zext i16 %35 to i32
  %shr63 = ashr i32 %conv62, 8
  %and64 = and i32 %shr63, 7
  %shl65 = shl i32 1, %and64
  br label %cond.end67

cond.false66:                                     ; preds = %cond.end54
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true61
  %cond68 = phi i32 [ %shl65, %cond.true61 ], [ 0, %cond.false66 ]
  %cmp69 = icmp ugt i32 %cond68, 1
  br i1 %cmp69, label %land.lhs.true71, label %cond.false101

land.lhs.true71:                                  ; preds = %cond.end67
  %36 = load i32, i32* %alg.addr, align 4
  %cmp72 = icmp eq i32 %36, 79695872
  br i1 %cmp72, label %cond.true88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true71
  %37 = load i32, i32* %alg.addr, align 4
  %cmp74 = icmp eq i32 %37, 79696128
  br i1 %cmp74, label %cond.true88, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false
  %38 = load i32, i32* %alg.addr, align 4
  %cmp77 = icmp eq i32 %38, 79696384
  br i1 %cmp77, label %cond.true88, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false76
  %39 = load i32, i32* %alg.addr, align 4
  %cmp80 = icmp eq i32 %39, 71368448
  br i1 %cmp80, label %cond.true88, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %40 = load i32, i32* %alg.addr, align 4
  %cmp83 = icmp eq i32 %40, 71319552
  br i1 %cmp83, label %cond.true88, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %41 = load i32, i32* %alg.addr, align 4
  %cmp86 = icmp eq i32 %41, 71319808
  br i1 %cmp86, label %cond.true88, label %cond.false101

cond.true88:                                      ; preds = %lor.lhs.false85, %lor.lhs.false82, %lor.lhs.false79, %lor.lhs.false76, %lor.lhs.false, %land.lhs.true71
  %42 = load i16, i16* %key_type, align 2
  %conv89 = zext i16 %42 to i32
  %and90 = and i32 %conv89, 28672
  %cmp91 = icmp eq i32 %and90, 8192
  br i1 %cmp91, label %cond.true93, label %cond.false98

cond.true93:                                      ; preds = %cond.true88
  %43 = load i16, i16* %key_type, align 2
  %conv94 = zext i16 %43 to i32
  %shr95 = ashr i32 %conv94, 8
  %and96 = and i32 %shr95, 7
  %shl97 = shl i32 1, %and96
  br label %cond.end99

cond.false98:                                     ; preds = %cond.true88
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %cond.true93
  %cond100 = phi i32 [ %shl97, %cond.true93 ], [ 0, %cond.false98 ]
  br label %cond.end115

cond.false101:                                    ; preds = %lor.lhs.false85, %cond.end67
  %44 = load i16, i16* %key_type, align 2
  %conv102 = zext i16 %44 to i32
  %cmp103 = icmp eq i32 %conv102, 8196
  br i1 %cmp103, label %land.lhs.true105, label %cond.false109

land.lhs.true105:                                 ; preds = %cond.false101
  %45 = load i32, i32* %alg.addr, align 4
  %cmp106 = icmp eq i32 %45, 75497728
  br i1 %cmp106, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %land.lhs.true105
  br label %cond.end113

cond.false109:                                    ; preds = %land.lhs.true105, %cond.false101
  %46 = load i32, i32* %alg.addr, align 4
  %cmp110 = icmp eq i32 %46, 79696640
  %47 = zext i1 %cmp110 to i64
  %cond112 = select i1 %cmp110, i32 13, i32 0
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false109, %cond.true108
  %cond114 = phi i32 [ 12, %cond.true108 ], [ %cond112, %cond.false109 ]
  br label %cond.end115

cond.end115:                                      ; preds = %cond.end113, %cond.end99
  %cond116 = phi i32 [ %cond100, %cond.end99 ], [ %cond114, %cond.end113 ]
  %conv117 = trunc i32 %cond116 to i8
  %48 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %iv_length = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %48, i32 0, i32 1
  store i8 %conv117, i8* %iv_length, align 4
  br label %exit

exit:                                             ; preds = %cond.end115, %if.then42, %if.then31, %if.then9
  %49 = load i32, i32* %ret, align 4
  %call118 = call i32 @mbedtls_to_psa_error(i32 noundef %49) #4
  store i32 %call118, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_decrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %2 = load i8*, i8** %key_buffer.addr, align 8
  %3 = load i64, i64* %key_buffer_size.addr, align 8
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_cipher_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %0, %struct.psa_key_attributes_s* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_set_iv(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %iv, i64 noundef %iv_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_length.addr = alloca i64, align 8
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_length, i64* %iv_length.addr, align 8
  %0 = load i64, i64* %iv_length.addr, align 8
  %1 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %iv_length1 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %1, i32 0, i32 1
  %2 = load i8, i8* %iv_length1, align 4
  %conv = zext i8 %2 to i64
  %cmp = icmp ne i64 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %3, i32 0, i32 3
  %cipher = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %4 = load i8*, i8** %iv.addr, align 8
  %5 = load i64, i64* %iv_length.addr, align 8
  %call = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %cipher, i8* noundef %4, i64 noundef %5) #4
  %call3 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #4
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #1

declare dso_local i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_update(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %expected_output_size = alloca i64, align 8
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, 2139095040
  %cmp = icmp eq i32 %and, 75497472
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %2, i32 0, i32 3
  %cipher = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %cipher, i32 0, i32 6
  %3 = load i64, i64* %unprocessed_len, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %add = add i64 %3, %4
  %5 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %block_length = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %5, i32 0, i32 2
  %6 = load i8, i8* %block_length, align 1
  %conv = zext i8 %6 to i64
  %div = udiv i64 %add, %conv
  %7 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %block_length1 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %7, i32 0, i32 2
  %8 = load i8, i8* %block_length1, align 1
  %conv2 = zext i8 %8 to i64
  %mul = mul i64 %div, %conv2
  store i64 %mul, i64* %expected_output_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %input_length.addr, align 8
  store i64 %9, i64* %expected_output_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* %output_size.addr, align 8
  %11 = load i64, i64* %expected_output_size, align 8
  %cmp3 = icmp ult i64 %10, %11
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -138, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg7 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %12, i32 0, i32 0
  %13 = load i32, i32* %alg7, align 8
  %cmp8 = icmp eq i32 %13, 71320576
  br i1 %cmp8, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.end6
  %14 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx11 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %14, i32 0, i32 3
  %cipher12 = bitcast %union.anon* %ctx11 to %struct.mbedtls_cipher_context_t*
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %input_length.addr, align 8
  %17 = load i8*, i8** %output.addr, align 8
  %18 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @psa_cipher_update_ecb(%struct.mbedtls_cipher_context_t* noundef %cipher12, i8* noundef %15, i64 noundef %16, i8* noundef %17, i64* noundef %18) #4
  store i32 %call, i32* %status, align 4
  br label %if.end22

if.else13:                                        ; preds = %if.end6
  %19 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx14 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %19, i32 0, i32 3
  %cipher15 = bitcast %union.anon* %ctx14 to %struct.mbedtls_cipher_context_t*
  %20 = load i8*, i8** %input.addr, align 8
  %21 = load i64, i64* %input_length.addr, align 8
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64*, i64** %output_length.addr, align 8
  %call16 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher15, i8* noundef %20, i64 noundef %21, i8* noundef %22, i64* noundef %23) #4
  %call17 = call i32 @mbedtls_to_psa_error(i32 noundef %call16) #4
  store i32 %call17, i32* %status, align 4
  %24 = load i64*, i64** %output_length.addr, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %output_size.addr, align 8
  %cmp18 = icmp ugt i64 %25, %26
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else13
  store i32 -151, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.else13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then20, %if.then5
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_cipher_update_ecb(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64* noundef %output_length) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %block_size = alloca i64, align 8
  %internal_output_length = alloca i64, align 8
  %bytes_to_copy = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size1 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 6
  %2 = load i32, i32* %block_size1, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %block_size, align 8
  store i64 0, i64* %internal_output_length, align 8
  %3 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 6
  %6 = load i64, i64* %unprocessed_len, align 8
  %cmp3 = icmp ugt i64 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end29

if.then5:                                         ; preds = %if.end
  %7 = load i64, i64* %block_size, align 8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 6
  %9 = load i64, i64* %unprocessed_len6, align 8
  %sub = sub i64 %7, %9
  store i64 %sub, i64* %bytes_to_copy, align 8
  %10 = load i64, i64* %input_length.addr, align 8
  %11 = load i64, i64* %bytes_to_copy, align 8
  %cmp7 = icmp ult i64 %10, %11
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  %12 = load i64, i64* %input_length.addr, align 8
  store i64 %12, i64* %bytes_to_copy, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5
  %13 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %13, i32 0, i32 5
  %14 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %14, i32 0, i32 6
  %15 = load i64, i64* %unprocessed_len11, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data, i64 0, i64 %15
  %16 = load i8*, i8** %input.addr, align 8
  %17 = load i64, i64* %bytes_to_copy, align 8
  %call = call i8* @memcpy(i8* noundef %arrayidx, i8* noundef %16, i64 noundef %17) #5
  %18 = load i64, i64* %bytes_to_copy, align 8
  %19 = load i64, i64* %input_length.addr, align 8
  %sub12 = sub i64 %19, %18
  store i64 %sub12, i64* %input_length.addr, align 8
  %20 = load i64, i64* %bytes_to_copy, align 8
  %21 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr, i8** %input.addr, align 8
  %22 = load i64, i64* %bytes_to_copy, align 8
  %23 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len13 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %23, i32 0, i32 6
  %24 = load i64, i64* %unprocessed_len13, align 8
  %add = add i64 %24, %22
  store i64 %add, i64* %unprocessed_len13, align 8
  %25 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len14 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %25, i32 0, i32 6
  %26 = load i64, i64* %unprocessed_len14, align 8
  %27 = load i64, i64* %block_size, align 8
  %cmp15 = icmp eq i64 %26, %27
  br i1 %cmp15, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end10
  %28 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %29 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data18 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %29, i32 0, i32 5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data18, i64 0, i64 0
  %30 = load i64, i64* %block_size, align 8
  %31 = load i8*, i8** %output.addr, align 8
  %call19 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %28, i8* noundef %arraydecay, i64 noundef %30, i8* noundef %31, i64* noundef %internal_output_length) #4
  %call20 = call i32 @mbedtls_to_psa_error(i32 noundef %call19) #4
  store i32 %call20, i32* %status, align 4
  %32 = load i32, i32* %status, align 4
  %cmp21 = icmp ne i32 %32, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then17
  br label %exit

if.end24:                                         ; preds = %if.then17
  %33 = load i64, i64* %internal_output_length, align 8
  %34 = load i8*, i8** %output.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr25, i8** %output.addr, align 8
  %35 = load i64, i64* %internal_output_length, align 8
  %36 = load i64*, i64** %output_length.addr, align 8
  %37 = load i64, i64* %36, align 8
  %add26 = add i64 %37, %35
  store i64 %add26, i64* %36, align 8
  %38 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len27 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %38, i32 0, i32 6
  store i64 0, i64* %unprocessed_len27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %if.end10
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end29
  %39 = load i64, i64* %input_length.addr, align 8
  %40 = load i64, i64* %block_size, align 8
  %cmp30 = icmp uge i64 %39, %40
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %42 = load i8*, i8** %input.addr, align 8
  %43 = load i64, i64* %block_size, align 8
  %44 = load i8*, i8** %output.addr, align 8
  %call32 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %41, i8* noundef %42, i64 noundef %43, i8* noundef %44, i64* noundef %internal_output_length) #4
  %call33 = call i32 @mbedtls_to_psa_error(i32 noundef %call32) #4
  store i32 %call33, i32* %status, align 4
  %45 = load i32, i32* %status, align 4
  %cmp34 = icmp ne i32 %45, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.body
  br label %exit

if.end37:                                         ; preds = %while.body
  %46 = load i64, i64* %block_size, align 8
  %47 = load i64, i64* %input_length.addr, align 8
  %sub38 = sub i64 %47, %46
  store i64 %sub38, i64* %input_length.addr, align 8
  %48 = load i64, i64* %block_size, align 8
  %49 = load i8*, i8** %input.addr, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %add.ptr39, i8** %input.addr, align 8
  %50 = load i64, i64* %internal_output_length, align 8
  %51 = load i8*, i8** %output.addr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %add.ptr40, i8** %output.addr, align 8
  %52 = load i64, i64* %internal_output_length, align 8
  %53 = load i64*, i64** %output_length.addr, align 8
  %54 = load i64, i64* %53, align 8
  %add41 = add i64 %54, %52
  store i64 %add41, i64* %53, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %55 = load i64, i64* %input_length.addr, align 8
  %cmp42 = icmp ugt i64 %55, 0
  br i1 %cmp42, label %if.then44, label %if.end51

if.then44:                                        ; preds = %while.end
  %56 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data45 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %56, i32 0, i32 5
  %57 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len46 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %57, i32 0, i32 6
  %58 = load i64, i64* %unprocessed_len46, align 8
  %arrayidx47 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data45, i64 0, i64 %58
  %59 = load i8*, i8** %input.addr, align 8
  %60 = load i64, i64* %input_length.addr, align 8
  %call48 = call i8* @memcpy(i8* noundef %arrayidx47, i8* noundef %59, i64 noundef %60) #5
  %61 = load i64, i64* %input_length.addr, align 8
  %62 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len49 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %62, i32 0, i32 6
  %63 = load i64, i64* %unprocessed_len49, align 8
  %add50 = add i64 %63, %61
  store i64 %add50, i64* %unprocessed_len49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %while.end
  store i32 0, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end51, %if.then36, %if.then23, %if.then
  %64 = load i32, i32* %status, align 4
  ret i32 %64
}

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_finish(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %temp_output_buffer = alloca [16 x i8], align 16
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -132, i32* %status, align 4
  %0 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %0, i32 0, i32 3
  %cipher = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %cipher, i32 0, i32 6
  %1 = load i64, i64* %unprocessed_len, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %2, i32 0, i32 0
  %3 = load i32, i32* %alg, align 8
  %cmp1 = icmp eq i32 %3, 71320576
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg2 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %4, i32 0, i32 0
  %5 = load i32, i32* %alg2, align 8
  %cmp3 = icmp eq i32 %5, 71319552
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -135, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %6 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx6 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %6, i32 0, i32 3
  %cipher7 = bitcast %union.anon* %ctx6 to %struct.mbedtls_cipher_context_t*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %temp_output_buffer, i64 0, i64 0
  %7 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %cipher7, i8* noundef %arraydecay, i64* noundef %7) #4
  %call8 = call i32 @mbedtls_to_psa_error(i32 noundef %call) #4
  store i32 %call8, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  br label %exit

if.end11:                                         ; preds = %if.end5
  %9 = load i64*, i64** %output_length.addr, align 8
  %10 = load i64, i64* %9, align 8
  %cmp12 = icmp eq i64 %10, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  br label %if.end20

if.else:                                          ; preds = %if.end11
  %11 = load i64, i64* %output_size.addr, align 8
  %12 = load i64*, i64** %output_length.addr, align 8
  %13 = load i64, i64* %12, align 8
  %cmp14 = icmp uge i64 %11, %13
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  %14 = load i8*, i8** %output.addr, align 8
  %arraydecay16 = getelementptr inbounds [16 x i8], [16 x i8]* %temp_output_buffer, i64 0, i64 0
  %15 = load i64*, i64** %output_length.addr, align 8
  %16 = load i64, i64* %15, align 8
  %call17 = call i8* @memcpy(i8* noundef %14, i8* noundef %arraydecay16, i64 noundef %16) #5
  br label %if.end19

if.else18:                                        ; preds = %if.else
  store i32 -138, i32* %status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then13
  br label %exit

exit:                                             ; preds = %if.end20, %if.then10, %if.then4
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %temp_output_buffer, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay21, i64 noundef 16) #4
  %17 = load i32, i32* %status, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.mbedtls_psa_cipher_operation_t*, align 8
  store %struct.mbedtls_psa_cipher_operation_t* %operation, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %0 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, 2130706432
  %cmp = icmp eq i32 %and, 67108864
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_psa_cipher_operation_t*, %struct.mbedtls_psa_cipher_operation_t** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %2, i32 0, i32 3
  %cipher = bitcast %union.anon* %ctx to %struct.mbedtls_cipher_context_t*
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %iv, i64 noundef %iv_length, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
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
  %operation = alloca %struct.mbedtls_psa_cipher_operation_t, align 8
  %update_output_length = alloca i64, align 8
  %finish_output_length = alloca i64, align 8
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
  %0 = bitcast %struct.mbedtls_psa_cipher_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 104, i1 false)
  %1 = bitcast i8* %0 to { i32, i8, i8, { i32, [92 x i8] } }*
  %2 = getelementptr inbounds { i32, i8, i8, { i32, [92 x i8] } }, { i32, i8, i8, { i32, [92 x i8] } }* %1, i32 0, i32 3
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_cipher_encrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6) #4
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %iv_length.addr, align 8
  %cmp1 = icmp ugt i64 %8, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %9 = load i8*, i8** %iv.addr, align 8
  %10 = load i64, i64* %iv_length.addr, align 8
  %call3 = call i32 @mbedtls_psa_cipher_set_iv(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %9, i64 noundef %10) #4
  store i32 %call3, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  br label %exit

if.end6:                                          ; preds = %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %input_length.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %output_size.addr, align 8
  %call8 = call i32 @mbedtls_psa_cipher_update(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %12, i64 noundef %13, i8* noundef %14, i64 noundef %15, i64* noundef %update_output_length) #4
  store i32 %call8, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp9 = icmp ne i32 %16, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  br label %exit

if.end11:                                         ; preds = %if.end7
  %17 = load i8*, i8** %output.addr, align 8
  %18 = load i64, i64* %update_output_length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i64, i64* %output_size.addr, align 8
  %20 = load i64, i64* %update_output_length, align 8
  %sub = sub i64 %19, %20
  %call12 = call i32 @mbedtls_psa_cipher_finish(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %add.ptr, i64 noundef %sub, i64* noundef %finish_output_length) #4
  store i32 %call12, i32* %status, align 4
  %21 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %exit

if.end15:                                         ; preds = %if.end11
  %22 = load i64, i64* %update_output_length, align 8
  %23 = load i64, i64* %finish_output_length, align 8
  %add = add i64 %22, %23
  %24 = load i64*, i64** %output_length.addr, align 8
  store i64 %add, i64* %24, align 8
  br label %exit

exit:                                             ; preds = %if.end15, %if.then14, %if.then10, %if.then5, %if.then
  %25 = load i32, i32* %status, align 4
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %exit
  %call18 = call i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %operation) #4
  store i32 %call18, i32* %status, align 4
  br label %if.end20

if.else:                                          ; preds = %exit
  %call19 = call i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %operation) #4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %26 = load i32, i32* %status, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_cipher_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
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
  %operation = alloca %struct.mbedtls_psa_cipher_operation_t, align 8
  %olength = alloca i64, align 8
  %accumulated_length = alloca i64, align 8
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
  %0 = bitcast %struct.mbedtls_psa_cipher_operation_t* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 104, i1 false)
  %1 = bitcast i8* %0 to { i32, i8, i8, { i32, [92 x i8] } }*
  %2 = getelementptr inbounds { i32, i8, i8, { i32, [92 x i8] } }, { i32, i8, i8, { i32, [92 x i8] } }* %1, i32 0, i32 3
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call = call i32 @mbedtls_psa_cipher_decrypt_setup(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, %struct.psa_key_attributes_s* noundef %3, i8* noundef %4, i64 noundef %5, i32 noundef %6) #4
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %iv_length = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %operation, i32 0, i32 1
  %8 = load i8, i8* %iv_length, align 4
  %conv = zext i8 %8 to i32
  %cmp1 = icmp sgt i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %9 = load i8*, i8** %input.addr, align 8
  %iv_length4 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %operation, i32 0, i32 1
  %10 = load i8, i8* %iv_length4, align 4
  %conv5 = zext i8 %10 to i64
  %call6 = call i32 @mbedtls_psa_cipher_set_iv(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %9, i64 noundef %conv5) #4
  store i32 %call6, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %11, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then3
  br label %exit

if.end10:                                         ; preds = %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %12 = load i8*, i8** %input.addr, align 8
  %iv_length12 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %operation, i32 0, i32 1
  %13 = load i8, i8* %iv_length12, align 4
  %conv13 = zext i8 %13 to i32
  %idx.ext = sext i32 %conv13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i64, i64* %input_length.addr, align 8
  %iv_length14 = getelementptr inbounds %struct.mbedtls_psa_cipher_operation_t, %struct.mbedtls_psa_cipher_operation_t* %operation, i32 0, i32 1
  %15 = load i8, i8* %iv_length14, align 4
  %conv15 = zext i8 %15 to i64
  %sub = sub i64 %14, %conv15
  %16 = load i8*, i8** %output.addr, align 8
  %17 = load i64, i64* %output_size.addr, align 8
  %call16 = call i32 @mbedtls_psa_cipher_update(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %16, i64 noundef %17, i64* noundef %olength) #4
  store i32 %call16, i32* %status, align 4
  %18 = load i32, i32* %status, align 4
  %cmp17 = icmp ne i32 %18, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end11
  br label %exit

if.end20:                                         ; preds = %if.end11
  %19 = load i64, i64* %olength, align 8
  store i64 %19, i64* %accumulated_length, align 8
  %20 = load i8*, i8** %output.addr, align 8
  %21 = load i64, i64* %accumulated_length, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i64, i64* %output_size.addr, align 8
  %23 = load i64, i64* %accumulated_length, align 8
  %sub22 = sub i64 %22, %23
  %call23 = call i32 @mbedtls_psa_cipher_finish(%struct.mbedtls_psa_cipher_operation_t* noundef %operation, i8* noundef %add.ptr21, i64 noundef %sub22, i64* noundef %olength) #4
  store i32 %call23, i32* %status, align 4
  %24 = load i32, i32* %status, align 4
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  br label %exit

if.end27:                                         ; preds = %if.end20
  %25 = load i64, i64* %accumulated_length, align 8
  %26 = load i64, i64* %olength, align 8
  %add = add i64 %25, %26
  %27 = load i64*, i64** %output_length.addr, align 8
  store i64 %add, i64* %27, align 8
  br label %exit

exit:                                             ; preds = %if.end27, %if.then26, %if.then19, %if.then9, %if.then
  %28 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %28, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %exit
  %call31 = call i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %operation) #4
  store i32 %call31, i32* %status, align 4
  br label %if.end33

if.else:                                          ; preds = %exit
  %call32 = call i32 @mbedtls_psa_cipher_abort(%struct.mbedtls_psa_cipher_operation_t* noundef %operation) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %29 = load i32, i32* %status, align 4
  ret i32 %29
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef, i32 noundef) #1

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
