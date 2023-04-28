; ModuleID = 'ssl/ssl_fork_server.c'
source_filename = "ssl/ssl_fork_server.c"
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

@.str = private unnamed_addr constant [16 x i8] c"ssl_fork_server\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\0A  . Initial seeding of the random generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c" failed!  mbedtls_ctr_drbg_seed returned %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  . Loading the server cert. and key...\00", align 1
@mbedtls_test_srv_crt = external dso_local global i8*, align 8
@mbedtls_test_srv_crt_len = external dso_local constant i64, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c" failed!  mbedtls_x509_crt_parse returned %d\0A\0A\00", align 1
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@mbedtls_test_srv_key = external dso_local global i8*, align 8
@mbedtls_test_srv_key_len = external dso_local constant i64, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c" failed!  mbedtls_pk_parse_key returned %d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  . Configuring SSL...\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c" failed!  mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c" failed!  mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"  . Bind on https://localhost:4433/ ...\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c" failed!  mbedtls_net_bind returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"  . Waiting for a remote connection ...\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c" failed!  mbedtls_net_accept returned %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"  . Forking to handle connection ...\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c" failed!  fork returned %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c" failed!  mbedtls_ctr_drbg_reseed returned %d\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"pid %d: Setting up the SSL data.\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"pid %d: SSL setup failed!  mbedtls_ctr_drbg_reseed returned %d\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"pid %d: SSL setup failed!  mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"pid %d: SSL setup ok\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"pid %d: Performing the SSL/TLS handshake.\0A\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"pid %d: SSL handshake failed!  mbedtls_ssl_handshake returned %d\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"pid %d: SSL handshake ok\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"pid %d: Start reading from client.\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"pid %d: connection was closed gracefully\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"pid %d: connection was reset by peer\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"pid %d: mbedtls_ssl_read returned %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"pid %d: %d bytes read\0A\0A%s\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"pid %d: Start writing to client.\0A\00", align 1
@.str.33 = private unnamed_addr constant [116 x i8] c"HTTP/1.0 200 OK\0D\0AContent-Type: text/html\0D\0A\0D\0A<h2>mbed TLS Test Server</h2>\0D\0A<p>Successful connection using: %s</p>\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"pid %d: Write failed!  peer closed the connection\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"pid %d: Write failed!  mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"pid %d: %d bytes written\0A\0A%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %cnt = alloca i32, align 4
  %pid = alloca i32, align 4
  %exit_code = alloca i32, align 4
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
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 0, i32* %cnt, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %srvcert) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %call = call void (i32)* @signal(i32 noundef 17, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #6
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  %1 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %2 = load i8*, i8** %pers, align 8
  %3 = load i8*, i8** %pers, align 8
  %call3 = call i64 @strlen(i8* noundef %3) #7
  %call4 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %1, i8* noundef %2, i64 noundef %call3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %6 = load i8*, i8** @mbedtls_test_srv_crt, align 8
  %7 = load i64, i64* @mbedtls_test_srv_crt_len, align 8
  %call9 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef %6, i64 noundef %7) #5
  store i32 %call9, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 noundef %9) #5
  br label %exit

if.end13:                                         ; preds = %if.end
  %10 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call14 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %10) #5
  store i32 %call14, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %12 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 noundef %12) #5
  br label %exit

if.end18:                                         ; preds = %if.end13
  %13 = load i8*, i8** @mbedtls_test_srv_key, align 8
  %14 = load i64, i64* @mbedtls_test_srv_key_len, align 8
  %15 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call19 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %13, i64 noundef %14, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %15) #5
  store i32 %call19, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp20 = icmp ne i32 %16, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %17 = load i32, i32* %ret, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 noundef %17) #5
  br label %exit

if.end23:                                         ; preds = %if.end18
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fflush(%struct._IO_FILE* noundef %18) #5
  %call27 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  %19 = load i32, i32* %ret, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 noundef %19) #5
  br label %exit

if.end31:                                         ; preds = %if.end23
  %20 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %20) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = bitcast %struct._IO_FILE* %21 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %22) #5
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %srvcert, i32 0, i32 29
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %23, %struct.mbedtls_x509_crl* noundef null) #5
  %call32 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert, %struct.mbedtls_pk_context* noundef %pkey) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %24 = load i32, i32* %ret, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 noundef %24) #5
  br label %exit

if.end36:                                         ; preds = %if.end31
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0)) #5
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call39 = call i32 @fflush(%struct._IO_FILE* noundef %25) #5
  %call40 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %listen_fd, i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end36
  %26 = load i32, i32* %ret, align 4
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 noundef %26) #5
  br label %exit

if.end44:                                         ; preds = %if.end36
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %while.body

while.body:                                       ; preds = %if.end44, %if.end67
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %call46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0)) #5
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fflush(%struct._IO_FILE* noundef %27) #5
  %call48 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %listen_fd, %struct.mbedtls_net_context* noundef %client_fd, i8* noundef null, i64 noundef 0, i64* noundef null) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %while.body
  %28 = load i32, i32* %ret, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 noundef %28) #5
  br label %exit

if.end52:                                         ; preds = %while.body
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0)) #5
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call54 = call i32 @fflush(%struct._IO_FILE* noundef %29) #5
  %call55 = call i32 @fork() #6
  store i32 %call55, i32* %pid, align 4
  %30 = load i32, i32* %pid, align 4
  %cmp56 = icmp slt i32 %30, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end52
  %31 = load i32, i32* %pid, align 4
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 noundef %31) #5
  br label %exit

if.end59:                                         ; preds = %if.end52
  %32 = load i32, i32* %pid, align 4
  %cmp60 = icmp ne i32 %32, 0
  br i1 %cmp60, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.end59
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @mbedtls_net_close(%struct.mbedtls_net_context* noundef %client_fd) #5
  %call63 = call i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef 6) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then61
  %33 = load i32, i32* %ret, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 noundef %33) #5
  br label %exit

if.end67:                                         ; preds = %if.then61
  br label %while.body

if.end68:                                         ; preds = %if.end59
  call void @mbedtls_net_close(%struct.mbedtls_net_context* noundef %listen_fd) #5
  %call69 = call i32 @getpid() #6
  store i32 %call69, i32* %pid, align 4
  %34 = load i32, i32* %pid, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %34) #5
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call71 = call i32 @fflush(%struct._IO_FILE* noundef %35) #5
  %call72 = call i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 noundef 5) #5
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end68
  %36 = load i32, i32* %pid, align 4
  %37 = load i32, i32* %ret, align 4
  %call75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 noundef %36, i32 noundef %37) #5
  br label %exit

if.end76:                                         ; preds = %if.end68
  %call77 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  store i32 %call77, i32* %ret, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  %38 = load i32, i32* %pid, align 4
  %39 = load i32, i32* %ret, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0), i32 noundef %38, i32 noundef %39) #5
  br label %exit

if.end81:                                         ; preds = %if.end76
  %40 = bitcast %struct.mbedtls_net_context* %client_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %40, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #5
  %41 = load i32, i32* %pid, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 noundef %41) #5
  %42 = load i32, i32* %pid, align 4
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 noundef %42) #5
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fflush(%struct._IO_FILE* noundef %43) #5
  br label %while.cond85

while.cond85:                                     ; preds = %if.end93, %if.end81
  %call86 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %while.body88, label %while.end

while.body88:                                     ; preds = %while.cond85
  %44 = load i32, i32* %ret, align 4
  %cmp89 = icmp ne i32 %44, -26880
  br i1 %cmp89, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %while.body88
  %45 = load i32, i32* %ret, align 4
  %cmp90 = icmp ne i32 %45, -26752
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %land.lhs.true
  %46 = load i32, i32* %pid, align 4
  %47 = load i32, i32* %ret, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0), i32 noundef %46, i32 noundef %47) #5
  br label %exit

if.end93:                                         ; preds = %land.lhs.true, %while.body88
  br label %while.cond85, !llvm.loop !4

while.end:                                        ; preds = %while.cond85
  %48 = load i32, i32* %pid, align 4
  %call94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 noundef %48) #5
  %49 = load i32, i32* %pid, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 noundef %49) #5
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call96 = call i32 @fflush(%struct._IO_FILE* noundef %50) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  store i32 1023, i32* %len, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call97 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #6
  %arraydecay98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %51 = load i32, i32* %len, align 4
  %conv = sext i32 %51 to i64
  %call99 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay98, i64 noundef %conv) #5
  store i32 %call99, i32* %ret, align 4
  %52 = load i32, i32* %ret, align 4
  %cmp100 = icmp eq i32 %52, -26880
  br i1 %cmp100, label %if.then104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %53 = load i32, i32* %ret, align 4
  %cmp102 = icmp eq i32 %53, -26752
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %lor.lhs.false, %do.body
  br label %do.cond

if.end105:                                        ; preds = %lor.lhs.false
  %54 = load i32, i32* %ret, align 4
  %cmp106 = icmp sle i32 %54, 0
  br i1 %cmp106, label %if.then108, label %if.end113

if.then108:                                       ; preds = %if.end105
  %55 = load i32, i32* %ret, align 4
  switch i32 %55, label %sw.default [
    i32 -30848, label %sw.bb
    i32 -80, label %sw.bb110
  ]

sw.bb:                                            ; preds = %if.then108
  %56 = load i32, i32* %pid, align 4
  %call109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i32 noundef %56) #5
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.then108
  %57 = load i32, i32* %pid, align 4
  %call111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i32 noundef %57) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then108
  %58 = load i32, i32* %pid, align 4
  %59 = load i32, i32* %ret, align 4
  %call112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i32 noundef %58, i32 noundef %59) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb110, %sw.bb
  br label %do.end

if.end113:                                        ; preds = %if.end105
  %60 = load i32, i32* %ret, align 4
  store i32 %60, i32* %len, align 4
  %61 = load i32, i32* %pid, align 4
  %62 = load i32, i32* %len, align 4
  %arraydecay114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i32 noundef %61, i32 noundef %62, i8* noundef %arraydecay114) #5
  %63 = load i32, i32* %ret, align 4
  %cmp116 = icmp sgt i32 %63, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end113
  br label %do.end

if.end119:                                        ; preds = %if.end113
  br label %do.cond

do.cond:                                          ; preds = %if.end119, %if.then104
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then118, %sw.epilog
  %64 = load i32, i32* %pid, align 4
  %call120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 noundef %64) #5
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call121 = call i32 @fflush(%struct._IO_FILE* noundef %65) #5
  %arraydecay122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call123 = call i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %call124 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay122, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call123) #6
  store i32 %call124, i32* %len, align 4
  br label %while.cond125

while.cond125:                                    ; preds = %while.end149, %do.end
  %66 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %cnt, align 4
  %cmp126 = icmp slt i32 %66, 100
  br i1 %cmp126, label %while.body128, label %while.end152

while.body128:                                    ; preds = %while.cond125
  br label %while.cond129

while.cond129:                                    ; preds = %if.end148, %while.body128
  %arraydecay130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %67 = load i32, i32* %len, align 4
  %conv131 = sext i32 %67 to i64
  %call132 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay130, i64 noundef %conv131) #5
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp sle i32 %call132, 0
  br i1 %cmp133, label %while.body135, label %while.end149

while.body135:                                    ; preds = %while.cond129
  %68 = load i32, i32* %ret, align 4
  %cmp136 = icmp eq i32 %68, -80
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %while.body135
  %69 = load i32, i32* %pid, align 4
  %call139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0), i32 noundef %69) #5
  br label %exit

if.end140:                                        ; preds = %while.body135
  %70 = load i32, i32* %ret, align 4
  %cmp141 = icmp ne i32 %70, -26880
  br i1 %cmp141, label %land.lhs.true143, label %if.end148

land.lhs.true143:                                 ; preds = %if.end140
  %71 = load i32, i32* %ret, align 4
  %cmp144 = icmp ne i32 %71, -26752
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %land.lhs.true143
  %72 = load i32, i32* %pid, align 4
  %73 = load i32, i32* %ret, align 4
  %call147 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i64 0, i64 0), i32 noundef %72, i32 noundef %73) #5
  br label %exit

if.end148:                                        ; preds = %land.lhs.true143, %if.end140
  br label %while.cond129, !llvm.loop !6

while.end149:                                     ; preds = %while.cond129
  %74 = load i32, i32* %ret, align 4
  store i32 %74, i32* %len, align 4
  %75 = load i32, i32* %pid, align 4
  %76 = load i32, i32* %len, align 4
  %arraydecay150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 noundef %75, i32 noundef %76, i8* noundef %arraydecay150) #5
  call void @mbedtls_net_usleep(i64 noundef 1000000) #5
  br label %while.cond125, !llvm.loop !7

while.end152:                                     ; preds = %while.cond125
  %call153 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  br label %exit

exit:                                             ; preds = %while.end152, %if.then146, %if.then138, %if.then91, %if.then79, %if.then74, %if.then65, %if.then57, %if.then50, %if.then42, %if.then34, %if.then29, %if.then21, %if.then16, %if.then11, %if.then
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %srvcert) #5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %77 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %77) #8
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #5
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  ret void
}

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fork() #2

declare dso_local void @mbedtls_net_close(%struct.mbedtls_net_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_reseed(%struct.mbedtls_ctr_drbg_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @getpid() #2

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_net_usleep(i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
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
