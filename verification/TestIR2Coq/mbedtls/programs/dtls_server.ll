; ModuleID = 'ssl/dtls_server.c'
source_filename = "ssl/dtls_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_net_context = type { i32 }
%struct.mbedtls_ssl_cookie_ctx = type { %struct.mbedtls_md_context_t, i64 }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_handshake_params = type opaque
%struct.mbedtls_ssl_transform = type opaque
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct.mbedtls_ssl_cache_context = type { %struct.mbedtls_ssl_cache_entry*, i32, i32 }
%struct.mbedtls_ssl_cache_entry = type { i64, [32 x i8], i64, i8*, i64, %struct.mbedtls_ssl_cache_entry* }

@.str = private unnamed_addr constant [12 x i8] c"dtls_server\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\0A  . Loading the server cert. and key...\00", align 1
@mbedtls_test_srv_crt = external dso_local global i8*, align 8
@mbedtls_test_srv_crt_len = external dso_local constant i64, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned %d\0A\0A\00", align 1
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@mbedtls_test_srv_key = external dso_local global i8*, align 8
@mbedtls_test_srv_key_len = external dso_local constant i64, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c" failed\0A  !  mbedtls_pk_parse_key returned %d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"  . Bind on udp/*/4433 ...\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_bind returned %d\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"  . Setting up the DTLS data...\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_cookie_setup returned %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Last error was: %d - %s\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"  . Waiting for a remote connection ...\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_net_accept returned %d\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c" failed\0A  ! mbedtls_ssl_set_client_transport_id() returned -0x%x\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"  . Performing the DTLS handshake...\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c" hello verification requested\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"  < Read from client:\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c" timeout\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c" connection was closed gracefully\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c" mbedtls_ssl_read returned -0x%x\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c" %d bytes read\0A\0A%s\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"  > Write to client:\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c" %d bytes written\0A\0A%s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"  . Closing the connection...\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %listen_fd = alloca %struct.mbedtls_net_context, align 4
  %client_fd = alloca %struct.mbedtls_net_context, align 4
  %buf = alloca [1024 x i8], align 16
  %pers = alloca i8*, align 8
  %client_ip = alloca [16 x i8], align 16
  %cliip_len = alloca i64, align 8
  %cookie_ctx = alloca %struct.mbedtls_ssl_cookie_ctx, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %srvcert = alloca %struct.mbedtls_x509_crt, align 8
  %pkey = alloca %struct.mbedtls_pk_context, align 8
  %timer = alloca %struct.mbedtls_timing_delay_context, align 4
  %cache = alloca %struct.mbedtls_ssl_cache_context, align 8
  %error_buf = alloca [100 x i8], align 16
  %error_buf149 = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  %0 = bitcast [16 x i8]* %client_ip to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 16, i1 false)
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %listen_fd) #6
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #6
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #6
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #6
  call void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #6
  call void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef %cache) #6
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %srvcert) #6
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #6
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #6
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_debug_set_threshold(i32 noundef 0) #6
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %1) #6
  %2 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %3 = load i8*, i8** %pers, align 8
  %4 = load i8*, i8** %pers, align 8
  %call2 = call i64 @strlen(i8* noundef %4) #7
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %2, i8* noundef %3, i64 noundef %call2) #6
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %5) #6
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0)) #6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %6) #6
  %7 = load i8*, i8** @mbedtls_test_srv_crt, align 8
  %8 = load i64, i64* @mbedtls_test_srv_crt_len, align 8
  %call8 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef %7, i64 noundef %8) #6
  store i32 %call8, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef %10) #6
  br label %exit

if.end12:                                         ; preds = %if.end
  %11 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call13 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %11) #6
  store i32 %call13, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %12, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %13 = load i32, i32* %ret, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef %13) #6
  br label %exit

if.end17:                                         ; preds = %if.end12
  %14 = load i8*, i8** @mbedtls_test_srv_key, align 8
  %15 = load i64, i64* @mbedtls_test_srv_key_len, align 8
  %16 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call18 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %14, i64 noundef %15, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %16) #6
  store i32 %call18, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %18 = load i32, i32* %ret, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %18) #6
  br label %exit

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fflush(%struct._IO_FILE* noundef %19) #6
  %call26 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %listen_fd, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1) #6
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end22
  %20 = load i32, i32* %ret, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %20) #6
  br label %exit

if.end30:                                         ; preds = %if.end22
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)) #6
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* noundef %21) #6
  %call34 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end30
  %22 = load i32, i32* %ret, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 noundef %22) #6
  br label %exit

if.end38:                                         ; preds = %if.end30
  %23 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %23) #6
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = bitcast %struct._IO_FILE* %24 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %25) #6
  call void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 10000) #6
  %26 = bitcast %struct.mbedtls_ssl_cache_context* %cache to i8*
  call void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %26, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_get, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_set) #6
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %srvcert, i32 0, i32 29
  %27 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %27, %struct.mbedtls_x509_crl* noundef null) #6
  %call39 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert, %struct.mbedtls_pk_context* noundef %pkey) #6
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %28 = load i32, i32* %ret, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 noundef %28) #6
  br label %exit

if.end43:                                         ; preds = %if.end38
  %29 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call44 = call i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %29) #6
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %30 = load i32, i32* %ret, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 noundef %30) #6
  br label %exit

if.end48:                                         ; preds = %if.end43
  %31 = bitcast %struct.mbedtls_ssl_cookie_ctx* %cookie_ctx to i8*
  call void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8**, i8*, i8*, i64)* noundef @mbedtls_ssl_cookie_write, i32 (i8*, i8*, i64, i8*, i64)* noundef @mbedtls_ssl_cookie_check, i8* noundef %31) #6
  %call49 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #6
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %32 = load i32, i32* %ret, align 4
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 noundef %32) #6
  br label %exit

if.end53:                                         ; preds = %if.end48
  %33 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %33, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #6
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %reset

reset:                                            ; preds = %do.end144, %sw.default, %sw.bb, %if.then85, %if.then82, %if.end53
  %34 = load i32, i32* %ret, align 4
  %cmp55 = icmp ne i32 %34, 0
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %reset
  %35 = load i32, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %35, i8* noundef %arraydecay, i64 noundef 100) #6
  %36 = load i32, i32* %ret, align 4
  %arraydecay57 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 noundef %36, i8* noundef %arraydecay57) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %reset
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #6
  %call60 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #6
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call62 = call i32 @fflush(%struct._IO_FILE* noundef %37) #6
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %client_ip, i64 0, i64 0
  %call64 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %listen_fd, %struct.mbedtls_net_context* noundef %client_fd, i8* noundef %arraydecay63, i64 noundef 16, i64* noundef %cliip_len) #6
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end59
  %38 = load i32, i32* %ret, align 4
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 noundef %38) #6
  br label %exit

if.end68:                                         ; preds = %if.end59
  %arraydecay69 = getelementptr inbounds [16 x i8], [16 x i8]* %client_ip, i64 0, i64 0
  %39 = load i64, i64* %cliip_len, align 8
  %call70 = call i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay69, i64 noundef %39) #6
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end68
  %40 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %40
  %call73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0), i32 noundef %sub) #6
  br label %exit

if.end74:                                         ; preds = %if.end68
  %41 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %41, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef @mbedtls_net_recv_timeout) #6
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0)) #6
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call77 = call i32 @fflush(%struct._IO_FILE* noundef %42) #6
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end74
  %call78 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #6
  store i32 %call78, i32* %ret, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load i32, i32* %ret, align 4
  %cmp79 = icmp eq i32 %43, -26880
  br i1 %cmp79, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %44 = load i32, i32* %ret, align 4
  %cmp80 = icmp eq i32 %44, -26752
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %45 = phi i1 [ true, %do.cond ], [ %cmp80, %lor.rhs ]
  br i1 %45, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %lor.end
  %46 = load i32, i32* %ret, align 4
  %cmp81 = icmp eq i32 %46, -27264
  br i1 %cmp81, label %if.then82, label %if.else

if.then82:                                        ; preds = %do.end
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0)) #6
  store i32 0, i32* %ret, align 4
  br label %reset

if.else:                                          ; preds = %do.end
  %47 = load i32, i32* %ret, align 4
  %cmp84 = icmp ne i32 %47, 0
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.else
  %48 = load i32, i32* %ret, align 4
  %sub86 = sub nsw i32 0, %48
  %call87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i32 noundef %sub86) #6
  br label %reset

if.end88:                                         ; preds = %if.else
  br label %if.end89

if.end89:                                         ; preds = %if.end88
  %call90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %call91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0)) #6
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call92 = call i32 @fflush(%struct._IO_FILE* noundef %49) #6
  store i32 1023, i32* %len, align 4
  %arraydecay93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call94 = call i8* @memset(i8* noundef %arraydecay93, i32 noundef 0, i64 noundef 1024) #8
  br label %do.body95

do.body95:                                        ; preds = %lor.end104, %if.end89
  %arraydecay96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %50 = load i32, i32* %len, align 4
  %conv = sext i32 %50 to i64
  %call97 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay96, i64 noundef %conv) #6
  store i32 %call97, i32* %ret, align 4
  br label %do.cond98

do.cond98:                                        ; preds = %do.body95
  %51 = load i32, i32* %ret, align 4
  %cmp99 = icmp eq i32 %51, -26880
  br i1 %cmp99, label %lor.end104, label %lor.rhs101

lor.rhs101:                                       ; preds = %do.cond98
  %52 = load i32, i32* %ret, align 4
  %cmp102 = icmp eq i32 %52, -26752
  br label %lor.end104

lor.end104:                                       ; preds = %lor.rhs101, %do.cond98
  %53 = phi i1 [ true, %do.cond98 ], [ %cmp102, %lor.rhs101 ]
  br i1 %53, label %do.body95, label %do.end105, !llvm.loop !6

do.end105:                                        ; preds = %lor.end104
  %54 = load i32, i32* %ret, align 4
  %cmp106 = icmp sle i32 %54, 0
  br i1 %cmp106, label %if.then108, label %if.end114

if.then108:                                       ; preds = %do.end105
  %55 = load i32, i32* %ret, align 4
  switch i32 %55, label %sw.default [
    i32 -26624, label %sw.bb
    i32 -30848, label %sw.bb110
  ]

sw.bb:                                            ; preds = %if.then108
  %call109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %reset

sw.bb110:                                         ; preds = %if.then108
  %call111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 0, i32* %ret, align 4
  br label %close_notify

sw.default:                                       ; preds = %if.then108
  %56 = load i32, i32* %ret, align 4
  %sub112 = sub nsw i32 0, %56
  %call113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 noundef %sub112) #6
  br label %reset

if.end114:                                        ; preds = %do.end105
  %57 = load i32, i32* %ret, align 4
  store i32 %57, i32* %len, align 4
  %58 = load i32, i32* %len, align 4
  %arraydecay115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 noundef %58, i8* noundef %arraydecay115) #6
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0)) #6
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call118 = call i32 @fflush(%struct._IO_FILE* noundef %59) #6
  br label %do.body119

do.body119:                                       ; preds = %lor.end129, %if.end114
  %arraydecay120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %60 = load i32, i32* %len, align 4
  %conv121 = sext i32 %60 to i64
  %call122 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay120, i64 noundef %conv121) #6
  store i32 %call122, i32* %ret, align 4
  br label %do.cond123

do.cond123:                                       ; preds = %do.body119
  %61 = load i32, i32* %ret, align 4
  %cmp124 = icmp eq i32 %61, -26880
  br i1 %cmp124, label %lor.end129, label %lor.rhs126

lor.rhs126:                                       ; preds = %do.cond123
  %62 = load i32, i32* %ret, align 4
  %cmp127 = icmp eq i32 %62, -26752
  br label %lor.end129

lor.end129:                                       ; preds = %lor.rhs126, %do.cond123
  %63 = phi i1 [ true, %do.cond123 ], [ %cmp127, %lor.rhs126 ]
  br i1 %63, label %do.body119, label %do.end130, !llvm.loop !7

do.end130:                                        ; preds = %lor.end129
  %64 = load i32, i32* %ret, align 4
  %cmp131 = icmp slt i32 %64, 0
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %do.end130
  %65 = load i32, i32* %ret, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i32 noundef %65) #6
  br label %exit

if.end135:                                        ; preds = %do.end130
  %66 = load i32, i32* %ret, align 4
  store i32 %66, i32* %len, align 4
  %67 = load i32, i32* %len, align 4
  %arraydecay136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 noundef %67, i8* noundef %arraydecay136) #6
  br label %close_notify

close_notify:                                     ; preds = %if.end135, %sw.bb110
  %call138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #6
  br label %do.body139

do.body139:                                       ; preds = %do.cond141, %close_notify
  %call140 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #6
  store i32 %call140, i32* %ret, align 4
  br label %do.cond141

do.cond141:                                       ; preds = %do.body139
  %68 = load i32, i32* %ret, align 4
  %cmp142 = icmp eq i32 %68, -26752
  br i1 %cmp142, label %do.body139, label %do.end144, !llvm.loop !8

do.end144:                                        ; preds = %do.cond141
  store i32 0, i32* %ret, align 4
  %call145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)) #6
  br label %reset

exit:                                             ; preds = %if.then133, %if.then72, %if.then66, %if.then51, %if.then46, %if.then41, %if.then36, %if.then28, %if.then20, %if.then15, %if.then10, %if.then
  %69 = load i32, i32* %ret, align 4
  %cmp146 = icmp ne i32 %69, 0
  br i1 %cmp146, label %if.then148, label %if.end153

if.then148:                                       ; preds = %exit
  %70 = load i32, i32* %ret, align 4
  %arraydecay150 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf149, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %70, i8* noundef %arraydecay150, i64 noundef 100) #6
  %71 = load i32, i32* %ret, align 4
  %arraydecay151 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf149, i64 0, i64 0
  %call152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 noundef %71, i8* noundef %arraydecay151) #6
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %exit
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #6
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %listen_fd) #6
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %srvcert) #6
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #6
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #6
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #6
  call void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #6
  call void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef %cache) #6
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %72 = load i32, i32* %ret, align 4
  %cmp154 = icmp slt i32 %72, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end153
  store i32 1, i32* %ret, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end153
  %73 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %73) #9
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #2

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef) #2

declare dso_local void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef, void (i8*, i32, i8*, i32, i8*)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_debug(i8* noundef %ctx, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %str) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %line.addr, align 4
  %5 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #6
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #6
  ret void
}

declare dso_local void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef, i8* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef) #2

declare dso_local i32 @mbedtls_ssl_cache_get(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_cache_set(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8**, i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_write(i8* noundef, i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_check(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #2

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #2

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_net_recv_timeout(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #4

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef) #2

declare dso_local void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

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
