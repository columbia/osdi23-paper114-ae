; ModuleID = 'x509/cert_app.c'
source_filename = "x509/cert_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
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

@.str = private unnamed_addr constant [9 x i8] c"cert_app\00", align 1
@.str.1 = private unnamed_addr constant [694 x i8] c"\0A usage: cert_app param=<>...\0A\0A acceptable parameters:\0A    mode=file|ssl       default: none\0A    filename=%%s         default: cert.crt\0A    ca_file=%%s          The single file containing the top-level CA(s) you fully trust\0A                        default: \22\22 (none)\0A    crl_file=%%s         The single CRL file you want to use\0A                        default: \22\22 (none)\0A    ca_path=%%s          The path containing the top-level CA(s) you fully trust\0A                        default: \22\22 (none) (overrides ca_file)\0A    server_name=%%s      default: localhost\0A    server_port=%%d      default: 4433\0A    debug_level=%%d      default: 0 (disabled)\0A    permissive=%%d       default: 0 (disabled)\0A\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"cert.crt\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ca_file\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"crl_file\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ca_path\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"permissive\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_path returned -0x%x\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_file returned -0x%x\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_x509_crl_parse returned -0x%x\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"\0A  . Loading the certificate(s) ...\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_file returned %d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c" failed\0A  !  mbedtls_x509_crt_parse failed to parse %d certificates\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"  . Peer certificate information    ...\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c" failed\0A  !  mbedtls_x509_crt_info returned %d\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"  . Verifying X.509 certificate...\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"  . SSL connection to tcp/%s/%s...\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned %d\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_setup returned %d\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_set_hostname returned %d\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned %d\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"\0AVerify requested for (Depth %d):\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"  This certificate has no flags\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"%s:%04d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %buf = alloca [1024 x i8], align 16
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %cacrl = alloca %struct.mbedtls_x509_crl, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flags = alloca i32, align 4
  %verify = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %pers = alloca i8*, align 8
  %crt = alloca %struct.mbedtls_x509_crt, align 8
  %cur = alloca %struct.mbedtls_x509_crt*, align 8
  %vrfy_buf = alloca [512 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i32 0, i32* %verify, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #4
  call void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef %cacrl) #4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else266, %if.else100, %if.then98, %if.then85, %if.else42, %if.then4, %if.then
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([694 x i8], [694 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %exit

if.end:                                           ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc110, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end112

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call2 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #5
  store i8* %call2, i8** %q, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %usage

if.end5:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %8 = load i8*, i8** %p, align 8
  %9 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i8*, i8** %q, align 8
  %cmp7 = icmp ult i8* %add.ptr, %10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %15 to i32
  %cmp13 = icmp sge i32 %conv, 65
  br i1 %cmp13, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.body8
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %16, i64 %idxprom15
  %18 = load i8*, i8** %arrayidx16, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 %idxprom17
  %20 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp sle i32 %conv19, 90
  br i1 %cmp20, label %if.then22, label %if.end29

if.then22:                                        ; preds = %land.lhs.true
  %21 = load i8**, i8*** %argv.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %21, i64 %idxprom23
  %23 = load i8*, i8** %arrayidx24, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 %idxprom25
  %25 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %25 to i32
  %or = or i32 %conv27, 32
  %conv28 = trunc i32 %or to i8
  store i8 %conv28, i8* %arrayidx26, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %land.lhs.true, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !4

for.end:                                          ; preds = %for.cond6
  %27 = load i8*, i8** %p, align 8
  %call30 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else45

if.then33:                                        ; preds = %for.end
  %28 = load i8*, i8** %q, align 8
  %call34 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then33
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end44

if.else:                                          ; preds = %if.then33
  %29 = load i8*, i8** %q, align 8
  %call38 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end43

if.else42:                                        ; preds = %if.else
  br label %usage

if.end43:                                         ; preds = %if.then41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then37
  br label %if.end109

if.else45:                                        ; preds = %for.end
  %30 = load i8*, i8** %p, align 8
  %call46 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #5
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else45
  %31 = load i8*, i8** %q, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end108

if.else50:                                        ; preds = %if.else45
  %32 = load i8*, i8** %p, align 8
  %call51 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #5
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else50
  %33 = load i8*, i8** %q, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end107

if.else55:                                        ; preds = %if.else50
  %34 = load i8*, i8** %p, align 8
  %call56 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else55
  %35 = load i8*, i8** %q, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end106

if.else60:                                        ; preds = %if.else55
  %36 = load i8*, i8** %p, align 8
  %call61 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else60
  %37 = load i8*, i8** %q, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end105

if.else65:                                        ; preds = %if.else60
  %38 = load i8*, i8** %p, align 8
  %call66 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #5
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else65
  %39 = load i8*, i8** %q, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end104

if.else70:                                        ; preds = %if.else65
  %40 = load i8*, i8** %p, align 8
  %call71 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #5
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else70
  %41 = load i8*, i8** %q, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  br label %if.end103

if.else75:                                        ; preds = %if.else70
  %42 = load i8*, i8** %p, align 8
  %call76 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #5
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.else75
  %43 = load i8*, i8** %q, align 8
  %call80 = call i32 @atoi(i8* noundef %43) #5
  store i32 %call80, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %cmp81 = icmp slt i32 %44, 0
  br i1 %cmp81, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then79
  %45 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %cmp83 = icmp sgt i32 %45, 65535
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false, %if.then79
  br label %usage

if.end86:                                         ; preds = %lor.lhs.false
  br label %if.end102

if.else87:                                        ; preds = %if.else75
  %46 = load i8*, i8** %p, align 8
  %call88 = call i32 @strcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #5
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.else100

if.then91:                                        ; preds = %if.else87
  %47 = load i8*, i8** %q, align 8
  %call92 = call i32 @atoi(i8* noundef %47) #5
  store i32 %call92, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  %cmp93 = icmp slt i32 %48, 0
  br i1 %cmp93, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.then91
  %49 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  %cmp96 = icmp sgt i32 %49, 1
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false95, %if.then91
  br label %usage

if.end99:                                         ; preds = %lor.lhs.false95
  br label %if.end101

if.else100:                                       ; preds = %if.else87
  br label %usage

if.end101:                                        ; preds = %if.end99
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end86
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then74
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then69
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then64
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then59
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then54
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then49
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end44
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %50 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %50, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end112:                                       ; preds = %for.cond
  %call113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call114 = call i32 @fflush(%struct._IO_FILE* noundef %51) #4
  %52 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %call115 = call i64 @strlen(i8* noundef %52) #5
  %tobool = icmp ne i64 %call115, 0
  br i1 %tobool, label %if.then116, label %if.else123

if.then116:                                       ; preds = %for.end112
  %53 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %call117 = call i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %53) #4
  store i32 %call117, i32* %ret, align 4
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then116
  %54 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %54
  %call121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 noundef %sub) #4
  br label %exit

if.end122:                                        ; preds = %if.then116
  store i32 1, i32* %verify, align 4
  br label %if.end135

if.else123:                                       ; preds = %for.end112
  %55 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %call124 = call i64 @strlen(i8* noundef %55) #5
  %tobool125 = icmp ne i64 %call124, 0
  br i1 %tobool125, label %if.then126, label %if.end134

if.then126:                                       ; preds = %if.else123
  %56 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %call127 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %56) #4
  store i32 %call127, i32* %ret, align 4
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.then126
  %57 = load i32, i32* %ret, align 4
  %sub131 = sub nsw i32 0, %57
  %call132 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 noundef %sub131) #4
  br label %exit

if.end133:                                        ; preds = %if.then126
  store i32 1, i32* %verify, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.else123
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end122
  %58 = load i32, i32* %ret, align 4
  %call136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef %58) #4
  %59 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call137 = call i64 @strlen(i8* noundef %59) #5
  %tobool138 = icmp ne i64 %call137, 0
  br i1 %tobool138, label %if.then139, label %if.end147

if.then139:                                       ; preds = %if.end135
  %60 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call140 = call i32 @mbedtls_x509_crl_parse_file(%struct.mbedtls_x509_crl* noundef %cacrl, i8* noundef %60) #4
  store i32 %call140, i32* %ret, align 4
  %cmp141 = icmp ne i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.then139
  %61 = load i32, i32* %ret, align 4
  %sub144 = sub nsw i32 0, %61
  %call145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 noundef %sub144) #4
  br label %exit

if.end146:                                        ; preds = %if.then139
  store i32 1, i32* %verify, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end135
  %62 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp148 = icmp eq i32 %62, 1
  br i1 %cmp148, label %if.then150, label %if.else195

if.then150:                                       ; preds = %if.end147
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %cur, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %crt) #4
  %call151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0)) #4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call152 = call i32 @fflush(%struct._IO_FILE* noundef %63) #4
  %64 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call153 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %crt, i8* noundef %64) #4
  store i32 %call153, i32* %ret, align 4
  %65 = load i32, i32* %ret, align 4
  %cmp154 = icmp slt i32 %65, 0
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.then150
  %66 = load i32, i32* %ret, align 4
  %call157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 noundef %66) #4
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #4
  br label %exit

if.end158:                                        ; preds = %if.then150
  %67 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  %cmp159 = icmp eq i32 %67, 0
  br i1 %cmp159, label %land.lhs.true161, label %if.end166

land.lhs.true161:                                 ; preds = %if.end158
  %68 = load i32, i32* %ret, align 4
  %cmp162 = icmp sgt i32 %68, 0
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %land.lhs.true161
  %69 = load i32, i32* %ret, align 4
  %call165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0), i32 noundef %69) #4
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #4
  br label %exit

if.end166:                                        ; preds = %land.lhs.true161, %if.end158
  %call167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end176, %if.end166
  %70 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %cmp168 = icmp ne %struct.mbedtls_x509_crt* %70, null
  br i1 %cmp168, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call170 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %71 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %call171 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay, i64 noundef 1023, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %71) #4
  store i32 %call171, i32* %ret, align 4
  %72 = load i32, i32* %ret, align 4
  %cmp172 = icmp eq i32 %72, -1
  br i1 %cmp172, label %if.then174, label %if.end176

if.then174:                                       ; preds = %while.body
  %73 = load i32, i32* %ret, align 4
  %call175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 noundef %73) #4
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #4
  br label %exit

if.end176:                                        ; preds = %while.body
  %arraydecay177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call178 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay177) #4
  %74 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %74, i32 0, i32 29
  %75 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %75, %struct.mbedtls_x509_crt** %cur, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %76 = load i32, i32* %verify, align 4
  %tobool179 = icmp ne i32 %76, 0
  br i1 %tobool179, label %if.then180, label %if.end194

if.then180:                                       ; preds = %while.end
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0)) #4
  %call182 = call i32 @mbedtls_x509_crt_verify(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef %cacrl, i8* noundef null, i32* noundef %flags, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef @my_verify, i8* noundef null) #4
  store i32 %call182, i32* %ret, align 4
  %cmp183 = icmp ne i32 %call182, 0
  br i1 %cmp183, label %if.then185, label %if.else191

if.then185:                                       ; preds = %if.then180
  %call186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #4
  %arraydecay187 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %77 = load i32, i32* %flags, align 4
  %call188 = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %arraydecay187, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 noundef %77) #4
  %arraydecay189 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay189) #4
  br label %if.end193

if.else191:                                       ; preds = %if.then180
  %call192 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %if.end193

if.end193:                                        ; preds = %if.else191, %if.then185
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %while.end
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #4
  br label %if.end268

if.else195:                                       ; preds = %if.end147
  %78 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %cmp196 = icmp eq i32 %78, 2
  br i1 %cmp196, label %if.then198, label %if.else266

if.then198:                                       ; preds = %if.else195
  %call199 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0)) #4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call200 = call i32 @fflush(%struct._IO_FILE* noundef %79) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %80 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %81 = load i8*, i8** %pers, align 8
  %82 = load i8*, i8** %pers, align 8
  %call201 = call i64 @strlen(i8* noundef %82) #5
  %call202 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %80, i8* noundef %81, i64 noundef %call201) #4
  store i32 %call202, i32* %ret, align 4
  %cmp203 = icmp ne i32 %call202, 0
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.then198
  %83 = load i32, i32* %ret, align 4
  %call206 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 noundef %83) #4
  br label %ssl_exit

if.end207:                                        ; preds = %if.then198
  %call208 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #4
  %84 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  call void @mbedtls_debug_set_threshold(i32 noundef %84) #4
  %85 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %86 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %call209 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0), i8* noundef %85, i8* noundef %86) #4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call210 = call i32 @fflush(%struct._IO_FILE* noundef %87) #4
  %88 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %89 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %call211 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %88, i8* noundef %89, i32 noundef 0) #4
  store i32 %call211, i32* %ret, align 4
  %cmp212 = icmp ne i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end207
  %90 = load i32, i32* %ret, align 4
  %call215 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0), i32 noundef %90) #4
  br label %ssl_exit

if.end216:                                        ; preds = %if.end207
  %call217 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  store i32 %call217, i32* %ret, align 4
  %cmp218 = icmp ne i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end216
  %91 = load i32, i32* %ret, align 4
  %call221 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i64 0, i64 0), i32 noundef %91) #4
  br label %exit

if.end222:                                        ; preds = %if.end216
  %92 = load i32, i32* %verify, align 4
  %tobool223 = icmp ne i32 %92, 0
  br i1 %tobool223, label %if.then224, label %if.else225

if.then224:                                       ; preds = %if.end222
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 2) #4
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #4
  call void @mbedtls_ssl_conf_verify(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef @my_verify, i8* noundef null) #4
  br label %if.end226

if.else225:                                       ; preds = %if.end222
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0) #4
  br label %if.end226

if.end226:                                        ; preds = %if.else225, %if.then224
  %93 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %93) #4
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = bitcast %struct._IO_FILE* %94 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %95) #4
  %call227 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #4
  store i32 %call227, i32* %ret, align 4
  %cmp228 = icmp ne i32 %call227, 0
  br i1 %cmp228, label %if.then230, label %if.end232

if.then230:                                       ; preds = %if.end226
  %96 = load i32, i32* %ret, align 4
  %call231 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0), i32 noundef %96) #4
  br label %ssl_exit

if.end232:                                        ; preds = %if.end226
  %97 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %call233 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %97) #4
  store i32 %call233, i32* %ret, align 4
  %cmp234 = icmp ne i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.end238

if.then236:                                       ; preds = %if.end232
  %98 = load i32, i32* %ret, align 4
  %call237 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 noundef %98) #4
  br label %ssl_exit

if.end238:                                        ; preds = %if.end232
  %99 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %99, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #4
  br label %while.cond239

while.cond239:                                    ; preds = %if.end251, %if.end238
  %call240 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call240, i32* %ret, align 4
  %cmp241 = icmp ne i32 %call240, 0
  br i1 %cmp241, label %while.body243, label %while.end252

while.body243:                                    ; preds = %while.cond239
  %100 = load i32, i32* %ret, align 4
  %cmp244 = icmp ne i32 %100, -26880
  br i1 %cmp244, label %land.lhs.true246, label %if.end251

land.lhs.true246:                                 ; preds = %while.body243
  %101 = load i32, i32* %ret, align 4
  %cmp247 = icmp ne i32 %101, -26752
  br i1 %cmp247, label %if.then249, label %if.end251

if.then249:                                       ; preds = %land.lhs.true246
  %102 = load i32, i32* %ret, align 4
  %call250 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0), i32 noundef %102) #4
  br label %ssl_exit

if.end251:                                        ; preds = %land.lhs.true246, %while.body243
  br label %while.cond239, !llvm.loop !8

while.end252:                                     ; preds = %while.cond239
  %call253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #4
  %call254 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #4
  %arraydecay255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call256 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef %ssl) #4
  %call257 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay255, i64 noundef 1023, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %call256) #4
  store i32 %call257, i32* %ret, align 4
  %103 = load i32, i32* %ret, align 4
  %cmp258 = icmp eq i32 %103, -1
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %while.end252
  %104 = load i32, i32* %ret, align 4
  %call261 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 noundef %104) #4
  br label %ssl_exit

if.end262:                                        ; preds = %while.end252
  %arraydecay263 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call264 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay263) #4
  %call265 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #4
  br label %ssl_exit

ssl_exit:                                         ; preds = %if.end262, %if.then260, %if.then249, %if.then236, %if.then230, %if.then214, %if.then205
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #4
  br label %if.end267

if.else266:                                       ; preds = %if.else195
  br label %usage

if.end267:                                        ; preds = %ssl_exit
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.end194
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end268, %if.then220, %if.then174, %if.then164, %if.then156, %if.then143, %if.then130, %if.then120, %usage
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #4
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #4
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %cacrl) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %105 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %105) #6
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_x509_crl_parse_file(%struct.mbedtls_x509_crl* noundef, i8* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_verify(%struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef, i8* noundef, i32* noundef, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_verify(i8* noundef %data, %struct.mbedtls_x509_crt* noundef %crt, i32 noundef %depth, i32* noundef %flags) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %depth.addr = alloca i32, align 4
  %flags.addr = alloca i32*, align 8
  %buf = alloca [1024 x i8], align 16
  store i8* %data, i8** %data.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32* %flags, i32** %flags.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i32, i32* %depth.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i32 noundef %1) #4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %call1 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay, i64 noundef 1023, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %2) #4
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* noundef %arraydecay2) #4
  %3 = load i32*, i32** %flags.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0)) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32, i32* %5, align 4
  %call6 = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %arraydecay5, i64 noundef 1024, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 noundef %6) #4
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %arraydecay7) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #1

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ssl_conf_verify(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef, i8* noundef) #1

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %5) #4
  %6 = load i8*, i8** %ctx.addr, align 8
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %call1 = call i32 @fflush(%struct._IO_FILE* noundef %7) #4
  ret void
}

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
