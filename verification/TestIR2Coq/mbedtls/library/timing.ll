; ModuleID = 'timing.c'
source_filename = "timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct._hr_time = type { %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef %val, i32 noundef %reset) #0 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca %struct.mbedtls_timing_hr_time*, align 8
  %reset.addr = alloca i32, align 4
  %t = alloca %struct._hr_time*, align 8
  %delta = alloca i64, align 8
  %now = alloca %struct.timeval, align 8
  store %struct.mbedtls_timing_hr_time* %val, %struct.mbedtls_timing_hr_time** %val.addr, align 8
  store i32 %reset, i32* %reset.addr, align 4
  %0 = load %struct.mbedtls_timing_hr_time*, %struct.mbedtls_timing_hr_time** %val.addr, align 8
  %1 = bitcast %struct.mbedtls_timing_hr_time* %0 to %struct._hr_time*
  store %struct._hr_time* %1, %struct._hr_time** %t, align 8
  %2 = load i32, i32* %reset.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._hr_time*, %struct._hr_time** %t, align 8
  %start = getelementptr inbounds %struct._hr_time, %struct._hr_time* %3, i32 0, i32 0
  %call = call i32 @gettimeofday(%struct.timeval* noundef %start, i8* noundef null) #2
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call i32 @gettimeofday(%struct.timeval* noundef %now, i8* noundef null) #2
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %5 = load %struct._hr_time*, %struct._hr_time** %t, align 8
  %start2 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %5, i32 0, i32 0
  %tv_sec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %start2, i32 0, i32 0
  %6 = load i64, i64* %tv_sec3, align 8
  %sub = sub nsw i64 %4, %6
  %mul = mul i64 %sub, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %7 = load i64, i64* %tv_usec, align 8
  %8 = load %struct._hr_time*, %struct._hr_time** %t, align 8
  %start4 = getelementptr inbounds %struct._hr_time, %struct._hr_time* %8, i32 0, i32 0
  %tv_usec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %start4, i32 0, i32 1
  %9 = load i64, i64* %tv_usec5, align 8
  %sub6 = sub nsw i64 %7, %9
  %div = sdiv i64 %sub6, 1000
  %add = add i64 %mul, %div
  store i64 %add, i64* %delta, align 8
  %10 = load i64, i64* %delta, align 8
  store i64 %10, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_timing_set_delay(i8* noundef %data, i32 noundef %int_ms, i32 noundef %fin_ms) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %int_ms.addr = alloca i32, align 4
  %fin_ms.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_timing_delay_context*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %int_ms, i32* %int_ms.addr, align 4
  store i32 %fin_ms, i32* %fin_ms.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_timing_delay_context*
  store %struct.mbedtls_timing_delay_context* %1, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %2 = load i32, i32* %int_ms.addr, align 4
  %3 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %int_ms1 = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %3, i32 0, i32 1
  store i32 %2, i32* %int_ms1, align 4
  %4 = load i32, i32* %fin_ms.addr, align 4
  %5 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %fin_ms2 = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %5, i32 0, i32 2
  store i32 %4, i32* %fin_ms2, align 4
  %6 = load i32, i32* %fin_ms.addr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %timer = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %7, i32 0, i32 0
  %call = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef %timer, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_timing_get_delay(i8* noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_timing_delay_context*, align 8
  %elapsed_ms = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_timing_delay_context*
  store %struct.mbedtls_timing_delay_context* %1, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %2 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %fin_ms = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %2, i32 0, i32 2
  %3 = load i32, i32* %fin_ms, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %timer = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %4, i32 0, i32 0
  %call = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef %timer, i32 noundef 0) #3
  store i64 %call, i64* %elapsed_ms, align 8
  %5 = load i64, i64* %elapsed_ms, align 8
  %6 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %fin_ms1 = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %6, i32 0, i32 2
  %7 = load i32, i32* %fin_ms1, align 4
  %conv = zext i32 %7 to i64
  %cmp2 = icmp uge i64 %5, %conv
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i64, i64* %elapsed_ms, align 8
  %9 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %ctx, align 8
  %int_ms = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %9, i32 0, i32 1
  %10 = load i32, i32* %int_ms, align 4
  %conv6 = zext i32 %10 to i64
  %cmp7 = icmp uge i64 %8, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_timing_get_final_delay(%struct.mbedtls_timing_delay_context* noundef %data) #0 {
entry:
  %data.addr = alloca %struct.mbedtls_timing_delay_context*, align 8
  store %struct.mbedtls_timing_delay_context* %data, %struct.mbedtls_timing_delay_context** %data.addr, align 8
  %0 = load %struct.mbedtls_timing_delay_context*, %struct.mbedtls_timing_delay_context** %data.addr, align 8
  %fin_ms = getelementptr inbounds %struct.mbedtls_timing_delay_context, %struct.mbedtls_timing_delay_context* %0, i32 0, i32 2
  %1 = load i32, i32* %fin_ms, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
