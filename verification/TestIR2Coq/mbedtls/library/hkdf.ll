; ModuleID = 'hkdf.c'
source_filename = "hkdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hkdf(%struct.mbedtls_md_info_t* noundef %md, i8* noundef %salt, i64 noundef %salt_len, i8* noundef %ikm, i64 noundef %ikm_len, i8* noundef %info, i64 noundef %info_len, i8* noundef %okm, i64 noundef %okm_len) #0 {
entry:
  %md.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %salt.addr = alloca i8*, align 8
  %salt_len.addr = alloca i64, align 8
  %ikm.addr = alloca i8*, align 8
  %ikm_len.addr = alloca i64, align 8
  %info.addr = alloca i8*, align 8
  %info_len.addr = alloca i64, align 8
  %okm.addr = alloca i8*, align 8
  %okm_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %prk = alloca [64 x i8], align 16
  store %struct.mbedtls_md_info_t* %md, %struct.mbedtls_md_info_t** %md.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_len, i64* %salt_len.addr, align 8
  store i8* %ikm, i8** %ikm.addr, align 8
  store i64 %ikm_len, i64* %ikm_len.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  store i64 %info_len, i64* %info_len.addr, align 8
  store i8* %okm, i8** %okm.addr, align 8
  store i64 %okm_len, i64* %okm_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %1 = load i8*, i8** %salt.addr, align 8
  %2 = load i64, i64* %salt_len.addr, align 8
  %3 = load i8*, i8** %ikm.addr, align 8
  %4 = load i64, i64* %ikm_len.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %prk, i64 0, i64 0
  %call = call i32 @mbedtls_hkdf_extract(%struct.mbedtls_md_info_t* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %arraydecay) #4
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %prk, i64 0, i64 0
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %call2 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %7) #4
  %conv = zext i8 %call2 to i64
  %8 = load i8*, i8** %info.addr, align 8
  %9 = load i64, i64* %info_len.addr, align 8
  %10 = load i8*, i8** %okm.addr, align 8
  %11 = load i64, i64* %okm_len.addr, align 8
  %call3 = call i32 @mbedtls_hkdf_expand(%struct.mbedtls_md_info_t* noundef %6, i8* noundef %arraydecay1, i64 noundef %conv, i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11) #4
  store i32 %call3, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %prk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay4, i64 noundef 64) #4
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hkdf_extract(%struct.mbedtls_md_info_t* noundef %md, i8* noundef %salt, i64 noundef %salt_len, i8* noundef %ikm, i64 noundef %ikm_len, i8* noundef %prk) #0 {
entry:
  %retval = alloca i32, align 4
  %md.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %salt.addr = alloca i8*, align 8
  %salt_len.addr = alloca i64, align 8
  %ikm.addr = alloca i8*, align 8
  %ikm_len.addr = alloca i64, align 8
  %prk.addr = alloca i8*, align 8
  %null_salt = alloca [64 x i8], align 16
  %hash_len = alloca i64, align 8
  store %struct.mbedtls_md_info_t* %md, %struct.mbedtls_md_info_t** %md.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_len, i64* %salt_len.addr, align 8
  store i8* %ikm, i8** %ikm.addr, align 8
  store i64 %ikm_len, i64* %ikm_len.addr, align 8
  store i8* %prk, i8** %prk.addr, align 8
  %0 = bitcast [64 x i8]* %null_salt to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 64, i1 false)
  %1 = load i8*, i8** %salt.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %salt_len.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -24448, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %3) #4
  %conv = zext i8 %call to i64
  store i64 %conv, i64* %hash_len, align 8
  %4 = load i64, i64* %hash_len, align 8
  %cmp3 = icmp eq i64 %4, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -24448, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %null_salt, i64 0, i64 0
  store i8* %arraydecay, i8** %salt.addr, align 8
  %5 = load i64, i64* %hash_len, align 8
  store i64 %5, i64* %salt_len.addr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %6 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %7 = load i8*, i8** %salt.addr, align 8
  %8 = load i64, i64* %salt_len.addr, align 8
  %9 = load i8*, i8** %ikm.addr, align 8
  %10 = load i64, i64* %ikm_len.addr, align 8
  %11 = load i8*, i8** %prk.addr, align 8
  %call8 = call i32 @mbedtls_md_hmac(%struct.mbedtls_md_info_t* noundef %6, i8* noundef %7, i64 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11) #4
  store i32 %call8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then2
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hkdf_expand(%struct.mbedtls_md_info_t* noundef %md, i8* noundef %prk, i64 noundef %prk_len, i8* noundef %info, i64 noundef %info_len, i8* noundef %okm, i64 noundef %okm_len) #0 {
entry:
  %retval = alloca i32, align 4
  %md.addr = alloca %struct.mbedtls_md_info_t*, align 8
  %prk.addr = alloca i8*, align 8
  %prk_len.addr = alloca i64, align 8
  %info.addr = alloca i8*, align 8
  %info_len.addr = alloca i64, align 8
  %okm.addr = alloca i8*, align 8
  %okm_len.addr = alloca i64, align 8
  %hash_len = alloca i64, align 8
  %where = alloca i64, align 8
  %n = alloca i64, align 8
  %t_len = alloca i64, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_md_context_t, align 8
  %t = alloca [64 x i8], align 16
  %num_to_copy = alloca i64, align 8
  %c = alloca i8, align 1
  store %struct.mbedtls_md_info_t* %md, %struct.mbedtls_md_info_t** %md.addr, align 8
  store i8* %prk, i8** %prk.addr, align 8
  store i64 %prk_len, i64* %prk_len.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  store i64 %info_len, i64* %info_len.addr, align 8
  store i8* %okm, i8** %okm.addr, align 8
  store i64 %okm_len, i64* %okm_len.addr, align 8
  store i64 0, i64* %where, align 8
  store i64 0, i64* %t_len, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %okm.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24448, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #4
  %conv = zext i8 %call to i64
  store i64 %conv, i64* %hash_len, align 8
  %2 = load i64, i64* %prk_len.addr, align 8
  %3 = load i64, i64* %hash_len, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %hash_len, align 8
  %cmp3 = icmp eq i64 %4, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -24448, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %5 = load i8*, i8** %info.addr, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %info.addr, align 8
  store i64 0, i64* %info_len.addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %6 = load i64, i64* %okm_len.addr, align 8
  %7 = load i64, i64* %hash_len, align 8
  %div = udiv i64 %6, %7
  store i64 %div, i64* %n, align 8
  %8 = load i64, i64* %okm_len.addr, align 8
  %9 = load i64, i64* %hash_len, align 8
  %rem = urem i64 %8, %9
  %cmp11 = icmp ne i64 %rem, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %10 = load i64, i64* %n, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %n, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %11 = load i64, i64* %n, align 8
  %cmp15 = icmp ugt i64 %11, 255
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 -24448, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #4
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md.addr, align 8
  %call19 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %12, i32 noundef 1) #4
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  br label %exit

if.end23:                                         ; preds = %if.end18
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  %13 = load i64, i64* %hash_len, align 8
  %call24 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef %13) #5
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %n, align 8
  %cmp25 = icmp ule i64 %14, %15
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %and = and i64 %16, 255
  %conv27 = trunc i64 %and to i8
  store i8 %conv27, i8* %c, align 1
  %17 = load i8*, i8** %prk.addr, align 8
  %18 = load i64, i64* %prk_len.addr, align 8
  %call28 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %17, i64 noundef %18) #4
  store i32 %call28, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp29 = icmp ne i32 %19, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  br label %exit

if.end32:                                         ; preds = %for.body
  %arraydecay33 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  %20 = load i64, i64* %t_len, align 8
  %call34 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay33, i64 noundef %20) #4
  store i32 %call34, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp35 = icmp ne i32 %21, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  br label %exit

if.end38:                                         ; preds = %if.end32
  %22 = load i8*, i8** %info.addr, align 8
  %23 = load i64, i64* %info_len.addr, align 8
  %call39 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %22, i64 noundef %23) #4
  store i32 %call39, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp40 = icmp ne i32 %24, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  br label %exit

if.end43:                                         ; preds = %if.end38
  %call44 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %c, i64 noundef 1) #4
  store i32 %call44, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp45 = icmp ne i32 %25, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  br label %exit

if.end48:                                         ; preds = %if.end43
  %arraydecay49 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  %call50 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay49) #4
  store i32 %call50, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp51 = icmp ne i32 %26, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end48
  br label %exit

if.end54:                                         ; preds = %if.end48
  %27 = load i64, i64* %i, align 8
  %28 = load i64, i64* %n, align 8
  %cmp55 = icmp ne i64 %27, %28
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end54
  %29 = load i64, i64* %hash_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end54
  %30 = load i64, i64* %okm_len.addr, align 8
  %31 = load i64, i64* %where, align 8
  %sub = sub i64 %30, %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %num_to_copy, align 8
  %32 = load i8*, i8** %okm.addr, align 8
  %33 = load i64, i64* %where, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33
  %arraydecay57 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  %34 = load i64, i64* %num_to_copy, align 8
  %call58 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %arraydecay57, i64 noundef %34) #5
  %35 = load i64, i64* %hash_len, align 8
  %36 = load i64, i64* %where, align 8
  %add = add i64 %36, %35
  store i64 %add, i64* %where, align 8
  %37 = load i64, i64* %hash_len, align 8
  store i64 %37, i64* %t_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %38 = load i64, i64* %i, align 8
  %inc59 = add i64 %38, 1
  store i64 %inc59, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then53, %if.then47, %if.then42, %if.then37, %if.then31, %if.then22
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #4
  %arraydecay60 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay60, i64 noundef 64) #4
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then17, %if.then5, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mbedtls_md_hmac(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
