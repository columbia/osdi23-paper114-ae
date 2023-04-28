; ModuleID = 'ssl/ssl_client1.c'
source_filename = "ssl/ssl_client1.c"
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

@.str = private unnamed_addr constant [12 x i8] c"ssl_client1\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned -0x%x\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  . Connecting to tcp/%s/%s...\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"  . Setting up the SSL/TLS structure...\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_set_hostname returned %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"  . Performing the SSL/TLS handshake...\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"  . Verifying peer X.509 certificate...\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"  > Write to server:\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c" %d bytes written\0A\0A%s\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"  < Read from server:\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"failed\0A  ! mbedtls_ssl_read returned %d\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"\0A\0AEOF\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c" %d bytes read\0A\0A%s\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Last error was: %d - %s\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %flags = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %vrfy_buf = alloca [512 x i8], align 16
  %error_buf = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_debug_set_threshold(i32 noundef 1) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
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
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %6 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call8 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %6) #5
  store i32 %call8, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp9 = icmp slt i32 %7, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 noundef %sub) #5
  br label %exit

if.end12:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 noundef %9) #5
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* noundef %10) #5
  %call16 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  %11 = load i32, i32* %ret, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 noundef %11) #5
  br label %exit

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* noundef %12) #5
  %call24 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  %13 = load i32, i32* %ret, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 noundef %13) #5
  br label %exit

if.end28:                                         ; preds = %if.end20
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1) #5
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #5
  %14 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %14) #5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = bitcast %struct._IO_FILE* %15 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %16) #5
  %call30 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %17 = load i32, i32* %ret, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 noundef %17) #5
  br label %exit

if.end34:                                         ; preds = %if.end28
  %call35 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %18 = load i32, i32* %ret, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 noundef %18) #5
  br label %exit

if.end39:                                         ; preds = %if.end34
  %19 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %19, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #5
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0)) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* noundef %20) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %if.end39
  %call42 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %ret, align 4
  %cmp44 = icmp ne i32 %21, -26880
  br i1 %cmp44, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %while.body
  %22 = load i32, i32* %ret, align 4
  %cmp45 = icmp ne i32 %22, -26752
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %ret, align 4
  %sub47 = sub nsw i32 0, %23
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i32 noundef %sub47) #5
  br label %exit

if.end49:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #5
  %call52 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 %call52, i32* %flags, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %while.end
  %call55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #5
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %24 = load i32, i32* %flags, align 4
  %call56 = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 noundef %24) #5
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef %arraydecay57) #5
  br label %if.end60

if.else:                                          ; preds = %while.end
  %call59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then54
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0)) #5
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call62 = call i32 @fflush(%struct._IO_FILE* noundef %25) #5
  %arraydecay63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call64 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay63, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0)) #7
  store i32 %call64, i32* %len, align 4
  br label %while.cond65

while.cond65:                                     ; preds = %if.end78, %if.end60
  %arraydecay66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %26 = load i32, i32* %len, align 4
  %conv = sext i32 %26 to i64
  %call67 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay66, i64 noundef %conv) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp sle i32 %call67, 0
  br i1 %cmp68, label %while.body70, label %while.end79

while.body70:                                     ; preds = %while.cond65
  %27 = load i32, i32* %ret, align 4
  %cmp71 = icmp ne i32 %27, -26880
  br i1 %cmp71, label %land.lhs.true73, label %if.end78

land.lhs.true73:                                  ; preds = %while.body70
  %28 = load i32, i32* %ret, align 4
  %cmp74 = icmp ne i32 %28, -26752
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true73
  %29 = load i32, i32* %ret, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 noundef %29) #5
  br label %exit

if.end78:                                         ; preds = %land.lhs.true73, %while.body70
  br label %while.cond65, !llvm.loop !6

while.end79:                                      ; preds = %while.cond65
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %len, align 4
  %31 = load i32, i32* %len, align 4
  %arraydecay80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 noundef %31, i8* noundef %arraydecay80) #5
  %call82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call83 = call i32 @fflush(%struct._IO_FILE* noundef %32) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end79
  store i32 1023, i32* %len, align 4
  %arraydecay84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call85 = call i8* @memset(i8* noundef %arraydecay84, i32 noundef 0, i64 noundef 1024) #7
  %arraydecay86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %33 = load i32, i32* %len, align 4
  %conv87 = sext i32 %33 to i64
  %call88 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay86, i64 noundef %conv87) #5
  store i32 %call88, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %cmp89 = icmp eq i32 %34, -26880
  br i1 %cmp89, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %35 = load i32, i32* %ret, align 4
  %cmp91 = icmp eq i32 %35, -26752
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.cond

if.end94:                                         ; preds = %lor.lhs.false
  %36 = load i32, i32* %ret, align 4
  %cmp95 = icmp eq i32 %36, -30848
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end94
  br label %do.end

if.end98:                                         ; preds = %if.end94
  %37 = load i32, i32* %ret, align 4
  %cmp99 = icmp slt i32 %37, 0
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end98
  %38 = load i32, i32* %ret, align 4
  %call102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 noundef %38) #5
  br label %do.end

if.end103:                                        ; preds = %if.end98
  %39 = load i32, i32* %ret, align 4
  %cmp104 = icmp eq i32 %39, 0
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end103
  %call107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %do.end

if.end108:                                        ; preds = %if.end103
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %len, align 4
  %41 = load i32, i32* %len, align 4
  %arraydecay109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 noundef %41, i8* noundef %arraydecay109) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end108, %if.then93
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then106, %if.then101, %if.then97
  %call111 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %do.end, %if.then76, %if.then46, %if.then37, %if.then32, %if.then26, %if.then18, %if.then10, %if.then
  %42 = load i32, i32* %exit_code, align 4
  %cmp112 = icmp ne i32 %42, 0
  br i1 %cmp112, label %if.then114, label %if.end118

if.then114:                                       ; preds = %exit
  %43 = load i32, i32* %ret, align 4
  %arraydecay115 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %43, i8* noundef %arraydecay115, i64 noundef 100) #5
  %44 = load i32, i32* %ret, align 4
  %arraydecay116 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 noundef %44, i8* noundef %arraydecay116) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %exit
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %45 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %45) #8
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #5
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  ret void
}

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

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
