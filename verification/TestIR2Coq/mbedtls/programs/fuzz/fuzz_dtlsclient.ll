; ModuleID = 'fuzz_dtlsclient.c'
source_filename = "fuzz_dtlsclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_handshake_params = type opaque
%struct.mbedtls_ssl_transform = type opaque
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct.fuzzBufferOffset = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"fuzz_dtlsclient\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@initialized = internal global i32 0, align 4
@cacert = internal global %struct.mbedtls_x509_crt zeroinitializer, align 8
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %timer = alloca %struct.mbedtls_timing_delay_context, align 4
  %buf = alloca [4096 x i8], align 16
  %biomemfuzz = alloca %struct.fuzzBufferOffset, align 8
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %0 = load i32, i32* @initialized, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef @cacert) #4
  %1 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @cacert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %1) #4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  call void (...) @dummy_init() #4
  store i32 1, i32* @initialized, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  call void @srand(i32 noundef 1) #5
  %2 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %3 = load i8*, i8** @pers, align 8
  %4 = load i8*, i8** @pers, align 8
  %call4 = call i64 @strlen(i8* noundef %4) #6
  %call5 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @dummy_entropy, i8* noundef %2, i8* noundef %3, i64 noundef %call4) #4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  br label %exit

if.end8:                                          ; preds = %if.end3
  %call9 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef @cacert, %struct.mbedtls_x509_crl* noundef null) #4
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0) #4
  %5 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %5) #4
  %call13 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  %6 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %6, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #4
  %call17 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %exit

if.end20:                                         ; preds = %if.end16
  %7 = load i8*, i8** %Data.addr, align 8
  %Data21 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 0
  store i8* %7, i8** %Data21, align 8
  %8 = load i64, i64* %Size.addr, align 8
  %Size22 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 1
  store i64 %8, i64* %Size22, align 8
  %Offset = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 2
  store i64 0, i64* %Offset, align 8
  %9 = bitcast %struct.fuzzBufferOffset* %biomemfuzz to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %9, i32 (i8*, i8*, i64)* noundef @dummy_send, i32 (i8*, i8*, i64)* noundef @fuzz_recv, i32 (i8*, i8*, i64, i32)* noundef @fuzz_recv_timeout) #4
  %call23 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call23, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %10, 0
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end20
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then25
  store i64 4095, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %11 = load i64, i64* %len, align 8
  %call26 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay, i64 noundef %11) #4
  store i32 %call26, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp27 = icmp eq i32 %12, -26880
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.body
  br label %do.cond

if.else:                                          ; preds = %do.body
  %13 = load i32, i32* %ret, align 4
  %cmp29 = icmp sle i32 %13, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %do.end

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %do.cond

do.cond:                                          ; preds = %if.end32, %if.then28
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then30
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end20
  br label %exit

exit:                                             ; preds = %if.end33, %if.then19, %if.then15, %if.then11, %if.then7
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then2
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @dummy_init(...) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @dummy_entropy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @dummy_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #1

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @dummy_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv_timeout(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
