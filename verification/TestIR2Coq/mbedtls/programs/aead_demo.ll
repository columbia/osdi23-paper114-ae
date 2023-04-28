; ModuleID = 'psa/aead_demo.c'
source_filename = "psa/aead_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.psa_aead_operation_s = type { i32, i32, i16, i64, i64, i8, %union.psa_driver_aead_context_t }
%union.psa_driver_aead_context_t = type { %struct.mbedtls_psa_aead_operation_t }
%struct.mbedtls_psa_aead_operation_t = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.mbedtls_gcm_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }

@usage = dso_local constant [65 x i8] c"Usage: aead_demo [aes128-gcm|aes256-gcm|aes128-gcm_8|chachapoly]\00", align 16
@iv1 = dso_local constant [12 x i8] zeroinitializer, align 1
@add_data1 = dso_local constant [2 x i8] c"\01\02", align 1
@msg1_part1 = dso_local constant [2 x i8] c"\03\04", align 1
@msg1_part2 = dso_local constant [3 x i8] c"\05\06\07", align 1
@iv2 = dso_local constant <{ i8, [11 x i8] }> <{ i8 16, [11 x i8] zeroinitializer }>, align 1
@add_data2 = dso_local constant [2 x i8] c"\11\12", align 1
@msg2_part1 = dso_local constant [2 x i8] c"\13\14", align 1
@msg2_part2 = dso_local constant [3 x i8] c"\15\16\17", align 1
@key_bytes = dso_local constant <{ i8, [31 x i8] }> <{ i8 42, [31 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error %d at line %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"psa_crypto_init( )\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"aead_demo( argv[1] )\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"aead_prepare( info, &key, &alg )\00", align 1
@.str.7 = private unnamed_addr constant [145 x i8] c"aead_encrypt( key, alg, iv1, sizeof( iv1 ), add_data1, sizeof( add_data1 ), msg1_part1, sizeof( msg1_part1 ), msg1_part2, sizeof( msg1_part2 ) )\00", align 1
@.str.8 = private unnamed_addr constant [145 x i8] c"aead_encrypt( key, alg, iv2, sizeof( iv2 ), add_data2, sizeof( add_data2 ), msg2_part1, sizeof( msg2_part1 ), msg2_part2, sizeof( msg2_part2 ) )\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"aes128-gcm\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"aes256-gcm\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"aes128-gcm_8\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"chachapoly\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"psa_import_key( &attributes, key_bytes, key_bits / 8, key )\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"AES\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Chacha\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"GCM\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ChachaPoly\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%s, %u, %s, %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"psa_aead_encrypt_setup( &op, key, alg )\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"psa_aead_set_nonce( &op, iv, iv_len )\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"psa_aead_update_ad( &op, ad, ad_len )\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"psa_aead_update( &op, part1, part1_len, p, end - p, &olen )\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"psa_aead_update( &op, part2, part2_len, p, end - p, &olen )\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"psa_aead_finish( &op, p, end - p, &olen, tag, sizeof( tag ), &olen_tag )\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_buf(i8* noundef %title, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @puts(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @usage, i64 0, i64 0)) #5
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %call1 = call i32 @psa_crypto_init() #5
  store i32 %call1, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef 281, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %exit

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 @aead_demo(i8* noundef %4) #5
  store i32 %call7, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp8 = icmp ne i32 %5, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body6
  %6 = load i32, i32* %status, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6, i32 noundef 284, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %exit

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  call void @mbedtls_psa_crypto_free() #5
  br label %exit

exit:                                             ; preds = %do.end12, %if.then9, %if.then3
  %7 = load i32, i32* %status, align 4
  %cmp13 = icmp eq i32 %7, 0
  %8 = zext i1 %cmp13 to i64
  %cond = select i1 %cmp13, i32 0, i32 1
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @psa_crypto_init() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_demo(i8* noundef %info) #0 {
entry:
  %info.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %key = alloca i32, align 4
  %alg = alloca i32, align 4
  store i8* %info, i8** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %info.addr, align 8
  %call = call i32 @aead_prepare(i8* noundef %0, i32* noundef %key, i32* noundef %alg) #5
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef 247, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i32, i32* %key, align 4
  %4 = load i32, i32* %alg, align 4
  call void @aead_info(i32 noundef %3, i32 noundef %4) #5
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %5 = load i32, i32* %key, align 4
  %6 = load i32, i32* %alg, align 4
  %call3 = call i32 @aead_encrypt(i32 noundef %5, i32 noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @iv1, i64 0, i64 0), i64 noundef 12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @add_data1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @msg1_part2, i64 0, i64 0), i64 noundef 3) #5
  store i32 %call3, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %8 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8, i32 noundef 254, i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %exit

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %9 = load i32, i32* %key, align 4
  %10 = load i32, i32* %alg, align 4
  %call10 = call i32 @aead_encrypt(i32 noundef %9, i32 noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, [11 x i8] }>* @iv2 to [12 x i8]*), i64 0, i64 0), i64 noundef 12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @add_data2, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @msg2_part2, i64 0, i64 0), i64 noundef 3) #5
  store i32 %call10, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.body9
  %12 = load i32, i32* %status, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12, i32 noundef 258, i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %exit

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %exit

exit:                                             ; preds = %do.end15, %if.then12, %if.then5, %if.then
  %13 = load i32, i32* %key, align 4
  %call16 = call i32 @psa_destroy_key(i32 noundef %13) #5
  %14 = load i32, i32* %status, align 4
  ret i32 %14
}

declare dso_local void @mbedtls_psa_crypto_free() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_prepare(i8* noundef %info, i32* noundef %key, i32* noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca i8*, align 8
  %key.addr = alloca i32*, align 8
  %alg.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %key_bits = alloca i64, align 8
  %key_type = alloca i16, align 2
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i8* %info, i8** %info.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32* %alg, i32** %alg.addr, align 8
  %0 = load i8*, i8** %info.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %alg.addr, align 8
  store i32 89129472, i32* %1, align 4
  store i64 128, i64* %key_bits, align 8
  store i16 9216, i16* %key_type, align 2
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %info.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %3 = load i32*, i32** %alg.addr, align 8
  store i32 89129472, i32* %3, align 4
  store i64 256, i64* %key_bits, align 8
  store i16 9216, i16* %key_type, align 2
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %4 = load i8*, i8** %info.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %5 = load i32*, i32** %alg.addr, align 8
  store i32 88605184, i32* %5, align 4
  store i64 128, i64* %key_bits, align 8
  store i16 9216, i16* %key_type, align 2
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %6 = load i8*, i8** %info.addr, align 8
  %call9 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  %7 = load i32*, i32** %alg.addr, align 8
  store i32 84935936, i32* %7, align 4
  store i64 256, i64* %key_bits, align 8
  store i16 8196, i16* %key_type, align 2
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %call13 = call i32 @puts(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @usage, i64 0, i64 0)) #5
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %8 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 48, i1 false)
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 256) #5
  %9 = load i32*, i32** %alg.addr, align 8
  %10 = load i32, i32* %9, align 4
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %10) #5
  %11 = load i16, i16* %key_type, align 2
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %11) #5
  %12 = load i64, i64* %key_bits, align 8
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %12) #5
  br label %do.body

do.body:                                          ; preds = %if.end16
  %13 = load i64, i64* %key_bits, align 8
  %div = udiv i64 %13, 8
  %14 = load i32*, i32** %key.addr, align 8
  %call17 = call i32 @psa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @key_bytes to [32 x i8]*), i64 0, i64 0), i64 noundef %div, i32* noundef %14) #5
  store i32 %call17, i32* %status, align 4
  %15 = load i32, i32* %status, align 4
  %cmp18 = icmp ne i32 %15, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body
  %16 = load i32, i32* %status, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %16, i32 noundef 167, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %exit

if.end21:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  br label %exit

exit:                                             ; preds = %do.end, %if.then19
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.else12
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aead_info(i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %attr = alloca %struct.psa_key_attributes_s, align 8
  %key_type = alloca i16, align 2
  %key_bits = alloca i64, align 8
  %base_alg = alloca i32, align 4
  %tag_len = alloca i64, align 8
  %type_str = alloca i8*, align 8
  %base_str = alloca i8*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  %1 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_key_attributes(i32 noundef %1, %struct.psa_key_attributes_s* noundef %attr) #5
  %call1 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attr) #5
  store i16 %call1, i16* %key_type, align 2
  %call2 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %attr) #5
  store i64 %call2, i64* %key_bits, align 8
  %2 = load i32, i32* %alg.addr, align 4
  %and = and i32 %2, -4161537
  %or = or i32 %and, 0
  %cmp = icmp eq i32 %or, 88080640
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end12

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %alg.addr, align 4
  %and3 = and i32 %3, -4161537
  %or4 = or i32 %and3, 0
  %cmp5 = icmp eq i32 %or4, 88080896
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false
  br label %cond.end

cond.false7:                                      ; preds = %cond.false
  %4 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %4, -4161537
  %or9 = or i32 %and8, 0
  %cmp10 = icmp eq i32 %or9, 83887360
  %5 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 84935936, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond11 = phi i32 [ 89129472, %cond.true6 ], [ %cond, %cond.false7 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ 89129216, %cond.true ], [ %cond11, %cond.end ]
  store i32 %cond13, i32* %base_alg, align 4
  %6 = load i16, i16* %key_type, align 2
  %conv = zext i16 %6 to i32
  %and14 = and i32 %conv, 28672
  %cmp15 = icmp eq i32 %and14, 8192
  br i1 %cmp15, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %cond.end12
  %7 = load i16, i16* %key_type, align 2
  %conv18 = zext i16 %7 to i32
  %shr = ashr i32 %conv18, 8
  %and19 = and i32 %shr, 7
  %shl = shl i32 1, %and19
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end12
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true17
  %cond22 = phi i32 [ %shl, %cond.true17 ], [ 0, %cond.false20 ]
  %cmp23 = icmp eq i32 %cond22, 16
  br i1 %cmp23, label %cond.true25, label %cond.false35

cond.true25:                                      ; preds = %cond.end21
  %8 = load i32, i32* %alg.addr, align 4
  %xor = xor i32 %8, 89129216
  %and26 = and i32 %xor, -4161537
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %cond.false28, label %cond.true27

cond.true27:                                      ; preds = %cond.true25
  br label %cond.end33

cond.false28:                                     ; preds = %cond.true25
  %9 = load i32, i32* %alg.addr, align 4
  %xor29 = xor i32 %9, 89129472
  %and30 = and i32 %xor29, -4161537
  %tobool31 = icmp ne i32 %and30, 0
  %lnot = xor i1 %tobool31, true
  %10 = zext i1 %lnot to i64
  %cond32 = select i1 %lnot, i32 12, i32 0
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false28, %cond.true27
  %cond34 = phi i32 [ 13, %cond.true27 ], [ %cond32, %cond.false28 ]
  br label %cond.end44

cond.false35:                                     ; preds = %cond.end21
  %11 = load i16, i16* %key_type, align 2
  %conv36 = zext i16 %11 to i32
  %cmp37 = icmp eq i32 %conv36, 8196
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false35
  %12 = load i32, i32* %alg.addr, align 4
  %xor39 = xor i32 %12, 84935936
  %and40 = and i32 %xor39, -4161537
  %tobool41 = icmp ne i32 %and40, 0
  %lnot42 = xor i1 %tobool41, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false35
  %13 = phi i1 [ false, %cond.false35 ], [ %lnot42, %land.rhs ]
  %14 = zext i1 %13 to i64
  %cond43 = select i1 %13, i32 12, i32 0
  br label %cond.end44

cond.end44:                                       ; preds = %land.end, %cond.end33
  %cond45 = phi i32 [ %cond34, %cond.end33 ], [ %cond43, %land.end ]
  %cmp46 = icmp ne i32 %cond45, 0
  br i1 %cmp46, label %cond.true48, label %cond.false51

cond.true48:                                      ; preds = %cond.end44
  %15 = load i32, i32* %alg.addr, align 4
  %and49 = and i32 %15, 4128768
  %shr50 = lshr i32 %and49, 16
  br label %cond.end52

cond.false51:                                     ; preds = %cond.end44
  %16 = load i64, i64* %key_bits, align 8
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %cond.true48
  %cond53 = phi i32 [ %shr50, %cond.true48 ], [ 0, %cond.false51 ]
  %conv54 = zext i32 %cond53 to i64
  store i64 %conv54, i64* %tag_len, align 8
  %17 = load i16, i16* %key_type, align 2
  %conv55 = zext i16 %17 to i32
  %cmp56 = icmp eq i32 %conv55, 9216
  br i1 %cmp56, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end52
  br label %cond.end64

cond.false59:                                     ; preds = %cond.end52
  %18 = load i16, i16* %key_type, align 2
  %conv60 = zext i16 %18 to i32
  %cmp61 = icmp eq i32 %conv60, 8196
  %19 = zext i1 %cmp61 to i64
  %cond63 = select i1 %cmp61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false59, %cond.true58
  %cond65 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %cond.true58 ], [ %cond63, %cond.false59 ]
  store i8* %cond65, i8** %type_str, align 8
  %20 = load i32, i32* %base_alg, align 4
  %cmp66 = icmp eq i32 %20, 89129472
  br i1 %cmp66, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end64
  br label %cond.end73

cond.false69:                                     ; preds = %cond.end64
  %21 = load i32, i32* %base_alg, align 4
  %cmp70 = icmp eq i32 %21, 84935936
  %22 = zext i1 %cmp70 to i64
  %cond72 = select i1 %cmp70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false69, %cond.true68
  %cond74 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), %cond.true68 ], [ %cond72, %cond.false69 ]
  store i8* %cond74, i8** %base_str, align 8
  %23 = load i8*, i8** %type_str, align 8
  %24 = load i64, i64* %key_bits, align 8
  %conv75 = trunc i64 %24 to i32
  %25 = load i8*, i8** %base_str, align 8
  %26 = load i64, i64* %tag_len, align 8
  %conv76 = trunc i64 %26 to i32
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef %23, i32 noundef %conv75, i8* noundef %25, i32 noundef %conv76) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_encrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %part1, i64 noundef %part1_len, i8* noundef %part2, i64 noundef %part2_len) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %part1.addr = alloca i8*, align 8
  %part1_len.addr = alloca i64, align 8
  %part2.addr = alloca i8*, align 8
  %part2_len.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %olen = alloca i64, align 8
  %olen_tag = alloca i64, align 8
  %out = alloca [21 x i8], align 16
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %tag = alloca [16 x i8], align 16
  %op = alloca %struct.psa_aead_operation_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  store i8* %part1, i8** %part1.addr, align 8
  store i64 %part1_len, i64* %part1_len.addr, align 8
  store i8* %part2, i8** %part2.addr, align 8
  store i64 %part2_len, i64* %part2_len.addr, align 8
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 21
  store i8* %add.ptr, i8** %end, align 8
  %0 = bitcast %struct.psa_aead_operation_s* %op to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 472, i1 false)
  %1 = bitcast i8* %0 to { i32, i32, i16, i64, i64, i8, [7 x i8], { i32, [428 x i8] } }*
  %2 = getelementptr inbounds { i32, i32, i16, i64, i64, i8, [7 x i8], { i32, [428 x i8] } }, { i32, i32, i16, i64, i64, i8, [7 x i8], { i32, [428 x i8] } }* %1, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* %key.addr, align 4
  %4 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef %op, i32 noundef %3, i32 noundef %4) #5
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %status, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6, i32 noundef 215, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i64, i64* %iv_len.addr, align 8
  %call4 = call i32 @psa_aead_set_nonce(%struct.psa_aead_operation_s* noundef %op, i8* noundef %7, i64 noundef %8) #5
  store i32 %call4, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body3
  %10 = load i32, i32* %status, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10, i32 noundef 217, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0)) #5
  br label %exit

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %11 = load i8*, i8** %ad.addr, align 8
  %12 = load i64, i64* %ad_len.addr, align 8
  %call11 = call i32 @psa_aead_update_ad(%struct.psa_aead_operation_s* noundef %op, i8* noundef %11, i64 noundef %12) #5
  store i32 %call11, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %13, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body10
  %14 = load i32, i32* %status, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %14, i32 noundef 218, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %exit

if.end15:                                         ; preds = %do.body10
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %15 = load i8*, i8** %part1.addr, align 8
  %16 = load i64, i64* %part1_len.addr, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %end, align 8
  %19 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call18 = call i32 @psa_aead_update(%struct.psa_aead_operation_s* noundef %op, i8* noundef %15, i64 noundef %16, i8* noundef %17, i64 noundef %sub.ptr.sub, i64* noundef %olen) #5
  store i32 %call18, i32* %status, align 4
  %20 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %20, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body17
  %21 = load i32, i32* %status, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %21, i32 noundef 219, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %exit

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %22 = load i64, i64* %olen, align 8
  %23 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr24, i8** %p, align 8
  br label %do.body25

do.body25:                                        ; preds = %do.end23
  %24 = load i8*, i8** %part2.addr, align 8
  %25 = load i64, i64* %part2_len.addr, align 8
  %26 = load i8*, i8** %p, align 8
  %27 = load i8*, i8** %end, align 8
  %28 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %28 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %call29 = call i32 @psa_aead_update(%struct.psa_aead_operation_s* noundef %op, i8* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %sub.ptr.sub28, i64* noundef %olen) #5
  store i32 %call29, i32* %status, align 4
  %29 = load i32, i32* %status, align 4
  %cmp30 = icmp ne i32 %29, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.body25
  %30 = load i32, i32* %status, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %30, i32 noundef 221, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %exit

if.end33:                                         ; preds = %do.body25
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %31 = load i64, i64* %olen, align 8
  %32 = load i8*, i8** %p, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %add.ptr35, i8** %p, align 8
  br label %do.body36

do.body36:                                        ; preds = %do.end34
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %35 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  %call41 = call i32 @psa_aead_finish(%struct.psa_aead_operation_s* noundef %op, i8* noundef %33, i64 noundef %sub.ptr.sub39, i64* noundef %olen, i8* noundef %arraydecay40, i64 noundef 16, i64* noundef %olen_tag) #5
  store i32 %call41, i32* %status, align 4
  %36 = load i32, i32* %status, align 4
  %cmp42 = icmp ne i32 %36, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %do.body36
  %37 = load i32, i32* %status, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %37, i32 noundef 224, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %exit

if.end45:                                         ; preds = %do.body36
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  %38 = load i64, i64* %olen, align 8
  %39 = load i8*, i8** %p, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %add.ptr47, i8** %p, align 8
  %40 = load i8*, i8** %p, align 8
  %arraydecay48 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  %41 = load i64, i64* %olen_tag, align 8
  %call49 = call i8* @memcpy(i8* noundef %40, i8* noundef %arraydecay48, i64 noundef %41) #7
  %42 = load i64, i64* %olen_tag, align 8
  %43 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %add.ptr50, i8** %p, align 8
  %44 = load i8*, i8** %p, align 8
  %arraydecay51 = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  %sub.ptr.lhs.cast52 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast53 = ptrtoint i8* %arraydecay51 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  store i64 %sub.ptr.sub54, i64* %olen, align 8
  %arraydecay55 = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  %45 = load i64, i64* %olen, align 8
  call void @print_buf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %arraydecay55, i64 noundef %45) #5
  br label %exit

exit:                                             ; preds = %do.end46, %if.then43, %if.then31, %if.then20, %if.then13, %if.then6, %if.then
  %call56 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %op) #5
  %46 = load i32, i32* %status, align 4
  ret i32 %46
}

declare dso_local i32 @psa_destroy_key(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

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

declare dso_local i32 @psa_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32* noundef) #1

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

declare dso_local i32 @psa_get_key_attributes(i32 noundef, %struct.psa_key_attributes_s* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %private_type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 0
  %1 = load i16, i16* %private_type, align 8
  ret i16 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %private_bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 1
  %1 = load i16, i16* %private_bits, align 2
  %conv = zext i16 %1 to i64
  ret i64 %conv
}

declare dso_local i32 @psa_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @psa_aead_set_nonce(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @psa_aead_update_ad(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @psa_aead_update(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local i32 @psa_aead_finish(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
