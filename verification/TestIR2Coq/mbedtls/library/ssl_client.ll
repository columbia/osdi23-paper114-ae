; ModuleID = 'ssl_client.c'
source_filename = "ssl_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, {}*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type { %struct.mbedtls_x509_crt*, %struct.mbedtls_pk_context*, %struct.mbedtls_ssl_key_cert* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_handshake_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i64, %struct.mbedtls_ssl_ciphersuite_t*, void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i32)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, [20 x i16], i16*, i16*, %struct.mbedtls_dhm_context, %struct.mbedtls_ecdh_context, %struct.mbedtls_ecp_curve_info**, i8*, i64, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, %struct.anon, i8*, i8, i32, i32, i32, %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item*, i8*, i32, %struct.mbedtls_ssl_transform*, [8 x i8], i16, %struct.mbedtls_sha256_context, %struct.mbedtls_sha512_context, i8, %union.anon.1, [64 x i8], [1060 x i8], i8*, i64, %struct.mbedtls_x509_crt* }
%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }
%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.anon = type { i64, i8, [4 x %struct.mbedtls_ssl_hs_buffer], %struct.anon.0 }
%struct.mbedtls_ssl_hs_buffer = type { i8, i8*, i64 }
%struct.anon.0 = type { i8*, i64, i32 }
%struct.mbedtls_ssl_flight_item = type { i8*, i64, i8, %struct.mbedtls_ssl_flight_item* }
%struct.mbedtls_sha256_context = type { [2 x i32], [8 x i32], [64 x i8], i32 }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i8, [64 x i8], i64 }
%struct.mbedtls_ssl_transform = type { i64, i64, i64, i64, i64, [16 x i8], [16 x i8], %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t, i32, i32, %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t, [64 x i8] }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque
%union.mbedtls_ssl_user_data_t = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"ssl_client.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"=> write client hello\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"mbedtls_ssl_flight_transmit\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"<= write client hello\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"no RNG provided\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Random bytes generation failed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"creating session id failed\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"client hello, current time: %lld\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"client hello, random bytes\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"session id\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"client hello, cookie\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"client hello, total extension length: %zu\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"client hello extensions\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"client hello, add ciphersuite: %04x, %s\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"adding EMPTY_RENEGOTIATION_INFO_SCSV\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"client hello, got %zu cipher suites\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"client hello, adding server name extension: %s\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"client hello, adding alpn extension\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"client hello, adding supported_groups extension\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"got supported group(%04x)\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"NamedGroup: %s ( %x )\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"No group available.\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Supported groups extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_client_hello(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %buf_len = alloca i64, align 8
  %msg_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 842, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_prepare_client_hello(%struct.mbedtls_ssl_context* noundef %1) #4
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i32 @mbedtls_ssl_start_handshake_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8** noundef %buf, i64* noundef %buf_len) #4
  store i32 %call2, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %buf, align 8
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %buf_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %call8 = call i32 @ssl_write_client_hello_body(%struct.mbedtls_ssl_context* noundef %5, i8* noundef %6, i8* noundef %add.ptr, i64* noundef %msg_len) #4
  store i32 %call8, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 3
  %12 = load i8, i8* %transport, align 1
  %conv = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv, 1
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.end12
  %13 = load i64, i64* %msg_len, align 8
  %add = add i64 %13, 4
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 52
  store i64 %add, i64* %out_msglen, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef %15) #4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_set_state(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 2) #4
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call16 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %17) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 873, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %19) #4
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then15
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %21) #4
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %23 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23) #4
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end20
  br label %if.end33

if.else:                                          ; preds = %do.end12
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %26 = load i8*, i8** %buf, align 8
  %27 = load i64, i64* %msg_len, align 8
  call void @mbedtls_ssl_add_hs_msg_to_checksum(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef %26, i64 noundef %27) #4
  br label %do.body26

do.body26:                                        ; preds = %if.else
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load i64, i64* %buf_len, align 8
  %30 = load i64, i64* %msg_len, align 8
  %call27 = call i32 @mbedtls_ssl_finish_handshake_msg(%struct.mbedtls_ssl_context* noundef %28, i64 noundef %29, i64 noundef %30) #4
  store i32 %call27, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %31, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body26
  br label %cleanup

if.end31:                                         ; preds = %do.body26
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_set_state(%struct.mbedtls_ssl_context* noundef %32, i32 noundef 2) #4
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end25
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then30, %if.then10, %if.then4, %if.then
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 897, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #4
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then24, %if.then19
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

declare dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_prepare_client_hello(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %session_id_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 17
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #4
  store i32 -29696, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 2
  %5 = load i32, i32* %renego_status, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 4
  %7 = load i32, i32* %tls_version, align 4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 5
  store i32 %7, i32* %min_tls_version, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 0
  %12 = load i8, i8* %resume, align 8
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then4, label %if.else10

if.then4:                                         ; preds = %if.else
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 15
  %14 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %tls_version5 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %14, i32 0, i32 2
  %15 = load i32, i32* %tls_version5, align 4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 4
  store i32 %15, i32* %tls_version6, align 4
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 4
  %18 = load i32, i32* %tls_version7, align 4
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 16
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake8, align 8
  %min_tls_version9 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 5
  store i32 %18, i32* %min_tls_version9, align 8
  br label %if.end17

if.else10:                                        ; preds = %if.else
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf11, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %22, i32 0, i32 0
  %23 = load i32, i32* %max_tls_version, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 4
  store i32 %23, i32* %tls_version12, align 4
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf13, align 8
  %min_tls_version14 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 1
  %27 = load i32, i32* %min_tls_version14, align 4
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 16
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake15, align 8
  %min_tls_version16 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %29, i32 0, i32 5
  store i32 %27, i32* %min_tls_version16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.then4
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 0
  %31 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf19, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %31, i32 0, i32 3
  %32 = load i8, i8* %transport, align 1
  %conv = zext i8 %32 to i32
  %cmp20 = icmp ne i32 %conv, 1
  br i1 %cmp20, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake22, align 8
  %cookie = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 29
  %35 = load i8*, i8** %cookie, align 8
  %cmp23 = icmp eq i8* %35, null
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %lor.lhs.false, %if.end18
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_generate_random(%struct.mbedtls_ssl_context* noundef %36) #4
  store i32 %call, i32* %ret, align 4
  %37 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %37, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 noundef %39) #4
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 15
  %42 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate31, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %42, i32 0, i32 6
  %43 = load i64, i64* %id_len, align 8
  store i64 %43, i64* %session_id_len, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 4
  %45 = load i32, i32* %tls_version32, align 4
  %cmp33 = icmp eq i32 %45, 771
  br i1 %cmp33, label %if.then35, label %if.end66

if.then35:                                        ; preds = %if.end30
  %46 = load i64, i64* %session_id_len, align 8
  %cmp36 = icmp ult i64 %46, 16
  br i1 %cmp36, label %if.then51, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then35
  %47 = load i64, i64* %session_id_len, align 8
  %cmp39 = icmp ugt i64 %47, 32
  br i1 %cmp39, label %if.then51, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 2
  %49 = load i32, i32* %renego_status42, align 4
  %cmp43 = icmp ne i32 %49, 0
  br i1 %cmp43, label %if.then51, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 16
  %51 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake46, align 8
  %resume47 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %51, i32 0, i32 0
  %52 = load i8, i8* %resume47, align 8
  %conv48 = zext i8 %52 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false45, %lor.lhs.false41, %lor.lhs.false38, %if.then35
  store i64 0, i64* %session_id_len, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false45
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status53 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 2
  %54 = load i32, i32* %renego_status53, align 4
  %cmp54 = icmp eq i32 %54, 0
  br i1 %cmp54, label %if.then56, label %if.end65

if.then56:                                        ; preds = %if.end52
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 15
  %56 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate57, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %56, i32 0, i32 11
  %57 = load i8*, i8** %ticket, align 8
  %cmp58 = icmp ne i8* %57, null
  br i1 %cmp58, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %if.then56
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 15
  %59 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate60, align 8
  %ticket_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %59, i32 0, i32 12
  %60 = load i64, i64* %ticket_len, align 8
  %cmp61 = icmp ne i64 %60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  store i64 32, i64* %session_id_len, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true, %if.then56
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end52
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end30
  %61 = load i64, i64* %session_id_len, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate67 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 15
  %63 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate67, align 8
  %id_len68 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %63, i32 0, i32 6
  %64 = load i64, i64* %id_len68, align 8
  %cmp69 = icmp ne i64 %61, %64
  br i1 %cmp69, label %if.then71, label %if.end87

if.then71:                                        ; preds = %if.end66
  %65 = load i64, i64* %session_id_len, align 8
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 15
  %67 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate72, align 8
  %id_len73 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %67, i32 0, i32 6
  store i64 %65, i64* %id_len73, align 8
  %68 = load i64, i64* %session_id_len, align 8
  %cmp74 = icmp ugt i64 %68, 0
  br i1 %cmp74, label %if.then76, label %if.end86

if.then76:                                        ; preds = %if.then71
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf77 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 0
  %70 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf77, align 8
  %f_rng78 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %70, i32 0, i32 17
  %71 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng78, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 0
  %73 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf79, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %73, i32 0, i32 18
  %74 = load i8*, i8** %p_rng, align 8
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate80 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %75, i32 0, i32 15
  %76 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate80, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %76, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %77 = load i64, i64* %session_id_len, align 8
  %call81 = call i32 %71(i8* noundef %74, i8* noundef %arraydecay, i64 noundef %77) #4
  store i32 %call81, i32* %ret, align 4
  %78 = load i32, i32* %ret, align 4
  %cmp82 = icmp ne i32 %78, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then76
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %80 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %79, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 823, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 noundef %80) #4
  %81 = load i32, i32* %ret, align 4
  store i32 %81, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.then76
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then71
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end66
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then84, %if.then28, %if.then
  %82 = load i32, i32* %retval, align 4
  ret i32 %82
}

declare dso_local i32 @mbedtls_ssl_start_handshake_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8** noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_client_hello_body(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %handshake = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %p = alloca i8*, align 8
  %p_extensions_len = alloca i8*, align 8
  %output_len = alloca i64, align 8
  %extensions_len = alloca i64, align 8
  %tls12_uses_ec = alloca i32, align 4
  %propose_tls12 = alloca i8, align 1
  %cookie_len = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  store i8* %2, i8** %p, align 8
  store i32 0, i32* %tls12_uses_ec, align 4
  %3 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 5
  %5 = load i32, i32* %min_tls_version, align 8
  %cmp = icmp ule i32 %5, 771
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 4
  %7 = load i32, i32* %tls_version, align 4
  %cmp2 = icmp ule i32 771, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %conv = trunc i32 %land.ext to i8
  store i8 %conv, i8* %propose_tls12, align 1
  br label %do.body

do.body:                                          ; preds = %land.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %9, i8* noundef %10, i64 noundef 2) #4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 3
  %14 = load i8, i8* %transport, align 1
  %conv5 = zext i8 %14 to i32
  call void @mbedtls_ssl_write_version(i8* noundef %11, i32 noundef %conv5, i32 noundef 771) #4
  %15 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %end.addr, align 8
  %call7 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %16, i8* noundef %17, i64 noundef 32) #4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %18 = load i8*, i8** %p, align 8
  %19 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %19, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %call13 = call i8* @memcpy(i8* noundef %18, i8* noundef %arraydecay, i64 noundef 32) #5
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %21 = load i8*, i8** %p, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef %21, i64 noundef 32) #4
  %22 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 32
  store i8* %add.ptr14, i8** %p, align 8
  br label %do.body15

do.body15:                                        ; preds = %do.end12
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %end.addr, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 15
  %26 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %26, i32 0, i32 6
  %27 = load i64, i64* %id_len, align 8
  %add = add i64 %27, 1
  %call16 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %23, i8* noundef %24, i64 noundef %add) #4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body15
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 15
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate22, align 8
  %id_len23 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 6
  %30 = load i64, i64* %id_len23, align 8
  %conv24 = trunc i64 %30 to i8
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv24, i8* %31, align 1
  %32 = load i8*, i8** %p, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 15
  %34 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate25, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %34, i32 0, i32 7
  %arraydecay26 = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 15
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate27, align 8
  %id_len28 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %36, i32 0, i32 6
  %37 = load i64, i64* %id_len28, align 8
  %call29 = call i8* @memcpy(i8* noundef %32, i8* noundef %arraydecay26, i64 noundef %37) #5
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 15
  %39 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate30, align 8
  %id_len31 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %39, i32 0, i32 6
  %40 = load i64, i64* %id_len31, align 8
  %41 = load i8*, i8** %p, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %add.ptr32, i8** %p, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 15
  %44 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate33, align 8
  %id34 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %44, i32 0, i32 7
  %arraydecay35 = getelementptr inbounds [32 x i8], [32 x i8]* %id34, i64 0, i64 0
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 15
  %46 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate36, align 8
  %id_len37 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %46, i32 0, i32 6
  %47 = load i64, i64* %id_len37, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay35, i64 noundef %47) #4
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 0
  %49 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf38, align 8
  %transport39 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %49, i32 0, i32 3
  %50 = load i8, i8* %transport39, align 1
  %conv40 = zext i8 %50 to i32
  %cmp41 = icmp eq i32 %conv40, 1
  br i1 %cmp41, label %if.then43, label %if.end72

if.then43:                                        ; preds = %do.end21
  store i8 0, i8* %cookie_len, align 1
  %51 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %51, i32 0, i32 29
  %52 = load i8*, i8** %cookie, align 8
  %cmp44 = icmp ne i8* %52, null
  br i1 %cmp44, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.then43
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %54 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie47 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %54, i32 0, i32 29
  %55 = load i8*, i8** %cookie47, align 8
  %56 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %verify_cookie_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %56, i32 0, i32 30
  %57 = load i8, i8* %verify_cookie_len, align 8
  %conv48 = zext i8 %57 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* noundef %55, i64 noundef %conv48) #4
  %58 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %verify_cookie_len49 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %58, i32 0, i32 30
  %59 = load i8, i8* %verify_cookie_len49, align 8
  store i8 %59, i8* %cookie_len, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.then43
  br label %do.body51

do.body51:                                        ; preds = %if.end50
  %60 = load i8*, i8** %p, align 8
  %61 = load i8*, i8** %end.addr, align 8
  %62 = load i8, i8* %cookie_len, align 1
  %conv52 = zext i8 %62 to i32
  %add53 = add nsw i32 %conv52, 1
  %conv54 = sext i32 %add53 to i64
  %call55 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %60, i8* noundef %61, i64 noundef %conv54) #4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body51
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %do.body51
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  %63 = load i8, i8* %cookie_len, align 1
  %64 = load i8*, i8** %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr61, i8** %p, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8, i8* %cookie_len, align 1
  %conv62 = zext i8 %65 to i32
  %cmp63 = icmp sgt i32 %conv62, 0
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %do.end60
  %66 = load i8*, i8** %p, align 8
  %67 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie66 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %67, i32 0, i32 29
  %68 = load i8*, i8** %cookie66, align 8
  %69 = load i8, i8* %cookie_len, align 1
  %conv67 = zext i8 %69 to i64
  %call68 = call i8* @memcpy(i8* noundef %66, i8* noundef %68, i64 noundef %conv67) #5
  %70 = load i8, i8* %cookie_len, align 1
  %conv69 = zext i8 %70 to i32
  %71 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %conv69 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %71, i64 %idx.ext
  store i8* %add.ptr70, i8** %p, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %do.end60
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %do.end21
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %73 = load i8*, i8** %p, align 8
  %74 = load i8*, i8** %end.addr, align 8
  %call73 = call i32 @ssl_write_client_hello_cipher_suites(%struct.mbedtls_ssl_context* noundef %72, i8* noundef %73, i8* noundef %74, i32* noundef %tls12_uses_ec, i64* noundef %output_len) #4
  store i32 %call73, i32* %ret, align 4
  %75 = load i32, i32* %ret, align 4
  %cmp74 = icmp ne i32 %75, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end72
  %76 = load i32, i32* %ret, align 4
  store i32 %76, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end72
  %77 = load i64, i64* %output_len, align 8
  %78 = load i8*, i8** %p, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %add.ptr78, i8** %p, align 8
  br label %do.body79

do.body79:                                        ; preds = %if.end77
  %79 = load i8*, i8** %p, align 8
  %80 = load i8*, i8** %end.addr, align 8
  %call80 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %79, i8* noundef %80, i64 noundef 2) #4
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body79
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %do.body79
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  %81 = load i8*, i8** %p, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr86, i8** %p, align 8
  store i8 1, i8* %81, align 1
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8
  store i8 0, i8* %82, align 1
  br label %do.body88

do.body88:                                        ; preds = %do.end85
  %83 = load i8*, i8** %p, align 8
  %84 = load i8*, i8** %end.addr, align 8
  %call89 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %83, i8* noundef %84, i64 noundef 2) #4
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body88
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %do.body88
  br label %do.end94

do.end94:                                         ; preds = %if.end93
  %85 = load i8*, i8** %p, align 8
  store i8* %85, i8** %p_extensions_len, align 8
  %86 = load i8*, i8** %p, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %add.ptr95, i8** %p, align 8
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %88 = load i8*, i8** %p, align 8
  %89 = load i8*, i8** %end.addr, align 8
  %call96 = call i32 @ssl_write_hostname_ext(%struct.mbedtls_ssl_context* noundef %87, i8* noundef %88, i8* noundef %89, i64* noundef %output_len) #4
  store i32 %call96, i32* %ret, align 4
  %90 = load i32, i32* %ret, align 4
  %cmp97 = icmp ne i32 %90, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %do.end94
  %91 = load i32, i32* %ret, align 4
  store i32 %91, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %do.end94
  %92 = load i64, i64* %output_len, align 8
  %93 = load i8*, i8** %p, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8* %add.ptr101, i8** %p, align 8
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %95 = load i8*, i8** %p, align 8
  %96 = load i8*, i8** %end.addr, align 8
  %call102 = call i32 @ssl_write_alpn_ext(%struct.mbedtls_ssl_context* noundef %94, i8* noundef %95, i8* noundef %96, i64* noundef %output_len) #4
  store i32 %call102, i32* %ret, align 4
  %97 = load i32, i32* %ret, align 4
  %cmp103 = icmp ne i32 %97, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end100
  %98 = load i32, i32* %ret, align 4
  store i32 %98, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.end100
  %99 = load i64, i64* %output_len, align 8
  %100 = load i8*, i8** %p, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %add.ptr107, i8** %p, align 8
  %101 = load i8, i8* %propose_tls12, align 1
  %conv108 = zext i8 %101 to i32
  %tobool = icmp ne i32 %conv108, 0
  br i1 %tobool, label %land.lhs.true, label %if.end117

land.lhs.true:                                    ; preds = %if.end106
  %102 = load i32, i32* %tls12_uses_ec, align 4
  %tobool109 = icmp ne i32 %102, 0
  br i1 %tobool109, label %if.then110, label %if.end117

if.then110:                                       ; preds = %land.lhs.true
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %104 = load i8*, i8** %p, align 8
  %105 = load i8*, i8** %end.addr, align 8
  %call111 = call i32 @ssl_write_supported_groups_ext(%struct.mbedtls_ssl_context* noundef %103, i8* noundef %104, i8* noundef %105, i64* noundef %output_len) #4
  store i32 %call111, i32* %ret, align 4
  %106 = load i32, i32* %ret, align 4
  %cmp112 = icmp ne i32 %106, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then110
  %107 = load i32, i32* %ret, align 4
  store i32 %107, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.then110
  %108 = load i64, i64* %output_len, align 8
  %109 = load i8*, i8** %p, align 8
  %add.ptr116 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %add.ptr116, i8** %p, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.end115, %land.lhs.true, %if.end106
  %110 = load i8, i8* %propose_tls12, align 1
  %conv118 = zext i8 %110 to i32
  %tobool119 = icmp ne i32 %conv118, 0
  br i1 %tobool119, label %if.then120, label %if.end127

if.then120:                                       ; preds = %if.end117
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %112 = load i8*, i8** %p, align 8
  %113 = load i8*, i8** %end.addr, align 8
  %call121 = call i32 @mbedtls_ssl_write_sig_alg_ext(%struct.mbedtls_ssl_context* noundef %111, i8* noundef %112, i8* noundef %113, i64* noundef %output_len) #4
  store i32 %call121, i32* %ret, align 4
  %114 = load i32, i32* %ret, align 4
  %cmp122 = icmp ne i32 %114, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then120
  %115 = load i32, i32* %ret, align 4
  store i32 %115, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.then120
  %116 = load i64, i64* %output_len, align 8
  %117 = load i8*, i8** %p, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %add.ptr126, i8** %p, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.end125, %if.end117
  %118 = load i8, i8* %propose_tls12, align 1
  %tobool128 = icmp ne i8 %118, 0
  br i1 %tobool128, label %if.then129, label %if.end136

if.then129:                                       ; preds = %if.end127
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %120 = load i8*, i8** %p, align 8
  %121 = load i8*, i8** %end.addr, align 8
  %122 = load i32, i32* %tls12_uses_ec, align 4
  %call130 = call i32 @mbedtls_ssl_tls12_write_client_hello_exts(%struct.mbedtls_ssl_context* noundef %119, i8* noundef %120, i8* noundef %121, i32 noundef %122, i64* noundef %output_len) #4
  store i32 %call130, i32* %ret, align 4
  %123 = load i32, i32* %ret, align 4
  %cmp131 = icmp ne i32 %123, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then129
  %124 = load i32, i32* %ret, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %if.then129
  %125 = load i64, i64* %output_len, align 8
  %126 = load i8*, i8** %p, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %add.ptr135, i8** %p, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.end127
  %127 = load i8*, i8** %p, align 8
  %128 = load i8*, i8** %p_extensions_len, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %127 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %128 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 2
  store i64 %sub, i64* %extensions_len, align 8
  %129 = load i64, i64* %extensions_len, align 8
  %cmp137 = icmp eq i64 %129, 0
  br i1 %cmp137, label %if.then139, label %if.else

if.then139:                                       ; preds = %if.end136
  %130 = load i8*, i8** %p_extensions_len, align 8
  store i8* %130, i8** %p, align 8
  br label %if.end144

if.else:                                          ; preds = %if.end136
  %131 = load i64, i64* %extensions_len, align 8
  %shr = lshr i64 %131, 8
  %and = and i64 %shr, 255
  %conv140 = trunc i64 %and to i8
  %132 = load i8*, i8** %p_extensions_len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %132, i64 0
  store i8 %conv140, i8* %arrayidx, align 1
  %133 = load i64, i64* %extensions_len, align 8
  %and141 = and i64 %133, 255
  %conv142 = trunc i64 %and141 to i8
  %134 = load i8*, i8** %p_extensions_len, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %conv142, i8* %arrayidx143, align 1
  %135 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %136 = load i64, i64* %extensions_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %135, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 noundef %136) #4
  %137 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %138 = load i8*, i8** %p_extensions_len, align 8
  %139 = load i64, i64* %extensions_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %137, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* noundef %138, i64 noundef %139) #4
  br label %if.end144

if.end144:                                        ; preds = %if.else, %if.then139
  %140 = load i8*, i8** %p, align 8
  %141 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast145 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i8* %141 to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %142 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub147, i64* %142, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end144, %if.then133, %if.then124, %if.then114, %if.then105, %if.then99, %if.then92, %if.then83, %if.then76, %if.then58, %if.then19, %if.then10, %if.then
  %143 = load i32, i32* %retval, align 4
  ret i32 %143
}

declare dso_local void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_handshake_set_state(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %state) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %state.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 1
  store i32 %0, i32* %state1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i32 noundef 1) #4
  ret i32 %call
}

declare dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_add_hs_msg_to_checksum(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_finish_handshake_msg(%struct.mbedtls_ssl_context* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_generate_random(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %randbytes = alloca i8*, align 8
  %gmt_unix_time_len = alloca i64, align 8
  %gmt_unix_time = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %randbytes1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes1, i64 0, i64 0
  store i8* %arraydecay, i8** %randbytes, align 8
  store i64 0, i64* %gmt_unix_time_len, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 4
  %3 = load i32, i32* %tls_version, align 4
  %cmp = icmp eq i32 %3, 771
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @time(i64* noundef null) #5
  store i64 %call, i64* %gmt_unix_time, align 8
  %4 = load i64, i64* %gmt_unix_time, align 8
  %shr = ashr i64 %4, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %5 = load i8*, i8** %randbytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i64, i64* %gmt_unix_time, align 8
  %shr2 = ashr i64 %6, 16
  %and3 = and i64 %shr2, 255
  %conv4 = trunc i64 %and3 to i8
  %7 = load i8*, i8** %randbytes, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %8 = load i64, i64* %gmt_unix_time, align 8
  %shr6 = ashr i64 %8, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %9 = load i8*, i8** %randbytes, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %conv8, i8* %arrayidx9, align 1
  %10 = load i64, i64* %gmt_unix_time, align 8
  %and10 = and i64 %10, 255
  %conv11 = trunc i64 %and10 to i8
  %11 = load i8*, i8** %randbytes, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 3
  store i8 %conv11, i8* %arrayidx12, align 1
  store i64 4, i64* %gmt_unix_time_len, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i64, i64* %gmt_unix_time, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 690, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 noundef %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 17
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf13, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 18
  %19 = load i8*, i8** %p_rng, align 8
  %20 = load i8*, i8** %randbytes, align 8
  %21 = load i64, i64* %gmt_unix_time_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i64, i64* %gmt_unix_time_len, align 8
  %sub = sub i64 32, %22
  %call14 = call i32 %16(i8* noundef %19, i8* noundef %add.ptr, i64 noundef %sub) #4
  store i32 %call14, i32* %ret, align 4
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %cur, i8* noundef %end, i64 noundef %need) #0 {
entry:
  %cur.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %need.addr = alloca i64, align 8
  store i8* %cur, i8** %cur.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  %0 = load i8*, i8** %cur.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i64, i64* %need.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8*, i8** %cur.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp ugt i64 %2, %sub.ptr.sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

declare dso_local void @mbedtls_ssl_write_version(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_client_hello_cipher_suites(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i32* noundef %tls12_uses_ec, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %tls12_uses_ec.addr = alloca i32*, align 8
  %out_len.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %ciphersuite_list = alloca i32*, align 8
  %cipher_suites = alloca i8*, align 8
  %cipher_suites_len = alloca i64, align 8
  %i = alloca i64, align 8
  %cipher_suite = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %tls12_uses_ec, i32** %tls12_uses_ec.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32*, i32** %tls12_uses_ec.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %ciphersuite_list1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 14
  %5 = load i32*, i32** %ciphersuite_list1, align 8
  store i32* %5, i32** %ciphersuite_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef 2) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %cipher_suites, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load i32*, i32** %ciphersuite_list, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %11
  %12 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp ne i32 %12, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %ciphersuite_list, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %13, i64 %14
  %15 = load i32, i32* %arrayidx3, align 4
  store i32 %15, i32* %cipher_suite, align 4
  %16 = load i32, i32* %cipher_suite, align 4
  %call4 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %16) #4
  store %struct.mbedtls_ssl_ciphersuite_t* %call4, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %18 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 16
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 5
  %21 = load i32, i32* %min_tls_version, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 4
  %23 = load i32, i32* %tls_version, align 4
  %call5 = call i32 @mbedtls_ssl_validate_ciphersuite(%struct.mbedtls_ssl_context* noundef %17, %struct.mbedtls_ssl_ciphersuite_t* noundef %18, i32 noundef %21, i32 noundef %23) #4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %24 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call9 = call i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef %24) #4
  %25 = load i32*, i32** %tls12_uses_ec.addr, align 8
  %26 = load i32, i32* %25, align 4
  %or = or i32 %26, %call9
  store i32 %or, i32* %25, align 4
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %28 = load i32, i32* %cipher_suite, align 4
  %29 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %27, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 noundef %28, i8* noundef %30) #4
  br label %do.body10

do.body10:                                        ; preds = %if.end8
  %31 = load i8*, i8** %p, align 8
  %32 = load i8*, i8** %end.addr, align 8
  %call11 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %31, i8* noundef %32, i64 noundef 2) #4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %do.body10
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %33 = load i32, i32* %cipher_suite, align 4
  %shr = ashr i32 %33, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %34 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %conv, i8* %arrayidx16, align 1
  %35 = load i32, i32* %cipher_suite, align 4
  %and17 = and i32 %35, 255
  %conv18 = trunc i32 %and17 to i8
  %36 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %conv18, i8* %arrayidx19, align 1
  %37 = load i8*, i8** %p, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %add.ptr20, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end15, %if.then7
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 2
  %40 = load i32, i32* %renego_status, align 4
  %cmp21 = icmp eq i32 %40, 0
  br i1 %cmp21, label %if.then23, label %if.end34

if.then23:                                        ; preds = %for.end
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  %42 = load i8*, i8** %p, align 8
  %43 = load i8*, i8** %end.addr, align 8
  %call25 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %42, i8* noundef %43, i64 noundef 2) #4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body24
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %44 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %arrayidx31, align 1
  %45 = load i8*, i8** %p, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 -1, i8* %arrayidx32, align 1
  %46 = load i8*, i8** %p, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %add.ptr33, i8** %p, align 8
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %for.end
  %47 = load i8*, i8** %p, align 8
  %48 = load i8*, i8** %cipher_suites, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %cipher_suites_len, align 8
  %49 = load i64, i64* %cipher_suites_len, align 8
  %shr35 = lshr i64 %49, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %50 = load i8*, i8** %buf.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %conv37, i8* %arrayidx38, align 1
  %51 = load i64, i64* %cipher_suites_len, align 8
  %and39 = and i64 %51, 255
  %conv40 = trunc i64 %and39 to i8
  %52 = load i8*, i8** %buf.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %conv40, i8* %arrayidx41, align 1
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %54 = load i64, i64* %cipher_suites_len, align 8
  %div = udiv i64 %54, 2
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i64 noundef %div) #4
  %55 = load i8*, i8** %p, align 8
  %56 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast42 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %56 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %57 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub44, i64* %57, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then28, %if.then13, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_hostname_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %hostname_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 56
  %3 = load i8*, i8** %hostname, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 56
  %6 = load i8*, i8** %hostname1, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i8* noundef %6) #4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 56
  %8 = load i8*, i8** %hostname2, align 8
  %call = call i64 @strlen(i8* noundef %8) #6
  store i64 %call, i64* %hostname_len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %11 = load i64, i64* %hostname_len, align 8
  %add = add i64 %11, 9
  %call3 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %9, i8* noundef %10, i64 noundef %add) #4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  %13 = load i8*, i8** %p, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %arrayidx7, align 1
  %14 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %15 = load i64, i64* %hostname_len, align 8
  %add8 = add i64 %15, 5
  %shr = lshr i64 %add8, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %16 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %conv, i8* %arrayidx9, align 1
  %17 = load i64, i64* %hostname_len, align 8
  %add10 = add i64 %17, 5
  %and11 = and i64 %add10, 255
  %conv12 = trunc i64 %and11 to i8
  %18 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv12, i8* %arrayidx13, align 1
  %19 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr14, i8** %p, align 8
  %20 = load i64, i64* %hostname_len, align 8
  %add15 = add i64 %20, 3
  %shr16 = lshr i64 %add15, 8
  %and17 = and i64 %shr16, 255
  %conv18 = trunc i64 %and17 to i8
  %21 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %conv18, i8* %arrayidx19, align 1
  %22 = load i64, i64* %hostname_len, align 8
  %add20 = add i64 %22, 3
  %and21 = and i64 %add20, 255
  %conv22 = trunc i64 %and21 to i8
  %23 = load i8*, i8** %p, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %24 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr24, i8** %p, align 8
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %25, align 1
  %26 = load i64, i64* %hostname_len, align 8
  %shr25 = lshr i64 %26, 8
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %27 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %conv27, i8* %arrayidx28, align 1
  %28 = load i64, i64* %hostname_len, align 8
  %and29 = and i64 %28, 255
  %conv30 = trunc i64 %and29 to i8
  %29 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %conv30, i8* %arrayidx31, align 1
  %30 = load i8*, i8** %p, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr32, i8** %p, align 8
  %31 = load i8*, i8** %p, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 56
  %33 = load i8*, i8** %hostname33, align 8
  %34 = load i64, i64* %hostname_len, align 8
  %call34 = call i8* @memcpy(i8* noundef %31, i8* noundef %33, i64 noundef %34) #5
  %35 = load i64, i64* %hostname_len, align 8
  %add35 = add i64 %35, 9
  %36 = load i64*, i64** %olen.addr, align 8
  store i64 %add35, i64* %36, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then5, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_alpn_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %cur = alloca i8**, align 8
  %protocol_name_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %alpn_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 48
  %4 = load i8**, i8*** %alpn_list, align 8
  %cmp = icmp eq i8** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef 6) #4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 16, i8* %arrayidx4, align 1
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 6
  store i8* %add.ptr, i8** %p, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf5, align 8
  %alpn_list6 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 48
  %13 = load i8**, i8*** %alpn_list6, align 8
  store i8** %13, i8*** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %14 = load i8**, i8*** %cur, align 8
  %15 = load i8*, i8** %14, align 8
  %cmp7 = icmp ne i8* %15, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8**, i8*** %cur, align 8
  %17 = load i8*, i8** %16, align 8
  %call8 = call i64 @strlen(i8* noundef %17) #6
  store i64 %call8, i64* %protocol_name_len, align 8
  br label %do.body9

do.body9:                                         ; preds = %for.body
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %end.addr, align 8
  %20 = load i64, i64* %protocol_name_len, align 8
  %add = add i64 1, %20
  %call10 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %18, i8* noundef %19, i64 noundef %add) #4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body9
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.body9
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  %21 = load i64, i64* %protocol_name_len, align 8
  %conv = trunc i64 %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %22, align 1
  %23 = load i8*, i8** %p, align 8
  %24 = load i8**, i8*** %cur, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %protocol_name_len, align 8
  %call15 = call i8* @memcpy(i8* noundef %23, i8* noundef %25, i64 noundef %26) #5
  %27 = load i64, i64* %protocol_name_len, align 8
  %28 = load i8*, i8** %p, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %add.ptr16, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end14
  %29 = load i8**, i8*** %cur, align 8
  %incdec.ptr17 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr17, i8*** %cur, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %32 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub, i64* %32, align 8
  %33 = load i64*, i64** %out_len.addr, align 8
  %34 = load i64, i64* %33, align 8
  %sub = sub i64 %34, 6
  %shr = lshr i64 %sub, 8
  %and = and i64 %shr, 255
  %conv18 = trunc i64 %and to i8
  %35 = load i8*, i8** %buf.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 %conv18, i8* %arrayidx19, align 1
  %36 = load i64*, i64** %out_len.addr, align 8
  %37 = load i64, i64* %36, align 8
  %sub20 = sub i64 %37, 6
  %and21 = and i64 %sub20, 255
  %conv22 = trunc i64 %and21 to i8
  %38 = load i8*, i8** %buf.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 5
  store i8 %conv22, i8* %arrayidx23, align 1
  %39 = load i64*, i64** %out_len.addr, align 8
  %40 = load i64, i64* %39, align 8
  %sub24 = sub i64 %40, 4
  %shr25 = lshr i64 %sub24, 8
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %41 = load i8*, i8** %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %42 = load i64*, i64** %out_len.addr, align 8
  %43 = load i64, i64* %42, align 8
  %sub29 = sub i64 %43, 4
  %and30 = and i64 %sub29, 255
  %conv31 = trunc i64 %and30 to i8
  %44 = load i8*, i8** %buf.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %44, i64 3
  store i8 %conv31, i8* %arrayidx32, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then2, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_supported_groups_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %named_group_list = alloca i8*, align 8
  %named_group_list_len = alloca i64, align 8
  %group_list = alloca i16*, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i8* @mbedtls_ssl_get_groups(%struct.mbedtls_ssl_context* noundef %1) #4
  %2 = bitcast i8* %call to i16*
  store i16* %2, i16** %group_list, align 8
  %3 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %call1 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %5, i8* noundef %6, i64 noundef 6) #4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 6
  store i8* %add.ptr, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** %named_group_list, align 8
  %9 = load i16*, i16** %group_list, align 8
  %cmp2 = icmp eq i16* %9, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %do.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %10 = load i16*, i16** %group_list, align 8
  %11 = load i16, i16* %10, align 2
  %conv = zext i16 %11 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i16*, i16** %group_list, align 8
  %14 = load i16, i16* %13, align 2
  %conv7 = zext i16 %14 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv7) #4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %call8 = call i32 @mbedtls_ssl_conf_is_tls13_enabled(%struct.mbedtls_ssl_config* noundef %16) #4
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %17 = load i16*, i16** %group_list, align 8
  %18 = load i16, i16* %17, align 2
  %call9 = call i32 @mbedtls_ssl_tls13_named_group_is_ecdhe(i16 noundef zeroext %18) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 0
  %20 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf11, align 8
  %call12 = call i32 @mbedtls_ssl_conf_is_tls12_enabled(%struct.mbedtls_ssl_config* noundef %20) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.end38

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %21 = load i16*, i16** %group_list, align 8
  %22 = load i16, i16* %21, align 2
  %call15 = call i32 @mbedtls_ssl_tls12_named_group_is_ecdhe(i16 noundef zeroext %22) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end38

if.then17:                                        ; preds = %land.lhs.true14, %land.lhs.true
  %23 = load i16*, i16** %group_list, align 8
  %24 = load i16, i16* %23, align 2
  %call18 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext %24) #4
  store %struct.mbedtls_ecp_curve_info* %call18, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %25 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp19 = icmp eq %struct.mbedtls_ecp_curve_info* %25, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  br label %for.inc

if.end22:                                         ; preds = %if.then17
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  %26 = load i8*, i8** %p, align 8
  %27 = load i8*, i8** %end.addr, align 8
  %call24 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %26, i8* noundef %27, i64 noundef 2) #4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body23
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %do.body23
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %28 = load i16*, i16** %group_list, align 8
  %29 = load i16, i16* %28, align 2
  %conv30 = zext i16 %29 to i32
  %shr = ashr i32 %conv30, 8
  %and = and i32 %shr, 255
  %conv31 = trunc i32 %and to i8
  %30 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %conv31, i8* %arrayidx, align 1
  %31 = load i16*, i16** %group_list, align 8
  %32 = load i16, i16* %31, align 2
  %conv32 = zext i16 %32 to i32
  %and33 = and i32 %conv32, 255
  %conv34 = trunc i32 %and33 to i8
  %33 = load i8*, i8** %p, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %conv34, i8* %arrayidx35, align 1
  %34 = load i8*, i8** %p, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr36, i8** %p, align 8
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %36, i32 0, i32 3
  %37 = load i8*, i8** %name, align 8
  %38 = load i16*, i16** %group_list, align 8
  %39 = load i16, i16* %38, align 2
  %conv37 = zext i16 %39 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* noundef %37, i32 noundef %conv37) #4
  br label %if.end38

if.end38:                                         ; preds = %do.end29, %land.lhs.true14, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.then21
  %40 = load i16*, i16** %group_list, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr, i16** %group_list, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %named_group_list, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %named_group_list_len, align 8
  %43 = load i64, i64* %named_group_list_len, align 8
  %cmp39 = icmp eq i64 %43, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %for.end
  %45 = load i8*, i8** %buf.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %arrayidx43, align 1
  %46 = load i8*, i8** %buf.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 10, i8* %arrayidx44, align 1
  %47 = load i64, i64* %named_group_list_len, align 8
  %add = add i64 %47, 2
  %shr45 = lshr i64 %add, 8
  %and46 = and i64 %shr45, 255
  %conv47 = trunc i64 %and46 to i8
  %48 = load i8*, i8** %buf.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv47, i8* %arrayidx48, align 1
  %49 = load i64, i64* %named_group_list_len, align 8
  %add49 = add i64 %49, 2
  %and50 = and i64 %add49, 255
  %conv51 = trunc i64 %and50 to i8
  %50 = load i8*, i8** %buf.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %50, i64 3
  store i8 %conv51, i8* %arrayidx52, align 1
  %51 = load i64, i64* %named_group_list_len, align 8
  %shr53 = lshr i64 %51, 8
  %and54 = and i64 %shr53, 255
  %conv55 = trunc i64 %and54 to i8
  %52 = load i8*, i8** %buf.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %52, i64 4
  store i8 %conv55, i8* %arrayidx56, align 1
  %53 = load i64, i64* %named_group_list_len, align 8
  %and57 = and i64 %53, 255
  %conv58 = trunc i64 %and57 to i8
  %54 = load i8*, i8** %buf.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %54, i64 5
  store i8 %conv58, i8* %arrayidx59, align 1
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %56 = load i8*, i8** %buf.addr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %56, i64 4
  %57 = load i64, i64* %named_group_list_len, align 8
  %add61 = add i64 %57, 2
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* noundef %add.ptr60, i64 noundef %add61) #4
  %58 = load i8*, i8** %p, align 8
  %59 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast62 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %59 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %60 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub64, i64* %60, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then41, %if.then27, %if.then3, %if.then
  %61 = load i32, i32* %retval, align 4
  ret i32 %61
}

declare dso_local i32 @mbedtls_ssl_write_sig_alg_ext(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_ssl_tls12_write_client_hello_exts(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef, i32 noundef, i64* noundef) #1

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_validate_ciphersuite(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_ciphersuite_t* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_ssl_get_groups(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_handshake_params* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %group_list = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 17
  %4 = load i16*, i16** %group_list, align 8
  %cmp2 = icmp ne i16* %4, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %group_list4 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 17
  %7 = load i16*, i16** %group_list4, align 8
  %8 = bitcast i16* %7 to i8*
  store i8* %8, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %group_list5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 41
  %11 = load i16*, i16** %group_list5, align 8
  %12 = bitcast i16* %11 to i8*
  store i8* %12, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %retval, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_conf_is_tls13_enabled(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_tls13_named_group_is_ecdhe(i16 noundef zeroext %named_group) #0 {
entry:
  %named_group.addr = alloca i16, align 2
  store i16 %named_group, i16* %named_group.addr, align 2
  %0 = load i16, i16* %named_group.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 29
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %named_group.addr, align 2
  %conv2 = zext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 23
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i16, i16* %named_group.addr, align 2
  %conv6 = zext i16 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 24
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i16, i16* %named_group.addr, align 2
  %conv10 = zext i16 %3 to i32
  %cmp11 = icmp eq i32 %conv10, 25
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %4 = load i16, i16* %named_group.addr, align 2
  %conv13 = zext i16 %4 to i32
  %cmp14 = icmp eq i32 %conv13, 30
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_conf_is_tls12_enabled(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 1
  %1 = load i32, i32* %min_tls_version, align 4
  %cmp = icmp ule i32 %1, 771
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 0
  %3 = load i32, i32* %max_tls_version, align 8
  %cmp1 = icmp uge i32 %3, 771
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_tls12_named_group_is_ecdhe(i16 noundef zeroext %named_group) #0 {
entry:
  %named_group.addr = alloca i16, align 2
  store i16 %named_group, i16* %named_group.addr, align 2
  %0 = load i16, i16* %named_group.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 29
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %named_group.addr, align 2
  %conv2 = zext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 26
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i16, i16* %named_group.addr, align 2
  %conv6 = zext i16 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 27
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i16, i16* %named_group.addr, align 2
  %conv10 = zext i16 %3 to i32
  %cmp11 = icmp eq i32 %conv10, 28
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %4 = load i16, i16* %named_group.addr, align 2
  %conv14 = zext i16 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 30
  br i1 %cmp15, label %lor.end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %5 = load i16, i16* %named_group.addr, align 2
  %conv18 = zext i16 %5 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %lor.end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %6 = load i16, i16* %named_group.addr, align 2
  %conv22 = zext i16 %6 to i32
  %cmp23 = icmp eq i32 %conv22, 19
  br i1 %cmp23, label %lor.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %7 = load i16, i16* %named_group.addr, align 2
  %conv26 = zext i16 %7 to i32
  %cmp27 = icmp eq i32 %conv26, 20
  br i1 %cmp27, label %lor.end, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %8 = load i16, i16* %named_group.addr, align 2
  %conv30 = zext i16 %8 to i32
  %cmp31 = icmp eq i32 %conv30, 21
  br i1 %cmp31, label %lor.end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %9 = load i16, i16* %named_group.addr, align 2
  %conv34 = zext i16 %9 to i32
  %cmp35 = icmp eq i32 %conv34, 22
  br i1 %cmp35, label %lor.end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %10 = load i16, i16* %named_group.addr, align 2
  %conv38 = zext i16 %10 to i32
  %cmp39 = icmp eq i32 %conv38, 23
  br i1 %cmp39, label %lor.end, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %11 = load i16, i16* %named_group.addr, align 2
  %conv42 = zext i16 %11 to i32
  %cmp43 = icmp eq i32 %conv42, 24
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false41
  %12 = load i16, i16* %named_group.addr, align 2
  %conv45 = zext i16 %12 to i32
  %cmp46 = icmp eq i32 %conv45, 25
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false41, %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %13 = phi i1 [ true, %lor.lhs.false41 ], [ true, %lor.lhs.false37 ], [ true, %lor.lhs.false33 ], [ true, %lor.lhs.false29 ], [ true, %lor.lhs.false25 ], [ true, %lor.lhs.false21 ], [ true, %lor.lhs.false17 ], [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp46, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  ret i32 %lor.ext
}

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext) #1

declare dso_local i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef, i32 noundef, i32 noundef) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
