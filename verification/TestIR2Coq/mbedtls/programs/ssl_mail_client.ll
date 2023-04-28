; ModuleID = 'ssl/ssl_mail_client.c'
source_filename = "ssl/ssl_mail_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i32] }
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

@.str = private unnamed_addr constant [16 x i8] c"ssl_mail_client\00", align 1
@.str.1 = private unnamed_addr constant [696 x i8] c"\0A usage: ssl_mail_client param=<>...\0A\0A acceptable parameters:\0A    server_name=%%s      default: localhost\0A    server_port=%%d      default: 465\0A    debug_level=%%d      default: 0 (disabled)\0A    mode=%%d             default: 0 (SSL/TLS) (1 for STARTTLS)\0A    authentication=%%d   default: 0 (disabled)\0A    user_name=%%s        default: \22user\22\0A    user_pwd=%%s         default: \22password\22\0A    mail_from=%%s        default: \22\22\0A    mail_to=%%s          default: \22\22\0A    ca_file=%%s          default: \22\22 (pre-loaded)\0A    crt_file=%%s         default: \22\22 (pre-loaded)\0A    key_file=%%s         default: \22\22 (pre-loaded)\0A    force_ciphersuite=<name>    default: all enabled\0A acceptable ciphersuite names:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"465\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"authentication\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"user_name\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"user_pwd\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"mail_from\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"mail_to\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ca_file\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"crt_file\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"key_file\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"force_ciphersuite\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@.str.26 = private unnamed_addr constant [50 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned %d\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"  . Loading the client cert. and key...\00", align 1
@mbedtls_test_cli_crt = external dso_local global i8*, align 8
@mbedtls_test_cli_crt_len = external dso_local constant i64, align 8
@mbedtls_test_cli_key = external dso_local global i8*, align 8
@mbedtls_test_cli_key_len = external dso_local constant i64, align 8
@.str.29 = private unnamed_addr constant [48 x i8] c" failed\0A  !  mbedtls_pk_parse_key returned %d\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"  . Connecting to tcp/%s/%s...\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"  . Setting up the SSL/TLS structure...\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_set_hostname returned %d\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"  > Get header from server:\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c" failed\0A  ! server responded with %d\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"  > Write EHLO to server:\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"EHLO %s\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"  > Write STARTTLS to server:\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"STARTTLS\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"  > Write AUTH LOGIN to server:\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"AUTH LOGIN\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"  > Write username to server: %s\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_base64_encode returned %d\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"  > Write password to server: %s\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"  > Write MAIL FROM to server:\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"MAIL FROM:<%s>\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"  > Write RCPT TO to server:\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"RCPT TO:<%s>\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"  > Write DATA to server:\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"DATA\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"  > Write content to server:\00", align 1
@.str.56 = private unnamed_addr constant [117 x i8] c"From: %s\0D\0ASubject: mbed TLS Test mail\0D\0A\0D\0AThis is a simple test mail from the mbed TLS mail client example.\0D\0A\0D\0AEnjoy!\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"\0D\0A.\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"  . Performing the SSL/TLS handshake...\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned %d: %s\0A\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c" ok\0A    [ Ciphersuite is %s ]\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"  . Verifying peer X.509 certificate...\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"  . Peer certificate information    ...\0A\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"failed\0A  ! mbedtls_ssl_read returned %d\0A\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_send returned %d\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"failed\0A  ! mbedtls_net_recv returned %d\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %base = alloca [1024 x i8], align 16
  %buf = alloca [1026 x i8], align 16
  %hostname = alloca [32 x i8], align 16
  %pers = alloca i8*, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %clicert = alloca %struct.mbedtls_x509_crt, align 8
  %pkey = alloca %struct.mbedtls_pk_context, align 8
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %list = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  %0 = bitcast [1026 x i8]* %buf to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 1026) #6
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %clicert) #5
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else83, %if.then81, %if.then45, %if.then35, %if.then25, %if.then9, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([696 x i8], [696 x i8]* @.str.1, i64 0, i64 0)) #5
  %call2 = call i32* @mbedtls_ssl_list_ciphersuites() #5
  store i32* %call2, i32** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %usage
  %2 = load i32*, i32** %list, align 8
  %3 = load i32, i32* %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32*, i32** %list, align 8
  %5 = load i32, i32* %4, align 4
  %call3 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %5) #5
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call3) #5
  %6 = load i32*, i32** %list, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %list, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  store i8* %11, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %call7 = call i8* @strchr(i8* noundef %12, i32 noundef 61) #7
  store i8* %call7, i8** %q, align 8
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %usage

if.end10:                                         ; preds = %for.body
  %13 = load i8*, i8** %q, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %q, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %p, align 8
  %call12 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %15 = load i8*, i8** %q, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end96

if.else:                                          ; preds = %if.end10
  %16 = load i8*, i8** %p, align 8
  %call15 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %17 = load i8*, i8** %q, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end95

if.else18:                                        ; preds = %if.else
  %18 = load i8*, i8** %p, align 8
  %call19 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else27

if.then21:                                        ; preds = %if.else18
  %19 = load i8*, i8** %q, align 8
  %call22 = call i32 @atoi(i8* noundef %19) #7
  store i32 %call22, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %21 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp24 = icmp sgt i32 %21, 65535
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false, %if.then21
  br label %usage

if.end26:                                         ; preds = %lor.lhs.false
  br label %if.end94

if.else27:                                        ; preds = %if.else18
  %22 = load i8*, i8** %p, align 8
  %call28 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.else27
  %23 = load i8*, i8** %q, align 8
  %call31 = call i32 @atoi(i8* noundef %23) #7
  store i32 %call31, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp32 = icmp slt i32 %24, 0
  br i1 %cmp32, label %if.then35, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then30
  %25 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp34 = icmp sgt i32 %25, 1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false33, %if.then30
  br label %usage

if.end36:                                         ; preds = %lor.lhs.false33
  br label %if.end93

if.else37:                                        ; preds = %if.else27
  %26 = load i8*, i8** %p, align 8
  %call38 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.else47

if.then40:                                        ; preds = %if.else37
  %27 = load i8*, i8** %q, align 8
  %call41 = call i32 @atoi(i8* noundef %27) #7
  store i32 %call41, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp42 = icmp slt i32 %28, 0
  br i1 %cmp42, label %if.then45, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.then40
  %29 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp44 = icmp sgt i32 %29, 1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false43, %if.then40
  br label %usage

if.end46:                                         ; preds = %lor.lhs.false43
  br label %if.end92

if.else47:                                        ; preds = %if.else37
  %30 = load i8*, i8** %p, align 8
  %call48 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #7
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else47
  %31 = load i8*, i8** %q, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end91

if.else51:                                        ; preds = %if.else47
  %32 = load i8*, i8** %p, align 8
  %call52 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else51
  %33 = load i8*, i8** %q, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  br label %if.end90

if.else55:                                        ; preds = %if.else51
  %34 = load i8*, i8** %p, align 8
  %call56 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #7
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else55
  %35 = load i8*, i8** %q, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end89

if.else59:                                        ; preds = %if.else55
  %36 = load i8*, i8** %p, align 8
  %call60 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else59
  %37 = load i8*, i8** %q, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  br label %if.end88

if.else63:                                        ; preds = %if.else59
  %38 = load i8*, i8** %p, align 8
  %call64 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #7
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.else63
  %39 = load i8*, i8** %q, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  br label %if.end87

if.else67:                                        ; preds = %if.else63
  %40 = load i8*, i8** %p, align 8
  %call68 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.else67
  %41 = load i8*, i8** %q, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  br label %if.end86

if.else71:                                        ; preds = %if.else67
  %42 = load i8*, i8** %p, align 8
  %call72 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #7
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else71
  %43 = load i8*, i8** %q, align 8
  store i8* %43, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  br label %if.end85

if.else75:                                        ; preds = %if.else71
  %44 = load i8*, i8** %p, align 8
  %call76 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #7
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.else83

if.then78:                                        ; preds = %if.else75
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0), align 8
  %45 = load i8*, i8** %q, align 8
  %call79 = call i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef %45) #5
  store i32 %call79, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0), align 8
  %cmp80 = icmp sle i32 %46, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then78
  br label %usage

if.end82:                                         ; preds = %if.then78
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 1), align 4
  br label %if.end84

if.else83:                                        ; preds = %if.else75
  br label %usage

if.end84:                                         ; preds = %if.end82
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then74
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then70
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then66
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then62
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then58
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then54
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then50
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end46
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end36
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end26
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then17
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end96
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0)) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call98 = call i32 @fflush(%struct._IO_FILE* noundef %48) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %49 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %50 = load i8*, i8** %pers, align 8
  %51 = load i8*, i8** %pers, align 8
  %call99 = call i64 @strlen(i8* noundef %51) #7
  %call100 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %49, i8* noundef %50, i64 noundef %call99) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.end
  %52 = load i32, i32* %ret, align 4
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i32 noundef %52) #5
  br label %exit

if.end104:                                        ; preds = %for.end
  %call105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #5
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call107 = call i32 @fflush(%struct._IO_FILE* noundef %53) #5
  %54 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call108 = call i64 @strlen(i8* noundef %54) #7
  %tobool109 = icmp ne i64 %call108, 0
  br i1 %tobool109, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.end104
  %55 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call111 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %55) #5
  store i32 %call111, i32* %ret, align 4
  br label %if.end114

if.else112:                                       ; preds = %if.end104
  %56 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call113 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %56) #5
  store i32 %call113, i32* %ret, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then110
  %57 = load i32, i32* %ret, align 4
  %cmp115 = icmp slt i32 %57, 0
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end114
  %58 = load i32, i32* %ret, align 4
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 noundef %58) #5
  br label %exit

if.end118:                                        ; preds = %if.end114
  %59 = load i32, i32* %ret, align 4
  %call119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 noundef %59) #5
  %call120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #5
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call121 = call i32 @fflush(%struct._IO_FILE* noundef %60) #5
  %61 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call122 = call i64 @strlen(i8* noundef %61) #7
  %tobool123 = icmp ne i64 %call122, 0
  br i1 %tobool123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.end118
  %62 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call125 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %clicert, i8* noundef %62) #5
  store i32 %call125, i32* %ret, align 4
  br label %if.end128

if.else126:                                       ; preds = %if.end118
  %63 = load i8*, i8** @mbedtls_test_cli_crt, align 8
  %64 = load i64, i64* @mbedtls_test_cli_crt_len, align 8
  %call127 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %clicert, i8* noundef %63, i64 noundef %64) #5
  store i32 %call127, i32* %ret, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  %65 = load i32, i32* %ret, align 4
  %cmp129 = icmp ne i32 %65, 0
  br i1 %cmp129, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end128
  %66 = load i32, i32* %ret, align 4
  %call131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 noundef %66) #5
  br label %exit

if.end132:                                        ; preds = %if.end128
  %67 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call133 = call i64 @strlen(i8* noundef %67) #7
  %tobool134 = icmp ne i64 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.end132
  %68 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %69 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call136 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %68, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %69) #5
  store i32 %call136, i32* %ret, align 4
  br label %if.end139

if.else137:                                       ; preds = %if.end132
  %70 = load i8*, i8** @mbedtls_test_cli_key, align 8
  %71 = load i64, i64* @mbedtls_test_cli_key_len, align 8
  %72 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call138 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %70, i64 noundef %71, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %72) #5
  store i32 %call138, i32* %ret, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then135
  %73 = load i32, i32* %ret, align 4
  %cmp140 = icmp ne i32 %73, 0
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end139
  %74 = load i32, i32* %ret, align 4
  %call142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i32 noundef %74) #5
  br label %exit

if.end143:                                        ; preds = %if.end139
  %call144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %75 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %76 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i8* noundef %75, i8* noundef %76) #5
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call146 = call i32 @fflush(%struct._IO_FILE* noundef %77) #5
  %78 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %79 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call147 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %78, i8* noundef %79, i32 noundef 0) #5
  store i32 %call147, i32* %ret, align 4
  %cmp148 = icmp ne i32 %call147, 0
  br i1 %cmp148, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end143
  %80 = load i32, i32* %ret, align 4
  %call150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i32 noundef %80) #5
  br label %exit

if.end151:                                        ; preds = %if.end143
  %call152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call153 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0)) #5
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call154 = call i32 @fflush(%struct._IO_FILE* noundef %81) #5
  %call155 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  store i32 %call155, i32* %ret, align 4
  %cmp156 = icmp ne i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.end151
  %82 = load i32, i32* %ret, align 4
  %call158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i64 0, i64 0), i32 noundef %82) #5
  br label %exit

if.end159:                                        ; preds = %if.end151
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1) #5
  %83 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %83) #5
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %85 = bitcast %struct._IO_FILE* %84 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %85) #5
  %86 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0), align 8
  %cmp160 = icmp ne i32 %86, 0
  br i1 %cmp160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end159
  call void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12, i64 0)) #5
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end159
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #5
  %call163 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %clicert, %struct.mbedtls_pk_context* noundef %pkey) #5
  store i32 %call163, i32* %ret, align 4
  %cmp164 = icmp ne i32 %call163, 0
  br i1 %cmp164, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end162
  %87 = load i32, i32* %ret, align 4
  %call166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0), i32 noundef %87) #5
  br label %exit

if.end167:                                        ; preds = %if.end162
  %call168 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  store i32 %call168, i32* %ret, align 4
  %cmp169 = icmp ne i32 %call168, 0
  br i1 %cmp169, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.end167
  %88 = load i32, i32* %ret, align 4
  %call171 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0), i32 noundef %88) #5
  br label %exit

if.end172:                                        ; preds = %if.end167
  %89 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call173 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %89) #5
  store i32 %call173, i32* %ret, align 4
  %cmp174 = icmp ne i32 %call173, 0
  br i1 %cmp174, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end172
  %90 = load i32, i32* %ret, align 4
  %call176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 noundef %90) #5
  br label %exit

if.end177:                                        ; preds = %if.end172
  %91 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %91, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #5
  %call178 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %92 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp179 = icmp eq i32 %92, 0
  br i1 %cmp179, label %if.then180, label %if.else212

if.then180:                                       ; preds = %if.end177
  %call181 = call i32 @do_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %cmp182 = icmp ne i32 %call181, 0
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.then180
  br label %exit

if.end184:                                        ; preds = %if.then180
  %call185 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #5
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call186 = call i32 @fflush(%struct._IO_FILE* noundef %93) #5
  %arraydecay = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call187 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay, i64 noundef 0) #5
  store i32 %call187, i32* %ret, align 4
  %94 = load i32, i32* %ret, align 4
  %cmp188 = icmp slt i32 %94, 200
  br i1 %cmp188, label %if.then191, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %if.end184
  %95 = load i32, i32* %ret, align 4
  %cmp190 = icmp sgt i32 %95, 299
  br i1 %cmp190, label %if.then191, label %if.end193

if.then191:                                       ; preds = %lor.lhs.false189, %if.end184
  %96 = load i32, i32* %ret, align 4
  %call192 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %96) #5
  br label %exit

if.end193:                                        ; preds = %lor.lhs.false189
  %call194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)) #5
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call196 = call i32 @fflush(%struct._IO_FILE* noundef %97) #5
  %arraydecay197 = getelementptr inbounds [32 x i8], [32 x i8]* %hostname, i64 0, i64 0
  %call198 = call i32 @gethostname(i8* noundef %arraydecay197, i64 noundef 32) #6
  %arraydecay199 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %arraydecay200 = getelementptr inbounds [32 x i8], [32 x i8]* %hostname, i64 0, i64 0
  %call201 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay199, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef %arraydecay200) #6
  store i32 %call201, i32* %len, align 4
  %arraydecay202 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %98 = load i32, i32* %len, align 4
  %conv = sext i32 %98 to i64
  %call203 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay202, i64 noundef %conv) #5
  store i32 %call203, i32* %ret, align 4
  %99 = load i32, i32* %ret, align 4
  %cmp204 = icmp slt i32 %99, 200
  br i1 %cmp204, label %if.then209, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %if.end193
  %100 = load i32, i32* %ret, align 4
  %cmp207 = icmp sgt i32 %100, 299
  br i1 %cmp207, label %if.then209, label %if.end211

if.then209:                                       ; preds = %lor.lhs.false206, %if.end193
  %101 = load i32, i32* %ret, align 4
  %call210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %101) #5
  br label %exit

if.end211:                                        ; preds = %lor.lhs.false206
  br label %if.end268

if.else212:                                       ; preds = %if.end177
  %call213 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #5
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call214 = call i32 @fflush(%struct._IO_FILE* noundef %102) #5
  %arraydecay215 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call216 = call i32 @write_and_get_response(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %arraydecay215, i64 noundef 0) #5
  store i32 %call216, i32* %ret, align 4
  %103 = load i32, i32* %ret, align 4
  %cmp217 = icmp slt i32 %103, 200
  br i1 %cmp217, label %if.then222, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %if.else212
  %104 = load i32, i32* %ret, align 4
  %cmp220 = icmp sgt i32 %104, 299
  br i1 %cmp220, label %if.then222, label %if.end224

if.then222:                                       ; preds = %lor.lhs.false219, %if.else212
  %105 = load i32, i32* %ret, align 4
  %call223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %105) #5
  br label %exit

if.end224:                                        ; preds = %lor.lhs.false219
  %call225 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call226 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)) #5
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call227 = call i32 @fflush(%struct._IO_FILE* noundef %106) #5
  %arraydecay228 = getelementptr inbounds [32 x i8], [32 x i8]* %hostname, i64 0, i64 0
  %call229 = call i32 @gethostname(i8* noundef %arraydecay228, i64 noundef 32) #6
  %arraydecay230 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %arraydecay231 = getelementptr inbounds [32 x i8], [32 x i8]* %hostname, i64 0, i64 0
  %call232 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay230, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef %arraydecay231) #6
  store i32 %call232, i32* %len, align 4
  %arraydecay233 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %107 = load i32, i32* %len, align 4
  %conv234 = sext i32 %107 to i64
  %call235 = call i32 @write_and_get_response(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %arraydecay233, i64 noundef %conv234) #5
  store i32 %call235, i32* %ret, align 4
  %108 = load i32, i32* %ret, align 4
  %cmp236 = icmp slt i32 %108, 200
  br i1 %cmp236, label %if.then241, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %if.end224
  %109 = load i32, i32* %ret, align 4
  %cmp239 = icmp sgt i32 %109, 299
  br i1 %cmp239, label %if.then241, label %if.end243

if.then241:                                       ; preds = %lor.lhs.false238, %if.end224
  %110 = load i32, i32* %ret, align 4
  %call242 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %110) #5
  br label %exit

if.end243:                                        ; preds = %lor.lhs.false238
  %call244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call245 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0)) #5
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call246 = call i32 @fflush(%struct._IO_FILE* noundef %111) #5
  %arraydecay247 = getelementptr inbounds [32 x i8], [32 x i8]* %hostname, i64 0, i64 0
  %call248 = call i32 @gethostname(i8* noundef %arraydecay247, i64 noundef 32) #6
  %arraydecay249 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call250 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay249, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0)) #6
  store i32 %call250, i32* %len, align 4
  %arraydecay251 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %112 = load i32, i32* %len, align 4
  %conv252 = sext i32 %112 to i64
  %call253 = call i32 @write_and_get_response(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %arraydecay251, i64 noundef %conv252) #5
  store i32 %call253, i32* %ret, align 4
  %113 = load i32, i32* %ret, align 4
  %cmp254 = icmp slt i32 %113, 200
  br i1 %cmp254, label %if.then259, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %if.end243
  %114 = load i32, i32* %ret, align 4
  %cmp257 = icmp sgt i32 %114, 299
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %lor.lhs.false256, %if.end243
  %115 = load i32, i32* %ret, align 4
  %call260 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %115) #5
  br label %exit

if.end261:                                        ; preds = %lor.lhs.false256
  %call262 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call263 = call i32 @do_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %cmp264 = icmp ne i32 %call263, 0
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.end261
  br label %exit

if.end267:                                        ; preds = %if.end261
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.end211
  %116 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %tobool269 = icmp ne i32 %116, 0
  br i1 %tobool269, label %if.then270, label %if.end337

if.then270:                                       ; preds = %if.end268
  %call271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0)) #5
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call272 = call i32 @fflush(%struct._IO_FILE* noundef %117) #5
  %arraydecay273 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call274 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay273, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0)) #6
  store i32 %call274, i32* %len, align 4
  %arraydecay275 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %118 = load i32, i32* %len, align 4
  %conv276 = sext i32 %118 to i64
  %call277 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay275, i64 noundef %conv276) #5
  store i32 %call277, i32* %ret, align 4
  %119 = load i32, i32* %ret, align 4
  %cmp278 = icmp slt i32 %119, 200
  br i1 %cmp278, label %if.then283, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %if.then270
  %120 = load i32, i32* %ret, align 4
  %cmp281 = icmp sgt i32 %120, 399
  br i1 %cmp281, label %if.then283, label %if.end285

if.then283:                                       ; preds = %lor.lhs.false280, %if.then270
  %121 = load i32, i32* %ret, align 4
  %call284 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %121) #5
  br label %exit

if.end285:                                        ; preds = %lor.lhs.false280
  %call286 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %122 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %call287 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0), i8* noundef %122) #5
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call288 = call i32 @fflush(%struct._IO_FILE* noundef %123) #5
  %arraydecay289 = getelementptr inbounds [1024 x i8], [1024 x i8]* %base, i64 0, i64 0
  %124 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %125 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %call290 = call i64 @strlen(i8* noundef %125) #7
  %call291 = call i32 @mbedtls_base64_encode(i8* noundef %arraydecay289, i64 noundef 1024, i64* noundef %n, i8* noundef %124, i64 noundef %call290) #5
  store i32 %call291, i32* %ret, align 4
  %126 = load i32, i32* %ret, align 4
  %cmp292 = icmp ne i32 %126, 0
  br i1 %cmp292, label %if.then294, label %if.end296

if.then294:                                       ; preds = %if.end285
  %127 = load i32, i32* %ret, align 4
  %call295 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i64 0, i64 0), i32 noundef %127) #5
  br label %exit

if.end296:                                        ; preds = %if.end285
  %arraydecay297 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %arraydecay298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %base, i64 0, i64 0
  %call299 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay297, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %arraydecay298) #6
  store i32 %call299, i32* %len, align 4
  %arraydecay300 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %128 = load i32, i32* %len, align 4
  %conv301 = sext i32 %128 to i64
  %call302 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay300, i64 noundef %conv301) #5
  store i32 %call302, i32* %ret, align 4
  %129 = load i32, i32* %ret, align 4
  %cmp303 = icmp slt i32 %129, 300
  br i1 %cmp303, label %if.then308, label %lor.lhs.false305

lor.lhs.false305:                                 ; preds = %if.end296
  %130 = load i32, i32* %ret, align 4
  %cmp306 = icmp sgt i32 %130, 399
  br i1 %cmp306, label %if.then308, label %if.end310

if.then308:                                       ; preds = %lor.lhs.false305, %if.end296
  %131 = load i32, i32* %ret, align 4
  %call309 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %131) #5
  br label %exit

if.end310:                                        ; preds = %lor.lhs.false305
  %call311 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %132 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %call312 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i8* noundef %132) #5
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call313 = call i32 @fflush(%struct._IO_FILE* noundef %133) #5
  %arraydecay314 = getelementptr inbounds [1024 x i8], [1024 x i8]* %base, i64 0, i64 0
  %134 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %135 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %call315 = call i64 @strlen(i8* noundef %135) #7
  %call316 = call i32 @mbedtls_base64_encode(i8* noundef %arraydecay314, i64 noundef 1024, i64* noundef %n, i8* noundef %134, i64 noundef %call315) #5
  store i32 %call316, i32* %ret, align 4
  %136 = load i32, i32* %ret, align 4
  %cmp317 = icmp ne i32 %136, 0
  br i1 %cmp317, label %if.then319, label %if.end321

if.then319:                                       ; preds = %if.end310
  %137 = load i32, i32* %ret, align 4
  %call320 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i64 0, i64 0), i32 noundef %137) #5
  br label %exit

if.end321:                                        ; preds = %if.end310
  %arraydecay322 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %arraydecay323 = getelementptr inbounds [1024 x i8], [1024 x i8]* %base, i64 0, i64 0
  %call324 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay322, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %arraydecay323) #6
  store i32 %call324, i32* %len, align 4
  %arraydecay325 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %138 = load i32, i32* %len, align 4
  %conv326 = sext i32 %138 to i64
  %call327 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay325, i64 noundef %conv326) #5
  store i32 %call327, i32* %ret, align 4
  %139 = load i32, i32* %ret, align 4
  %cmp328 = icmp slt i32 %139, 200
  br i1 %cmp328, label %if.then333, label %lor.lhs.false330

lor.lhs.false330:                                 ; preds = %if.end321
  %140 = load i32, i32* %ret, align 4
  %cmp331 = icmp sgt i32 %140, 399
  br i1 %cmp331, label %if.then333, label %if.end335

if.then333:                                       ; preds = %lor.lhs.false330, %if.end321
  %141 = load i32, i32* %ret, align 4
  %call334 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %141) #5
  br label %exit

if.end335:                                        ; preds = %lor.lhs.false330
  %call336 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %if.end337

if.end337:                                        ; preds = %if.end335, %if.end268
  %call338 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0)) #5
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call339 = call i32 @fflush(%struct._IO_FILE* noundef %142) #5
  %arraydecay340 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %143 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %call341 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay340, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* noundef %143) #6
  store i32 %call341, i32* %len, align 4
  %arraydecay342 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %144 = load i32, i32* %len, align 4
  %conv343 = sext i32 %144 to i64
  %call344 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay342, i64 noundef %conv343) #5
  store i32 %call344, i32* %ret, align 4
  %145 = load i32, i32* %ret, align 4
  %cmp345 = icmp slt i32 %145, 200
  br i1 %cmp345, label %if.then350, label %lor.lhs.false347

lor.lhs.false347:                                 ; preds = %if.end337
  %146 = load i32, i32* %ret, align 4
  %cmp348 = icmp sgt i32 %146, 299
  br i1 %cmp348, label %if.then350, label %if.end352

if.then350:                                       ; preds = %lor.lhs.false347, %if.end337
  %147 = load i32, i32* %ret, align 4
  %call351 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %147) #5
  br label %exit

if.end352:                                        ; preds = %lor.lhs.false347
  %call353 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call354 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #5
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call355 = call i32 @fflush(%struct._IO_FILE* noundef %148) #5
  %arraydecay356 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %149 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call357 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay356, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8* noundef %149) #6
  store i32 %call357, i32* %len, align 4
  %arraydecay358 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %150 = load i32, i32* %len, align 4
  %conv359 = sext i32 %150 to i64
  %call360 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay358, i64 noundef %conv359) #5
  store i32 %call360, i32* %ret, align 4
  %151 = load i32, i32* %ret, align 4
  %cmp361 = icmp slt i32 %151, 200
  br i1 %cmp361, label %if.then366, label %lor.lhs.false363

lor.lhs.false363:                                 ; preds = %if.end352
  %152 = load i32, i32* %ret, align 4
  %cmp364 = icmp sgt i32 %152, 299
  br i1 %cmp364, label %if.then366, label %if.end368

if.then366:                                       ; preds = %lor.lhs.false363, %if.end352
  %153 = load i32, i32* %ret, align 4
  %call367 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %153) #5
  br label %exit

if.end368:                                        ; preds = %lor.lhs.false363
  %call369 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call370 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0)) #5
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call371 = call i32 @fflush(%struct._IO_FILE* noundef %154) #5
  %arraydecay372 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call373 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay372, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #6
  store i32 %call373, i32* %len, align 4
  %arraydecay374 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %155 = load i32, i32* %len, align 4
  %conv375 = sext i32 %155 to i64
  %call376 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay374, i64 noundef %conv375) #5
  store i32 %call376, i32* %ret, align 4
  %156 = load i32, i32* %ret, align 4
  %cmp377 = icmp slt i32 %156, 300
  br i1 %cmp377, label %if.then382, label %lor.lhs.false379

lor.lhs.false379:                                 ; preds = %if.end368
  %157 = load i32, i32* %ret, align 4
  %cmp380 = icmp sgt i32 %157, 399
  br i1 %cmp380, label %if.then382, label %if.end384

if.then382:                                       ; preds = %lor.lhs.false379, %if.end368
  %158 = load i32, i32* %ret, align 4
  %call383 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %158) #5
  br label %exit

if.end384:                                        ; preds = %lor.lhs.false379
  %call385 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call386 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0)) #5
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call387 = call i32 @fflush(%struct._IO_FILE* noundef %159) #5
  %arraydecay388 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %160 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %call389 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay388, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.56, i64 0, i64 0), i8* noundef %160) #6
  store i32 %call389, i32* %len, align 4
  %arraydecay390 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %161 = load i32, i32* %len, align 4
  %conv391 = sext i32 %161 to i64
  %call392 = call i32 @write_ssl_data(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay390, i64 noundef %conv391) #5
  store i32 %call392, i32* %ret, align 4
  %arraydecay393 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %call394 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay393, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #6
  store i32 %call394, i32* %len, align 4
  %arraydecay395 = getelementptr inbounds [1026 x i8], [1026 x i8]* %buf, i64 0, i64 0
  %162 = load i32, i32* %len, align 4
  %conv396 = sext i32 %162 to i64
  %call397 = call i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay395, i64 noundef %conv396) #5
  store i32 %call397, i32* %ret, align 4
  %163 = load i32, i32* %ret, align 4
  %cmp398 = icmp slt i32 %163, 200
  br i1 %cmp398, label %if.then403, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %if.end384
  %164 = load i32, i32* %ret, align 4
  %cmp401 = icmp sgt i32 %164, 299
  br i1 %cmp401, label %if.then403, label %if.end405

if.then403:                                       ; preds = %lor.lhs.false400, %if.end384
  %165 = load i32, i32* %ret, align 4
  %call404 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 noundef %165) #5
  br label %exit

if.end405:                                        ; preds = %lor.lhs.false400
  %call406 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  %call407 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end405, %if.then403, %if.then382, %if.then366, %if.then350, %if.then333, %if.then319, %if.then308, %if.then294, %if.then283, %if.then266, %if.then259, %if.then241, %if.then222, %if.then209, %if.then191, %if.then183, %if.then175, %if.then170, %if.then165, %if.then157, %if.then149, %if.then141, %if.then130, %if.then116, %if.then102, %while.end
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %clicert) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %166 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %166) #8
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32* @mbedtls_ssl_list_ciphersuites() #1

declare dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #5
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  ret void
}

declare dso_local void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef, i32* noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %flags = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %vrfy_buf = alloca [512 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #6
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0)) #5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %1) #5
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %2, -26880
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, i32* %ret, align 4
  %cmp5 = icmp ne i32 %3, -26752
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %ret, align 4
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %4, i8* noundef %arraydecay6, i64 noundef 1024) #5
  %5 = load i32, i32* %ret, align 4
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0), i32 noundef %5, i8* noundef %arraydecay7) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef %6) #5
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i8* noundef %call9) #5
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0)) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call12 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %7) #5
  store i32 %call12, i32* %flags, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.end
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #5
  %arraydecay16 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %8 = load i32, i32* %flags, align 4
  %call17 = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %arraydecay16, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 noundef %8) #5
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef %arraydecay18) #5
  br label %if.end21

if.else:                                          ; preds = %while.end
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i64 0, i64 0)) #5
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call24 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef %9) #5
  %call25 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay23, i64 noundef 1023, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %call24) #5
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef %arraydecay26) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ssl_and_get_response(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %data = alloca [128 x i8], align 16
  %code = alloca [4 x i8], align 1
  %i = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %idx, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %0) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp sle i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %6, -26880
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %7, -26752
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i64 0, i64 0), i32 noundef %8) #5
  store i32 -1, i32* %retval, align 4
  br label %do.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  store i64 127, i64* %len.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %call5 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 128) #6
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay6 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %10 = load i64, i64* %len.addr, align 8
  %call7 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %9, i8* noundef %arraydecay6, i64 noundef %10) #5
  store i32 %call7, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp8 = icmp eq i32 %11, -26880
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %12 = load i32, i32* %ret, align 4
  %cmp9 = icmp eq i32 %12, -26752
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.cond

if.end11:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %13, -30848
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  store i32 -1, i32* %retval, align 4
  br label %do.end

if.end14:                                         ; preds = %if.end11
  %14 = load i32, i32* %ret, align 4
  %cmp15 = icmp sle i32 %14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %15 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i64 0, i64 0), i32 noundef %15) #5
  store i32 -1, i32* %retval, align 4
  br label %do.end

if.end18:                                         ; preds = %if.end14
  %arraydecay19 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %arraydecay19) #5
  %16 = load i32, i32* %ret, align 4
  %conv = sext i32 %16 to i64
  store i64 %conv, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %len.addr, align 8
  %cmp21 = icmp ult i64 %17, %18
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 %19
  %20 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv23, 10
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %for.body
  %21 = load i64, i64* %idx, align 8
  %cmp27 = icmp ult i64 %21, 4
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then26
  %22 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 %22
  %23 = load i8, i8* %arrayidx30, align 1
  %24 = load i64, i64* %idx, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %idx, align 8
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 %24
  store i8 %23, i8* %arrayidx31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then26
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %25 = load i64, i64* %idx, align 8
  %cmp34 = icmp eq i64 %25, 4
  br i1 %cmp34, label %land.lhs.true36, label %if.end55

land.lhs.true36:                                  ; preds = %if.end33
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %26 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %26 to i32
  %cmp39 = icmp sge i32 %conv38, 48
  br i1 %cmp39, label %land.lhs.true41, label %if.end55

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %27 to i32
  %cmp44 = icmp sle i32 %conv43, 57
  br i1 %cmp44, label %land.lhs.true46, label %if.end55

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 3
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %28 to i32
  %cmp49 = icmp eq i32 %conv48, 32
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %land.lhs.true46
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 3
  store i8 0, i8* %arrayidx52, align 1
  %arraydecay53 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %call54 = call i32 @atoi(i8* noundef %arraydecay53) #7
  store i32 %call54, i32* %retval, align 4
  br label %do.end

if.end55:                                         ; preds = %land.lhs.true46, %land.lhs.true41, %land.lhs.true36, %if.end33
  store i64 0, i64* %idx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.end32
  %29 = load i64, i64* %i, align 8
  %inc56 = add i64 %29, 1
  store i64 %inc56, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end, %if.then10
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %if.then13, %if.then16, %if.then51, %do.cond
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare dso_local i32 @gethostname(i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_and_get_response(%struct.mbedtls_net_context* noundef %sock_fd, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %sock_fd.addr = alloca %struct.mbedtls_net_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %data = alloca [128 x i8], align 16
  %code = alloca [4 x i8], align 1
  %i = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.mbedtls_net_context* %sock_fd, %struct.mbedtls_net_context** %sock_fd.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %idx, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %0) #5
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %sock_fd.addr, align 8
  %3 = bitcast %struct.mbedtls_net_context* %2 to i8*
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %call1 = call i32 @mbedtls_net_send(i8* noundef %3, i8* noundef %4, i64 noundef %5) #5
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %ret, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.71, i64 0, i64 0), i32 noundef %6) #5
  store i32 -1, i32* %retval, align 4
  br label %do.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  store i64 127, i64* %len.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %call3 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 128) #6
  %7 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %sock_fd.addr, align 8
  %8 = bitcast %struct.mbedtls_net_context* %7 to i8*
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %9 = load i64, i64* %len.addr, align 8
  %call5 = call i32 @mbedtls_net_recv(i8* noundef %8, i8* noundef %arraydecay4, i64 noundef %9) #5
  store i32 %call5, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp6 = icmp sle i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  %11 = load i32, i32* %ret, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i64 0, i64 0), i32 noundef %11) #5
  store i32 -1, i32* %retval, align 4
  br label %do.end

if.end9:                                          ; preds = %do.body
  %12 = load i64, i64* %len.addr, align 8
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 %12
  store i8 0, i8* %arrayidx, align 1
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 0
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %arraydecay10) #5
  %13 = load i32, i32* %ret, align 4
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %len.addr, align 8
  %cmp12 = icmp ult i64 %14, %15
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 %16
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %cmp16 = icmp ne i32 %conv15, 10
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %for.body
  %18 = load i64, i64* %idx, align 8
  %cmp19 = icmp ult i64 %18, 4
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then18
  %19 = load i64, i64* %i, align 8
  %arrayidx22 = getelementptr inbounds [128 x i8], [128 x i8]* %data, i64 0, i64 %19
  %20 = load i8, i8* %arrayidx22, align 1
  %21 = load i64, i64* %idx, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %idx, align 8
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 %21
  store i8 %20, i8* %arrayidx23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then18
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %22 = load i64, i64* %idx, align 8
  %cmp26 = icmp eq i64 %22, 4
  br i1 %cmp26, label %land.lhs.true28, label %if.end47

land.lhs.true28:                                  ; preds = %if.end25
  %arrayidx29 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp sge i32 %conv30, 48
  br i1 %cmp31, label %land.lhs.true33, label %if.end47

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %arrayidx34 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %24 to i32
  %cmp36 = icmp sle i32 %conv35, 57
  br i1 %cmp36, label %land.lhs.true38, label %if.end47

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 3
  %25 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %25 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %land.lhs.true38
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 3
  store i8 0, i8* %arrayidx44, align 1
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %code, i64 0, i64 0
  %call46 = call i32 @atoi(i8* noundef %arraydecay45) #7
  store i32 %call46, i32* %retval, align 4
  br label %do.end

if.end47:                                         ; preds = %land.lhs.true38, %land.lhs.true33, %land.lhs.true28, %if.end25
  store i64 0, i64* %idx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.end24
  %26 = load i64, i64* %i, align 8
  %inc48 = add i64 %26, 1
  store i64 %inc48, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %if.then7, %if.then43, %do.cond
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_base64_encode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ssl_data(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %0) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp sle i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %6, -26880
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %7, -26752
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %ret, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i64 0, i64 0), i32 noundef %8) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

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

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #1

declare dso_local %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
