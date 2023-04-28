; ModuleID = 'hmac_drbg.c'
source_filename = "hmac_drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_hmac_drbg_context = type { %struct.mbedtls_md_context_t, [64 x i8], i32, i64, i32, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  HMAC_DRBG (PR = True) : \00", align 1
@test_offset = internal global i64 0, align 8
@entropy_pr = internal constant [56 x i8] c"\A0\C9\ABX\F1\E2\E5\A4\DE>\BDO\F7>\9C[d\EF\D8\CA\02\8C\F8\11H\A5\84\FEi\ABZ\EEB\AAMB\17`\99\D4^\13\97\DC@M\86\A3{\F5YTuiQ\E4", align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@result_pr = internal constant [80 x i8] c"\9A\00\A2\D0\0E\D5\9B\FE1\EC\B19\9B`\81H\D1\96\9D%\0D<\1E\94\10\10\98\12\93%\CA\B8\FC\CC-Ts\19p\C0\10z\A4\89%\19\95^K\C6\00\1D\7FNj+\F8\A3\01\ABF\05\\\09\A6q\88\F1\A7@\EE\F3\E1\\\02\9BD\AF\03D", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  HMAC_DRBG (PR = False) : \00", align 1
@entropy_nopr = internal constant [40 x i8] c"y4\9B\BF|\DD\A5y\95W\86f!\C9\13\83\11Fs:\BF\8C5\C8\C7![[\96\C4\8E\9B3\8Ct\E3\E9\9D\FE\DF", align 16
@result_nopr = internal constant [80 x i8] c"\C6\A1j\B8\D4 po\0F4\AB\7F\ECZ\DC\A9\D8\CA:\13>\15\9C\A6\ACC\C6\F8\A2\BE\22\83JL\0A\0A\FF\B1\0Dq\94\F1\C1\A5\CFs\22\EC\1A\E0\96N\D4\BF\12'F\E0\87\FD\B5\B3\E9\1B4\93\D5\BB\98\FA\EDI\E8_\13\0F\C8\A4Y\B7", align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_hmac_drbg_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 128) #4
  %2 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %2, i32 0, i32 5
  store i32 10000, i32* %reseed_interval, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %add_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %md_len = alloca i64, align 8
  %rounds = alloca i8, align 1
  %sep = alloca [1 x i8], align 1
  %K = alloca [64 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %0, i32 0, i32 0
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %md_ctx, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #5
  %conv = zext i8 %call to i64
  store i64 %conv, i64* %md_len, align 8
  %2 = load i8*, i8** %additional.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i64, i64* %add_len.addr, align 8
  %cmp2 = icmp ne i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %5 = zext i1 %4 to i64
  %cond = select i1 %4, i32 2, i32 1
  %conv4 = trunc i32 %cond to i8
  store i8 %conv4, i8* %rounds, align 1
  store i32 -20736, i32* %ret, align 4
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %arrayidx5 = getelementptr inbounds [1 x i8], [1 x i8]* %sep, i64 0, i64 0
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8, i8* %rounds, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp slt i32 %conv6, %conv7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %8, i32 0, i32 0
  %call11 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx10) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %exit

if.end:                                           ; preds = %for.body
  %9 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx14 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %10, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %V, i64 0, i64 0
  %11 = load i64, i64* %md_len, align 8
  %call15 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx14, i8* noundef %arraydecay, i64 noundef %11) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  br label %exit

if.end19:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx20 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %12, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [1 x i8], [1 x i8]* %sep, i64 0, i64 0
  %call22 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx20, i8* noundef %arraydecay21, i64 noundef 1) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  br label %exit

if.end26:                                         ; preds = %if.end19
  %13 = load i8, i8* %rounds, align 1
  %conv27 = zext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 2
  br i1 %cmp28, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end26
  %14 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx31 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %14, i32 0, i32 0
  %15 = load i8*, i8** %additional.addr, align 8
  %16 = load i64, i64* %add_len.addr, align 8
  %call32 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx31, i8* noundef %15, i64 noundef %16) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  br label %exit

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  %17 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx38 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %17, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %K, i64 0, i64 0
  %call40 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx38, i8* noundef %arraydecay39) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  br label %exit

if.end44:                                         ; preds = %if.end37
  %18 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx45 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %18, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [64 x i8], [64 x i8]* %K, i64 0, i64 0
  %19 = load i64, i64* %md_len, align 8
  %call47 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx45, i8* noundef %arraydecay46, i64 noundef %19) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end44
  br label %exit

if.end51:                                         ; preds = %if.end44
  %20 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx52 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V53 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %21, i32 0, i32 1
  %arraydecay54 = getelementptr inbounds [64 x i8], [64 x i8]* %V53, i64 0, i64 0
  %22 = load i64, i64* %md_len, align 8
  %call55 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx52, i8* noundef %arraydecay54, i64 noundef %22) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end51
  br label %exit

if.end59:                                         ; preds = %if.end51
  %23 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx60 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V61 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %24, i32 0, i32 1
  %arraydecay62 = getelementptr inbounds [64 x i8], [64 x i8]* %V61, i64 0, i64 0
  %call63 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx60, i8* noundef %arraydecay62) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end59
  br label %exit

if.end67:                                         ; preds = %if.end59
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %arrayidx68 = getelementptr inbounds [1 x i8], [1 x i8]* %sep, i64 0, i64 0
  %25 = load i8, i8* %arrayidx68, align 1
  %inc = add i8 %25, 1
  store i8 %inc, i8* %arrayidx68, align 1
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then66, %if.then58, %if.then50, %if.then43, %if.then35, %if.then25, %if.then18, %if.then
  %arraydecay69 = getelementptr inbounds [64 x i8], [64 x i8]* %K, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay69, i64 noundef 64) #5
  %26 = load i32, i32* %ret, align 4
  ret i32 %26
}

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #2

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_seed_buf(%struct.mbedtls_hmac_drbg_context* noundef %ctx, %struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %data, i64 noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %1, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx1 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %V, i64 0, i64 0
  %5 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call2 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %5) #5
  %conv = zext i8 %call2 to i64
  %call3 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx1, i8* noundef %arraydecay, i64 noundef %conv) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V8 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %7, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %V8, i64 0, i64 0
  %8 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call10 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %8) #5
  %conv11 = zext i8 %call10 to i64
  %call12 = call i8* @memset(i8* noundef %arraydecay9, i32 noundef 1, i64 noundef %conv11) #4
  %9 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %data_len.addr, align 8
  %call13 = call i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %9, i8* noundef %10, i64 noundef %11) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end7
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then6, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_reseed(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %1 = load i8*, i8** %additional.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @hmac_drbg_reseed_core(%struct.mbedtls_hmac_drbg_context* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_drbg_reseed_core(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef %additional, i64 noundef %len, i32 noundef %use_nonce) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %additional.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %use_nonce.addr = alloca i32, align 4
  %seed = alloca [384 x i8], align 16
  %seedlen = alloca i64, align 8
  %ret = alloca i32, align 4
  %total_entropy_len = alloca i64, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %use_nonce, i32* %use_nonce.addr, align 4
  store i64 0, i64* %seedlen, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %use_nonce.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %1, i32 0, i32 3
  %2 = load i64, i64* %entropy_len, align 8
  store i64 %2, i64* %total_entropy_len, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len1 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %3, i32 0, i32 3
  %4 = load i64, i64* %entropy_len1, align 8
  %mul = mul i64 %4, 3
  %div = udiv i64 %mul, 2
  store i64 %div, i64* %total_entropy_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ugt i64 %5, 256
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %total_entropy_len, align 8
  %7 = load i64, i64* %len.addr, align 8
  %add = add i64 %6, %7
  %cmp3 = icmp ugt i64 %add, 384
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -5, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 384) #4
  %8 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %f_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %8, i32 0, i32 6
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy, align 8
  %10 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %p_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %10, i32 0, i32 7
  %11 = load i8*, i8** %p_entropy, align 8
  %arraydecay6 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %12 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len7 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %12, i32 0, i32 3
  %13 = load i64, i64* %entropy_len7, align 8
  %call8 = call i32 %9(i8* noundef %11, i8* noundef %arraydecay6, i64 noundef %13) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  store i32 -9, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %14 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len12 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %14, i32 0, i32 3
  %15 = load i64, i64* %entropy_len12, align 8
  %16 = load i64, i64* %seedlen, align 8
  %add13 = add i64 %16, %15
  store i64 %add13, i64* %seedlen, align 8
  %17 = load i32, i32* %use_nonce.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end11
  %18 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %f_entropy15 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %18, i32 0, i32 6
  %19 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy15, align 8
  %20 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %p_entropy16 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %20, i32 0, i32 7
  %21 = load i8*, i8** %p_entropy16, align 8
  %arraydecay17 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %22 = load i64, i64* %seedlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 %22
  %23 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len18 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %23, i32 0, i32 3
  %24 = load i64, i64* %entropy_len18, align 8
  %div19 = udiv i64 %24, 2
  %call20 = call i32 %19(i8* noundef %21, i8* noundef %add.ptr, i64 noundef %div19) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then14
  store i32 -9, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then14
  %25 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len24 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %25, i32 0, i32 3
  %26 = load i64, i64* %entropy_len24, align 8
  %div25 = udiv i64 %26, 2
  %27 = load i64, i64* %seedlen, align 8
  %add26 = add i64 %27, %div25
  store i64 %add26, i64* %seedlen, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end11
  %28 = load i8*, i8** %additional.addr, align 8
  %cmp28 = icmp ne i8* %28, null
  br i1 %cmp28, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end27
  %29 = load i64, i64* %len.addr, align 8
  %cmp29 = icmp ne i64 %29, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %land.lhs.true
  %arraydecay31 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %30 = load i64, i64* %seedlen, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 %30
  %31 = load i8*, i8** %additional.addr, align 8
  %32 = load i64, i64* %len.addr, align 8
  %call33 = call i8* @memcpy(i8* noundef %add.ptr32, i8* noundef %31, i64 noundef %32) #4
  %33 = load i64, i64* %len.addr, align 8
  %34 = load i64, i64* %seedlen, align 8
  %add34 = add i64 %34, %33
  store i64 %add34, i64* %seedlen, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %land.lhs.true, %if.end27
  %35 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %arraydecay36 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %36 = load i64, i64* %seedlen, align 8
  %call37 = call i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %35, i8* noundef %arraydecay36, i64 noundef %36) #5
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %exit

if.end40:                                         ; preds = %if.end35
  %37 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %37, i32 0, i32 2
  store i32 1, i32* %reseed_counter, align 8
  br label %exit

exit:                                             ; preds = %if.end40, %if.then39
  %arraydecay41 = getelementptr inbounds [384 x i8], [384 x i8]* %seed, i64 0, i64 0
  %38 = load i64, i64* %seedlen, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay41, i64 noundef %38) #5
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then22, %if.then10, %if.then4
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %ctx, %struct.mbedtls_md_info_t* noundef %md_info, i32 (i8*, i8*, i64)* noundef %f_entropy, i8* noundef %p_entropy, i8* noundef %custom, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %f_entropy.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_entropy.addr = alloca i8*, align 8
  %custom.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %md_size = alloca i64, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i32 (i8*, i8*, i64)* %f_entropy, i32 (i8*, i8*, i64)** %f_entropy.addr, align 8
  store i8* %p_entropy, i8** %p_entropy.addr, align 8
  store i8* %custom, i8** %custom.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %1, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call1 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %3) #5
  %conv = zext i8 %call1 to i64
  store i64 %conv, i64* %md_size, align 8
  %4 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx2 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %V, i64 0, i64 0
  %6 = load i64, i64* %md_size, align 8
  %call3 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx2, i8* noundef %arraydecay, i64 noundef %6) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %V8 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %8, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %V8, i64 0, i64 0
  %9 = load i64, i64* %md_size, align 8
  %call10 = call i8* @memset(i8* noundef %arraydecay9, i32 noundef 1, i64 noundef %9) #4
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy.addr, align 8
  %11 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %f_entropy11 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %11, i32 0, i32 6
  store i32 (i8*, i8*, i64)* %10, i32 (i8*, i8*, i64)** %f_entropy11, align 8
  %12 = load i8*, i8** %p_entropy.addr, align 8
  %13 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %p_entropy12 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %13, i32 0, i32 7
  store i8* %12, i8** %p_entropy12, align 8
  %14 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %14, i32 0, i32 3
  %15 = load i64, i64* %entropy_len, align 8
  %cmp13 = icmp eq i64 %15, 0
  br i1 %cmp13, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end7
  %16 = load i64, i64* %md_size, align 8
  %cmp16 = icmp ule i64 %16, 20
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then15
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  %17 = load i64, i64* %md_size, align 8
  %cmp18 = icmp ule i64 %17, 28
  %18 = zext i1 %cmp18 to i64
  %cond = select i1 %cmp18, i32 24, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ 16, %cond.true ], [ %cond, %cond.false ]
  %conv21 = sext i32 %cond20 to i64
  %19 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len22 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %19, i32 0, i32 3
  store i64 %conv21, i64* %entropy_len22, align 8
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.end7
  %20 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %21 = load i8*, i8** %custom.addr, align 8
  %22 = load i64, i64* %len.addr, align 8
  %call24 = call i32 @hmac_drbg_reseed_core(%struct.mbedtls_hmac_drbg_context* noundef %20, i8* noundef %21, i64 noundef %22, i32 noundef 1) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then6, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_set_prediction_resistance(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i32 noundef %resistance) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %resistance.addr = alloca i32, align 4
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i32 %resistance, i32* %resistance.addr, align 4
  %0 = load i32, i32* %resistance.addr, align 4
  %1 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %1, i32 0, i32 4
  store i32 %0, i32* %prediction_resistance, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_set_entropy_len(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %1, i32 0, i32 3
  store i64 %0, i64* %entropy_len, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_set_reseed_interval(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i32 noundef %interval) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %interval.addr = alloca i32, align 4
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i32 %interval, i32* %interval.addr, align 4
  %0 = load i32, i32* %interval.addr, align 4
  %1 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %1, i32 0, i32 5
  store i32 %0, i32* %reseed_interval, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_random_with_add(i8* noundef %p_rng, i8* noundef %output, i64 noundef %out_len, i8* noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_rng.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %out_len.addr = alloca i64, align 8
  %additional.addr = alloca i8*, align 8
  %add_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %md_len = alloca i64, align 8
  %left = alloca i64, align 8
  %out = alloca i8*, align 8
  %use_len = alloca i64, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %out_len, i64* %out_len.addr, align 8
  store i8* %additional, i8** %additional.addr, align 8
  store i64 %add_len, i64* %add_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_rng.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_hmac_drbg_context*
  store %struct.mbedtls_hmac_drbg_context* %1, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %2 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %2, i32 0, i32 0
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %md_ctx, i32 0, i32 0
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %3) #5
  %conv = zext i8 %call to i64
  store i64 %conv, i64* %md_len, align 8
  %4 = load i64, i64* %out_len.addr, align 8
  store i64 %4, i64* %left, align 8
  %5 = load i8*, i8** %output.addr, align 8
  store i8* %5, i8** %out, align 8
  %6 = load i64, i64* %out_len.addr, align 8
  %cmp = icmp ugt i64 %6, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %add_len.addr, align 8
  %cmp2 = icmp ugt i64 %7, 256
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %f_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %8, i32 0, i32 6
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_entropy, align 8
  %cmp6 = icmp ne i32 (i8*, i8*, i64)* %9, null
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end5
  %10 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %10, i32 0, i32 4
  %11 = load i32, i32* %prediction_resistance, align 8
  %cmp8 = icmp eq i32 %11, 1
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %reseed_counter = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %12, i32 0, i32 2
  %13 = load i32, i32* %reseed_counter, align 8
  %14 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %14, i32 0, i32 5
  %15 = load i32, i32* %reseed_interval, align 4
  %cmp10 = icmp sgt i32 %13, %15
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %17 = load i8*, i8** %additional.addr, align 8
  %18 = load i64, i64* %add_len.addr, align 8
  %call13 = call i32 @mbedtls_hmac_drbg_reseed(%struct.mbedtls_hmac_drbg_context* noundef %16, i8* noundef %17, i64 noundef %18) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then12
  store i64 0, i64* %add_len.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %lor.lhs.false, %if.end5
  %20 = load i8*, i8** %additional.addr, align 8
  %cmp19 = icmp ne i8* %20, null
  br i1 %cmp19, label %land.lhs.true21, label %if.end30

land.lhs.true21:                                  ; preds = %if.end18
  %21 = load i64, i64* %add_len.addr, align 8
  %cmp22 = icmp ne i64 %21, 0
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %land.lhs.true21
  %22 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %23 = load i8*, i8** %additional.addr, align 8
  %24 = load i64, i64* %add_len.addr, align 8
  %call25 = call i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %22, i8* noundef %23, i64 noundef %24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  br label %exit

if.end29:                                         ; preds = %if.then24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true21, %if.end18
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %if.end30
  %25 = load i64, i64* %left, align 8
  %cmp31 = icmp ne i64 %25, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %left, align 8
  %27 = load i64, i64* %md_len, align 8
  %cmp33 = icmp ugt i64 %26, %27
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %28 = load i64, i64* %md_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %29 = load i64, i64* %left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %28, %cond.true ], [ %29, %cond.false ]
  store i64 %cond, i64* %use_len, align 8
  %30 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %md_ctx35 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %30, i32 0, i32 0
  %call36 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx35) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %cond.end
  br label %exit

if.end40:                                         ; preds = %cond.end
  %31 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %md_ctx41 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %32, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %V, i64 0, i64 0
  %33 = load i64, i64* %md_len, align 8
  %call42 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx41, i8* noundef %arraydecay, i64 noundef %33) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  br label %exit

if.end46:                                         ; preds = %if.end40
  %34 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %md_ctx47 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %V48 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %35, i32 0, i32 1
  %arraydecay49 = getelementptr inbounds [64 x i8], [64 x i8]* %V48, i64 0, i64 0
  %call50 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx47, i8* noundef %arraydecay49) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  br label %exit

if.end54:                                         ; preds = %if.end46
  %36 = load i8*, i8** %out, align 8
  %37 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %V55 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %37, i32 0, i32 1
  %arraydecay56 = getelementptr inbounds [64 x i8], [64 x i8]* %V55, i64 0, i64 0
  %38 = load i64, i64* %use_len, align 8
  %call57 = call i8* @memcpy(i8* noundef %36, i8* noundef %arraydecay56, i64 noundef %38) #4
  %39 = load i64, i64* %use_len, align 8
  %40 = load i8*, i8** %out, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %add.ptr, i8** %out, align 8
  %41 = load i64, i64* %use_len, align 8
  %42 = load i64, i64* %left, align 8
  %sub = sub i64 %42, %41
  store i64 %sub, i64* %left, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %43 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %44 = load i8*, i8** %additional.addr, align 8
  %45 = load i64, i64* %add_len.addr, align 8
  %call58 = call i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %43, i8* noundef %44, i64 noundef %45) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %while.end
  br label %exit

if.end62:                                         ; preds = %while.end
  %46 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %reseed_counter63 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %46, i32 0, i32 2
  %47 = load i32, i32* %reseed_counter63, align 8
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %reseed_counter63, align 8
  br label %exit

exit:                                             ; preds = %if.end62, %if.then61, %if.then53, %if.then45, %if.then39, %if.then28
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then16, %if.then4, %if.then
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_random(i8* noundef %p_rng, i8* noundef %output, i64 noundef %out_len) #0 {
entry:
  %p_rng.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %out_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %out_len, i64* %out_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_rng.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_hmac_drbg_context*
  store %struct.mbedtls_hmac_drbg_context* %1, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %2 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx, align 8
  %3 = bitcast %struct.mbedtls_hmac_drbg_context* %2 to i8*
  %4 = load i8*, i8** %output.addr, align 8
  %5 = load i64, i64* %out_len.addr, align 8
  %call = call i32 @mbedtls_hmac_drbg_random_with_add(i8* noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef null, i64 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_hmac_drbg_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %1, i32 0, i32 0
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %2 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_hmac_drbg_context* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 128) #5
  %4 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, %struct.mbedtls_hmac_drbg_context* %4, i32 0, i32 5
  store i32 10000, i32* %reseed_interval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_write_seed_file(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %1, i8* noundef null) #4
  %2 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_hmac_drbg_context* %2 to i8*
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %call1 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %3, i8* noundef %arraydecay, i64 noundef 256) #5
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
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -7, i32* %ret, align 4
  br label %exit

if.end9:                                          ; preds = %if.end4
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* noundef %5) #5
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay11, i64 noundef 256) #5
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
define dso_local i32 @mbedtls_hmac_drbg_update_seed_file(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_hmac_drbg_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %n = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c = alloca i8, align 1
  store %struct.mbedtls_hmac_drbg_context* %ctx, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval, align 4
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
  store i32 -5, i32* %ret, align 4
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
  store i32 -7, i32* %ret, align 4
  br label %exit

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* noundef %6) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %7 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  %8 = load i64, i64* %n, align 8
  %call12 = call i32 @mbedtls_hmac_drbg_update(%struct.mbedtls_hmac_drbg_context* noundef %7, i8* noundef %arraydecay11, i64 noundef %8) #5
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
  %13 = load %struct.mbedtls_hmac_drbg_context*, %struct.mbedtls_hmac_drbg_context** %ctx.addr, align 8
  %14 = load i8*, i8** %path.addr, align 8
  %call21 = call i32 @mbedtls_hmac_drbg_write_seed_file(%struct.mbedtls_hmac_drbg_context* noundef %13, i8* noundef %14) #5
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
define dso_local i32 @mbedtls_hmac_drbg_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_hmac_drbg_context, align 8
  %buf = alloca [80 x i8], align 16
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 2) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  call void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* @test_offset, align 8
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call2 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %ctx, %struct.mbedtls_md_info_t* noundef %1, i32 (i8*, i8*, i64)* noundef @hmac_drbg_self_test_entropy, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @entropy_pr, i64 0, i64 0), i8* noundef null, i64 noundef 0) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp5 = icmp ne i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  call void @mbedtls_hmac_drbg_set_prediction_resistance(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i32 noundef 1) #5
  %3 = bitcast %struct.mbedtls_hmac_drbg_context* %ctx to i8*
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call10 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %3, i8* noundef %arraydecay, i64 noundef 80) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp13 = icmp ne i32 %4, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %5 = bitcast %struct.mbedtls_hmac_drbg_context* %ctx to i8*
  %arraydecay18 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call19 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %5, i8* noundef %arraydecay18, i64 noundef 80) #5
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %6 = load i32, i32* %verbose.addr, align 4
  %cmp22 = icmp ne i32 %6, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21
  store i32 1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  %arraydecay27 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call28 = call i32 @memcmp(i8* noundef %arraydecay27, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @result_pr, i64 0, i64 0), i64 noundef 80) #6
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end26
  %7 = load i32, i32* %verbose.addr, align 4
  %cmp31 = icmp ne i32 %7, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end26
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp36 = icmp ne i32 %8, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %9 = load i32, i32* %verbose.addr, align 4
  %cmp40 = icmp ne i32 %9, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  call void @mbedtls_hmac_drbg_init(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  store i64 0, i64* @test_offset, align 8
  %10 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call44 = call i32 @mbedtls_hmac_drbg_seed(%struct.mbedtls_hmac_drbg_context* noundef %ctx, %struct.mbedtls_md_info_t* noundef %10, i32 (i8*, i8*, i64)* noundef @hmac_drbg_self_test_entropy, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @entropy_nopr, i64 0, i64 0), i8* noundef null, i64 noundef 0) #5
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end43
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp47 = icmp ne i32 %11, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then46
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then46
  store i32 1, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end43
  %call52 = call i32 @mbedtls_hmac_drbg_reseed(%struct.mbedtls_hmac_drbg_context* noundef %ctx, i8* noundef null, i64 noundef 0) #5
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end51
  %12 = load i32, i32* %verbose.addr, align 4
  %cmp55 = icmp ne i32 %12, 0
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then54
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then54
  store i32 1, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end51
  %13 = bitcast %struct.mbedtls_hmac_drbg_context* %ctx to i8*
  %arraydecay60 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call61 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %13, i8* noundef %arraydecay60, i64 noundef 80) #5
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end59
  %14 = load i32, i32* %verbose.addr, align 4
  %cmp64 = icmp ne i32 %14, 0
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then63
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then63
  store i32 1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end59
  %15 = bitcast %struct.mbedtls_hmac_drbg_context* %ctx to i8*
  %arraydecay69 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call70 = call i32 @mbedtls_hmac_drbg_random(i8* noundef %15, i8* noundef %arraydecay69, i64 noundef 80) #5
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end77

if.then72:                                        ; preds = %if.end68
  %16 = load i32, i32* %verbose.addr, align 4
  %cmp73 = icmp ne i32 %16, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then72
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then72
  store i32 1, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end68
  %arraydecay78 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  %call79 = call i32 @memcmp(i8* noundef %arraydecay78, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @result_nopr, i64 0, i64 0), i64 noundef 80) #6
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.end77
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp82 = icmp ne i32 %17, 0
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then81
  %call84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then81
  store i32 1, i32* %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end77
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  call void @mbedtls_hmac_drbg_free(%struct.mbedtls_hmac_drbg_context* noundef %ctx) #5
  %18 = load i32, i32* %verbose.addr, align 4
  %cmp87 = icmp ne i32 %18, 0
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end86
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp91 = icmp ne i32 %19, 0
  br i1 %cmp91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end90
  %call93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.end85, %if.end76, %if.end67, %if.end58, %if.end50, %if.end34, %if.end25, %if.end16, %if.end8
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_drbg_self_test_entropy(i8* noundef %data, i8* noundef %buf, i64 noundef %len) #0 {
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
