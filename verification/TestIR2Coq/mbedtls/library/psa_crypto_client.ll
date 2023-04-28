; ModuleID = 'psa_crypto_client.c'
source_filename = "psa_crypto_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psa_reset_key_attributes(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %domain_parameters, align 8
  call void @free(i8* noundef %1) #2
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %3 = bitcast %struct.psa_key_attributes_s* %2 to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 48) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %type, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %type.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %copy = alloca i8*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i8* null, i8** %copy, align 8
  %0 = load i64, i64* %data_length.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %data_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %1) #2
  store i8* %call, i8** %copy, align 8
  %2 = load i8*, i8** %copy, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -141, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8*, i8** %copy, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %data_length.addr, align 8
  %call3 = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef %5) #2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %domain_parameters, align 8
  %cmp5 = icmp ne i8* %7, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters7 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %domain_parameters7, align 8
  call void @free(i8* noundef %9) #2
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters8 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 1
  store i8* null, i8** %domain_parameters8, align 8
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %11, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4
  %12 = load i8*, i8** %copy, align 8
  %13 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters10 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %13, i32 0, i32 1
  store i8* %12, i8** %domain_parameters10, align 8
  %14 = load i64, i64* %data_length.addr, align 8
  %15 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size11 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %15, i32 0, i32 2
  store i64 %14, i64* %domain_parameters_size11, align 8
  %16 = load i16, i16* %type.addr, align 2
  %17 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %17, i32 0, i32 0
  %type12 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  store i16 %16, i16* %type12, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then2
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_get_key_domain_parameters(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 2
  %1 = load i64, i64* %domain_parameters_size, align 8
  %2 = load i64, i64* %data_size.addr, align 8
  %cmp = icmp ugt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 2
  %4 = load i64, i64* %domain_parameters_size1, align 8
  %5 = load i64*, i64** %data_length.addr, align 8
  store i64 %4, i64* %5, align 8
  %6 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %6, i32 0, i32 2
  %7 = load i64, i64* %domain_parameters_size2, align 8
  %cmp3 = icmp ne i64 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %domain_parameters, align 8
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size5 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %11, i32 0, i32 2
  %12 = load i64, i64* %domain_parameters_size5, align 8
  %call = call i8* @memcpy(i8* noundef %8, i8* noundef %10, i64 noundef %12) #2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
