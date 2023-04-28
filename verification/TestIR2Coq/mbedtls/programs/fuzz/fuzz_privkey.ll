; ModuleID = 'fuzz_privkey.c'
source_filename = "fuzz_privkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }

@.str = private unnamed_addr constant [13 x i8] c"fuzz_privkey\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
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
  %0 = load i64, i64* %Size.addr, align 8
  %cmp = icmp ugt i64 %0, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 4096, i64* %Size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %1 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %2 = load i8*, i8** @pers, align 8
  %3 = load i8*, i8** @pers, align 8
  %call = call i64 @strlen(i8* noundef %3) #5
  %call1 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @dummy_entropy, i8* noundef %1, i8* noundef %2, i64 noundef %call) #4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pk) #4
  %4 = load i8*, i8** %Data.addr, align 8
  %5 = load i64, i64* %Size.addr, align 8
  %6 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call5 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pk, i8* noundef %4, i64 noundef %5, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %6) #4
  store i32 %call5, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end33

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %QP) #4
  %8 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %9 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 0
  %10 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %9, align 8
  %11 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %call11 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %10, i8* %12) #4
  store %struct.mbedtls_rsa_context* %call11, %struct.mbedtls_rsa_context** %rsa, align 8
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call12 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %13, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  call void @abort() #6
  unreachable

if.end15:                                         ; preds = %if.then10
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call16 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %14, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @abort() #6
  unreachable

if.end19:                                         ; preds = %if.end15
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #4
  br label %if.end32

if.else:                                          ; preds = %if.then7
  %call20 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
  %cmp21 = icmp eq i32 %call20, 2
  br i1 %cmp21, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call22 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
  %cmp23 = icmp eq i32 %call22, 3
  br i1 %cmp23, label %if.then24, label %if.else30

if.then24:                                        ; preds = %lor.lhs.false, %if.else
  %15 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %16 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %15, i32 0, i32 0
  %17 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %16, align 8
  %18 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %15, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %call25 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %17, i8* %19) #4
  store %struct.mbedtls_ecp_keypair* %call25, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %20, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %21 = load i32, i32* %id, align 8
  store i32 %21, i32* %grp_id, align 4
  %22 = load i32, i32* %grp_id, align 4
  %call26 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %22) #4
  store %struct.mbedtls_ecp_curve_info* %call26, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %23 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp27 = icmp eq %struct.mbedtls_ecp_curve_info* %23, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  call void @abort() #6
  unreachable

if.end29:                                         ; preds = %if.then24
  br label %if.end31

if.else30:                                        ; preds = %lor.lhs.false
  call void @abort() #6
  unreachable

if.end31:                                         ; preds = %if.end29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end19
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end4
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then3
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @dummy_entropy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @dummy_random(i8* noundef, i8* noundef, i64 noundef) #1

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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
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
declare dso_local void @abort() #3

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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
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

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
