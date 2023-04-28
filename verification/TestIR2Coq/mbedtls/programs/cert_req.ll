; ModuleID = 'x509/cert_req.c'
source_filename = "x509/cert_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i32, i8*, i8*, i8, i32, i8, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_x509write_csr = type { %struct.mbedtls_pk_context*, %struct.mbedtls_asn1_named_data*, i32, %struct.mbedtls_asn1_named_data* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"csr example app\00", align 1
@.str.2 = private unnamed_addr constant [1420 x i8] c"\0A usage: cert_req param=<>...\0A\0A acceptable parameters:\0A    filename=%%s         default: keyfile.key\0A    password=%%s         default: NULL\0A    debug_level=%%d      default: 0 (disabled)\0A    output_file=%%s      default: cert.req\0A    subject_name=%%s     default: CN=Cert,O=mbed TLS,C=UK\0A    key_usage=%%s        default: (empty)\0A                        Comma-separated-list of values:\0A                          digital_signature\0A                          non_repudiation\0A                          key_encipherment\0A                          data_encipherment\0A                          key_agreement\0A                          key_cert_sign\0A                          crl_sign\0A    force_key_usage=0/1  default: off\0A                          Add KeyUsage even if it is empty\0A    ns_cert_type=%%s     default: (empty)\0A                        Comma-separated-list of values:\0A                          ssl_client\0A                          ssl_server\0A                          email\0A                          object_signing\0A                          ssl_ca\0A                          email_ca\0A                          object_signing_ca\0A    force_ns_cert_type=0/1 default: off\0A                          Add NsCertType even if it is empty\0A    md=%%s               default: SHA256\0A                          possible values:\0A                          MD5, RIPEMD160, SHA1,\0A                          SHA224, SHA256, SHA384, SHA512\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"keyfile.key\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"cert.req\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CN=Cert,O=mbed TLS,C=UK\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"output_file\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"subject_name\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Invalid argument for option %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"key_usage\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"digital_signature\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"non_repudiation\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"key_encipherment\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"data_encipherment\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"key_agreement\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"key_cert_sign\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"crl_sign\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"force_key_usage\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"ns_cert_type\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ssl_client\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"object_signing\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ssl_ca\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"email_ca\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"object_signing_ca\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"force_ns_cert_type\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [47 x i8] c" failed\0A  !  mbedtls_ctr_drbg_seed returned %d\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"  . Checking subject name...\00", align 1
@.str.35 = private unnamed_addr constant [64 x i8] c" failed\0A  !  mbedtls_x509write_csr_set_subject_name returned %d\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"  . Loading the private key ...\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned %d\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"  . Writing the certificate request ...\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c" failed\0A  !  write_certifcate_request %d\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_certificate_request(%struct.mbedtls_x509write_csr* noundef %req, i8* noundef %output_file, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %output_file.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %output_buf = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  store %struct.mbedtls_x509write_csr* %req, %struct.mbedtls_x509write_csr** %req.addr, align 8
  store i8* %output_file, i8** %output_file.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64 0, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 4096) #5
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %req.addr, align 8
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %call2 = call i32 @mbedtls_x509write_csr_pem(%struct.mbedtls_x509write_csr* noundef %0, i8* noundef %arraydecay1, i64 noundef 4096, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2) #6
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %call4 = call i64 @strlen(i8* noundef %arraydecay3) #7
  store i64 %call4, i64* %len, align 8
  %4 = load i8*, i8** %output_file.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %5 = load i64, i64* %len, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i64 @fwrite(i8* noundef %arraydecay9, i64 noundef 1, i64 noundef %5, %struct._IO_FILE* noundef %6) #6
  %7 = load i64, i64* %len, align 8
  %cmp11 = icmp ne i64 %call10, %7
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* noundef %8) #6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* noundef %9) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then7, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509write_csr_pem(%struct.mbedtls_x509write_csr* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %key = alloca %struct.mbedtls_pk_context, align 8
  %buf = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %req = alloca %struct.mbedtls_x509write_csr, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %pers = alloca i8*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_x509write_csr_init(%struct.mbedtls_x509write_csr* noundef %req) #6
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %key) #6
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else206, %sw.default204, %if.else187, %sw.default, %if.else102, %if.then36, %if.then24, %if.then5, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1420 x i8], [1420 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  store i32 4, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call3 = call i8* @strchr(i8* noundef %6, i32 noundef 61) #7
  store i8* %call3, i8** %q, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %usage

if.end6:                                          ; preds = %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call7 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %9 = load i8*, i8** %q, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end216

if.else:                                          ; preds = %if.end6
  %10 = load i8*, i8** %p, align 8
  %call10 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %11 = load i8*, i8** %q, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end215

if.else13:                                        ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %call14 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else13
  %13 = load i8*, i8** %q, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end214

if.else17:                                        ; preds = %if.else13
  %14 = load i8*, i8** %p, align 8
  %call18 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.else17
  %15 = load i8*, i8** %q, align 8
  %call21 = call i32 @atoi(i8* noundef %15) #7
  store i32 %call21, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %17 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp23 = icmp sgt i32 %17, 65535
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %if.then20
  br label %usage

if.end25:                                         ; preds = %lor.lhs.false
  br label %if.end213

if.else26:                                        ; preds = %if.else17
  %18 = load i8*, i8** %p, align 8
  %call27 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  %19 = load i8*, i8** %q, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end212

if.else30:                                        ; preds = %if.else26
  %20 = load i8*, i8** %p, align 8
  %call31 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.else30
  %21 = load i8*, i8** %q, align 8
  %call34 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef %21) #6
  store %struct.mbedtls_md_info_t* %call34, %struct.mbedtls_md_info_t** %md_info, align 8
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp35 = icmp eq %struct.mbedtls_md_info_t* %22, null
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %23 = load i8*, i8** %p, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* noundef %23) #6
  br label %usage

if.end38:                                         ; preds = %if.then33
  %24 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call39 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %24) #6
  store i32 %call39, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  br label %if.end211

if.else40:                                        ; preds = %if.else30
  %25 = load i8*, i8** %p, align 8
  %call41 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else110

if.then43:                                        ; preds = %if.else40
  br label %while.cond

while.cond:                                       ; preds = %if.end109, %if.then43
  %26 = load i8*, i8** %q, align 8
  %cmp44 = icmp ne i8* %26, null
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i8*, i8** %q, align 8
  %call45 = call i8* @strchr(i8* noundef %27, i32 noundef 44) #7
  store i8* %call45, i8** %r, align 8
  %cmp46 = icmp ne i8* %call45, null
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %while.body
  %28 = load i8*, i8** %r, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr48, i8** %r, align 8
  store i8 0, i8* %28, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %while.body
  %29 = load i8*, i8** %q, align 8
  %call50 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #7
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.end49
  %30 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv = zext i8 %30 to i32
  %or = or i32 %conv, 128
  %conv53 = trunc i32 %or to i8
  store i8 %conv53, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end109

if.else54:                                        ; preds = %if.end49
  %31 = load i8*, i8** %q, align 8
  %call55 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #7
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.else62

if.then58:                                        ; preds = %if.else54
  %32 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv59 = zext i8 %32 to i32
  %or60 = or i32 %conv59, 64
  %conv61 = trunc i32 %or60 to i8
  store i8 %conv61, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end108

if.else62:                                        ; preds = %if.else54
  %33 = load i8*, i8** %q, align 8
  %call63 = call i32 @strcmp(i8* noundef %33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #7
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.else62
  %34 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv67 = zext i8 %34 to i32
  %or68 = or i32 %conv67, 32
  %conv69 = trunc i32 %or68 to i8
  store i8 %conv69, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end107

if.else70:                                        ; preds = %if.else62
  %35 = load i8*, i8** %q, align 8
  %call71 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else78

if.then74:                                        ; preds = %if.else70
  %36 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv75 = zext i8 %36 to i32
  %or76 = or i32 %conv75, 16
  %conv77 = trunc i32 %or76 to i8
  store i8 %conv77, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end106

if.else78:                                        ; preds = %if.else70
  %37 = load i8*, i8** %q, align 8
  %call79 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #7
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.else86

if.then82:                                        ; preds = %if.else78
  %38 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv83 = zext i8 %38 to i32
  %or84 = or i32 %conv83, 8
  %conv85 = trunc i32 %or84 to i8
  store i8 %conv85, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end105

if.else86:                                        ; preds = %if.else78
  %39 = load i8*, i8** %q, align 8
  %call87 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.else94

if.then90:                                        ; preds = %if.else86
  %40 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv91 = zext i8 %40 to i32
  %or92 = or i32 %conv91, 4
  %conv93 = trunc i32 %or92 to i8
  store i8 %conv93, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end104

if.else94:                                        ; preds = %if.else86
  %41 = load i8*, i8** %q, align 8
  %call95 = call i32 @strcmp(i8* noundef %41, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #7
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.else102

if.then98:                                        ; preds = %if.else94
  %42 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv99 = zext i8 %42 to i32
  %or100 = or i32 %conv99, 2
  %conv101 = trunc i32 %or100 to i8
  store i8 %conv101, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end103

if.else102:                                       ; preds = %if.else94
  br label %usage

if.end103:                                        ; preds = %if.then98
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then90
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then82
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then74
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then66
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then58
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then52
  %43 = load i8*, i8** %r, align 8
  store i8* %43, i8** %q, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %if.end210

if.else110:                                       ; preds = %if.else40
  %44 = load i8*, i8** %p, align 8
  %call111 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #7
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.else117

if.then114:                                       ; preds = %if.else110
  %45 = load i8*, i8** %q, align 8
  %call115 = call i32 @atoi(i8* noundef %45) #7
  switch i32 %call115, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb116
  ]

sw.bb:                                            ; preds = %if.then114
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.then114
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then114
  br label %usage

sw.epilog:                                        ; preds = %sw.bb116, %sw.bb
  br label %if.end209

if.else117:                                       ; preds = %if.else110
  %46 = load i8*, i8** %p, align 8
  %call118 = call i32 @strcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0)) #7
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.else196

if.then121:                                       ; preds = %if.else117
  br label %while.cond122

while.cond122:                                    ; preds = %if.end194, %if.then121
  %47 = load i8*, i8** %q, align 8
  %cmp123 = icmp ne i8* %47, null
  br i1 %cmp123, label %while.body125, label %while.end195

while.body125:                                    ; preds = %while.cond122
  %48 = load i8*, i8** %q, align 8
  %call126 = call i8* @strchr(i8* noundef %48, i32 noundef 44) #7
  store i8* %call126, i8** %r, align 8
  %cmp127 = icmp ne i8* %call126, null
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %while.body125
  %49 = load i8*, i8** %r, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr130, i8** %r, align 8
  store i8 0, i8* %49, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %while.body125
  %50 = load i8*, i8** %q, align 8
  %call132 = call i32 @strcmp(i8* noundef %50, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #7
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.else139

if.then135:                                       ; preds = %if.end131
  %51 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv136 = zext i8 %51 to i32
  %or137 = or i32 %conv136, 128
  %conv138 = trunc i32 %or137 to i8
  store i8 %conv138, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end194

if.else139:                                       ; preds = %if.end131
  %52 = load i8*, i8** %q, align 8
  %call140 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #7
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.else147

if.then143:                                       ; preds = %if.else139
  %53 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv144 = zext i8 %53 to i32
  %or145 = or i32 %conv144, 64
  %conv146 = trunc i32 %or145 to i8
  store i8 %conv146, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end193

if.else147:                                       ; preds = %if.else139
  %54 = load i8*, i8** %q, align 8
  %call148 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #7
  %cmp149 = icmp eq i32 %call148, 0
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %if.else147
  %55 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv152 = zext i8 %55 to i32
  %or153 = or i32 %conv152, 32
  %conv154 = trunc i32 %or153 to i8
  store i8 %conv154, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end192

if.else155:                                       ; preds = %if.else147
  %56 = load i8*, i8** %q, align 8
  %call156 = call i32 @strcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0)) #7
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %if.else163

if.then159:                                       ; preds = %if.else155
  %57 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv160 = zext i8 %57 to i32
  %or161 = or i32 %conv160, 16
  %conv162 = trunc i32 %or161 to i8
  store i8 %conv162, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end191

if.else163:                                       ; preds = %if.else155
  %58 = load i8*, i8** %q, align 8
  %call164 = call i32 @strcmp(i8* noundef %58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #7
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.else171

if.then167:                                       ; preds = %if.else163
  %59 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv168 = zext i8 %59 to i32
  %or169 = or i32 %conv168, 4
  %conv170 = trunc i32 %or169 to i8
  store i8 %conv170, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end190

if.else171:                                       ; preds = %if.else163
  %60 = load i8*, i8** %q, align 8
  %call172 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #7
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.else179

if.then175:                                       ; preds = %if.else171
  %61 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv176 = zext i8 %61 to i32
  %or177 = or i32 %conv176, 2
  %conv178 = trunc i32 %or177 to i8
  store i8 %conv178, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end189

if.else179:                                       ; preds = %if.else171
  %62 = load i8*, i8** %q, align 8
  %call180 = call i32 @strcmp(i8* noundef %62, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0)) #7
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.else187

if.then183:                                       ; preds = %if.else179
  %63 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv184 = zext i8 %63 to i32
  %or185 = or i32 %conv184, 1
  %conv186 = trunc i32 %or185 to i8
  store i8 %conv186, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end188

if.else187:                                       ; preds = %if.else179
  br label %usage

if.end188:                                        ; preds = %if.then183
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then175
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then167
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.then159
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then151
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then143
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.then135
  %64 = load i8*, i8** %r, align 8
  store i8* %64, i8** %q, align 8
  br label %while.cond122, !llvm.loop !6

while.end195:                                     ; preds = %while.cond122
  br label %if.end208

if.else196:                                       ; preds = %if.else117
  %65 = load i8*, i8** %p, align 8
  %call197 = call i32 @strcmp(i8* noundef %65, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0)) #7
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else206

if.then200:                                       ; preds = %if.else196
  %66 = load i8*, i8** %q, align 8
  %call201 = call i32 @atoi(i8* noundef %66) #7
  switch i32 %call201, label %sw.default204 [
    i32 0, label %sw.bb202
    i32 1, label %sw.bb203
  ]

sw.bb202:                                         ; preds = %if.then200
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  br label %sw.epilog205

sw.bb203:                                         ; preds = %if.then200
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  br label %sw.epilog205

sw.default204:                                    ; preds = %if.then200
  br label %usage

sw.epilog205:                                     ; preds = %sw.bb203, %sw.bb202
  br label %if.end207

if.else206:                                       ; preds = %if.else196
  br label %usage

if.end207:                                        ; preds = %sw.epilog205
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %while.end195
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %sw.epilog
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %while.end
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.end38
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.then29
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end25
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then16
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then12
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end216
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  call void @mbedtls_x509write_csr_set_md_alg(%struct.mbedtls_x509write_csr* noundef %req, i32 noundef %68) #6
  %69 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %conv217 = zext i8 %69 to i32
  %tobool = icmp ne i32 %conv217, 0
  br i1 %tobool, label %if.then221, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %for.end
  %70 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  %cmp219 = icmp eq i32 %70, 1
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %lor.lhs.false218, %for.end
  %71 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %call222 = call i32 @mbedtls_x509write_csr_set_key_usage(%struct.mbedtls_x509write_csr* noundef %req, i8 noundef zeroext %71) #6
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %lor.lhs.false218
  %72 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %conv224 = zext i8 %72 to i32
  %tobool225 = icmp ne i32 %conv224, 0
  br i1 %tobool225, label %if.then229, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %if.end223
  %73 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 4
  %cmp227 = icmp eq i32 %73, 1
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %lor.lhs.false226, %if.end223
  %74 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %call230 = call i32 @mbedtls_x509write_csr_set_ns_cert_type(%struct.mbedtls_x509write_csr* noundef %req, i8 noundef zeroext %74) #6
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %lor.lhs.false226
  %call232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0)) #6
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call233 = call i32 @fflush(%struct._IO_FILE* noundef %75) #6
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %76 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %77 = load i8*, i8** %pers, align 8
  %78 = load i8*, i8** %pers, align 8
  %call234 = call i64 @strlen(i8* noundef %78) #7
  %call235 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %76, i8* noundef %77, i64 noundef %call234) #6
  store i32 %call235, i32* %ret, align 4
  %cmp236 = icmp ne i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %if.end231
  %79 = load i32, i32* %ret, align 4
  %call239 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 noundef %79) #6
  br label %exit

if.end240:                                        ; preds = %if.end231
  %call241 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #6
  %call242 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0)) #6
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call243 = call i32 @fflush(%struct._IO_FILE* noundef %80) #6
  %81 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %call244 = call i32 @mbedtls_x509write_csr_set_subject_name(%struct.mbedtls_x509write_csr* noundef %req, i8* noundef %81) #6
  store i32 %call244, i32* %ret, align 4
  %cmp245 = icmp ne i32 %call244, 0
  br i1 %cmp245, label %if.then247, label %if.end249

if.then247:                                       ; preds = %if.end240
  %82 = load i32, i32* %ret, align 4
  %call248 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.35, i64 0, i64 0), i32 noundef %82) #6
  br label %exit

if.end249:                                        ; preds = %if.end240
  %call250 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #6
  %call251 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0)) #6
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call252 = call i32 @fflush(%struct._IO_FILE* noundef %83) #6
  %84 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %85 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %86 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call253 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %key, i8* noundef %84, i8* noundef %85, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %86) #6
  store i32 %call253, i32* %ret, align 4
  %87 = load i32, i32* %ret, align 4
  %cmp254 = icmp ne i32 %87, 0
  br i1 %cmp254, label %if.then256, label %if.end258

if.then256:                                       ; preds = %if.end249
  %88 = load i32, i32* %ret, align 4
  %call257 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 noundef %88) #6
  br label %exit

if.end258:                                        ; preds = %if.end249
  call void @mbedtls_x509write_csr_set_key(%struct.mbedtls_x509write_csr* noundef %req, %struct.mbedtls_pk_context* noundef %key) #6
  %call259 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #6
  %call260 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0)) #6
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call261 = call i32 @fflush(%struct._IO_FILE* noundef %89) #6
  %90 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %91 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call262 = call i32 @write_certificate_request(%struct.mbedtls_x509write_csr* noundef %req, i8* noundef %90, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %91) #6
  store i32 %call262, i32* %ret, align 4
  %cmp263 = icmp ne i32 %call262, 0
  br i1 %cmp263, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.end258
  %92 = load i32, i32* %ret, align 4
  %call266 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), i32 noundef %92) #6
  br label %exit

if.end267:                                        ; preds = %if.end258
  %call268 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #6
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end267, %if.then265, %if.then256, %if.then247, %if.then238, %usage
  %93 = load i32, i32* %exit_code, align 4
  %cmp269 = icmp ne i32 %93, 0
  br i1 %cmp269, label %if.then271, label %if.end275

if.then271:                                       ; preds = %exit
  %94 = load i32, i32* %ret, align 4
  %arraydecay272 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %94, i8* noundef %arraydecay272, i64 noundef 1024) #6
  %arraydecay273 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call274 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* noundef %arraydecay273) #6
  br label %if.end275

if.end275:                                        ; preds = %if.then271, %exit
  call void @mbedtls_x509write_csr_free(%struct.mbedtls_x509write_csr* noundef %req) #6
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %key) #6
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %95 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %95) #8
  unreachable
}

declare dso_local void @mbedtls_x509write_csr_init(%struct.mbedtls_x509write_csr* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef) #2

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local void @mbedtls_x509write_csr_set_md_alg(%struct.mbedtls_x509write_csr* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_x509write_csr_set_key_usage(%struct.mbedtls_x509write_csr* noundef, i8 noundef zeroext) #2

declare dso_local i32 @mbedtls_x509write_csr_set_ns_cert_type(%struct.mbedtls_x509write_csr* noundef, i8 noundef zeroext) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_x509write_csr_set_subject_name(%struct.mbedtls_x509write_csr* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_x509write_csr_set_key(%struct.mbedtls_x509write_csr* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_x509write_csr_free(%struct.mbedtls_x509write_csr* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
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
