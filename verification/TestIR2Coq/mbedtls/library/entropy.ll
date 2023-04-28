; ModuleID = 'entropy.c'
source_filename = "entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  ENTROPY test: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %0, i32 0, i32 2
  store i32 0, i32* %source_count, align 8
  %1 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %1, i32 0, i32 3
  %arraydecay = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source, i64 0, i64 0
  %2 = bitcast %struct.mbedtls_entropy_source_state* %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 800) #4
  %3 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator_started = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %3, i32 0, i32 0
  store i32 0, i32* %accumulator_started, align 8
  %4 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %4, i32 0, i32 1
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %accumulator) #5
  %5 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %call1 = call i32 @mbedtls_entropy_add_source(%struct.mbedtls_entropy_context* noundef %5, i32 (i8*, i8*, i64, i64*)* noundef @mbedtls_platform_entropy_poll, i8* noundef null, i64 noundef 32, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_add_source(%struct.mbedtls_entropy_context* noundef %ctx, i32 (i8*, i8*, i64, i64*)* noundef %f_source, i8* noundef %p_source, i64 noundef %threshold, i32 noundef %strong) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %f_source.addr = alloca i32 (i8*, i8*, i64, i64*)*, align 8
  %p_source.addr = alloca i8*, align 8
  %threshold.addr = alloca i64, align 8
  %strong.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64, i64*)* %f_source, i32 (i8*, i8*, i64, i64*)** %f_source.addr, align 8
  store i8* %p_source, i8** %p_source.addr, align 8
  store i64 %threshold, i64* %threshold.addr, align 8
  store i32 %strong, i32* %strong.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %0, i32 0, i32 2
  %1 = load i32, i32* %source_count, align 8
  store i32 %1, i32* %idx, align 4
  %2 = load i32, i32* %idx, align 4
  %cmp = icmp sge i32 %2, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -62, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load i32 (i8*, i8*, i64, i64*)*, i32 (i8*, i8*, i64, i64*)** %f_source.addr, align 8
  %4 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %4, i32 0, i32 3
  %5 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source, i64 0, i64 %idxprom
  %f_source1 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx, i32 0, i32 0
  store i32 (i8*, i8*, i64, i64*)* %3, i32 (i8*, i8*, i64, i64*)** %f_source1, align 8
  %6 = load i8*, i8** %p_source.addr, align 8
  %7 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source2 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %7, i32 0, i32 3
  %8 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source2, i64 0, i64 %idxprom3
  %p_source5 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx4, i32 0, i32 1
  store i8* %6, i8** %p_source5, align 8
  %9 = load i64, i64* %threshold.addr, align 8
  %10 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source6 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %10, i32 0, i32 3
  %11 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source6, i64 0, i64 %idxprom7
  %threshold9 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx8, i32 0, i32 3
  store i64 %9, i64* %threshold9, align 8
  %12 = load i32, i32* %strong.addr, align 4
  %13 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source10 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %13, i32 0, i32 3
  %14 = load i32, i32* %idx, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source10, i64 0, i64 %idxprom11
  %strong13 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx12, i32 0, i32 4
  store i32 %12, i32* %strong13, align 8
  %15 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count14 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %15, i32 0, i32 2
  %16 = load i32, i32* %source_count14, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %source_count14, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_platform_entropy_poll(i8* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator_started = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %0, i32 0, i32 0
  %1 = load i32, i32* %accumulator_started, align 8
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %2, i32 0, i32 1
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %accumulator) #5
  %3 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %3, i32 0, i32 2
  store i32 0, i32* %source_count, align 8
  %4 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source, i64 0, i64 0
  %5 = bitcast %struct.mbedtls_entropy_source_state* %arraydecay to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef 800) #5
  %6 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator_started1 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %6, i32 0, i32 0
  store i32 -1, i32* %accumulator_started1, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_update_manual(%struct.mbedtls_entropy_context* noundef %ctx, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @entropy_update(%struct.mbedtls_entropy_context* noundef %0, i8 noundef zeroext 20, i8* noundef %1, i64 noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entropy_update(%struct.mbedtls_entropy_context* noundef %ctx, i8 noundef zeroext %source_id, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %source_id.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %header = alloca [2 x i8], align 1
  %tmp = alloca [64 x i8], align 16
  %use_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i8 %source_id, i8* %source_id.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %use_len, align 8
  %1 = load i8*, i8** %data.addr, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* %ret, align 4
  %2 = load i64, i64* %use_len, align 8
  %cmp = icmp ugt i64 %2, 64
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %call = call i32 @mbedtls_sha512(i8* noundef %3, i64 noundef %4, i8* noundef %arraydecay, i32 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  store i8* %arraydecay3, i8** %p, align 8
  store i64 64, i64* %use_len, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %5 = load i8, i8* %source_id.addr, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %header, i64 0, i64 0
  store i8 %5, i8* %arrayidx, align 1
  %6 = load i64, i64* %use_len, align 8
  %and = and i64 %6, 255
  %conv = trunc i64 %and to i8
  %arrayidx5 = getelementptr inbounds [2 x i8], [2 x i8]* %header, i64 0, i64 1
  store i8 %conv, i8* %arrayidx5, align 1
  %7 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator_started = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %7, i32 0, i32 0
  %8 = load i32, i32* %accumulator_started, align 8
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %9 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %9, i32 0, i32 1
  %call8 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %accumulator, i32 noundef 0) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %10 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator_started12 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %10, i32 0, i32 0
  store i32 1, i32* %accumulator_started12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else
  %11 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator14 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %11, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [2 x i8], [2 x i8]* %header, i64 0, i64 0
  %call16 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %accumulator14, i8* noundef %arraydecay15, i64 noundef 2) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %12 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %accumulator21 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %12, i32 0, i32 1
  %13 = load i8*, i8** %p, align 8
  %14 = load i64, i64* %use_len, align 8
  %call22 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %accumulator21, i8* noundef %13, i64 noundef %14) #5
  store i32 %call22, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then11, %if.then2
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay23, i64 noundef 64) #5
  %15 = load i32, i32* %ret, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_gather(%struct.mbedtls_entropy_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %call = call i32 @entropy_gather_internal(%struct.mbedtls_entropy_context* noundef %0) #5
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entropy_gather_internal(%struct.mbedtls_entropy_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %have_one_strong = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %olen = alloca i64, align 8
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i32 -60, i32* %ret, align 4
  store i32 0, i32* %have_one_strong, align 4
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %0, i32 0, i32 2
  %1 = load i32, i32* %source_count, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -64, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source_count1 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %3, i32 0, i32 2
  %4 = load i32, i32* %source_count1, align 8
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %5, i32 0, i32 3
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source, i64 0, i64 %idxprom
  %strong = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx, i32 0, i32 4
  %7 = load i32, i32* %strong, align 8
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 1, i32* %have_one_strong, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  store i64 0, i64* %olen, align 8
  %8 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source6 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %8, i32 0, i32 3
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source6, i64 0, i64 %idxprom7
  %f_source = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx8, i32 0, i32 0
  %10 = load i32 (i8*, i8*, i64, i64*)*, i32 (i8*, i8*, i64, i64*)** %f_source, align 8
  %11 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source9 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %11, i32 0, i32 3
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source9, i64 0, i64 %idxprom10
  %p_source = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx11, i32 0, i32 1
  %13 = load i8*, i8** %p_source, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  %call = call i32 %10(i8* noundef %13, i8* noundef %arraydecay, i64 noundef 128, i64* noundef %olen) #5
  store i32 %call, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end5
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %14 = load i64, i64* %olen, align 8
  %cmp15 = icmp ugt i64 %14, 0
  br i1 %cmp15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end14
  %15 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %16 = load i32, i32* %i, align 4
  %conv = trunc i32 %16 to i8
  %arraydecay17 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  %17 = load i64, i64* %olen, align 8
  %call18 = call i32 @entropy_update(%struct.mbedtls_entropy_context* noundef %15, i8 noundef zeroext %conv, i8* noundef %arraydecay17, i64 noundef %17) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then16
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then16
  %19 = load i64, i64* %olen, align 8
  %20 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %source23 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %20, i32 0, i32 3
  %21 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source23, i64 0, i64 %idxprom24
  %size = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx25, i32 0, i32 2
  %22 = load i64, i64* %size, align 8
  %add = add i64 %22, %19
  store i64 %add, i64* %size, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.end14
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %have_one_strong, align 4
  %cmp27 = icmp eq i32 %24, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end
  store i32 -61, i32* %ret, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then13
  %arraydecay31 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay31, i64 noundef 128) #5
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then21, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_func(i8* noundef %data, i8* noundef %output, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %thresholds_reached = alloca i32, align 4
  %strong_size = alloca i64, align 8
  %ctx = alloca %struct.mbedtls_entropy_context*, align 8
  %buf = alloca [64 x i8], align 16
  store i8* %data, i8** %data.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_entropy_context*
  store %struct.mbedtls_entropy_context* %1, %struct.mbedtls_entropy_context** %ctx, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %2, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -60, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  %cmp1 = icmp sgt i32 %3, 256
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  store i32 -60, i32* %ret, align 4
  br label %exit

if.end3:                                          ; preds = %do.body
  %4 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %call = call i32 @entropy_gather_internal(%struct.mbedtls_entropy_context* noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %exit

if.end6:                                          ; preds = %if.end3
  store i32 1, i32* %thresholds_reached, align 4
  store i64 0, i64* %strong_size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source_count = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %6, i32 0, i32 2
  %7 = load i32, i32* %source_count, align 8
  %cmp7 = icmp slt i32 %5, %7
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %8, i32 0, i32 3
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source, i64 0, i64 %idxprom
  %size = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx, i32 0, i32 2
  %10 = load i64, i64* %size, align 8
  %11 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source8 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %11, i32 0, i32 3
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source8, i64 0, i64 %idxprom9
  %threshold = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx10, i32 0, i32 3
  %13 = load i64, i64* %threshold, align 8
  %cmp11 = icmp ult i64 %10, %13
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store i32 0, i32* %thresholds_reached, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.body
  %14 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source14 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %14, i32 0, i32 3
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source14, i64 0, i64 %idxprom15
  %strong = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx16, i32 0, i32 4
  %16 = load i32, i32* %strong, align 8
  %cmp17 = icmp eq i32 %16, 1
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end13
  %17 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source19 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %17, i32 0, i32 3
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source19, i64 0, i64 %idxprom20
  %size22 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx21, i32 0, i32 2
  %19 = load i64, i64* %size22, align 8
  %20 = load i64, i64* %strong_size, align 8
  %add = add i64 %20, %19
  store i64 %add, i64* %strong_size, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %21 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %22 = load i32, i32* %thresholds_reached, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %do.cond
  %23 = load i64, i64* %strong_size, align 8
  %cmp25 = icmp ult i64 %23, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %24 = phi i1 [ true, %do.cond ], [ %cmp25, %lor.rhs ]
  br i1 %24, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %lor.end
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call26 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 64) #4
  %25 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %accumulator = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %25, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call28 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %accumulator, i8* noundef %arraydecay27) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.end
  br label %exit

if.end31:                                         ; preds = %do.end
  %26 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %accumulator32 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %26, i32 0, i32 1
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %accumulator32) #5
  %27 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %accumulator33 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %27, i32 0, i32 1
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %accumulator33) #5
  %28 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %accumulator34 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %28, i32 0, i32 1
  %call35 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %accumulator34, i32 noundef 0) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end31
  br label %exit

if.end38:                                         ; preds = %if.end31
  %29 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %accumulator39 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %29, i32 0, i32 1
  %arraydecay40 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call41 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %accumulator39, i8* noundef %arraydecay40, i64 noundef 64) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  br label %exit

if.end44:                                         ; preds = %if.end38
  %arraydecay45 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call47 = call i32 @mbedtls_sha512(i8* noundef %arraydecay45, i64 noundef 64, i8* noundef %arraydecay46, i32 noundef 0) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  br label %exit

if.end50:                                         ; preds = %if.end44
  store i32 0, i32* %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc59, %if.end50
  %30 = load i32, i32* %i, align 4
  %31 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source_count52 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %31, i32 0, i32 2
  %32 = load i32, i32* %source_count52, align 8
  %cmp53 = icmp slt i32 %30, %32
  br i1 %cmp53, label %for.body54, label %for.end61

for.body54:                                       ; preds = %for.cond51
  %33 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx, align 8
  %source55 = getelementptr inbounds %struct.mbedtls_entropy_context, %struct.mbedtls_entropy_context* %33, i32 0, i32 3
  %34 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %34 to i64
  %arrayidx57 = getelementptr inbounds [20 x %struct.mbedtls_entropy_source_state], [20 x %struct.mbedtls_entropy_source_state]* %source55, i64 0, i64 %idxprom56
  %size58 = getelementptr inbounds %struct.mbedtls_entropy_source_state, %struct.mbedtls_entropy_source_state* %arrayidx57, i32 0, i32 2
  store i64 0, i64* %size58, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body54
  %35 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %35, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond51, !llvm.loop !8

for.end61:                                        ; preds = %for.cond51
  %36 = load i8*, i8** %output.addr, align 8
  %arraydecay62 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %37 = load i64, i64* %len.addr, align 8
  %call63 = call i8* @memcpy(i8* noundef %36, i8* noundef %arraydecay62, i64 noundef %37) #4
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %for.end61, %if.then49, %if.then43, %if.then37, %if.then30, %if.then5, %if.then2
  %arraydecay64 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay64, i64 noundef 64) #5
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare dso_local i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_sha512(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_write_seed_file(%struct.mbedtls_entropy_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [64 x i8], align 16
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_entropy_context* %0 to i8*
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_entropy_func(i8* noundef %1, i8* noundef %arraydecay, i64 noundef 64) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -60, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -63, i32* %ret, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %3, i8* noundef null) #4
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i64 @fwrite(i8* noundef %arraydecay5, i64 noundef 1, i64 noundef 64, %struct._IO_FILE* noundef %4) #5
  %cmp7 = icmp ne i64 %call6, 64
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -63, i32* %ret, align 4
  br label %exit

if.end9:                                          ; preds = %if.end4
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay10, i64 noundef 64) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp11 = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %exit
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %6) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %exit
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_update_seed_file(%struct.mbedtls_entropy_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %n = alloca i64, align 8
  %buf = alloca [1024 x i8], align 16
  store %struct.mbedtls_entropy_context* %ctx, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -63, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %1, i8* noundef null) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %2, i64 noundef 0, i32 noundef 2) #5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %3) #5
  store i64 %call2, i64* %n, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef 0, i32 noundef 0) #5
  %5 = load i64, i64* %n, align 8
  %cmp4 = icmp ugt i64 %5, 1024
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i64 1024, i64* %n, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %6 = load i64, i64* %n, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef %6, %struct._IO_FILE* noundef %7) #5
  %8 = load i64, i64* %n, align 8
  %cmp8 = icmp ne i64 %call7, %8
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  store i32 -63, i32* %ret, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end6
  %9 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %10 = load i64, i64* %n, align 8
  %call11 = call i32 @mbedtls_entropy_update_manual(%struct.mbedtls_entropy_context* noundef %9, i8* noundef %arraydecay10, i64 noundef %10) #5
  store i32 %call11, i32* %ret, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %11) #5
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay14, i64 noundef 1024) #5
  %12 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %14 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %ctx.addr, align 8
  %15 = load i8*, i8** %path.addr, align 8
  %call18 = call i32 @mbedtls_entropy_write_seed_file(%struct.mbedtls_entropy_context* noundef %14, i8* noundef %15) #5
  store i32 %call18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_entropy_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_entropy_context, align 8
  %buf = alloca [64 x i8], align 16
  %acc = alloca [64 x i8], align 16
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 1, i32* %ret, align 4
  %0 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 64, i1 false)
  %1 = bitcast [64 x i8]* %acc to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 64, i1 false)
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %ctx) #5
  %call1 = call i32 @mbedtls_entropy_gather(%struct.mbedtls_entropy_context* noundef %ctx) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @mbedtls_entropy_add_source(%struct.mbedtls_entropy_context* noundef %ctx, i32 (i8*, i8*, i64, i64*)* noundef @entropy_dummy_source, i8* noundef null, i64 noundef 16, i32 noundef 0) #5
  store i32 %call5, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call9 = call i32 @mbedtls_entropy_update_manual(%struct.mbedtls_entropy_context* noundef %ctx, i8* noundef %arraydecay, i64 noundef 64) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end12
  %4 = load i64, i64* %i, align 8
  %cmp13 = icmp ult i64 %4, 8
  br i1 %cmp13, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.mbedtls_entropy_context* %ctx to i8*
  %arraydecay14 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call15 = call i32 @mbedtls_entropy_func(i8* noundef %5, i8* noundef %arraydecay14, i64 noundef 64) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  br label %cleanup

if.end18:                                         ; preds = %for.body
  store i64 0, i64* %j, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %6 = load i64, i64* %j, align 8
  %cmp20 = icmp ult i64 %6, 64
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %7 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 %7
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i64, i64* %j, align 8
  %arrayidx22 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %10 to i32
  %or = or i32 %conv23, %conv
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %11 = load i64, i64* %j, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond19, !llvm.loop !9

for.end:                                          ; preds = %for.cond19
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %12 = load i64, i64* %i, align 8
  %inc26 = add i64 %12, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end27:                                        ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc38, %for.end27
  %13 = load i64, i64* %j, align 8
  %cmp29 = icmp ult i64 %13, 64
  br i1 %cmp29, label %for.body31, label %for.end40

for.body31:                                       ; preds = %for.cond28
  %14 = load i64, i64* %j, align 8
  %arrayidx32 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %15 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body31
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end37:                                         ; preds = %for.body31
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %16 = load i64, i64* %j, align 8
  %inc39 = add i64 %16, 1
  store i64 %inc39, i64* %j, align 8
  br label %for.cond28, !llvm.loop !11

for.end40:                                        ; preds = %for.cond28
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %if.then36, %if.then17, %if.then11, %if.then7, %if.then3
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %ctx) #5
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp41 = icmp ne i32 %17, 0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %cleanup
  %18 = load i32, i32* %ret, align 4
  %cmp44 = icmp ne i32 %18, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then43
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end49

if.else:                                          ; preds = %if.then43
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %cleanup
  %19 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %19, 0
  %conv53 = zext i1 %cmp52 to i32
  ret i32 %conv53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entropy_dummy_source(i8* noundef %data, i8* noundef %output, i64 noundef %len, i64* noundef %olen) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8*, i8** %output.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i8* @memset(i8* noundef %1, i32 noundef 42, i64 noundef %2) #4
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 %3, i64* %4, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
