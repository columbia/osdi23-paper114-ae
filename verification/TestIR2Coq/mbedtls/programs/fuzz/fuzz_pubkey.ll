; ModuleID = 'fuzz_pubkey.c'
source_filename = "fuzz_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %E = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi, align 8
  %DQ = alloca %struct.mbedtls_mpi, align 8
  %QP = alloca %struct.mbedtls_mpi, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %grp_id = alloca i32, align 4
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #3
  %0 = load i8*, i8** %Data.addr, align 8
  %1 = load i64, i64* %Size.addr, align 8
  %call = call i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %0, i64 noundef %1) #3
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %call1 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #3
  %3 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %4 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %3, i32 0, i32 0
  %5 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %4, align 8
  %6 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %3, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %call4 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %5, i8* %7) #3
  store %struct.mbedtls_rsa_context* %call4, %struct.mbedtls_rsa_context** %rsa, align 8
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call5 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %8, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %E) #3
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then3
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %if.then3
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call8 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %9, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #3
  %cmp9 = icmp ne i32 %call8, -16512
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #4
  unreachable

if.end11:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call12 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %10, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #3
  %cmp13 = icmp ne i32 %call12, -16512
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end11
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #3
  br label %if.end32

if.else:                                          ; preds = %if.then
  %call16 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call18 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %if.then20, label %if.else30

if.then20:                                        ; preds = %lor.lhs.false, %if.else
  %11 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %12 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %11, i32 0, i32 0
  %13 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %12, align 8
  %14 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %11, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %call21 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %13, i8* %15) #3
  store %struct.mbedtls_ecp_keypair* %call21, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %16 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %16, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %17 = load i32, i32* %id, align 8
  store i32 %17, i32* %grp_id, align 4
  %18 = load i32, i32* %grp_id, align 4
  %call22 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %18) #3
  store %struct.mbedtls_ecp_curve_info* %call22, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %19 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp23 = icmp eq %struct.mbedtls_ecp_curve_info* %19, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  call void @abort() #4
  unreachable

if.end25:                                         ; preds = %if.then20
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %20, i32 0, i32 1
  %call26 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %d, i64 noundef 0) #3
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @abort() #4
  unreachable

if.end29:                                         ; preds = %if.end25
  br label %if.end31

if.else30:                                        ; preds = %lor.lhs.false
  call void @abort() #4
  unreachable

if.end31:                                         ; preds = %if.end29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end15
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #3
  ret i32 0
}

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_pk_parse_public_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_rsa_context*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %4, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %retval, align 8
  ret %struct.mbedtls_rsa_context* %5
}

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_keypair*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_ecp_keypair*
  store %struct.mbedtls_ecp_keypair* %4, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %retval, align 8
  ret %struct.mbedtls_ecp_keypair* %5
}

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef) #1

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
