; ModuleID = 'cipher/cipher_aead_demo.c'
source_filename = "cipher/cipher_aead_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque

@usage = dso_local constant [72 x i8] c"Usage: cipher_aead_demo [aes128-gcm|aes256-gcm|aes128-gcm_8|chachapoly]\00", align 16
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
@.str.4 = private unnamed_addr constant [21 x i8] c"aead_demo( argv[1] )\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"aead_prepare( info, &ctx, &tag_len )\00", align 1
@.str.6 = private unnamed_addr constant [150 x i8] c"aead_encrypt( &ctx, tag_len, iv1, sizeof( iv1 ), add_data1, sizeof( add_data1 ), msg1_part1, sizeof( msg1_part1 ), msg1_part2, sizeof( msg1_part2 ) )\00", align 1
@.str.7 = private unnamed_addr constant [150 x i8] c"aead_encrypt( &ctx, tag_len, iv2, sizeof( iv2 ), add_data2, sizeof( add_data2 ), msg2_part1, sizeof( msg2_part1 ), msg2_part2, sizeof( msg2_part2 ) )\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"aes128-gcm\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"aes256-gcm\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"aes128-gcm_8\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"chachapoly\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"mbedtls_cipher_setup( ctx, mbedtls_cipher_info_from_type( type ) )\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"mbedtls_cipher_setkey( ctx, key_bytes, key_len, MBEDTLS_ENCRYPT )\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"GCM\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ChachaPoly\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s, %d, %s, %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"mbedtls_cipher_set_iv( ctx, iv, iv_len )\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"mbedtls_cipher_reset( ctx )\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"mbedtls_cipher_update_ad( ctx, ad, ad_len )\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"mbedtls_cipher_update( ctx, part1, part1_len, p, &olen )\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"mbedtls_cipher_update( ctx, part2, part2_len, p, &olen )\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"mbedtls_cipher_finish( ctx, p, &olen )\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"mbedtls_cipher_write_tag( ctx, p, tag_len )\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"out\00", align 1

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
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #3
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
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @puts(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @usage, i64 0, i64 0)) #3
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @aead_demo(i8* noundef %2) #3
  store i32 %call1, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4, i32 noundef 265, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %exit

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %exit

exit:                                             ; preds = %do.end, %if.then3
  %5 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %5, 0
  %6 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 0, i32 1
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @puts(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_demo(i8* noundef %info) #0 {
entry:
  %info.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  %tag_len = alloca i64, align 8
  store i8* %info, i8** %info.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %ctx) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %info.addr, align 8
  %call = call i32 @aead_prepare(i8* noundef %0, %struct.mbedtls_cipher_context_t* noundef %ctx, i64* noundef %tag_len) #3
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef 230, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)) #3
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i64, i64* %tag_len, align 8
  call void @aead_info(%struct.mbedtls_cipher_context_t* noundef %ctx, i64 noundef %3) #3
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %4 = load i64, i64* %tag_len, align 8
  %call3 = call i32 @aead_encrypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i64 noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @iv1, i64 0, i64 0), i64 noundef 12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @add_data1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @msg1_part2, i64 0, i64 0), i64 noundef 3) #3
  store i32 %call3, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %6 = load i32, i32* %ret, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6, i32 noundef 237, i8* noundef getelementptr inbounds ([150 x i8], [150 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %exit

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %7 = load i64, i64* %tag_len, align 8
  %call10 = call i32 @aead_encrypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i64 noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, [11 x i8] }>* @iv2 to [12 x i8]*), i64 0, i64 0), i64 noundef 12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @add_data2, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part1, i64 0, i64 0), i64 noundef 2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @msg2_part2, i64 0, i64 0), i64 noundef 3) #3
  store i32 %call10, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.body9
  %9 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %9, i32 noundef 241, i8* noundef getelementptr inbounds ([150 x i8], [150 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %exit

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %exit

exit:                                             ; preds = %do.end15, %if.then12, %if.then5, %if.then
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx) #3
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_prepare(i8* noundef %info, %struct.mbedtls_cipher_context_t* noundef %ctx, i64* noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %tag_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %type = alloca i32, align 4
  %key_len = alloca i32, align 4
  store i8* %info, i8** %info.addr, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i64* %tag_len, i64** %tag_len.addr, align 8
  %0 = load i8*, i8** %info.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 14, i32* %type, align 4
  %1 = load i64*, i64** %tag_len.addr, align 8
  store i64 16, i64* %1, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %info.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 16, i32* %type, align 4
  %3 = load i64*, i64** %tag_len.addr, align 8
  store i64 16, i64* %3, align 8
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %4 = load i8*, i8** %info.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store i32 14, i32* %type, align 4
  %5 = load i64*, i64** %tag_len.addr, align 8
  store i64 8, i64* %5, align 8
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %6 = load i8*, i8** %info.addr, align 8
  %call9 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  store i32 77, i32* %type, align 4
  %7 = load i64*, i64** %tag_len.addr, align 8
  store i64 16, i64* %7, align 8
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %call13 = call i32 @puts(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @usage, i64 0, i64 0)) #3
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end16
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %9 = load i32, i32* %type, align 4
  %call17 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %9) #3
  %call18 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %8, %struct.mbedtls_cipher_info_t* noundef %call17) #3
  store i32 %call18, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %10, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body
  %11 = load i32, i32* %ret, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %11, i32 noundef 152, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %exit

if.end22:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end22
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call23 = call i32 @mbedtls_cipher_get_key_bitlen(%struct.mbedtls_cipher_context_t* noundef %12) #3
  store i32 %call23, i32* %key_len, align 4
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %13 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %14 = load i32, i32* %key_len, align 4
  %call25 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %13, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @key_bytes to [32 x i8]*), i64 0, i64 0), i32 noundef %14, i32 noundef 1) #3
  store i32 %call25, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.body24
  %16 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %16, i32 noundef 156, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0)) #3
  br label %exit

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %exit

exit:                                             ; preds = %do.end30, %if.then27, %if.then20
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.else12
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aead_info(%struct.mbedtls_cipher_context_t* noundef %ctx, i64 noundef %tag_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %tag_len.addr = alloca i64, align 8
  %type = alloca i32, align 4
  %info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %ciph = alloca i8*, align 8
  %key_bits = alloca i32, align 4
  %mode = alloca i32, align 4
  %mode_str = alloca i8*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call = call i32 @mbedtls_cipher_get_type(%struct.mbedtls_cipher_context_t* noundef %0) #3
  store i32 %call, i32* %type, align 4
  %1 = load i32, i32* %type, align 4
  %call1 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %1) #3
  store %struct.mbedtls_cipher_info_t* %call1, %struct.mbedtls_cipher_info_t** %info, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info, align 8
  %call2 = call i8* @mbedtls_cipher_info_get_name(%struct.mbedtls_cipher_info_t* noundef %2) #3
  store i8* %call2, i8** %ciph, align 8
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call3 = call i32 @mbedtls_cipher_get_key_bitlen(%struct.mbedtls_cipher_context_t* noundef %3) #3
  store i32 %call3, i32* %key_bits, align 4
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call4 = call i32 @mbedtls_cipher_get_cipher_mode(%struct.mbedtls_cipher_context_t* noundef %4) #3
  store i32 %call4, i32* %mode, align 4
  %5 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %mode, align 4
  %cmp5 = icmp eq i32 %6, 11
  %7 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ]
  store i8* %cond6, i8** %mode_str, align 8
  %8 = load i8*, i8** %ciph, align 8
  %9 = load i32, i32* %key_bits, align 4
  %10 = load i8*, i8** %mode_str, align 8
  %11 = load i64, i64* %tag_len.addr, align 8
  %conv = trunc i64 %11 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %8, i32 noundef %9, i8* noundef %10, i32 noundef %conv) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_encrypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i64 noundef %tag_len, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %part1, i64 noundef %part1_len, i8* noundef %part2, i64 noundef %part2_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %tag_len.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %part1.addr = alloca i8*, align 8
  %part1_len.addr = alloca i64, align 8
  %part2.addr = alloca i8*, align 8
  %part2_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  %out = alloca [21 x i8], align 16
  %p = alloca i8*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %1 = load i8*, i8** %iv.addr, align 8
  %2 = load i64, i64* %iv_len.addr, align 8
  %call = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %0, i8* noundef %1, i64 noundef %2) #3
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4, i32 noundef 199, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0)) #3
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call3 = call i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %5) #3
  store i32 %call3, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %7 = load i32, i32* %ret, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %7, i32 noundef 200, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %exit

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %9 = load i8*, i8** %ad.addr, align 8
  %10 = load i64, i64* %ad_len.addr, align 8
  %call10 = call i32 @mbedtls_cipher_update_ad(%struct.mbedtls_cipher_context_t* noundef %8, i8* noundef %9, i64 noundef %10) #3
  store i32 %call10, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.body9
  %12 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12, i32 noundef 201, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0)) #3
  br label %exit

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %13 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %14 = load i8*, i8** %part1.addr, align 8
  %15 = load i64, i64* %part1_len.addr, align 8
  %16 = load i8*, i8** %p, align 8
  %call17 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %13, i8* noundef %14, i64 noundef %15, i8* noundef %16, i64* noundef %olen) #3
  store i32 %call17, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body16
  %18 = load i32, i32* %ret, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %18, i32 noundef 202, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0)) #3
  br label %exit

if.end21:                                         ; preds = %do.body16
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  %19 = load i64, i64* %olen, align 8
  %20 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %add.ptr, i8** %p, align 8
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %21 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %22 = load i8*, i8** %part2.addr, align 8
  %23 = load i64, i64* %part2_len.addr, align 8
  %24 = load i8*, i8** %p, align 8
  %call24 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %21, i8* noundef %22, i64 noundef %23, i8* noundef %24, i64* noundef %olen) #3
  store i32 %call24, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp25 = icmp ne i32 %25, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.body23
  %26 = load i32, i32* %ret, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %26, i32 noundef 204, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0)) #3
  br label %exit

if.end28:                                         ; preds = %do.body23
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %27 = load i64, i64* %olen, align 8
  %28 = load i8*, i8** %p, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %add.ptr30, i8** %p, align 8
  br label %do.body31

do.body31:                                        ; preds = %do.end29
  %29 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %30 = load i8*, i8** %p, align 8
  %call32 = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %29, i8* noundef %30, i64* noundef %olen) #3
  store i32 %call32, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %31, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body31
  %32 = load i32, i32* %ret, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %32, i32 noundef 206, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #3
  br label %exit

if.end36:                                         ; preds = %do.body31
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %33 = load i64, i64* %olen, align 8
  %34 = load i8*, i8** %p, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr38, i8** %p, align 8
  br label %do.body39

do.body39:                                        ; preds = %do.end37
  %35 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %36 = load i8*, i8** %p, align 8
  %37 = load i64, i64* %tag_len.addr, align 8
  %call40 = call i32 @mbedtls_cipher_write_tag(%struct.mbedtls_cipher_context_t* noundef %35, i8* noundef %36, i64 noundef %37) #3
  store i32 %call40, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp41 = icmp ne i32 %38, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %do.body39
  %39 = load i32, i32* %ret, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %39, i32 noundef 208, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0)) #3
  br label %exit

if.end44:                                         ; preds = %do.body39
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %40 = load i64, i64* %tag_len.addr, align 8
  %41 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %add.ptr46, i8** %p, align 8
  %42 = load i8*, i8** %p, align 8
  %arraydecay47 = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %olen, align 8
  %arraydecay48 = getelementptr inbounds [21 x i8], [21 x i8]* %out, i64 0, i64 0
  %43 = load i64, i64* %olen, align 8
  call void @print_buf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %arraydecay48, i64 noundef %43) #3
  br label %exit

exit:                                             ; preds = %do.end45, %if.then42, %if.then34, %if.then26, %if.then19, %if.then12, %if.then5, %if.then
  %44 = load i32, i32* %ret, align 4
  ret i32 %44
}

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

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
  %private_cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info1, align 8
  %private_key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 2
  %4 = load i32, i32* %private_key_bitlen, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_type(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info1, align 8
  %private_type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 0
  %4 = load i32, i32* %private_type, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_cipher_info_get_name(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %private_name = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 3
  %2 = load i8*, i8** %private_name, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_cipher_mode(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %private_cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %private_cipher_info1, align 8
  %private_mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 1
  %4 = load i32, i32* %private_mode, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_update_ad(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_cipher_write_tag(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
