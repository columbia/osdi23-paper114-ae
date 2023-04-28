; ModuleID = 'fuzz_dtlsserver.c'
source_filename = "fuzz_dtlsserver.c"
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
%struct.mbedtls_ssl_cookie_ctx = type { %struct.mbedtls_md_context_t, i64 }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.fuzzBufferOffset = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"fuzz_dtlsserver\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@client_ip = dso_local constant [4 x i8] c"\7F\00\00\01", align 1
@initialized = internal global i32 0, align 4
@srvcert = internal global %struct.mbedtls_x509_crt zeroinitializer, align 8
@pkey = internal global %struct.mbedtls_pk_context zeroinitializer, align 8
@mbedtls_test_srv_crt = external dso_local global i8*, align 8
@mbedtls_test_srv_crt_len = external dso_local constant i64, align 8
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@mbedtls_test_srv_key = external dso_local global i8*, align 8
@mbedtls_test_srv_key_len = external dso_local constant i64, align 8

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
  %cookie_ctx = alloca %struct.mbedtls_ssl_cookie_ctx, align 8
  %buf = alloca [4096 x i8], align 16
  %biomemfuzz = alloca %struct.fuzzBufferOffset, align 8
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %0 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %1 = load i8*, i8** @pers, align 8
  %2 = load i8*, i8** @pers, align 8
  %call = call i64 @strlen(i8* noundef %2) #5
  %call1 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @dummy_entropy, i8* noundef %0, i8* noundef %1, i64 noundef %call) #4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @initialized, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.end
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef @srvcert) #4
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef @pkey) #4
  %4 = load i8*, i8** @mbedtls_test_srv_crt, align 8
  %5 = load i64, i64* @mbedtls_test_srv_crt_len, align 8
  %call4 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @srvcert, i8* noundef %4, i64 noundef %5) #4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %6 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call8 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %6) #4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %7 = load i8*, i8** @mbedtls_test_srv_key, align 8
  %8 = load i64, i64* @mbedtls_test_srv_key_len, align 8
  %9 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call12 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef @pkey, i8* noundef %7, i64 noundef %8, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %9) #4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  call void (...) @dummy_init() #4
  store i32 1, i32* @initialized, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #4
  %call17 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %exit

if.end20:                                         ; preds = %if.end16
  call void @srand(i32 noundef 1) #6
  %10 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %10) #4
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** getelementptr inbounds (%struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* @srvcert, i32 0, i32 29), align 8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %11, %struct.mbedtls_x509_crl* noundef null) #4
  %call21 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef @srvcert, %struct.mbedtls_pk_context* noundef @pkey) #4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  br label %exit

if.end24:                                         ; preds = %if.end20
  %12 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call25 = call i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %12) #4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  br label %exit

if.end28:                                         ; preds = %if.end24
  %13 = bitcast %struct.mbedtls_ssl_cookie_ctx* %cookie_ctx to i8*
  call void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8**, i8*, i8*, i64)* noundef @mbedtls_ssl_cookie_write, i32 (i8*, i8*, i64, i8*, i64)* noundef @mbedtls_ssl_cookie_check, i8* noundef %13) #4
  %call29 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  br label %exit

if.end32:                                         ; preds = %if.end28
  %14 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %14, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #4
  %15 = load i8*, i8** %Data.addr, align 8
  %Data33 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 0
  store i8* %15, i8** %Data33, align 8
  %16 = load i64, i64* %Size.addr, align 8
  %Size34 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 1
  store i64 %16, i64* %Size34, align 8
  %Offset = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 2
  store i64 0, i64* %Offset, align 8
  %17 = bitcast %struct.fuzzBufferOffset* %biomemfuzz to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %17, i32 (i8*, i8*, i64)* noundef @dummy_send, i32 (i8*, i8*, i64)* noundef @fuzz_recv, i32 (i8*, i8*, i64, i32)* noundef @fuzz_recv_timeout) #4
  %call35 = call i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @client_ip, i64 0, i64 0), i64 noundef 4) #4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  br label %exit

if.end38:                                         ; preds = %if.end32
  %call39 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call39, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp40 = icmp eq i32 %18, -27264
  br i1 %cmp40, label %if.then41, label %if.end59

if.then41:                                        ; preds = %if.end38
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %ssl, i32 0, i32 35
  %19 = load i64, i64* %next_record_offset, align 8
  %Offset42 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 2
  store i64 %19, i64* %Offset42, align 8
  %call43 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #4
  %20 = bitcast %struct.fuzzBufferOffset* %biomemfuzz to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %20, i32 (i8*, i8*, i64)* noundef @dummy_send, i32 (i8*, i8*, i64)* noundef @fuzz_recv, i32 (i8*, i8*, i64, i32)* noundef @fuzz_recv_timeout) #4
  %call44 = call i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @client_ip, i64 0, i64 0), i64 noundef 4) #4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then41
  br label %exit

if.end47:                                         ; preds = %if.then41
  %call48 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call48, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp49 = icmp eq i32 %21, 0
  br i1 %cmp49, label %if.then50, label %if.end58

if.then50:                                        ; preds = %if.end47
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then50
  store i64 4095, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %22 = load i64, i64* %len, align 8
  %call51 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay, i64 noundef %22) #4
  store i32 %call51, i32* %ret, align 4
  %23 = load i32, i32* %ret, align 4
  %cmp52 = icmp eq i32 %23, -26880
  br i1 %cmp52, label %if.then53, label %if.else

if.then53:                                        ; preds = %do.body
  br label %do.cond

if.else:                                          ; preds = %do.body
  %24 = load i32, i32* %ret, align 4
  %cmp54 = icmp sle i32 %24, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.else
  br label %do.end

if.end56:                                         ; preds = %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %do.cond

do.cond:                                          ; preds = %if.end57, %if.then53
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then55
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.end47
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end38
  br label %exit

exit:                                             ; preds = %if.end59, %if.then46, %if.then37, %if.then31, %if.then27, %if.then23, %if.then19, %if.then
  call void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #4
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then14, %if.then10, %if.then6
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @dummy_entropy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @dummy_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @dummy_init(...) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8**, i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_cookie_write(i8* noundef, i8** noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_cookie_check(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #1

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @dummy_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv_timeout(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
