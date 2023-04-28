; ModuleID = 'pkcs12.c'
source_filename = "pkcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"pkcs12.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs12_pbe(%struct.mbedtls_asn1_buf* noundef %pbe_params, i32 noundef %mode, i32 noundef %cipher_type, i32 noundef %md_type, i8* noundef %pwd, i64 noundef %pwdlen, i8* noundef %data, i64 noundef %len, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %pbe_params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %mode.addr = alloca i32, align 4
  %cipher_type.addr = alloca i32, align 4
  %md_type.addr = alloca i32, align 4
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %keylen = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  %olen = alloca i64, align 8
  store %struct.mbedtls_asn1_buf* %pbe_params, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %cipher_type, i32* %cipher_type.addr, align 4
  store i32 %md_type, i32* %md_type.addr, align 4
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %keylen, align 4
  store i64 0, i64* %olen, align 8
  %0 = load i8*, i8** %pwd.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %pwdlen.addr, align 8
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -8064, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %cipher_type.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %2) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp2 = icmp eq %struct.mbedtls_cipher_info_t* %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -7936, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 2
  %5 = load i32, i32* %key_bitlen, align 8
  %div = udiv i32 %5, 8
  store i32 %div, i32* %keylen, align 4
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  %7 = load i32, i32* %md_type.addr, align 4
  %8 = load i8*, i8** %pwd.addr, align 8
  %9 = load i64, i64* %pwdlen.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %10 = load i32, i32* %keylen, align 4
  %conv = sext i32 %10 to i64
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %11 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %11, i32 0, i32 4
  %12 = load i32, i32* %iv_size, align 8
  %conv6 = zext i32 %12 to i64
  %call7 = call i32 @pkcs12_pbe_derive_key_iv(%struct.mbedtls_asn1_buf* noundef %6, i32 noundef %7, i8* noundef %8, i64 noundef %9, i8* noundef %arraydecay, i64 noundef %conv, i8* noundef %arraydecay5, i64 noundef %conv6) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end4
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end4
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #4
  %14 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call12 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, %struct.mbedtls_cipher_info_t* noundef %14) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %exit

if.end16:                                         ; preds = %if.end11
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %15 = load i32, i32* %keylen, align 4
  %mul = mul nsw i32 8, %15
  %16 = load i32, i32* %mode.addr, align 4
  %call18 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay17, i32 noundef %mul, i32 noundef %16) #4
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  br label %exit

if.end22:                                         ; preds = %if.end16
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %17 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %iv_size24 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %17, i32 0, i32 4
  %18 = load i32, i32* %iv_size24, align 8
  %conv25 = zext i32 %18 to i64
  %call26 = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay23, i64 noundef %conv25) #4
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  br label %exit

if.end30:                                         ; preds = %if.end22
  %call31 = call i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #4
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  br label %exit

if.end35:                                         ; preds = %if.end30
  %19 = load i8*, i8** %data.addr, align 8
  %20 = load i64, i64* %len.addr, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %call36 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64* noundef %olen) #4
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %exit

if.end40:                                         ; preds = %if.end35
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %olen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  %call41 = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %add.ptr, i64* noundef %olen) #4
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  store i32 -7680, i32* %ret, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40
  br label %exit

exit:                                             ; preds = %if.end45, %if.then39, %if.then34, %if.then29, %if.then21, %if.then15
  %arraydecay46 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay46, i64 noundef 32) #4
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay47, i64 noundef 16) #4
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #4
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then10, %if.then3, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs12_pbe_derive_key_iv(%struct.mbedtls_asn1_buf* noundef %pbe_params, i32 noundef %md_type, i8* noundef %pwd, i64 noundef %pwdlen, i8* noundef %key, i64 noundef %keylen, i8* noundef %iv, i64 noundef %ivlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pbe_params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_type.addr = alloca i32, align 4
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %ivlen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %iterations = alloca i32, align 4
  %salt = alloca %struct.mbedtls_asn1_buf, align 8
  %i = alloca i64, align 8
  %unipwd = alloca [258 x i8], align 16
  store %struct.mbedtls_asn1_buf* %pbe_params, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  store i32 %md_type, i32* %md_type.addr, align 4
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %ivlen, i64* %ivlen.addr, align 8
  store i32 0, i32* %iterations, align 4
  %0 = load i64, i64* %pwdlen.addr, align 8
  %cmp = icmp ugt i64 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8064, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.mbedtls_asn1_buf* %salt to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #5
  %2 = bitcast [258 x i8]* %unipwd to i8*
  %call1 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 258) #5
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  %call2 = call i32 @pkcs12_parse_pbe_params(%struct.mbedtls_asn1_buf* noundef %3, %struct.mbedtls_asn1_buf* noundef %salt, i32* noundef %iterations) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %pwdlen.addr, align 8
  %cmp6 = icmp ult i64 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %pwd.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i64, i64* %i, align 8
  %mul = mul i64 %10, 2
  %add = add i64 %mul, 1
  %arrayidx7 = getelementptr inbounds [258 x i8], [258 x i8]* %unipwd, i64 0, i64 %add
  store i8 %9, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %key.addr, align 8
  %13 = load i64, i64* %keylen.addr, align 8
  %arraydecay = getelementptr inbounds [258 x i8], [258 x i8]* %unipwd, i64 0, i64 0
  %14 = load i64, i64* %pwdlen.addr, align 8
  %mul8 = mul i64 %14, 2
  %add9 = add i64 %mul8, 2
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 2
  %15 = load i8*, i8** %p, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 1
  %16 = load i64, i64* %len, align 8
  %17 = load i32, i32* %md_type.addr, align 4
  %18 = load i32, i32* %iterations, align 4
  %call10 = call i32 @mbedtls_pkcs12_derivation(i8* noundef %12, i64 noundef %13, i8* noundef %arraydecay, i64 noundef %add9, i8* noundef %15, i64 noundef %16, i32 noundef %17, i32 noundef 1, i32 noundef %18) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.end
  %20 = load i8*, i8** %iv.addr, align 8
  %cmp14 = icmp eq i8* %20, null
  br i1 %cmp14, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %21 = load i64, i64* %ivlen.addr, align 8
  %cmp15 = icmp eq i64 %21, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %22 = load i8*, i8** %iv.addr, align 8
  %23 = load i64, i64* %ivlen.addr, align 8
  %arraydecay18 = getelementptr inbounds [258 x i8], [258 x i8]* %unipwd, i64 0, i64 0
  %24 = load i64, i64* %pwdlen.addr, align 8
  %mul19 = mul i64 %24, 2
  %add20 = add i64 %mul19, 2
  %p21 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 2
  %25 = load i8*, i8** %p21, align 8
  %len22 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 1
  %26 = load i64, i64* %len22, align 8
  %27 = load i32, i32* %md_type.addr, align 4
  %28 = load i32, i32* %iterations, align 4
  %call23 = call i32 @mbedtls_pkcs12_derivation(i8* noundef %22, i64 noundef %23, i8* noundef %arraydecay18, i64 noundef %add20, i8* noundef %25, i64 noundef %26, i32 noundef %27, i32 noundef 2, i32 noundef %28) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end17
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then16, %if.then12, %if.then4, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs12_derivation(i8* noundef %data, i64 noundef %datalen, i8* noundef %pwd, i64 noundef %pwdlen, i8* noundef %salt, i64 noundef %saltlen, i32 noundef %md_type, i32 noundef %id, i32 noundef %iterations) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %datalen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %saltlen.addr = alloca i64, align 8
  %md_type.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %iterations.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  %diversifier = alloca [128 x i8], align 16
  %salt_block = alloca [128 x i8], align 16
  %pwd_block = alloca [128 x i8], align 16
  %hash_block = alloca [128 x i8], align 16
  %hash_output = alloca [64 x i8], align 16
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  %use_password = alloca i32, align 4
  %use_salt = alloca i32, align 4
  %hlen = alloca i64, align 8
  %use_len = alloca i64, align 8
  %v = alloca i64, align 8
  %i = alloca i64, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %datalen, i64* %datalen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %saltlen, i64* %saltlen.addr, align 8
  store i32 %md_type, i32* %md_type.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  store i32 %iterations, i32* %iterations.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [128 x i8]* %hash_block to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 128, i1 false)
  store i32 0, i32* %use_password, align 4
  store i32 0, i32* %use_salt, align 4
  %1 = load i64, i64* %datalen.addr, align 8
  %cmp = icmp ugt i64 %1, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %pwdlen.addr, align 8
  %cmp1 = icmp ugt i64 %2, 64
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %saltlen.addr, align 8
  %cmp3 = icmp ugt i64 %3, 64
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -8064, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i8*, i8** %pwd.addr, align 8
  %cmp4 = icmp eq i8* %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %pwdlen.addr, align 8
  %cmp5 = icmp ne i64 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 -8064, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i8*, i8** %salt.addr, align 8
  %cmp8 = icmp eq i8* %6, null
  br i1 %cmp8, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %if.end7
  %7 = load i64, i64* %saltlen.addr, align 8
  %cmp10 = icmp ne i64 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true9
  store i32 -8064, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true9, %if.end7
  %8 = load i8*, i8** %pwd.addr, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end12
  %9 = load i64, i64* %pwdlen.addr, align 8
  %cmp13 = icmp ne i64 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end12
  %10 = phi i1 [ false, %if.end12 ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %use_password, align 4
  %11 = load i8*, i8** %salt.addr, align 8
  %tobool14 = icmp ne i8* %11, null
  br i1 %tobool14, label %land.rhs15, label %land.end17

land.rhs15:                                       ; preds = %land.end
  %12 = load i64, i64* %saltlen.addr, align 8
  %cmp16 = icmp ne i64 %12, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs15, %land.end
  %13 = phi i1 [ false, %land.end ], [ %cmp16, %land.rhs15 ]
  %land.ext18 = zext i1 %13 to i32
  store i32 %land.ext18, i32* %use_salt, align 4
  %14 = load i32, i32* %md_type.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %14) #4
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %15 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp19 = icmp eq %struct.mbedtls_md_info_t* %15, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.end17
  store i32 -7936, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.end17
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #4
  %16 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call22 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %16, i32 noundef 0) #4
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %18 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call26 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %18) #4
  %conv = zext i8 %call26 to i64
  store i64 %conv, i64* %hlen, align 8
  %19 = load i64, i64* %hlen, align 8
  %cmp27 = icmp ule i64 %19, 32
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  store i64 64, i64* %v, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end25
  store i64 128, i64* %v, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %diversifier, i64 0, i64 0
  %20 = load i32, i32* %id.addr, align 4
  %conv31 = trunc i32 %20 to i8
  %conv32 = zext i8 %conv31 to i32
  %21 = load i64, i64* %v, align 8
  %call33 = call i8* @memset(i8* noundef %arraydecay, i32 noundef %conv32, i64 noundef %21) #5
  %22 = load i32, i32* %use_salt, align 4
  %cmp34 = icmp ne i32 %22, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end30
  %arraydecay37 = getelementptr inbounds [128 x i8], [128 x i8]* %salt_block, i64 0, i64 0
  %23 = load i64, i64* %v, align 8
  %24 = load i8*, i8** %salt.addr, align 8
  %25 = load i64, i64* %saltlen.addr, align 8
  call void @pkcs12_fill_buffer(i8* noundef %arraydecay37, i64 noundef %23, i8* noundef %24, i64 noundef %25) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end30
  %26 = load i32, i32* %use_password, align 4
  %cmp39 = icmp ne i32 %26, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %arraydecay42 = getelementptr inbounds [128 x i8], [128 x i8]* %pwd_block, i64 0, i64 0
  %27 = load i64, i64* %v, align 8
  %28 = load i8*, i8** %pwd.addr, align 8
  %29 = load i64, i64* %pwdlen.addr, align 8
  call void @pkcs12_fill_buffer(i8* noundef %arraydecay42, i64 noundef %27, i8* noundef %28, i64 noundef %29) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %30 = load i8*, i8** %data.addr, align 8
  store i8* %30, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end166, %if.end43
  %31 = load i64, i64* %datalen.addr, align 8
  %cmp44 = icmp ugt i64 %31, 0
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call46 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #4
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.body
  br label %exit

if.end50:                                         ; preds = %while.body
  %arraydecay51 = getelementptr inbounds [128 x i8], [128 x i8]* %diversifier, i64 0, i64 0
  %32 = load i64, i64* %v, align 8
  %call52 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay51, i64 noundef %32) #4
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  br label %exit

if.end56:                                         ; preds = %if.end50
  %33 = load i32, i32* %use_salt, align 4
  %cmp57 = icmp ne i32 %33, 0
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end56
  %arraydecay60 = getelementptr inbounds [128 x i8], [128 x i8]* %salt_block, i64 0, i64 0
  %34 = load i64, i64* %v, align 8
  %call61 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay60, i64 noundef %34) #4
  store i32 %call61, i32* %ret, align 4
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then59
  br label %exit

if.end65:                                         ; preds = %if.then59
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end56
  %35 = load i32, i32* %use_password, align 4
  %cmp67 = icmp ne i32 %35, 0
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end66
  %arraydecay70 = getelementptr inbounds [128 x i8], [128 x i8]* %pwd_block, i64 0, i64 0
  %36 = load i64, i64* %v, align 8
  %call71 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay70, i64 noundef %36) #4
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then69
  br label %exit

if.end75:                                         ; preds = %if.then69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end66
  %arraydecay77 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  %call78 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay77) #4
  store i32 %call78, i32* %ret, align 4
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end76
  br label %exit

if.end82:                                         ; preds = %if.end76
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end82
  %37 = load i64, i64* %i, align 8
  %38 = load i32, i32* %iterations.addr, align 4
  %conv83 = sext i32 %38 to i64
  %cmp84 = icmp ult i64 %37, %conv83
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %arraydecay86 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  %40 = load i64, i64* %hlen, align 8
  %arraydecay87 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  %call88 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %39, i8* noundef %arraydecay86, i64 noundef %40, i8* noundef %arraydecay87) #4
  store i32 %call88, i32* %ret, align 4
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.body
  br label %exit

if.end92:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end92
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load i64, i64* %datalen.addr, align 8
  %43 = load i64, i64* %hlen, align 8
  %cmp93 = icmp ugt i64 %42, %43
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %44 = load i64, i64* %hlen, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %45 = load i64, i64* %datalen.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %44, %cond.true ], [ %45, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  %46 = load i8*, i8** %p, align 8
  %arraydecay95 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  %47 = load i64, i64* %use_len, align 8
  %call96 = call i8* @memcpy(i8* noundef %46, i8* noundef %arraydecay95, i64 noundef %47) #5
  %48 = load i64, i64* %use_len, align 8
  %49 = load i64, i64* %datalen.addr, align 8
  %sub = sub i64 %49, %48
  store i64 %sub, i64* %datalen.addr, align 8
  %50 = load i64, i64* %use_len, align 8
  %51 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %add.ptr, i8** %p, align 8
  %52 = load i64, i64* %datalen.addr, align 8
  %cmp97 = icmp eq i64 %52, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %cond.end
  br label %while.end

if.end100:                                        ; preds = %cond.end
  %arraydecay101 = getelementptr inbounds [128 x i8], [128 x i8]* %hash_block, i64 0, i64 0
  %53 = load i64, i64* %v, align 8
  %arraydecay102 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  %54 = load i64, i64* %hlen, align 8
  call void @pkcs12_fill_buffer(i8* noundef %arraydecay101, i64 noundef %53, i8* noundef %arraydecay102, i64 noundef %54) #4
  %55 = load i64, i64* %v, align 8
  store i64 %55, i64* %i, align 8
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc114, %if.end100
  %56 = load i64, i64* %i, align 8
  %cmp104 = icmp ugt i64 %56, 0
  br i1 %cmp104, label %for.body106, label %for.end115

for.body106:                                      ; preds = %for.cond103
  %57 = load i64, i64* %i, align 8
  %sub107 = sub i64 %57, 1
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %hash_block, i64 0, i64 %sub107
  %58 = load i8, i8* %arrayidx, align 1
  %inc108 = add i8 %58, 1
  store i8 %inc108, i8* %arrayidx, align 1
  %conv109 = zext i8 %inc108 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %for.body106
  br label %for.end115

if.end113:                                        ; preds = %for.body106
  br label %for.inc114

for.inc114:                                       ; preds = %if.end113
  %59 = load i64, i64* %i, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond103, !llvm.loop !7

for.end115:                                       ; preds = %if.then112, %for.cond103
  %60 = load i32, i32* %use_salt, align 4
  %cmp116 = icmp ne i32 %60, 0
  br i1 %cmp116, label %if.then118, label %if.end139

if.then118:                                       ; preds = %for.end115
  store i8 0, i8* %c, align 1
  %61 = load i64, i64* %v, align 8
  store i64 %61, i64* %i, align 8
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc136, %if.then118
  %62 = load i64, i64* %i, align 8
  %cmp120 = icmp ugt i64 %62, 0
  br i1 %cmp120, label %for.body122, label %for.end138

for.body122:                                      ; preds = %for.cond119
  %63 = load i64, i64* %i, align 8
  %sub123 = sub i64 %63, 1
  %arrayidx124 = getelementptr inbounds [128 x i8], [128 x i8]* %salt_block, i64 0, i64 %sub123
  %64 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %64 to i32
  %65 = load i64, i64* %i, align 8
  %sub126 = sub i64 %65, 1
  %arrayidx127 = getelementptr inbounds [128 x i8], [128 x i8]* %hash_block, i64 0, i64 %sub126
  %66 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %66 to i32
  %add = add nsw i32 %conv125, %conv128
  %67 = load i8, i8* %c, align 1
  %conv129 = zext i8 %67 to i32
  %add130 = add nsw i32 %add, %conv129
  store i32 %add130, i32* %j, align 4
  %68 = load i32, i32* %j, align 4
  %shr = lshr i32 %68, 8
  %and = and i32 %shr, 255
  %conv131 = trunc i32 %and to i8
  store i8 %conv131, i8* %c, align 1
  %69 = load i32, i32* %j, align 4
  %and132 = and i32 %69, 255
  %conv133 = trunc i32 %and132 to i8
  %70 = load i64, i64* %i, align 8
  %sub134 = sub i64 %70, 1
  %arrayidx135 = getelementptr inbounds [128 x i8], [128 x i8]* %salt_block, i64 0, i64 %sub134
  store i8 %conv133, i8* %arrayidx135, align 1
  br label %for.inc136

for.inc136:                                       ; preds = %for.body122
  %71 = load i64, i64* %i, align 8
  %dec137 = add i64 %71, -1
  store i64 %dec137, i64* %i, align 8
  br label %for.cond119, !llvm.loop !8

for.end138:                                       ; preds = %for.cond119
  br label %if.end139

if.end139:                                        ; preds = %for.end138, %for.end115
  %72 = load i32, i32* %use_password, align 4
  %cmp140 = icmp ne i32 %72, 0
  br i1 %cmp140, label %if.then142, label %if.end166

if.then142:                                       ; preds = %if.end139
  store i8 0, i8* %c, align 1
  %73 = load i64, i64* %v, align 8
  store i64 %73, i64* %i, align 8
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc163, %if.then142
  %74 = load i64, i64* %i, align 8
  %cmp144 = icmp ugt i64 %74, 0
  br i1 %cmp144, label %for.body146, label %for.end165

for.body146:                                      ; preds = %for.cond143
  %75 = load i64, i64* %i, align 8
  %sub147 = sub i64 %75, 1
  %arrayidx148 = getelementptr inbounds [128 x i8], [128 x i8]* %pwd_block, i64 0, i64 %sub147
  %76 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %76 to i32
  %77 = load i64, i64* %i, align 8
  %sub150 = sub i64 %77, 1
  %arrayidx151 = getelementptr inbounds [128 x i8], [128 x i8]* %hash_block, i64 0, i64 %sub150
  %78 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %78 to i32
  %add153 = add nsw i32 %conv149, %conv152
  %79 = load i8, i8* %c, align 1
  %conv154 = zext i8 %79 to i32
  %add155 = add nsw i32 %add153, %conv154
  store i32 %add155, i32* %j, align 4
  %80 = load i32, i32* %j, align 4
  %shr156 = lshr i32 %80, 8
  %and157 = and i32 %shr156, 255
  %conv158 = trunc i32 %and157 to i8
  store i8 %conv158, i8* %c, align 1
  %81 = load i32, i32* %j, align 4
  %and159 = and i32 %81, 255
  %conv160 = trunc i32 %and159 to i8
  %82 = load i64, i64* %i, align 8
  %sub161 = sub i64 %82, 1
  %arrayidx162 = getelementptr inbounds [128 x i8], [128 x i8]* %pwd_block, i64 0, i64 %sub161
  store i8 %conv160, i8* %arrayidx162, align 1
  br label %for.inc163

for.inc163:                                       ; preds = %for.body146
  %83 = load i64, i64* %i, align 8
  %dec164 = add i64 %83, -1
  store i64 %dec164, i64* %i, align 8
  br label %for.cond143, !llvm.loop !9

for.end165:                                       ; preds = %for.cond143
  br label %if.end166

if.end166:                                        ; preds = %for.end165, %if.end139
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then99, %while.cond
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %while.end, %if.then91, %if.then81, %if.then74, %if.then64, %if.then55, %if.then49
  %arraydecay167 = getelementptr inbounds [128 x i8], [128 x i8]* %salt_block, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay167, i64 noundef 128) #4
  %arraydecay168 = getelementptr inbounds [128 x i8], [128 x i8]* %pwd_block, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay168, i64 noundef 128) #4
  %arraydecay169 = getelementptr inbounds [128 x i8], [128 x i8]* %hash_block, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay169, i64 noundef 128) #4
  %arraydecay170 = getelementptr inbounds [64 x i8], [64 x i8]* %hash_output, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay170, i64 noundef 64) #4
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #4
  %84 = load i32, i32* %ret, align 4
  store i32 %84, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then24, %if.then20, %if.then11, %if.then6, %if.then
  %85 = load i32, i32* %retval, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkcs12_fill_buffer(i8* noundef %data, i64 noundef %data_len, i8* noundef %filler, i64 noundef %fill_len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %filler.addr = alloca i8*, align 8
  %fill_len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %use_len = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  store i8* %filler, i8** %filler.addr, align 8
  store i64 %fill_len, i64* %fill_len.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %filler.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %fill_len.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %3 = load i64, i64* %data_len.addr, align 8
  %cmp2 = icmp ugt i64 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %data_len.addr, align 8
  %5 = load i64, i64* %fill_len.addr, align 8
  %cmp3 = icmp ugt i64 %4, %5
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i64, i64* %fill_len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load i64, i64* %data_len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %filler.addr, align 8
  %10 = load i64, i64* %use_len, align 8
  %call = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10) #5
  %11 = load i64, i64* %use_len, align 8
  %12 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %add.ptr, i8** %p, align 8
  %13 = load i64, i64* %use_len, align 8
  %14 = load i64, i64* %data_len.addr, align 8
  %sub = sub i64 %14, %13
  store i64 %sub, i64* %data_len.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs12_parse_pbe_params(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_asn1_buf* noundef %salt, i32* noundef %iterations) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %salt.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %iterations.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8**, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store %struct.mbedtls_asn1_buf* %salt, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  store i32* %iterations, i32** %iterations.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 2
  store i8** %p1, i8*** %p, align 8
  %1 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %1, i32 0, i32 2
  %2 = load i8*, i8** %p2, align 8
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %3, i32 0, i32 1
  %4 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %end, align 8
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 0
  %6 = load i32, i32* %tag, align 8
  %cmp = icmp ne i32 %6, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -7808, i32 noundef -98, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8**, i8*** %p, align 8
  %8 = load i8*, i8** %end, align 8
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %len3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 1
  %call4 = call i32 @mbedtls_asn1_get_tag(i8** noundef %7, i8* noundef %8, i64* noundef %len3, i32 noundef 4) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %call7 = call i32 @mbedtls_error_add(i32 noundef -7808, i32 noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 63) #4
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load i8**, i8*** %p, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 2
  store i8* %12, i8** %p9, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len10, align 8
  %16 = load i8**, i8*** %p, align 8
  %17 = load i8*, i8** %16, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 %15
  store i8* %add.ptr11, i8** %16, align 8
  %18 = load i8**, i8*** %p, align 8
  %19 = load i8*, i8** %end, align 8
  %20 = load i32*, i32** %iterations.addr, align 8
  %call12 = call i32 @mbedtls_asn1_get_int(i8** noundef %18, i8* noundef %19, i32* noundef %20) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %21 = load i32, i32* %ret, align 4
  %call15 = call i32 @mbedtls_error_add(i32 noundef -7808, i32 noundef %21, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 69) #4
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end8
  %22 = load i8**, i8*** %p, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %end, align 8
  %cmp17 = icmp ne i8* %23, %24
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @mbedtls_error_add(i32 noundef -7808, i32 noundef -102, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #4
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then14, %if.then6, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

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

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #1

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
