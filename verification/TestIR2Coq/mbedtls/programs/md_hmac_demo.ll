; ModuleID = 'hash/md_hmac_demo.c'
source_filename = "hash/md_hmac_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque

@msg1_part1 = dso_local constant [2 x i8] c"\01\02", align 1
@msg1_part2 = dso_local constant [2 x i8] c"\03\04", align 1
@msg2_part1 = dso_local constant [2 x i8] c"\05\05", align 1
@msg2_part2 = dso_local constant [2 x i8] c"\06\06", align 1
@key_bytes = dso_local constant [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error %d at line %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"mbedtls_md_setup( &ctx, info, 1 )\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"mbedtls_md_hmac_starts( &ctx, key_bytes, sizeof( key_bytes ) )\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"mbedtls_md_hmac_update( &ctx, msg1_part1, sizeof( msg1_part1 ) )\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"mbedtls_md_hmac_update( &ctx, msg1_part2, sizeof( msg1_part2 ) )\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"mbedtls_md_hmac_finish( &ctx, out )\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"msg1\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"mbedtls_md_hmac_reset( &ctx )\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"mbedtls_md_hmac_update( &ctx, msg2_part1, sizeof( msg2_part1 ) )\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"mbedtls_md_hmac_update( &ctx, msg2_part2, sizeof( msg2_part2 ) )\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"msg2\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"hmac_demo()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_buf(i8* noundef %title, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #2
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_demo() #0 {
entry:
  %ret = alloca i32, align 4
  %alg = alloca i32, align 4
  %out = alloca [64 x i8], align 16
  %ctx = alloca %struct.mbedtls_md_context_t, align 8
  %info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 4, i32* %alg, align 4
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #2
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 4) #2
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %info, align 8
  %call1 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %0, i32 noundef 1) #2
  store i32 %call1, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %ret, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef 114, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)) #2
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %call4 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @key_bytes, i64 0, i64 0), i64 noundef 32) #2
  store i32 %call4, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body3
  %4 = load i32, i32* %ret, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4, i32 noundef 115, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0)) #2
  br label %exit

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %call11 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part1, i64 0, i64 0), i64 noundef 2) #2
  store i32 %call11, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %5, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body10
  %6 = load i32, i32* %ret, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6, i32 noundef 118, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0)) #2
  br label %exit

if.end15:                                         ; preds = %do.body10
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %call18 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part2, i64 0, i64 0), i64 noundef 2) #2
  store i32 %call18, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %7, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body17
  %8 = load i32, i32* %ret, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8, i32 noundef 119, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0)) #2
  br label %exit

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %call25 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay) #2
  store i32 %call25, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %9, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.body24
  %10 = load i32, i32* %ret, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10, i32 noundef 120, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)) #2
  br label %exit

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %arraydecay31 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %11 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %info, align 8
  %call32 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %11) #2
  %conv = zext i8 %call32 to i64
  call void @print_buf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %arraydecay31, i64 noundef %conv) #2
  br label %do.body33

do.body33:                                        ; preds = %do.end30
  %call34 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %ctx) #2
  store i32 %call34, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp35 = icmp ne i32 %12, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.body33
  %13 = load i32, i32* %ret, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %13, i32 noundef 124, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0)) #2
  br label %exit

if.end39:                                         ; preds = %do.body33
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %call42 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part1, i64 0, i64 0), i64 noundef 2) #2
  store i32 %call42, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp43 = icmp ne i32 %14, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %do.body41
  %15 = load i32, i32* %ret, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %15, i32 noundef 125, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %exit

if.end47:                                         ; preds = %do.body41
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %call50 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part2, i64 0, i64 0), i64 noundef 2) #2
  store i32 %call50, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp51 = icmp ne i32 %16, 0
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.body49
  %17 = load i32, i32* %ret, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %17, i32 noundef 126, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0)) #2
  br label %exit

if.end55:                                         ; preds = %do.body49
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %arraydecay58 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %call59 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay58) #2
  store i32 %call59, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp60 = icmp ne i32 %18, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.body57
  %19 = load i32, i32* %ret, align 4
  %call63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %19, i32 noundef 127, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)) #2
  br label %exit

if.end64:                                         ; preds = %do.body57
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %20 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %info, align 8
  %call67 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %20) #2
  %conv68 = zext i8 %call67 to i64
  call void @print_buf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %arraydecay66, i64 noundef %conv68) #2
  br label %exit

exit:                                             ; preds = %do.end65, %if.then62, %if.then53, %if.then45, %if.then37, %if.then27, %if.then20, %if.then13, %if.then6, %if.then
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #2
  %arraydecay69 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay69, i64 noundef 64) #2
  %21 = load i32, i32* %ret, align 4
  ret i32 %21
}

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @hmac_demo() #2
  store i32 %call, i32* %ret, align 4
  %0 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %ret, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1, i32 noundef 141, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #2
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %exit

exit:                                             ; preds = %do.end, %if.then
  %2 = load i32, i32* %ret, align 4
  %cmp2 = icmp eq i32 %2, 0
  %3 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 1
  ret i32 %cond
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
