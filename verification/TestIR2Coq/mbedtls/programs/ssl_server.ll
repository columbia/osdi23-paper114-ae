; ModuleID = 'ssl/ssl_server.c'
source_filename = "ssl/ssl_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_net_context = type { i32 }
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
%struct.mbedtls_ssl_cache_context = type { %struct.mbedtls_ssl_cache_entry*, i32, i32 }
%struct.mbedtls_ssl_cache_entry = type { i64, [32 x i8], i64, i8*, i64, %struct.mbedtls_ssl_cache_entry* }

@.str = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1
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
@.str.7 = private unnamed_addr constant [40 x i8] c"  . Bind on https://localhost:4433/ ...\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_bind returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"  . Setting up the SSL data....\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Last error was: %d - %s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"  . Waiting for a remote connection ...\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_net_accept returned %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"  . Performing the SSL/TLS handshake...\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned %d\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"  < Read from client:\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c" connection was closed gracefully\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c" connection was reset by peer\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c" mbedtls_ssl_read returned -0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c" %d bytes read\0A\0A%s\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"  > Write to client:\00", align 1
@.str.25 = private unnamed_addr constant [116 x i8] c"HTTP/1.0 200 OK\0D\0AContent-Type: text/html\0D\0A\0D\0A<h2>mbed TLS Test Server</h2>\0D\0A<p>Successful connection using: %s</p>\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c" failed\0A  ! peer closed the connection\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c" %d bytes written\0A\0A%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"  . Closing the connection...\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_close_notify returned %d\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

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
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %srvcert = alloca %struct.mbedtls_x509_crt, align 8
  %pkey = alloca %struct.mbedtls_pk_context, align 8
  %cache = alloca %struct.mbedtls_ssl_cache_context, align 8
  %error_buf = alloca [100 x i8], align 16
  %error_buf147 = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef %cache) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %srvcert) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_debug_set_threshold(i32 noundef 0) #5
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  %1 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %2 = load i8*, i8** %pers, align 8
  %3 = load i8*, i8** %pers, align 8
  %call2 = call i64 @strlen(i8* noundef %3) #6
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %1, i8* noundef %2, i64 noundef %call2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %6 = load i8*, i8** @mbedtls_test_srv_crt, align 8
  %7 = load i64, i64* @mbedtls_test_srv_crt_len, align 8
  %call8 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef %6, i64 noundef %7) #5
  store i32 %call8, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef %9) #5
  br label %exit

if.end12:                                         ; preds = %if.end
  %10 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call13 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %10) #5
  store i32 %call13, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %11, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %12 = load i32, i32* %ret, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef %12) #5
  br label %exit

if.end17:                                         ; preds = %if.end12
  %13 = load i8*, i8** @mbedtls_test_srv_key, align 8
  %14 = load i64, i64* @mbedtls_test_srv_key_len, align 8
  %15 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call18 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %13, i64 noundef %14, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %15) #5
  store i32 %call18, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %16, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %17 = load i32, i32* %ret, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %17) #5
  br label %exit

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0)) #5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fflush(%struct._IO_FILE* noundef %18) #5
  %call26 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %listen_fd, i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end22
  %19 = load i32, i32* %ret, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %19) #5
  br label %exit

if.end30:                                         ; preds = %if.end22
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* noundef %20) #5
  %call34 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end30
  %21 = load i32, i32* %ret, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 noundef %21) #5
  br label %exit

if.end38:                                         ; preds = %if.end30
  %22 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %22) #5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = bitcast %struct._IO_FILE* %23 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %24) #5
  %25 = bitcast %struct.mbedtls_ssl_cache_context* %cache to i8*
  call void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %25, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_get, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_set) #5
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %srvcert, i32 0, i32 29
  %26 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %26, %struct.mbedtls_x509_crl* noundef null) #5
  %call39 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert, %struct.mbedtls_pk_context* noundef %pkey) #5
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %27 = load i32, i32* %ret, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 noundef %27) #5
  br label %exit

if.end43:                                         ; preds = %if.end38
  %call44 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %28 = load i32, i32* %ret, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 noundef %28) #5
  br label %exit

if.end48:                                         ; preds = %if.end43
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %reset

reset:                                            ; preds = %while.end142, %if.then139, %if.then114, %if.then70, %if.end48
  %29 = load i32, i32* %ret, align 4
  %cmp50 = icmp ne i32 %29, 0
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %reset
  %30 = load i32, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %30, i8* noundef %arraydecay, i64 noundef 100) #5
  %31 = load i32, i32* %ret, align 4
  %arraydecay52 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef %31, i8* noundef %arraydecay52) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %reset
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  %call55 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %call56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0)) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fflush(%struct._IO_FILE* noundef %32) #5
  %call58 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %listen_fd, %struct.mbedtls_net_context* noundef %client_fd, i8* noundef null, i64 noundef 0, i64* noundef null) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end54
  %33 = load i32, i32* %ret, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 noundef %33) #5
  br label %exit

if.end62:                                         ; preds = %if.end54
  %34 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %34, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #5
  %call63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #5
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fflush(%struct._IO_FILE* noundef %35) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %if.end62
  %call66 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %ret, align 4
  %cmp68 = icmp ne i32 %36, -26880
  br i1 %cmp68, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %while.body
  %37 = load i32, i32* %ret, align 4
  %cmp69 = icmp ne i32 %37, -26752
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %land.lhs.true
  %38 = load i32, i32* %ret, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 noundef %38) #5
  br label %reset

if.end72:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0)) #5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* noundef %39) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  store i32 1023, i32* %len, align 4
  %arraydecay76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call77 = call i8* @memset(i8* noundef %arraydecay76, i32 noundef 0, i64 noundef 1024) #7
  %arraydecay78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %40 = load i32, i32* %len, align 4
  %conv = sext i32 %40 to i64
  %call79 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay78, i64 noundef %conv) #5
  store i32 %call79, i32* %ret, align 4
  %41 = load i32, i32* %ret, align 4
  %cmp80 = icmp eq i32 %41, -26880
  br i1 %cmp80, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %42 = load i32, i32* %ret, align 4
  %cmp82 = icmp eq i32 %42, -26752
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.cond

if.end85:                                         ; preds = %lor.lhs.false
  %43 = load i32, i32* %ret, align 4
  %cmp86 = icmp sle i32 %43, 0
  br i1 %cmp86, label %if.then88, label %if.end93

if.then88:                                        ; preds = %if.end85
  %44 = load i32, i32* %ret, align 4
  switch i32 %44, label %sw.default [
    i32 -30848, label %sw.bb
    i32 -80, label %sw.bb90
  ]

sw.bb:                                            ; preds = %if.then88
  %call89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.then88
  %call91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0)) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then88
  %45 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %45
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 noundef %sub) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb90, %sw.bb
  br label %do.end

if.end93:                                         ; preds = %if.end85
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %len, align 4
  %47 = load i32, i32* %len, align 4
  %arraydecay94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 noundef %47, i8* noundef %arraydecay94) #5
  %48 = load i32, i32* %ret, align 4
  %cmp96 = icmp sgt i32 %48, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end93
  br label %do.end

if.end99:                                         ; preds = %if.end93
  br label %do.cond

do.cond:                                          ; preds = %if.end99, %if.then84
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then98, %sw.epilog
  %call100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0)) #5
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call101 = call i32 @fflush(%struct._IO_FILE* noundef %49) #5
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call103 = call i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %call104 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay102, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call103) #7
  store i32 %call104, i32* %len, align 4
  br label %while.cond105

while.cond105:                                    ; preds = %if.end124, %do.end
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %50 = load i32, i32* %len, align 4
  %conv107 = sext i32 %50 to i64
  %call108 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay106, i64 noundef %conv107) #5
  store i32 %call108, i32* %ret, align 4
  %cmp109 = icmp sle i32 %call108, 0
  br i1 %cmp109, label %while.body111, label %while.end125

while.body111:                                    ; preds = %while.cond105
  %51 = load i32, i32* %ret, align 4
  %cmp112 = icmp eq i32 %51, -80
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %while.body111
  %call115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %reset

if.end116:                                        ; preds = %while.body111
  %52 = load i32, i32* %ret, align 4
  %cmp117 = icmp ne i32 %52, -26880
  br i1 %cmp117, label %land.lhs.true119, label %if.end124

land.lhs.true119:                                 ; preds = %if.end116
  %53 = load i32, i32* %ret, align 4
  %cmp120 = icmp ne i32 %53, -26752
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %land.lhs.true119
  %54 = load i32, i32* %ret, align 4
  %call123 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0), i32 noundef %54) #5
  br label %exit

if.end124:                                        ; preds = %land.lhs.true119, %if.end116
  br label %while.cond105, !llvm.loop !6

while.end125:                                     ; preds = %while.cond105
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %len, align 4
  %56 = load i32, i32* %len, align 4
  %arraydecay126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 noundef %56, i8* noundef %arraydecay126) #5
  %call128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0)) #5
  br label %while.cond129

while.cond129:                                    ; preds = %if.end141, %while.end125
  %call130 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %while.body133, label %while.end142

while.body133:                                    ; preds = %while.cond129
  %57 = load i32, i32* %ret, align 4
  %cmp134 = icmp ne i32 %57, -26880
  br i1 %cmp134, label %land.lhs.true136, label %if.end141

land.lhs.true136:                                 ; preds = %while.body133
  %58 = load i32, i32* %ret, align 4
  %cmp137 = icmp ne i32 %58, -26752
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %land.lhs.true136
  %59 = load i32, i32* %ret, align 4
  %call140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 noundef %59) #5
  br label %reset

if.end141:                                        ; preds = %land.lhs.true136, %while.body133
  br label %while.cond129, !llvm.loop !7

while.end142:                                     ; preds = %while.cond129
  %call143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  store i32 0, i32* %ret, align 4
  br label %reset

exit:                                             ; preds = %if.then122, %if.then60, %if.then46, %if.then41, %if.then36, %if.then28, %if.then20, %if.then15, %if.then10, %if.then
  %60 = load i32, i32* %ret, align 4
  %cmp144 = icmp ne i32 %60, 0
  br i1 %cmp144, label %if.then146, label %if.end151

if.then146:                                       ; preds = %exit
  %61 = load i32, i32* %ret, align 4
  %arraydecay148 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf147, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %61, i8* noundef %arraydecay148, i64 noundef 100) #5
  %62 = load i32, i32* %ret, align 4
  %arraydecay149 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf147, i64 0, i64 0
  %call150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 noundef %62, i8* noundef %arraydecay149) #5
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %exit
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %srvcert) #5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef %cache) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %63 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %63) #8
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef, void (i8*, i32, i8*, i32, i8*)* noundef, i8* noundef) #1

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #5
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  ret void
}

declare dso_local void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef, i8* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef) #1

declare dso_local i32 @mbedtls_ssl_cache_get(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #1

declare dso_local i32 @mbedtls_ssl_cache_set(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

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
