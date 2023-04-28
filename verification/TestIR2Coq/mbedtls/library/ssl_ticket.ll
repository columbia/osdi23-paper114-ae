; ModuleID = 'ssl_ticket.c'
source_filename = "ssl_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_ticket_context = type { [2 x %struct.mbedtls_ssl_ticket_key], i8, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_ssl_ticket_key = type { [4 x i8], i32, %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_ticket_init(%struct.mbedtls_ssl_ticket_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_ticket_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 232) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_rotate(%struct.mbedtls_ssl_ticket_context* noundef %ctx, i8* noundef %name, i64 noundef %nlength, i8* noundef %k, i64 noundef %klength, i32 noundef %lifetime) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %name.addr = alloca i8*, align 8
  %nlength.addr = alloca i64, align 8
  %k.addr = alloca i8*, align 8
  %klength.addr = alloca i64, align 8
  %lifetime.addr = alloca i32, align 4
  %idx = alloca i8, align 1
  %key = alloca %struct.mbedtls_ssl_ticket_key*, align 8
  %ret = alloca i32, align 4
  %bitlen = alloca i32, align 4
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %nlength, i64* %nlength.addr, align 8
  store i8* %k, i8** %k.addr, align 8
  store i64 %klength, i64* %klength.addr, align 8
  store i32 %lifetime, i32* %lifetime.addr, align 4
  %0 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %0, i32 0, i32 1
  %1 = load i8, i8* %active, align 8
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 1, %conv
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, i8* %idx, align 1
  %2 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 0
  %3 = load i8, i8* %idx, align 1
  %conv2 = zext i8 %3 to i32
  %idx.ext = sext i32 %conv2 to i64
  %add.ptr = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arraydecay, i64 %idx.ext
  store %struct.mbedtls_ssl_ticket_key* %add.ptr, %struct.mbedtls_ssl_ticket_key** %key, align 8
  store i32 -110, i32* %ret, align 4
  %4 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx3 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %4, i32 0, i32 2
  %call = call i32 @mbedtls_cipher_get_key_bitlen(%struct.mbedtls_cipher_context_t* noundef %ctx3) #6
  store i32 %call, i32* %bitlen, align 4
  %5 = load i64, i64* %nlength.addr, align 8
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %klength.addr, align 8
  %mul = mul i64 %6, 8
  %7 = load i32, i32* %bitlen, align 4
  %conv5 = sext i32 %7 to i64
  %cmp6 = icmp ult i64 %mul, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx8 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %8, i32 0, i32 2
  %9 = load i8*, i8** %k.addr, align 8
  %10 = load i32, i32* %bitlen, align 4
  %call9 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %ctx8, i8* noundef %9, i32 noundef %10, i32 noundef 1) #6
  store i32 %call9, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %11, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %13 = load i8, i8* %idx, align 1
  %14 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active14 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %14, i32 0, i32 1
  store i8 %13, i8* %active14, align 8
  %15 = load i32, i32* %lifetime.addr, align 4
  %16 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %16, i32 0, i32 2
  store i32 %15, i32* %ticket_lifetime, align 4
  %17 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %name15 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %17, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %name15, i64 0, i64 0
  %18 = load i8*, i8** %name.addr, align 8
  %call17 = call i8* @memcpy(i8* noundef %arraydecay16, i8* noundef %18, i64 noundef 4) #5
  %call18 = call i64 @time(i64* noundef null) #5
  %conv19 = trunc i64 %call18 to i32
  %19 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %generation_time = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %19, i32 0, i32 1
  store i32 %conv19, i32* %generation_time, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_key_bitlen(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info1, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 2
  %4 = load i32, i32* %key_bitlen, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_setup(%struct.mbedtls_ssl_ticket_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %cipher, i32 noundef %lifetime) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %cipher.addr = alloca i32, align 4
  %lifetime.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %key_bits = alloca i64, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %cipher, i32* %cipher.addr, align 4
  store i32 %lifetime, i32* %lifetime.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %cipher.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %0) #6
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call1 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %1) #6
  %cmp = icmp ne i32 %call1, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call2 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %2) #6
  %cmp3 = icmp ne i32 %call2, 8
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call5 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %3) #6
  %cmp6 = icmp ne i32 %call5, 11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call7 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %4) #6
  store i64 %call7, i64* %key_bits, align 8
  %5 = load i64, i64* %key_bits, align 8
  %cmp8 = icmp ugt i64 %5, 256
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %f_rng11 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %7, i32 0, i32 3
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %f_rng11, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %9 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %p_rng12 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %9, i32 0, i32 4
  store i8* %8, i8** %p_rng12, align 8
  %10 = load i32, i32* %lifetime.addr, align 4
  %11 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %11, i32 0, i32 2
  store i32 %10, i32* %ticket_lifetime, align 4
  %12 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 0
  %ctx13 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx, i32 0, i32 2
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call14 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %ctx13, %struct.mbedtls_cipher_info_t* noundef %13) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %15 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys18 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %15, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys18, i64 0, i64 1
  %ctx20 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx19, i32 0, i32 2
  %16 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call21 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %ctx20, %struct.mbedtls_cipher_info_t* noundef %16) #6
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end17
  %18 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %call25 = call i32 @ssl_ticket_gen_key(%struct.mbedtls_ssl_ticket_context* noundef %18, i8 noundef zeroext 0) #6
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %19 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %call27 = call i32 @ssl_ticket_gen_key(%struct.mbedtls_ssl_ticket_context* noundef %19, i8 noundef zeroext 1) #6
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false, %if.end24
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then23, %if.then16, %if.then9, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 2
  %2 = load i32, i32* %key_bitlen, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_ticket_gen_key(%struct.mbedtls_ssl_ticket_context* noundef %ctx, i8 noundef zeroext %index) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %index.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %key = alloca %struct.mbedtls_ssl_ticket_key*, align 8
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  store i8 %index, i8* %index.addr, align 1
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false)
  %1 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 0
  %2 = load i8, i8* %index.addr, align 1
  %conv = zext i8 %2 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arraydecay, i64 %idx.ext
  store %struct.mbedtls_ssl_ticket_key* %add.ptr, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %call = call i64 @time(i64* noundef null) #5
  %conv1 = trunc i64 %call to i32
  %3 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %generation_time = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %3, i32 0, i32 1
  store i32 %conv1, i32* %generation_time, align 4
  %4 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %4, i32 0, i32 3
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %6 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %6, i32 0, i32 4
  %7 = load i8*, i8** %p_rng, align 8
  %8 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %8, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %name, i64 0, i64 0
  %call3 = call i32 %5(i8* noundef %7, i8* noundef %arraydecay2, i64 noundef 4) #6
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %f_rng5 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %10, i32 0, i32 3
  %11 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng5, align 8
  %12 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %p_rng6 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %12, i32 0, i32 4
  %13 = load i8*, i8** %p_rng6, align 8
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  %call8 = call i32 %11(i8* noundef %13, i8* noundef %arraydecay7, i64 noundef 32) #6
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx13 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %15, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  %16 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx15 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %16, i32 0, i32 2
  %call16 = call i32 @mbedtls_cipher_get_key_bitlen(%struct.mbedtls_cipher_context_t* noundef %ctx15) #6
  %call17 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %ctx13, i8* noundef %arraydecay14, i32 noundef %call16, i32 noundef 1) #6
  store i32 %call17, i32* %ret, align 4
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay18, i64 noundef 32) #6
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_write(i8* noundef %p_ticket, %struct.mbedtls_ssl_session* noundef %session, i8* noundef %start, i8* noundef %end, i64* noundef %tlen, i32* noundef %ticket_lifetime) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ticket.addr = alloca i8*, align 8
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %tlen.addr = alloca i64*, align 8
  %ticket_lifetime.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %key = alloca %struct.mbedtls_ssl_ticket_key*, align 8
  %key_name = alloca i8*, align 8
  %iv = alloca i8*, align 8
  %state_len_bytes = alloca i8*, align 8
  %state = alloca i8*, align 8
  %clear_len = alloca i64, align 8
  %ciph_len = alloca i64, align 8
  store i8* %p_ticket, i8** %p_ticket.addr, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %tlen, i64** %tlen.addr, align 8
  store i32* %ticket_lifetime, i32** %ticket_lifetime.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_ticket.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_ticket_context*
  store %struct.mbedtls_ssl_ticket_context* %1, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %2 = load i8*, i8** %start.addr, align 8
  store i8* %2, i8** %key_name, align 8
  %3 = load i8*, i8** %start.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 4
  store i8* %add.ptr, i8** %iv, align 8
  %4 = load i8*, i8** %iv, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 12
  store i8* %add.ptr1, i8** %state_len_bytes, align 8
  %5 = load i8*, i8** %state_len_bytes, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr2, i8** %state, align 8
  %6 = load i64*, i64** %tlen.addr, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ticket_context* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %8, i32 0, i32 3
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %cmp3 = icmp eq i32 (i8*, i8*, i64)* %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i8*, i8** %start.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %10, i8* noundef %11, i64 noundef 34) #6
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  %12 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %call7 = call i32 @ssl_ticket_update_keys(%struct.mbedtls_ssl_ticket_context* noundef %12) #6
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %13 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %active = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %14, i32 0, i32 1
  %15 = load i8, i8* %active, align 8
  %idxprom = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 %idxprom
  store %struct.mbedtls_ssl_ticket_key* %arrayidx, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %16 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %ticket_lifetime11 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %16, i32 0, i32 2
  %17 = load i32, i32* %ticket_lifetime11, align 4
  %18 = load i32*, i32** %ticket_lifetime.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** %key_name, align 8
  %20 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %20, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name, i64 0, i64 0
  %call12 = call i8* @memcpy(i8* noundef %19, i8* noundef %arraydecay, i64 noundef 4) #5
  %21 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %f_rng13 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %21, i32 0, i32 3
  %22 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng13, align 8
  %23 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %23, i32 0, i32 4
  %24 = load i8*, i8** %p_rng, align 8
  %25 = load i8*, i8** %iv, align 8
  %call14 = call i32 %22(i8* noundef %24, i8* noundef %25, i64 noundef 12) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %26 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %27 = load i8*, i8** %state, align 8
  %28 = load i8*, i8** %end.addr, align 8
  %29 = load i8*, i8** %state, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call18 = call i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %26, i8* noundef %27, i64 noundef %sub.ptr.sub, i64* noundef %clear_len) #6
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %30 = load i64, i64* %clear_len, align 8
  %cmp21 = icmp ugt i64 %30, 65535
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false20, %if.end17
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %31 = load i64, i64* %clear_len, align 8
  %shr = lshr i64 %31, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %32 = load i8*, i8** %state_len_bytes, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %conv, i8* %arrayidx24, align 1
  %33 = load i64, i64* %clear_len, align 8
  %and25 = and i64 %33, 255
  %conv26 = trunc i64 %and25 to i8
  %34 = load i8*, i8** %state_len_bytes, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1
  %35 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx28 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %35, i32 0, i32 2
  %36 = load i8*, i8** %iv, align 8
  %37 = load i8*, i8** %key_name, align 8
  %38 = load i8*, i8** %state, align 8
  %39 = load i64, i64* %clear_len, align 8
  %40 = load i8*, i8** %state, align 8
  %41 = load i8*, i8** %end.addr, align 8
  %42 = load i8*, i8** %state, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %42 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %call32 = call i32 @mbedtls_cipher_auth_encrypt_ext(%struct.mbedtls_cipher_context_t* noundef %ctx28, i8* noundef %36, i64 noundef 12, i8* noundef %37, i64 noundef 18, i8* noundef %38, i64 noundef %39, i8* noundef %40, i64 noundef %sub.ptr.sub31, i64* noundef %ciph_len, i64 noundef 16) #6
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end23
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %43 = load i64, i64* %ciph_len, align 8
  %44 = load i64, i64* %clear_len, align 8
  %add = add i64 %44, 16
  %cmp37 = icmp ne i64 %43, %add
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 -27648, i32* %ret, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %45 = load i64, i64* %ciph_len, align 8
  %add41 = add i64 34, %45
  %sub = sub i64 %add41, 16
  %46 = load i64*, i64** %tlen.addr, align 8
  store i64 %sub, i64* %46, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then35, %if.then22, %if.then16, %if.then9
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then5, %if.then
  %48 = load i32, i32* %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %cur, i8* noundef %end, i64 noundef %need) #0 {
entry:
  %cur.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %need.addr = alloca i64, align 8
  store i8* %cur, i8** %cur.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  %0 = load i8*, i8** %cur.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i64, i64* %need.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8*, i8** %cur.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp ugt i64 %2, %sub.ptr.sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_ticket_update_keys(%struct.mbedtls_ssl_ticket_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %current_time = alloca i32, align 4
  %key_time = alloca i32, align 4
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %0, i32 0, i32 2
  %1 = load i32, i32* %ticket_lifetime, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @time(i64* noundef null) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %current_time, align 4
  %2 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %3, i32 0, i32 1
  %4 = load i8, i8* %active, align 8
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 %idxprom
  %generation_time = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %generation_time, align 4
  store i32 %5, i32* %key_time, align 4
  %6 = load i32, i32* %current_time, align 4
  %7 = load i32, i32* %key_time, align 4
  %cmp1 = icmp uge i32 %6, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load i32, i32* %current_time, align 4
  %9 = load i32, i32* %key_time, align 4
  %sub = sub i32 %8, %9
  %10 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %ticket_lifetime3 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %10, i32 0, i32 2
  %11 = load i32, i32* %ticket_lifetime3, align 4
  %cmp4 = icmp ult i32 %sub, %11
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %12 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active7 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %12, i32 0, i32 1
  %13 = load i8, i8* %active7, align 8
  %conv8 = zext i8 %13 to i32
  %sub9 = sub nsw i32 1, %conv8
  %conv10 = trunc i32 %sub9 to i8
  %14 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active11 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %14, i32 0, i32 1
  store i8 %conv10, i8* %active11, align 8
  %15 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %16 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %active12 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %16, i32 0, i32 1
  %17 = load i8, i8* %active12, align 8
  %call13 = call i32 @ssl_ticket_gen_key(%struct.mbedtls_ssl_ticket_context* noundef %15, i8 noundef zeroext %17) #6
  store i32 %call13, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then6
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare dso_local i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_cipher_auth_encrypt_ext(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_parse(i8* noundef %p_ticket, %struct.mbedtls_ssl_session* noundef %session, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ticket.addr = alloca i8*, align 8
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %key = alloca %struct.mbedtls_ssl_ticket_key*, align 8
  %key_name = alloca i8*, align 8
  %iv = alloca i8*, align 8
  %enc_len_p = alloca i8*, align 8
  %ticket = alloca i8*, align 8
  %enc_len = alloca i64, align 8
  %clear_len = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i8* %p_ticket, i8** %p_ticket.addr, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_ticket.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_ticket_context*
  store %struct.mbedtls_ssl_ticket_context* %1, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  store i8* %2, i8** %key_name, align 8
  %3 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 4
  store i8* %add.ptr, i8** %iv, align 8
  %4 = load i8*, i8** %iv, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 12
  store i8* %add.ptr1, i8** %enc_len_p, align 8
  %5 = load i8*, i8** %enc_len_p, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr2, i8** %ticket, align 8
  %6 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ticket_context* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %7, i32 0, i32 3
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %cmp3 = icmp eq i32 (i8*, i8*, i64)* %8, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp ult i64 %9, 34
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %call = call i32 @ssl_ticket_update_keys(%struct.mbedtls_ssl_ticket_context* noundef %10) #6
  store i32 %call, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %11 = load i8*, i8** %enc_len_p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 %conv, 8
  %13 = load i8*, i8** %enc_len_p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %or = or i32 %shl, %conv11
  %conv12 = sext i32 %or to i64
  store i64 %conv12, i64* %enc_len, align 8
  %15 = load i64, i64* %len.addr, align 8
  %16 = load i64, i64* %enc_len, align 8
  %add = add i64 34, %16
  %cmp13 = icmp ne i64 %15, %add
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  store i32 -28928, i32* %ret, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %17 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %18 = load i8*, i8** %key_name, align 8
  %call17 = call %struct.mbedtls_ssl_ticket_key* @ssl_ticket_select_key(%struct.mbedtls_ssl_ticket_context* noundef %17, i8* noundef %18) #6
  store %struct.mbedtls_ssl_ticket_key* %call17, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %cmp18 = icmp eq %struct.mbedtls_ssl_ticket_key* %call17, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 -28032, i32* %ret, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %19 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %key, align 8
  %ctx22 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %19, i32 0, i32 2
  %20 = load i8*, i8** %iv, align 8
  %21 = load i8*, i8** %key_name, align 8
  %22 = load i8*, i8** %ticket, align 8
  %23 = load i64, i64* %enc_len, align 8
  %add23 = add i64 %23, 16
  %24 = load i8*, i8** %ticket, align 8
  %25 = load i64, i64* %enc_len, align 8
  %call24 = call i32 @mbedtls_cipher_auth_decrypt_ext(%struct.mbedtls_cipher_context_t* noundef %ctx22, i8* noundef %20, i64 noundef 12, i8* noundef %21, i64 noundef 18, i8* noundef %22, i64 noundef %add23, i8* noundef %24, i64 noundef %25, i64* noundef %clear_len, i64 noundef 16) #6
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end21
  %26 = load i32, i32* %ret, align 4
  %cmp28 = icmp eq i32 %26, -25344
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i32 -29056, i32* %ret, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %27 = load i64, i64* %clear_len, align 8
  %28 = load i64, i64* %enc_len, align 8
  %cmp33 = icmp ne i64 %27, %28
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 -27648, i32* %ret, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %30 = load i8*, i8** %ticket, align 8
  %31 = load i64, i64* %clear_len, align 8
  %call37 = call i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef %29, i8* noundef %30, i64 noundef %31) #6
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = call i64 @time(i64* noundef null) #5
  store i64 %call42, i64* %current_time, align 8
  %32 = load i64, i64* %current_time, align 8
  %33 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %start = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %33, i32 0, i32 3
  %34 = load i64, i64* %start, align 8
  %cmp43 = icmp slt i64 %32, %34
  br i1 %cmp43, label %if.then50, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %35 = load i64, i64* %current_time, align 8
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %start46 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %36, i32 0, i32 3
  %37 = load i64, i64* %start46, align 8
  %sub = sub nsw i64 %35, %37
  %conv47 = trunc i64 %sub to i32
  %38 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %38, i32 0, i32 2
  %39 = load i32, i32* %ticket_lifetime, align 4
  %cmp48 = icmp ugt i32 %conv47, %39
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false45, %if.end41
  store i32 -28032, i32* %ret, align 4
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false45
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then50, %if.then40, %if.then35, %if.end31, %if.then20, %if.then15, %if.then8
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then5, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_ssl_ticket_key* @ssl_ticket_select_key(%struct.mbedtls_ssl_ticket_context* noundef %ctx, i8* noundef %name) #0 {
entry:
  %retval = alloca %struct.mbedtls_ssl_ticket_key*, align 8
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %2, i32 0, i32 0
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 %idxprom
  %name2 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name2, i64 0, i64 0
  %call = call i32 @memcmp(i8* noundef %1, i8* noundef %arraydecay, i64 noundef 4) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys5 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %4, i32 0, i32 0
  %5 = load i8, i8* %i, align 1
  %idxprom6 = zext i8 %5 to i64
  %arrayidx7 = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys5, i64 0, i64 %idxprom6
  store %struct.mbedtls_ssl_ticket_key* %arrayidx7, %struct.mbedtls_ssl_ticket_key** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8, i8* %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_ssl_ticket_key* null, %struct.mbedtls_ssl_ticket_key** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.mbedtls_ssl_ticket_key*, %struct.mbedtls_ssl_ticket_key** %retval, align 8
  ret %struct.mbedtls_ssl_ticket_key* %7
}

declare dso_local i32 @mbedtls_cipher_auth_decrypt_ext(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_ticket_free(%struct.mbedtls_ssl_ticket_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ssl_ticket_context*, align 8
  store %struct.mbedtls_ssl_ticket_context* %ctx, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys, i64 0, i64 0
  %ctx1 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx, i32 0, i32 2
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx1) #6
  %1 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %keys2 = getelementptr inbounds %struct.mbedtls_ssl_ticket_context, %struct.mbedtls_ssl_ticket_context* %1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.mbedtls_ssl_ticket_key], [2 x %struct.mbedtls_ssl_ticket_key]* %keys2, i64 0, i64 1
  %ctx4 = getelementptr inbounds %struct.mbedtls_ssl_ticket_key, %struct.mbedtls_ssl_ticket_key* %arrayidx3, i32 0, i32 2
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx4) #6
  %2 = load %struct.mbedtls_ssl_ticket_context*, %struct.mbedtls_ssl_ticket_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_ssl_ticket_context* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 232) #6
  ret void
}

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
