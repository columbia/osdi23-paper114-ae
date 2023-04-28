; ModuleID = 'psa/crypto_examples.c'
source_filename = "psa/crypto_examples.c"
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

@.str = private unnamed_addr constant [36 x i8] c"\09assertion failed at %s:%d - '%s'\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"psa/crypto_examples.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"psa_crypto_init( ) == PSA_SUCCESS\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"cipher encrypt/decrypt AES CBC no padding:\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09success!\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"cipher encrypt/decrypt AES CBC PKCS7 multipart:\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"cipher encrypt/decrypt AES CTR multipart:\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\09assertion failed at %s:%d - actual:%d expected:%d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @psa_crypto_init() #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @cipher_examples() #5
  br label %exit

exit:                                             ; preds = %do.end, %if.then
  call void @mbedtls_psa_crypto_free() #5
  ret i32 0
}

declare dso_local i32 @psa_crypto_init() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cipher_examples() #0 {
entry:
  %status = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)) #5
  %call1 = call i32 @cipher_example_encrypt_decrypt_aes_cbc_nopad_1_block() #5
  store i32 %call1, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #5
  %call4 = call i32 @cipher_example_encrypt_decrypt_aes_cbc_pkcs7_multi() #5
  store i32 %call4, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0)) #5
  %call10 = call i32 @cipher_example_encrypt_decrypt_aes_ctr_multi() #5
  store i32 %call10, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp11 = icmp eq i32 %2, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8
  ret void
}

declare dso_local void @mbedtls_psa_crypto_free() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_example_encrypt_decrypt_aes_cbc_nopad_1_block() #0 {
entry:
  %alg = alloca i32, align 4
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key = alloca i32, align 4
  %output_len = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %input = alloca [16 x i8], align 16
  %encrypt = alloca [16 x i8], align 16
  %decrypt = alloca [16 x i8], align 16
  store i32 71319552, i32* %alg, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i32 0, i32* %key, align 4
  store i64 0, i64* %output_len, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  %call = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef 16) #5
  store i32 %call, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 178, i32 noundef %2, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 768) #5
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 71319552) #5
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 9216) #5
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 256) #5
  %call2 = call i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i32* noundef %key) #5
  store i32 %call2, i32* %status, align 4
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %3 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body3
  %4 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187, i32 noundef %4, i32 noundef 0) #5
  br label %exit

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  %5 = load i32, i32* %key, align 4
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %encrypt, i64 0, i64 0
  %call12 = call i32 @cipher_encrypt(i32 noundef %5, i32 noundef 71319552, i8* noundef %arraydecay9, i64 noundef 16, i8* noundef %arraydecay10, i64 noundef 16, i64 noundef 16, i8* noundef %arraydecay11, i64 noundef 16, i64* noundef %output_len) #5
  store i32 %call12, i32* %status, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.end8
  %6 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %6, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body13
  %7 = load i32, i32* %status, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 192, i32 noundef %7, i32 noundef 0) #5
  br label %exit

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %8 = load i32, i32* %key, align 4
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %encrypt, i64 0, i64 0
  %9 = load i64, i64* %output_len, align 8
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %decrypt, i64 0, i64 0
  %call22 = call i32 @cipher_decrypt(i32 noundef %8, i32 noundef 71319552, i8* noundef %arraydecay19, i64 noundef 16, i8* noundef %arraydecay20, i64 noundef %9, i64 noundef 16, i8* noundef %arraydecay21, i64 noundef 16, i64* noundef %output_len) #5
  store i32 %call22, i32* %status, align 4
  br label %do.body23

do.body23:                                        ; preds = %do.end18
  %10 = load i32, i32* %status, align 4
  %cmp24 = icmp ne i32 %10, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.body23
  %11 = load i32, i32* %status, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 197, i32 noundef %11, i32 noundef 0) #5
  br label %exit

if.end27:                                         ; preds = %do.body23
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %arraydecay29 = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [16 x i8], [16 x i8]* %decrypt, i64 0, i64 0
  %call31 = call i32 @memcmp(i8* noundef %arraydecay29, i8* noundef %arraydecay30, i64 noundef 16) #6
  store i32 %call31, i32* %status, align 4
  br label %do.body32

do.body32:                                        ; preds = %do.end28
  %12 = load i32, i32* %status, align 4
  %cmp33 = icmp ne i32 %12, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body32
  %13 = load i32, i32* %status, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200, i32 noundef %13, i32 noundef 0) #5
  br label %exit

if.end36:                                         ; preds = %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %exit

exit:                                             ; preds = %do.end37, %if.then34, %if.then25, %if.then15, %if.then5, %if.then
  %14 = load i32, i32* %key, align 4
  %call38 = call i32 @psa_destroy_key(i32 noundef %14) #5
  %15 = load i32, i32* %status, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_example_encrypt_decrypt_aes_cbc_pkcs7_multi() #0 {
entry:
  %alg = alloca i32, align 4
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key = alloca i32, align 4
  %output_len = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %input = alloca [100 x i8], align 16
  %encrypt = alloca [116 x i8], align 16
  %decrypt = alloca [116 x i8], align 16
  store i32 71319808, i32* %alg, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i32 0, i32* %key, align 4
  store i64 0, i64* %output_len, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %call = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef 100) #5
  store i32 %call, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 226, i32 noundef %2, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 768) #5
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 71319808) #5
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 9216) #5
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 256) #5
  %call2 = call i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i32* noundef %key) #5
  store i32 %call2, i32* %status, align 4
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %3 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body3
  %4 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 235, i32 noundef %4, i32 noundef 0) #5
  br label %exit

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  %5 = load i32, i32* %key, align 4
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [116 x i8], [116 x i8]* %encrypt, i64 0, i64 0
  %call12 = call i32 @cipher_encrypt(i32 noundef %5, i32 noundef 71319808, i8* noundef %arraydecay9, i64 noundef 16, i8* noundef %arraydecay10, i64 noundef 100, i64 noundef 10, i8* noundef %arraydecay11, i64 noundef 116, i64* noundef %output_len) #5
  store i32 %call12, i32* %status, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.end8
  %6 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %6, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body13
  %7 = load i32, i32* %status, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i32 noundef %7, i32 noundef 0) #5
  br label %exit

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %8 = load i32, i32* %key, align 4
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [116 x i8], [116 x i8]* %encrypt, i64 0, i64 0
  %9 = load i64, i64* %output_len, align 8
  %arraydecay21 = getelementptr inbounds [116 x i8], [116 x i8]* %decrypt, i64 0, i64 0
  %call22 = call i32 @cipher_decrypt(i32 noundef %8, i32 noundef 71319808, i8* noundef %arraydecay19, i64 noundef 16, i8* noundef %arraydecay20, i64 noundef %9, i64 noundef 10, i8* noundef %arraydecay21, i64 noundef 116, i64* noundef %output_len) #5
  store i32 %call22, i32* %status, align 4
  br label %do.body23

do.body23:                                        ; preds = %do.end18
  %10 = load i32, i32* %status, align 4
  %cmp24 = icmp ne i32 %10, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.body23
  %11 = load i32, i32* %status, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i32 noundef %11, i32 noundef 0) #5
  br label %exit

if.end27:                                         ; preds = %do.body23
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %arraydecay29 = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [116 x i8], [116 x i8]* %decrypt, i64 0, i64 0
  %call31 = call i32 @memcmp(i8* noundef %arraydecay29, i8* noundef %arraydecay30, i64 noundef 100) #6
  store i32 %call31, i32* %status, align 4
  br label %do.body32

do.body32:                                        ; preds = %do.end28
  %12 = load i32, i32* %status, align 4
  %cmp33 = icmp ne i32 %12, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body32
  %13 = load i32, i32* %status, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 248, i32 noundef %13, i32 noundef 0) #5
  br label %exit

if.end36:                                         ; preds = %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %exit

exit:                                             ; preds = %do.end37, %if.then34, %if.then25, %if.then15, %if.then5, %if.then
  %14 = load i32, i32* %key, align 4
  %call38 = call i32 @psa_destroy_key(i32 noundef %14) #5
  %15 = load i32, i32* %status, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_example_encrypt_decrypt_aes_ctr_multi() #0 {
entry:
  %alg = alloca i32, align 4
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key = alloca i32, align 4
  %output_len = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %input = alloca [100 x i8], align 16
  %encrypt = alloca [100 x i8], align 16
  %decrypt = alloca [100 x i8], align 16
  store i32 79695872, i32* %alg, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i32 0, i32* %key, align 4
  store i64 0, i64* %output_len, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %call = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef 100) #5
  store i32 %call, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 273, i32 noundef %2, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 768) #5
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 79695872) #5
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 9216) #5
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 256) #5
  %call2 = call i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i32* noundef %key) #5
  store i32 %call2, i32* %status, align 4
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %3 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body3
  %4 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 282, i32 noundef %4, i32 noundef 0) #5
  br label %exit

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  %5 = load i32, i32* %key, align 4
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %encrypt, i64 0, i64 0
  %call12 = call i32 @cipher_encrypt(i32 noundef %5, i32 noundef 79695872, i8* noundef %arraydecay9, i64 noundef 16, i8* noundef %arraydecay10, i64 noundef 100, i64 noundef 10, i8* noundef %arraydecay11, i64 noundef 100, i64* noundef %output_len) #5
  store i32 %call12, i32* %status, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.end8
  %6 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %6, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body13
  %7 = load i32, i32* %status, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 287, i32 noundef %7, i32 noundef 0) #5
  br label %exit

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %8 = load i32, i32* %key, align 4
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %encrypt, i64 0, i64 0
  %9 = load i64, i64* %output_len, align 8
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %decrypt, i64 0, i64 0
  %call22 = call i32 @cipher_decrypt(i32 noundef %8, i32 noundef 79695872, i8* noundef %arraydecay19, i64 noundef 16, i8* noundef %arraydecay20, i64 noundef %9, i64 noundef 10, i8* noundef %arraydecay21, i64 noundef 100, i64* noundef %output_len) #5
  store i32 %call22, i32* %status, align 4
  br label %do.body23

do.body23:                                        ; preds = %do.end18
  %10 = load i32, i32* %status, align 4
  %cmp24 = icmp ne i32 %10, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.body23
  %11 = load i32, i32* %status, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292, i32 noundef %11, i32 noundef 0) #5
  br label %exit

if.end27:                                         ; preds = %do.body23
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %arraydecay29 = getelementptr inbounds [100 x i8], [100 x i8]* %input, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [100 x i8], [100 x i8]* %decrypt, i64 0, i64 0
  %call31 = call i32 @memcmp(i8* noundef %arraydecay29, i8* noundef %arraydecay30, i64 noundef 100) #6
  store i32 %call31, i32* %status, align 4
  br label %do.body32

do.body32:                                        ; preds = %do.end28
  %12 = load i32, i32* %status, align 4
  %cmp33 = icmp ne i32 %12, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body32
  %13 = load i32, i32* %status, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295, i32 noundef %13, i32 noundef 0) #5
  br label %exit

if.end36:                                         ; preds = %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %exit

exit:                                             ; preds = %do.end37, %if.then34, %if.then25, %if.then15, %if.then5, %if.then
  %14 = load i32, i32* %key, align 4
  %call38 = call i32 @psa_destroy_key(i32 noundef %14) #5
  %15 = load i32, i32* %status, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @psa_generate_random(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %usage_flags) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %usage_flags.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %usage_flags, i32* %usage_flags.addr, align 4
  call void @psa_extend_key_usage_flags(i32* noundef %usage_flags.addr) #5
  %0 = load i32, i32* %usage_flags.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 0
  store i32 %0, i32* %private_usage, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %alg) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %alg.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 1
  store i32 %0, i32* %private_alg, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %type) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %type.addr = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %private_domain_parameters, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %type.addr, align 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 0
  store i16 %2, i16* %private_type, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i16, i16* %type.addr, align 2
  %call = call i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %4, i16 noundef zeroext %5, i8* noundef null, i64 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %bits.addr = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ugt i64 %0, 65528
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 1
  store i16 -1, i16* %private_bits, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %conv = trunc i64 %2 to i16
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_bits2 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core1, i32 0, i32 1
  store i16 %conv, i16* %private_bits2, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_encrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %iv, i64 noundef %iv_size, i8* noundef %input, i64 noundef %input_size, i64 noundef %part_size, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_len) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_size.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %input_size.addr = alloca i64, align 8
  %part_size.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_len.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %operation = alloca %struct.psa_cipher_operation_s, align 8
  %iv_len = alloca i64, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_size, i64* %iv_size.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_size, i64* %input_size.addr, align 8
  store i64 %part_size, i64* %part_size.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_len, i64** %output_len.addr, align 8
  %0 = bitcast %struct.psa_cipher_operation_s* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 112, i1 false)
  %1 = bitcast i8* %0 to { i32, i8, i8, { i32, [100 x i8] } }*
  %2 = getelementptr inbounds { i32, i8, i8, { i32, [100 x i8] } }, { i32, i8, i8, { i32, [100 x i8] } }* %1, i32 0, i32 3
  store i64 0, i64* %iv_len, align 8
  %3 = bitcast %struct.psa_cipher_operation_s* %operation to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 112) #7
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, i32 noundef %4, i32 noundef %5) #5
  store i32 %call1, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %status, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114, i32 noundef %7, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load i8*, i8** %iv.addr, align 8
  %9 = load i64, i64* %iv_size.addr, align 8
  %call3 = call i32 @psa_cipher_generate_iv(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %8, i64 noundef %9, i64* noundef %iv_len) #5
  store i32 %call3, i32* %status, align 4
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %10 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body4
  %11 = load i32, i32* %status, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117, i32 noundef %11, i32 noundef 0) #5
  br label %exit

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %input_size.addr, align 8
  %14 = load i64, i64* %part_size.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %16 = load i64, i64* %output_size.addr, align 8
  %17 = load i64*, i64** %output_len.addr, align 8
  %call10 = call i32 @cipher_operation(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %12, i64 noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16, i64* noundef %17) #5
  store i32 %call10, i32* %status, align 4
  br label %do.body11

do.body11:                                        ; preds = %do.end9
  %18 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %18, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body11
  %19 = load i32, i32* %status, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121, i32 noundef %19, i32 noundef 0) #5
  br label %exit

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %exit

exit:                                             ; preds = %do.end16, %if.then13, %if.then6, %if.then
  %call17 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %operation) #5
  %20 = load i32, i32* %status, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_decrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %iv, i64 noundef %iv_size, i8* noundef %input, i64 noundef %input_size, i64 noundef %part_size, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_len) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_size.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %input_size.addr = alloca i64, align 8
  %part_size.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_len.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %operation = alloca %struct.psa_cipher_operation_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_size, i64* %iv_size.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_size, i64* %input_size.addr, align 8
  store i64 %part_size, i64* %part_size.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_len, i64** %output_len.addr, align 8
  %0 = bitcast %struct.psa_cipher_operation_s* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 112, i1 false)
  %1 = bitcast i8* %0 to { i32, i8, i8, { i32, [100 x i8] } }*
  %2 = getelementptr inbounds { i32, i8, i8, { i32, [100 x i8] } }, { i32, i8, i8, { i32, [100 x i8] } }* %1, i32 0, i32 3
  %3 = bitcast %struct.psa_cipher_operation_s* %operation to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 112) #7
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, i32 noundef %4, i32 noundef %5) #5
  store i32 %call1, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %status, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 144, i32 noundef %7, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load i8*, i8** %iv.addr, align 8
  %9 = load i64, i64* %iv_size.addr, align 8
  %call3 = call i32 @psa_cipher_set_iv(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %8, i64 noundef %9) #5
  store i32 %call3, i32* %status, align 4
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %10 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body4
  %11 = load i32, i32* %status, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147, i32 noundef %11, i32 noundef 0) #5
  br label %exit

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %input_size.addr, align 8
  %14 = load i64, i64* %part_size.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %16 = load i64, i64* %output_size.addr, align 8
  %17 = load i64*, i64** %output_len.addr, align 8
  %call10 = call i32 @cipher_operation(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %12, i64 noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16, i64* noundef %17) #5
  store i32 %call10, i32* %status, align 4
  br label %do.body11

do.body11:                                        ; preds = %do.end9
  %18 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %18, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body11
  %19 = load i32, i32* %status, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 151, i32 noundef %19, i32 noundef 0) #5
  br label %exit

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %exit

exit:                                             ; preds = %do.end16, %if.then13, %if.then6, %if.then
  %call17 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %operation) #5
  %20 = load i32, i32* %status, align 4
  ret i32 %20
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @psa_destroy_key(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_extend_key_usage_flags(i32* noundef %usage_flags) #0 {
entry:
  %usage_flags.addr = alloca i32*, align 8
  store i32* %usage_flags, i32** %usage_flags.addr, align 8
  %0 = load i32*, i32** %usage_flags.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %usage_flags.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1024
  store i32 %or, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %usage_flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i32*, i32** %usage_flags.addr, align 8
  %7 = load i32, i32* %6, align 4
  %or4 = or i32 %7, 2048
  store i32 %or4, i32* %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

declare dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #4

declare dso_local i32 @psa_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @psa_cipher_generate_iv(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_operation(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_size, i64 noundef %part_size, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_len) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_size.addr = alloca i64, align 8
  %part_size.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_len.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %bytes_to_write = alloca i64, align 8
  %bytes_written = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_size, i64* %input_size.addr, align 8
  store i64 %part_size, i64* %part_size.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_len, i64** %output_len.addr, align 8
  store i64 0, i64* %bytes_to_write, align 8
  store i64 0, i64* %bytes_written, align 8
  store i64 0, i64* %len, align 8
  %0 = load i64*, i64** %output_len.addr, align 8
  store i64 0, i64* %0, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %1 = load i64, i64* %bytes_written, align 8
  %2 = load i64, i64* %input_size.addr, align 8
  %cmp = icmp ne i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %input_size.addr, align 8
  %4 = load i64, i64* %bytes_written, align 8
  %sub = sub i64 %3, %4
  %5 = load i64, i64* %part_size.addr, align 8
  %cmp1 = icmp ugt i64 %sub, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i64, i64* %part_size.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load i64, i64* %input_size.addr, align 8
  %8 = load i64, i64* %bytes_written, align 8
  %sub2 = sub i64 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %sub2, %cond.false ]
  store i64 %cond, i64* %bytes_to_write, align 8
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i64, i64* %bytes_written, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i64, i64* %bytes_to_write, align 8
  %13 = load i8*, i8** %output.addr, align 8
  %14 = load i64*, i64** %output_len.addr, align 8
  %15 = load i64, i64* %14, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %13, i64 %15
  %16 = load i64, i64* %output_size.addr, align 8
  %17 = load i64*, i64** %output_len.addr, align 8
  %18 = load i64, i64* %17, align 8
  %sub4 = sub i64 %16, %18
  %call = call i32 @psa_cipher_update(%struct.psa_cipher_operation_s* noundef %9, i8* noundef %add.ptr, i64 noundef %12, i8* noundef %add.ptr3, i64 noundef %sub4, i64* noundef %len) #5
  store i32 %call, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  %19 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %19, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %20 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 82, i32 noundef %20, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %21 = load i64, i64* %bytes_to_write, align 8
  %22 = load i64, i64* %bytes_written, align 8
  %add = add i64 %22, %21
  store i64 %add, i64* %bytes_written, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i64*, i64** %output_len.addr, align 8
  %25 = load i64, i64* %24, align 8
  %add7 = add i64 %25, %23
  store i64 %add7, i64* %24, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %26 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %27 = load i8*, i8** %output.addr, align 8
  %28 = load i64*, i64** %output_len.addr, align 8
  %29 = load i64, i64* %28, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %27, i64 %29
  %30 = load i64, i64* %output_size.addr, align 8
  %31 = load i64*, i64** %output_len.addr, align 8
  %32 = load i64, i64* %31, align 8
  %sub9 = sub i64 %30, %32
  %call10 = call i32 @psa_cipher_finish(%struct.psa_cipher_operation_s* noundef %26, i8* noundef %add.ptr8, i64 noundef %sub9, i64* noundef %len) #5
  store i32 %call10, i32* %status, align 4
  br label %do.body11

do.body11:                                        ; preds = %while.end
  %33 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %33, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body11
  %34 = load i32, i32* %status, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 90, i32 noundef %34, i32 noundef 0) #5
  br label %exit

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  %35 = load i64, i64* %len, align 8
  %36 = load i64*, i64** %output_len.addr, align 8
  %37 = load i64, i64* %36, align 8
  %add17 = add i64 %37, %35
  store i64 %add17, i64* %36, align 8
  br label %exit

exit:                                             ; preds = %do.end16, %if.then13, %if.then
  %38 = load i32, i32* %status, align 4
  ret i32 %38
}

declare dso_local i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef) #1

declare dso_local i32 @psa_cipher_update(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local i32 @psa_cipher_finish(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local i32 @psa_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @psa_cipher_set_iv(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
