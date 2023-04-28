; ModuleID = 'ctr_drbg.c'
source_filename = "ctr_drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  CTR_DRBG (PR = TRUE) : \00", align 1
@test_offset = internal global i64 0, align 8
@entropy_source_pr = internal constant [112 x i8] c"\CAX\FD\F2\B9w\CBI\D4\E0[\E29P\D9\8Aj\B3\C5/\DFt\D5\85\8F\D1\BAdT{\DB\1E\C5\EA$\C0\FA\0C\90\15\09 \92B26EE} vk\CF\A2\15\C8/\9F\BC\88?\80\D1,\B7\16\D1\80\9E\E1\C9\B3\88\1B!E\EF\A1\7F\CE\C8\925U*\D9\1D\8E\128\AC\01N8\18v\9C\F2\B6\D4\13\B6,w\C0\E7\E6\0CGD\95\BE", align 16
@pers_pr = internal constant [32 x i8] c"Zp\95\E9\81@R3\91S~u\D6\19\9D\1E\AD\0D\C6\A7\DEl\1F\E0\EA\183\A8~\06 \E9", align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@result_pr = internal constant [64 x i8] c"\CE/\DB\B6\D9\B79\85\04\C5\C0B\C21\C6\1D\9BZY\F8~\0D\CCb{e\11U\10\EB\9E=\A4\FB\1Cj\18\C0t\DB\DD\E7\02#c!\D09\F9\A7\C4R\84;I@r+\B0l\9C\DB\C3C", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  CTR_DRBG (PR = FALSE): \00", align 1
@entropy_source_nopr = internal constant [80 x i8] c"L\FB!\86s4m\9DP\C9\22\E4\9B\0D\FC\D0\90\AD\F0O\\;\A4s'\DF\CDo\A6:x\\\01ib\A7\FD'\87\A2K\F6\BEG\EF7\83\F1\B7\ECF\07#c\83J\1B\013\F2\C28\91\DBO\11\A6\86Q\F2>:\8B\1F\DC\03\B1\92\C7\E7", align 16
@pers_nopr = internal constant [32 x i8] c"\88\EE\B8\E0\E8;\F3)K\DA\CD`\99\EB\E4\BFU\EC\D9\11?q\E5\EB\CBEu\F3\D6\A6\8Ak", align 16
@result_nopr = internal constant [64 x i8] c"\A5Q\80\A1\90\BE\F3\AD\AF(\F6\B7\95\E9\F1\F3\D6\DF\A1\B2}\D0F{\0Cu\F5\FA\93\1E\97\14u\B2|\AE\03\A2\96T\E2\F4\09f\EA3d0@\D1@\0F\E6w\87:\F8\09|\1F\E9\F0\02\98", align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_ctr_drbg_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 344) #4
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %2, i32 0, i32 1
  store i32 -1, i32* %reseed_counter, align 8
  %3 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %3, i32 0, i32 4
  store i32 10000, i32* %reseed_interval, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ctr_drbg_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %1, i32 0, i32 5
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes_ctx) #5
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_ctr_drbg_context* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 344) #5
  %4 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %4, i32 0, i32 4
  store i32 10000, i32* %reseed_interval, align 8
  %5 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %5, i32 0, i32 1
  store i32 -1, i32* %reseed_counter, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ctr_drbg_set_prediction_resistance(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 noundef %resistance) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %resistance.addr = alloca i32, align 4
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i32 %resistance, i32* %resistance.addr, align 4
  %0 = load i32, i32* %resistance.addr, align 4
  %1 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %1, i32 0, i32 2
  store i32 %0, i32* %prediction_resistance, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ctr_drbg_set_entropy_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %1, i32 0, i32 3
  store i64 %0, i64* %entropy_len, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_set_nonce_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %f_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %0, i32 0, i32 6
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy, align 8
  %cmp = icmp ne i32 (i8*, i8*, i64)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -52, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %2, 384
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -56, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp ugt i64 %3, 2147483647
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -56, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %4 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %4 to i32
  %5 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %5, i32 0, i32 1
  store i32 %conv, i32* %reseed_counter, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ctr_drbg_set_reseed_interval(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 noundef %interval) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %interval.addr = alloca i32, align 4
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i32 %interval, i32* %interval.addr, align 4
  %0 = load i32, i32* %interval.addr, align 4
  %1 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %1, i32 0, i32 4
  store i32 %0, i32* %reseed_interval, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_update(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %add_input = alloca [48 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %add_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %1 = load i8*, i8** %additional.addr, align 8
  %2 = load i64, i64* %add_len.addr, align 8
  %call = call i32 @block_cipher_df(i8* noundef %arraydecay, i8* noundef %1, i64 noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %arraydecay4 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %call5 = call i32 @ctr_drbg_update_internal(%struct.mbedtls_ctr_drbg_context* noundef %3, i8* noundef %arraydecay4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  br label %exit

if.end8:                                          ; preds = %if.end3
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then2
  %arraydecay9 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay9, i64 noundef 48) #5
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_cipher_df(i8* noundef %output, i8* noundef %data, i64 noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %buf = alloca [416 x i8], align 16
  %tmp = alloca [48 x i8], align 16
  %key = alloca [32 x i8], align 16
  %chain = alloca [16 x i8], align 16
  %p = alloca i8*, align 8
  %iv = alloca i8*, align 8
  %aes_ctx = alloca %struct.mbedtls_aes_context, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf_len = alloca i64, align 8
  %use_len = alloca i64, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i64, i64* %data_len.addr, align 8
  %cmp = icmp ugt i64 %0, 384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -56, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [416 x i8], [416 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 416) #4
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes_ctx) #5
  %arraydecay1 = getelementptr inbounds [416 x i8], [416 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 16
  store i8* %add.ptr, i8** %p, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %shr = lshr i64 %1, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %2 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %3 = load i64, i64* %data_len.addr, align 8
  %shr2 = lshr i64 %3, 16
  %and3 = and i64 %shr2, 255
  %conv4 = trunc i64 %and3 to i8
  %4 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %5 = load i64, i64* %data_len.addr, align 8
  %shr6 = lshr i64 %5, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %6 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 2
  store i8 %conv8, i8* %arrayidx9, align 1
  %7 = load i64, i64* %data_len.addr, align 8
  %and10 = and i64 %7, 255
  %conv11 = trunc i64 %and10 to i8
  %8 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 3
  store i8 %conv11, i8* %arrayidx12, align 1
  %9 = load i8*, i8** %p, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %9, i64 7
  store i8* %add.ptr13, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 48, i8* %10, align 1
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i64, i64* %data_len.addr, align 8
  %call14 = call i8* @memcpy(i8* noundef %11, i8* noundef %12, i64 noundef %13) #4
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %data_len.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 -128, i8* %arrayidx15, align 1
  %16 = load i64, i64* %data_len.addr, align 8
  %add = add i64 24, %16
  %add16 = add i64 %add, 1
  store i64 %add16, i64* %buf_len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %17, 32
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %conv19 = trunc i32 %18 to i8
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 %idxprom
  store i8 %conv19, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call22 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes_ctx, i8* noundef %arraydecay21, i32 noundef 256) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  br label %exit

if.end26:                                         ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc66, %if.end26
  %21 = load i32, i32* %j, align 4
  %cmp28 = icmp slt i32 %21, 48
  br i1 %cmp28, label %for.body30, label %for.end68

for.body30:                                       ; preds = %for.cond27
  %arraydecay31 = getelementptr inbounds [416 x i8], [416 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay31, i8** %p, align 8
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 0
  %call33 = call i8* @memset(i8* noundef %arraydecay32, i32 noundef 0, i64 noundef 16) #4
  %22 = load i64, i64* %buf_len, align 8
  store i64 %22, i64* %use_len, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %for.body30
  %23 = load i64, i64* %use_len, align 8
  %cmp34 = icmp ugt i64 %23, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %while.body
  %24 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %24, 16
  br i1 %cmp37, label %for.body39, label %for.end49

for.body39:                                       ; preds = %for.cond36
  %25 = load i8*, i8** %p, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %25, i64 %idxprom40
  %27 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %27 to i32
  %28 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 %idxprom43
  %29 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %29 to i32
  %xor = xor i32 %conv45, %conv42
  %conv46 = trunc i32 %xor to i8
  store i8 %conv46, i8* %arrayidx44, align 1
  br label %for.inc47

for.inc47:                                        ; preds = %for.body39
  %30 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %30, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond36, !llvm.loop !6

for.end49:                                        ; preds = %for.cond36
  %31 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %31, i64 16
  store i8* %add.ptr50, i8** %p, align 8
  %32 = load i64, i64* %use_len, align 8
  %cmp51 = icmp uge i64 %32, 16
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end49
  br label %cond.end

cond.false:                                       ; preds = %for.end49
  %33 = load i64, i64* %use_len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16, %cond.true ], [ %33, %cond.false ]
  %34 = load i64, i64* %use_len, align 8
  %sub = sub i64 %34, %cond
  store i64 %sub, i64* %use_len, align 8
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 0
  %call55 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes_ctx, i32 noundef 1, i8* noundef %arraydecay53, i8* noundef %arraydecay54) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %cond.end
  br label %exit

if.end59:                                         ; preds = %cond.end
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %arraydecay60 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %35 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %arraydecay60, i64 %idx.ext
  %arraydecay62 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 0
  %call63 = call i8* @memcpy(i8* noundef %add.ptr61, i8* noundef %arraydecay62, i64 noundef 16) #4
  %arrayidx64 = getelementptr inbounds [416 x i8], [416 x i8]* %buf, i64 0, i64 3
  %36 = load i8, i8* %arrayidx64, align 1
  %inc65 = add i8 %36, 1
  store i8 %inc65, i8* %arrayidx64, align 1
  br label %for.inc66

for.inc66:                                        ; preds = %while.end
  %37 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %37, 16
  store i32 %add67, i32* %j, align 4
  br label %for.cond27, !llvm.loop !8

for.end68:                                        ; preds = %for.cond27
  %arraydecay69 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %call70 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes_ctx, i8* noundef %arraydecay69, i32 noundef 256) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.end68
  br label %exit

if.end74:                                         ; preds = %for.end68
  %arraydecay75 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %add.ptr76 = getelementptr inbounds i8, i8* %arraydecay75, i64 32
  store i8* %add.ptr76, i8** %iv, align 8
  %38 = load i8*, i8** %output.addr, align 8
  store i8* %38, i8** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc88, %if.end74
  %39 = load i32, i32* %j, align 4
  %cmp78 = icmp slt i32 %39, 48
  br i1 %cmp78, label %for.body80, label %for.end90

for.body80:                                       ; preds = %for.cond77
  %40 = load i8*, i8** %iv, align 8
  %41 = load i8*, i8** %iv, align 8
  %call81 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes_ctx, i32 noundef 1, i8* noundef %40, i8* noundef %41) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.body80
  br label %exit

if.end85:                                         ; preds = %for.body80
  %42 = load i8*, i8** %p, align 8
  %43 = load i8*, i8** %iv, align 8
  %call86 = call i8* @memcpy(i8* noundef %42, i8* noundef %43, i64 noundef 16) #4
  %44 = load i8*, i8** %p, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %44, i64 16
  store i8* %add.ptr87, i8** %p, align 8
  br label %for.inc88

for.inc88:                                        ; preds = %if.end85
  %45 = load i32, i32* %j, align 4
  %add89 = add nsw i32 %45, 16
  store i32 %add89, i32* %j, align 4
  br label %for.cond77, !llvm.loop !9

for.end90:                                        ; preds = %for.cond77
  br label %exit

exit:                                             ; preds = %for.end90, %if.then84, %if.then73, %if.then58, %if.then25
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes_ctx) #5
  %arraydecay91 = getelementptr inbounds [416 x i8], [416 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay91, i64 noundef 416) #5
  %arraydecay92 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay92, i64 noundef 48) #5
  %arraydecay93 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay93, i64 noundef 32) #5
  %arraydecay94 = getelementptr inbounds [16 x i8], [16 x i8]* %chain, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay94, i64 noundef 16) #5
  %46 = load i32, i32* %ret, align 4
  %cmp95 = icmp ne i32 0, %46
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %exit
  %47 = load i8*, i8** %output.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %47, i64 noundef 48) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %exit
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end98, %if.then
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_drbg_update_internal(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %data) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %data.addr = alloca i8*, align 8
  %tmp = alloca [48 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  store i32 0, i32* %ret, align 4
  %arraydecay1 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 48) #4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 48
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 16, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %2, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %counter, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %4, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = zext i8 %inc to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond2, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond2
  %6 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %6, i32 0, i32 5
  %7 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %counter7 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %7, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [16 x i8], [16 x i8]* %counter7, i64 0, i64 0
  %8 = load i8*, i8** %p, align 8
  %call9 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes_ctx, i32 noundef 1, i8* noundef %arraydecay8, i8* noundef %8) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %exit

if.end13:                                         ; preds = %for.end
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 16
  store i8* %add.ptr, i8** %p, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, 16
  store i32 %add, i32* %j, align 4
  br label %for.cond, !llvm.loop !11

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %for.end15
  %11 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %11, 48
  br i1 %cmp17, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond16
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 %idxprom20
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 %idxprom23
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %16 to i32
  %xor = xor i32 %conv25, %conv22
  %conv26 = trunc i32 %xor to i8
  store i8 %conv26, i8* %arrayidx24, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %17 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond16, !llvm.loop !12

for.end29:                                        ; preds = %for.cond16
  %18 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %aes_ctx30 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %18, i32 0, i32 5
  %arraydecay31 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %call32 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes_ctx30, i8* noundef %arraydecay31, i32 noundef 256) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end29
  br label %exit

if.end36:                                         ; preds = %for.end29
  %19 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %counter37 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %19, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [16 x i8], [16 x i8]* %counter37, i64 0, i64 0
  %arraydecay39 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  %add.ptr40 = getelementptr inbounds i8, i8* %arraydecay39, i64 32
  %call41 = call i8* @memcpy(i8* noundef %arraydecay38, i8* noundef %add.ptr40, i64 noundef 16) #4
  br label %exit

exit:                                             ; preds = %if.end36, %if.then35, %if.then12
  %arraydecay42 = getelementptr inbounds [48 x i8], [48 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay42, i64 noundef 48) #5
  %20 = load i32, i32* %ret, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %1 = load i8*, i8** %additional.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_ctr_drbg_reseed_internal(%struct.mbedtls_ctr_drbg_context* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ctr_drbg_reseed_internal(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %len, i64 noundef %nonce_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %nonce_len.addr = alloca i64, align 8
  %seed = alloca [384 x i8], align 16
  %seedlen = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %nonce_len, i64* %nonce_len.addr, align 8
  store i64 0, i64* %seedlen, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %0, i32 0, i32 3
  %1 = load i64, i64* %entropy_len, align 8
  %cmp = icmp ugt i64 %1, 384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -56, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %nonce_len.addr, align 8
  %3 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len1 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %3, i32 0, i32 3
  %4 = load i64, i64* %entropy_len1, align 8
  %sub = sub i64 384, %4
  %cmp2 = icmp ugt i64 %2, %sub
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -56, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i64, i64* %len.addr, align 8
  %6 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len5 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %6, i32 0, i32 3
  %7 = load i64, i64* %entropy_len5, align 8
  %sub6 = sub i64 384, %7
  %8 = load i64, i64* %nonce_len.addr, align 8
  %sub7 = sub i64 %sub6, %8
  %cmp8 = icmp ugt i64 %5, %sub7
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i32 -56, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %arraydecay = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 384) #4
  %9 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %f_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %9, i32 0, i32 6
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy, align 8
  %11 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %p_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %11, i32 0, i32 7
  %12 = load i8*, i8** %p_entropy, align 8
  %arraydecay11 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %13 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len12 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %13, i32 0, i32 3
  %14 = load i64, i64* %entropy_len12, align 8
  %call13 = call i32 %10(i8* noundef %12, i8* noundef %arraydecay11, i64 noundef %14) #5
  %cmp14 = icmp ne i32 0, %call13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  store i32 -52, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %15 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len17 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %15, i32 0, i32 3
  %16 = load i64, i64* %entropy_len17, align 8
  %17 = load i64, i64* %seedlen, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %seedlen, align 8
  %18 = load i64, i64* %nonce_len.addr, align 8
  %cmp18 = icmp ne i64 %18, 0
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end16
  %19 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %f_entropy20 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %19, i32 0, i32 6
  %20 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy20, align 8
  %21 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %p_entropy21 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %21, i32 0, i32 7
  %22 = load i8*, i8** %p_entropy21, align 8
  %arraydecay22 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %23 = load i64, i64* %seedlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay22, i64 %23
  %24 = load i64, i64* %nonce_len.addr, align 8
  %call23 = call i32 %20(i8* noundef %22, i8* noundef %add.ptr, i64 noundef %24) #5
  %cmp24 = icmp ne i32 0, %call23
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then19
  store i32 -52, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then19
  %25 = load i64, i64* %nonce_len.addr, align 8
  %26 = load i64, i64* %seedlen, align 8
  %add27 = add i64 %26, %25
  store i64 %add27, i64* %seedlen, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end16
  %27 = load i8*, i8** %additional.addr, align 8
  %cmp29 = icmp ne i8* %27, null
  br i1 %cmp29, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end28
  %28 = load i64, i64* %len.addr, align 8
  %cmp30 = icmp ne i64 %28, 0
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %land.lhs.true
  %arraydecay32 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %29 = load i64, i64* %seedlen, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %arraydecay32, i64 %29
  %30 = load i8*, i8** %additional.addr, align 8
  %31 = load i64, i64* %len.addr, align 8
  %call34 = call i8* @memcpy(i8* noundef %add.ptr33, i8* noundef %30, i64 noundef %31) #4
  %32 = load i64, i64* %len.addr, align 8
  %33 = load i64, i64* %seedlen, align 8
  %add35 = add i64 %33, %32
  store i64 %add35, i64* %seedlen, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %land.lhs.true, %if.end28
  %arraydecay37 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %arraydecay38 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %34 = load i64, i64* %seedlen, align 8
  %call39 = call i32 @block_cipher_df(i8* noundef %arraydecay37, i8* noundef %arraydecay38, i64 noundef %34) #5
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  br label %exit

if.end42:                                         ; preds = %if.end36
  %35 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %arraydecay43 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %call44 = call i32 @ctr_drbg_update_internal(%struct.mbedtls_ctr_drbg_context* noundef %35, i8* noundef %arraydecay43) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  br label %exit

if.end47:                                         ; preds = %if.end42
  %36 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %36, i32 0, i32 1
  store i32 1, i32* %reseed_counter, align 8
  br label %exit

exit:                                             ; preds = %if.end47, %if.then46, %if.then41
  %arraydecay48 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay48, i64 noundef 384) #5
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then25, %if.then15, %if.then9, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_entropy, i8* noundef %p_entropy, i8* noundef %custom, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %f_entropy.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_entropy.addr = alloca i8*, align 8
  %custom.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %nonce_len = alloca i64, align 8
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_entropy, i32 (i8*, i8*, i64)** %f_entropy.addr, align 8
  store i8* %p_entropy, i8** %p_entropy.addr, align 8
  store i8* %custom, i8** %custom.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 32) #4
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %0, i32 0, i32 5
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes_ctx) #5
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy.addr, align 8
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %f_entropy1 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %2, i32 0, i32 6
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %f_entropy1, align 8
  %3 = load i8*, i8** %p_entropy.addr, align 8
  %4 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %p_entropy2 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %4, i32 0, i32 7
  store i8* %3, i8** %p_entropy2, align 8
  %5 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %5, i32 0, i32 3
  %6 = load i64, i64* %entropy_len, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len3 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %7, i32 0, i32 3
  store i64 48, i64* %entropy_len3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %8, i32 0, i32 1
  %9 = load i32, i32* %reseed_counter, align 8
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %reseed_counter5 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %10, i32 0, i32 1
  %11 = load i32, i32* %reseed_counter5, align 8
  %conv = sext i32 %11 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %entropy_len6 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %12, i32 0, i32 3
  %13 = load i64, i64* %entropy_len6, align 8
  %call7 = call i64 @good_nonce_len(i64 noundef %13) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call7, %cond.false ]
  store i64 %cond, i64* %nonce_len, align 8
  %14 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %aes_ctx8 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %14, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call10 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %aes_ctx8, i8* noundef %arraydecay9, i32 noundef 256) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %cond.end
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %cond.end
  %16 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %17 = load i8*, i8** %custom.addr, align 8
  %18 = load i64, i64* %len.addr, align 8
  %19 = load i64, i64* %nonce_len, align 8
  %call15 = call i32 @mbedtls_ctr_drbg_reseed_internal(%struct.mbedtls_ctr_drbg_context* noundef %16, i8* noundef %17, i64 noundef %18, i64 noundef %19) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then13
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @good_nonce_len(i64 noundef %entropy_len) #0 {
entry:
  %retval = alloca i64, align 8
  %entropy_len.addr = alloca i64, align 8
  store i64 %entropy_len, i64* %entropy_len.addr, align 8
  %0 = load i64, i64* %entropy_len.addr, align 8
  %cmp = icmp uge i64 %0, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %entropy_len.addr, align 8
  %add = add i64 %1, 1
  %div = udiv i64 %add, 2
  store i64 %div, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8
  ret i64 %2
}

declare dso_local i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_random_with_add(i8* noundef %p_rng, i8* noundef %output, i64 noundef %output_len, i8* noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_rng.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %additional.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %add_input = alloca [48 x i8], align 16
  %p = alloca i8*, align 8
  %tmp = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %use_len = alloca i64, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %p_rng.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ctr_drbg_context*
  store %struct.mbedtls_ctr_drbg_context* %1, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %2 = load i8*, i8** %output.addr, align 8
  store i8* %2, i8** %p, align 8
  %3 = load i64, i64* %output_len.addr, align 8
  %cmp = icmp ugt i64 %3, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -54, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %add_len.addr, align 8
  %cmp1 = icmp ugt i64 %4, 256
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -56, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 48) #4
  %5 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %5, i32 0, i32 1
  %6 = load i32, i32* %reseed_counter, align 8
  %7 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %7, i32 0, i32 4
  %8 = load i32, i32* %reseed_interval, align 8
  %cmp4 = icmp sgt i32 %6, %8
  br i1 %cmp4, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %9, i32 0, i32 2
  %10 = load i32, i32* %prediction_resistance, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then5, label %if.end10

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  %11 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %12 = load i8*, i8** %additional.addr, align 8
  %13 = load i64, i64* %add_len.addr, align 8
  %call6 = call i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef %11, i8* noundef %12, i64 noundef %13) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  store i64 0, i64* %add_len.addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %lor.lhs.false
  %15 = load i64, i64* %add_len.addr, align 8
  %cmp11 = icmp ugt i64 %15, 0
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.end10
  %arraydecay13 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %16 = load i8*, i8** %additional.addr, align 8
  %17 = load i64, i64* %add_len.addr, align 8
  %call14 = call i32 @block_cipher_df(i8* noundef %arraydecay13, i8* noundef %16, i64 noundef %17) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  br label %exit

if.end17:                                         ; preds = %if.then12
  %18 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %arraydecay18 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %call19 = call i32 @ctr_drbg_update_internal(%struct.mbedtls_ctr_drbg_context* noundef %18, i8* noundef %arraydecay18) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  br label %exit

if.end22:                                         ; preds = %if.end17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end10
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end23
  %19 = load i64, i64* %output_len.addr, align 8
  %cmp24 = icmp ugt i64 %19, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %20 = load i32, i32* %i, align 4
  %cmp25 = icmp sgt i32 %20, 0
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %21, i32 0, i32 0
  %22 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %counter, i64 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %23, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = zext i8 %inc to i32
  %cmp26 = icmp ne i32 %conv, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body
  br label %for.end

if.end29:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then28, %for.cond
  %25 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %25, i32 0, i32 5
  %26 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %counter30 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %26, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %counter30, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %call33 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %aes_ctx, i32 noundef 1, i8* noundef %arraydecay31, i8* noundef %arraydecay32) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.end
  br label %exit

if.end37:                                         ; preds = %for.end
  %27 = load i64, i64* %output_len.addr, align 8
  %cmp38 = icmp ugt i64 %27, 16
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end37
  br label %cond.end

cond.false:                                       ; preds = %if.end37
  %28 = load i64, i64* %output_len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16, %cond.true ], [ %28, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  %29 = load i8*, i8** %p, align 8
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %30 = load i64, i64* %use_len, align 8
  %call41 = call i8* @memcpy(i8* noundef %29, i8* noundef %arraydecay40, i64 noundef %30) #4
  %31 = load i64, i64* %use_len, align 8
  %32 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %add.ptr, i8** %p, align 8
  %33 = load i64, i64* %use_len, align 8
  %34 = load i64, i64* %output_len.addr, align 8
  %sub42 = sub i64 %34, %33
  store i64 %sub42, i64* %output_len.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %35 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %arraydecay43 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  %call44 = call i32 @ctr_drbg_update_internal(%struct.mbedtls_ctr_drbg_context* noundef %35, i8* noundef %arraydecay43) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.end
  br label %exit

if.end48:                                         ; preds = %while.end
  %36 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %reseed_counter49 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, %struct.mbedtls_ctr_drbg_context* %36, i32 0, i32 1
  %37 = load i32, i32* %reseed_counter49, align 8
  %inc50 = add nsw i32 %37, 1
  store i32 %inc50, i32* %reseed_counter49, align 8
  br label %exit

exit:                                             ; preds = %if.end48, %if.then47, %if.then36, %if.then21, %if.then16
  %arraydecay51 = getelementptr inbounds [48 x i8], [48 x i8]* %add_input, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay51, i64 noundef 48) #5
  %arraydecay52 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay52, i64 noundef 16) #5
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then8, %if.then2, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare dso_local i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef, i32 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef %p_rng, i8* noundef %output, i64 noundef %output_len) #0 {
entry:
  %p_rng.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_rng.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ctr_drbg_context*
  store %struct.mbedtls_ctr_drbg_context* %1, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx, align 8
  %3 = bitcast %struct.mbedtls_ctr_drbg_context* %2 to i8*
  %4 = load i8*, i8** %output.addr, align 8
  %5 = load i64, i64* %output_len.addr, align 8
  %call = call i32 @mbedtls_ctr_drbg_random_with_add(i8* noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef null, i64 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_write_seed_file(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -58, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -58, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %1, i8* noundef null) #4
  %2 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_ctr_drbg_context* %2 to i8*
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %call1 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %3, i8* noundef %arraydecay, i64 noundef 256) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i64 @fwrite(i8* noundef %arraydecay5, i64 noundef 1, i64 noundef 256, %struct._IO_FILE* noundef %4) #5
  %cmp7 = icmp ne i64 %call6, 256
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  store i32 -58, i32* %ret, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end4
  store i32 0, i32* %ret, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %exit

exit:                                             ; preds = %if.end9, %if.then3
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay10, i64 noundef 256) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* noundef %5) #5
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_update_seed_file(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %n = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c = alloca i8, align 1
  store %struct.mbedtls_ctr_drbg_context* %ctx, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -58, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %1, i8* noundef null) #4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef 256, %struct._IO_FILE* noundef %2) #5
  store i64 %call1, i64* %n, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @fread(i8* noundef %c, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %3) #5
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -56, i32* %ret, align 4
  br label %exit

if.end5:                                          ; preds = %if.end
  %4 = load i64, i64* %n, align 8
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @ferror(%struct._IO_FILE* noundef %5) #4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 -58, i32* %ret, align 4
  br label %exit

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* noundef %6) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %7 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %8 = load i64, i64* %n, align 8
  %call12 = call i32 @mbedtls_ctr_drbg_update(%struct.mbedtls_ctr_drbg_context* noundef %7, i8* noundef %arraydecay11, i64 noundef %8) #5
  store i32 %call12, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay13, i64 noundef 256) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp14 = icmp ne %struct._IO_FILE* %9, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %exit
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* noundef %10) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %exit
  %11 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %11, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %13 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %ctx.addr, align 8
  %14 = load i8*, i8** %path.addr, align 8
  %call21 = call i32 @mbedtls_ctr_drbg_write_seed_file(%struct.mbedtls_ctr_drbg_context* noundef %13, i8* noundef %14) #5
  store i32 %call21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %buf = alloca [64 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #5
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* @test_offset, align 8
  call void @mbedtls_ctr_drbg_set_entropy_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef 32) #5
  %call1 = call i32 @mbedtls_ctr_drbg_set_nonce_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef 16) #5
  %call2 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef @ctr_drbg_self_test_entropy, i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @entropy_source_pr, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @pers_pr, i64 0, i64 0), i64 noundef 32) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp5 = icmp ne i32 %1, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  call void @mbedtls_ctr_drbg_set_prediction_resistance(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 noundef 1) #5
  %2 = bitcast %struct.mbedtls_ctr_drbg_context* %ctx to i8*
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call10 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %2, i8* noundef %arraydecay, i64 noundef 64) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp13 = icmp ne i32 %3, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %4 = bitcast %struct.mbedtls_ctr_drbg_context* %ctx to i8*
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call19 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %4, i8* noundef %arraydecay18, i64 noundef 64) #5
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp22 = icmp ne i32 %5, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21
  store i32 1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call28 = call i32 @memcmp(i8* noundef %arraydecay27, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @result_pr, i64 0, i64 0), i64 noundef 64) #6
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end26
  %6 = load i32, i32* %verbose.addr, align 4
  %cmp31 = icmp ne i32 %6, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end26
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #5
  %7 = load i32, i32* %verbose.addr, align 4
  %cmp36 = icmp ne i32 %7, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp40 = icmp ne i32 %8, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #5
  store i64 0, i64* @test_offset, align 8
  call void @mbedtls_ctr_drbg_set_entropy_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef 32) #5
  %call44 = call i32 @mbedtls_ctr_drbg_set_nonce_len(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i64 noundef 16) #5
  %call45 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef @ctr_drbg_self_test_entropy, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @entropy_source_nopr, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @pers_nopr, i64 0, i64 0), i64 noundef 32) #5
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end43
  %9 = load i32, i32* %verbose.addr, align 4
  %cmp48 = icmp ne i32 %9, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then47
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then47
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end43
  %call53 = call i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef %ctx, i8* noundef null, i64 noundef 0) #5
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end52
  %10 = load i32, i32* %verbose.addr, align 4
  %cmp56 = icmp ne i32 %10, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55
  store i32 1, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end52
  %11 = bitcast %struct.mbedtls_ctr_drbg_context* %ctx to i8*
  %arraydecay61 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call62 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %11, i8* noundef %arraydecay61, i64 noundef 64) #5
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end60
  %12 = load i32, i32* %verbose.addr, align 4
  %cmp65 = icmp ne i32 %12, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then64
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  store i32 1, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end60
  %13 = bitcast %struct.mbedtls_ctr_drbg_context* %ctx to i8*
  %arraydecay70 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call71 = call i32 @mbedtls_ctr_drbg_random(i8* noundef %13, i8* noundef %arraydecay70, i64 noundef 64) #5
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.end69
  %14 = load i32, i32* %verbose.addr, align 4
  %cmp74 = icmp ne i32 %14, 0
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then73
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.then73
  store i32 1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.end69
  %arraydecay79 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call80 = call i32 @memcmp(i8* noundef %arraydecay79, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @result_nopr, i64 0, i64 0), i64 noundef 64) #6
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end78
  %15 = load i32, i32* %verbose.addr, align 4
  %cmp83 = icmp ne i32 %15, 0
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.then82
  %call85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then82
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end78
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctx) #5
  %16 = load i32, i32* %verbose.addr, align 4
  %cmp88 = icmp ne i32 %16, 0
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end87
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end87
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp92 = icmp ne i32 %17, 0
  br i1 %cmp92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end91
  %call94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end95, %if.end86, %if.end77, %if.end68, %if.end59, %if.end51, %if.end34, %if.end25, %if.end16, %if.end8
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_drbg_self_test_entropy(i8* noundef %data, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i64, i64* @test_offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i64, i64* %len.addr, align 8
  %call = call i8* @memcpy(i8* noundef %1, i8* noundef %add.ptr, i64 noundef %4) #4
  %5 = load i64, i64* %len.addr, align 8
  %6 = load i64, i64* @test_offset, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* @test_offset, align 8
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
