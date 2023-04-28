; ModuleID = 'cipher.c'
source_filename = "cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_definition_t = type { i32, %struct.mbedtls_cipher_info_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type { i32, i32 (i8*, i32, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i64, i8*, i8*)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i8* ()*, void (i8*)* }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.mbedtls_ccm_context = type { [16 x i8], [16 x i8], %struct.mbedtls_cipher_context_t, i64, i64, i64, i64, i8, i8, i32 }
%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }
%struct.mbedtls_nist_kw_context = type { %struct.mbedtls_cipher_context_t }

@supported_init = internal global i32 0, align 4
@mbedtls_cipher_definitions = external dso_local constant [0 x %struct.mbedtls_cipher_definition_t], align 8
@mbedtls_cipher_supported = external dso_local global [0 x i32], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_cipher_list() #0 {
entry:
  %def = alloca %struct.mbedtls_cipher_definition_t*, align 8
  %type = alloca i32*, align 8
  %0 = load i32, i32* @supported_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.mbedtls_cipher_definition_t* getelementptr inbounds ([0 x %struct.mbedtls_cipher_definition_t], [0 x %struct.mbedtls_cipher_definition_t]* @mbedtls_cipher_definitions, i64 0, i64 0), %struct.mbedtls_cipher_definition_t** %def, align 8
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @mbedtls_cipher_supported, i64 0, i64 0), i32** %type, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %type1 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %1, i32 0, i32 0
  %2 = load i32, i32* %type1, align 8
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %3, i32 1
  store %struct.mbedtls_cipher_definition_t* %incdec.ptr, %struct.mbedtls_cipher_definition_t** %def, align 8
  %type2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %5 = load i32*, i32** %type, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr3, i32** %type, align 8
  store i32 %4, i32* %5, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32*, i32** %type, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* @supported_init, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret i32* getelementptr inbounds ([0 x i32], [0 x i32]* @mbedtls_cipher_supported, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %cipher_type) #0 {
entry:
  %retval = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_type.addr = alloca i32, align 4
  %def = alloca %struct.mbedtls_cipher_definition_t*, align 8
  store i32 %cipher_type, i32* %cipher_type.addr, align 4
  store %struct.mbedtls_cipher_definition_t* getelementptr inbounds ([0 x %struct.mbedtls_cipher_definition_t], [0 x %struct.mbedtls_cipher_definition_t]* @mbedtls_cipher_definitions, i64 0, i64 0), %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %0, i32 0, i32 1
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info, align 8
  %cmp = icmp ne %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %4 = load i32, i32* %cipher_type.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %5, i32 0, i32 1
  %6 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info2, align 8
  store %struct.mbedtls_cipher_info_t* %6, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %7, i32 1
  store %struct.mbedtls_cipher_definition_t* %incdec.ptr, %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %retval, align 8
  ret %struct.mbedtls_cipher_info_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_string(i8* noundef %cipher_name) #0 {
entry:
  %retval = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_name.addr = alloca i8*, align 8
  %def = alloca %struct.mbedtls_cipher_definition_t*, align 8
  store i8* %cipher_name, i8** %cipher_name.addr, align 8
  %0 = load i8*, i8** %cipher_name.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.mbedtls_cipher_definition_t* getelementptr inbounds ([0 x %struct.mbedtls_cipher_definition_t], [0 x %struct.mbedtls_cipher_definition_t]* @mbedtls_cipher_definitions, i64 0, i64 0), %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %1, i32 0, i32 1
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info, align 8
  %cmp1 = icmp ne %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info2, align 8
  %name = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 3
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %cipher_name.addr, align 8
  %call = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.body
  %7 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info4 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %7, i32 0, i32 1
  %8 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info4, align 8
  store %struct.mbedtls_cipher_info_t* %8, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %9, i32 1
  store %struct.mbedtls_cipher_definition_t* %incdec.ptr, %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %10 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %retval, align 8
  ret %struct.mbedtls_cipher_info_t* %10
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_values(i32 noundef %cipher_id, i32 noundef %key_bitlen, i32 noundef %mode) #0 {
entry:
  %retval = alloca %struct.mbedtls_cipher_info_t*, align 8
  %cipher_id.addr = alloca i32, align 4
  %key_bitlen.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %def = alloca %struct.mbedtls_cipher_definition_t*, align 8
  store i32 %cipher_id, i32* %cipher_id.addr, align 4
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.mbedtls_cipher_definition_t* getelementptr inbounds ([0 x %struct.mbedtls_cipher_definition_t], [0 x %struct.mbedtls_cipher_definition_t]* @mbedtls_cipher_definitions, i64 0, i64 0), %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %0, i32 0, i32 1
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info, align 8
  %cmp = icmp ne %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info1 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info1, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 7
  %4 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %cipher = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %4, i32 0, i32 0
  %5 = load i32, i32* %cipher, align 8
  %6 = load i32, i32* %cipher_id.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info3 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %7, i32 0, i32 1
  %8 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info3, align 8
  %key_bitlen4 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %8, i32 0, i32 2
  %9 = load i32, i32* %key_bitlen4, align 8
  %10 = load i32, i32* %key_bitlen.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info7 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %11, i32 0, i32 1
  %12 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info7, align 8
  %mode8 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %12, i32 0, i32 1
  %13 = load i32, i32* %mode8, align 4
  %14 = load i32, i32* %mode.addr, align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  %15 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %info10 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %15, i32 0, i32 1
  %16 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info10, align 8
  store %struct.mbedtls_cipher_info_t* %16, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.mbedtls_cipher_definition_t*, %struct.mbedtls_cipher_definition_t** %def, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, %struct.mbedtls_cipher_definition_t* %17, i32 1
  store %struct.mbedtls_cipher_definition_t* %incdec.ptr, %struct.mbedtls_cipher_definition_t** %def, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_cipher_info_t* null, %struct.mbedtls_cipher_info_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %retval, align 8
  ret %struct.mbedtls_cipher_info_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_cipher_context_t* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 96) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_context_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %1, i32 0, i32 10
  %2 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx, align 8
  %tobool = icmp ne %struct.mbedtls_cmac_context_t* %2, null
  br i1 %tobool, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx2 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 10
  %4 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx2, align 8
  %5 = bitcast %struct.mbedtls_cmac_context_t* %4 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef 40) #6
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cmac_ctx3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 10
  %7 = load %struct.mbedtls_cmac_context_t*, %struct.mbedtls_cmac_context_t** %cmac_ctx3, align 8
  %8 = bitcast %struct.mbedtls_cmac_context_t* %7 to i8*
  call void @free(i8* noundef %8) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %9 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %9, i32 0, i32 9
  %10 = load i8*, i8** %cipher_ctx, align 8
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %11 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %12, i32 0, i32 7
  %13 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %ctx_free_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %13, i32 0, i32 11
  %14 = load void (i8*)*, void (i8*)** %ctx_free_func, align 8
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 9
  %16 = load i8*, i8** %cipher_ctx7, align 8
  call void %14(i8* noundef %16) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %17 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %18 = bitcast %struct.mbedtls_cipher_context_t* %17 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %18, i64 noundef 96) #6
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %ctx, %struct.mbedtls_cipher_info_t* noundef %cipher_info) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %cipher_info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store %struct.mbedtls_cipher_info_t* %cipher_info, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_cipher_context_t* %1 to i8*
  %call = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 96) #5
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 7
  %4 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %ctx_alloc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %4, i32 0, i32 10
  %5 = load i8* ()*, i8* ()** %ctx_alloc_func, align 8
  %call1 = call i8* %5() #6
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 9
  store i8* %call1, i8** %cipher_ctx, align 8
  %cmp2 = icmp eq i8* null, %call1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -24960, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info.addr, align 8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 0
  store %struct.mbedtls_cipher_info_t* %7, %struct.mbedtls_cipher_info_t** %cipher_info5, align 8
  %9 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call6 = call i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %9, i32 noundef 0) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %ctx, i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* null, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info1, align 8
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 1
  %4 = load i32, i32* %mode2, align 4
  %cmp3 = icmp ne i32 2, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %mode.addr, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 4, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 3
  store void (i8*, i64, i64)* @add_pkcs_padding, void (i8*, i64, i64)** %add_padding, align 8
  %7 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %7, i32 0, i32 4
  store i32 (i8*, i64, i64*)* @get_pkcs_padding, i32 (i8*, i64, i64*)** %get_padding, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 3
  store void (i8*, i64, i64)* @add_one_and_zeros_padding, void (i8*, i64, i64)** %add_padding5, align 8
  %9 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %9, i32 0, i32 4
  store i32 (i8*, i64, i64*)* @get_one_and_zeros_padding, i32 (i8*, i64, i64*)** %get_padding6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %10 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %10, i32 0, i32 3
  store void (i8*, i64, i64)* @add_zeros_and_len_padding, void (i8*, i64, i64)** %add_padding8, align 8
  %11 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %11, i32 0, i32 4
  store i32 (i8*, i64, i64*)* @get_zeros_and_len_padding, i32 (i8*, i64, i64*)** %get_padding9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 3
  store void (i8*, i64, i64)* @add_zeros_padding, void (i8*, i64, i64)** %add_padding11, align 8
  %13 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding12 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %13, i32 0, i32 4
  store i32 (i8*, i64, i64*)* @get_zeros_padding, i32 (i8*, i64, i64*)** %get_padding12, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %14 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding14 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %14, i32 0, i32 3
  store void (i8*, i64, i64)* null, void (i8*, i64, i64)** %add_padding14, align 8
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 4
  store i32 (i8*, i64, i64*)* @get_no_padding, i32 (i8*, i64, i64*)** %get_padding15, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -24704, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %key, i32 noundef %key_bitlen, i32 noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %key.addr = alloca i8*, align 8
  %key_bitlen.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %key_bitlen, i32* %key_bitlen.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
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
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info5, align 8
  %flags = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 5
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 2
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info7, align 8
  %key_bitlen8 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %6, i32 0, i32 2
  %7 = load i32, i32* %key_bitlen8, align 8
  %8 = load i32, i32* %key_bitlen.addr, align 4
  %cmp9 = icmp ne i32 %7, %8
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %key_bitlen.addr, align 4
  %10 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %key_bitlen12 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %10, i32 0, i32 1
  store i32 %9, i32* %key_bitlen12, align 8
  %11 = load i32, i32* %operation.addr, align 4
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation13 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 2
  store i32 %11, i32* %operation13, align 4
  %13 = load i32, i32* %operation.addr, align 4
  %cmp14 = icmp eq i32 1, %13
  br i1 %cmp14, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %14 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %15, i32 0, i32 1
  %16 = load i32, i32* %mode, align 4
  %cmp16 = icmp eq i32 3, %16
  br i1 %cmp16, label %if.then25, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %17 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info18 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info18, align 8
  %mode19 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %18, i32 0, i32 1
  %19 = load i32, i32* %mode19, align 4
  %cmp20 = icmp eq i32 4, %19
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %20 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info22 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info22, align 8
  %mode23 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %21, i32 0, i32 1
  %22 = load i32, i32* %mode23, align 4
  %cmp24 = icmp eq i32 5, %22
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false, %if.end11
  %23 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info26 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info26, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %24, i32 0, i32 7
  %25 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %setkey_enc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %25, i32 0, i32 8
  %26 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %setkey_enc_func, align 8
  %27 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %27, i32 0, i32 9
  %28 = load i8*, i8** %cipher_ctx, align 8
  %29 = load i8*, i8** %key.addr, align 8
  %30 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %key_bitlen27 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %30, i32 0, i32 1
  %31 = load i32, i32* %key_bitlen27, align 8
  %call = call i32 %26(i8* noundef %28, i8* noundef %29, i32 noundef %31) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false21
  %32 = load i32, i32* %operation.addr, align 4
  %cmp29 = icmp eq i32 0, %32
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end28
  %33 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info31 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %33, i32 0, i32 0
  %34 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info31, align 8
  %base32 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %34, i32 0, i32 7
  %35 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base32, align 8
  %setkey_dec_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %35, i32 0, i32 9
  %36 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %setkey_dec_func, align 8
  %37 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx33 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %37, i32 0, i32 9
  %38 = load i8*, i8** %cipher_ctx33, align 8
  %39 = load i8*, i8** %key.addr, align 8
  %40 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %key_bitlen34 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %40, i32 0, i32 1
  %41 = load i32, i32* %key_bitlen34, align 8
  %call35 = call i32 %36(i8* noundef %38, i8* noundef %39, i32 noundef %41) #6
  store i32 %call35, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end28
  store i32 -24832, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then30, %if.then25, %if.then10, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %actual_iv_size = alloca i64, align 8
  %set_lengths_result = alloca i32, align 4
  %ccm_star_mode = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load i64, i64* %iv_len.addr, align 8
  %cmp3 = icmp ugt i64 %2, 16
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -24704, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info6, align 8
  %flags = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 5
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 1
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %6 = load i64, i64* %iv_len.addr, align 8
  store i64 %6, i64* %actual_iv_size, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end5
  %7 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info9, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %8, i32 0, i32 4
  %9 = load i32, i32* %iv_size, align 8
  %conv = zext i32 %9 to i64
  store i64 %conv, i64* %actual_iv_size, align 8
  %10 = load i64, i64* %actual_iv_size, align 8
  %11 = load i64, i64* %iv_len.addr, align 8
  %cmp10 = icmp ugt i64 %10, %11
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %13, i32 0, i32 0
  %14 = load i32, i32* %type, align 8
  %cmp16 = icmp eq i32 %14, 76
  br i1 %cmp16, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end14
  %15 = load i64, i64* %iv_len.addr, align 8
  %cmp19 = icmp ne i64 %15, 12
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then18
  %16 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %16, i32 0, i32 9
  %17 = load i8*, i8** %cipher_ctx, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_chacha20_context*
  %19 = load i8*, i8** %iv.addr, align 8
  %call = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef %18, i8* noundef %19, i32 noundef 0) #6
  %cmp23 = icmp ne i32 0, %call
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end14
  %20 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info28 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info28, align 8
  %type29 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %21, i32 0, i32 0
  %22 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %22, 77
  br i1 %cmp30, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end27
  %23 = load i64, i64* %iv_len.addr, align 8
  %cmp32 = icmp ne i64 %23, 12
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true, %if.end27
  %24 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info36 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info36, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %25, i32 0, i32 1
  %26 = load i32, i32* %mode, align 4
  %cmp37 = icmp eq i32 6, %26
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  %27 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx40 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %27, i32 0, i32 9
  %28 = load i8*, i8** %cipher_ctx40, align 8
  %29 = bitcast i8* %28 to %struct.mbedtls_gcm_context*
  %30 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %30, i32 0, i32 2
  %31 = load i32, i32* %operation, align 4
  %32 = load i8*, i8** %iv.addr, align 8
  %33 = load i64, i64* %iv_len.addr, align 8
  %call41 = call i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef %29, i32 noundef %31, i8* noundef %32, i64 noundef %33) #6
  store i32 %call41, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end35
  %34 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info43 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info43, align 8
  %mode44 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %35, i32 0, i32 1
  %36 = load i32, i32* %mode44, align 4
  %cmp45 = icmp eq i32 9, %36
  br i1 %cmp45, label %if.then47, label %if.end68

if.then47:                                        ; preds = %if.end42
  %37 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx48 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %37, i32 0, i32 9
  %38 = load i8*, i8** %cipher_ctx48, align 8
  %39 = bitcast i8* %38 to %struct.mbedtls_ccm_context*
  %call49 = call i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef %39, i64 noundef 0, i64 noundef 0, i64 noundef 0) #6
  store i32 %call49, i32* %set_lengths_result, align 4
  %40 = load i32, i32* %set_lengths_result, align 4
  %cmp50 = icmp ne i32 %40, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then47
  %41 = load i32, i32* %set_lengths_result, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then47
  %42 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation54 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %42, i32 0, i32 2
  %43 = load i32, i32* %operation54, align 4
  %cmp55 = icmp eq i32 %43, 0
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end53
  store i32 2, i32* %ccm_star_mode, align 4
  br label %if.end65

if.else58:                                        ; preds = %if.end53
  %44 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation59 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %44, i32 0, i32 2
  %45 = load i32, i32* %operation59, align 4
  %cmp60 = icmp eq i32 %45, 1
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else58
  store i32 3, i32* %ccm_star_mode, align 4
  br label %if.end64

if.else63:                                        ; preds = %if.else58
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.then62
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then57
  %46 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx66 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %46, i32 0, i32 9
  %47 = load i8*, i8** %cipher_ctx66, align 8
  %48 = bitcast i8* %47 to %struct.mbedtls_ccm_context*
  %49 = load i32, i32* %ccm_star_mode, align 4
  %50 = load i8*, i8** %iv.addr, align 8
  %51 = load i64, i64* %iv_len.addr, align 8
  %call67 = call i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef %48, i32 noundef %49, i8* noundef %50, i64 noundef %51) #6
  store i32 %call67, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end42
  %52 = load i64, i64* %actual_iv_size, align 8
  %cmp69 = icmp ne i64 %52, 0
  br i1 %cmp69, label %if.then71, label %if.end75

if.then71:                                        ; preds = %if.end68
  %53 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv72 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %53, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %iv72, i64 0, i64 0
  %54 = load i8*, i8** %iv.addr, align 8
  %55 = load i64, i64* %actual_iv_size, align 8
  %call73 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %54, i64 noundef %55) #5
  %56 = load i64, i64* %actual_iv_size, align 8
  %57 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv_size74 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %57, i32 0, i32 8
  store i64 %56, i64* %iv_size74, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end68
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end75, %if.end65, %if.else63, %if.then52, %if.then39, %if.then34, %if.then25, %if.then21, %if.then12, %if.then4, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

declare dso_local i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef, i8* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_gcm_starts(%struct.mbedtls_gcm_context* noundef, i32 noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ccm_set_lengths(%struct.mbedtls_ccm_context* noundef, i64 noundef, i64 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ccm_starts(%struct.mbedtls_ccm_context* noundef, i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
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
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 6
  store i64 0, i64* %unprocessed_len, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_update_ad(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %ad, i64 noundef %ad_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %mode10 = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info3, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 1
  %4 = load i32, i32* %mode, align 4
  %cmp4 = icmp eq i32 6, %4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 9
  %6 = load i8*, i8** %cipher_ctx, align 8
  %7 = bitcast i8* %6 to %struct.mbedtls_gcm_context*
  %8 = load i8*, i8** %ad.addr, align 8
  %9 = load i64, i64* %ad_len.addr, align 8
  %call = call i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef %7, i8* noundef %8, i64 noundef %9) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info7, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %11, i32 0, i32 0
  %12 = load i32, i32* %type, align 8
  %cmp8 = icmp eq i32 77, %12
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end6
  %13 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %13, i32 0, i32 2
  %14 = load i32, i32* %operation, align 4
  %cmp11 = icmp eq i32 %14, 1
  %15 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, i32 0, i32 1
  store i32 %cond, i32* %mode10, align 4
  %16 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx12 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %16, i32 0, i32 9
  %17 = load i8*, i8** %cipher_ctx12, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_chachapoly_context*
  %19 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %19, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %20 = load i32, i32* %mode10, align 4
  %call13 = call i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef %18, i8* noundef %arraydecay, i32 noundef %20) #6
  store i32 %call13, i32* %result, align 4
  %21 = load i32, i32* %result, align 4
  %cmp14 = icmp ne i32 %21, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then9
  %22 = load i32, i32* %result, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then9
  %23 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx17 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %23, i32 0, i32 9
  %24 = load i8*, i8** %cipher_ctx17, align 8
  %25 = bitcast i8* %24 to %struct.mbedtls_chachapoly_context*
  %26 = load i8*, i8** %ad.addr, align 8
  %27 = load i64, i64* %ad_len.addr, align 8
  %call18 = call i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef %25, i8* noundef %26, i64 noundef %27) #6
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.end16, %if.then15, %if.then5, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_gcm_update_ad(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef, i8* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %block_size = alloca i64, align 8
  %copy_len = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
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
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %2 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %3) #6
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %block_size, align 8
  %4 = load i64, i64* %block_size, align 8
  %cmp7 = icmp eq i64 0, %4
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -25472, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info11, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %6, i32 0, i32 1
  %7 = load i32, i32* %mode, align 4
  %cmp12 = icmp eq i32 %7, 1
  br i1 %cmp12, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.end10
  %8 = load i64, i64* %ilen.addr, align 8
  %9 = load i64, i64* %block_size, align 8
  %cmp15 = icmp ne i64 %8, %9
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  store i32 -25216, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then14
  %10 = load i64, i64* %ilen.addr, align 8
  %11 = load i64*, i64** %olen.addr, align 8
  store i64 %10, i64* %11, align 8
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info19, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %13, i32 0, i32 7
  %14 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %ecb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %14, i32 0, i32 1
  %15 = load i32 (i8*, i32, i8*, i8*)*, i32 (i8*, i32, i8*, i8*)** %ecb_func, align 8
  %16 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %16, i32 0, i32 9
  %17 = load i8*, i8** %cipher_ctx, align 8
  %18 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %18, i32 0, i32 2
  %19 = load i32, i32* %operation, align 4
  %20 = load i8*, i8** %input.addr, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %call20 = call i32 %15(i8* noundef %17, i32 noundef %19, i8* noundef %20, i8* noundef %21) #6
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 0, %call20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end10
  %23 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info26 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info26, align 8
  %mode27 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %24, i32 0, i32 1
  %25 = load i32, i32* %mode27, align 4
  %cmp28 = icmp eq i32 %25, 6
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  %26 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx31 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %26, i32 0, i32 9
  %27 = load i8*, i8** %cipher_ctx31, align 8
  %28 = bitcast i8* %27 to %struct.mbedtls_gcm_context*
  %29 = load i8*, i8** %input.addr, align 8
  %30 = load i64, i64* %ilen.addr, align 8
  %31 = load i8*, i8** %output.addr, align 8
  %32 = load i64, i64* %ilen.addr, align 8
  %33 = load i64*, i64** %olen.addr, align 8
  %call32 = call i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef %28, i8* noundef %29, i64 noundef %30, i8* noundef %31, i64 noundef %32, i64* noundef %33) #6
  store i32 %call32, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %34 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info34 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info34, align 8
  %mode35 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %35, i32 0, i32 1
  %36 = load i32, i32* %mode35, align 4
  %cmp36 = icmp eq i32 %36, 9
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  %37 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx39 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %37, i32 0, i32 9
  %38 = load i8*, i8** %cipher_ctx39, align 8
  %39 = bitcast i8* %38 to %struct.mbedtls_ccm_context*
  %40 = load i8*, i8** %input.addr, align 8
  %41 = load i64, i64* %ilen.addr, align 8
  %42 = load i8*, i8** %output.addr, align 8
  %43 = load i64, i64* %ilen.addr, align 8
  %44 = load i64*, i64** %olen.addr, align 8
  %call40 = call i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef %39, i8* noundef %40, i64 noundef %41, i8* noundef %42, i64 noundef %43, i64* noundef %44) #6
  store i32 %call40, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end33
  %45 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info42 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %45, i32 0, i32 0
  %46 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info42, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %46, i32 0, i32 0
  %47 = load i32, i32* %type, align 8
  %cmp43 = icmp eq i32 %47, 77
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  %48 = load i64, i64* %ilen.addr, align 8
  %49 = load i64*, i64** %olen.addr, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx46 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %50, i32 0, i32 9
  %51 = load i8*, i8** %cipher_ctx46, align 8
  %52 = bitcast i8* %51 to %struct.mbedtls_chachapoly_context*
  %53 = load i64, i64* %ilen.addr, align 8
  %54 = load i8*, i8** %input.addr, align 8
  %55 = load i8*, i8** %output.addr, align 8
  %call47 = call i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef %52, i64 noundef %53, i8* noundef %54, i8* noundef %55) #6
  store i32 %call47, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  %56 = load i8*, i8** %input.addr, align 8
  %57 = load i8*, i8** %output.addr, align 8
  %cmp49 = icmp eq i8* %56, %57
  br i1 %cmp49, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end48
  %58 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %58, i32 0, i32 6
  %59 = load i64, i64* %unprocessed_len, align 8
  %cmp51 = icmp ne i64 %59, 0
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %60 = load i64, i64* %ilen.addr, align 8
  %61 = load i64, i64* %block_size, align 8
  %rem = urem i64 %60, %61
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %lor.lhs.false, %if.end48
  %62 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info55 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %62, i32 0, i32 0
  %63 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info55, align 8
  %mode56 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %63, i32 0, i32 1
  %64 = load i32, i32* %mode56, align 4
  %cmp57 = icmp eq i32 %64, 2
  br i1 %cmp57, label %if.then59, label %if.end164

if.then59:                                        ; preds = %if.end54
  store i64 0, i64* %copy_len, align 8
  %65 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation60 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %65, i32 0, i32 2
  %66 = load i32, i32* %operation60, align 4
  %cmp61 = icmp eq i32 %66, 0
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false70

land.lhs.true63:                                  ; preds = %if.then59
  %67 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %67, i32 0, i32 3
  %68 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding, align 8
  %cmp64 = icmp ne void (i8*, i64, i64)* null, %68
  br i1 %cmp64, label %land.lhs.true66, label %lor.lhs.false70

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %69 = load i64, i64* %ilen.addr, align 8
  %70 = load i64, i64* %block_size, align 8
  %71 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len67 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %71, i32 0, i32 6
  %72 = load i64, i64* %unprocessed_len67, align 8
  %sub = sub i64 %70, %72
  %cmp68 = icmp ule i64 %69, %sub
  br i1 %cmp68, label %if.then92, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true66, %land.lhs.true63, %if.then59
  %73 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation71 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %73, i32 0, i32 2
  %74 = load i32, i32* %operation71, align 4
  %cmp72 = icmp eq i32 %74, 0
  br i1 %cmp72, label %land.lhs.true74, label %lor.lhs.false83

land.lhs.true74:                                  ; preds = %lor.lhs.false70
  %75 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding75 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %75, i32 0, i32 3
  %76 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding75, align 8
  %cmp76 = icmp eq void (i8*, i64, i64)* null, %76
  br i1 %cmp76, label %land.lhs.true78, label %lor.lhs.false83

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %77 = load i64, i64* %ilen.addr, align 8
  %78 = load i64, i64* %block_size, align 8
  %79 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len79 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %79, i32 0, i32 6
  %80 = load i64, i64* %unprocessed_len79, align 8
  %sub80 = sub i64 %78, %80
  %cmp81 = icmp ult i64 %77, %sub80
  br i1 %cmp81, label %if.then92, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true78, %land.lhs.true74, %lor.lhs.false70
  %81 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation84 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %81, i32 0, i32 2
  %82 = load i32, i32* %operation84, align 4
  %cmp85 = icmp eq i32 %82, 1
  br i1 %cmp85, label %land.lhs.true87, label %if.end96

land.lhs.true87:                                  ; preds = %lor.lhs.false83
  %83 = load i64, i64* %ilen.addr, align 8
  %84 = load i64, i64* %block_size, align 8
  %85 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len88 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %85, i32 0, i32 6
  %86 = load i64, i64* %unprocessed_len88, align 8
  %sub89 = sub i64 %84, %86
  %cmp90 = icmp ult i64 %83, %sub89
  br i1 %cmp90, label %if.then92, label %if.end96

if.then92:                                        ; preds = %land.lhs.true87, %land.lhs.true78, %land.lhs.true66
  %87 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %87, i32 0, i32 5
  %88 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len93 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %88, i32 0, i32 6
  %89 = load i64, i64* %unprocessed_len93, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data, i64 0, i64 %89
  %90 = load i8*, i8** %input.addr, align 8
  %91 = load i64, i64* %ilen.addr, align 8
  %call94 = call i8* @memcpy(i8* noundef %arrayidx, i8* noundef %90, i64 noundef %91) #5
  %92 = load i64, i64* %ilen.addr, align 8
  %93 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len95 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %93, i32 0, i32 6
  %94 = load i64, i64* %unprocessed_len95, align 8
  %add = add i64 %94, %92
  store i64 %add, i64* %unprocessed_len95, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %land.lhs.true87, %lor.lhs.false83
  %95 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len97 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %95, i32 0, i32 6
  %96 = load i64, i64* %unprocessed_len97, align 8
  %cmp98 = icmp ne i64 0, %96
  br i1 %cmp98, label %if.then100, label %if.end122

if.then100:                                       ; preds = %if.end96
  %97 = load i64, i64* %block_size, align 8
  %98 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len101 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %98, i32 0, i32 6
  %99 = load i64, i64* %unprocessed_len101, align 8
  %sub102 = sub i64 %97, %99
  store i64 %sub102, i64* %copy_len, align 8
  %100 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data103 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %100, i32 0, i32 5
  %101 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len104 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %101, i32 0, i32 6
  %102 = load i64, i64* %unprocessed_len104, align 8
  %arrayidx105 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data103, i64 0, i64 %102
  %103 = load i8*, i8** %input.addr, align 8
  %104 = load i64, i64* %copy_len, align 8
  %call106 = call i8* @memcpy(i8* noundef %arrayidx105, i8* noundef %103, i64 noundef %104) #5
  %105 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info107 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %105, i32 0, i32 0
  %106 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info107, align 8
  %base108 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %106, i32 0, i32 7
  %107 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base108, align 8
  %cbc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %107, i32 0, i32 2
  %108 = load i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)** %cbc_func, align 8
  %109 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx109 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %109, i32 0, i32 9
  %110 = load i8*, i8** %cipher_ctx109, align 8
  %111 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation110 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %111, i32 0, i32 2
  %112 = load i32, i32* %operation110, align 4
  %113 = load i64, i64* %block_size, align 8
  %114 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %114, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %115 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data111 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %115, i32 0, i32 5
  %arraydecay112 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data111, i64 0, i64 0
  %116 = load i8*, i8** %output.addr, align 8
  %call113 = call i32 %108(i8* noundef %110, i32 noundef %112, i64 noundef %113, i8* noundef %arraydecay, i8* noundef %arraydecay112, i8* noundef %116) #6
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 0, %call113
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then100
  %117 = load i32, i32* %ret, align 4
  store i32 %117, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.then100
  %118 = load i64, i64* %block_size, align 8
  %119 = load i64*, i64** %olen.addr, align 8
  %120 = load i64, i64* %119, align 8
  %add118 = add i64 %120, %118
  store i64 %add118, i64* %119, align 8
  %121 = load i64, i64* %block_size, align 8
  %122 = load i8*, i8** %output.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %add.ptr, i8** %output.addr, align 8
  %123 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len119 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %123, i32 0, i32 6
  store i64 0, i64* %unprocessed_len119, align 8
  %124 = load i64, i64* %copy_len, align 8
  %125 = load i8*, i8** %input.addr, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %add.ptr120, i8** %input.addr, align 8
  %126 = load i64, i64* %copy_len, align 8
  %127 = load i64, i64* %ilen.addr, align 8
  %sub121 = sub i64 %127, %126
  store i64 %sub121, i64* %ilen.addr, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.end117, %if.end96
  %128 = load i64, i64* %ilen.addr, align 8
  %cmp123 = icmp ne i64 0, %128
  br i1 %cmp123, label %if.then125, label %if.end147

if.then125:                                       ; preds = %if.end122
  %129 = load i64, i64* %ilen.addr, align 8
  %130 = load i64, i64* %block_size, align 8
  %rem126 = urem i64 %129, %130
  store i64 %rem126, i64* %copy_len, align 8
  %131 = load i64, i64* %copy_len, align 8
  %cmp127 = icmp eq i64 %131, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.end138

land.lhs.true129:                                 ; preds = %if.then125
  %132 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation130 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %132, i32 0, i32 2
  %133 = load i32, i32* %operation130, align 4
  %cmp131 = icmp eq i32 %133, 0
  br i1 %cmp131, label %land.lhs.true133, label %if.end138

land.lhs.true133:                                 ; preds = %land.lhs.true129
  %134 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding134 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %134, i32 0, i32 3
  %135 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding134, align 8
  %cmp135 = icmp ne void (i8*, i64, i64)* null, %135
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %land.lhs.true133
  %136 = load i64, i64* %block_size, align 8
  store i64 %136, i64* %copy_len, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %land.lhs.true133, %land.lhs.true129, %if.then125
  %137 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data139 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %137, i32 0, i32 5
  %arraydecay140 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data139, i64 0, i64 0
  %138 = load i8*, i8** %input.addr, align 8
  %139 = load i64, i64* %ilen.addr, align 8
  %140 = load i64, i64* %copy_len, align 8
  %sub141 = sub i64 %139, %140
  %arrayidx142 = getelementptr inbounds i8, i8* %138, i64 %sub141
  %141 = load i64, i64* %copy_len, align 8
  %call143 = call i8* @memcpy(i8* noundef %arraydecay140, i8* noundef %arrayidx142, i64 noundef %141) #5
  %142 = load i64, i64* %copy_len, align 8
  %143 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len144 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %143, i32 0, i32 6
  %144 = load i64, i64* %unprocessed_len144, align 8
  %add145 = add i64 %144, %142
  store i64 %add145, i64* %unprocessed_len144, align 8
  %145 = load i64, i64* %copy_len, align 8
  %146 = load i64, i64* %ilen.addr, align 8
  %sub146 = sub i64 %146, %145
  store i64 %sub146, i64* %ilen.addr, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.end138, %if.end122
  %147 = load i64, i64* %ilen.addr, align 8
  %tobool148 = icmp ne i64 %147, 0
  br i1 %tobool148, label %if.then149, label %if.end163

if.then149:                                       ; preds = %if.end147
  %148 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info150 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %148, i32 0, i32 0
  %149 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info150, align 8
  %base151 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %149, i32 0, i32 7
  %150 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base151, align 8
  %cbc_func152 = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %150, i32 0, i32 2
  %151 = load i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)** %cbc_func152, align 8
  %152 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx153 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %152, i32 0, i32 9
  %153 = load i8*, i8** %cipher_ctx153, align 8
  %154 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation154 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %154, i32 0, i32 2
  %155 = load i32, i32* %operation154, align 4
  %156 = load i64, i64* %ilen.addr, align 8
  %157 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv155 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %157, i32 0, i32 7
  %arraydecay156 = getelementptr inbounds [16 x i8], [16 x i8]* %iv155, i64 0, i64 0
  %158 = load i8*, i8** %input.addr, align 8
  %159 = load i8*, i8** %output.addr, align 8
  %call157 = call i32 %151(i8* noundef %153, i32 noundef %155, i64 noundef %156, i8* noundef %arraydecay156, i8* noundef %158, i8* noundef %159) #6
  store i32 %call157, i32* %ret, align 4
  %cmp158 = icmp ne i32 0, %call157
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.then149
  %160 = load i32, i32* %ret, align 4
  store i32 %160, i32* %retval, align 4
  br label %return

if.end161:                                        ; preds = %if.then149
  %161 = load i64, i64* %ilen.addr, align 8
  %162 = load i64*, i64** %olen.addr, align 8
  %163 = load i64, i64* %162, align 8
  %add162 = add i64 %163, %161
  store i64 %add162, i64* %162, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.end161, %if.end147
  store i32 0, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end54
  %164 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info165 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %164, i32 0, i32 0
  %165 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info165, align 8
  %mode166 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %165, i32 0, i32 1
  %166 = load i32, i32* %mode166, align 4
  %cmp167 = icmp eq i32 %166, 3
  br i1 %cmp167, label %if.then169, label %if.end182

if.then169:                                       ; preds = %if.end164
  %167 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info170 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %167, i32 0, i32 0
  %168 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info170, align 8
  %base171 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %168, i32 0, i32 7
  %169 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base171, align 8
  %cfb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %169, i32 0, i32 3
  %170 = load i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i64*, i8*, i8*, i8*)** %cfb_func, align 8
  %171 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx172 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %171, i32 0, i32 9
  %172 = load i8*, i8** %cipher_ctx172, align 8
  %173 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation173 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %173, i32 0, i32 2
  %174 = load i32, i32* %operation173, align 4
  %175 = load i64, i64* %ilen.addr, align 8
  %176 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len174 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %176, i32 0, i32 6
  %177 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv175 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %177, i32 0, i32 7
  %arraydecay176 = getelementptr inbounds [16 x i8], [16 x i8]* %iv175, i64 0, i64 0
  %178 = load i8*, i8** %input.addr, align 8
  %179 = load i8*, i8** %output.addr, align 8
  %call177 = call i32 %170(i8* noundef %172, i32 noundef %174, i64 noundef %175, i64* noundef %unprocessed_len174, i8* noundef %arraydecay176, i8* noundef %178, i8* noundef %179) #6
  store i32 %call177, i32* %ret, align 4
  %cmp178 = icmp ne i32 0, %call177
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %if.then169
  %180 = load i32, i32* %ret, align 4
  store i32 %180, i32* %retval, align 4
  br label %return

if.end181:                                        ; preds = %if.then169
  %181 = load i64, i64* %ilen.addr, align 8
  %182 = load i64*, i64** %olen.addr, align 8
  store i64 %181, i64* %182, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.end164
  %183 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info183 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %183, i32 0, i32 0
  %184 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info183, align 8
  %mode184 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %184, i32 0, i32 1
  %185 = load i32, i32* %mode184, align 4
  %cmp185 = icmp eq i32 %185, 4
  br i1 %cmp185, label %if.then187, label %if.end199

if.then187:                                       ; preds = %if.end182
  %186 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info188 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %186, i32 0, i32 0
  %187 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info188, align 8
  %base189 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %187, i32 0, i32 7
  %188 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base189, align 8
  %ofb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %188, i32 0, i32 4
  %189 = load i32 (i8*, i64, i64*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*)** %ofb_func, align 8
  %190 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx190 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %190, i32 0, i32 9
  %191 = load i8*, i8** %cipher_ctx190, align 8
  %192 = load i64, i64* %ilen.addr, align 8
  %193 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len191 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %193, i32 0, i32 6
  %194 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv192 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %194, i32 0, i32 7
  %arraydecay193 = getelementptr inbounds [16 x i8], [16 x i8]* %iv192, i64 0, i64 0
  %195 = load i8*, i8** %input.addr, align 8
  %196 = load i8*, i8** %output.addr, align 8
  %call194 = call i32 %189(i8* noundef %191, i64 noundef %192, i64* noundef %unprocessed_len191, i8* noundef %arraydecay193, i8* noundef %195, i8* noundef %196) #6
  store i32 %call194, i32* %ret, align 4
  %cmp195 = icmp ne i32 0, %call194
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.then187
  %197 = load i32, i32* %ret, align 4
  store i32 %197, i32* %retval, align 4
  br label %return

if.end198:                                        ; preds = %if.then187
  %198 = load i64, i64* %ilen.addr, align 8
  %199 = load i64*, i64** %olen.addr, align 8
  store i64 %198, i64* %199, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.end182
  %200 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info200 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %200, i32 0, i32 0
  %201 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info200, align 8
  %mode201 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %201, i32 0, i32 1
  %202 = load i32, i32* %mode201, align 4
  %cmp202 = icmp eq i32 %202, 5
  br i1 %cmp202, label %if.then204, label %if.end218

if.then204:                                       ; preds = %if.end199
  %203 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info205 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %203, i32 0, i32 0
  %204 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info205, align 8
  %base206 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %204, i32 0, i32 7
  %205 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base206, align 8
  %ctr_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %205, i32 0, i32 5
  %206 = load i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)*, i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)** %ctr_func, align 8
  %207 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx207 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %207, i32 0, i32 9
  %208 = load i8*, i8** %cipher_ctx207, align 8
  %209 = load i64, i64* %ilen.addr, align 8
  %210 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len208 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %210, i32 0, i32 6
  %211 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv209 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %211, i32 0, i32 7
  %arraydecay210 = getelementptr inbounds [16 x i8], [16 x i8]* %iv209, i64 0, i64 0
  %212 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data211 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %212, i32 0, i32 5
  %arraydecay212 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data211, i64 0, i64 0
  %213 = load i8*, i8** %input.addr, align 8
  %214 = load i8*, i8** %output.addr, align 8
  %call213 = call i32 %206(i8* noundef %208, i64 noundef %209, i64* noundef %unprocessed_len208, i8* noundef %arraydecay210, i8* noundef %arraydecay212, i8* noundef %213, i8* noundef %214) #6
  store i32 %call213, i32* %ret, align 4
  %cmp214 = icmp ne i32 0, %call213
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.then204
  %215 = load i32, i32* %ret, align 4
  store i32 %215, i32* %retval, align 4
  br label %return

if.end217:                                        ; preds = %if.then204
  %216 = load i64, i64* %ilen.addr, align 8
  %217 = load i64*, i64** %olen.addr, align 8
  store i64 %216, i64* %217, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end218:                                        ; preds = %if.end199
  %218 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info219 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %218, i32 0, i32 0
  %219 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info219, align 8
  %mode220 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %219, i32 0, i32 1
  %220 = load i32, i32* %mode220, align 4
  %cmp221 = icmp eq i32 %220, 10
  br i1 %cmp221, label %if.then223, label %if.end240

if.then223:                                       ; preds = %if.end218
  %221 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len224 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %221, i32 0, i32 6
  %222 = load i64, i64* %unprocessed_len224, align 8
  %cmp225 = icmp ugt i64 %222, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.then223
  store i32 -24704, i32* %retval, align 4
  br label %return

if.end228:                                        ; preds = %if.then223
  %223 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info229 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %223, i32 0, i32 0
  %224 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info229, align 8
  %base230 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %224, i32 0, i32 7
  %225 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base230, align 8
  %xts_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %225, i32 0, i32 6
  %226 = load i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)** %xts_func, align 8
  %227 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx231 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %227, i32 0, i32 9
  %228 = load i8*, i8** %cipher_ctx231, align 8
  %229 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation232 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %229, i32 0, i32 2
  %230 = load i32, i32* %operation232, align 4
  %231 = load i64, i64* %ilen.addr, align 8
  %232 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv233 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %232, i32 0, i32 7
  %arraydecay234 = getelementptr inbounds [16 x i8], [16 x i8]* %iv233, i64 0, i64 0
  %233 = load i8*, i8** %input.addr, align 8
  %234 = load i8*, i8** %output.addr, align 8
  %call235 = call i32 %226(i8* noundef %228, i32 noundef %230, i64 noundef %231, i8* noundef %arraydecay234, i8* noundef %233, i8* noundef %234) #6
  store i32 %call235, i32* %ret, align 4
  %235 = load i32, i32* %ret, align 4
  %cmp236 = icmp ne i32 %235, 0
  br i1 %cmp236, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.end228
  %236 = load i32, i32* %ret, align 4
  store i32 %236, i32* %retval, align 4
  br label %return

if.end239:                                        ; preds = %if.end228
  %237 = load i64, i64* %ilen.addr, align 8
  %238 = load i64*, i64** %olen.addr, align 8
  store i64 %237, i64* %238, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.end218
  %239 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info241 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %239, i32 0, i32 0
  %240 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info241, align 8
  %mode242 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %240, i32 0, i32 1
  %241 = load i32, i32* %mode242, align 4
  %cmp243 = icmp eq i32 %241, 7
  br i1 %cmp243, label %if.then245, label %if.end254

if.then245:                                       ; preds = %if.end240
  %242 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info246 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %242, i32 0, i32 0
  %243 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info246, align 8
  %base247 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %243, i32 0, i32 7
  %244 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base247, align 8
  %stream_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %244, i32 0, i32 7
  %245 = load i32 (i8*, i64, i8*, i8*)*, i32 (i8*, i64, i8*, i8*)** %stream_func, align 8
  %246 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx248 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %246, i32 0, i32 9
  %247 = load i8*, i8** %cipher_ctx248, align 8
  %248 = load i64, i64* %ilen.addr, align 8
  %249 = load i8*, i8** %input.addr, align 8
  %250 = load i8*, i8** %output.addr, align 8
  %call249 = call i32 %245(i8* noundef %247, i64 noundef %248, i8* noundef %249, i8* noundef %250) #6
  store i32 %call249, i32* %ret, align 4
  %cmp250 = icmp ne i32 0, %call249
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.then245
  %251 = load i32, i32* %ret, align 4
  store i32 %251, i32* %retval, align 4
  br label %return

if.end253:                                        ; preds = %if.then245
  %252 = load i64, i64* %ilen.addr, align 8
  %253 = load i64*, i64** %olen.addr, align 8
  store i64 %252, i64* %253, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end254:                                        ; preds = %if.end240
  store i32 -24704, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end254, %if.end253, %if.then252, %if.end239, %if.then238, %if.then227, %if.end217, %if.then216, %if.end198, %if.then197, %if.end181, %if.then180, %if.end163, %if.then160, %if.then116, %if.then92, %if.then53, %if.then45, %if.then38, %if.then30, %if.end24, %if.then23, %if.then17, %if.then9, %if.then
  %254 = load i32, i32* %retval, align 4
  ret i32 %254
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
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
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %block_size, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_gcm_update(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #3

declare dso_local i32 @mbedtls_ccm_update(%struct.mbedtls_ccm_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #3

declare dso_local i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %output, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
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
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info5, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %mode, align 4
  %cmp6 = icmp eq i32 3, %5
  br i1 %cmp6, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info7, align 8
  %mode8 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %7, i32 0, i32 1
  %8 = load i32, i32* %mode8, align 4
  %cmp9 = icmp eq i32 4, %8
  br i1 %cmp9, label %if.then30, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %9 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info11, align 8
  %mode12 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %10, i32 0, i32 1
  %11 = load i32, i32* %mode12, align 4
  %cmp13 = icmp eq i32 5, %11
  br i1 %cmp13, label %if.then30, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %mode16 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %13, i32 0, i32 1
  %14 = load i32, i32* %mode16, align 4
  %cmp17 = icmp eq i32 6, %14
  br i1 %cmp17, label %if.then30, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info19, align 8
  %mode20 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %16, i32 0, i32 1
  %17 = load i32, i32* %mode20, align 4
  %cmp21 = icmp eq i32 9, %17
  br i1 %cmp21, label %if.then30, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %18 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info23 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info23, align 8
  %mode24 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %19, i32 0, i32 1
  %20 = load i32, i32* %mode24, align 4
  %cmp25 = icmp eq i32 10, %20
  br i1 %cmp25, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %21 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info27 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info27, align 8
  %mode28 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %22, i32 0, i32 1
  %23 = load i32, i32* %mode28, align 4
  %cmp29 = icmp eq i32 7, %23
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %lor.lhs.false26
  %24 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info32 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info32, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %25, i32 0, i32 0
  %26 = load i32, i32* %type, align 8
  %cmp33 = icmp eq i32 76, %26
  br i1 %cmp33, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end31
  %27 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info35 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %27, i32 0, i32 0
  %28 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info35, align 8
  %type36 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %28, i32 0, i32 0
  %29 = load i32, i32* %type36, align 8
  %cmp37 = icmp eq i32 77, %29
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false34, %if.end31
  store i32 0, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %lor.lhs.false34
  %30 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info40 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %30, i32 0, i32 0
  %31 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info40, align 8
  %mode41 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %31, i32 0, i32 1
  %32 = load i32, i32* %mode41, align 4
  %cmp42 = icmp eq i32 1, %32
  br i1 %cmp42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end39
  %33 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %33, i32 0, i32 6
  %34 = load i64, i64* %unprocessed_len, align 8
  %cmp44 = icmp ne i64 %34, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then43
  store i32 -25216, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then43
  store i32 0, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end39
  %35 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info48 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %35, i32 0, i32 0
  %36 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info48, align 8
  %mode49 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %36, i32 0, i32 1
  %37 = load i32, i32* %mode49, align 4
  %cmp50 = icmp eq i32 2, %37
  br i1 %cmp50, label %if.then51, label %if.end101

if.then51:                                        ; preds = %if.end47
  store i32 0, i32* %ret, align 4
  %38 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %38, i32 0, i32 2
  %39 = load i32, i32* %operation, align 4
  %cmp52 = icmp eq i32 1, %39
  br i1 %cmp52, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.then51
  %40 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %40, i32 0, i32 3
  %41 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding, align 8
  %cmp54 = icmp eq void (i8*, i64, i64)* null, %41
  br i1 %cmp54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.then53
  %42 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len56 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %42, i32 0, i32 6
  %43 = load i64, i64* %unprocessed_len56, align 8
  %cmp57 = icmp ne i64 0, %43
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then55
  store i32 -25216, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then55
  store i32 0, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then53
  %44 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding61 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %44, i32 0, i32 3
  %45 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding61, align 8
  %46 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %46, i32 0, i32 5
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data, i64 0, i64 0
  %47 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call = call i32 @mbedtls_cipher_get_iv_size(%struct.mbedtls_cipher_context_t* noundef %47) #6
  %conv = sext i32 %call to i64
  %48 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len62 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %48, i32 0, i32 6
  %49 = load i64, i64* %unprocessed_len62, align 8
  call void %45(i8* noundef %arraydecay, i64 noundef %conv, i64 noundef %49) #6
  br label %if.end78

if.else:                                          ; preds = %if.then51
  %50 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call63 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %50) #6
  %conv64 = zext i32 %call63 to i64
  %51 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len65 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %51, i32 0, i32 6
  %52 = load i64, i64* %unprocessed_len65, align 8
  %cmp66 = icmp ne i64 %conv64, %52
  br i1 %cmp66, label %if.then68, label %if.end77

if.then68:                                        ; preds = %if.else
  %53 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %add_padding69 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %53, i32 0, i32 3
  %54 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %add_padding69, align 8
  %cmp70 = icmp eq void (i8*, i64, i64)* null, %54
  br i1 %cmp70, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %if.then68
  %55 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_len72 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %55, i32 0, i32 6
  %56 = load i64, i64* %unprocessed_len72, align 8
  %cmp73 = icmp eq i64 0, %56
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %land.lhs.true, %if.then68
  store i32 -25216, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.else
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end60
  %57 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info79 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %57, i32 0, i32 0
  %58 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info79, align 8
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %58, i32 0, i32 7
  %59 = load %struct.mbedtls_cipher_base_t*, %struct.mbedtls_cipher_base_t** %base, align 8
  %cbc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, %struct.mbedtls_cipher_base_t* %59, i32 0, i32 2
  %60 = load i32 (i8*, i32, i64, i8*, i8*, i8*)*, i32 (i8*, i32, i64, i8*, i8*, i8*)** %cbc_func, align 8
  %61 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %61, i32 0, i32 9
  %62 = load i8*, i8** %cipher_ctx, align 8
  %63 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation80 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %63, i32 0, i32 2
  %64 = load i32, i32* %operation80, align 4
  %65 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call81 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %65) #6
  %conv82 = zext i32 %call81 to i64
  %66 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %66, i32 0, i32 7
  %arraydecay83 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %67 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %unprocessed_data84 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %67, i32 0, i32 5
  %arraydecay85 = getelementptr inbounds [16 x i8], [16 x i8]* %unprocessed_data84, i64 0, i64 0
  %68 = load i8*, i8** %output.addr, align 8
  %call86 = call i32 %60(i8* noundef %62, i32 noundef %64, i64 noundef %conv82, i8* noundef %arraydecay83, i8* noundef %arraydecay85, i8* noundef %68) #6
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 0, %call86
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end78
  %69 = load i32, i32* %ret, align 4
  store i32 %69, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.end78
  %70 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation91 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %70, i32 0, i32 2
  %71 = load i32, i32* %operation91, align 4
  %cmp92 = icmp eq i32 0, %71
  br i1 %cmp92, label %if.then94, label %if.end98

if.then94:                                        ; preds = %if.end90
  %72 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %get_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %72, i32 0, i32 4
  %73 = load i32 (i8*, i64, i64*)*, i32 (i8*, i64, i64*)** %get_padding, align 8
  %74 = load i8*, i8** %output.addr, align 8
  %75 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call95 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %75) #6
  %conv96 = zext i32 %call95 to i64
  %76 = load i64*, i64** %olen.addr, align 8
  %call97 = call i32 %73(i8* noundef %74, i64 noundef %conv96, i64* noundef %76) #6
  store i32 %call97, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.end90
  %77 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call99 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %77) #6
  %conv100 = zext i32 %call99 to i64
  %78 = load i64*, i64** %olen.addr, align 8
  store i64 %conv100, i64* %78, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %if.end47
  store i32 -24704, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end101, %if.end98, %if.then94, %if.then89, %if.end76, %if.then75, %if.end59, %if.then58, %if.end46, %if.then45, %if.then38, %if.then30, %if.then
  %79 = load i32, i32* %retval, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_iv_size(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
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
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 8
  %3 = load i64, i64* %iv_size, align 8
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %iv_size3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %4, i32 0, i32 8
  %5 = load i64, i64* %iv_size3, align 8
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info5, align 8
  %iv_size6 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %7, i32 0, i32 4
  %8 = load i32, i32* %iv_size6, align 8
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pkcs_padding(i8* noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i64, i64* %output_len.addr, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %padding_len, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1
  %conv = zext i8 %2 to i64
  %3 = load i64, i64* %padding_len, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %padding_len, align 8
  %conv2 = trunc i64 %4 to i8
  %5 = load i8*, i8** %output.addr, align 8
  %6 = load i64, i64* %data_len.addr, align 8
  %7 = load i8, i8* %i, align 1
  %conv3 = zext i8 %7 to i64
  %add = add i64 %6, %conv3
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %add
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8, i8* %i, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pkcs_padding(i8* noundef %input, i64 noundef %input_len, i64* noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %pad_idx = alloca i64, align 8
  %padding_len = alloca i8, align 1
  %bad = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  store i8 0, i8* %bad, align 1
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %data_len.addr, align 8
  %cmp1 = icmp eq i64* null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_len.addr, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %padding_len, align 1
  %5 = load i64, i64* %input_len.addr, align 8
  %6 = load i8, i8* %padding_len, align 1
  %conv = zext i8 %6 to i64
  %sub2 = sub i64 %5, %conv
  %7 = load i64*, i64** %data_len.addr, align 8
  store i64 %sub2, i64* %7, align 8
  %8 = load i8, i8* %padding_len, align 1
  %conv3 = zext i8 %8 to i64
  %9 = load i64, i64* %input_len.addr, align 8
  %cmp4 = icmp ugt i64 %conv3, %9
  %conv5 = zext i1 %cmp4 to i32
  %10 = load i8, i8* %bad, align 1
  %conv6 = zext i8 %10 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, i8* %bad, align 1
  %11 = load i8, i8* %padding_len, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  %conv10 = zext i1 %cmp9 to i32
  %12 = load i8, i8* %bad, align 1
  %conv11 = zext i8 %12 to i32
  %or12 = or i32 %conv11, %conv10
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, i8* %bad, align 1
  %13 = load i64, i64* %input_len.addr, align 8
  %14 = load i8, i8* %padding_len, align 1
  %conv14 = zext i8 %14 to i64
  %sub15 = sub i64 %13, %conv14
  store i64 %sub15, i64* %pad_idx, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %input_len.addr, align 8
  %cmp16 = icmp ult i64 %15, %16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %20 = load i8, i8* %padding_len, align 1
  %conv20 = zext i8 %20 to i32
  %xor = xor i32 %conv19, %conv20
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %pad_idx, align 8
  %cmp21 = icmp uge i64 %21, %22
  %conv22 = zext i1 %cmp21 to i32
  %mul = mul nsw i32 %xor, %conv22
  %23 = load i8, i8* %bad, align 1
  %conv23 = zext i8 %23 to i32
  %or24 = or i32 %conv23, %mul
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, i8* %bad, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %25 = load i8, i8* %bad, align 1
  %conv26 = zext i8 %25 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  %conv28 = zext i1 %cmp27 to i32
  %mul29 = mul nsw i32 -25088, %conv28
  store i32 %mul29, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_one_and_zeros_padding(i8* noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i64, i64* %output_len.addr, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %padding_len, align 8
  store i8 0, i8* %i, align 1
  %2 = load i8*, i8** %output.addr, align 8
  %3 = load i64, i64* %data_len.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  store i8 -128, i8* %arrayidx, align 1
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8, i8* %i, align 1
  %conv = zext i8 %4 to i64
  %5 = load i64, i64* %padding_len, align 8
  %cmp = icmp ult i64 %conv, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i64, i64* %data_len.addr, align 8
  %8 = load i8, i8* %i, align 1
  %conv2 = zext i8 %8 to i64
  %add = add i64 %7, %conv2
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %add
  store i8 0, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8, i8* %i, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_and_zeros_padding(i8* noundef %input, i64 noundef %input_len, i64* noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %done = alloca i8, align 1
  %prev_done = alloca i8, align 1
  %bad = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  store i8 0, i8* %done, align 1
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %data_len.addr, align 8
  %cmp1 = icmp eq i64* null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i8 -128, i8* %bad, align 1
  %2 = load i64*, i64** %data_len.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load i64, i64* %input_len.addr, align 8
  store i64 %3, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8, i8* %done, align 1
  store i8 %5, i8* %prev_done, align 1
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i64, i64* %i, align 8
  %sub = sub i64 %7, 1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %sub
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %9 = load i8, i8* %done, align 1
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %done, align 1
  %10 = load i64, i64* %i, align 8
  %sub7 = sub i64 %10, 1
  %11 = load i8, i8* %done, align 1
  %conv8 = zext i8 %11 to i32
  %12 = load i8, i8* %prev_done, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv8, %conv9
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  %mul = mul i64 %sub7, %conv12
  %13 = load i64*, i64** %data_len.addr, align 8
  %14 = load i64, i64* %13, align 8
  %or13 = or i64 %14, %mul
  store i64 %or13, i64* %13, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %i, align 8
  %sub14 = sub i64 %16, 1
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %sub14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %18 = load i8, i8* %done, align 1
  %conv17 = zext i8 %18 to i32
  %19 = load i8, i8* %prev_done, align 1
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp ne i32 %conv17, %conv18
  %conv20 = zext i1 %cmp19 to i32
  %mul21 = mul nsw i32 %conv16, %conv20
  %20 = load i8, i8* %bad, align 1
  %conv22 = zext i8 %20 to i32
  %xor = xor i32 %conv22, %mul21
  %conv23 = trunc i32 %xor to i8
  store i8 %conv23, i8* %bad, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %22 = load i8, i8* %bad, align 1
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  %conv26 = zext i1 %cmp25 to i32
  %mul27 = mul nsw i32 -25088, %conv26
  store i32 %mul27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_zeros_and_len_padding(i8* noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i64, i64* %output_len.addr, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %padding_len, align 8
  store i8 0, i8* %i, align 1
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1
  %conv = zext i8 %2 to i64
  %3 = load i64, i64* %padding_len, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %output.addr, align 8
  %5 = load i64, i64* %data_len.addr, align 8
  %6 = load i8, i8* %i, align 1
  %conv2 = zext i8 %6 to i64
  %add = add i64 %5, %conv2
  %sub3 = sub i64 %add, 1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %sub3
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8, i8* %i, align 1
  %inc = add i8 %7, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %padding_len, align 8
  %conv4 = trunc i64 %8 to i8
  %9 = load i8*, i8** %output.addr, align 8
  %10 = load i64, i64* %output_len.addr, align 8
  %sub5 = sub i64 %10, 1
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %sub5
  store i8 %conv4, i8* %arrayidx6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zeros_and_len_padding(i8* noundef %input, i64 noundef %input_len, i64* noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %pad_idx = alloca i64, align 8
  %padding_len = alloca i8, align 1
  %bad = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  store i8 0, i8* %bad, align 1
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %data_len.addr, align 8
  %cmp1 = icmp eq i64* null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_len.addr, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %padding_len, align 1
  %5 = load i64, i64* %input_len.addr, align 8
  %6 = load i8, i8* %padding_len, align 1
  %conv = zext i8 %6 to i64
  %sub2 = sub i64 %5, %conv
  %7 = load i64*, i64** %data_len.addr, align 8
  store i64 %sub2, i64* %7, align 8
  %8 = load i8, i8* %padding_len, align 1
  %conv3 = zext i8 %8 to i64
  %9 = load i64, i64* %input_len.addr, align 8
  %cmp4 = icmp ugt i64 %conv3, %9
  %conv5 = zext i1 %cmp4 to i32
  %10 = load i8, i8* %bad, align 1
  %conv6 = zext i8 %10 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, i8* %bad, align 1
  %11 = load i8, i8* %padding_len, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  %conv10 = zext i1 %cmp9 to i32
  %12 = load i8, i8* %bad, align 1
  %conv11 = zext i8 %12 to i32
  %or12 = or i32 %conv11, %conv10
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, i8* %bad, align 1
  %13 = load i64, i64* %input_len.addr, align 8
  %14 = load i8, i8* %padding_len, align 1
  %conv14 = zext i8 %14 to i64
  %sub15 = sub i64 %13, %conv14
  store i64 %sub15, i64* %pad_idx, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %input_len.addr, align 8
  %sub16 = sub i64 %16, 1
  %cmp17 = icmp ult i64 %15, %sub16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %19 to i32
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %pad_idx, align 8
  %cmp21 = icmp uge i64 %20, %21
  %conv22 = zext i1 %cmp21 to i32
  %mul = mul nsw i32 %conv20, %conv22
  %22 = load i8, i8* %bad, align 1
  %conv23 = zext i8 %22 to i32
  %or24 = or i32 %conv23, %mul
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, i8* %bad, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %24 = load i8, i8* %bad, align 1
  %conv26 = zext i8 %24 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  %conv28 = zext i1 %cmp27 to i32
  %mul29 = mul nsw i32 -25088, %conv28
  store i32 %mul29, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_zeros_padding(i8* noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i64, i64* %data_len.addr, align 8
  store i64 %0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %output_len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zeros_padding(i8* noundef %input, i64 noundef %input_len, i64* noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %done = alloca i8, align 1
  %prev_done = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  store i8 0, i8* %done, align 1
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %data_len.addr, align 8
  %cmp1 = icmp eq i64* null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64*, i64** %data_len.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load i64, i64* %input_len.addr, align 8
  store i64 %3, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8, i8* %done, align 1
  store i8 %5, i8* %prev_done, align 1
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i64, i64* %i, align 8
  %sub = sub i64 %7, 1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %sub
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %9 = load i8, i8* %done, align 1
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %done, align 1
  %10 = load i64, i64* %i, align 8
  %11 = load i8, i8* %done, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load i8, i8* %prev_done, align 1
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %mul = mul i64 %10, %conv11
  %13 = load i64*, i64** %data_len.addr, align 8
  %14 = load i64, i64* %13, align 8
  %or12 = or i64 %14, %mul
  store i64 %or12, i64* %13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_no_padding(i8* noundef %input, i64 noundef %input_len, i64* noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64*, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_len, i64* %input_len.addr, align 8
  store i64* %data_len, i64** %data_len.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %data_len.addr, align 8
  %cmp1 = icmp eq i64* null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %input_len.addr, align 8
  %3 = load i64*, i64** %data_len.addr, align 8
  store i64 %2, i64* %3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_write_tag(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %output_length = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 2
  %3 = load i32, i32* %operation, align 4
  %cmp3 = icmp ne i32 1, %3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info6, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %5, i32 0, i32 1
  %6 = load i32, i32* %mode, align 4
  %cmp7 = icmp eq i32 6, %6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %7 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %7, i32 0, i32 9
  %8 = load i8*, i8** %cipher_ctx, align 8
  %9 = bitcast i8* %8 to %struct.mbedtls_gcm_context*
  %10 = load i8*, i8** %tag.addr, align 8
  %11 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %9, i8* noundef null, i64 noundef 0, i64* noundef %output_length, i8* noundef %10, i64 noundef %11) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info10 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info10, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %13, i32 0, i32 0
  %14 = load i32, i32* %type, align 8
  %cmp11 = icmp eq i32 77, %14
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end9
  %15 = load i64, i64* %tag_len.addr, align 8
  %cmp13 = icmp ne i64 %15, 16
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then12
  %16 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx16 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %16, i32 0, i32 9
  %17 = load i8*, i8** %cipher_ctx16, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_chachapoly_context*
  %19 = load i8*, i8** %tag.addr, align 8
  %call17 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef %18, i8* noundef %19) #6
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.end15, %if.then14, %if.then8, %if.then4, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare dso_local i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_check_tag(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %check_tag = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  %output_length = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 2
  %3 = load i32, i32* %operation, align 4
  %cmp3 = icmp ne i32 0, %3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %ret, align 4
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info6, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %5, i32 0, i32 1
  %6 = load i32, i32* %mode, align 4
  %cmp7 = icmp eq i32 6, %6
  br i1 %cmp7, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.end5
  %7 = load i64, i64* %tag_len.addr, align 8
  %cmp9 = icmp ugt i64 %7, 16
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then8
  %8 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %8, i32 0, i32 9
  %9 = load i8*, i8** %cipher_ctx, align 8
  %10 = bitcast i8* %9 to %struct.mbedtls_gcm_context*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %11 = load i64, i64* %tag_len.addr, align 8
  %call = call i32 @mbedtls_gcm_finish(%struct.mbedtls_gcm_context* noundef %10, i8* noundef null, i64 noundef 0, i64* noundef %output_length, i8* noundef %arraydecay, i64 noundef %11) #6
  store i32 %call, i32* %ret, align 4
  %cmp12 = icmp ne i32 0, %call
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end11
  %13 = load i8*, i8** %tag.addr, align 8
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %14 = load i64, i64* %tag_len.addr, align 8
  %call16 = call i32 @mbedtls_ct_memcmp(i8* noundef %13, i8* noundef %arraydecay15, i64 noundef %14) #6
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 -25344, i32* %ret, align 4
  br label %exit

if.end19:                                         ; preds = %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end5
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info21 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info21, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %16, i32 0, i32 0
  %17 = load i32, i32* %type, align 8
  %cmp22 = icmp eq i32 77, %17
  br i1 %cmp22, label %if.then23, label %if.end38

if.then23:                                        ; preds = %if.end20
  %18 = load i64, i64* %tag_len.addr, align 8
  %cmp24 = icmp ne i64 %18, 16
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then23
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then23
  %19 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx27 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %19, i32 0, i32 9
  %20 = load i8*, i8** %cipher_ctx27, align 8
  %21 = bitcast i8* %20 to %struct.mbedtls_chachapoly_context*
  %arraydecay28 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %call29 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef %21, i8* noundef %arraydecay28) #6
  store i32 %call29, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp30 = icmp ne i32 %22, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %24 = load i8*, i8** %tag.addr, align 8
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %25 = load i64, i64* %tag_len.addr, align 8
  %call34 = call i32 @mbedtls_ct_memcmp(i8* noundef %24, i8* noundef %arraydecay33, i64 noundef %25) #6
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  store i32 -25344, i32* %ret, align 4
  br label %exit

if.end37:                                         ; preds = %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end20
  br label %exit

exit:                                             ; preds = %if.end38, %if.then36, %if.then18
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %26 = load i64, i64* %tag_len.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay39, i64 noundef %26) #6
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then31, %if.then25, %if.then13, %if.then10, %if.then4, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %finish_olen = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
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
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %1 = load i8*, i8** %iv.addr, align 8
  %2 = load i64, i64* %iv_len.addr, align 8
  %call = call i32 @mbedtls_cipher_set_iv(%struct.mbedtls_cipher_context_t* noundef %0, i8* noundef %1, i64 noundef %2) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %4 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %call9 = call i32 @mbedtls_cipher_reset(%struct.mbedtls_cipher_context_t* noundef %4) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i64, i64* %ilen.addr, align 8
  %9 = load i8*, i8** %output.addr, align 8
  %10 = load i64*, i64** %olen.addr, align 8
  %call13 = call i32 @mbedtls_cipher_update(%struct.mbedtls_cipher_context_t* noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64* noundef %10) #6
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %12 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %13 = load i8*, i8** %output.addr, align 8
  %14 = load i64*, i64** %olen.addr, align 8
  %15 = load i64, i64* %14, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %15
  %call17 = call i32 @mbedtls_cipher_finish(%struct.mbedtls_cipher_context_t* noundef %12, i8* noundef %add.ptr, i64* noundef %finish_olen) #6
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %17 = load i64, i64* %finish_olen, align 8
  %18 = load i64*, i64** %olen.addr, align 8
  %19 = load i64, i64* %18, align 8
  %add = add i64 %19, %17
  store i64 %add, i64* %18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then15, %if.then11, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_auth_encrypt_ext(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64 noundef %output_len, i64* noundef %olen, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %tag_len.addr = alloca i64, align 8
  %mode14 = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 12, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end10
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info11, align 8
  %mode12 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %mode12, align 4
  %cmp13 = icmp eq i32 13, %5
  br i1 %cmp13, label %if.then, label %if.end24

if.then:                                          ; preds = %lor.lhs.false, %do.end10
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %mode16 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %7, i32 0, i32 1
  %8 = load i32, i32* %mode16, align 4
  %cmp17 = icmp eq i32 12, %8
  %9 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 0, i32 1
  store i32 %cond, i32* %mode14, align 4
  %10 = load i64, i64* %iv_len.addr, align 8
  %cmp18 = icmp ne i64 %10, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then
  %11 = load i64, i64* %tag_len.addr, align 8
  %cmp20 = icmp ne i64 %11, 0
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %12 = load i64, i64* %ad_len.addr, align 8
  %cmp22 = icmp ne i64 %12, 0
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %if.then
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false21
  %13 = load i8*, i8** %iv.addr, align 8
  %14 = load i8*, i8** %ad.addr, align 8
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 9
  %16 = load i8*, i8** %cipher_ctx, align 8
  %17 = bitcast i8* %16 to %struct.mbedtls_nist_kw_context*
  %18 = load i32, i32* %mode14, align 4
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %ilen.addr, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %22 = load i64*, i64** %olen.addr, align 8
  %23 = load i64, i64* %output_len.addr, align 8
  %call = call i32 @mbedtls_nist_kw_wrap(%struct.mbedtls_nist_kw_context* noundef %17, i32 noundef %18, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64* noundef %22, i64 noundef %23) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %24 = load i64, i64* %output_len.addr, align 8
  %25 = load i64, i64* %ilen.addr, align 8
  %26 = load i64, i64* %tag_len.addr, align 8
  %add = add i64 %25, %26
  %cmp25 = icmp ult i64 %24, %add
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end24
  %27 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %28 = load i8*, i8** %iv.addr, align 8
  %29 = load i64, i64* %iv_len.addr, align 8
  %30 = load i8*, i8** %ad.addr, align 8
  %31 = load i64, i64* %ad_len.addr, align 8
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i64, i64* %ilen.addr, align 8
  %34 = load i8*, i8** %output.addr, align 8
  %35 = load i64*, i64** %olen.addr, align 8
  %36 = load i8*, i8** %output.addr, align 8
  %37 = load i64, i64* %ilen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = load i64, i64* %tag_len.addr, align 8
  %call28 = call i32 @mbedtls_cipher_aead_encrypt(%struct.mbedtls_cipher_context_t* noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30, i64 noundef %31, i8* noundef %32, i64 noundef %33, i8* noundef %34, i64* noundef %35, i8* noundef %add.ptr, i64 noundef %38) #6
  store i32 %call28, i32* %ret, align 4
  %39 = load i64, i64* %tag_len.addr, align 8
  %40 = load i64*, i64** %olen.addr, align 8
  %41 = load i64, i64* %40, align 8
  %add29 = add i64 %41, %39
  store i64 %add29, i64* %40, align 8
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.end, %if.then23
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

declare dso_local i32 @mbedtls_nist_kw_wrap(%struct.mbedtls_nist_kw_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_aead_encrypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 6, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %ilen.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 9
  %6 = load i8*, i8** %cipher_ctx, align 8
  %7 = bitcast i8* %6 to %struct.mbedtls_gcm_context*
  %8 = load i64, i64* %ilen.addr, align 8
  %9 = load i8*, i8** %iv.addr, align 8
  %10 = load i64, i64* %iv_len.addr, align 8
  %11 = load i8*, i8** %ad.addr, align 8
  %12 = load i64, i64* %ad_len.addr, align 8
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %tag_len.addr, align 8
  %16 = load i8*, i8** %tag.addr, align 8
  %call = call i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef %7, i32 noundef 1, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i8* noundef %13, i8* noundef %14, i64 noundef %15, i8* noundef %16) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info1, align 8
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %18, i32 0, i32 1
  %19 = load i32, i32* %mode2, align 4
  %cmp3 = icmp eq i32 8, %19
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %20 = load i64, i64* %ilen.addr, align 8
  %21 = load i64*, i64** %olen.addr, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %22, i32 0, i32 9
  %23 = load i8*, i8** %cipher_ctx5, align 8
  %24 = bitcast i8* %23 to %struct.mbedtls_ccm_context*
  %25 = load i64, i64* %ilen.addr, align 8
  %26 = load i8*, i8** %iv.addr, align 8
  %27 = load i64, i64* %iv_len.addr, align 8
  %28 = load i8*, i8** %ad.addr, align 8
  %29 = load i64, i64* %ad_len.addr, align 8
  %30 = load i8*, i8** %input.addr, align 8
  %31 = load i8*, i8** %output.addr, align 8
  %32 = load i8*, i8** %tag.addr, align 8
  %33 = load i64, i64* %tag_len.addr, align 8
  %call6 = call i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30, i8* noundef %31, i8* noundef %32, i64 noundef %33) #6
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %34 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info8, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %35, i32 0, i32 0
  %36 = load i32, i32* %type, align 8
  %cmp9 = icmp eq i32 77, %36
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end7
  %37 = load i64, i64* %iv_len.addr, align 8
  %38 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info11, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %39, i32 0, i32 4
  %40 = load i32, i32* %iv_size, align 8
  %conv = zext i32 %40 to i64
  %cmp12 = icmp ne i64 %37, %conv
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %41 = load i64, i64* %tag_len.addr, align 8
  %cmp14 = icmp ne i64 %41, 16
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.then10
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %42 = load i64, i64* %ilen.addr, align 8
  %43 = load i64*, i64** %olen.addr, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx18 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %44, i32 0, i32 9
  %45 = load i8*, i8** %cipher_ctx18, align 8
  %46 = bitcast i8* %45 to %struct.mbedtls_chachapoly_context*
  %47 = load i64, i64* %ilen.addr, align 8
  %48 = load i8*, i8** %iv.addr, align 8
  %49 = load i8*, i8** %ad.addr, align 8
  %50 = load i64, i64* %ad_len.addr, align 8
  %51 = load i8*, i8** %input.addr, align 8
  %52 = load i8*, i8** %output.addr, align 8
  %53 = load i8*, i8** %tag.addr, align 8
  %call19 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %46, i64 noundef %47, i8* noundef %48, i8* noundef %49, i64 noundef %50, i8* noundef %51, i8* noundef %52, i8* noundef %53) #6
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end7
  store i32 -24704, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.end17, %if.then16, %if.then4, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_auth_decrypt_ext(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64 noundef %output_len, i64* noundef %olen, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %tag_len.addr = alloca i64, align 8
  %mode14 = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_len, i64* %output_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 12, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end10
  %3 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info11, align 8
  %mode12 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %4, i32 0, i32 1
  %5 = load i32, i32* %mode12, align 4
  %cmp13 = icmp eq i32 13, %5
  br i1 %cmp13, label %if.then, label %if.end24

if.then:                                          ; preds = %lor.lhs.false, %do.end10
  %6 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %mode16 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %7, i32 0, i32 1
  %8 = load i32, i32* %mode16, align 4
  %cmp17 = icmp eq i32 12, %8
  %9 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 0, i32 1
  store i32 %cond, i32* %mode14, align 4
  %10 = load i64, i64* %iv_len.addr, align 8
  %cmp18 = icmp ne i64 %10, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then
  %11 = load i64, i64* %tag_len.addr, align 8
  %cmp20 = icmp ne i64 %11, 0
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %12 = load i64, i64* %ad_len.addr, align 8
  %cmp22 = icmp ne i64 %12, 0
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %if.then
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false21
  %13 = load i8*, i8** %iv.addr, align 8
  %14 = load i8*, i8** %ad.addr, align 8
  %15 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %15, i32 0, i32 9
  %16 = load i8*, i8** %cipher_ctx, align 8
  %17 = bitcast i8* %16 to %struct.mbedtls_nist_kw_context*
  %18 = load i32, i32* %mode14, align 4
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %ilen.addr, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %22 = load i64*, i64** %olen.addr, align 8
  %23 = load i64, i64* %output_len.addr, align 8
  %call = call i32 @mbedtls_nist_kw_unwrap(%struct.mbedtls_nist_kw_context* noundef %17, i32 noundef %18, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64* noundef %22, i64 noundef %23) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %24 = load i64, i64* %ilen.addr, align 8
  %25 = load i64, i64* %tag_len.addr, align 8
  %cmp25 = icmp ult i64 %24, %25
  br i1 %cmp25, label %if.then28, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end24
  %26 = load i64, i64* %output_len.addr, align 8
  %27 = load i64, i64* %ilen.addr, align 8
  %28 = load i64, i64* %tag_len.addr, align 8
  %sub = sub i64 %27, %28
  %cmp27 = icmp ult i64 %26, %sub
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false26, %if.end24
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false26
  %29 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %30 = load i8*, i8** %iv.addr, align 8
  %31 = load i64, i64* %iv_len.addr, align 8
  %32 = load i8*, i8** %ad.addr, align 8
  %33 = load i64, i64* %ad_len.addr, align 8
  %34 = load i8*, i8** %input.addr, align 8
  %35 = load i64, i64* %ilen.addr, align 8
  %36 = load i64, i64* %tag_len.addr, align 8
  %sub30 = sub i64 %35, %36
  %37 = load i8*, i8** %output.addr, align 8
  %38 = load i64*, i64** %olen.addr, align 8
  %39 = load i8*, i8** %input.addr, align 8
  %40 = load i64, i64* %ilen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i64, i64* %tag_len.addr, align 8
  %idx.neg = sub i64 0, %41
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %42 = load i64, i64* %tag_len.addr, align 8
  %call32 = call i32 @mbedtls_cipher_aead_decrypt(%struct.mbedtls_cipher_context_t* noundef %29, i8* noundef %30, i64 noundef %31, i8* noundef %32, i64 noundef %33, i8* noundef %34, i64 noundef %sub30, i8* noundef %37, i64* noundef %38, i8* noundef %add.ptr31, i64 noundef %42) #6
  store i32 %call32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.end, %if.then23
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

declare dso_local i32 @mbedtls_nist_kw_unwrap(%struct.mbedtls_nist_kw_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_aead_decrypt(%struct.mbedtls_cipher_context_t* noundef %ctx, i8* noundef %iv, i64 noundef %iv_len, i8* noundef %ad, i64 noundef %ad_len, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i8* noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca i8*, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ret8 = alloca i32, align 4
  %ret18 = alloca i32, align 4
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  store i8* %ad, i8** %ad.addr, align 8
  store i64 %ad_len, i64* %ad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_len, i64* %tag_len.addr, align 8
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 6, %2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i32 -110, i32* %ret, align 4
  %3 = load i64, i64* %ilen.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %5, i32 0, i32 9
  %6 = load i8*, i8** %cipher_ctx, align 8
  %7 = bitcast i8* %6 to %struct.mbedtls_gcm_context*
  %8 = load i64, i64* %ilen.addr, align 8
  %9 = load i8*, i8** %iv.addr, align 8
  %10 = load i64, i64* %iv_len.addr, align 8
  %11 = load i8*, i8** %ad.addr, align 8
  %12 = load i64, i64* %ad_len.addr, align 8
  %13 = load i8*, i8** %tag.addr, align 8
  %14 = load i64, i64* %tag_len.addr, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_gcm_auth_decrypt(%struct.mbedtls_gcm_context* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i8* noundef %13, i64 noundef %14, i8* noundef %15, i8* noundef %16) #6
  store i32 %call, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %17, -18
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -25344, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %19 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %19, i32 0, i32 0
  %20 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info4, align 8
  %mode5 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %20, i32 0, i32 1
  %21 = load i32, i32* %mode5, align 4
  %cmp6 = icmp eq i32 8, %21
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end3
  store i32 -110, i32* %ret8, align 4
  %22 = load i64, i64* %ilen.addr, align 8
  %23 = load i64*, i64** %olen.addr, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %24, i32 0, i32 9
  %25 = load i8*, i8** %cipher_ctx9, align 8
  %26 = bitcast i8* %25 to %struct.mbedtls_ccm_context*
  %27 = load i64, i64* %ilen.addr, align 8
  %28 = load i8*, i8** %iv.addr, align 8
  %29 = load i64, i64* %iv_len.addr, align 8
  %30 = load i8*, i8** %ad.addr, align 8
  %31 = load i64, i64* %ad_len.addr, align 8
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i8*, i8** %output.addr, align 8
  %34 = load i8*, i8** %tag.addr, align 8
  %35 = load i64, i64* %tag_len.addr, align 8
  %call10 = call i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef %26, i64 noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30, i64 noundef %31, i8* noundef %32, i8* noundef %33, i8* noundef %34, i64 noundef %35) #6
  store i32 %call10, i32* %ret8, align 4
  %36 = load i32, i32* %ret8, align 4
  %cmp11 = icmp eq i32 %36, -15
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i32 -25344, i32* %ret8, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  %37 = load i32, i32* %ret8, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end3
  %38 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info15, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %39, i32 0, i32 0
  %40 = load i32, i32* %type, align 8
  %cmp16 = icmp eq i32 77, %40
  br i1 %cmp16, label %if.then17, label %if.end32

if.then17:                                        ; preds = %if.end14
  store i32 -110, i32* %ret18, align 4
  %41 = load i64, i64* %iv_len.addr, align 8
  %42 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %42, i32 0, i32 0
  %43 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info19, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %43, i32 0, i32 4
  %44 = load i32, i32* %iv_size, align 8
  %conv = zext i32 %44 to i64
  %cmp20 = icmp ne i64 %41, %conv
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %45 = load i64, i64* %tag_len.addr, align 8
  %cmp22 = icmp ne i64 %45, 16
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %if.then17
  store i32 -24832, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false
  %46 = load i64, i64* %ilen.addr, align 8
  %47 = load i64*, i64** %olen.addr, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_ctx26 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %48, i32 0, i32 9
  %49 = load i8*, i8** %cipher_ctx26, align 8
  %50 = bitcast i8* %49 to %struct.mbedtls_chachapoly_context*
  %51 = load i64, i64* %ilen.addr, align 8
  %52 = load i8*, i8** %iv.addr, align 8
  %53 = load i8*, i8** %ad.addr, align 8
  %54 = load i64, i64* %ad_len.addr, align 8
  %55 = load i8*, i8** %tag.addr, align 8
  %56 = load i8*, i8** %input.addr, align 8
  %57 = load i8*, i8** %output.addr, align 8
  %call27 = call i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noundef %50, i64 noundef %51, i8* noundef %52, i8* noundef %53, i64 noundef %54, i8* noundef %55, i8* noundef %56, i8* noundef %57) #6
  store i32 %call27, i32* %ret18, align 4
  %58 = load i32, i32* %ret18, align 4
  %cmp28 = icmp eq i32 %58, -86
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  store i32 -25344, i32* %ret18, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25
  %59 = load i32, i32* %ret18, align 4
  store i32 %59, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end14
  store i32 -24704, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.end31, %if.then24, %if.end13, %if.end
  %60 = load i32, i32* %retval, align 4
  ret i32 %60
}

declare dso_local i32 @mbedtls_gcm_crypt_and_tag(%struct.mbedtls_gcm_context* noundef, i32 noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ccm_encrypt_and_tag(%struct.mbedtls_ccm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_gcm_auth_decrypt(%struct.mbedtls_gcm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_ccm_auth_decrypt(%struct.mbedtls_ccm_context* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!16 = distinct !{!16, !5}
