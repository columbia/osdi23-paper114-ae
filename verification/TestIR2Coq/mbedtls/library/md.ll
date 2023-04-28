; ModuleID = 'md.c'
source_filename = "md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md_info_t = type { i8*, i32, i8, i8 }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md5_context = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.mbedtls_ripemd160_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.mbedtls_sha1_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.mbedtls_sha256_context = type { [2 x i32], [8 x i32], [64 x i8], i32 }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@mbedtls_md5_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 1, i8 16, i8 64 }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"RIPEMD160\00", align 1
@mbedtls_ripemd160_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 7, i8 20, i8 64 }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@mbedtls_sha1_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 2, i8 20, i8 64 }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@mbedtls_sha224_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 3, i8 28, i8 64 }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@mbedtls_sha256_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 4, i8 32, i8 64 }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@mbedtls_sha384_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 5, i8 48, i8 -128 }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@mbedtls_sha512_info = dso_local constant %struct.mbedtls_md_info_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, i8 64, i8 -128 }, align 8
@supported_digests = internal constant [8 x i32] [i32 6, i32 5, i32 4, i32 3, i32 2, i32 7, i32 1, i32 0], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"SHA\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_md_list() #0 {
entry:
  ret i32* getelementptr inbounds ([8 x i32], [8 x i32]* @supported_digests, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef %md_name) #0 {
entry:
  %retval = alloca %struct.mbedtls_md_info_t*, align 8
  %md_name.addr = alloca i8*, align 8
  store i8* %md_name, i8** %md_name.addr, align 8
  %0 = load i8*, i8** %md_name.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %md_name.addr, align 8
  %call = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 1) #5
  store %struct.mbedtls_md_info_t* %call2, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %md_name.addr, align 8
  %call4 = call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 7) #5
  store %struct.mbedtls_md_info_t* %call7, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end3
  %3 = load i8*, i8** %md_name.addr, align 8
  %call9 = call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end8
  %4 = load i8*, i8** %md_name.addr, align 8
  %call11 = call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %4) #4
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.end8
  %call14 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 2) #5
  store %struct.mbedtls_md_info_t* %call14, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %5 = load i8*, i8** %md_name.addr, align 8
  %call16 = call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %5) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 3) #5
  store %struct.mbedtls_md_info_t* %call19, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end15
  %6 = load i8*, i8** %md_name.addr, align 8
  %call21 = call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6) #4
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call24 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #5
  store %struct.mbedtls_md_info_t* %call24, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end20
  %7 = load i8*, i8** %md_name.addr, align 8
  %call26 = call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %7) #4
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call29 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 5) #5
  store %struct.mbedtls_md_info_t* %call29, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end25
  %8 = load i8*, i8** %md_name.addr, align 8
  %call31 = call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %8) #4
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call34 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 6) #5
  store %struct.mbedtls_md_info_t* %call34, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end30
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then6, %if.then1, %if.then
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %retval, align 8
  ret %struct.mbedtls_md_info_t* %9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %md_type) #0 {
entry:
  %retval = alloca %struct.mbedtls_md_info_t*, align 8
  %md_type.addr = alloca i32, align 4
  store i32 %md_type, i32* %md_type.addr, align 4
  %0 = load i32, i32* %md_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_md5_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_ripemd160_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha1_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha224_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha256_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha384_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store %struct.mbedtls_md_info_t* @mbedtls_sha512_info, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %retval, align 8
  ret %struct.mbedtls_md_info_t* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_ctx(%struct.mbedtls_md_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca %struct.mbedtls_md_info_t*, align 8
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mbedtls_md_info_t* null, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  store %struct.mbedtls_md_info_t* %2, %struct.mbedtls_md_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %retval, align 8
  ret %struct.mbedtls_md_info_t* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_md_context_t* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 1
  %4 = load i8*, i8** %md_ctx, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info4, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 8
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
    i32 6, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.then3
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx5 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %8, i32 0, i32 1
  %9 = load i8*, i8** %md_ctx5, align 8
  %10 = bitcast i8* %9 to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef %10) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then3
  %11 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx7 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %11, i32 0, i32 1
  %12 = load i8*, i8** %md_ctx7, align 8
  %13 = bitcast i8* %12 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_free(%struct.mbedtls_ripemd160_context* noundef %13) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then3
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx9 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %14, i32 0, i32 1
  %15 = load i8*, i8** %md_ctx9, align 8
  %16 = bitcast i8* %15 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef %16) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then3
  %17 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %17, i32 0, i32 1
  %18 = load i8*, i8** %md_ctx11, align 8
  %19 = bitcast i8* %18 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %19) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then3
  %20 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %20, i32 0, i32 1
  %21 = load i8*, i8** %md_ctx13, align 8
  %22 = bitcast i8* %21 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %22) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then3
  %23 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx15 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %23, i32 0, i32 1
  %24 = load i8*, i8** %md_ctx15, align 8
  %25 = bitcast i8* %24 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %25) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then3
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx17 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %md_ctx17, align 8
  %28 = bitcast i8* %27 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %28) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %29 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %29, i32 0, i32 1
  %30 = load i8*, i8** %md_ctx18, align 8
  call void @free(i8* noundef %30) #6
  br label %if.end19

if.end19:                                         ; preds = %sw.epilog, %if.end
  %31 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %31, i32 0, i32 2
  %32 = load i8*, i8** %hmac_ctx, align 8
  %cmp20 = icmp ne i8* %32, null
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end19
  %33 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx22 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %33, i32 0, i32 2
  %34 = load i8*, i8** %hmac_ctx22, align 8
  %35 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info23 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %35, i32 0, i32 0
  %36 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info23, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %36, i32 0, i32 3
  %37 = load i8, i8* %block_size, align 1
  %conv = zext i8 %37 to i32
  %mul = mul nsw i32 2, %conv
  %conv24 = sext i32 %mul to i64
  call void @mbedtls_platform_zeroize(i8* noundef %34, i64 noundef %conv24) #5
  %38 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx25 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %38, i32 0, i32 2
  %39 = load i8*, i8** %hmac_ctx25, align 8
  call void @free(i8* noundef %39) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19
  %40 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %41 = bitcast %struct.mbedtls_md_context_t* %40 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %41, i64 noundef 24) #5
  br label %return

return:                                           ; preds = %if.end26, %if.then
  ret void
}

declare dso_local void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef) #3

declare dso_local void @mbedtls_ripemd160_free(%struct.mbedtls_ripemd160_context* noundef) #3

declare dso_local void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef) #3

declare dso_local void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef) #3

declare dso_local void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* noundef %dst, %struct.mbedtls_md_context_t* noundef %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %src.addr = alloca %struct.mbedtls_md_context_t*, align 8
  store %struct.mbedtls_md_context_t* %dst, %struct.mbedtls_md_context_t** %dst.addr, align 8
  store %struct.mbedtls_md_context_t* %src, %struct.mbedtls_md_context_t** %src.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %cmp3 = icmp eq %struct.mbedtls_md_context_t* %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_info5 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info5, align 8
  %cmp6 = icmp eq %struct.mbedtls_md_info_t* %5, null
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_info8 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info8, align 8
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_info9 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info9, align 8
  %cmp10 = icmp ne %struct.mbedtls_md_info_t* %7, %9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_info11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info11, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %11, i32 0, i32 1
  %12 = load i32, i32* %type, align 8
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb13
    i32 2, label %sw.bb16
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %13, i32 0, i32 1
  %14 = load i8*, i8** %md_ctx, align 8
  %15 = bitcast i8* %14 to %struct.mbedtls_md5_context*
  %16 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx12 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %16, i32 0, i32 1
  %17 = load i8*, i8** %md_ctx12, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_clone(%struct.mbedtls_md5_context* noundef %15, %struct.mbedtls_md5_context* noundef %18) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %19 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx14 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %19, i32 0, i32 1
  %20 = load i8*, i8** %md_ctx14, align 8
  %21 = bitcast i8* %20 to %struct.mbedtls_ripemd160_context*
  %22 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx15 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %22, i32 0, i32 1
  %23 = load i8*, i8** %md_ctx15, align 8
  %24 = bitcast i8* %23 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_clone(%struct.mbedtls_ripemd160_context* noundef %21, %struct.mbedtls_ripemd160_context* noundef %24) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %25 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx17 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %25, i32 0, i32 1
  %26 = load i8*, i8** %md_ctx17, align 8
  %27 = bitcast i8* %26 to %struct.mbedtls_sha1_context*
  %28 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %28, i32 0, i32 1
  %29 = load i8*, i8** %md_ctx18, align 8
  %30 = bitcast i8* %29 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_clone(%struct.mbedtls_sha1_context* noundef %27, %struct.mbedtls_sha1_context* noundef %30) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %31 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx20 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %31, i32 0, i32 1
  %32 = load i8*, i8** %md_ctx20, align 8
  %33 = bitcast i8* %32 to %struct.mbedtls_sha256_context*
  %34 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %34, i32 0, i32 1
  %35 = load i8*, i8** %md_ctx21, align 8
  %36 = bitcast i8* %35 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %33, %struct.mbedtls_sha256_context* noundef %36) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %37 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx23 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %37, i32 0, i32 1
  %38 = load i8*, i8** %md_ctx23, align 8
  %39 = bitcast i8* %38 to %struct.mbedtls_sha256_context*
  %40 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx24 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %40, i32 0, i32 1
  %41 = load i8*, i8** %md_ctx24, align 8
  %42 = bitcast i8* %41 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %39, %struct.mbedtls_sha256_context* noundef %42) #5
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %43 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %43, i32 0, i32 1
  %44 = load i8*, i8** %md_ctx26, align 8
  %45 = bitcast i8* %44 to %struct.mbedtls_sha512_context*
  %46 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx27 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %46, i32 0, i32 1
  %47 = load i8*, i8** %md_ctx27, align 8
  %48 = bitcast i8* %47 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %45, %struct.mbedtls_sha512_context* noundef %48) #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %49 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %dst.addr, align 8
  %md_ctx29 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %49, i32 0, i32 1
  %50 = load i8*, i8** %md_ctx29, align 8
  %51 = bitcast i8* %50 to %struct.mbedtls_sha512_context*
  %52 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %src.addr, align 8
  %md_ctx30 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %52, i32 0, i32 1
  %53 = load i8*, i8** %md_ctx30, align 8
  %54 = bitcast i8* %53 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %51, %struct.mbedtls_sha512_context* noundef %54) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

declare dso_local void @mbedtls_md5_clone(%struct.mbedtls_md5_context* noundef, %struct.mbedtls_md5_context* noundef) #3

declare dso_local void @mbedtls_ripemd160_clone(%struct.mbedtls_ripemd160_context* noundef, %struct.mbedtls_ripemd160_context* noundef) #3

declare dso_local void @mbedtls_sha1_clone(%struct.mbedtls_sha1_context* noundef, %struct.mbedtls_sha1_context* noundef) #3

declare dso_local void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef, %struct.mbedtls_sha256_context* noundef) #3

declare dso_local void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef, %struct.mbedtls_sha512_context* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %md_info, i32 noundef %hmac) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %hmac.addr = alloca i32, align 4
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i32 %hmac, i32* %hmac.addr, align 4
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_context_t* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info2 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 0
  store %struct.mbedtls_md_info_t* %2, %struct.mbedtls_md_info_t** %md_info2, align 8
  %4 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %4, i32 0, i32 1
  store i8* null, i8** %md_ctx, align 8
  %5 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %5, i32 0, i32 2
  store i8* null, i8** %hmac_ctx, align 8
  %6 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 8
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb9
    i32 2, label %sw.bb19
    i32 3, label %sw.bb29
    i32 4, label %sw.bb39
    i32 5, label %sw.bb49
    i32 6, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #6
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx3 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %8, i32 0, i32 1
  store i8* %call, i8** %md_ctx3, align 8
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %md_ctx4, align 8
  %cmp5 = icmp eq i8* %10, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %do.body
  %11 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx8 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %11, i32 0, i32 1
  %12 = load i8*, i8** %md_ctx8, align 8
  %13 = bitcast i8* %12 to %struct.mbedtls_md5_context*
  call void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.end7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %sw.bb9
  %call11 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 92) #6
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx12 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %14, i32 0, i32 1
  store i8* %call11, i8** %md_ctx12, align 8
  %15 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %15, i32 0, i32 1
  %16 = load i8*, i8** %md_ctx13, align 8
  %cmp14 = icmp eq i8* %16, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body10
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %do.body10
  %17 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx17 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %17, i32 0, i32 1
  %18 = load i8*, i8** %md_ctx17, align 8
  %19 = bitcast i8* %18 to %struct.mbedtls_ripemd160_context*
  call void @mbedtls_ripemd160_init(%struct.mbedtls_ripemd160_context* noundef %19) #5
  br label %do.end18

do.end18:                                         ; preds = %if.end16
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  br label %do.body20

do.body20:                                        ; preds = %sw.bb19
  %call21 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 92) #6
  %20 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx22 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %20, i32 0, i32 1
  store i8* %call21, i8** %md_ctx22, align 8
  %21 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx23 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %21, i32 0, i32 1
  %22 = load i8*, i8** %md_ctx23, align 8
  %cmp24 = icmp eq i8* %22, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body20
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %do.body20
  %23 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx27 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %23, i32 0, i32 1
  %24 = load i8*, i8** %md_ctx27, align 8
  %25 = bitcast i8* %24 to %struct.mbedtls_sha1_context*
  call void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef %25) #5
  br label %do.end28

do.end28:                                         ; preds = %if.end26
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  br label %do.body30

do.body30:                                        ; preds = %sw.bb29
  %call31 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 108) #6
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx32 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %26, i32 0, i32 1
  store i8* %call31, i8** %md_ctx32, align 8
  %27 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx33 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %27, i32 0, i32 1
  %28 = load i8*, i8** %md_ctx33, align 8
  %cmp34 = icmp eq i8* %28, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body30
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %do.body30
  %29 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx37 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %29, i32 0, i32 1
  %30 = load i8*, i8** %md_ctx37, align 8
  %31 = bitcast i8* %30 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %31) #5
  br label %do.end38

do.end38:                                         ; preds = %if.end36
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  br label %do.body40

do.body40:                                        ; preds = %sw.bb39
  %call41 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 108) #6
  %32 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx42 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %32, i32 0, i32 1
  store i8* %call41, i8** %md_ctx42, align 8
  %33 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx43 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %33, i32 0, i32 1
  %34 = load i8*, i8** %md_ctx43, align 8
  %cmp44 = icmp eq i8* %34, null
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body40
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %do.body40
  %35 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx47 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %35, i32 0, i32 1
  %36 = load i8*, i8** %md_ctx47, align 8
  %37 = bitcast i8* %36 to %struct.mbedtls_sha256_context*
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %37) #5
  br label %do.end48

do.end48:                                         ; preds = %if.end46
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end
  br label %do.body50

do.body50:                                        ; preds = %sw.bb49
  %call51 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 216) #6
  %38 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx52 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %38, i32 0, i32 1
  store i8* %call51, i8** %md_ctx52, align 8
  %39 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx53 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %39, i32 0, i32 1
  %40 = load i8*, i8** %md_ctx53, align 8
  %cmp54 = icmp eq i8* %40, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body50
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %do.body50
  %41 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx57 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %41, i32 0, i32 1
  %42 = load i8*, i8** %md_ctx57, align 8
  %43 = bitcast i8* %42 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %43) #5
  br label %do.end58

do.end58:                                         ; preds = %if.end56
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  br label %do.body60

do.body60:                                        ; preds = %sw.bb59
  %call61 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 216) #6
  %44 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx62 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %44, i32 0, i32 1
  store i8* %call61, i8** %md_ctx62, align 8
  %45 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx63 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %45, i32 0, i32 1
  %46 = load i8*, i8** %md_ctx63, align 8
  %cmp64 = icmp eq i8* %46, null
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body60
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %do.body60
  %47 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx67 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %47, i32 0, i32 1
  %48 = load i8*, i8** %md_ctx67, align 8
  %49 = bitcast i8* %48 to %struct.mbedtls_sha512_context*
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %49) #5
  br label %do.end68

do.end68:                                         ; preds = %if.end66
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %do.end68, %do.end58, %do.end48, %do.end38, %do.end28, %do.end18, %do.end
  %50 = load i32, i32* %hmac.addr, align 4
  %cmp69 = icmp ne i32 %50, 0
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %sw.epilog
  %51 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %51, i32 0, i32 3
  %52 = load i8, i8* %block_size, align 1
  %conv = zext i8 %52 to i64
  %call71 = call noalias i8* @calloc(i64 noundef 2, i64 noundef %conv) #6
  %53 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx72 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %53, i32 0, i32 2
  store i8* %call71, i8** %hmac_ctx72, align 8
  %54 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx73 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %54, i32 0, i32 2
  %55 = load i8*, i8** %hmac_ctx73, align 8
  %cmp74 = icmp eq i8* %55, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then70
  %56 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %56) #5
  store i32 -20864, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.then70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then76, %sw.default, %if.then65, %if.then55, %if.then45, %if.then35, %if.then25, %if.then15, %if.then6, %if.then
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef) #3

declare dso_local void @mbedtls_ripemd160_init(%struct.mbedtls_ripemd160_context* noundef) #3

declare dso_local void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef) #3

declare dso_local void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef) #3

declare dso_local void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info2 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info2, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 8
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 1
  %7 = load i8*, i8** %md_ctx, align 8
  %8 = bitcast i8* %7 to %struct.mbedtls_md5_context*
  %call = call i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %9, i32 0, i32 1
  %10 = load i8*, i8** %md_ctx4, align 8
  %11 = bitcast i8* %10 to %struct.mbedtls_ripemd160_context*
  %call5 = call i32 @mbedtls_ripemd160_starts(%struct.mbedtls_ripemd160_context* noundef %11) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %12 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx7 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %12, i32 0, i32 1
  %13 = load i8*, i8** %md_ctx7, align 8
  %14 = bitcast i8* %13 to %struct.mbedtls_sha1_context*
  %call8 = call i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef %14) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %15 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %15, i32 0, i32 1
  %16 = load i8*, i8** %md_ctx10, align 8
  %17 = bitcast i8* %16 to %struct.mbedtls_sha256_context*
  %call11 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %17, i32 noundef 1) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %18 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %18, i32 0, i32 1
  %19 = load i8*, i8** %md_ctx13, align 8
  %20 = bitcast i8* %19 to %struct.mbedtls_sha256_context*
  %call14 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %20, i32 noundef 0) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %21 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx16 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %21, i32 0, i32 1
  %22 = load i8*, i8** %md_ctx16, align 8
  %23 = bitcast i8* %22 to %struct.mbedtls_sha512_context*
  %call17 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %23, i32 noundef 1) #5
  store i32 %call17, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %24 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx19 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %24, i32 0, i32 1
  %25 = load i8*, i8** %md_ctx19, align 8
  %26 = bitcast i8* %25 to %struct.mbedtls_sha512_context*
  %call20 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %26, i32 noundef 0) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef) #3

declare dso_local i32 @mbedtls_ripemd160_starts(%struct.mbedtls_ripemd160_context* noundef) #3

declare dso_local i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef) #3

declare dso_local i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info2 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info2, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 8
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 1
  %7 = load i8*, i8** %md_ctx, align 8
  %8 = bitcast i8* %7 to %struct.mbedtls_md5_context*
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %ilen.addr, align 8
  %call = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %8, i8* noundef %9, i64 noundef %10) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %11 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %11, i32 0, i32 1
  %12 = load i8*, i8** %md_ctx4, align 8
  %13 = bitcast i8* %12 to %struct.mbedtls_ripemd160_context*
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i64, i64* %ilen.addr, align 8
  %call5 = call i32 @mbedtls_ripemd160_update(%struct.mbedtls_ripemd160_context* noundef %13, i8* noundef %14, i64 noundef %15) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %16 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx7 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %16, i32 0, i32 1
  %17 = load i8*, i8** %md_ctx7, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_sha1_context*
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %ilen.addr, align 8
  %call8 = call i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %18, i8* noundef %19, i64 noundef %20) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %21 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %21, i32 0, i32 1
  %22 = load i8*, i8** %md_ctx10, align 8
  %23 = bitcast i8* %22 to %struct.mbedtls_sha256_context*
  %24 = load i8*, i8** %input.addr, align 8
  %25 = load i64, i64* %ilen.addr, align 8
  %call11 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %23, i8* noundef %24, i64 noundef %25) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %md_ctx13, align 8
  %28 = bitcast i8* %27 to %struct.mbedtls_sha256_context*
  %29 = load i8*, i8** %input.addr, align 8
  %30 = load i64, i64* %ilen.addr, align 8
  %call14 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %28, i8* noundef %29, i64 noundef %30) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %31 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx16 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %31, i32 0, i32 1
  %32 = load i8*, i8** %md_ctx16, align 8
  %33 = bitcast i8* %32 to %struct.mbedtls_sha512_context*
  %34 = load i8*, i8** %input.addr, align 8
  %35 = load i64, i64* %ilen.addr, align 8
  %call17 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %33, i8* noundef %34, i64 noundef %35) #5
  store i32 %call17, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %36 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx19 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %36, i32 0, i32 1
  %37 = load i8*, i8** %md_ctx19, align 8
  %38 = bitcast i8* %37 to %struct.mbedtls_sha512_context*
  %39 = load i8*, i8** %input.addr, align 8
  %40 = load i64, i64* %ilen.addr, align 8
  %call20 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %38, i8* noundef %39, i64 noundef %40) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

declare dso_local i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ripemd160_update(%struct.mbedtls_ripemd160_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info2 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info2, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 8
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 1
  %7 = load i8*, i8** %md_ctx, align 8
  %8 = bitcast i8* %7 to %struct.mbedtls_md5_context*
  %9 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %8, i8* noundef %9) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %10, i32 0, i32 1
  %11 = load i8*, i8** %md_ctx4, align 8
  %12 = bitcast i8* %11 to %struct.mbedtls_ripemd160_context*
  %13 = load i8*, i8** %output.addr, align 8
  %call5 = call i32 @mbedtls_ripemd160_finish(%struct.mbedtls_ripemd160_context* noundef %12, i8* noundef %13) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx7 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %14, i32 0, i32 1
  %15 = load i8*, i8** %md_ctx7, align 8
  %16 = bitcast i8* %15 to %struct.mbedtls_sha1_context*
  %17 = load i8*, i8** %output.addr, align 8
  %call8 = call i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef %16, i8* noundef %17) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %18 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %18, i32 0, i32 1
  %19 = load i8*, i8** %md_ctx10, align 8
  %20 = bitcast i8* %19 to %struct.mbedtls_sha256_context*
  %21 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %20, i8* noundef %21) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %22 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %22, i32 0, i32 1
  %23 = load i8*, i8** %md_ctx13, align 8
  %24 = bitcast i8* %23 to %struct.mbedtls_sha256_context*
  %25 = load i8*, i8** %output.addr, align 8
  %call14 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %24, i8* noundef %25) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx16 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %md_ctx16, align 8
  %28 = bitcast i8* %27 to %struct.mbedtls_sha512_context*
  %29 = load i8*, i8** %output.addr, align 8
  %call17 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %28, i8* noundef %29) #5
  store i32 %call17, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %30 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx19 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %30, i32 0, i32 1
  %31 = load i8*, i8** %md_ctx19, align 8
  %32 = bitcast i8* %31 to %struct.mbedtls_sha512_context*
  %33 = load i8*, i8** %output.addr, align 8
  %call20 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %32, i8* noundef %33) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

declare dso_local i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ripemd160_finish(%struct.mbedtls_ripemd160_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %input, i64 noundef %ilen, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %5 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_md5(i8* noundef %3, i64 noundef %4, i8* noundef %5) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i64, i64* %ilen.addr, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %call2 = call i32 @mbedtls_ripemd160(i8* noundef %6, i64 noundef %7, i8* noundef %8) #5
  store i32 %call2, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i64, i64* %ilen.addr, align 8
  %11 = load i8*, i8** %output.addr, align 8
  %call4 = call i32 @mbedtls_sha1(i8* noundef %9, i64 noundef %10, i8* noundef %11) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %if.end
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %ilen.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %call6 = call i32 @mbedtls_sha256(i8* noundef %12, i64 noundef %13, i8* noundef %14, i32 noundef 1) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %ilen.addr, align 8
  %17 = load i8*, i8** %output.addr, align 8
  %call8 = call i32 @mbedtls_sha256(i8* noundef %15, i64 noundef %16, i8* noundef %17, i32 noundef 0) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %18 = load i8*, i8** %input.addr, align 8
  %19 = load i64, i64* %ilen.addr, align 8
  %20 = load i8*, i8** %output.addr, align 8
  %call10 = call i32 @mbedtls_sha512(i8* noundef %18, i64 noundef %19, i8* noundef %20, i32 noundef 1) #5
  store i32 %call10, i32* %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %if.end
  %21 = load i8*, i8** %input.addr, align 8
  %22 = load i64, i64* %ilen.addr, align 8
  %23 = load i8*, i8** %output.addr, align 8
  %call12 = call i32 @mbedtls_sha512(i8* noundef %21, i64 noundef %22, i8* noundef %23, i32 noundef 0) #5
  store i32 %call12, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_md5(i8* noundef, i64 noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ripemd160(i8* noundef, i64 noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_sha256(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_sha512(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_file(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %path, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %path.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %n = alloca i64, align 8
  %ctx = alloca %struct.mbedtls_md_context_t, align 8
  %buf = alloca [1024 x i8], align 16
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -20992, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %2, i8* noundef null) #6
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call4 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %3, i32 noundef 0) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %ctx) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i64 @fread(i8* noundef %arraydecay, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %4) #5
  store i64 %call12, i64* %n, align 8
  %cmp13 = icmp ugt i64 %call12, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %5 = load i64, i64* %n, align 8
  %call15 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay14, i64 noundef %5) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.body
  br label %cleanup

if.end18:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @ferror(%struct._IO_FILE* noundef %6) #6
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.end
  store i32 -20992, i32* %ret, align 4
  br label %if.end23

if.else:                                          ; preds = %while.end
  %7 = load i8*, i8** %output.addr, align 8
  %call22 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %7) #5
  store i32 %call22, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then17, %if.then10, %if.then6
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay24, i64 noundef 1024) #5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* noundef %8) #5
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %key, i64 noundef %keylen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %sum = alloca [64 x i8], align 16
  %ipad = alloca i8*, align 8
  %opad = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 2
  %4 = load i8*, i8** %hmac_ctx, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load i64, i64* %keylen.addr, align 8
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info4, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %7, i32 0, i32 3
  %8 = load i8, i8* %block_size, align 1
  %conv = zext i8 %8 to i64
  %cmp5 = icmp ugt i64 %5, %conv
  br i1 %cmp5, label %if.then7, label %if.end25

if.then7:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %9) #5
  store i32 %call, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %11 = load i8*, i8** %key.addr, align 8
  %12 = load i64, i64* %keylen.addr, align 8
  %call12 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %10, i8* noundef %11, i64 noundef %12) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 0
  %call17 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %13, i8* noundef %arraydecay) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info22 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info22, align 8
  %size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %15, i32 0, i32 2
  %16 = load i8, i8* %size, align 4
  %conv23 = zext i8 %16 to i64
  store i64 %conv23, i64* %keylen.addr, align 8
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 0
  store i8* %arraydecay24, i8** %key.addr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.end
  %17 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %17, i32 0, i32 2
  %18 = load i8*, i8** %hmac_ctx26, align 8
  store i8* %18, i8** %ipad, align 8
  %19 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx27 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %19, i32 0, i32 2
  %20 = load i8*, i8** %hmac_ctx27, align 8
  %21 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info28 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info28, align 8
  %block_size29 = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %22, i32 0, i32 3
  %23 = load i8, i8* %block_size29, align 1
  %conv30 = zext i8 %23 to i32
  %idx.ext = sext i32 %conv30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %opad, align 8
  %24 = load i8*, i8** %ipad, align 8
  %25 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info31 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info31, align 8
  %block_size32 = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %26, i32 0, i32 3
  %27 = load i8, i8* %block_size32, align 1
  %conv33 = zext i8 %27 to i64
  %call34 = call i8* @memset(i8* noundef %24, i32 noundef 54, i64 noundef %conv33) #6
  %28 = load i8*, i8** %opad, align 8
  %29 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info35 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %29, i32 0, i32 0
  %30 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info35, align 8
  %block_size36 = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %30, i32 0, i32 3
  %31 = load i8, i8* %block_size36, align 1
  %conv37 = zext i8 %31 to i64
  %call38 = call i8* @memset(i8* noundef %28, i32 noundef 92, i64 noundef %conv37) #6
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %keylen.addr, align 8
  %cmp39 = icmp ult i64 %32, %33
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %ipad, align 8
  %35 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 %35
  %36 = load i8, i8* %arrayidx, align 1
  %conv41 = zext i8 %36 to i32
  %37 = load i8*, i8** %key.addr, align 8
  %38 = load i64, i64* %i, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %37, i64 %38
  %39 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %39 to i32
  %xor = xor i32 %conv41, %conv43
  %conv44 = trunc i32 %xor to i8
  %40 = load i8*, i8** %ipad, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %conv44, i8* %arrayidx45, align 1
  %42 = load i8*, i8** %opad, align 8
  %43 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %42, i64 %43
  %44 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %44 to i32
  %45 = load i8*, i8** %key.addr, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %47 to i32
  %xor50 = xor i32 %conv47, %conv49
  %conv51 = trunc i32 %xor50 to i8
  %48 = load i8*, i8** %opad, align 8
  %49 = load i64, i64* %i, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %conv51, i8* %arrayidx52, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i64, i64* %i, align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %51 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call53 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %51) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.end
  br label %cleanup

if.end57:                                         ; preds = %for.end
  %52 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %53 = load i8*, i8** %ipad, align 8
  %54 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info58 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %54, i32 0, i32 0
  %55 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info58, align 8
  %block_size59 = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %55, i32 0, i32 3
  %56 = load i8, i8* %block_size59, align 1
  %conv60 = zext i8 %56 to i64
  %call61 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %52, i8* noundef %53, i64 noundef %conv60) #5
  store i32 %call61, i32* %ret, align 4
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end57
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then64, %if.then56, %if.then20, %if.then15, %if.then10
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %sum, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay66, i64 noundef 64) #5
  %57 = load i32, i32* %ret, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 2
  %4 = load i8*, i8** %hmac_ctx, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i64, i64* %ilen.addr, align 8
  %call = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %5, i8* noundef %6, i64 noundef %7) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca [64 x i8], align 16
  %opad = alloca i8*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 2
  %4 = load i8*, i8** %hmac_ctx, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %5, i32 0, i32 2
  %6 = load i8*, i8** %hmac_ctx4, align 8
  %7 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info5 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info5, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %8, i32 0, i32 3
  %9 = load i8, i8* %block_size, align 1
  %conv = zext i8 %9 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %opad, align 8
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %call = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %10, i8* noundef %arraydecay) #5
  store i32 %call, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call10 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %12) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %15 = load i8*, i8** %opad, align 8
  %16 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info15 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info15, align 8
  %block_size16 = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %17, i32 0, i32 3
  %18 = load i8, i8* %block_size16, align 1
  %conv17 = zext i8 %18 to i64
  %call18 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %14, i8* noundef %15, i64 noundef %conv17) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end14
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end14
  %20 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %21 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info24 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info24, align 8
  %size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %22, i32 0, i32 2
  %23 = load i8, i8* %size, align 4
  %conv25 = zext i8 %23 to i64
  %call26 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %20, i8* noundef %arraydecay23, i64 noundef %conv25) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end22
  %25 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %26 = load i8*, i8** %output.addr, align 8
  %call31 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %25, i8* noundef %26) #5
  store i32 %call31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then21, %if.then13, %if.then8, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %ret = alloca i32, align 4
  %ipad = alloca i8*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 2
  %4 = load i8*, i8** %hmac_ctx, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %5, i32 0, i32 2
  %6 = load i8*, i8** %hmac_ctx4, align 8
  store i8* %6, i8** %ipad, align 8
  %7 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %7) #5
  store i32 %call, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %10 = load i8*, i8** %ipad, align 8
  %11 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info8 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info8, align 8
  %block_size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %12, i32 0, i32 3
  %13 = load i8, i8* %block_size, align 1
  %conv = zext i8 %13 to i64
  %call9 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %9, i8* noundef %10, i64 noundef %conv) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_hmac(%struct.mbedtls_md_info_t* noundef %md_info, i8* noundef %key, i64 noundef %keylen, i8* noundef %input, i64 noundef %ilen, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_md_context_t, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %call = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %1, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i64, i64* %keylen.addr, align 8
  %call4 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %2, i64 noundef %3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %ilen.addr, align 8
  %call8 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %4, i64 noundef %5) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %6 = load i8*, i8** %output.addr, align 8
  %call12 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %6) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then10, %if.then6, %if.then2
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_process(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_context_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20736, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info2 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info2, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 8
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %6, i32 0, i32 1
  %7 = load i8*, i8** %md_ctx, align 8
  %8 = bitcast i8* %7 to %struct.mbedtls_md5_context*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %8, i8* noundef %9) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %10, i32 0, i32 1
  %11 = load i8*, i8** %md_ctx4, align 8
  %12 = bitcast i8* %11 to %struct.mbedtls_ripemd160_context*
  %13 = load i8*, i8** %data.addr, align 8
  %call5 = call i32 @mbedtls_internal_ripemd160_process(%struct.mbedtls_ripemd160_context* noundef %12, i8* noundef %13) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %14 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx7 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %14, i32 0, i32 1
  %15 = load i8*, i8** %md_ctx7, align 8
  %16 = bitcast i8* %15 to %struct.mbedtls_sha1_context*
  %17 = load i8*, i8** %data.addr, align 8
  %call8 = call i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %16, i8* noundef %17) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %18 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %18, i32 0, i32 1
  %19 = load i8*, i8** %md_ctx10, align 8
  %20 = bitcast i8* %19 to %struct.mbedtls_sha256_context*
  %21 = load i8*, i8** %data.addr, align 8
  %call11 = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %20, i8* noundef %21) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %22 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx13 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %22, i32 0, i32 1
  %23 = load i8*, i8** %md_ctx13, align 8
  %24 = bitcast i8* %23 to %struct.mbedtls_sha256_context*
  %25 = load i8*, i8** %data.addr, align 8
  %call14 = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %24, i8* noundef %25) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx16 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %md_ctx16, align 8
  %28 = bitcast i8* %27 to %struct.mbedtls_sha512_context*
  %29 = load i8*, i8** %data.addr, align 8
  %call17 = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %28, i8* noundef %29) #5
  store i32 %call17, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %30 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_ctx19 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %30, i32 0, i32 1
  %31 = load i8*, i8** %md_ctx19, align 8
  %32 = bitcast i8* %31 to %struct.mbedtls_sha512_context*
  %33 = load i8*, i8** %data.addr, align 8
  %call20 = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %32, i8* noundef %33) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -20736, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

declare dso_local i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_internal_ripemd160_process(%struct.mbedtls_ripemd160_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %md_info) #0 {
entry:
  %retval = alloca i8, align 1
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %size = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %1, i32 0, i32 2
  %2 = load i8, i8* %size, align 4
  store i8 %2, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, i8* %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %md_info) #0 {
entry:
  %retval = alloca i32, align 4
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 8
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %md_info) #0 {
entry:
  %retval = alloca i8*, align 8
  %md_info.addr = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_md_info_t* %md_info, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info.addr, align 8
  %name = getelementptr inbounds %struct.mbedtls_md_info_t, %struct.mbedtls_md_info_t* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
