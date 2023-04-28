; ModuleID = 'ccm.c'
source_filename = "ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ccm_context = type { [16 x i8], [16 x i8], %struct.mbedtls_cipher_context_t, i64, i64, i64, i64, i8, i8, i32 }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque

@key_test_data = internal constant [16 x i8] c"@ABCDEFGHIJKLMNO", align 16
@.str = private unnamed_addr constant [20 x i8] c"  CCM: setup failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  CCM-AES #%u: \00", align 1
@msg_test_data = internal constant [24 x i8] c" !\22#$%&'()*+,-./01234567", align 16
@msg_len_test_data = internal constant [3 x i64] [i64 4, i64 16, i64 24], align 16
@iv_test_data = internal constant [12 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B", align 1
@iv_len_test_data = internal constant [3 x i64] [i64 7, i64 8, i64 12], align 16
@ad_test_data = internal constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@add_len_test_data = internal constant [3 x i64] [i64 8, i64 16, i64 20], align 16
@tag_len_test_data = internal constant [3 x i64] [i64 4, i64 6, i64 8], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@res_test_data = internal constant <{ <{ [8 x i8], [24 x i8] }>, <{ [22 x i8], [10 x i8] }>, [32 x i8] }> <{ <{ [8 x i8], [24 x i8] }> <{ [8 x i8] c"qb\01[M\AC%]", [24 x i8] zeroinitializer }>, <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\D2\A1\F0\E0Q\EA_b\08\1Aw\92\07=Y=\1F\C6O\BF\AC\CD", [10 x i8] zeroinitializer }>, [32 x i8] c"\E3\B2\01\A9\F5\B7\1Az\9B\1C\EA\EC\CD\97\E7\0Bav\AA\D9\A4B\8A\A5HC\92\FB\C1\B0\99Q" }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_ccm_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 168) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %ctx, i32 noundef %cipher, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %cipher.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i32 %cipher, i32* %cipher.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %cipher.addr, align 4
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef %0, i32 noundef %1, i32 noundef 1) #6
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %block_size, align 8
  %cmp1 = icmp ne i32 %4, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -13, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %5, i32 0, i32 2
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #6
  %6 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx4 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %6, i32 0, i32 2
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call5 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx4, %struct.mbedtls_cipher_info_t* noundef %7) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end3
  %9 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx9 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %9, i32 0, i32 2
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load i32, i32* %keybits.addr, align 4
  %call10 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx9, i8* noundef %10, i32 noundef %11, i32 noundef 1) #6
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then7, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ccm_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %1, i32 0, i32 2
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #6
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_ccm_context* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 168) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef %ctx, i32 noundef %mode, i8* noundef %iv, i64 noundef %iv_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %mode.addr = alloca i32, align 4
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  %0 = load i64, i64* %iv_len.addr, align 8
  %cmp = icmp ult i64 %0, 7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %iv_len.addr, align 8
  %cmp1 = icmp ugt i64 %1, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %mode.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode2 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %3, i32 0, i32 8
  store i8 %conv, i8* %mode2, align 1
  %4 = load i64, i64* %iv_len.addr, align 8
  %conv3 = trunc i64 %4 to i8
  %conv4 = zext i8 %conv3 to i32
  %sub = sub nsw i32 15, %conv4
  %conv5 = trunc i32 %sub to i8
  %5 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %5, i32 0, i32 7
  store i8 %conv5, i8* %q, align 8
  %6 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ctr, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 16) #5
  %7 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q6 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %7, i32 0, i32 7
  %8 = load i8, i8* %q6, align 8
  %conv7 = zext i8 %8 to i32
  %sub8 = sub nsw i32 %conv7, 1
  %conv9 = trunc i32 %sub8 to i8
  %9 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr10 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %ctr10, i64 0, i64 0
  store i8 %conv9, i8* %arrayidx, align 8
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr11 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %10, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %ctr11, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %11 = load i8*, i8** %iv.addr, align 8
  %12 = load i64, i64* %iv_len.addr, align 8
  %call13 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %11, i64 noundef %12) #5
  %13 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr14 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %13, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %ctr14, i64 0, i64 0
  %add.ptr16 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %14 = load i64, i64* %iv_len.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 %14
  %15 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q18 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %15, i32 0, i32 7
  %16 = load i8, i8* %q18, align 8
  %conv19 = zext i8 %16 to i64
  %call20 = call i8* @memset(i8* noundef %add.ptr17, i32 noundef 0, i64 noundef %conv19) #5
  %17 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr21 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %ctr21, i64 0, i64 15
  store i8 1, i8* %arrayidx22, align 1
  %18 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %18, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %add.ptr24 = getelementptr inbounds i8, i8* %arraydecay23, i64 1
  %19 = load i8*, i8** %iv.addr, align 8
  %20 = load i64, i64* %iv_len.addr, align 8
  %call25 = call i8* @memcpy(i8* noundef %add.ptr24, i8* noundef %19, i64 noundef %20) #5
  %21 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %21, i32 0, i32 9
  %22 = load i32, i32* %state, align 4
  %or = or i32 %22, 1
  store i32 %or, i32* %state, align 4
  %23 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %call26 = call i32 @ccm_calculate_first_block_if_ready(%struct.mbedtls_ccm_context* noundef %23) #6
  store i32 %call26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_calculate_first_block_if_ready(%struct.mbedtls_ccm_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  %len_left = alloca i64, align 8
  %olen = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %0, i32 0, i32 9
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %2, i32 0, i32 9
  %3 = load i32, i32* %state1, align 4
  %and2 = and i32 %3, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %tag_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %4, i32 0, i32 5
  %5 = load i64, i64* %tag_len, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %6, i32 0, i32 8
  %7 = load i8, i8* %mode, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 3
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then4
  %8 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode8 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %8, i32 0, i32 8
  %9 = load i8, i8* %mode8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false7, %if.then4
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %10, i32 0, i32 3
  store i64 0, i64* %plaintext_len, align 8
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false7
  store i32 -13, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %11 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %11, i32 0, i32 4
  %12 = load i64, i64* %add_len, align 8
  %cmp15 = icmp ugt i64 %12, 0
  %conv16 = zext i1 %cmp15 to i32
  %shl = shl i32 %conv16, 6
  %13 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %14 = load i8, i8* %arrayidx, align 8
  %conv17 = zext i8 %14 to i32
  %or = or i32 %conv17, %shl
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %arrayidx, align 8
  %15 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %tag_len19 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %15, i32 0, i32 5
  %16 = load i64, i64* %tag_len19, align 8
  %sub = sub i64 %16, 2
  %div = udiv i64 %sub, 2
  %shl20 = shl i64 %div, 3
  %17 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y21 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %17, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %y21, i64 0, i64 0
  %18 = load i8, i8* %arrayidx22, align 8
  %conv23 = zext i8 %18 to i64
  %or24 = or i64 %conv23, %shl20
  %conv25 = trunc i64 %or24 to i8
  store i8 %conv25, i8* %arrayidx22, align 8
  %19 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %19, i32 0, i32 7
  %20 = load i8, i8* %q, align 8
  %conv26 = zext i8 %20 to i32
  %sub27 = sub nsw i32 %conv26, 1
  %21 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y28 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %21, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [16 x i8], [16 x i8]* %y28, i64 0, i64 0
  %22 = load i8, i8* %arrayidx29, align 8
  %conv30 = zext i8 %22 to i32
  %or31 = or i32 %conv30, %sub27
  %conv32 = trunc i32 %or31 to i8
  store i8 %conv32, i8* %arrayidx29, align 8
  store i8 0, i8* %i, align 1
  %23 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len33 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %23, i32 0, i32 3
  %24 = load i64, i64* %plaintext_len33, align 8
  store i64 %24, i64* %len_left, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %25 = load i8, i8* %i, align 1
  %conv34 = zext i8 %25 to i32
  %26 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q35 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %26, i32 0, i32 7
  %27 = load i8, i8* %q35, align 8
  %conv36 = zext i8 %27 to i32
  %cmp37 = icmp slt i32 %conv34, %conv36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %len_left, align 8
  %and39 = and i64 %28, 255
  %conv40 = trunc i64 %and39 to i8
  %29 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y41 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %29, i32 0, i32 0
  %30 = load i8, i8* %i, align 1
  %conv42 = zext i8 %30 to i32
  %sub43 = sub nsw i32 15, %conv42
  %idxprom = sext i32 %sub43 to i64
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %y41, i64 0, i64 %idxprom
  store i8 %conv40, i8* %arrayidx44, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i8, i8* %i, align 1
  %inc = add i8 %31, 1
  store i8 %inc, i8* %i, align 1
  %32 = load i64, i64* %len_left, align 8
  %shr = lshr i64 %32, 8
  store i64 %shr, i64* %len_left, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %33 = load i64, i64* %len_left, align 8
  %cmp45 = icmp ugt i64 %33, 0
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %for.end
  %34 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state48 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %34, i32 0, i32 9
  %35 = load i32, i32* %state48, align 4
  %or49 = or i32 %35, 16
  store i32 %or49, i32* %state48, align 4
  store i32 -13, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %for.end
  %36 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %36, i32 0, i32 2
  %37 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y51 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %37, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y51, i64 0, i64 0
  %38 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y52 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %38, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %y52, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay, i64 noundef 16, i8* noundef %arraydecay53, i64* noundef %olen) #6
  store i32 %call, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call, 0
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end50
  %39 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state57 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %39, i32 0, i32 9
  %40 = load i32, i32* %state57, align 4
  %or58 = or i32 %40, 16
  store i32 %or58, i32* %state57, align 4
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end50
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then56, %if.then47, %if.else, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %total_ad_len, i64 noundef %plaintext_len, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %total_ad_len.addr = alloca i64, align 8
  %plaintext_len.addr = alloca i64, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %total_ad_len, i64* %total_ad_len.addr, align 8
  store i64 %plaintext_len, i64* %plaintext_len.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load i64, i64* %tag_len.addr, align 8
  %cmp = icmp eq i64 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %tag_len.addr, align 8
  %cmp1 = icmp ugt i64 %1, 16
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %tag_len.addr, align 8
  %rem = urem i64 %2, 2
  %cmp3 = icmp ne i64 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i64, i64* %total_ad_len.addr, align 8
  %cmp4 = icmp uge i64 %3, 65280
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -13, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load i64, i64* %plaintext_len.addr, align 8
  %5 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len7 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %5, i32 0, i32 3
  store i64 %4, i64* %plaintext_len7, align 8
  %6 = load i64, i64* %total_ad_len.addr, align 8
  %7 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %7, i32 0, i32 4
  store i64 %6, i64* %add_len, align 8
  %8 = load i64, i64* %tag_len.addr, align 8
  %9 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %tag_len8 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %9, i32 0, i32 5
  store i64 %8, i64* %tag_len8, align 8
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %10, i32 0, i32 6
  store i64 0, i64* %processed, align 8
  %11 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %11, i32 0, i32 9
  %12 = load i32, i32* %state, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %state, align 4
  %13 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %call = call i32 @ccm_calculate_first_block_if_ready(%struct.mbedtls_ccm_context* noundef %13) #6
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_update_ad(%struct.mbedtls_ccm_context* noundef %ctx, i8* noundef %add, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  %olen = alloca i64, align 8
  %use_len = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %0, i32 0, i32 9
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %add_len.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then1, label %if.end87

if.then1:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %3, i32 0, i32 9
  %4 = load i32, i32* %state2, align 4
  %and3 = and i32 %4, 8
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then1
  store i32 -13, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then1
  %5 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %5, i32 0, i32 9
  %6 = load i32, i32* %state7, align 4
  %and8 = and i32 %6, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end6
  %7 = load i64, i64* %add_len.addr, align 8
  %8 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len11 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %8, i32 0, i32 4
  %9 = load i64, i64* %add_len11, align 8
  %cmp12 = icmp ugt i64 %7, %9
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 -13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len15 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %10, i32 0, i32 4
  %11 = load i64, i64* %add_len15, align 8
  %shr = lshr i64 %11, 8
  %and16 = and i64 %shr, 255
  %conv = trunc i64 %and16 to i8
  %conv17 = zext i8 %conv to i32
  %12 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %13 = load i8, i8* %arrayidx, align 8
  %conv18 = zext i8 %13 to i32
  %xor = xor i32 %conv18, %conv17
  %conv19 = trunc i32 %xor to i8
  store i8 %conv19, i8* %arrayidx, align 8
  %14 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len20 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %14, i32 0, i32 4
  %15 = load i64, i64* %add_len20, align 8
  %and21 = and i64 %15, 255
  %conv22 = trunc i64 %and21 to i8
  %conv23 = zext i8 %conv22 to i32
  %16 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y24 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %16, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [16 x i8], [16 x i8]* %y24, i64 0, i64 1
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %xor27 = xor i32 %conv26, %conv23
  %conv28 = trunc i32 %xor27 to i8
  store i8 %conv28, i8* %arrayidx25, align 1
  %18 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state29 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %18, i32 0, i32 9
  %19 = load i32, i32* %state29, align 4
  %or = or i32 %19, 4
  store i32 %or, i32* %state29, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end6
  %20 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %20, i32 0, i32 6
  %21 = load i64, i64* %processed, align 8
  %22 = load i64, i64* %add_len.addr, align 8
  %add30 = add i64 %21, %22
  %23 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len31 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %23, i32 0, i32 4
  %24 = load i64, i64* %add_len31, align 8
  %cmp32 = icmp ugt i64 %add30, %24
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  store i32 -13, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end14
  br label %while.cond

while.cond:                                       ; preds = %if.end77, %if.end36
  %25 = load i64, i64* %add_len.addr, align 8
  %cmp37 = icmp ugt i64 %25, 0
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed39 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %26, i32 0, i32 6
  %27 = load i64, i64* %processed39, align 8
  %add40 = add i64 %27, 2
  %rem = urem i64 %add40, 16
  store i64 %rem, i64* %offset, align 8
  %28 = load i64, i64* %offset, align 8
  %sub = sub i64 16, %28
  store i64 %sub, i64* %use_len, align 8
  %29 = load i64, i64* %use_len, align 8
  %30 = load i64, i64* %add_len.addr, align 8
  %cmp41 = icmp ugt i64 %29, %30
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.body
  %31 = load i64, i64* %add_len.addr, align 8
  store i64 %31, i64* %use_len, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %while.body
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %32 = load i8, i8* %i, align 1
  %conv45 = zext i8 %32 to i64
  %33 = load i64, i64* %use_len, align 8
  %cmp46 = icmp ult i64 %conv45, %33
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %add.addr, align 8
  %35 = load i8, i8* %i, align 1
  %idxprom = zext i8 %35 to i64
  %arrayidx48 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %36 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %36 to i32
  %37 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y50 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %37, i32 0, i32 0
  %38 = load i8, i8* %i, align 1
  %conv51 = zext i8 %38 to i64
  %39 = load i64, i64* %offset, align 8
  %add52 = add i64 %conv51, %39
  %arrayidx53 = getelementptr inbounds [16 x i8], [16 x i8]* %y50, i64 0, i64 %add52
  %40 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %40 to i32
  %xor55 = xor i32 %conv54, %conv49
  %conv56 = trunc i32 %xor55 to i8
  store i8 %conv56, i8* %arrayidx53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i8, i8* %i, align 1
  %inc = add i8 %41, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load i64, i64* %use_len, align 8
  %43 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed57 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %43, i32 0, i32 6
  %44 = load i64, i64* %processed57, align 8
  %add58 = add i64 %44, %42
  store i64 %add58, i64* %processed57, align 8
  %45 = load i64, i64* %use_len, align 8
  %46 = load i64, i64* %add_len.addr, align 8
  %sub59 = sub i64 %46, %45
  store i64 %sub59, i64* %add_len.addr, align 8
  %47 = load i64, i64* %use_len, align 8
  %48 = load i8*, i8** %add.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %add.ptr, i8** %add.addr, align 8
  %49 = load i64, i64* %use_len, align 8
  %50 = load i64, i64* %offset, align 8
  %add60 = add i64 %49, %50
  %cmp61 = icmp eq i64 %add60, 16
  br i1 %cmp61, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %51 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed63 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %51, i32 0, i32 6
  %52 = load i64, i64* %processed63, align 8
  %53 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len64 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %53, i32 0, i32 4
  %54 = load i64, i64* %add_len64, align 8
  %cmp65 = icmp eq i64 %52, %54
  br i1 %cmp65, label %if.then67, label %if.end77

if.then67:                                        ; preds = %lor.lhs.false, %for.end
  %55 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %55, i32 0, i32 2
  %56 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y68 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %56, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y68, i64 0, i64 0
  %57 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y69 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %57, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [16 x i8], [16 x i8]* %y69, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay, i64 noundef 16, i8* noundef %arraydecay70, i64* noundef %olen) #6
  store i32 %call, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call, 0
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.then67
  %58 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state74 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %58, i32 0, i32 9
  %59 = load i32, i32* %state74, align 4
  %or75 = or i32 %59, 16
  store i32 %or75, i32* %state74, align 4
  %60 = load i32, i32* %ret, align 4
  store i32 %60, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.then67
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %lor.lhs.false
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %61 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed78 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %61, i32 0, i32 6
  %62 = load i64, i64* %processed78, align 8
  %63 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len79 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %63, i32 0, i32 4
  %64 = load i64, i64* %add_len79, align 8
  %cmp80 = icmp eq i64 %62, %64
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %while.end
  %65 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state83 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %65, i32 0, i32 9
  %66 = load i32, i32* %state83, align 4
  %or84 = or i32 %66, 8
  store i32 %or84, i32* %state83, align 4
  %67 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed85 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %67, i32 0, i32 6
  store i64 0, i64* %processed85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %while.end
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then73, %if.then34, %if.then13, %if.then5, %if.then
  %68 = load i32, i32* %retval, align 4
  ret i32 %68
}

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef %ctx, i8* noundef %input, i64 noundef %input_len, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  %use_len = alloca i64, align 8
  %offset = alloca i64, align 8
  %olen = alloca i64, align 8
  %local_output = alloca [16 x i8], align 16
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_len, i64** %output_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %0, i32 0, i32 9
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %tag_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %2, i32 0, i32 5
  %3 = load i64, i64* %tag_len, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %4, i32 0, i32 6
  %5 = load i64, i64* %processed, align 8
  %6 = load i64, i64* %input_len.addr, align 8
  %add = add i64 %5, %6
  %7 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %7, i32 0, i32 3
  %8 = load i64, i64* %plaintext_len, align 8
  %cmp1 = icmp ugt i64 %add, %8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  store i32 -13, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %output_size.addr, align 8
  %10 = load i64, i64* %input_len.addr, align 8
  %cmp4 = icmp ult i64 %9, %10
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -13, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %11 = load i64, i64* %input_len.addr, align 8
  %12 = load i64*, i64** %output_len.addr, align 8
  store i64 %11, i64* %12, align 8
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end142, %if.end6
  %13 = load i64, i64* %input_len.addr, align 8
  %cmp7 = icmp ugt i64 %13, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed8 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %14, i32 0, i32 6
  %15 = load i64, i64* %processed8, align 8
  %rem = urem i64 %15, 16
  store i64 %rem, i64* %offset, align 8
  %16 = load i64, i64* %offset, align 8
  %sub = sub i64 16, %16
  store i64 %sub, i64* %use_len, align 8
  %17 = load i64, i64* %use_len, align 8
  %18 = load i64, i64* %input_len.addr, align 8
  %cmp9 = icmp ugt i64 %17, %18
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  %19 = load i64, i64* %input_len.addr, align 8
  store i64 %19, i64* %use_len, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.body
  %20 = load i64, i64* %use_len, align 8
  %21 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed12 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %21, i32 0, i32 6
  %22 = load i64, i64* %processed12, align 8
  %add13 = add i64 %22, %20
  store i64 %add13, i64* %processed12, align 8
  %23 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %23, i32 0, i32 8
  %24 = load i8, i8* %mode, align 1
  %conv = zext i8 %24 to i32
  %cmp14 = icmp eq i32 %conv, 1
  br i1 %cmp14, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %25 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode16 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %25, i32 0, i32 8
  %26 = load i8, i8* %mode16, align 1
  %conv17 = zext i8 %26 to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %if.then20, label %if.end53

if.then20:                                        ; preds = %lor.lhs.false, %if.end11
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %27 = load i8, i8* %i, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, i64* %use_len, align 8
  %cmp22 = icmp ult i64 %conv21, %28
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %input.addr, align 8
  %30 = load i8, i8* %i, align 1
  %idxprom = zext i8 %30 to i64
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv24 = zext i8 %31 to i32
  %32 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %32, i32 0, i32 0
  %33 = load i8, i8* %i, align 1
  %conv25 = zext i8 %33 to i64
  %34 = load i64, i64* %offset, align 8
  %add26 = add i64 %conv25, %34
  %arrayidx27 = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 %add26
  %35 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %35 to i32
  %xor = xor i32 %conv28, %conv24
  %conv29 = trunc i32 %xor to i8
  store i8 %conv29, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i8, i8* %i, align 1
  %inc = add i8 %36, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %37 = load i64, i64* %use_len, align 8
  %38 = load i64, i64* %offset, align 8
  %add30 = add i64 %37, %38
  %cmp31 = icmp eq i64 %add30, 16
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %for.end
  %39 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed34 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %39, i32 0, i32 6
  %40 = load i64, i64* %processed34, align 8
  %41 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len35 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %41, i32 0, i32 3
  %42 = load i64, i64* %plaintext_len35, align 8
  %cmp36 = icmp eq i64 %40, %42
  br i1 %cmp36, label %if.then38, label %if.end47

if.then38:                                        ; preds = %lor.lhs.false33, %for.end
  %43 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %43, i32 0, i32 2
  %44 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y39 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %44, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y39, i64 0, i64 0
  %45 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y40 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %45, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [16 x i8], [16 x i8]* %y40, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay, i64 noundef 16, i8* noundef %arraydecay41, i64* noundef %olen) #6
  store i32 %call, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call, 0
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then38
  %46 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state45 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %46, i32 0, i32 9
  %47 = load i32, i32* %state45, align 4
  %or = or i32 %47, 16
  store i32 %or, i32* %state45, align 4
  br label %exit

if.end46:                                         ; preds = %if.then38
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %lor.lhs.false33
  %48 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %49 = load i64, i64* %offset, align 8
  %50 = load i64, i64* %use_len, align 8
  %51 = load i8*, i8** %input.addr, align 8
  %52 = load i8*, i8** %output.addr, align 8
  %call48 = call i32 @mbedtls_ccm_crypt(%struct.mbedtls_ccm_context* noundef %48, i64 noundef %49, i64 noundef %50, i8* noundef %51, i8* noundef %52) #6
  store i32 %call48, i32* %ret, align 4
  %53 = load i32, i32* %ret, align 4
  %cmp49 = icmp ne i32 %53, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  br label %exit

if.end52:                                         ; preds = %if.end47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %lor.lhs.false
  %54 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode54 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %54, i32 0, i32 8
  %55 = load i8, i8* %mode54, align 1
  %conv55 = zext i8 %55 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %if.then63, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.end53
  %56 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %mode59 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %56, i32 0, i32 8
  %57 = load i8, i8* %mode59, align 1
  %conv60 = zext i8 %57 to i32
  %cmp61 = icmp eq i32 %conv60, 2
  br i1 %cmp61, label %if.then63, label %if.end113

if.then63:                                        ; preds = %lor.lhs.false58, %if.end53
  %58 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %59 = load i64, i64* %offset, align 8
  %60 = load i64, i64* %use_len, align 8
  %61 = load i8*, i8** %input.addr, align 8
  %arraydecay64 = getelementptr inbounds [16 x i8], [16 x i8]* %local_output, i64 0, i64 0
  %call65 = call i32 @mbedtls_ccm_crypt(%struct.mbedtls_ccm_context* noundef %58, i64 noundef %59, i64 noundef %60, i8* noundef %61, i8* noundef %arraydecay64) #6
  store i32 %call65, i32* %ret, align 4
  %62 = load i32, i32* %ret, align 4
  %cmp66 = icmp ne i32 %62, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then63
  br label %exit

if.end69:                                         ; preds = %if.then63
  store i8 0, i8* %i, align 1
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc85, %if.end69
  %63 = load i8, i8* %i, align 1
  %conv71 = zext i8 %63 to i64
  %64 = load i64, i64* %use_len, align 8
  %cmp72 = icmp ult i64 %conv71, %64
  br i1 %cmp72, label %for.body74, label %for.end87

for.body74:                                       ; preds = %for.cond70
  %65 = load i8, i8* %i, align 1
  %idxprom75 = zext i8 %65 to i64
  %arrayidx76 = getelementptr inbounds [16 x i8], [16 x i8]* %local_output, i64 0, i64 %idxprom75
  %66 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %66 to i32
  %67 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y78 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %67, i32 0, i32 0
  %68 = load i8, i8* %i, align 1
  %conv79 = zext i8 %68 to i64
  %69 = load i64, i64* %offset, align 8
  %add80 = add i64 %conv79, %69
  %arrayidx81 = getelementptr inbounds [16 x i8], [16 x i8]* %y78, i64 0, i64 %add80
  %70 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %70 to i32
  %xor83 = xor i32 %conv82, %conv77
  %conv84 = trunc i32 %xor83 to i8
  store i8 %conv84, i8* %arrayidx81, align 1
  br label %for.inc85

for.inc85:                                        ; preds = %for.body74
  %71 = load i8, i8* %i, align 1
  %inc86 = add i8 %71, 1
  store i8 %inc86, i8* %i, align 1
  br label %for.cond70, !llvm.loop !9

for.end87:                                        ; preds = %for.cond70
  %72 = load i8*, i8** %output.addr, align 8
  %arraydecay88 = getelementptr inbounds [16 x i8], [16 x i8]* %local_output, i64 0, i64 0
  %73 = load i64, i64* %use_len, align 8
  %call89 = call i8* @memcpy(i8* noundef %72, i8* noundef %arraydecay88, i64 noundef %73) #5
  %arraydecay90 = getelementptr inbounds [16 x i8], [16 x i8]* %local_output, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay90, i64 noundef 16) #6
  %74 = load i64, i64* %use_len, align 8
  %75 = load i64, i64* %offset, align 8
  %add91 = add i64 %74, %75
  %cmp92 = icmp eq i64 %add91, 16
  br i1 %cmp92, label %if.then99, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %for.end87
  %76 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed95 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %76, i32 0, i32 6
  %77 = load i64, i64* %processed95, align 8
  %78 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len96 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %78, i32 0, i32 3
  %79 = load i64, i64* %plaintext_len96, align 8
  %cmp97 = icmp eq i64 %77, %79
  br i1 %cmp97, label %if.then99, label %if.end112

if.then99:                                        ; preds = %lor.lhs.false94, %for.end87
  %80 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx100 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %80, i32 0, i32 2
  %81 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y101 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %81, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [16 x i8], [16 x i8]* %y101, i64 0, i64 0
  %82 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y103 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %82, i32 0, i32 0
  %arraydecay104 = getelementptr inbounds [16 x i8], [16 x i8]* %y103, i64 0, i64 0
  %call105 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx100, i8* noundef %arraydecay102, i64 noundef 16, i8* noundef %arraydecay104, i64* noundef %olen) #6
  store i32 %call105, i32* %ret, align 4
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.then99
  %83 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state109 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %83, i32 0, i32 9
  %84 = load i32, i32* %state109, align 4
  %or110 = or i32 %84, 16
  store i32 %or110, i32* %state109, align 4
  br label %exit

if.end111:                                        ; preds = %if.then99
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %lor.lhs.false94
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %lor.lhs.false58
  %85 = load i64, i64* %use_len, align 8
  %86 = load i64, i64* %offset, align 8
  %add114 = add i64 %85, %86
  %cmp115 = icmp eq i64 %add114, 16
  br i1 %cmp115, label %if.then122, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end113
  %87 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed118 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %87, i32 0, i32 6
  %88 = load i64, i64* %processed118, align 8
  %89 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len119 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %89, i32 0, i32 3
  %90 = load i64, i64* %plaintext_len119, align 8
  %cmp120 = icmp eq i64 %88, %90
  br i1 %cmp120, label %if.then122, label %if.end142

if.then122:                                       ; preds = %lor.lhs.false117, %if.end113
  store i8 0, i8* %i, align 1
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc139, %if.then122
  %91 = load i8, i8* %i, align 1
  %conv124 = zext i8 %91 to i32
  %92 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %92, i32 0, i32 7
  %93 = load i8, i8* %q, align 8
  %conv125 = zext i8 %93 to i32
  %cmp126 = icmp slt i32 %conv124, %conv125
  br i1 %cmp126, label %for.body128, label %for.end141

for.body128:                                      ; preds = %for.cond123
  %94 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %94, i32 0, i32 1
  %95 = load i8, i8* %i, align 1
  %conv129 = zext i8 %95 to i32
  %sub130 = sub nsw i32 15, %conv129
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds [16 x i8], [16 x i8]* %ctr, i64 0, i64 %idxprom131
  %96 = load i8, i8* %arrayidx132, align 1
  %inc133 = add i8 %96, 1
  store i8 %inc133, i8* %arrayidx132, align 1
  %conv134 = zext i8 %inc133 to i32
  %cmp135 = icmp ne i32 %conv134, 0
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %for.body128
  br label %for.end141

if.end138:                                        ; preds = %for.body128
  br label %for.inc139

for.inc139:                                       ; preds = %if.end138
  %97 = load i8, i8* %i, align 1
  %inc140 = add i8 %97, 1
  store i8 %inc140, i8* %i, align 1
  br label %for.cond123, !llvm.loop !10

for.end141:                                       ; preds = %if.then137, %for.cond123
  br label %if.end142

if.end142:                                        ; preds = %for.end141, %lor.lhs.false117
  %98 = load i64, i64* %use_len, align 8
  %99 = load i64, i64* %input_len.addr, align 8
  %sub143 = sub i64 %99, %98
  store i64 %sub143, i64* %input_len.addr, align 8
  %100 = load i64, i64* %use_len, align 8
  %101 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %101, i64 %100
  store i8* %add.ptr, i8** %input.addr, align 8
  %102 = load i64, i64* %use_len, align 8
  %103 = load i8*, i8** %output.addr, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %add.ptr144, i8** %output.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %exit

exit:                                             ; preds = %while.end, %if.then108, %if.then68, %if.then51, %if.then44
  %arraydecay145 = getelementptr inbounds [16 x i8], [16 x i8]* %local_output, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay145, i64 noundef 16) #6
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then5, %if.then2, %if.then
  %105 = load i32, i32* %retval, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ccm_crypt(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %offset, i64 noundef %use_len, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %offset.addr = alloca i64, align 8
  %use_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp_buf = alloca [16 x i8], align 16
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %use_len, i64* %use_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 0, i64* %olen, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [16 x i8]* %tmp_buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 16, i1 false)
  %1 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %1, i32 0, i32 2
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ctr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp_buf, i64 0, i64 0
  %call = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay, i64 noundef 16, i8* noundef %arraydecay1, i64* noundef %olen) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %3, i32 0, i32 9
  %4 = load i32, i32* %state, align 4
  %or = or i32 %4, 16
  store i32 %or, i32* %state, align 4
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp_buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay2, i64 noundef 16) #6
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %use_len.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = load i64, i64* %offset.addr, align 8
  %12 = load i64, i64* %i, align 8
  %add = add i64 %11, %12
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp_buf, i64 0, i64 %add
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv5
  %conv6 = trunc i32 %xor to i8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 %conv6, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp_buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay8, i64 noundef 16) #6
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_finish(%struct.mbedtls_ccm_context* noundef %ctx, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %0, i32 0, i32 9
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -110, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %add_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %2, i32 0, i32 4
  %3 = load i64, i64* %add_len, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %4, i32 0, i32 9
  %5 = load i32, i32* %state1, align 4
  %and2 = and i32 %5, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  store i32 -13, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %6, i32 0, i32 3
  %7 = load i64, i64* %plaintext_len, align 8
  %cmp6 = icmp ugt i64 %7, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end11

land.lhs.true7:                                   ; preds = %if.end5
  %8 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %processed = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %8, i32 0, i32 6
  %9 = load i64, i64* %processed, align 8
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %plaintext_len8 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %10, i32 0, i32 3
  %11 = load i64, i64* %plaintext_len8, align 8
  %cmp9 = icmp ne i64 %9, %11
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  store i32 -13, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true7, %if.end5
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %12 = load i8, i8* %i, align 1
  %conv = zext i8 %12 to i32
  %13 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %q = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %13, i32 0, i32 7
  %14 = load i8, i8* %q, align 8
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp slt i32 %conv, %conv12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %15, i32 0, i32 1
  %16 = load i8, i8* %i, align 1
  %conv15 = zext i8 %16 to i32
  %sub = sub nsw i32 15, %conv15
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %ctr, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i8, i8* %i, align 1
  %inc = add i8 %17, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %18 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %19 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %19, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %20 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y16 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %20, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %y16, i64 0, i64 0
  %call = call i32 @mbedtls_ccm_crypt(%struct.mbedtls_ccm_context* noundef %18, i64 noundef 0, i64 noundef 16, i8* noundef %arraydecay, i8* noundef %arraydecay17) #6
  store i32 %call, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %21, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %for.end
  %23 = load i8*, i8** %tag.addr, align 8
  %cmp22 = icmp ne i8* %23, null
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end21
  %24 = load i8*, i8** %tag.addr, align 8
  %25 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y25 = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %25, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %y25, i64 0, i64 0
  %26 = load i64, i64* %tag_len.addr, align 8
  %call27 = call i8* @memcpy(i8* noundef %24, i8* noundef %arraydecay26, i64 noundef %26) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21
  %27 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  call void @mbedtls_ccm_clear_state(%struct.mbedtls_ccm_context* noundef %27) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then20, %if.then10, %if.then4, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ccm_clear_state(%struct.mbedtls_ccm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %0, i32 0, i32 9
  store i32 0, i32* %state, align 4
  %1 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %y = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %y, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 16) #5
  %2 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_ccm_context, %struct.mbedtls_ccm_context* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %ctr, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 16) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_star_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %4 = load i8*, i8** %add.addr, align 8
  %5 = load i64, i64* %add_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  %9 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @ccm_auth_crypt(%struct.mbedtls_ccm_context* noundef %0, i32 noundef 3, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8, i64 noundef %9) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_auth_crypt(%struct.mbedtls_ccm_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %call = call i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %6 = load i64, i64* %add_len.addr, align 8
  %7 = load i64, i64* %length.addr, align 8
  %8 = load i64, i64* %tag_len.addr, align 8
  %call1 = call i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #6
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %11 = load i8*, i8** %add.addr, align 8
  %12 = load i64, i64* %add_len.addr, align 8
  %call5 = call i32 @mbedtls_ccm_update_ad(%struct.mbedtls_ccm_context* noundef %10, i8* noundef %11, i64 noundef %12) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %14 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %length.addr, align 8
  %17 = load i8*, i8** %output.addr, align 8
  %18 = load i64, i64* %length.addr, align 8
  %call9 = call i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef %14, i8* noundef %15, i64 noundef %16, i8* noundef %17, i64 noundef %18, i64* noundef %olen) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %20 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %21 = load i8*, i8** %tag.addr, align 8
  %22 = load i64, i64* %tag_len.addr, align 8
  %call13 = call i32 @mbedtls_ccm_finish(%struct.mbedtls_ccm_context* noundef %20, i8* noundef %21, i64 noundef %22) #6
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %4 = load i8*, i8** %add.addr, align 8
  %5 = load i64, i64* %add_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  %9 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @ccm_auth_crypt(%struct.mbedtls_ccm_context* noundef %0, i32 noundef 1, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8, i64 noundef %9) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_star_auth_decrypt(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %4 = load i8*, i8** %add.addr, align 8
  %5 = load i64, i64* %add_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  %9 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %0, i32 noundef 2, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8, i64 noundef %9) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %check_tag = alloca [16 x i8], align 16
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i8*, i8** %iv.addr, align 8
  %4 = load i64, i64* %iv_len.addr, align 8
  %5 = load i8*, i8** %add.addr, align 8
  %6 = load i64, i64* %add_len.addr, align 8
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %9 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @ccm_auth_crypt(%struct.mbedtls_ccm_context* noundef %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i8* noundef %7, i8* noundef %8, i8* noundef %arraydecay, i64 noundef %9) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i8*, i8** %tag.addr, align 8
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %12 = load i64, i64* %tag_len.addr, align 8
  %call2 = call i32 @mbedtls_ccm_compare_tags(i8* noundef %11, i8* noundef %arraydecay1, i64 noundef %12) #6
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %13 = load i8*, i8** %output.addr, align 8
  %14 = load i64, i64* %length.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %13, i64 noundef %14) #6
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %length, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %add, i64 noundef %add_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ccm_context*, align 8
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %add.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_ccm_context* %ctx, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %add, i8** %add.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_ccm_context*, %struct.mbedtls_ccm_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %iv.addr, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %4 = load i8*, i8** %add.addr, align 8
  %5 = load i64, i64* %add_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  %9 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %0, i32 noundef 0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8, i64 noundef %9) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ccm_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ccm_context, align 8
  %plaintext = alloca [24 x i8], align 16
  %ciphertext = alloca [32 x i8], align 16
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ccm_init(%struct.mbedtls_ccm_context* noundef %ctx) #6
  %call = call i32 @mbedtls_ccm_setkey(%struct.mbedtls_ccm_context* noundef %ctx, i32 noundef 2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @key_test_data, i64 0, i64 0), i32 noundef 128) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %1 = load i64, i64* %i, align 8
  %cmp5 = icmp ult i64 %1, 3
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp6 = icmp ne i32 %2, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %conv = trunc i64 %3 to i32
  %add = add i32 %conv, 1
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %add) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %call10 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 24) #5
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %call12 = call i8* @memset(i8* noundef %arraydecay11, i32 noundef 0, i64 noundef 32) #5
  %arraydecay13 = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %4
  %5 = load i64, i64* %arrayidx, align 8
  %call14 = call i8* @memcpy(i8* noundef %arraydecay13, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @msg_test_data, i64 0, i64 0), i64 noundef %5) #5
  %6 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %6
  %7 = load i64, i64* %arrayidx15, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds [3 x i64], [3 x i64]* @iv_len_test_data, i64 0, i64 %8
  %9 = load i64, i64* %arrayidx16, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx17 = getelementptr inbounds [3 x i64], [3 x i64]* @add_len_test_data, i64 0, i64 %10
  %11 = load i64, i64* %arrayidx17, align 8
  %arraydecay18 = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %12 = load i64, i64* %i, align 8
  %arrayidx21 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %12
  %13 = load i64, i64* %arrayidx21, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay20, i64 %13
  %14 = load i64, i64* %i, align 8
  %arrayidx22 = getelementptr inbounds [3 x i64], [3 x i64]* @tag_len_test_data, i64 0, i64 %14
  %15 = load i64, i64* %arrayidx22, align 8
  %call23 = call i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @iv_test_data, i64 0, i64 0), i64 noundef %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @ad_test_data, i64 0, i64 0), i64 noundef %11, i8* noundef %arraydecay18, i8* noundef %arraydecay19, i8* noundef %add.ptr, i64 noundef %15) #6
  store i32 %call23, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp24 = icmp ne i32 %16, 0
  br i1 %cmp24, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %arraydecay26 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %17 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [8 x i8], [24 x i8] }>, <{ [22 x i8], [10 x i8] }>, [32 x i8] }>* @res_test_data to [3 x [32 x i8]]*), i64 0, i64 %17
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx27, i64 0, i64 0
  %18 = load i64, i64* %i, align 8
  %arrayidx29 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %18
  %19 = load i64, i64* %arrayidx29, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds [3 x i64], [3 x i64]* @tag_len_test_data, i64 0, i64 %20
  %21 = load i64, i64* %arrayidx30, align 8
  %add31 = add i64 %19, %21
  %call32 = call i32 @memcmp(i8* noundef %arraydecay26, i8* noundef %arraydecay28, i64 noundef %add31) #7
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %lor.lhs.false, %if.end9
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp36 = icmp ne i32 %22, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then35
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then35
  store i32 1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false
  %arraydecay42 = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %call43 = call i8* @memset(i8* noundef %arraydecay42, i32 noundef 0, i64 noundef 24) #5
  %23 = load i64, i64* %i, align 8
  %arrayidx44 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %23
  %24 = load i64, i64* %arrayidx44, align 8
  %25 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds [3 x i64], [3 x i64]* @iv_len_test_data, i64 0, i64 %25
  %26 = load i64, i64* %arrayidx45, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [3 x i64], [3 x i64]* @add_len_test_data, i64 0, i64 %27
  %28 = load i64, i64* %arrayidx46, align 8
  %arraydecay47 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  %29 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %29
  %30 = load i64, i64* %arrayidx50, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %arraydecay49, i64 %30
  %31 = load i64, i64* %i, align 8
  %arrayidx52 = getelementptr inbounds [3 x i64], [3 x i64]* @tag_len_test_data, i64 0, i64 %31
  %32 = load i64, i64* %arrayidx52, align 8
  %call53 = call i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %ctx, i64 noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @iv_test_data, i64 0, i64 0), i64 noundef %26, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @ad_test_data, i64 0, i64 0), i64 noundef %28, i8* noundef %arraydecay47, i8* noundef %arraydecay48, i8* noundef %add.ptr51, i64 noundef %32) #6
  store i32 %call53, i32* %ret, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp54 = icmp ne i32 %33, 0
  br i1 %cmp54, label %if.then62, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end41
  %arraydecay57 = getelementptr inbounds [24 x i8], [24 x i8]* %plaintext, i64 0, i64 0
  %34 = load i64, i64* %i, align 8
  %arrayidx58 = getelementptr inbounds [3 x i64], [3 x i64]* @msg_len_test_data, i64 0, i64 %34
  %35 = load i64, i64* %arrayidx58, align 8
  %call59 = call i32 @memcmp(i8* noundef %arraydecay57, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @msg_test_data, i64 0, i64 0), i64 noundef %35) #7
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end68

if.then62:                                        ; preds = %lor.lhs.false56, %if.end41
  %36 = load i32, i32* %verbose.addr, align 4
  %cmp63 = icmp ne i32 %36, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then62
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then62
  store i32 1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %lor.lhs.false56
  %37 = load i32, i32* %verbose.addr, align 4
  %cmp69 = icmp ne i32 %37, 0
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  %call72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @mbedtls_ccm_free(%struct.mbedtls_ccm_context* noundef %ctx) #6
  %39 = load i32, i32* %verbose.addr, align 4
  %cmp74 = icmp ne i32 %39, 0
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %for.end
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.end67, %if.end40, %if.end
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ccm_compare_tags(i8* noundef %tag1, i8* noundef %tag2, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %tag1.addr = alloca i8*, align 8
  %tag2.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %i = alloca i8, align 1
  %diff = alloca i32, align 4
  store i8* %tag1, i8** %tag1.addr, align 8
  store i8* %tag2, i8** %tag2.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i32 0, i32* %diff, align 4
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i64
  %1 = load i64, i64* %tag_len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %tag1.addr, align 8
  %3 = load i8, i8* %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i8*, i8** %tag2.addr, align 8
  %6 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %xor = xor i32 %conv2, %conv5
  %8 = load i32, i32* %diff, align 4
  %or = or i32 %8, %xor
  store i32 %or, i32* %diff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8, i8* %i, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %diff, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 -15, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
