; ModuleID = 'nist_kw.c'
source_filename = "nist_kw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_nist_kw_context = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque

@NIST_KW_ICV1 = internal constant [8 x i8] c"\A6\A6\A6\A6\A6\A6\A6\A6", align 1
@NIST_KW_ICV2 = internal constant [4 x i8] c"\A6YY\A6", align 1
@.str = private unnamed_addr constant [13 x i8] c"  KW-AES-%u \00", align 1
@key_len = internal constant [3 x i32] [i32 16, i32 24, i32 32], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"  KW: setup failed \00", align 1
@kw_msg_len = internal constant [3 x i64] [i64 16, i64 40, i64 24], align 16
@kw_out_len = internal constant [3 x i64] [i64 24, i64 48, i64 32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"failed. \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"  KWP-AES-%u \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"  KWP: setup failed \00", align 1
@kwp_msg_len = internal constant [3 x i64] [i64 9, i64 31, i64 1], align 16
@kwp_out_len = internal constant [3 x i64] [i64 24, i64 40, i64 16], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kw_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"uu\DA:\93`|\C2\BF\D8\CE\C7\AA\DF\D9\A6", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"-\85&\08\1D\02\FB[\85\F6\9A\C2\86\EC\D5}@\DF]\F3IGD\D3", [8 x i8] zeroinitializer }>, [32 x i8] c"\11*\D4\1BHV\C7%J\98H\D3\0F\DDx3[\03\9AH\A8\96,M\1C\B7\8E\AB\D5\DA\D7\88" }>, align 16
@kw_msg = internal constant <{ <{ [16 x i8], [24 x i8] }>, [40 x i8], <{ [24 x i8], [16 x i8] }> }> <{ <{ [16 x i8], [24 x i8] }> <{ [16 x i8] c"B\13m<8J>\EA\C9Z\06o\D2\8F\ED?", [24 x i8] zeroinitializer }>, [40 x i8] c"\95\C1\1B\F55:\FE\DB\98\FD\D6\C8\CAo\DBm\A5Kt\B4\99\0F\DCE\C0\9D\15\8FQ\CEb\9D\E2\AF&\E3%\0EkL", <{ [24 x i8], [16 x i8] }> <{ [24 x i8] c"\1B \BF\19\90\B0e\D7\98\E1\B3\22d\ADP\A8tt\92\BA\09\A0M\D1", [16 x i8] zeroinitializer }> }>, align 16
@kw_res = internal constant <{ <{ [24 x i8], [24 x i8] }>, [48 x i8], <{ [32 x i8], [16 x i8] }> }> <{ <{ [24 x i8], [24 x i8] }> <{ [24 x i8] c"\03\1Fk\D7\E6\1Ed=\F6\85\94\81od\CA\A3\F5o\AB\EA%H\F5\FB", [24 x i8] zeroinitializer }>, [48 x i8] c"D<o\15\09\83q\91>\\\81L\A1\A0B\ECh/{\13m$:MlBo\C6\97\15c\E8\A1JU\8E\09d\16\19\BF\03\FC\AF\90\B1\FC-", <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\BA\8A%\9AG\1Bx}\D5\D5@\EC%\D4=\87 \0F\DA\DCm\1F\05\D9\16XO\A9\F6\CB\F5\12", [16 x i8] zeroinitializer }> }>, align 16
@kwp_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"xe\E2\0F<!e\9A\B4i\0Bb\9C\DF<\C4", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\F5\F8\96\A3\BD/J\98#\EF\16+\00\B8\05\D7\DE\1E\A4f&\96\A2X", [8 x i8] zeroinitializer }>, [32 x i8] c"\95\DA'\00\CAo\D9\A5%T\EE*\8D\F18o[\94\A1\A6\0E\D8\A4\AE\F6\0A\8Da\AB_\22Z" }>, align 16
@kwp_msg = internal constant <{ <{ [9 x i8], [22 x i8] }>, [31 x i8], <{ i8, [30 x i8] }> }> <{ <{ [9 x i8], [22 x i8] }> <{ [9 x i8] c"\BDhC\D4 7\8D\C8\96", [22 x i8] zeroinitializer }>, [31 x i8] c"l\CD\D5\85\18@\97\EB\D5\C3\AF>G\D0,\19\14{M\99_\96Cf\91Vu\8C\13\16\8F", <{ i8, [30 x i8] }> <{ i8 -47, [30 x i8] zeroinitializer }> }>, align 16
@kwp_res = internal constant <{ <{ [23 x i8], [25 x i8] }>, <{ [40 x i8], [8 x i8] }>, <{ [16 x i8], [32 x i8] }> }> <{ <{ [23 x i8], [25 x i8] }> <{ [23 x i8] c"A\EC\A9V\D4\AA\04~\B5\CFN\FEe\96a\E7M\B6\F8\C5d\E25", [25 x i8] zeroinitializer }>, <{ [40 x i8], [8 x i8] }> <{ [40 x i8] c"N\9B\C2\BC\BCl\1E\13\D35\BC\C0\F7sj\88\FA\87Sf\15\BB\8Ec\8B\CC\81f\84h\17\90g\CF\A9\8A\9D\0E3&", [8 x i8] zeroinitializer }>, <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\06\BAz\E6\F3$\8C\FD\CF&u\07\FA\00\1B\C4", [32 x i8] zeroinitializer }> }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_nist_kw_init(%struct.mbedtls_nist_kw_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_nist_kw_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 96) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef %cipher, i8* noundef %key, i32 noundef %keybits, i32 noundef %is_wrap) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  %cipher.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %is_wrap.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  store i32 %cipher, i32* %cipher.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i32 %is_wrap, i32* %is_wrap.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %cipher.addr, align 4
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef %0, i32 noundef %1, i32 noundef 1) #5
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %block_size, align 8
  %cmp1 = icmp ne i32 %4, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %cipher.addr, align 4
  %cmp4 = icmp ne i32 %5, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -24704, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %6, i32 0, i32 0
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %7 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx7 = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call8 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx7, %struct.mbedtls_cipher_info_t* noundef %8) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %10 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx12 = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %10, i32 0, i32 0
  %11 = load i8*, i8** %key.addr, align 8
  %12 = load i32, i32* %keybits.addr, align 4
  %13 = load i32, i32* %is_wrap.addr, align 4
  %tobool = icmp ne i32 %13, 0
  %14 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %call13 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx12, i8* noundef %11, i32 noundef %12, i32 noundef %cond) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then10, %if.then5, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_nist_kw_free(%struct.mbedtls_nist_kw_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %0, i32 0, i32 0
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #5
  %1 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_nist_kw_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 96) #5
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_nist_kw_wrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef %mode, i8* noundef %input, i64 noundef %in_len, i8* noundef %output, i64* noundef %out_len, i64 noundef %out_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %in_len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %out_size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %semiblocks = alloca i64, align 8
  %s = alloca i64, align 8
  %olen = alloca i64, align 8
  %padlen = alloca i64, align 8
  %t = alloca i64, align 8
  %outbuff = alloca [16 x i8], align 16
  %inbuff = alloca [16 x i8], align 16
  %R2 = alloca i8*, align 8
  %A = alloca i8*, align 8
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %in_len, i64* %in_len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  store i64 %out_size, i64* %out_size.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %semiblocks, align 8
  store i64 0, i64* %padlen, align 8
  store i64 0, i64* %t, align 8
  %0 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %out_size.addr, align 8
  %3 = load i64, i64* %in_len.addr, align 8
  %add = add i64 %3, 8
  %cmp1 = icmp ult i64 %2, %add
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %in_len.addr, align 8
  %cmp3 = icmp ult i64 %4, 16
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %in_len.addr, align 8
  %cmp4 = icmp ugt i64 %5, 144115188075855864
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load i64, i64* %in_len.addr, align 8
  %rem = urem i64 %6, 8
  %cmp6 = icmp ne i64 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i8* @memcpy(i8* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @NIST_KW_ICV1, i64 0, i64 0), i64 noundef 8) #4
  %8 = load i8*, i8** %output.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %in_len.addr, align 8
  %call9 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %9, i64 noundef %10) #4
  br label %if.end46

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %in_len.addr, align 8
  %rem10 = urem i64 %11, 8
  %cmp11 = icmp ne i64 %rem10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  %12 = load i64, i64* %in_len.addr, align 8
  %rem13 = urem i64 %12, 8
  %sub = sub i64 8, %rem13
  store i64 %sub, i64* %padlen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  %13 = load i64, i64* %out_size.addr, align 8
  %14 = load i64, i64* %in_len.addr, align 8
  %add15 = add i64 %14, 8
  %15 = load i64, i64* %padlen, align 8
  %add16 = add i64 %add15, %15
  %cmp17 = icmp ult i64 %13, %add16
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %16 = load i64, i64* %in_len.addr, align 8
  %cmp20 = icmp ult i64 %16, 1
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end19
  %17 = load i64, i64* %in_len.addr, align 8
  %cmp22 = icmp ugt i64 %17, 4294967295
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false21, %if.end19
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false21
  %18 = load i8*, i8** %output.addr, align 8
  %call25 = call i8* @memcpy(i8* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @NIST_KW_ICV2, i64 0, i64 0), i64 noundef 4) #4
  %19 = load i64, i64* %in_len.addr, align 8
  %and = and i64 %19, 4294967295
  %shr = lshr i64 %and, 24
  %and26 = and i64 %shr, 255
  %conv = trunc i64 %and26 to i8
  %20 = load i8*, i8** %output.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 4
  store i8 %conv, i8* %arrayidx, align 1
  %21 = load i64, i64* %in_len.addr, align 8
  %and27 = and i64 %21, 4294967295
  %shr28 = lshr i64 %and27, 16
  %and29 = and i64 %shr28, 255
  %conv30 = trunc i64 %and29 to i8
  %22 = load i8*, i8** %output.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 5
  store i8 %conv30, i8* %arrayidx31, align 1
  %23 = load i64, i64* %in_len.addr, align 8
  %and32 = and i64 %23, 4294967295
  %shr33 = lshr i64 %and32, 8
  %and34 = and i64 %shr33, 255
  %conv35 = trunc i64 %and34 to i8
  %24 = load i8*, i8** %output.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i64 6
  store i8 %conv35, i8* %arrayidx36, align 1
  %25 = load i64, i64* %in_len.addr, align 8
  %and37 = and i64 %25, 4294967295
  %and38 = and i64 %and37, 255
  %conv39 = trunc i64 %and38 to i8
  %26 = load i8*, i8** %output.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %26, i64 7
  store i8 %conv39, i8* %arrayidx40, align 1
  %27 = load i8*, i8** %output.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %27, i64 8
  %28 = load i8*, i8** %input.addr, align 8
  %29 = load i64, i64* %in_len.addr, align 8
  %call42 = call i8* @memcpy(i8* noundef %add.ptr41, i8* noundef %28, i64 noundef %29) #4
  %30 = load i8*, i8** %output.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %30, i64 8
  %31 = load i64, i64* %in_len.addr, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 %31
  %32 = load i64, i64* %padlen, align 8
  %call45 = call i8* @memset(i8* noundef %add.ptr44, i32 noundef 0, i64 noundef %32) #4
  br label %if.end46

if.end46:                                         ; preds = %if.end24, %if.end8
  %33 = load i64, i64* %in_len.addr, align 8
  %34 = load i64, i64* %padlen, align 8
  %add47 = add i64 %33, %34
  %div = udiv i64 %add47, 8
  %add48 = add i64 %div, 1
  store i64 %add48, i64* %semiblocks, align 8
  %35 = load i64, i64* %semiblocks, align 8
  %sub49 = sub i64 %35, 1
  %mul = mul i64 6, %sub49
  store i64 %mul, i64* %s, align 8
  %36 = load i32, i32* %mode.addr, align 4
  %cmp50 = icmp eq i32 %36, 1
  br i1 %cmp50, label %land.lhs.true, label %if.else62

land.lhs.true:                                    ; preds = %if.end46
  %37 = load i64, i64* %in_len.addr, align 8
  %cmp52 = icmp ule i64 %37, 8
  br i1 %cmp52, label %if.then54, label %if.else62

if.then54:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %38 = load i8*, i8** %output.addr, align 8
  %call55 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %38, i64 noundef 16) #4
  %39 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %39, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %40 = load i8*, i8** %output.addr, align 8
  %call57 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay56, i64 noundef 16, i8* noundef %40, i64* noundef %olen) #5
  store i32 %call57, i32* %ret, align 4
  %41 = load i32, i32* %ret, align 4
  %cmp58 = icmp ne i32 %41, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then54
  br label %cleanup

if.end61:                                         ; preds = %if.then54
  br label %if.end96

if.else62:                                        ; preds = %land.lhs.true, %if.end46
  %42 = load i8*, i8** %output.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %42, i64 8
  store i8* %add.ptr63, i8** %R2, align 8
  %43 = load i8*, i8** %output.addr, align 8
  store i8* %43, i8** %A, align 8
  %44 = load i64, i64* %semiblocks, align 8
  %cmp64 = icmp ult i64 %44, 3
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.else62
  store i32 -24832, i32* %ret, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.else62
  store i64 1, i64* %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end67
  %45 = load i64, i64* %t, align 8
  %46 = load i64, i64* %s, align 8
  %cmp68 = icmp ule i64 %45, %46
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay70 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %47 = load i8*, i8** %A, align 8
  %call71 = call i8* @memcpy(i8* noundef %arraydecay70, i8* noundef %47, i64 noundef 8) #4
  %arraydecay72 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay72, i64 8
  %48 = load i8*, i8** %R2, align 8
  %call74 = call i8* @memcpy(i8* noundef %add.ptr73, i8* noundef %48, i64 noundef 8) #4
  %49 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx75 = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %49, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %arraydecay77 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call78 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx75, i8* noundef %arraydecay76, i64 noundef 16, i8* noundef %arraydecay77, i64* noundef %olen) #5
  store i32 %call78, i32* %ret, align 4
  %50 = load i32, i32* %ret, align 4
  %cmp79 = icmp ne i32 %50, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.body
  br label %cleanup

if.end82:                                         ; preds = %for.body
  %51 = load i8*, i8** %A, align 8
  %arraydecay83 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call84 = call i8* @memcpy(i8* noundef %51, i8* noundef %arraydecay83, i64 noundef 8) #4
  %52 = load i8*, i8** %A, align 8
  %53 = load i64, i64* %t, align 8
  call void @calc_a_xor_t(i8* noundef %52, i64 noundef %53) #5
  %54 = load i8*, i8** %R2, align 8
  %arraydecay85 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %add.ptr86 = getelementptr inbounds i8, i8* %arraydecay85, i64 8
  %call87 = call i8* @memcpy(i8* noundef %54, i8* noundef %add.ptr86, i64 noundef 8) #4
  %55 = load i8*, i8** %R2, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %55, i64 8
  store i8* %add.ptr88, i8** %R2, align 8
  %56 = load i8*, i8** %R2, align 8
  %57 = load i8*, i8** %output.addr, align 8
  %58 = load i64, i64* %semiblocks, align 8
  %mul89 = mul i64 %58, 8
  %add.ptr90 = getelementptr inbounds i8, i8* %57, i64 %mul89
  %cmp91 = icmp uge i8* %56, %add.ptr90
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end82
  %59 = load i8*, i8** %output.addr, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %59, i64 8
  store i8* %add.ptr94, i8** %R2, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end82
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %60 = load i64, i64* %t, align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* %t, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end96

if.end96:                                         ; preds = %for.end, %if.end61
  %61 = load i64, i64* %semiblocks, align 8
  %mul97 = mul i64 %61, 8
  %62 = load i64*, i64** %out_len.addr, align 8
  store i64 %mul97, i64* %62, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then81, %if.then66, %if.then60
  %63 = load i32, i32* %ret, align 4
  %cmp98 = icmp ne i32 %63, 0
  br i1 %cmp98, label %if.then100, label %if.end103

if.then100:                                       ; preds = %cleanup
  %64 = load i8*, i8** %output.addr, align 8
  %65 = load i64, i64* %semiblocks, align 8
  %mul101 = mul i64 %65, 8
  %call102 = call i8* @memset(i8* noundef %64, i32 noundef 0, i64 noundef %mul101) #4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %cleanup
  %arraydecay104 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay104, i64 noundef 16) #5
  %arraydecay105 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay105, i64 noundef 16) #5
  %66 = load i32, i32* %ret, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end103, %if.then23, %if.then18, %if.then7, %if.then2
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_a_xor_t(i8* noundef %A, i64 noundef %t) #0 {
entry:
  %A.addr = alloca i8*, align 8
  %t.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %A, i8** %A.addr, align 8
  store i64 %t, i64* %t.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %t.addr, align 8
  %2 = load i64, i64* %i, align 8
  %sub = sub i64 7, %2
  %mul = mul i64 %sub, 8
  %shr = lshr i64 %1, %mul
  %and = and i64 %shr, 255
  %3 = load i8*, i8** %A.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i64
  %xor = xor i64 %conv, %and
  %conv1 = trunc i64 %xor to i8
  store i8 %conv1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_nist_kw_unwrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef %mode, i8* noundef %input, i64 noundef %in_len, i8* noundef %output, i64* noundef %out_len, i64 noundef %out_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %in_len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %out_size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %A = alloca [8 x i8], align 1
  %diff = alloca i8, align 1
  %bad_padding = alloca i8, align 1
  %padlen = alloca i64, align 8
  %Plen = alloca i32, align 4
  %outbuff = alloca [16 x i8], align 16
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %in_len, i64* %in_len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  store i64 %out_size, i64* %out_size.addr, align 8
  store i32 0, i32* %ret, align 4
  store i8 0, i8* %bad_padding, align 1
  %0 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i64, i64* %out_size.addr, align 8
  %2 = load i64, i64* %in_len.addr, align 8
  %sub = sub i64 %2, 8
  %cmp = icmp ult i64 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i64, i64* %in_len.addr, align 8
  %cmp3 = icmp ult i64 %4, 24
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %5 = load i64, i64* %in_len.addr, align 8
  %cmp4 = icmp ugt i64 %5, 144115188075855872
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load i64, i64* %in_len.addr, align 8
  %rem = urem i64 %6, 8
  %cmp6 = icmp ne i64 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then2
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5
  %7 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i64, i64* %in_len.addr, align 8
  %div = udiv i64 %9, 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64*, i64** %out_len.addr, align 8
  %call = call i32 @unwrap(%struct.mbedtls_nist_kw_context* noundef %7, i8* noundef %8, i64 noundef %div, i8* noundef %arraydecay, i8* noundef %10, i64* noundef %11) #5
  store i32 %call, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %12, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %arraydecay12 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  %call13 = call i32 @mbedtls_ct_memcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @NIST_KW_ICV1, i64 0, i64 0), i8* noundef %arraydecay12, i64 noundef 8) #5
  %conv = trunc i32 %call13 to i8
  store i8 %conv, i8* %diff, align 1
  %13 = load i8, i8* %diff, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  store i32 -25344, i32* %ret, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  br label %if.end118

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %mode.addr, align 4
  %cmp19 = icmp eq i32 %14, 1
  br i1 %cmp19, label %if.then21, label %if.else116

if.then21:                                        ; preds = %if.else
  store i64 0, i64* %padlen, align 8
  %15 = load i64, i64* %in_len.addr, align 8
  %cmp22 = icmp ult i64 %15, 16
  br i1 %cmp22, label %if.then31, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.then21
  %16 = load i64, i64* %in_len.addr, align 8
  %cmp25 = icmp ugt i64 %16, 4294967296
  br i1 %cmp25, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %17 = load i64, i64* %in_len.addr, align 8
  %rem28 = urem i64 %17, 8
  %cmp29 = icmp ne i64 %rem28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %if.then21
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false27
  %18 = load i64, i64* %in_len.addr, align 8
  %cmp33 = icmp eq i64 %18, 16
  br i1 %cmp33, label %if.then35, label %if.else48

if.then35:                                        ; preds = %if.end32
  %19 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %19, i32 0, i32 0
  %20 = load i8*, i8** %input.addr, align 8
  %arraydecay36 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call37 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %20, i64 noundef 16, i8* noundef %arraydecay36, i64* noundef %olen) #5
  store i32 %call37, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp38 = icmp ne i32 %21, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then35
  br label %cleanup

if.end41:                                         ; preds = %if.then35
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call44 = call i8* @memcpy(i8* noundef %arraydecay42, i8* noundef %arraydecay43, i64 noundef 8) #4
  %22 = load i8*, i8** %output.addr, align 8
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay45, i64 8
  %call46 = call i8* @memcpy(i8* noundef %22, i8* noundef %add.ptr, i64 noundef 8) #4
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay47, i64 noundef 16) #5
  %23 = load i64*, i64** %out_len.addr, align 8
  store i64 8, i64* %23, align 8
  br label %if.end56

if.else48:                                        ; preds = %if.end32
  %24 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %26 = load i64, i64* %in_len.addr, align 8
  %div49 = udiv i64 %26, 8
  %arraydecay50 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  %27 = load i8*, i8** %output.addr, align 8
  %28 = load i64*, i64** %out_len.addr, align 8
  %call51 = call i32 @unwrap(%struct.mbedtls_nist_kw_context* noundef %24, i8* noundef %25, i64 noundef %div49, i8* noundef %arraydecay50, i8* noundef %27, i64* noundef %28) #5
  store i32 %call51, i32* %ret, align 4
  %29 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %29, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else48
  br label %cleanup

if.end55:                                         ; preds = %if.else48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end41
  %arraydecay57 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  %call58 = call i32 @mbedtls_ct_memcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @NIST_KW_ICV2, i64 0, i64 0), i8* noundef %arraydecay57, i64 noundef 4) #5
  %conv59 = trunc i32 %call58 to i8
  store i8 %conv59, i8* %diff, align 1
  %30 = load i8, i8* %diff, align 1
  %conv60 = zext i8 %30 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end56
  store i32 -25344, i32* %ret, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end56
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 4
  %31 = load i8, i8* %arrayidx, align 1
  %conv65 = zext i8 %31 to i32
  %shl = shl i32 %conv65, 24
  %arrayidx66 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 5
  %32 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %32 to i32
  %shl68 = shl i32 %conv67, 16
  %or = or i32 %shl, %shl68
  %arrayidx69 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 6
  %33 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %33 to i32
  %shl71 = shl i32 %conv70, 8
  %or72 = or i32 %or, %shl71
  %arrayidx73 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 7
  %34 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %34 to i32
  %or75 = or i32 %or72, %conv74
  store i32 %or75, i32* %Plen, align 4
  %35 = load i64, i64* %in_len.addr, align 8
  %sub76 = sub i64 %35, 8
  %36 = load i32, i32* %Plen, align 4
  %conv77 = zext i32 %36 to i64
  %sub78 = sub i64 %sub76, %conv77
  store i64 %sub78, i64* %padlen, align 8
  %37 = load i64, i64* %padlen, align 8
  %cmp79 = icmp ugt i64 %37, 7
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end64
  %38 = load i64, i64* %padlen, align 8
  %and = and i64 %38, 7
  store i64 %and, i64* %padlen, align 8
  store i32 -25344, i32* %ret, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end64
  store i8 0, i8* %diff, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end82
  %39 = load i64, i64* %i, align 8
  %cmp83 = icmp ult i64 %39, 8
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %padlen, align 8
  %sub85 = sub i64 8, %41
  %cmp86 = icmp uge i64 %40, %sub85
  br i1 %cmp86, label %if.then88, label %if.else95

if.then88:                                        ; preds = %for.body
  %42 = load i8*, i8** %output.addr, align 8
  %43 = load i64*, i64** %out_len.addr, align 8
  %44 = load i64, i64* %43, align 8
  %sub89 = sub i64 %44, 8
  %45 = load i64, i64* %i, align 8
  %add = add i64 %sub89, %45
  %arrayidx90 = getelementptr inbounds i8, i8* %42, i64 %add
  %46 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %46 to i32
  %47 = load i8, i8* %diff, align 1
  %conv92 = zext i8 %47 to i32
  %or93 = or i32 %conv92, %conv91
  %conv94 = trunc i32 %or93 to i8
  store i8 %conv94, i8* %diff, align 1
  br label %if.end103

if.else95:                                        ; preds = %for.body
  %48 = load i8*, i8** %output.addr, align 8
  %49 = load i64*, i64** %out_len.addr, align 8
  %50 = load i64, i64* %49, align 8
  %sub96 = sub i64 %50, 8
  %51 = load i64, i64* %i, align 8
  %add97 = add i64 %sub96, %51
  %arrayidx98 = getelementptr inbounds i8, i8* %48, i64 %add97
  %52 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %52 to i32
  %53 = load i8, i8* %bad_padding, align 1
  %conv100 = zext i8 %53 to i32
  %or101 = or i32 %conv100, %conv99
  %conv102 = trunc i32 %or101 to i8
  store i8 %conv102, i8* %bad_padding, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.else95, %if.then88
  br label %for.inc

for.inc:                                          ; preds = %if.end103
  %54 = load i64, i64* %i, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %55 = load i8, i8* %diff, align 1
  %conv104 = zext i8 %55 to i32
  %cmp105 = icmp ne i32 %conv104, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %for.end
  store i32 -25344, i32* %ret, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %for.end
  %56 = load i32, i32* %ret, align 4
  %cmp109 = icmp ne i32 %56, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  %57 = load i8*, i8** %output.addr, align 8
  %58 = load i32, i32* %Plen, align 4
  %idx.ext = zext i32 %58 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  %59 = load i64, i64* %padlen, align 8
  %call114 = call i8* @memset(i8* noundef %add.ptr113, i32 noundef 0, i64 noundef %59) #4
  %60 = load i32, i32* %Plen, align 4
  %conv115 = zext i32 %60 to i64
  %61 = load i64*, i64** %out_len.addr, align 8
  store i64 %conv115, i64* %61, align 8
  br label %if.end117

if.else116:                                       ; preds = %if.else
  store i32 -24704, i32* %ret, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end112
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end18
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.else116, %if.then111, %if.then54, %if.then40, %if.then17, %if.then10
  %62 = load i32, i32* %ret, align 4
  %cmp119 = icmp ne i32 %62, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %cleanup
  %63 = load i8*, i8** %output.addr, align 8
  %64 = load i64*, i64** %out_len.addr, align 8
  %65 = load i64, i64* %64, align 8
  %call122 = call i8* @memset(i8* noundef %63, i32 noundef 0, i64 noundef %65) #4
  %66 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %66, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %cleanup
  call void @mbedtls_platform_zeroize(i8* noundef %bad_padding, i64 noundef 1) #5
  call void @mbedtls_platform_zeroize(i8* noundef %diff, i64 noundef 1) #5
  %arraydecay124 = getelementptr inbounds [8 x i8], [8 x i8]* %A, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay124, i64 noundef 8) #5
  %67 = load i32, i32* %ret, align 4
  store i32 %67, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %if.then31, %if.then7, %if.then
  %68 = load i32, i32* %retval, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i8* noundef %input, i64 noundef %semiblocks, i8* noundef %A, i8* noundef %output, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_nist_kw_context*, align 8
  %input.addr = alloca i8*, align 8
  %semiblocks.addr = alloca i64, align 8
  %A.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %s = alloca i64, align 8
  %olen = alloca i64, align 8
  %t = alloca i64, align 8
  %outbuff = alloca [16 x i8], align 16
  %inbuff = alloca [16 x i8], align 16
  %R = alloca i8*, align 8
  store %struct.mbedtls_nist_kw_context* %ctx, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %semiblocks, i64* %semiblocks.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i64, i64* %semiblocks.addr, align 8
  %sub = sub i64 %0, 1
  %mul = mul i64 6, %sub
  store i64 %mul, i64* %s, align 8
  store i64 0, i64* %t, align 8
  store i8* null, i8** %R, align 8
  %1 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load i64, i64* %semiblocks.addr, align 8
  %cmp = icmp ult i64 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %A.addr, align 8
  %4 = load i8*, i8** %input.addr, align 8
  %call = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef 8) #4
  %5 = load i8*, i8** %output.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = load i64, i64* %semiblocks.addr, align 8
  %sub1 = sub i64 %7, 1
  %mul2 = mul i64 %sub1, 8
  %call3 = call i8* @memmove(i8* noundef %5, i8* noundef %add.ptr, i64 noundef %mul2) #4
  %8 = load i8*, i8** %output.addr, align 8
  %9 = load i64, i64* %semiblocks.addr, align 8
  %sub4 = sub i64 %9, 2
  %mul5 = mul i64 %sub4, 8
  %add.ptr6 = getelementptr inbounds i8, i8* %8, i64 %mul5
  store i8* %add.ptr6, i8** %R, align 8
  %10 = load i64, i64* %s, align 8
  store i64 %10, i64* %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %t, align 8
  %cmp7 = icmp uge i64 %11, 1
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %A.addr, align 8
  %13 = load i64, i64* %t, align 8
  call void @calc_a_xor_t(i8* noundef %12, i64 noundef %13) #5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %14 = load i8*, i8** %A.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %14, i64 noundef 8) #4
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 8
  %15 = load i8*, i8** %R, align 8
  %call11 = call i8* @memcpy(i8* noundef %add.ptr10, i8* noundef %15, i64 noundef 8) #4
  %16 = load %struct.mbedtls_nist_kw_context*, %struct.mbedtls_nist_kw_context** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_nist_kw_context, %struct.mbedtls_nist_kw_context* %16, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call14 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay12, i64 noundef 16, i8* noundef %arraydecay13, i64* noundef %olen) #5
  store i32 %call14, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %18 = load i8*, i8** %A.addr, align 8
  %arraydecay18 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %call19 = call i8* @memcpy(i8* noundef %18, i8* noundef %arraydecay18, i64 noundef 8) #4
  %19 = load i8*, i8** %R, align 8
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  %add.ptr21 = getelementptr inbounds i8, i8* %arraydecay20, i64 8
  %call22 = call i8* @memcpy(i8* noundef %19, i8* noundef %add.ptr21, i64 noundef 8) #4
  %20 = load i8*, i8** %R, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %cmp23 = icmp eq i8* %20, %21
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %semiblocks.addr, align 8
  %sub25 = sub i64 %23, 2
  %mul26 = mul i64 %sub25, 8
  %add.ptr27 = getelementptr inbounds i8, i8* %22, i64 %mul26
  store i8* %add.ptr27, i8** %R, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end17
  %24 = load i8*, i8** %R, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %24, i64 -8
  store i8* %add.ptr28, i8** %R, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %25 = load i64, i64* %t, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %t, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %26 = load i64, i64* %semiblocks.addr, align 8
  %sub30 = sub i64 %26, 1
  %mul31 = mul i64 %sub30, 8
  %27 = load i64*, i64** %out_len.addr, align 8
  store i64 %mul31, i64* %27, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then16
  %28 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %28, 0
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %cleanup
  %29 = load i8*, i8** %output.addr, align 8
  %30 = load i64, i64* %semiblocks.addr, align 8
  %sub34 = sub i64 %30, 1
  %mul35 = mul i64 %sub34, 8
  %call36 = call i8* @memset(i8* noundef %29, i32 noundef 0, i64 noundef %mul35) #4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %cleanup
  %arraydecay38 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuff, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay38, i64 noundef 16) #5
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuff, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay39, i64 noundef 16) #5
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_nist_kw_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_nist_kw_context, align 8
  %out = alloca [48 x i8], align 16
  %olen = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  call void @mbedtls_nist_kw_init(%struct.mbedtls_nist_kw_context* noundef %ctx) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %mul = mul i32 %3, 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %mul) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @kw_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx3, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul i32 %6, 8
  %call7 = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 2, i8* noundef %arraydecay, i32 noundef %mul6, i32 noundef 1) #5
  store i32 %call7, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp10 = icmp ne i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %end

if.end14:                                         ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* bitcast (<{ <{ [16 x i8], [24 x i8] }>, [40 x i8], <{ [24 x i8], [16 x i8] }> }>* @kw_msg to [3 x [40 x i8]]*), i64 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [40 x i8], [40 x i8]* %arrayidx16, i64 0, i64 0
  %10 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [3 x i64], [3 x i64]* @kw_msg_len, i64 0, i64 %idxprom18
  %11 = load i64, i64* %arrayidx19, align 8
  %arraydecay20 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %call21 = call i32 @mbedtls_nist_kw_wrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 0, i8* noundef %arraydecay17, i64 noundef %11, i8* noundef %arraydecay20, i64* noundef %olen, i64 noundef 48) #5
  store i32 %call21, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %12, 0
  br i1 %cmp22, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %13 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [3 x i64], [3 x i64]* @kw_out_len, i64 0, i64 %idxprom23
  %14 = load i64, i64* %arrayidx24, align 8
  %15 = load i64, i64* %olen, align 8
  %cmp25 = icmp ne i64 %14, %15
  br i1 %cmp25, label %if.then35, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %arraydecay27 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %16 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [24 x i8], [24 x i8] }>, [48 x i8], <{ [32 x i8], [16 x i8] }> }>* @kw_res to [3 x [48 x i8]]*), i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx29, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [3 x i64], [3 x i64]* @kw_out_len, i64 0, i64 %idxprom31
  %18 = load i64, i64* %arrayidx32, align 8
  %call33 = call i32 @memcmp(i8* noundef %arraydecay27, i8* noundef %arraydecay30, i64 noundef %18) #6
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %if.end14
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp36 = icmp ne i32 %19, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then35
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then35
  store i32 1, i32* %ret, align 4
  br label %end

if.end40:                                         ; preds = %lor.lhs.false26
  %20 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @kw_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx42, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom44
  %22 = load i32, i32* %arrayidx45, align 4
  %mul46 = mul i32 %22, 8
  %call47 = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 2, i8* noundef %arraydecay43, i32 noundef %mul46, i32 noundef 0) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end40
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp50 = icmp ne i32 %23, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.then49
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49
  br label %end

if.end54:                                         ; preds = %if.end40
  %arraydecay55 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %24 = load i64, i64* %olen, align 8
  %arraydecay56 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %call57 = call i32 @mbedtls_nist_kw_unwrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 0, i8* noundef %arraydecay55, i64 noundef %24, i8* noundef %arraydecay56, i64* noundef %olen, i64 noundef 48) #5
  store i32 %call57, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp58 = icmp ne i32 %25, 0
  br i1 %cmp58, label %if.then72, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end54
  %26 = load i64, i64* %olen, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %27 to i64
  %arrayidx61 = getelementptr inbounds [3 x i64], [3 x i64]* @kw_msg_len, i64 0, i64 %idxprom60
  %28 = load i64, i64* %arrayidx61, align 8
  %cmp62 = icmp ne i64 %26, %28
  br i1 %cmp62, label %if.then72, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %arraydecay64 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %29 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %29 to i64
  %arrayidx66 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* bitcast (<{ <{ [16 x i8], [24 x i8] }>, [40 x i8], <{ [24 x i8], [16 x i8] }> }>* @kw_msg to [3 x [40 x i8]]*), i64 0, i64 %idxprom65
  %arraydecay67 = getelementptr inbounds [40 x i8], [40 x i8]* %arrayidx66, i64 0, i64 0
  %30 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %30 to i64
  %arrayidx69 = getelementptr inbounds [3 x i64], [3 x i64]* @kw_msg_len, i64 0, i64 %idxprom68
  %31 = load i64, i64* %arrayidx69, align 8
  %call70 = call i32 @memcmp(i8* noundef %arraydecay64, i8* noundef %arraydecay67, i64 noundef %31) #6
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end77

if.then72:                                        ; preds = %lor.lhs.false63, %lor.lhs.false59, %if.end54
  %32 = load i32, i32* %verbose.addr, align 4
  %cmp73 = icmp ne i32 %32, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then72
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then72
  store i32 1, i32* %ret, align 4
  br label %end

if.end77:                                         ; preds = %lor.lhs.false63
  %33 = load i32, i32* %verbose.addr, align 4
  %cmp78 = icmp ne i32 %33, 0
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end77
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc174, %for.end
  %35 = load i32, i32* %i, align 4
  %cmp83 = icmp slt i32 %35, 3
  br i1 %cmp83, label %for.body84, label %for.end176

for.body84:                                       ; preds = %for.cond82
  store i64 48, i64* %olen, align 8
  %36 = load i32, i32* %verbose.addr, align 4
  %cmp85 = icmp ne i32 %36, 0
  br i1 %cmp85, label %if.then86, label %if.end91

if.then86:                                        ; preds = %for.body84
  %37 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %37 to i64
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom87
  %38 = load i32, i32* %arrayidx88, align 4
  %mul89 = mul i32 %38, 8
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 noundef %mul89) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %for.body84
  %39 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %39 to i64
  %arrayidx93 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @kwp_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom92
  %arraydecay94 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx93, i64 0, i64 0
  %40 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %40 to i64
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom95
  %41 = load i32, i32* %arrayidx96, align 4
  %mul97 = mul i32 %41, 8
  %call98 = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 2, i8* noundef %arraydecay94, i32 noundef %mul97, i32 noundef 1) #5
  store i32 %call98, i32* %ret, align 4
  %42 = load i32, i32* %ret, align 4
  %cmp99 = icmp ne i32 %42, 0
  br i1 %cmp99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.end91
  %43 = load i32, i32* %verbose.addr, align 4
  %cmp101 = icmp ne i32 %43, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then100
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then100
  br label %end

if.end105:                                        ; preds = %if.end91
  %44 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %44 to i64
  %arrayidx107 = getelementptr inbounds [3 x [31 x i8]], [3 x [31 x i8]]* bitcast (<{ <{ [9 x i8], [22 x i8] }>, [31 x i8], <{ i8, [30 x i8] }> }>* @kwp_msg to [3 x [31 x i8]]*), i64 0, i64 %idxprom106
  %arraydecay108 = getelementptr inbounds [31 x i8], [31 x i8]* %arrayidx107, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %45 to i64
  %arrayidx110 = getelementptr inbounds [3 x i64], [3 x i64]* @kwp_msg_len, i64 0, i64 %idxprom109
  %46 = load i64, i64* %arrayidx110, align 8
  %arraydecay111 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %call112 = call i32 @mbedtls_nist_kw_wrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 1, i8* noundef %arraydecay108, i64 noundef %46, i8* noundef %arraydecay111, i64* noundef %olen, i64 noundef 48) #5
  store i32 %call112, i32* %ret, align 4
  %47 = load i32, i32* %ret, align 4
  %cmp113 = icmp ne i32 %47, 0
  br i1 %cmp113, label %if.then127, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end105
  %48 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %48 to i64
  %arrayidx116 = getelementptr inbounds [3 x i64], [3 x i64]* @kwp_out_len, i64 0, i64 %idxprom115
  %49 = load i64, i64* %arrayidx116, align 8
  %50 = load i64, i64* %olen, align 8
  %cmp117 = icmp ne i64 %49, %50
  br i1 %cmp117, label %if.then127, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false114
  %arraydecay119 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %51 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %51 to i64
  %arrayidx121 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [23 x i8], [25 x i8] }>, <{ [40 x i8], [8 x i8] }>, <{ [16 x i8], [32 x i8] }> }>* @kwp_res to [3 x [48 x i8]]*), i64 0, i64 %idxprom120
  %arraydecay122 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx121, i64 0, i64 0
  %52 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %52 to i64
  %arrayidx124 = getelementptr inbounds [3 x i64], [3 x i64]* @kwp_out_len, i64 0, i64 %idxprom123
  %53 = load i64, i64* %arrayidx124, align 8
  %call125 = call i32 @memcmp(i8* noundef %arraydecay119, i8* noundef %arraydecay122, i64 noundef %53) #6
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.end132

if.then127:                                       ; preds = %lor.lhs.false118, %lor.lhs.false114, %if.end105
  %54 = load i32, i32* %verbose.addr, align 4
  %cmp128 = icmp ne i32 %54, 0
  br i1 %cmp128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.then127
  %call130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.then127
  store i32 1, i32* %ret, align 4
  br label %end

if.end132:                                        ; preds = %lor.lhs.false118
  %55 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %55 to i64
  %arrayidx134 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @kwp_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom133
  %arraydecay135 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx134, i64 0, i64 0
  %56 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %56 to i64
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* @key_len, i64 0, i64 %idxprom136
  %57 = load i32, i32* %arrayidx137, align 4
  %mul138 = mul i32 %57, 8
  %call139 = call i32 @mbedtls_nist_kw_setkey(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 2, i8* noundef %arraydecay135, i32 noundef %mul138, i32 noundef 0) #5
  store i32 %call139, i32* %ret, align 4
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end146

if.then141:                                       ; preds = %if.end132
  %58 = load i32, i32* %verbose.addr, align 4
  %cmp142 = icmp ne i32 %58, 0
  br i1 %cmp142, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.then141
  %call144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then141
  br label %end

if.end146:                                        ; preds = %if.end132
  %arraydecay147 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %59 = load i64, i64* %olen, align 8
  %arraydecay148 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %call149 = call i32 @mbedtls_nist_kw_unwrap(%struct.mbedtls_nist_kw_context* noundef %ctx, i32 noundef 1, i8* noundef %arraydecay147, i64 noundef %59, i8* noundef %arraydecay148, i64* noundef %olen, i64 noundef 48) #5
  store i32 %call149, i32* %ret, align 4
  %60 = load i32, i32* %ret, align 4
  %cmp150 = icmp ne i32 %60, 0
  br i1 %cmp150, label %if.then164, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %if.end146
  %61 = load i64, i64* %olen, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %62 to i64
  %arrayidx153 = getelementptr inbounds [3 x i64], [3 x i64]* @kwp_msg_len, i64 0, i64 %idxprom152
  %63 = load i64, i64* %arrayidx153, align 8
  %cmp154 = icmp ne i64 %61, %63
  br i1 %cmp154, label %if.then164, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false151
  %arraydecay156 = getelementptr inbounds [48 x i8], [48 x i8]* %out, i64 0, i64 0
  %64 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %64 to i64
  %arrayidx158 = getelementptr inbounds [3 x [31 x i8]], [3 x [31 x i8]]* bitcast (<{ <{ [9 x i8], [22 x i8] }>, [31 x i8], <{ i8, [30 x i8] }> }>* @kwp_msg to [3 x [31 x i8]]*), i64 0, i64 %idxprom157
  %arraydecay159 = getelementptr inbounds [31 x i8], [31 x i8]* %arrayidx158, i64 0, i64 0
  %65 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %65 to i64
  %arrayidx161 = getelementptr inbounds [3 x i64], [3 x i64]* @kwp_msg_len, i64 0, i64 %idxprom160
  %66 = load i64, i64* %arrayidx161, align 8
  %call162 = call i32 @memcmp(i8* noundef %arraydecay156, i8* noundef %arraydecay159, i64 noundef %66) #6
  %cmp163 = icmp ne i32 %call162, 0
  br i1 %cmp163, label %if.then164, label %if.end169

if.then164:                                       ; preds = %lor.lhs.false155, %lor.lhs.false151, %if.end146
  %67 = load i32, i32* %verbose.addr, align 4
  %cmp165 = icmp ne i32 %67, 0
  br i1 %cmp165, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.then164
  %call167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.then164
  store i32 1, i32* %ret, align 4
  br label %end

if.end169:                                        ; preds = %lor.lhs.false155
  %68 = load i32, i32* %verbose.addr, align 4
  %cmp170 = icmp ne i32 %68, 0
  br i1 %cmp170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.end169
  %call172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.end169
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %69 = load i32, i32* %i, align 4
  %inc175 = add nsw i32 %69, 1
  store i32 %inc175, i32* %i, align 4
  br label %for.cond82, !llvm.loop !10

for.end176:                                       ; preds = %for.cond82
  br label %end

end:                                              ; preds = %for.end176, %if.end168, %if.end145, %if.end131, %if.end104, %if.end76, %if.end53, %if.end39, %if.end13
  call void @mbedtls_nist_kw_free(%struct.mbedtls_nist_kw_context* noundef %ctx) #5
  %70 = load i32, i32* %verbose.addr, align 4
  %cmp177 = icmp ne i32 %70, 0
  br i1 %cmp177, label %if.then178, label %if.end180

if.then178:                                       ; preds = %end
  %call179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %end
  %71 = load i32, i32* %ret, align 4
  ret i32 %71
}

declare dso_local i32 @printf(i8* noundef, ...) #2

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
