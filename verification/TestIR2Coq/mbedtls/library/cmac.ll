; ModuleID = 'cmac.c'
source_filename = "cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }

@.str = private unnamed_addr constant [8 x i8] c"AES 128\00", align 1
@aes_128_key = internal constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 16
@aes_128_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"\FB\EE\D6\185q3f|\85\E0\8Fr6\A8\DE", [16 x i8] c"\F7\DD\AC0j\E2f\CC\F9\0B\C1\1E\E4mQ;"], align 16
@test_message = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@aes_message_lengths = internal constant [4 x i32] [i32 0, i32 16, i32 20, i32 64], align 16
@aes_128_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\BB\1Di)\E9Y7(\7F\A3}\12\9BugF", [16 x i8] c"\07\0A\16\B4kMAD\F7\9B\DD\9D\D0J(|", [16 x i8] c"}\85D\9E\A6\EA\19\C8#\A7\BFx\83}\FA\DE", [16 x i8] c"Q\F0\BE\BF~;\9D\92\FCIt\17y6<\FE"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"AES 192\00", align 1
@aes_192_key = internal constant [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", align 16
@aes_192_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"D\8A[\1C\93QK'>\E6C\9D\D4\DA\A2\96", [16 x i8] c"\89\14\B69&\A2\96N}\CC\87;\A9\B5E,"], align 16
@aes_192_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\D1}\DFF\AD\AA\CD\E51\CA\C4\83\DEz\93g", [16 x i8] c"\9E\99\A7\BF1\E7\10\90\06b\F6^a|Q\84", [16 x i8] c"=u\C1\94\ED\96\07\04D\A9\FA~\C7@\EC\F8", [16 x i8] c"\A1\D5\DF\0E\EDy\0FyMwX\96Y\F3\9A\11"], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"AES 256\00", align 1
@aes_256_key = internal constant [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4", align 16
@aes_256_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"\CA\D1\ED\03)\9E\ED\AC.\9A\99\80\86!P/", [16 x i8] c"\95\A3\DA\06S=\DBX]53\01\0CB\A0\D9"], align 16
@aes_256_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\02\89b\F6\1B{\F8\9E\FCkU\1FFg\D9\83", [16 x i8] c"(\A7\02?E.\8F\82\BDK\F2\8D\8C7\C3\\", [16 x i8] c"\15g'\DC\08x\94J\02<\1F\E0;\ADm\93", [16 x i8] c"\E1\99!\90T\9Fn\D5ij,\05l1T\10"], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"3DES 2 key\00", align 1
@des3_2key_key = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01\01#Eg\89\AB\CD\EF", align 16
@des3_2key_subkeys = internal constant [2 x [8 x i8]] [[8 x i8] c"\0D\D2\CBz=\88\88\D9", [8 x i8] c"\1B\A5\96\F4{\11\11\B2"], align 16
@des3_message_lengths = internal constant [4 x i32] [i32 0, i32 16, i32 20, i32 32], align 16
@des3_2key_expected_result = internal constant [4 x [8 x i8]] [[8 x i8] c"y\CER\A7\F7\86\A9`", [8 x i8] c"\CC\18\A0\B7\9A\F2A;", [8 x i8] c"\C0m7~\CD\10\19i", [8 x i8] c"\9C\D35\80\F9\B6M\FB"], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"3DES 3 key\00", align 1
@des3_3key_key = internal constant [24 x i8] c"\01#Eg\89\AA\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16
@des3_3key_subkeys = internal constant [2 x [8 x i8]] [[8 x i8] c"\9Dt\E793\17\96\C0", [8 x i8] c":\E9\CErf/-\9B"], align 16
@des3_3key_expected_result = internal constant [4 x [8 x i8]] [[8 x i8] c"}\B0\D3}\F96\C5P", [8 x i8] c"0#\9C\F1\F5.f\09", [8 x i8] c"l\9F>\E4\92?k\E2", [8 x i8] c"\99B\9B\D0\BFy\04\E5"], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  %s CMAC subkey #%d: \00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"test execution failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"skipped\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"  %s CMAC #%d: \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"  AES CMAC 128 PRF #%d: \00", align 1
@PRFK = internal constant [18 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\ED\CB", align 16
@PRFKlen = internal constant [3 x i64] [i64 18, i64 16, i64 10], align 16
@PRFM = internal constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@PRFT = internal constant [3 x [16 x i8]] [[16 x i8] c"\84\A3H\A4\A4]#[\AB\FF\FC\0D+M\A0\9A", [16 x i8] c"\98\0A\E8{_L\9CR\14\F5\B6\A8E^L-", [16 x i8] c")\0D\9E\11.\DB\09\EE\14\1F\CFd\C0\B7/="], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_cmac_starts(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %key, i64 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i64, align 8
  %type = alloca i32, align 4
  %cmac_ctx = alloca %struct.mbedtls_cmac_context_t*, align 8
  %retval1 = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keybits, i64* %keybits.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp2 = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %key.addr, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i64, i64* %keybits.addr, align 8
  %conv = trunc i64 %6 to i32
  %call = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %4, i8* noundef %5, i32 noundef %conv, i32 noundef 1) #4
  store i32 %call, i32* %retval1, align 4
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %7 = load i32, i32* %retval1, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info9, align 8
  %type10 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %9, i32 0, i32 0
  %10 = load i32, i32* %type10, align 8
  store i32 %10, i32* %type, align 4
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 36, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8, %if.end8, %if.end8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  store i32 -24832, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %call11 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #5
  %12 = bitcast i8* %call11 to %struct.mbedtls_cmac_context_t*
  store %struct.mbedtls_cmac_context_t* %12, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %13 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %cmp12 = icmp eq %struct.mbedtls_cmac_context_t* %13, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.epilog
  store i32 -24960, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %sw.epilog
  %14 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx16 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 10
  store %struct.mbedtls_cmac_context_t* %14, %struct.mbedtls_cmac_context_t** %cmac_ctx16, align 8
  %16 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %state = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %state, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 16) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %sw.default, %if.then7, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_cmac_update(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %cmac_ctx = alloca %struct.mbedtls_cmac_context_t*, align 8
  %state = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %j = alloca i64, align 8
  %olen = alloca i64, align 8
  %block_size = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %input.addr, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %4, i32 0, i32 10
  %5 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx5, align 8
  %cmp6 = icmp eq %struct.mbedtls_cmac_context_t* %5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 10
  %7 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx7, align 8
  store %struct.mbedtls_cmac_context_t* %7, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info8, align 8
  %block_size9 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %9, i32 0, i32 6
  %10 = load i32, i32* %block_size9, align 8
  %conv = zext i32 %10 to i64
  store i64 %conv, i64* %block_size, align 8
  %11 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx10 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %11, i32 0, i32 10
  %12 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx10, align 8
  %state11 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %state11, i64 0, i64 0
  store i8* %arraydecay, i8** %state, align 8
  %13 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %13, i32 0, i32 2
  %14 = load i64, i64* %unprocessed_len, align 8
  %cmp12 = icmp ugt i64 %14, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %15 = load i64, i64* %ilen.addr, align 8
  %16 = load i64, i64* %block_size, align 8
  %17 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len14 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %17, i32 0, i32 2
  %18 = load i64, i64* %unprocessed_len14, align 8
  %sub = sub i64 %16, %18
  %cmp15 = icmp ugt i64 %15, %sub
  br i1 %cmp15, label %if.then17, label %if.end34

if.then17:                                        ; preds = %land.lhs.true
  %19 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %19, i32 0, i32 1
  %20 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len18 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %20, i32 0, i32 2
  %21 = load i64, i64* %unprocessed_len18, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block, i64 0, i64 %21
  %22 = load i8*, i8** %input.addr, align 8
  %23 = load i64, i64* %block_size, align 8
  %24 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len19 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %24, i32 0, i32 2
  %25 = load i64, i64* %unprocessed_len19, align 8
  %sub20 = sub i64 %23, %25
  %call = call i8* @memcpy(i8* noundef %arrayidx, i8* noundef %22, i64 noundef %sub20) #5
  %26 = load i8*, i8** %state, align 8
  %27 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block21 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %27, i32 0, i32 1
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block21, i64 0, i64 0
  %28 = load i8*, i8** %state, align 8
  %29 = load i64, i64* %block_size, align 8
  call void @cmac_xor_block(i8* noundef %26, i8* noundef %arraydecay22, i8* noundef %28, i64 noundef %29) #4
  %30 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %31 = load i8*, i8** %state, align 8
  %32 = load i64, i64* %block_size, align 8
  %33 = load i8*, i8** %state, align 8
  %call23 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %30, i8* noundef %31, i64 noundef %32, i8* noundef %33, i64* noundef %olen) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then17
  br label %exit

if.end27:                                         ; preds = %if.then17
  %34 = load i64, i64* %block_size, align 8
  %35 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len28 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %35, i32 0, i32 2
  %36 = load i64, i64* %unprocessed_len28, align 8
  %sub29 = sub i64 %34, %36
  %37 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %sub29
  store i8* %add.ptr, i8** %input.addr, align 8
  %38 = load i64, i64* %block_size, align 8
  %39 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len30 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %39, i32 0, i32 2
  %40 = load i64, i64* %unprocessed_len30, align 8
  %sub31 = sub i64 %38, %40
  %41 = load i64, i64* %ilen.addr, align 8
  %sub32 = sub i64 %41, %sub31
  store i64 %sub32, i64* %ilen.addr, align 8
  %42 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len33 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %42, i32 0, i32 2
  store i64 0, i64* %unprocessed_len33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %land.lhs.true, %if.end
  %43 = load i64, i64* %ilen.addr, align 8
  %44 = load i64, i64* %block_size, align 8
  %add = add i64 %43, %44
  %sub35 = sub i64 %add, 1
  %45 = load i64, i64* %block_size, align 8
  %div = udiv i64 %sub35, %45
  store i64 %div, i64* %n, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end34
  %46 = load i64, i64* %j, align 8
  %47 = load i64, i64* %n, align 8
  %cmp36 = icmp ult i64 %46, %47
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i8*, i8** %state, align 8
  %49 = load i8*, i8** %input.addr, align 8
  %50 = load i8*, i8** %state, align 8
  %51 = load i64, i64* %block_size, align 8
  call void @cmac_xor_block(i8* noundef %48, i8* noundef %49, i8* noundef %50, i64 noundef %51) #4
  %52 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %53 = load i8*, i8** %state, align 8
  %54 = load i64, i64* %block_size, align 8
  %55 = load i8*, i8** %state, align 8
  %call38 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %52, i8* noundef %53, i64 noundef %54, i8* noundef %55, i64* noundef %olen) #4
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.body
  br label %exit

if.end42:                                         ; preds = %for.body
  %56 = load i64, i64* %block_size, align 8
  %57 = load i64, i64* %ilen.addr, align 8
  %sub43 = sub i64 %57, %56
  store i64 %sub43, i64* %ilen.addr, align 8
  %58 = load i64, i64* %block_size, align 8
  %59 = load i8*, i8** %input.addr, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %add.ptr44, i8** %input.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %60 = load i64, i64* %j, align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %61 = load i64, i64* %ilen.addr, align 8
  %cmp45 = icmp ugt i64 %61, 0
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %for.end
  %62 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block48 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %62, i32 0, i32 1
  %63 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len49 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %63, i32 0, i32 2
  %64 = load i64, i64* %unprocessed_len49, align 8
  %arrayidx50 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block48, i64 0, i64 %64
  %65 = load i8*, i8** %input.addr, align 8
  %66 = load i64, i64* %ilen.addr, align 8
  %call51 = call i8* @memcpy(i8* noundef %arrayidx50, i8* noundef %65, i64 noundef %66) #5
  %67 = load i64, i64* %ilen.addr, align 8
  %68 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len52 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %68, i32 0, i32 2
  %69 = load i64, i64* %unprocessed_len52, align 8
  %add53 = add i64 %69, %67
  store i64 %add53, i64* %unprocessed_len52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %for.end
  br label %exit

exit:                                             ; preds = %if.end54, %if.then41, %if.then26
  %70 = load i32, i32* %ret, align 4
  store i32 %70, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %71 = load i32, i32* %retval, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmac_xor_block(i8* noundef %output, i8* noundef %input1, i8* noundef %input2, i64 noundef %block_size) #0 {
entry:
  %output.addr = alloca i8*, align 8
  %input1.addr = alloca i8*, align 8
  %input2.addr = alloca i8*, align 8
  %block_size.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %input1, i8** %input1.addr, align 8
  store i8* %input2, i8** %input2.addr, align 8
  store i64 %block_size, i64* %block_size.addr, align 8
  store i64 0, i64* %idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %idx, align 8
  %1 = load i64, i64* %block_size.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %input1.addr, align 8
  %3 = load i64, i64* %idx, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %input2.addr, align 8
  %6 = load i64, i64* %idx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %7 to i32
  %xor = xor i32 %conv, %conv2
  %conv3 = trunc i32 %xor to i8
  %8 = load i8*, i8** %output.addr, align 8
  %9 = load i64, i64* %idx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 %conv3, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %idx, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %idx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_cmac_finish(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %output.addr = alloca i8*, align 8
  %cmac_ctx = alloca %struct.mbedtls_cmac_context_t*, align 8
  %state = alloca i8*, align 8
  %last_block = alloca i8*, align 8
  %K1 = alloca [16 x i8], align 16
  %K2 = alloca [16 x i8], align 16
  %M_last = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  %block_size = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 10
  %4 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx3, align 8
  %cmp4 = icmp eq %struct.mbedtls_cmac_context_t* %4, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %5 = load i8*, i8** %output.addr, align 8
  %cmp6 = icmp eq i8* %5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 10
  %7 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx7, align 8
  store %struct.mbedtls_cmac_context_t* %7, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info8, align 8
  %block_size9 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %9, i32 0, i32 6
  %10 = load i32, i32* %block_size9, align 8
  %conv = zext i32 %10 to i64
  store i64 %conv, i64* %block_size, align 8
  %11 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %state10, i64 0, i64 0
  store i8* %arraydecay, i8** %state, align 8
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay11, i64 noundef 16) #4
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay12, i64 noundef 16) #4
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  %call = call i32 @cmac_generate_subkeys(%struct.mbedtls_cipher_context_t* noundef %12, i8* noundef %arraydecay13, i8* noundef %arraydecay14) #4
  %13 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %13, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block, i64 0, i64 0
  store i8* %arraydecay15, i8** %last_block, align 8
  %14 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %14, i32 0, i32 2
  %15 = load i64, i64* %unprocessed_len, align 8
  %16 = load i64, i64* %block_size, align 8
  %cmp16 = icmp ult i64 %15, %16
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %M_last, i64 0, i64 0
  %17 = load i64, i64* %block_size, align 8
  %18 = load i8*, i8** %last_block, align 8
  %19 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len20 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %19, i32 0, i32 2
  %20 = load i64, i64* %unprocessed_len20, align 8
  call void @cmac_pad(i8* noundef %arraydecay19, i64 noundef %17, i8* noundef %18, i64 noundef %20) #4
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %M_last, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %M_last, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  %21 = load i64, i64* %block_size, align 8
  call void @cmac_xor_block(i8* noundef %arraydecay21, i8* noundef %arraydecay22, i8* noundef %arraydecay23, i64 noundef %21) #4
  br label %if.end26

if.else:                                          ; preds = %if.end
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %M_last, i64 0, i64 0
  %22 = load i8*, i8** %last_block, align 8
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  %23 = load i64, i64* %block_size, align 8
  call void @cmac_xor_block(i8* noundef %arraydecay24, i8* noundef %22, i8* noundef %arraydecay25, i64 noundef %23) #4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then18
  %24 = load i8*, i8** %state, align 8
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %M_last, i64 0, i64 0
  %25 = load i8*, i8** %state, align 8
  %26 = load i64, i64* %block_size, align 8
  call void @cmac_xor_block(i8* noundef %24, i8* noundef %arraydecay27, i8* noundef %25, i64 noundef %26) #4
  %27 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %28 = load i8*, i8** %state, align 8
  %29 = load i64, i64* %block_size, align 8
  %30 = load i8*, i8** %state, align 8
  %call28 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30, i64* noundef %olen) #4
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  br label %exit

if.end32:                                         ; preds = %if.end26
  %31 = load i8*, i8** %output.addr, align 8
  %32 = load i8*, i8** %state, align 8
  %33 = load i64, i64* %block_size, align 8
  %call33 = call i8* @memcpy(i8* noundef %31, i8* noundef %32, i64 noundef %33) #5
  br label %exit

exit:                                             ; preds = %if.end32, %if.then31
  %arraydecay34 = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay34, i64 noundef 16) #4
  %arraydecay35 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay35, i64 noundef 16) #4
  %34 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len36 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %34, i32 0, i32 2
  store i64 0, i64* %unprocessed_len36, align 8
  %35 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block37 = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %35, i32 0, i32 1
  %arraydecay38 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block37, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay38, i64 noundef 16) #4
  %36 = load i8*, i8** %state, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %36, i64 noundef 16) #4
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_generate_subkeys(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %K1, i8* noundef %K2) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %K1.addr = alloca i8*, align 8
  %K2.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %L = alloca [16 x i8], align 16
  %olen = alloca i64, align 8
  %block_size = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %K1, i8** %K1.addr, align 8
  store i8* %K2, i8** %K2.addr, align 8
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %L, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 16) #4
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size1 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 6
  %2 = load i32, i32* %block_size1, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %block_size, align 8
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %L, i64 0, i64 0
  %4 = load i64, i64* %block_size, align 8
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %L, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %3, i8* noundef %arraydecay2, i64 noundef %4, i8* noundef %arraydecay3, i64* noundef %olen) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %K1.addr, align 8
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %L, i64 0, i64 0
  %6 = load i64, i64* %block_size, align 8
  %call6 = call i32 @cmac_multiply_by_u(i8* noundef %5, i8* noundef %arraydecay5, i64 noundef %6) #4
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %exit

if.end10:                                         ; preds = %if.end
  %7 = load i8*, i8** %K2.addr, align 8
  %8 = load i8*, i8** %K1.addr, align 8
  %9 = load i64, i64* %block_size, align 8
  %call11 = call i32 @cmac_multiply_by_u(i8* noundef %7, i8* noundef %8, i64 noundef %9) #4
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  br label %exit

if.end15:                                         ; preds = %if.end10
  br label %exit

exit:                                             ; preds = %if.end15, %if.then14, %if.then9, %if.then
  %arraydecay16 = getelementptr inbounds [16 x i8], [16 x i8]* %L, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay16, i64 noundef 16) #4
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmac_pad(i8* noundef %padded_block, i64 noundef %padded_block_len, i8* noundef %last_block, i64 noundef %last_block_len) #0 {
entry:
  %padded_block.addr = alloca i8*, align 8
  %padded_block_len.addr = alloca i64, align 8
  %last_block.addr = alloca i8*, align 8
  %last_block_len.addr = alloca i64, align 8
  %j = alloca i64, align 8
  store i8* %padded_block, i8** %padded_block.addr, align 8
  store i64 %padded_block_len, i64* %padded_block_len.addr, align 8
  store i8* %last_block, i8** %last_block.addr, align 8
  store i64 %last_block_len, i64* %last_block_len.addr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* %padded_block_len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %3 = load i64, i64* %last_block_len.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %last_block.addr, align 8
  %5 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i8*, i8** %padded_block.addr, align 8
  %8 = load i64, i64* %j, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8 %6, i8* %arrayidx2, align 1
  br label %if.end8

if.else:                                          ; preds = %for.body
  %9 = load i64, i64* %j, align 8
  %10 = load i64, i64* %last_block_len.addr, align 8
  %cmp3 = icmp eq i64 %9, %10
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %11 = load i8*, i8** %padded_block.addr, align 8
  %12 = load i64, i64* %j, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 -128, i8* %arrayidx5, align 1
  br label %if.end

if.else6:                                         ; preds = %if.else
  %13 = load i8*, i8** %padded_block.addr, align 8
  %14 = load i64, i64* %j, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 0, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %15 = load i64, i64* %j, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_cmac_reset(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %cmac_ctx = alloca %struct.mbedtls_cmac_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 10
  %4 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx3, align 8
  %cmp4 = icmp eq %struct.mbedtls_cmac_context_t* %4, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 10
  %6 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx5, align 8
  store %struct.mbedtls_cmac_context_t* %6, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %7 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %7, i32 0, i32 2
  store i64 0, i64* %unprocessed_len, align 8
  %8 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %unprocessed_block = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_block, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 16) #4
  %9 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %state = getelementptr inbounds %struct.mbedtls_cmac_context_t, %struct.mbedtls_cmac_context_t* %9, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %state, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay6, i64 noundef 16) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %cipher_info, i8* noundef %key, i64 noundef %keylen, i8* noundef %input, i64 noundef %ilen, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %cipher_info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_cipher_info_t* %cipher_info, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %input.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %output.addr, align 8
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %ctx) #4
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  %call = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %ctx, %struct.mbedtls_cipher_info_t* noundef %4) #4
  store i32 %call, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %exit

if.end8:                                          ; preds = %if.end
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i64, i64* %keylen.addr, align 8
  %call9 = call i32 @mbedtls_cipher_cmac_starts(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %5, i64 noundef %6) #4
  store i32 %call9, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %ilen.addr, align 8
  %call13 = call i32 @mbedtls_cipher_cmac_update(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %8, i64 noundef %9) #4
  store i32 %call13, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %10, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  %11 = load i8*, i8** %output.addr, align 8
  %call17 = call i32 @mbedtls_cipher_cmac_finish(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %11) #4
  store i32 %call17, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end16, %if.then15, %if.then11, %if.then7
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx) #4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_cmac_prf_128(i8* noundef %key, i64 noundef %key_length, i8* noundef %input, i64 noundef %in_len, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %key_length.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %in_len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %zero_key = alloca [16 x i8], align 16
  %int_key = alloca [16 x i8], align 16
  store i8* %key, i8** %key.addr, align 8
  store i64 %key_length, i64* %key_length.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %in_len, i64* %in_len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %input.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %output.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef 2) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp4 = icmp eq %struct.mbedtls_cipher_info_t* %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -24704, i32* %ret, align 4
  br label %exit

if.end6:                                          ; preds = %if.end
  %4 = load i64, i64* %key_length.addr, align 8
  %cmp7 = icmp eq i64 %4, 16
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %int_key, i64 0, i64 0
  %5 = load i8*, i8** %key.addr, align 8
  %call9 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %5, i64 noundef 16) #5
  br label %if.end18

if.else:                                          ; preds = %if.end6
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %zero_key, i64 0, i64 0
  %call11 = call i8* @memset(i8* noundef %arraydecay10, i32 noundef 0, i64 noundef 16) #5
  %6 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %zero_key, i64 0, i64 0
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load i64, i64* %key_length.addr, align 8
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %int_key, i64 0, i64 0
  %call14 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %6, i8* noundef %arraydecay12, i64 noundef 128, i8* noundef %7, i64 noundef %8, i8* noundef %arraydecay13) #4
  store i32 %call14, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  br label %exit

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  %10 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %int_key, i64 0, i64 0
  %11 = load i8*, i8** %input.addr, align 8
  %12 = load i64, i64* %in_len.addr, align 8
  %13 = load i8*, i8** %output.addr, align 8
  %call20 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %10, i8* noundef %arraydecay19, i64 noundef 128, i8* noundef %11, i64 noundef %12, i8* noundef %13) #4
  store i32 %call20, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end18, %if.then16, %if.then5
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %int_key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay21, i64 noundef 16) #4
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cmac_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %verbose.addr, align 4
  %call = call i32 @cmac_test_subkeys(i32 noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aes_128_key, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([2 x [16 x i8]], [2 x [16 x i8]]* @aes_128_subkeys, i32 0, i32 0, i32 0), i32 noundef 2, i32 noundef 16, i32 noundef 4) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %verbose.addr, align 4
  %call1 = call i32 @cmac_test_wth_cipher(i32 noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aes_128_key, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_message, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @aes_message_lengths, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x [16 x i8]], [4 x [16 x i8]]* @aes_128_expected_result, i32 0, i32 0, i32 0), i32 noundef 2, i32 noundef 16, i32 noundef 4) #4
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %verbose.addr, align 4
  %call5 = call i32 @cmac_test_subkeys(i32 noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @aes_192_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([2 x [16 x i8]], [2 x [16 x i8]]* @aes_192_subkeys, i32 0, i32 0, i32 0), i32 noundef 3, i32 noundef 16, i32 noundef 4) #4
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %6 = load i32, i32* %verbose.addr, align 4
  %call9 = call i32 @cmac_test_wth_cipher(i32 noundef %6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @aes_192_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_message, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @aes_message_lengths, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x [16 x i8]], [4 x [16 x i8]]* @aes_192_expected_result, i32 0, i32 0, i32 0), i32 noundef 3, i32 noundef 16, i32 noundef 4) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %8 = load i32, i32* %verbose.addr, align 4
  %call13 = call i32 @cmac_test_subkeys(i32 noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aes_256_key, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([2 x [16 x i8]], [2 x [16 x i8]]* @aes_256_subkeys, i32 0, i32 0, i32 0), i32 noundef 4, i32 noundef 16, i32 noundef 4) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %10 = load i32, i32* %verbose.addr, align 4
  %call17 = call i32 @cmac_test_wth_cipher(i32 noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aes_256_key, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_message, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @aes_message_lengths, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x [16 x i8]], [4 x [16 x i8]]* @aes_256_expected_result, i32 0, i32 0, i32 0), i32 noundef 4, i32 noundef 16, i32 noundef 4) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %12 = load i32, i32* %verbose.addr, align 4
  %call21 = call i32 @cmac_test_subkeys(i32 noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_2key_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([2 x [8 x i8]], [2 x [8 x i8]]* @des3_2key_subkeys, i32 0, i32 0, i32 0), i32 noundef 36, i32 noundef 8, i32 noundef 4) #4
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %14 = load i32, i32* %verbose.addr, align 4
  %call25 = call i32 @cmac_test_wth_cipher(i32 noundef %14, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_2key_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_message, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @des3_message_lengths, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @des3_2key_expected_result, i32 0, i32 0, i32 0), i32 noundef 36, i32 noundef 8, i32 noundef 4) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %16 = load i32, i32* %verbose.addr, align 4
  %call29 = call i32 @cmac_test_subkeys(i32 noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_3key_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([2 x [8 x i8]], [2 x [8 x i8]]* @des3_3key_subkeys, i32 0, i32 0, i32 0), i32 noundef 36, i32 noundef 8, i32 noundef 4) #4
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %18 = load i32, i32* %verbose.addr, align 4
  %call33 = call i32 @cmac_test_wth_cipher(i32 noundef %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_3key_key, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_message, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @des3_message_lengths, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @des3_3key_expected_result, i32 0, i32 0, i32 0), i32 noundef 36, i32 noundef 8, i32 noundef 4) #4
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %20 = load i32, i32* %verbose.addr, align 4
  %call37 = call i32 @test_aes128_cmac_prf(i32 noundef %20) #4
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp41 = icmp ne i32 %22, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_test_subkeys(i32 noundef %verbose, i8* noundef %testname, i8* noundef %key, i32 noundef %keybits, i8* noundef %subkeys, i32 noundef %cipher_type, i32 noundef %block_size, i32 noundef %num_tests) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %testname.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %subkeys.addr = alloca i8*, align 8
  %cipher_type.addr = alloca i32, align 4
  %block_size.addr = alloca i32, align 4
  %num_tests.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %K1 = alloca [16 x i8], align 16
  %K2 = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i8* %testname, i8** %testname.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i8* %subkeys, i8** %subkeys.addr, align 8
  store i32 %cipher_type, i32* %cipher_type.addr, align 4
  store i32 %block_size, i32* %block_size.addr, align 4
  store i32 %num_tests, i32* %num_tests.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %cipher_type.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %0) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24704, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_tests.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  %5 = load i8*, i8** %testname.addr, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* noundef %5, i32 noundef %add) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %ctx) #4
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call6 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %ctx, %struct.mbedtls_cipher_info_t* noundef %7) #4
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end5
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %9 = load i8*, i8** %key.addr, align 8
  %10 = load i32, i32* %keybits.addr, align 4
  %call14 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %9, i32 noundef %10, i32 noundef 1) #4
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end13
  %11 = load i32, i32* %ret, align 4
  %cmp17 = icmp eq i32 %11, -114
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %12 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %12, -24704
  br i1 %cmp18, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then16
  %13 = load i32, i32* %cipher_type.addr, align 4
  %cmp19 = icmp eq i32 %13, 3
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %verbose.addr, align 4
  %cmp21 = icmp ne i32 %14, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then20
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20
  br label %next_test

if.end25:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load i32, i32* %verbose.addr, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  br label %cleanup

if.end30:                                         ; preds = %if.end13
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  %call32 = call i32 @cmac_generate_subkeys(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %arraydecay, i8* noundef %arraydecay31) #4
  store i32 %call32, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %16, 0
  br i1 %cmp33, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end30
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp35 = icmp ne i32 %17, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then34
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then34
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %K1, i64 0, i64 0
  %18 = load i8*, i8** %subkeys.addr, align 8
  %19 = load i32, i32* %block_size.addr, align 4
  %conv = sext i32 %19 to i64
  %call41 = call i32 @memcmp(i8* noundef %arraydecay40, i8* noundef %18, i64 noundef %conv) #6
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then50, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end39
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %K2, i64 0, i64 0
  %20 = load i8*, i8** %subkeys.addr, align 8
  %21 = load i32, i32* %block_size.addr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %22 = load i32, i32* %block_size.addr, align 4
  %conv46 = sext i32 %22 to i64
  %call47 = call i32 @memcmp(i8* noundef %arraydecay45, i8* noundef %arrayidx, i64 noundef %conv46) #6
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %lor.lhs.false44, %if.end39
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp51 = icmp ne i32 %23, 0
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then50
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then50
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false44
  %24 = load i32, i32* %verbose.addr, align 4
  %cmp57 = icmp ne i32 %24, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56
  br label %next_test

next_test:                                        ; preds = %if.end61, %if.end24
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx) #4
  br label %for.inc

for.inc:                                          ; preds = %next_test
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ret, align 4
  br label %exit

cleanup:                                          ; preds = %if.end55, %if.end38, %if.end29, %if.end12
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx) #4
  br label %exit

exit:                                             ; preds = %cleanup, %for.end
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_test_wth_cipher(i32 noundef %verbose, i8* noundef %testname, i8* noundef %key, i32 noundef %keybits, i8* noundef %messages, i32* noundef %message_lengths, i8* noundef %expected_result, i32 noundef %cipher_type, i32 noundef %block_size, i32 noundef %num_tests) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %testname.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %messages.addr = alloca i8*, align 8
  %message_lengths.addr = alloca i32*, align 8
  %expected_result.addr = alloca i8*, align 8
  %cipher_type.addr = alloca i32, align 4
  %block_size.addr = alloca i32, align 4
  %num_tests.addr = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %output = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i8* %testname, i8** %testname.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i8* %messages, i8** %messages.addr, align 8
  store i32* %message_lengths, i32** %message_lengths.addr, align 8
  store i8* %expected_result, i8** %expected_result.addr, align 8
  store i32 %cipher_type, i32* %cipher_type.addr, align 4
  store i32 %block_size, i32* %block_size.addr, align 4
  store i32 %num_tests, i32* %num_tests.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %cipher_type.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %0) #4
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24704, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_tests.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  %5 = load i8*, i8** %testname.addr, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* noundef %5, i32 noundef %add) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %9 = load i32, i32* %keybits.addr, align 4
  %conv = sext i32 %9 to i64
  %10 = load i8*, i8** %messages.addr, align 8
  %11 = load i32*, i32** %message_lengths.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %conv6 = zext i32 %13 to i64
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %output, i64 0, i64 0
  %call7 = call i32 @mbedtls_cipher_cmac(%struct.mbedtls_cipher_info_t* noundef %7, i8* noundef %8, i64 noundef %conv, i8* noundef %10, i64 noundef %conv6, i8* noundef %arraydecay) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end32

if.then10:                                        ; preds = %if.end5
  %14 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %14, -114
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %15 = load i32, i32* %ret, align 4
  %cmp13 = icmp eq i32 %15, -24704
  br i1 %cmp13, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then10
  %16 = load i32, i32* %cipher_type.addr, align 4
  %cmp15 = icmp eq i32 %16, 3
  br i1 %cmp15, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %17 = load i32, i32* %cipher_type.addr, align 4
  %cmp18 = icmp eq i32 %17, 36
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %lor.lhs.false17, %land.lhs.true
  %18 = load i32, i32* %verbose.addr, align 4
  %cmp21 = icmp ne i32 %18, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false17, %lor.lhs.false
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp27 = icmp ne i32 %19, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  br label %exit

if.end32:                                         ; preds = %if.end5
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %output, i64 0, i64 0
  %20 = load i8*, i8** %expected_result.addr, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %block_size.addr, align 4
  %mul = mul nsw i32 %21, %22
  %idxprom34 = sext i32 %mul to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %20, i64 %idxprom34
  %23 = load i32, i32* %block_size.addr, align 4
  %conv36 = sext i32 %23 to i64
  %call37 = call i32 @memcmp(i8* noundef %arraydecay33, i8* noundef %arrayidx35, i64 noundef %conv36) #6
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end32
  %24 = load i32, i32* %verbose.addr, align 4
  %cmp41 = icmp ne i32 %24, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then40
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then40
  br label %exit

if.end46:                                         ; preds = %if.end32
  %25 = load i32, i32* %verbose.addr, align 4
  %cmp47 = icmp ne i32 %25, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.end25
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.end45, %if.end31, %if.then
  %27 = load i32, i32* %ret, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_aes128_cmac_prf(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %output = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 noundef %1) #4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* @PRFKlen, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %output, i64 0, i64 0
  %call1 = call i32 @mbedtls_aes_cmac_prf_128(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @PRFK, i64 0, i64 0), i64 noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @PRFM, i64 0, i64 0), i64 noundef 20, i8* noundef %arraydecay) #4
  store i32 %call1, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %output, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @PRFT, i64 0, i64 %idxprom4
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx5, i64 0, i64 0
  %call7 = call i32 @memcmp(i8* noundef %arraydecay3, i8* noundef %arraydecay6, i64 noundef 16) #6
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %verbose.addr, align 4
  %cmp9 = icmp ne i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp12 = icmp ne i32 %8, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_multiply_by_u(i8* noundef %output, i8* noundef %input, i64 noundef %blocksize) #0 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %blocksize.addr = alloca i64, align 8
  %R_128 = alloca i8, align 1
  %R_64 = alloca i8, align 1
  %R_n = alloca i8, align 1
  %mask = alloca i8, align 1
  %overflow = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %blocksize, i64* %blocksize.addr, align 8
  store i8 -121, i8* %R_128, align 1
  store i8 27, i8* %R_64, align 1
  store i8 0, i8* %overflow, align 1
  %0 = load i64, i64* %blocksize.addr, align 8
  %cmp = icmp eq i64 %0, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 -121, i8* %R_n, align 1
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %blocksize.addr, align 8
  %cmp1 = icmp eq i64 %1, 8
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8 27, i8* %R_n, align 1
  br label %if.end

if.else3:                                         ; preds = %if.else
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %2 = load i64, i64* %blocksize.addr, align 8
  %conv = trunc i64 %2 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %3 = load i32, i32* %i, align 4
  %cmp5 = icmp sge i32 %3, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %6 to i32
  %shl = shl i32 %conv7, 1
  %7 = load i8, i8* %overflow, align 1
  %conv8 = zext i8 %7 to i32
  %or = or i32 %shl, %conv8
  %conv9 = trunc i32 %or to i8
  %8 = load i8*, i8** %output.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %shr = ashr i32 %conv14, 7
  %conv15 = trunc i32 %shr to i8
  store i8 %conv15, i8* %overflow, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %shr18 = ashr i32 %conv17, 7
  %sub19 = sub nsw i32 0, %shr18
  %conv20 = trunc i32 %sub19 to i8
  store i8 %conv20, i8* %mask, align 1
  %16 = load i8, i8* %R_n, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i8, i8* %mask, align 1
  %conv22 = zext i8 %17 to i32
  %and = and i32 %conv21, %conv22
  %18 = load i8*, i8** %output.addr, align 8
  %19 = load i64, i64* %blocksize.addr, align 8
  %sub23 = sub i64 %19, 1
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 %sub23
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %xor = xor i32 %conv25, %and
  %conv26 = trunc i32 %xor to i8
  store i8 %conv26, i8* %arrayidx24, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else3
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
