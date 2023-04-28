; ModuleID = 'ssl/dtls_client.c'
source_filename = "ssl/dtls_client.c"
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
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }

@.str = private unnamed_addr constant [12 x i8] c"dtls_client\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned -0x%x\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  . Connecting to udp/%s/%s...\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"  . Setting up the DTLS structure...\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_set_hostname returned %d\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"  . Performing the DTLS handshake...\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"  . Verifying peer X.509 certificate...\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"  > Write to server:\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Echo this\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c" %d bytes written\0A\0A%s\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"  < Read from server:\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c" timeout\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c" connection was closed gracefully\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c" mbedtls_ssl_read returned -0x%x\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c" %d bytes read\0A\0A%s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"  . Closing the connection...\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Last error was: %d - %s\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %flags = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %pers = alloca i8*, align 8
  %retry_left = alloca i32, align 4
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %timer = alloca %struct.mbedtls_timing_delay_context, align 4
  %vrfy_buf = alloca [512 x i8], align 16
  %error_buf = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  store i32 5, i32* %retry_left, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @mbedtls_debug_set_threshold(i32 noundef 0) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %3 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %4 = load i8*, i8** %pers, align 8
  %5 = load i8*, i8** %pers, align 8
  %call2 = call i64 @strlen(i8* noundef %5) #6
  %call3 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %3, i8* noundef %4, i64 noundef %call2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  %8 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call8 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %8) #5
  store i32 %call8, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %10
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end12:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 noundef %11) #5
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* noundef %12) #5
  %call16 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 noundef 1) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  %13 = load i32, i32* %ret, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 noundef %13) #5
  br label %exit

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0)) #5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* noundef %14) #5
  %call24 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  %15 = load i32, i32* %ret, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 noundef %15) #5
  br label %exit

if.end28:                                         ; preds = %if.end20
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1) #5
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #5
  %16 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %16) #5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = bitcast %struct._IO_FILE* %17 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %18) #5
  call void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1000) #5
  %call29 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %19 = load i32, i32* %ret, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 noundef %19) #5
  br label %exit

if.end33:                                         ; preds = %if.end28
  %call34 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %20 = load i32, i32* %ret, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 noundef %20) #5
  br label %exit

if.end38:                                         ; preds = %if.end33
  %21 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %21, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef @mbedtls_net_recv_timeout) #5
  %22 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %22, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #5
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0)) #5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* noundef %23) #5
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end38
  %call42 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call42, i32* %ret, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load i32, i32* %ret, align 4
  %cmp43 = icmp eq i32 %24, -26880
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %25 = load i32, i32* %ret, align 4
  %cmp44 = icmp eq i32 %25, -26752
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %26 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %26, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %lor.end
  %27 = load i32, i32* %ret, align 4
  %cmp45 = icmp ne i32 %27, 0
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %do.end
  %28 = load i32, i32* %ret, align 4
  %sub47 = sub nsw i32 0, %28
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 noundef %sub47) #5
  br label %exit

if.end49:                                         ; preds = %do.end
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #5
  %call52 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call52, i32* %flags, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end49
  %call55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #5
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %29 = load i32, i32* %flags, align 4
  %call56 = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %29) #5
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %arraydecay57) #5
  br label %if.end60

if.else:                                          ; preds = %if.end49
  %call59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then54
  br label %send_request

send_request:                                     ; preds = %if.then101, %if.end60
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call62 = call i32 @fflush(%struct._IO_FILE* noundef %30) #5
  store i32 9, i32* %len, align 4
  br label %do.body63

do.body63:                                        ; preds = %lor.end71, %send_request
  %31 = load i32, i32* %len, align 4
  %conv = sext i32 %31 to i64
  %call64 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i64 noundef %conv) #5
  store i32 %call64, i32* %ret, align 4
  br label %do.cond65

do.cond65:                                        ; preds = %do.body63
  %32 = load i32, i32* %ret, align 4
  %cmp66 = icmp eq i32 %32, -26880
  br i1 %cmp66, label %lor.end71, label %lor.rhs68

lor.rhs68:                                        ; preds = %do.cond65
  %33 = load i32, i32* %ret, align 4
  %cmp69 = icmp eq i32 %33, -26752
  br label %lor.end71

lor.end71:                                        ; preds = %lor.rhs68, %do.cond65
  %34 = phi i1 [ true, %do.cond65 ], [ %cmp69, %lor.rhs68 ]
  br i1 %34, label %do.body63, label %do.end72, !llvm.loop !6

do.end72:                                         ; preds = %lor.end71
  %35 = load i32, i32* %ret, align 4
  %cmp73 = icmp slt i32 %35, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %do.end72
  %36 = load i32, i32* %ret, align 4
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 noundef %36) #5
  br label %exit

if.end77:                                         ; preds = %do.end72
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %len, align 4
  %38 = load i32, i32* %len, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 noundef %38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0)) #5
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0)) #5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call80 = call i32 @fflush(%struct._IO_FILE* noundef %39) #5
  store i32 1023, i32* %len, align 4
  %arraydecay81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call82 = call i8* @memset(i8* noundef %arraydecay81, i32 noundef 0, i64 noundef 1024) #7
  br label %do.body83

do.body83:                                        ; preds = %lor.end93, %if.end77
  %arraydecay84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %40 = load i32, i32* %len, align 4
  %conv85 = sext i32 %40 to i64
  %call86 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay84, i64 noundef %conv85) #5
  store i32 %call86, i32* %ret, align 4
  br label %do.cond87

do.cond87:                                        ; preds = %do.body83
  %41 = load i32, i32* %ret, align 4
  %cmp88 = icmp eq i32 %41, -26880
  br i1 %cmp88, label %lor.end93, label %lor.rhs90

lor.rhs90:                                        ; preds = %do.cond87
  %42 = load i32, i32* %ret, align 4
  %cmp91 = icmp eq i32 %42, -26752
  br label %lor.end93

lor.end93:                                        ; preds = %lor.rhs90, %do.cond87
  %43 = phi i1 [ true, %do.cond87 ], [ %cmp91, %lor.rhs90 ]
  br i1 %43, label %do.body83, label %do.end94, !llvm.loop !7

do.end94:                                         ; preds = %lor.end93
  %44 = load i32, i32* %ret, align 4
  %cmp95 = icmp sle i32 %44, 0
  br i1 %cmp95, label %if.then97, label %if.end107

if.then97:                                        ; preds = %do.end94
  %45 = load i32, i32* %ret, align 4
  switch i32 %45, label %sw.default [
    i32 -26624, label %sw.bb
    i32 -30848, label %sw.bb103
  ]

sw.bb:                                            ; preds = %if.then97
  %call98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)) #5
  %46 = load i32, i32* %retry_left, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %retry_left, align 4
  %cmp99 = icmp sgt i32 %46, 0
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %sw.bb
  br label %send_request

if.end102:                                        ; preds = %sw.bb
  br label %exit

sw.bb103:                                         ; preds = %if.then97
  %call104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0)) #5
  store i32 0, i32* %ret, align 4
  br label %close_notify

sw.default:                                       ; preds = %if.then97
  %47 = load i32, i32* %ret, align 4
  %sub105 = sub nsw i32 0, %47
  %call106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 noundef %sub105) #5
  br label %exit

if.end107:                                        ; preds = %do.end94
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %len, align 4
  %49 = load i32, i32* %len, align 4
  %arraydecay108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 noundef %49, i8* noundef %arraydecay108) #5
  br label %close_notify

close_notify:                                     ; preds = %if.end107, %sw.bb103
  %call110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %do.body111

do.body111:                                       ; preds = %do.cond113, %close_notify
  %call112 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call112, i32* %ret, align 4
  br label %do.cond113

do.cond113:                                       ; preds = %do.body111
  %50 = load i32, i32* %ret, align 4
  %cmp114 = icmp eq i32 %50, -26752
  br i1 %cmp114, label %do.body111, label %do.end116, !llvm.loop !8

do.end116:                                        ; preds = %do.cond113
  store i32 0, i32* %ret, align 4
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)) #5
  br label %exit

exit:                                             ; preds = %do.end116, %sw.default, %if.end102, %if.then75, %if.then46, %if.then36, %if.then31, %if.then26, %if.then18, %if.then10, %if.then
  %51 = load i32, i32* %ret, align 4
  %cmp118 = icmp ne i32 %51, 0
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %exit
  %52 = load i32, i32* %ret, align 4
  %arraydecay121 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %52, i8* noundef %arraydecay121, i64 noundef 100) #5
  %53 = load i32, i32* %ret, align 4
  %arraydecay122 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call123 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 noundef %53, i8* noundef %arraydecay122) #5
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %exit
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %54 = load i32, i32* %ret, align 4
  %cmp125 = icmp slt i32 %54, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  store i32 1, i32* %ret, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124
  %55 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %55) #8
  unreachable
}

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #1

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #5
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  ret void
}

declare dso_local void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv_timeout(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #1

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

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
!8 = distinct !{!8, !5}
