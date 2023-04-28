; ModuleID = 'dhm.c'
source_filename = "dhm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_pem_context = type { i8*, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [6 x i8] c"dhm.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"-----BEGIN DH PARAMETERS-----\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"-----END DH PARAMETERS-----\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  DHM parameter load: \00", align 1
@mbedtls_test_dhm_params = internal constant [251 x i8] c"-----BEGIN DH PARAMETERS-----\0D\0AMIGHAoGBAJ419DBEOgmQTzo5qXl5fQcN9TN455wkOL7052HzxxRVMyhYmwQcgJvh\0D\0A1sa18fyfR9OiVEMYglOpkqVoGLN7qd5aQNNi5W7/C+VBdHTBJcGZJyyP5B3qcz32\0D\0A9mLJKudlVudV0Qxk5qUJaPZ/xupz0NyoVpviuiBOI1gNi8ovSXWzAgEC\0D\0A-----END DH PARAMETERS-----\0D\0A\00", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"passed\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_dhm_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 240) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_dhm_get_bitlen(%struct.mbedtls_dhm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 0
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %P) #5
  ret i64 %call
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 0
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P) #5
  ret i64 %call
}

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_get_value(%struct.mbedtls_dhm_context* noundef %ctx, i32 noundef %param, %struct.mbedtls_mpi* noundef %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %param.addr = alloca i32, align 4
  %dest.addr = alloca %struct.mbedtls_mpi*, align 8
  %src = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i32 %param, i32* %param.addr, align 4
  store %struct.mbedtls_mpi* %dest, %struct.mbedtls_mpi** %dest.addr, align 8
  store %struct.mbedtls_mpi* null, %struct.mbedtls_mpi** %src, align 8
  %0 = load i32, i32* %param.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %1, i32 0, i32 0
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %2, i32 0, i32 1
  store %struct.mbedtls_mpi* %G, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 2
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %4, i32 0, i32 3
  store %struct.mbedtls_mpi* %GX, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %5, i32 0, i32 4
  store %struct.mbedtls_mpi* %GY, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %6, i32 0, i32 5
  store %struct.mbedtls_mpi* %K, %struct.mbedtls_mpi** %src, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -12416, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %dest.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %src, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_read_params(%struct.mbedtls_dhm_context* noundef %ctx, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 0
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @dhm_read_bignum(%struct.mbedtls_mpi* noundef %P, i8** noundef %1, i8* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 1
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call5 = call i32 @dhm_read_bignum(%struct.mbedtls_mpi* noundef %G, i8** noundef %4, i8* noundef %5) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %6, i32 0, i32 4
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %call8 = call i32 @dhm_read_bignum(%struct.mbedtls_mpi* noundef %GY, i8** noundef %7, i8* noundef %8) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %do.end4
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %10 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY10 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %10, i32 0, i32 4
  %11 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P11 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %11, i32 0, i32 0
  %call12 = call i32 @dhm_check_range(%struct.mbedtls_mpi* noundef %GY10, %struct.mbedtls_mpi* noundef %P11) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_read_bignum(%struct.mbedtls_mpi* noundef %X, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 8
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %8 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %n, align 4
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %9, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %13 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  %14 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %conv6, %14
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %n, align 4
  %conv11 = sext i32 %18 to i64
  %call = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %15, i8* noundef %17, i64 noundef %conv11) #5
  store i32 %call, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %19 = load i32, i32* %ret, align 4
  %call15 = call i32 @mbedtls_error_add(i32 noundef -12544, i32 noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #5
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %20 = load i32, i32* %n, align 4
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %idx.ext = sext i32 %20 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr17, i8** %21, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then9, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_check_range(%struct.mbedtls_mpi* noundef %param, %struct.mbedtls_mpi* noundef %P) #0 {
entry:
  %param.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %U = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %param, %struct.mbedtls_mpi** %param.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %U) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %U, %struct.mbedtls_mpi* noundef %0, i64 noundef 2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %param.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %1, i64 noundef 2) #5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %param.addr, align 8
  %call3 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %U) #5
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %do.end
  store i32 -12416, i32* %ret, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %U) #5
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_make_params(%struct.mbedtls_dhm_context* noundef %ctx, i32 noundef %x_size, i8* noundef %output, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %x_size.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %n3 = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i32 %x_size, i32* %x_size.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %1 = load i32, i32* %x_size.addr, align 4
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @dhm_make_common(%struct.mbedtls_dhm_context* noundef %0, i32 noundef %1, i32 (i8*, i8*, i64)* noundef %2, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  br label %cleanup

if.end:                                           ; preds = %do.end6
  %5 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %5, i32 0, i32 0
  %call7 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P) #5
  store i64 %call7, i64* %n1, align 8
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %6, i32 0, i32 1
  %call8 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %G) #5
  store i64 %call8, i64* %n2, align 8
  %7 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %7, i32 0, i32 3
  %call9 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %GX) #5
  store i64 %call9, i64* %n3, align 8
  %8 = load i8*, i8** %output.addr, align 8
  store i8* %8, i8** %p, align 8
  br label %do.body10

do.body10:                                        ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P12 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 0
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i64, i64* %n1, align 8
  %call13 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %P12, i8* noundef %add.ptr, i64 noundef %11) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body11
  br label %cleanup

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %12 = load i64, i64* %n1, align 8
  %shr = lshr i64 %12, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i64, i64* %n1, align 8
  %and18 = and i64 %14, 255
  %conv19 = trunc i64 %and18 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %conv19, i8* %15, align 1
  %16 = load i64, i64* %n1, align 8
  %17 = load i8*, i8** %p, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %17, i64 %16
  store i8* %add.ptr21, i8** %p, align 8
  br label %do.end22

do.end22:                                         ; preds = %do.end17
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %18 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G25 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %18, i32 0, i32 1
  %19 = load i8*, i8** %p, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i64, i64* %n2, align 8
  %call27 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %G25, i8* noundef %add.ptr26, i64 noundef %20) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body24
  br label %cleanup

if.end31:                                         ; preds = %do.body24
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %21 = load i64, i64* %n2, align 8
  %shr33 = lshr i64 %21, 8
  %and34 = and i64 %shr33, 255
  %conv35 = trunc i64 %and34 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  store i8 %conv35, i8* %22, align 1
  %23 = load i64, i64* %n2, align 8
  %and37 = and i64 %23, 255
  %conv38 = trunc i64 %and37 to i8
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  store i8 %conv38, i8* %24, align 1
  %25 = load i64, i64* %n2, align 8
  %26 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %add.ptr40, i8** %p, align 8
  br label %do.end41

do.end41:                                         ; preds = %do.end32
  br label %do.body42

do.body42:                                        ; preds = %do.end41
  br label %do.body43

do.body43:                                        ; preds = %do.body42
  %27 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX44 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %27, i32 0, i32 3
  %28 = load i8*, i8** %p, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i64, i64* %n3, align 8
  %call46 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %GX44, i8* noundef %add.ptr45, i64 noundef %29) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body43
  br label %cleanup

if.end50:                                         ; preds = %do.body43
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  %30 = load i64, i64* %n3, align 8
  %shr52 = lshr i64 %30, 8
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  store i8 %conv54, i8* %31, align 1
  %32 = load i64, i64* %n3, align 8
  %and56 = and i64 %32, 255
  %conv57 = trunc i64 %and56 to i8
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr58, i8** %p, align 8
  store i8 %conv57, i8* %33, align 1
  %34 = load i64, i64* %n3, align 8
  %35 = load i8*, i8** %p, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %add.ptr59, i8** %p, align 8
  br label %do.end60

do.end60:                                         ; preds = %do.end51
  %36 = load i8*, i8** %p, align 8
  %37 = load i8*, i8** %output.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %38, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then49, %if.then30, %if.then15, %if.then
  %39 = load i32, i32* %ret, align 4
  %cmp61 = icmp ne i32 %39, 0
  br i1 %cmp61, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %cleanup
  %40 = load i32, i32* %ret, align 4
  %cmp63 = icmp sgt i32 %40, -128
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true
  %41 = load i32, i32* %ret, align 4
  %call66 = call i32 @mbedtls_error_add(i32 noundef -12672, i32 noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 291) #5
  store i32 %call66, i32* %ret, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true, %cleanup
  %42 = load i32, i32* %ret, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_make_common(%struct.mbedtls_dhm_context* noundef %ctx, i32 noundef %x_size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %x_size.addr = alloca i32, align 4
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i32 %x_size, i32* %x_size.addr, align 4
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x_size.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %x_size.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P4 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 0
  %call5 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P4) #5
  %cmp6 = icmp ult i64 %conv, %call5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end3
  br label %do.body

do.body:                                          ; preds = %if.then8
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %4, i32 0, i32 2
  %5 = load i32, i32* %x_size.addr, align 4
  %conv9 = sext i32 %5 to i64
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call10 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %X, i64 noundef %conv9, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  br label %cleanup

if.end14:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end14
  br label %if.end26

if.else:                                          ; preds = %if.end3
  %8 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X15 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P16 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 0
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %call17 = call i32 @dhm_random_below(%struct.mbedtls_mpi* noundef %X15, %struct.mbedtls_mpi* noundef %P16, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11) #5
  store i32 %call17, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %12, -14
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else
  store i32 -12672, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.else
  %13 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %13, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %do.end
  br label %do.body27

do.body27:                                        ; preds = %if.end26
  %15 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %15, i32 0, i32 3
  %16 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %16, i32 0, i32 1
  %17 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X28 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %17, i32 0, i32 2
  %18 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P29 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %19, i32 0, i32 6
  %call30 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %GX, %struct.mbedtls_mpi* noundef %G, %struct.mbedtls_mpi* noundef %X28, %struct.mbedtls_mpi* noundef %P29, %struct.mbedtls_mpi* noundef %RP) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body27
  br label %cleanup

if.end34:                                         ; preds = %do.body27
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  %20 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX36 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %20, i32 0, i32 3
  %21 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P37 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %21, i32 0, i32 0
  %call38 = call i32 @dhm_check_range(%struct.mbedtls_mpi* noundef %GX36, %struct.mbedtls_mpi* noundef %P37) #5
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.end35
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %do.end35
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then33, %if.then13
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then41, %if.then24, %if.then20, %if.then2, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_set_group(%struct.mbedtls_dhm_context* noundef %ctx, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %G) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %G.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %G, %struct.mbedtls_mpi** %G.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P5 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %P5, %struct.mbedtls_mpi* noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G6 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %G.addr, align 8
  %call7 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %G6, %struct.mbedtls_mpi* noundef %3) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  %4 = load i32, i32* %ret, align 4
  %call9 = call i32 @mbedtls_error_add(i32 noundef -13696, i32 noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 310) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_read_public(%struct.mbedtls_dhm_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %ilen.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i64, i64* %ilen.addr, align 8
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %call = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %2) #5
  %cmp3 = icmp ugt i64 %1, %call
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 4
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %ilen.addr, align 8
  %call4 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %GY, i8* noundef %4, i64 noundef %5) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %call7 = call i32 @mbedtls_error_add(i32 noundef -12800, i32 noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 330) #5
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %ctx, i32 noundef %x_size, i8* noundef %output, i64 noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %x_size.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i32 %x_size, i32* %x_size.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64 %olen, i64* %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load i64, i64* %olen.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %1 = load i64, i64* %olen.addr, align 8
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %call = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %2) #5
  %cmp5 = icmp ugt i64 %1, %call
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %4 = load i32, i32* %x_size.addr, align 4
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %6 = load i8*, i8** %p_rng.addr, align 8
  %call6 = call i32 @dhm_make_common(%struct.mbedtls_dhm_context* noundef %3, i32 noundef %4, i32 (i8*, i8*, i64)* noundef %5, i8* noundef %6) #5
  store i32 %call6, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %7, -12672
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -12928, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  br label %do.body13

do.body13:                                        ; preds = %if.end12
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 3
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64, i64* %olen.addr, align 8
  %call14 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %GX, i8* noundef %10, i64 noundef %11) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then16, %if.then11
  %12 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %12, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %cleanup
  %13 = load i32, i32* %ret, align 4
  %cmp20 = icmp sgt i32 %13, -128
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %ret, align 4
  %call22 = call i32 @mbedtls_error_add(i32 noundef -12928, i32 noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 361) #5
  store i32 %call22, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %cleanup
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then8, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %ctx, i8* noundef %output, i64 noundef %output_size, i64* noundef %olen, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %GYb = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %1 = load i64, i64* %output_size.addr, align 8
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %call = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %2) #5
  %cmp5 = icmp ult i64 %1, %call
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -12416, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 4
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %4, i32 0, i32 0
  %call8 = call i32 @dhm_check_range(%struct.mbedtls_mpi* noundef %GY, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %GYb) #5
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %call13 = call i32 @dhm_update_blinding(%struct.mbedtls_dhm_context* noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY19 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 4
  %10 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %10, i32 0, i32 7
  %call20 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %GYb, %struct.mbedtls_mpi* noundef %GY19, %struct.mbedtls_mpi* noundef %Vi) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body18
  br label %cleanup

if.end23:                                         ; preds = %do.body18
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %11 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P26 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %11, i32 0, i32 0
  %call27 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %GYb, %struct.mbedtls_mpi* noundef %GYb, %struct.mbedtls_mpi* noundef %P26) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body25
  br label %cleanup

if.end30:                                         ; preds = %do.body25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %12 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %12, i32 0, i32 5
  %13 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %13, i32 0, i32 2
  %14 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P33 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %15, i32 0, i32 6
  %call34 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %GYb, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %P33, %struct.mbedtls_mpi* noundef %RP) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body32
  br label %cleanup

if.end37:                                         ; preds = %do.body32
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %16 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K40 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %16, i32 0, i32 5
  %17 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K41 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %17, i32 0, i32 5
  %18 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %18, i32 0, i32 8
  %call42 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K40, %struct.mbedtls_mpi* noundef %K41, %struct.mbedtls_mpi* noundef %Vf) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body39
  br label %cleanup

if.end45:                                         ; preds = %do.body39
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %19 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K48 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %19, i32 0, i32 5
  %20 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K49 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %20, i32 0, i32 5
  %21 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P50 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %21, i32 0, i32 0
  %call51 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %K48, %struct.mbedtls_mpi* noundef %K49, %struct.mbedtls_mpi* noundef %P50) #5
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body47
  br label %cleanup

if.end54:                                         ; preds = %do.body47
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  %22 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K56 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %22, i32 0, i32 5
  %call57 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %K56) #5
  %23 = load i64*, i64** %olen.addr, align 8
  store i64 %call57, i64* %23, align 8
  br label %do.body58

do.body58:                                        ; preds = %do.end55
  %24 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K59 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %24, i32 0, i32 5
  %25 = load i8*, i8** %output.addr, align 8
  %26 = load i64*, i64** %olen.addr, align 8
  %27 = load i64, i64* %26, align 8
  %call60 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %K59, i8* noundef %25, i64 noundef %27) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body58
  br label %cleanup

if.end63:                                         ; preds = %do.body58
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then62, %if.then53, %if.then44, %if.then36, %if.then29, %if.then22, %if.then15
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %GYb) #5
  %28 = load i32, i32* %ret, align 4
  %cmp65 = icmp ne i32 %28, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %cleanup
  %29 = load i32, i32* %ret, align 4
  %call67 = call i32 @mbedtls_error_add(i32 noundef -13056, i32 noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 480) #5
  store i32 %call67, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %cleanup
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then66, %if.then10, %if.then6, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_update_blinding(%struct.mbedtls_dhm_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %R = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %R) #5
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %0, i32 0, i32 2
  %1 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %pX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %1, i32 0, i32 9
  %call = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %pX) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %pX1 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %2, i32 0, i32 9
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X2 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 2
  %call3 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %pX1, %struct.mbedtls_mpi* noundef %X2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %4, i32 0, i32 7
  %call7 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Vi, i64 noundef 1) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  br label %cleanup

if.end10:                                         ; preds = %do.body6
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %5 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %5, i32 0, i32 8
  %call13 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Vf, i64 noundef 1) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %entry
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi19 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %6, i32 0, i32 7
  %call20 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Vi19, i64 noundef 1) #5
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end58

if.then22:                                        ; preds = %if.end18
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %7 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi24 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %7, i32 0, i32 7
  %8 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi25 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %8, i32 0, i32 7
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi26 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 7
  %call27 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vi24, %struct.mbedtls_mpi* noundef %Vi25, %struct.mbedtls_mpi* noundef %Vi26) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body23
  br label %cleanup

if.end30:                                         ; preds = %do.body23
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %10 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi33 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %10, i32 0, i32 7
  %11 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi34 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %11, i32 0, i32 7
  %12 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %12, i32 0, i32 0
  %call35 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vi33, %struct.mbedtls_mpi* noundef %Vi34, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body32
  br label %cleanup

if.end38:                                         ; preds = %do.body32
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %13 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf41 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %13, i32 0, i32 8
  %14 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf42 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %14, i32 0, i32 8
  %15 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf43 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %15, i32 0, i32 8
  %call44 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vf41, %struct.mbedtls_mpi* noundef %Vf42, %struct.mbedtls_mpi* noundef %Vf43) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body40
  br label %cleanup

if.end47:                                         ; preds = %do.body40
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %16 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf50 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %16, i32 0, i32 8
  %17 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf51 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %17, i32 0, i32 8
  %18 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P52 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %18, i32 0, i32 0
  %call53 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vf50, %struct.mbedtls_mpi* noundef %Vf51, %struct.mbedtls_mpi* noundef %P52) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body49
  br label %cleanup

if.end56:                                         ; preds = %do.body49
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  store i32 0, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end18
  br label %do.body59

do.body59:                                        ; preds = %if.end58
  %19 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi60 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %19, i32 0, i32 7
  %20 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P61 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %20, i32 0, i32 0
  %21 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %22 = load i8*, i8** %p_rng.addr, align 8
  %call62 = call i32 @dhm_random_below(%struct.mbedtls_mpi* noundef %Vi60, %struct.mbedtls_mpi* noundef %P61, i32 (i8*, i8*, i64)* noundef %21, i8* noundef %22) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %do.body59
  br label %cleanup

if.end65:                                         ; preds = %do.body59
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %23 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P68 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %23, i32 0, i32 0
  %24 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %25 = load i8*, i8** %p_rng.addr, align 8
  %call69 = call i32 @dhm_random_below(%struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %P68, i32 (i8*, i8*, i64)* noundef %24, i8* noundef %25) #5
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.body67
  br label %cleanup

if.end72:                                         ; preds = %do.body67
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %26 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf75 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %26, i32 0, i32 8
  %27 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi76 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %27, i32 0, i32 7
  %call77 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vf75, %struct.mbedtls_mpi* noundef %Vi76, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call77, i32* %ret, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body74
  br label %cleanup

if.end80:                                         ; preds = %do.body74
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %28 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf83 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %28, i32 0, i32 8
  %29 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf84 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %29, i32 0, i32 8
  %30 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P85 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %30, i32 0, i32 0
  %call86 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vf83, %struct.mbedtls_mpi* noundef %Vf84, %struct.mbedtls_mpi* noundef %P85) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body82
  br label %cleanup

if.end89:                                         ; preds = %do.body82
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %31 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf92 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %31, i32 0, i32 8
  %32 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf93 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %32, i32 0, i32 8
  %33 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P94 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %33, i32 0, i32 0
  %call95 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %Vf92, %struct.mbedtls_mpi* noundef %Vf93, %struct.mbedtls_mpi* noundef %P94) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body91
  br label %cleanup

if.end98:                                         ; preds = %do.body91
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  %34 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf101 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %34, i32 0, i32 8
  %35 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf102 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %35, i32 0, i32 8
  %call103 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vf101, %struct.mbedtls_mpi* noundef %Vf102, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %do.body100
  br label %cleanup

if.end106:                                        ; preds = %do.body100
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  br label %do.body108

do.body108:                                       ; preds = %do.end107
  %36 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf109 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %36, i32 0, i32 8
  %37 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf110 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %37, i32 0, i32 8
  %38 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P111 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %38, i32 0, i32 0
  %call112 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vf109, %struct.mbedtls_mpi* noundef %Vf110, %struct.mbedtls_mpi* noundef %P111) #5
  store i32 %call112, i32* %ret, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %do.body108
  br label %cleanup

if.end115:                                        ; preds = %do.body108
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  br label %do.body117

do.body117:                                       ; preds = %do.end116
  %39 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf118 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %39, i32 0, i32 8
  %40 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf119 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %40, i32 0, i32 8
  %41 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X120 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %41, i32 0, i32 2
  %42 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P121 = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %42, i32 0, i32 0
  %43 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %43, i32 0, i32 6
  %call122 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %Vf118, %struct.mbedtls_mpi* noundef %Vf119, %struct.mbedtls_mpi* noundef %X120, %struct.mbedtls_mpi* noundef %P121, %struct.mbedtls_mpi* noundef %RP) #5
  store i32 %call122, i32* %ret, align 4
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %do.body117
  br label %cleanup

if.end125:                                        ; preds = %do.body117
  br label %do.end126

do.end126:                                        ; preds = %if.end125
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %if.then124, %if.then114, %if.then105, %if.then97, %if.then88, %if.then79, %if.then71, %if.then64, %if.then55, %if.then46, %if.then37, %if.then29, %if.then15, %if.then9, %if.then5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %R) #5
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %do.end57, %do.end17
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  store %struct.mbedtls_dhm_context* %ctx, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_dhm_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %pX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %1, i32 0, i32 9
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %pX) #5
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %2, i32 0, i32 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Vf) #5
  %3 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %3, i32 0, i32 7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Vi) #5
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %4, i32 0, i32 6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RP) #5
  %5 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %5, i32 0, i32 5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #5
  %6 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %6, i32 0, i32 4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %GY) #5
  %7 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %7, i32 0, i32 3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %GX) #5
  %8 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %8, i32 0, i32 2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #5
  %9 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %9, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %G) #5
  %10 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %10, i32 0, i32 0
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  %11 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %ctx.addr, align 8
  %12 = bitcast %struct.mbedtls_dhm_context* %11 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %12, i64 noundef 240) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_parse_dhm(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %dhmin, i64 noundef %dhminlen) #0 {
entry:
  %dhm.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %dhmin.addr = alloca i8*, align 8
  %dhminlen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  %rec = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_dhm_context* %dhm, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  store i8* %dhmin, i8** %dhmin.addr, align 8
  store i64 %dhminlen, i64* %dhminlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #5
  %0 = load i64, i64* %dhminlen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i8*, i8** %dhmin.addr, align 8
  %2 = load i64, i64* %dhminlen.addr, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -4224, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %dhmin.addr, align 8
  %call = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4, i8* noundef null, i64 noundef 0, i64* noundef %dhminlen.addr) #5
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %ret, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %6 = load i64, i64* %buflen, align 8
  store i64 %6, i64* %dhminlen.addr, align 8
  br label %if.end13

if.else8:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %7, -4224
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else8
  br label %exit

if.end12:                                         ; preds = %if.else8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  %8 = load i32, i32* %ret, align 4
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  %buf = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %9 = load i8*, i8** %buf, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %10 = load i8*, i8** %dhmin.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %10, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %12 = load i64, i64* %dhminlen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %end, align 8
  %13 = load i8*, i8** %end, align 8
  %call16 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %13, i64* noundef %len, i32 noundef 48) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %cond.end
  %14 = load i32, i32* %ret, align 4
  %call20 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 562) #5
  store i32 %call20, i32* %ret, align 4
  br label %exit

if.end21:                                         ; preds = %cond.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i64, i64* %len, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %add.ptr22, i8** %end, align 8
  %17 = load i8*, i8** %end, align 8
  %18 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %18, i32 0, i32 0
  %call23 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %17, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end21
  %19 = load i8*, i8** %end, align 8
  %20 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %20, i32 0, i32 1
  %call27 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %19, %struct.mbedtls_mpi* noundef %G) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %lor.lhs.false26, %if.end21
  %21 = load i32, i32* %ret, align 4
  %call31 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 571) #5
  store i32 %call31, i32* %ret, align 4
  br label %exit

if.end32:                                         ; preds = %lor.lhs.false26
  %22 = load i8*, i8** %p, align 8
  %23 = load i8*, i8** %end, align 8
  %cmp33 = icmp ne i8* %22, %23
  br i1 %cmp33, label %if.then35, label %if.end47

if.then35:                                        ; preds = %if.end32
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %rec) #5
  %24 = load i8*, i8** %end, align 8
  %call36 = call i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %24, %struct.mbedtls_mpi* noundef %rec) #5
  store i32 %call36, i32* %ret, align 4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %rec) #5
  %25 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %25, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then35
  %26 = load i32, i32* %ret, align 4
  %call40 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 585) #5
  store i32 %call40, i32* %ret, align 4
  br label %exit

if.end41:                                         ; preds = %if.then35
  %27 = load i8*, i8** %p, align 8
  %28 = load i8*, i8** %end, align 8
  %cmp42 = icmp ne i8* %27, %28
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %call45 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef -102, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 591) #5
  store i32 %call45, i32* %ret, align 4
  br label %exit

if.end46:                                         ; preds = %if.end41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end32
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end47, %if.then44, %if.then39, %if.then30, %if.then19, %if.then11
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %29 = load i32, i32* %ret, align 4
  %cmp48 = icmp ne i32 %29, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %exit
  %30 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %30) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %exit
  %31 = load i32, i32* %ret, align 4
  ret i32 %31
}

declare dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef) #2

declare dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_asn1_get_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_parse_dhmfile(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %dhm.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_dhm_context* %dhm, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @load_file(i8* noundef %0, i8** noundef %buf, i64* noundef %n) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm.addr, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i64, i64* %n, align 8
  %call3 = call i32 @mbedtls_dhm_parse_dhm(%struct.mbedtls_dhm_context* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call3, i32* %ret, align 4
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #5
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %7) #4
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_file(i8* noundef %path, i8** noundef %buf, i64* noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %size = alloca i64, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 2) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %2) #5
  store i64 %call2, i64* %size, align 8
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %3) #5
  store i32 -13440, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef 0, i32 noundef 0) #5
  %5 = load i64, i64* %size, align 8
  %6 = load i64*, i64** %n.addr, align 8
  store i64 %5, i64* %6, align 8
  %7 = load i64*, i64** %n.addr, align 8
  %8 = load i64, i64* %7, align 8
  %add = add i64 %8, 1
  %cmp8 = icmp eq i64 %add, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load i64*, i64** %n.addr, align 8
  %10 = load i64, i64* %9, align 8
  %add9 = add i64 %10, 1
  %call10 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add9) #4
  %11 = load i8**, i8*** %buf.addr, align 8
  store i8* %call10, i8** %11, align 8
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %12) #5
  store i32 -13312, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %13 = load i8**, i8*** %buf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64*, i64** %n.addr, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i64 @fread(i8* noundef %14, i64 noundef 1, i64 noundef %16, %struct._IO_FILE* noundef %17) #5
  %18 = load i64*, i64** %n.addr, align 8
  %19 = load i64, i64* %18, align 8
  %cmp16 = icmp ne i64 %call15, %19
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* noundef %20) #5
  %21 = load i8**, i8*** %buf.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64*, i64** %n.addr, align 8
  %24 = load i64, i64* %23, align 8
  %add19 = add i64 %24, 1
  call void @mbedtls_platform_zeroize(i8* noundef %22, i64 noundef %add19) #5
  %25 = load i8**, i8*** %buf.addr, align 8
  %26 = load i8*, i8** %25, align 8
  call void @free(i8* noundef %26) #4
  store i32 -13440, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* noundef %27) #5
  %28 = load i8**, i8*** %buf.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64*, i64** %n.addr, align 8
  %31 = load i64, i64* %30, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %arrayidx, align 1
  %32 = load i8**, i8*** %buf.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %call22 = call i8* @strstr(i8* noundef %33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #6
  %cmp23 = icmp ne i8* %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %34 = load i64*, i64** %n.addr, align 8
  %35 = load i64, i64* %34, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %34, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then17, %if.then12, %if.then4, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %dhm = alloca %struct.mbedtls_dhm_context, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm) #5
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @mbedtls_dhm_parse_dhm(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef getelementptr inbounds ([251 x i8], [251 x i8]* @mbedtls_test_dhm_params, i64 0, i64 0), i64 noundef 251) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp4 = icmp ne i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  store i32 1, i32* %ret, align 4
  br label %exit

if.end8:                                          ; preds = %if.end
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp9 = icmp ne i32 %2, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %exit

exit:                                             ; preds = %if.end12, %if.end7
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm) #5
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_random_below(%struct.mbedtls_mpi* noundef %R, %struct.mbedtls_mpi* noundef %M, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %R.addr = alloca %struct.mbedtls_mpi*, align 8
  %M.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %R, %struct.mbedtls_mpi** %R.addr, align 8
  store %struct.mbedtls_mpi* %M, %struct.mbedtls_mpi** %M.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %M.addr, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef %0, i64 noundef 3, %struct.mbedtls_mpi* noundef %1, i32 (i8*, i8*, i64)* noundef %2, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %R.addr, align 8
  %call2 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %4, %struct.mbedtls_mpi* noundef %5, i64 noundef 1) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.then4, %if.then
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef, i64 noundef, %struct.mbedtls_mpi* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #3

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
