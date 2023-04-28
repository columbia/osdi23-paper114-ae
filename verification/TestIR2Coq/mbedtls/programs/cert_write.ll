; ModuleID = 'x509/cert_write.c'
source_filename = "x509/cert_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mbedtls_x509write_cert = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context*, %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data*, i32, [16 x i8], [16 x i8], %struct.mbedtls_asn1_named_data* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_x509_csr = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"crt example app\00", align 1
@.str.2 = private unnamed_addr constant [2812 x i8] c"\0A usage: cert_write param=<>...\0A\0A acceptable parameters:\0A    request_file=%%s         default: (empty)\0A                            If request_file is specified, subject_key,\0A                            subject_pwd and subject_name are ignored!\0A    subject_key=%%s          default: subject.key\0A    subject_pwd=%%s          default: (empty)\0A    subject_name=%%s         default: CN=Cert,O=mbed TLS,C=UK\0A\0A    issuer_crt=%%s           default: (empty)\0A                            If issuer_crt is specified, issuer_name is\0A                            ignored!\0A    issuer_name=%%s          default: CN=CA,O=mbed TLS,C=UK\0A\0A    selfsign=%%d             default: 0 (false)\0A                            If selfsign is enabled, issuer_name and\0A                            issuer_key are required (issuer_crt and\0A                            subject_* are ignored\0A    issuer_key=%%s           default: ca.key\0A    issuer_pwd=%%s           default: (empty)\0A    output_file=%%s          default: cert.crt\0A    serial=%%s               default: 1\0A    not_before=%%s           default: 20010101000000\0A    not_after=%%s            default: 20301231235959\0A    is_ca=%%d                default: 0 (disabled)\0A    max_pathlen=%%d          default: -1 (none)\0A    md=%%s                   default: SHA256\0A                            Supported values (if enabled):\0A                            MD5, RIPEMD160, SHA1,\0A                            SHA224, SHA256, SHA384, SHA512\0A    version=%%d              default: 3\0A                            Possible values: 1, 2, 3\0A    subject_identifier=%%s   default: 1\0A                            Possible values: 0, 1\0A                            (Considered for v3 only)\0A    authority_identifier=%%s default: 1\0A                            Possible values: 0, 1\0A                            (Considered for v3 only)\0A    basic_constraints=%%d    default: 1\0A                            Possible values: 0, 1\0A                            (Considered for v3 only)\0A    key_usage=%%s            default: (empty)\0A                            Comma-separated-list of values:\0A                            digital_signature\0A                            non_repudiation\0A                            key_encipherment\0A                            data_encipherment\0A                            key_agreement\0A                            key_cert_sign\0A                            crl_sign\0A                            (Considered for v3 only)\0A    ns_cert_type=%%s         default: (empty)\0A                            Comma-separated-list of values:\0A                            ssl_client\0A                            ssl_server\0A                            email\0A                            object_signing\0A                            ssl_ca\0A                            email_ca\0A                            object_signing_ca\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"subject.key\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ca.key\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cert.crt\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"CN=Cert,O=mbed TLS,C=UK\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CN=CA,O=mbed TLS,C=UK\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"20010101000000\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"20301231235959\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"request_file\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"subject_key\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"issuer_key\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"subject_pwd\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"issuer_pwd\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"issuer_crt\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"output_file\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"subject_name\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"issuer_name\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"not_before\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"not_after\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"authority_identifier\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Invalid argument for option %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"subject_identifier\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"basic_constraints\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"selfsign\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"is_ca\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"max_pathlen\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"key_usage\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"digital_signature\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"non_repudiation\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"key_encipherment\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"data_encipherment\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"key_agreement\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"key_cert_sign\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"crl_sign\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"ns_cert_type\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ssl_client\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"object_signing\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"ssl_ca\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"email_ca\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"object_signing_ca\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.51 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_ctr_drbg_seed returned %d - %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"  . Reading serial number...\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c" failed\0A  !  mbedtls_mpi_read_string returned -0x%04x - %s\0A\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"  . Loading the issuer certificate ...\00", align 1
@.str.56 = private unnamed_addr constant [65 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_file returned -0x%04x - %s\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_x509_dn_gets returned -0x%04x - %s\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"  . Loading the certificate request ...\00", align 1
@.str.59 = private unnamed_addr constant [65 x i8] c" failed\0A  !  mbedtls_x509_csr_parse_file returned -0x%04x - %s\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"  . Loading the subject key ...\00", align 1
@.str.61 = private unnamed_addr constant [62 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned -0x%04x - %s\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"  . Loading the issuer key ...\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned -x%02x - %s\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [60 x i8] c" failed\0A  !  issuer_key does not match issuer certificate\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [76 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_subject_name returned -0x%04x - %s\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [75 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_issuer_name returned -0x%04x - %s\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"  . Setting certificate values ...\00", align 1
@.str.68 = private unnamed_addr constant [70 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_serial returned -0x%04x - %s\0A\0A\00", align 1
@.str.69 = private unnamed_addr constant [72 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_validity returned -0x%04x - %s\0A\0A\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"  . Adding the Basic Constraints extension ...\00", align 1
@.str.71 = private unnamed_addr constant [72 x i8] c" failed\0A  !  x509write_crt_set_basic_contraints returned -0x%04x - %s\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"  . Adding the Subject Key Identifier ...\00", align 1
@.str.73 = private unnamed_addr constant [86 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_subject_key_identifier returned -0x%04x - %s\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"  . Adding the Authority Key Identifier ...\00", align 1
@.str.75 = private unnamed_addr constant [88 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_authority_key_identifier returned -0x%04x - %s\0A\0A\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"  . Adding the Key Usage extension ...\00", align 1
@.str.77 = private unnamed_addr constant [73 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_key_usage returned -0x%04x - %s\0A\0A\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"  . Adding the NS Cert Type extension ...\00", align 1
@.str.79 = private unnamed_addr constant [76 x i8] c" failed\0A  !  mbedtls_x509write_crt_set_ns_cert_type returned -0x%04x - %s\0A\0A\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"  . Writing the certificate...\00", align 1
@.str.81 = private unnamed_addr constant [46 x i8] c" failed\0A  !  write_certificate -0x%04x - %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_certificate(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %output_file, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %output_file.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %output_buf = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  store %struct.mbedtls_x509write_cert* %crt, %struct.mbedtls_x509write_cert** %crt.addr, align 8
  store i8* %output_file, i8** %output_file.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64 0, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 4096) #5
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %crt.addr, align 8
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %output_buf, i64 0, i64 0
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %call2 = call i32 @mbedtls_x509write_crt_pem(%struct.mbedtls_x509write_cert* noundef %0, i8* noundef %arraydecay1, i64 noundef 4096, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2) #6
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

declare dso_local i32 @mbedtls_x509write_crt_pem(%struct.mbedtls_x509write_cert* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

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
  %issuer_crt = alloca %struct.mbedtls_x509_crt, align 8
  %loaded_issuer_key = alloca %struct.mbedtls_pk_context, align 8
  %loaded_subject_key = alloca %struct.mbedtls_pk_context, align 8
  %issuer_key = alloca %struct.mbedtls_pk_context*, align 8
  %subject_key = alloca %struct.mbedtls_pk_context*, align 8
  %buf = alloca [1024 x i8], align 16
  %issuer_name = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %subject_name = alloca [256 x i8], align 16
  %csr = alloca %struct.mbedtls_x509_csr, align 8
  %crt = alloca %struct.mbedtls_x509write_cert, align 8
  %serial = alloca %struct.mbedtls_mpi, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %pers = alloca i8*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store %struct.mbedtls_pk_context* %loaded_issuer_key, %struct.mbedtls_pk_context** %issuer_key, align 8
  store %struct.mbedtls_pk_context* %loaded_subject_key, %struct.mbedtls_pk_context** %subject_key, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %pers, align 8
  call void @mbedtls_x509write_crt_init(%struct.mbedtls_x509write_cert* noundef %crt) #6
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %loaded_issuer_key) #6
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %loaded_subject_key) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %serial) #6
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #6
  call void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef %csr) #6
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %issuer_crt) #6
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 1024) #5
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.else289, %if.else279, %if.else200, %if.then135, %if.then124, %if.then113, %if.then102, %if.then91, %if.then82, %if.then71, %if.then60, %if.then5, %if.then
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2812 x i8], [2812 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %exit

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  store i32 4, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
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
  %call7 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %9 = load i8*, i8** %q, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end311

if.else:                                          ; preds = %if.end6
  %10 = load i8*, i8** %p, align 8
  %call10 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %11 = load i8*, i8** %q, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end310

if.else13:                                        ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %call14 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else13
  %13 = load i8*, i8** %q, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end309

if.else17:                                        ; preds = %if.else13
  %14 = load i8*, i8** %p, align 8
  %call18 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  %15 = load i8*, i8** %q, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  br label %if.end308

if.else21:                                        ; preds = %if.else17
  %16 = load i8*, i8** %p, align 8
  %call22 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  %17 = load i8*, i8** %q, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  br label %if.end307

if.else25:                                        ; preds = %if.else21
  %18 = load i8*, i8** %p, align 8
  %call26 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else25
  %19 = load i8*, i8** %q, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end306

if.else29:                                        ; preds = %if.else25
  %20 = load i8*, i8** %p, align 8
  %call30 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else29
  %21 = load i8*, i8** %q, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  br label %if.end305

if.else33:                                        ; preds = %if.else29
  %22 = load i8*, i8** %p, align 8
  %call34 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else33
  %23 = load i8*, i8** %q, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  br label %if.end304

if.else37:                                        ; preds = %if.else33
  %24 = load i8*, i8** %p, align 8
  %call38 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else37
  %25 = load i8*, i8** %q, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  br label %if.end303

if.else41:                                        ; preds = %if.else37
  %26 = load i8*, i8** %p, align 8
  %call42 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #7
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else41
  %27 = load i8*, i8** %q, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  br label %if.end302

if.else45:                                        ; preds = %if.else41
  %28 = load i8*, i8** %p, align 8
  %call46 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)) #7
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else45
  %29 = load i8*, i8** %q, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  br label %if.end301

if.else49:                                        ; preds = %if.else45
  %30 = load i8*, i8** %p, align 8
  %call50 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #7
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else49
  %31 = load i8*, i8** %q, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  br label %if.end300

if.else53:                                        ; preds = %if.else49
  %32 = load i8*, i8** %p, align 8
  %call54 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0)) #7
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.else63

if.then56:                                        ; preds = %if.else53
  %33 = load i8*, i8** %q, align 8
  %call57 = call i32 @atoi(i8* noundef %33) #7
  store i32 %call57, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %cmp58 = icmp ne i32 %34, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %if.then56
  %35 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %cmp59 = icmp ne i32 %35, 1
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %land.lhs.true
  %36 = load i8*, i8** %p, align 8
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %36) #6
  br label %usage

if.end62:                                         ; preds = %land.lhs.true, %if.then56
  br label %if.end299

if.else63:                                        ; preds = %if.else53
  %37 = load i8*, i8** %p, align 8
  %call64 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0)) #7
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.else74

if.then66:                                        ; preds = %if.else63
  %38 = load i8*, i8** %q, align 8
  %call67 = call i32 @atoi(i8* noundef %38) #7
  store i32 %call67, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %cmp68 = icmp ne i32 %39, 0
  br i1 %cmp68, label %land.lhs.true69, label %if.end73

land.lhs.true69:                                  ; preds = %if.then66
  %40 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %cmp70 = icmp ne i32 %40, 1
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true69
  %41 = load i8*, i8** %p, align 8
  %call72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %41) #6
  br label %usage

if.end73:                                         ; preds = %land.lhs.true69, %if.then66
  br label %if.end298

if.else74:                                        ; preds = %if.else63
  %42 = load i8*, i8** %p, align 8
  %call75 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0)) #7
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.else85

if.then77:                                        ; preds = %if.else74
  %43 = load i8*, i8** %q, align 8
  %call78 = call i32 @atoi(i8* noundef %43) #7
  store i32 %call78, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp79 = icmp ne i32 %44, 0
  br i1 %cmp79, label %land.lhs.true80, label %if.end84

land.lhs.true80:                                  ; preds = %if.then77
  %45 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp81 = icmp ne i32 %45, 1
  br i1 %cmp81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true80
  %46 = load i8*, i8** %p, align 8
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %46) #6
  br label %usage

if.end84:                                         ; preds = %land.lhs.true80, %if.then77
  br label %if.end297

if.else85:                                        ; preds = %if.else74
  %47 = load i8*, i8** %p, align 8
  %call86 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #7
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.else95

if.then88:                                        ; preds = %if.else85
  %48 = load i8*, i8** %q, align 8
  %call89 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef %48) #6
  store %struct.mbedtls_md_info_t* %call89, %struct.mbedtls_md_info_t** %md_info, align 8
  %49 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp90 = icmp eq %struct.mbedtls_md_info_t* %49, null
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then88
  %50 = load i8*, i8** %p, align 8
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %50) #6
  br label %usage

if.end93:                                         ; preds = %if.then88
  %51 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call94 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %51) #6
  store i32 %call94, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  br label %if.end296

if.else95:                                        ; preds = %if.else85
  %52 = load i8*, i8** %p, align 8
  %call96 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #7
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.else105

if.then98:                                        ; preds = %if.else95
  %53 = load i8*, i8** %q, align 8
  %call99 = call i32 @atoi(i8* noundef %53) #7
  store i32 %call99, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp100 = icmp slt i32 %54, 1
  br i1 %cmp100, label %if.then102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then98
  %55 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp101 = icmp sgt i32 %55, 3
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %lor.lhs.false, %if.then98
  %56 = load i8*, i8** %p, align 8
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %56) #6
  br label %usage

if.end104:                                        ; preds = %lor.lhs.false
  %57 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  br label %if.end295

if.else105:                                       ; preds = %if.else95
  %58 = load i8*, i8** %p, align 8
  %call106 = call i32 @strcmp(i8* noundef %58, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #7
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.else116

if.then108:                                       ; preds = %if.else105
  %59 = load i8*, i8** %q, align 8
  %call109 = call i32 @atoi(i8* noundef %59) #7
  store i32 %call109, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp110 = icmp slt i32 %60, 0
  br i1 %cmp110, label %if.then113, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.then108
  %61 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp112 = icmp sgt i32 %61, 1
  br i1 %cmp112, label %if.then113, label %if.end115

if.then113:                                       ; preds = %lor.lhs.false111, %if.then108
  %62 = load i8*, i8** %p, align 8
  %call114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %62) #6
  br label %usage

if.end115:                                        ; preds = %lor.lhs.false111
  br label %if.end294

if.else116:                                       ; preds = %if.else105
  %63 = load i8*, i8** %p, align 8
  %call117 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #7
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.then119, label %if.else127

if.then119:                                       ; preds = %if.else116
  %64 = load i8*, i8** %q, align 8
  %call120 = call i32 @atoi(i8* noundef %64) #7
  store i32 %call120, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %cmp121 = icmp slt i32 %65, 0
  br i1 %cmp121, label %if.then124, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.then119
  %66 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %cmp123 = icmp sgt i32 %66, 1
  br i1 %cmp123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %lor.lhs.false122, %if.then119
  %67 = load i8*, i8** %p, align 8
  %call125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %67) #6
  br label %usage

if.end126:                                        ; preds = %lor.lhs.false122
  br label %if.end293

if.else127:                                       ; preds = %if.else116
  %68 = load i8*, i8** %p, align 8
  %call128 = call i32 @strcmp(i8* noundef %68, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #7
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then130, label %if.else138

if.then130:                                       ; preds = %if.else127
  %69 = load i8*, i8** %q, align 8
  %call131 = call i32 @atoi(i8* noundef %69) #7
  store i32 %call131, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %cmp132 = icmp slt i32 %70, -1
  br i1 %cmp132, label %if.then135, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.then130
  %71 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %cmp134 = icmp sgt i32 %71, 127
  br i1 %cmp134, label %if.then135, label %if.end137

if.then135:                                       ; preds = %lor.lhs.false133, %if.then130
  %72 = load i8*, i8** %p, align 8
  %call136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %72) #6
  br label %usage

if.end137:                                        ; preds = %lor.lhs.false133
  br label %if.end292

if.else138:                                       ; preds = %if.else127
  %73 = load i8*, i8** %p, align 8
  %call139 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)) #7
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.else209

if.then141:                                       ; preds = %if.else138
  br label %while.cond

while.cond:                                       ; preds = %if.end208, %if.then141
  %74 = load i8*, i8** %q, align 8
  %cmp142 = icmp ne i8* %74, null
  br i1 %cmp142, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load i8*, i8** %q, align 8
  %call143 = call i8* @strchr(i8* noundef %75, i32 noundef 44) #7
  store i8* %call143, i8** %r, align 8
  %cmp144 = icmp ne i8* %call143, null
  br i1 %cmp144, label %if.then145, label %if.end147

if.then145:                                       ; preds = %while.body
  %76 = load i8*, i8** %r, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr146, i8** %r, align 8
  store i8 0, i8* %76, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %while.body
  %77 = load i8*, i8** %q, align 8
  %call148 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0)) #7
  %cmp149 = icmp eq i32 %call148, 0
  br i1 %cmp149, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.end147
  %78 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv = zext i8 %78 to i32
  %or = or i32 %conv, 128
  %conv151 = trunc i32 %or to i8
  store i8 %conv151, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end208

if.else152:                                       ; preds = %if.end147
  %79 = load i8*, i8** %q, align 8
  %call153 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0)) #7
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.else160

if.then156:                                       ; preds = %if.else152
  %80 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv157 = zext i8 %80 to i32
  %or158 = or i32 %conv157, 64
  %conv159 = trunc i32 %or158 to i8
  store i8 %conv159, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end207

if.else160:                                       ; preds = %if.else152
  %81 = load i8*, i8** %q, align 8
  %call161 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0)) #7
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else168

if.then164:                                       ; preds = %if.else160
  %82 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv165 = zext i8 %82 to i32
  %or166 = or i32 %conv165, 32
  %conv167 = trunc i32 %or166 to i8
  store i8 %conv167, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end206

if.else168:                                       ; preds = %if.else160
  %83 = load i8*, i8** %q, align 8
  %call169 = call i32 @strcmp(i8* noundef %83, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #7
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then172, label %if.else176

if.then172:                                       ; preds = %if.else168
  %84 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv173 = zext i8 %84 to i32
  %or174 = or i32 %conv173, 16
  %conv175 = trunc i32 %or174 to i8
  store i8 %conv175, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end205

if.else176:                                       ; preds = %if.else168
  %85 = load i8*, i8** %q, align 8
  %call177 = call i32 @strcmp(i8* noundef %85, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0)) #7
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then180, label %if.else184

if.then180:                                       ; preds = %if.else176
  %86 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv181 = zext i8 %86 to i32
  %or182 = or i32 %conv181, 8
  %conv183 = trunc i32 %or182 to i8
  store i8 %conv183, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end204

if.else184:                                       ; preds = %if.else176
  %87 = load i8*, i8** %q, align 8
  %call185 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0)) #7
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else192

if.then188:                                       ; preds = %if.else184
  %88 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv189 = zext i8 %88 to i32
  %or190 = or i32 %conv189, 4
  %conv191 = trunc i32 %or190 to i8
  store i8 %conv191, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end203

if.else192:                                       ; preds = %if.else184
  %89 = load i8*, i8** %q, align 8
  %call193 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0)) #7
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.else200

if.then196:                                       ; preds = %if.else192
  %90 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv197 = zext i8 %90 to i32
  %or198 = or i32 %conv197, 2
  %conv199 = trunc i32 %or198 to i8
  store i8 %conv199, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  br label %if.end202

if.else200:                                       ; preds = %if.else192
  %91 = load i8*, i8** %p, align 8
  %call201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %91) #6
  br label %usage

if.end202:                                        ; preds = %if.then196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then188
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.then180
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.then172
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.then164
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.then156
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then150
  %92 = load i8*, i8** %r, align 8
  store i8* %92, i8** %q, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %if.end291

if.else209:                                       ; preds = %if.else138
  %93 = load i8*, i8** %p, align 8
  %call210 = call i32 @strcmp(i8* noundef %93, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0)) #7
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.else289

if.then213:                                       ; preds = %if.else209
  br label %while.cond214

while.cond214:                                    ; preds = %if.end287, %if.then213
  %94 = load i8*, i8** %q, align 8
  %cmp215 = icmp ne i8* %94, null
  br i1 %cmp215, label %while.body217, label %while.end288

while.body217:                                    ; preds = %while.cond214
  %95 = load i8*, i8** %q, align 8
  %call218 = call i8* @strchr(i8* noundef %95, i32 noundef 44) #7
  store i8* %call218, i8** %r, align 8
  %cmp219 = icmp ne i8* %call218, null
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %while.body217
  %96 = load i8*, i8** %r, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr222, i8** %r, align 8
  store i8 0, i8* %96, align 1
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %while.body217
  %97 = load i8*, i8** %q, align 8
  %call224 = call i32 @strcmp(i8* noundef %97, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0)) #7
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.else231

if.then227:                                       ; preds = %if.end223
  %98 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv228 = zext i8 %98 to i32
  %or229 = or i32 %conv228, 128
  %conv230 = trunc i32 %or229 to i8
  store i8 %conv230, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end287

if.else231:                                       ; preds = %if.end223
  %99 = load i8*, i8** %q, align 8
  %call232 = call i32 @strcmp(i8* noundef %99, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0)) #7
  %cmp233 = icmp eq i32 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.else239

if.then235:                                       ; preds = %if.else231
  %100 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv236 = zext i8 %100 to i32
  %or237 = or i32 %conv236, 64
  %conv238 = trunc i32 %or237 to i8
  store i8 %conv238, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end286

if.else239:                                       ; preds = %if.else231
  %101 = load i8*, i8** %q, align 8
  %call240 = call i32 @strcmp(i8* noundef %101, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #7
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %if.then243, label %if.else247

if.then243:                                       ; preds = %if.else239
  %102 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv244 = zext i8 %102 to i32
  %or245 = or i32 %conv244, 32
  %conv246 = trunc i32 %or245 to i8
  store i8 %conv246, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end285

if.else247:                                       ; preds = %if.else239
  %103 = load i8*, i8** %q, align 8
  %call248 = call i32 @strcmp(i8* noundef %103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0)) #7
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.else255

if.then251:                                       ; preds = %if.else247
  %104 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv252 = zext i8 %104 to i32
  %or253 = or i32 %conv252, 16
  %conv254 = trunc i32 %or253 to i8
  store i8 %conv254, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end284

if.else255:                                       ; preds = %if.else247
  %105 = load i8*, i8** %q, align 8
  %call256 = call i32 @strcmp(i8* noundef %105, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #7
  %cmp257 = icmp eq i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.else263

if.then259:                                       ; preds = %if.else255
  %106 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv260 = zext i8 %106 to i32
  %or261 = or i32 %conv260, 4
  %conv262 = trunc i32 %or261 to i8
  store i8 %conv262, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end283

if.else263:                                       ; preds = %if.else255
  %107 = load i8*, i8** %q, align 8
  %call264 = call i32 @strcmp(i8* noundef %107, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0)) #7
  %cmp265 = icmp eq i32 %call264, 0
  br i1 %cmp265, label %if.then267, label %if.else271

if.then267:                                       ; preds = %if.else263
  %108 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv268 = zext i8 %108 to i32
  %or269 = or i32 %conv268, 2
  %conv270 = trunc i32 %or269 to i8
  store i8 %conv270, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end282

if.else271:                                       ; preds = %if.else263
  %109 = load i8*, i8** %q, align 8
  %call272 = call i32 @strcmp(i8* noundef %109, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0)) #7
  %cmp273 = icmp eq i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.else279

if.then275:                                       ; preds = %if.else271
  %110 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv276 = zext i8 %110 to i32
  %or277 = or i32 %conv276, 1
  %conv278 = trunc i32 %or277 to i8
  store i8 %conv278, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  br label %if.end281

if.else279:                                       ; preds = %if.else271
  %111 = load i8*, i8** %p, align 8
  %call280 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef %111) #6
  br label %usage

if.end281:                                        ; preds = %if.then275
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.then267
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %if.then259
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %if.then251
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.then243
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.then235
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.then227
  %112 = load i8*, i8** %r, align 8
  store i8* %112, i8** %q, align 8
  br label %while.cond214, !llvm.loop !6

while.end288:                                     ; preds = %while.cond214
  br label %if.end290

if.else289:                                       ; preds = %if.else209
  br label %usage

if.end290:                                        ; preds = %while.end288
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %while.end
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.end137
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.end126
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end115
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end104
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.end93
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.end84
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end73
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.end62
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %if.then52
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %if.then48
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.then44
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.then40
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.then36
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %if.then32
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.then28
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.then24
  br label %if.end308

if.end308:                                        ; preds = %if.end307, %if.then20
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.then16
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then12
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end311
  %113 = load i32, i32* %i, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call312 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #6
  %call313 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0)) #6
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call314 = call i32 @fflush(%struct._IO_FILE* noundef %114) #6
  %115 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %116 = load i8*, i8** %pers, align 8
  %117 = load i8*, i8** %pers, align 8
  %call315 = call i64 @strlen(i8* noundef %117) #7
  %call316 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %115, i8* noundef %116, i64 noundef %call315) #6
  store i32 %call316, i32* %ret, align 4
  %cmp317 = icmp ne i32 %call316, 0
  br i1 %cmp317, label %if.then319, label %if.end323

if.then319:                                       ; preds = %for.end
  %118 = load i32, i32* %ret, align 4
  %arraydecay320 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %118, i8* noundef %arraydecay320, i64 noundef 1024) #6
  %119 = load i32, i32* %ret, align 4
  %arraydecay321 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call322 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i64 0, i64 0), i32 noundef %119, i8* noundef %arraydecay321) #6
  br label %exit

if.end323:                                        ; preds = %for.end
  %call324 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  %call325 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0)) #6
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call326 = call i32 @fflush(%struct._IO_FILE* noundef %120) #6
  %121 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call327 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %serial, i32 noundef 10, i8* noundef %121) #6
  store i32 %call327, i32* %ret, align 4
  %cmp328 = icmp ne i32 %call327, 0
  br i1 %cmp328, label %if.then330, label %if.end334

if.then330:                                       ; preds = %if.end323
  %122 = load i32, i32* %ret, align 4
  %arraydecay331 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %122, i8* noundef %arraydecay331, i64 noundef 1024) #6
  %123 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %123
  %arraydecay332 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call333 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.54, i64 0, i64 0), i32 noundef %sub, i8* noundef %arraydecay332) #6
  br label %exit

if.end334:                                        ; preds = %if.end323
  %call335 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  %124 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %tobool = icmp ne i32 %124, 0
  br i1 %tobool, label %if.end363, label %land.lhs.true336

land.lhs.true336:                                 ; preds = %if.end334
  %125 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call337 = call i64 @strlen(i8* noundef %125) #7
  %tobool338 = icmp ne i64 %call337, 0
  br i1 %tobool338, label %if.then339, label %if.end363

if.then339:                                       ; preds = %land.lhs.true336
  %call340 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0)) #6
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call341 = call i32 @fflush(%struct._IO_FILE* noundef %126) #6
  %127 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call342 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %issuer_crt, i8* noundef %127) #6
  store i32 %call342, i32* %ret, align 4
  %cmp343 = icmp ne i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end350

if.then345:                                       ; preds = %if.then339
  %128 = load i32, i32* %ret, align 4
  %arraydecay346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %128, i8* noundef %arraydecay346, i64 noundef 1024) #6
  %129 = load i32, i32* %ret, align 4
  %sub347 = sub nsw i32 0, %129
  %arraydecay348 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call349 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.56, i64 0, i64 0), i32 noundef %sub347, i8* noundef %arraydecay348) #6
  br label %exit

if.end350:                                        ; preds = %if.then339
  %arraydecay351 = getelementptr inbounds [256 x i8], [256 x i8]* %issuer_name, i64 0, i64 0
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %issuer_crt, i32 0, i32 9
  %call352 = call i32 @mbedtls_x509_dn_gets(i8* noundef %arraydecay351, i64 noundef 256, %struct.mbedtls_asn1_named_data* noundef %subject) #6
  store i32 %call352, i32* %ret, align 4
  %130 = load i32, i32* %ret, align 4
  %cmp353 = icmp slt i32 %130, 0
  br i1 %cmp353, label %if.then355, label %if.end360

if.then355:                                       ; preds = %if.end350
  %131 = load i32, i32* %ret, align 4
  %arraydecay356 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %131, i8* noundef %arraydecay356, i64 noundef 1024) #6
  %132 = load i32, i32* %ret, align 4
  %sub357 = sub nsw i32 0, %132
  %arraydecay358 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call359 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i64 0, i64 0), i32 noundef %sub357, i8* noundef %arraydecay358) #6
  br label %exit

if.end360:                                        ; preds = %if.end350
  %arraydecay361 = getelementptr inbounds [256 x i8], [256 x i8]* %issuer_name, i64 0, i64 0
  store i8* %arraydecay361, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end363

if.end363:                                        ; preds = %if.end360, %land.lhs.true336, %if.end334
  %133 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %tobool364 = icmp ne i32 %133, 0
  br i1 %tobool364, label %if.end393, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %if.end363
  %134 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call366 = call i64 @strlen(i8* noundef %134) #7
  %tobool367 = icmp ne i64 %call366, 0
  br i1 %tobool367, label %if.then368, label %if.end393

if.then368:                                       ; preds = %land.lhs.true365
  %call369 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0)) #6
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call370 = call i32 @fflush(%struct._IO_FILE* noundef %135) #6
  %136 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call371 = call i32 @mbedtls_x509_csr_parse_file(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %136) #6
  store i32 %call371, i32* %ret, align 4
  %cmp372 = icmp ne i32 %call371, 0
  br i1 %cmp372, label %if.then374, label %if.end379

if.then374:                                       ; preds = %if.then368
  %137 = load i32, i32* %ret, align 4
  %arraydecay375 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %137, i8* noundef %arraydecay375, i64 noundef 1024) #6
  %138 = load i32, i32* %ret, align 4
  %sub376 = sub nsw i32 0, %138
  %arraydecay377 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call378 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.59, i64 0, i64 0), i32 noundef %sub376, i8* noundef %arraydecay377) #6
  br label %exit

if.end379:                                        ; preds = %if.then368
  %arraydecay380 = getelementptr inbounds [256 x i8], [256 x i8]* %subject_name, i64 0, i64 0
  %subject381 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %csr, i32 0, i32 4
  %call382 = call i32 @mbedtls_x509_dn_gets(i8* noundef %arraydecay380, i64 noundef 256, %struct.mbedtls_asn1_named_data* noundef %subject381) #6
  store i32 %call382, i32* %ret, align 4
  %139 = load i32, i32* %ret, align 4
  %cmp383 = icmp slt i32 %139, 0
  br i1 %cmp383, label %if.then385, label %if.end390

if.then385:                                       ; preds = %if.end379
  %140 = load i32, i32* %ret, align 4
  %arraydecay386 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %140, i8* noundef %arraydecay386, i64 noundef 1024) #6
  %141 = load i32, i32* %ret, align 4
  %sub387 = sub nsw i32 0, %141
  %arraydecay388 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call389 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i64 0, i64 0), i32 noundef %sub387, i8* noundef %arraydecay388) #6
  br label %exit

if.end390:                                        ; preds = %if.end379
  %arraydecay391 = getelementptr inbounds [256 x i8], [256 x i8]* %subject_name, i64 0, i64 0
  store i8* %arraydecay391, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %csr, i32 0, i32 5
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %subject_key, align 8
  %call392 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end393

if.end393:                                        ; preds = %if.end390, %land.lhs.true365, %if.end363
  %142 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %tobool394 = icmp ne i32 %142, 0
  br i1 %tobool394, label %if.end411, label %land.lhs.true395

land.lhs.true395:                                 ; preds = %if.end393
  %143 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call396 = call i64 @strlen(i8* noundef %143) #7
  %tobool397 = icmp ne i64 %call396, 0
  br i1 %tobool397, label %if.end411, label %if.then398

if.then398:                                       ; preds = %land.lhs.true395
  %call399 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0)) #6
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call400 = call i32 @fflush(%struct._IO_FILE* noundef %144) #6
  %145 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %146 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %147 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call401 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %loaded_subject_key, i8* noundef %145, i8* noundef %146, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %147) #6
  store i32 %call401, i32* %ret, align 4
  %148 = load i32, i32* %ret, align 4
  %cmp402 = icmp ne i32 %148, 0
  br i1 %cmp402, label %if.then404, label %if.end409

if.then404:                                       ; preds = %if.then398
  %149 = load i32, i32* %ret, align 4
  %arraydecay405 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %149, i8* noundef %arraydecay405, i64 noundef 1024) #6
  %150 = load i32, i32* %ret, align 4
  %sub406 = sub nsw i32 0, %150
  %arraydecay407 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call408 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.61, i64 0, i64 0), i32 noundef %sub406, i8* noundef %arraydecay407) #6
  br label %exit

if.end409:                                        ; preds = %if.then398
  %call410 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end411

if.end411:                                        ; preds = %if.end409, %land.lhs.true395, %if.end393
  %call412 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0)) #6
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call413 = call i32 @fflush(%struct._IO_FILE* noundef %151) #6
  %152 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %153 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %154 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call414 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %loaded_issuer_key, i8* noundef %152, i8* noundef %153, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %154) #6
  store i32 %call414, i32* %ret, align 4
  %155 = load i32, i32* %ret, align 4
  %cmp415 = icmp ne i32 %155, 0
  br i1 %cmp415, label %if.then417, label %if.end422

if.then417:                                       ; preds = %if.end411
  %156 = load i32, i32* %ret, align 4
  %arraydecay418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %156, i8* noundef %arraydecay418, i64 noundef 1024) #6
  %157 = load i32, i32* %ret, align 4
  %sub419 = sub nsw i32 0, %157
  %arraydecay420 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call421 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0), i32 noundef %sub419, i8* noundef %arraydecay420) #6
  br label %exit

if.end422:                                        ; preds = %if.end411
  %158 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call423 = call i64 @strlen(i8* noundef %158) #7
  %tobool424 = icmp ne i64 %call423, 0
  br i1 %tobool424, label %if.then425, label %if.end433

if.then425:                                       ; preds = %if.end422
  %pk426 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %issuer_crt, i32 0, i32 13
  %159 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key, align 8
  %160 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call427 = call i32 @mbedtls_pk_check_pair(%struct.mbedtls_pk_context* noundef %pk426, %struct.mbedtls_pk_context* noundef %159, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %160) #6
  %cmp428 = icmp ne i32 %call427, 0
  br i1 %cmp428, label %if.then430, label %if.end432

if.then430:                                       ; preds = %if.then425
  %call431 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %exit

if.end432:                                        ; preds = %if.then425
  br label %if.end433

if.end433:                                        ; preds = %if.end432, %if.end422
  %call434 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  %161 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %tobool435 = icmp ne i32 %161, 0
  br i1 %tobool435, label %if.then436, label %if.end437

if.then436:                                       ; preds = %if.end433
  %162 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8* %162, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %163 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key, align 8
  store %struct.mbedtls_pk_context* %163, %struct.mbedtls_pk_context** %subject_key, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.then436, %if.end433
  %164 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %subject_key, align 8
  call void @mbedtls_x509write_crt_set_subject_key(%struct.mbedtls_x509write_cert* noundef %crt, %struct.mbedtls_pk_context* noundef %164) #6
  %165 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key, align 8
  call void @mbedtls_x509write_crt_set_issuer_key(%struct.mbedtls_x509write_cert* noundef %crt, %struct.mbedtls_pk_context* noundef %165) #6
  %166 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %call438 = call i32 @mbedtls_x509write_crt_set_subject_name(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %166) #6
  store i32 %call438, i32* %ret, align 4
  %cmp439 = icmp ne i32 %call438, 0
  br i1 %cmp439, label %if.then441, label %if.end446

if.then441:                                       ; preds = %if.end437
  %167 = load i32, i32* %ret, align 4
  %arraydecay442 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %167, i8* noundef %arraydecay442, i64 noundef 1024) #6
  %168 = load i32, i32* %ret, align 4
  %sub443 = sub nsw i32 0, %168
  %arraydecay444 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call445 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.65, i64 0, i64 0), i32 noundef %sub443, i8* noundef %arraydecay444) #6
  br label %exit

if.end446:                                        ; preds = %if.end437
  %169 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call447 = call i32 @mbedtls_x509write_crt_set_issuer_name(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %169) #6
  store i32 %call447, i32* %ret, align 4
  %cmp448 = icmp ne i32 %call447, 0
  br i1 %cmp448, label %if.then450, label %if.end455

if.then450:                                       ; preds = %if.end446
  %170 = load i32, i32* %ret, align 4
  %arraydecay451 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %170, i8* noundef %arraydecay451, i64 noundef 1024) #6
  %171 = load i32, i32* %ret, align 4
  %sub452 = sub nsw i32 0, %171
  %arraydecay453 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call454 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.66, i64 0, i64 0), i32 noundef %sub452, i8* noundef %arraydecay453) #6
  br label %exit

if.end455:                                        ; preds = %if.end446
  %call456 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0)) #6
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call457 = call i32 @fflush(%struct._IO_FILE* noundef %172) #6
  %173 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  call void @mbedtls_x509write_crt_set_version(%struct.mbedtls_x509write_cert* noundef %crt, i32 noundef %173) #6
  %174 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  call void @mbedtls_x509write_crt_set_md_alg(%struct.mbedtls_x509write_cert* noundef %crt, i32 noundef %174) #6
  %call458 = call i32 @mbedtls_x509write_crt_set_serial(%struct.mbedtls_x509write_cert* noundef %crt, %struct.mbedtls_mpi* noundef %serial) #6
  store i32 %call458, i32* %ret, align 4
  %175 = load i32, i32* %ret, align 4
  %cmp459 = icmp ne i32 %175, 0
  br i1 %cmp459, label %if.then461, label %if.end466

if.then461:                                       ; preds = %if.end455
  %176 = load i32, i32* %ret, align 4
  %arraydecay462 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %176, i8* noundef %arraydecay462, i64 noundef 1024) #6
  %177 = load i32, i32* %ret, align 4
  %sub463 = sub nsw i32 0, %177
  %arraydecay464 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call465 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.68, i64 0, i64 0), i32 noundef %sub463, i8* noundef %arraydecay464) #6
  br label %exit

if.end466:                                        ; preds = %if.end455
  %178 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %179 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call467 = call i32 @mbedtls_x509write_crt_set_validity(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %178, i8* noundef %179) #6
  store i32 %call467, i32* %ret, align 4
  %180 = load i32, i32* %ret, align 4
  %cmp468 = icmp ne i32 %180, 0
  br i1 %cmp468, label %if.then470, label %if.end475

if.then470:                                       ; preds = %if.end466
  %181 = load i32, i32* %ret, align 4
  %arraydecay471 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %181, i8* noundef %arraydecay471, i64 noundef 1024) #6
  %182 = load i32, i32* %ret, align 4
  %sub472 = sub nsw i32 0, %182
  %arraydecay473 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call474 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.69, i64 0, i64 0), i32 noundef %sub472, i8* noundef %arraydecay473) #6
  br label %exit

if.end475:                                        ; preds = %if.end466
  %call476 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  %183 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp477 = icmp eq i32 %183, 2
  br i1 %cmp477, label %land.lhs.true479, label %if.end495

land.lhs.true479:                                 ; preds = %if.end475
  %184 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp480 = icmp ne i32 %184, 0
  br i1 %cmp480, label %if.then482, label %if.end495

if.then482:                                       ; preds = %land.lhs.true479
  %call483 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.70, i64 0, i64 0)) #6
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call484 = call i32 @fflush(%struct._IO_FILE* noundef %185) #6
  %186 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %187 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %call485 = call i32 @mbedtls_x509write_crt_set_basic_constraints(%struct.mbedtls_x509write_cert* noundef %crt, i32 noundef %186, i32 noundef %187) #6
  store i32 %call485, i32* %ret, align 4
  %188 = load i32, i32* %ret, align 4
  %cmp486 = icmp ne i32 %188, 0
  br i1 %cmp486, label %if.then488, label %if.end493

if.then488:                                       ; preds = %if.then482
  %189 = load i32, i32* %ret, align 4
  %arraydecay489 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %189, i8* noundef %arraydecay489, i64 noundef 1024) #6
  %190 = load i32, i32* %ret, align 4
  %sub490 = sub nsw i32 0, %190
  %arraydecay491 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call492 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.71, i64 0, i64 0), i32 noundef %sub490, i8* noundef %arraydecay491) #6
  br label %exit

if.end493:                                        ; preds = %if.then482
  %call494 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end495

if.end495:                                        ; preds = %if.end493, %land.lhs.true479, %if.end475
  %191 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp496 = icmp eq i32 %191, 2
  br i1 %cmp496, label %land.lhs.true498, label %if.end514

land.lhs.true498:                                 ; preds = %if.end495
  %192 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %cmp499 = icmp ne i32 %192, 0
  br i1 %cmp499, label %if.then501, label %if.end514

if.then501:                                       ; preds = %land.lhs.true498
  %call502 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i64 0, i64 0)) #6
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call503 = call i32 @fflush(%struct._IO_FILE* noundef %193) #6
  %call504 = call i32 @mbedtls_x509write_crt_set_subject_key_identifier(%struct.mbedtls_x509write_cert* noundef %crt) #6
  store i32 %call504, i32* %ret, align 4
  %194 = load i32, i32* %ret, align 4
  %cmp505 = icmp ne i32 %194, 0
  br i1 %cmp505, label %if.then507, label %if.end512

if.then507:                                       ; preds = %if.then501
  %195 = load i32, i32* %ret, align 4
  %arraydecay508 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %195, i8* noundef %arraydecay508, i64 noundef 1024) #6
  %196 = load i32, i32* %ret, align 4
  %sub509 = sub nsw i32 0, %196
  %arraydecay510 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call511 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.73, i64 0, i64 0), i32 noundef %sub509, i8* noundef %arraydecay510) #6
  br label %exit

if.end512:                                        ; preds = %if.then501
  %call513 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end514

if.end514:                                        ; preds = %if.end512, %land.lhs.true498, %if.end495
  %197 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp515 = icmp eq i32 %197, 2
  br i1 %cmp515, label %land.lhs.true517, label %if.end533

land.lhs.true517:                                 ; preds = %if.end514
  %198 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %cmp518 = icmp ne i32 %198, 0
  br i1 %cmp518, label %if.then520, label %if.end533

if.then520:                                       ; preds = %land.lhs.true517
  %call521 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0)) #6
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call522 = call i32 @fflush(%struct._IO_FILE* noundef %199) #6
  %call523 = call i32 @mbedtls_x509write_crt_set_authority_key_identifier(%struct.mbedtls_x509write_cert* noundef %crt) #6
  store i32 %call523, i32* %ret, align 4
  %200 = load i32, i32* %ret, align 4
  %cmp524 = icmp ne i32 %200, 0
  br i1 %cmp524, label %if.then526, label %if.end531

if.then526:                                       ; preds = %if.then520
  %201 = load i32, i32* %ret, align 4
  %arraydecay527 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %201, i8* noundef %arraydecay527, i64 noundef 1024) #6
  %202 = load i32, i32* %ret, align 4
  %sub528 = sub nsw i32 0, %202
  %arraydecay529 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call530 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.75, i64 0, i64 0), i32 noundef %sub528, i8* noundef %arraydecay529) #6
  br label %exit

if.end531:                                        ; preds = %if.then520
  %call532 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end533

if.end533:                                        ; preds = %if.end531, %land.lhs.true517, %if.end514
  %203 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp534 = icmp eq i32 %203, 2
  br i1 %cmp534, label %land.lhs.true536, label %if.end554

land.lhs.true536:                                 ; preds = %if.end533
  %204 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv537 = zext i8 %204 to i32
  %cmp538 = icmp ne i32 %conv537, 0
  br i1 %cmp538, label %if.then540, label %if.end554

if.then540:                                       ; preds = %land.lhs.true536
  %call541 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i64 0, i64 0)) #6
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call542 = call i32 @fflush(%struct._IO_FILE* noundef %205) #6
  %206 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  %conv543 = zext i8 %206 to i32
  %call544 = call i32 @mbedtls_x509write_crt_set_key_usage(%struct.mbedtls_x509write_cert* noundef %crt, i32 noundef %conv543) #6
  store i32 %call544, i32* %ret, align 4
  %207 = load i32, i32* %ret, align 4
  %cmp545 = icmp ne i32 %207, 0
  br i1 %cmp545, label %if.then547, label %if.end552

if.then547:                                       ; preds = %if.then540
  %208 = load i32, i32* %ret, align 4
  %arraydecay548 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %208, i8* noundef %arraydecay548, i64 noundef 1024) #6
  %209 = load i32, i32* %ret, align 4
  %sub549 = sub nsw i32 0, %209
  %arraydecay550 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call551 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.77, i64 0, i64 0), i32 noundef %sub549, i8* noundef %arraydecay550) #6
  br label %exit

if.end552:                                        ; preds = %if.then540
  %call553 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end554

if.end554:                                        ; preds = %if.end552, %land.lhs.true536, %if.end533
  %210 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp555 = icmp eq i32 %210, 2
  br i1 %cmp555, label %land.lhs.true557, label %if.end574

land.lhs.true557:                                 ; preds = %if.end554
  %211 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %conv558 = zext i8 %211 to i32
  %cmp559 = icmp ne i32 %conv558, 0
  br i1 %cmp559, label %if.then561, label %if.end574

if.then561:                                       ; preds = %land.lhs.true557
  %call562 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0)) #6
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call563 = call i32 @fflush(%struct._IO_FILE* noundef %212) #6
  %213 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 1
  %call564 = call i32 @mbedtls_x509write_crt_set_ns_cert_type(%struct.mbedtls_x509write_cert* noundef %crt, i8 noundef zeroext %213) #6
  store i32 %call564, i32* %ret, align 4
  %214 = load i32, i32* %ret, align 4
  %cmp565 = icmp ne i32 %214, 0
  br i1 %cmp565, label %if.then567, label %if.end572

if.then567:                                       ; preds = %if.then561
  %215 = load i32, i32* %ret, align 4
  %arraydecay568 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %215, i8* noundef %arraydecay568, i64 noundef 1024) #6
  %216 = load i32, i32* %ret, align 4
  %sub569 = sub nsw i32 0, %216
  %arraydecay570 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call571 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.79, i64 0, i64 0), i32 noundef %sub569, i8* noundef %arraydecay570) #6
  br label %exit

if.end572:                                        ; preds = %if.then561
  %call573 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end574

if.end574:                                        ; preds = %if.end572, %land.lhs.true557, %if.end554
  %call575 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0)) #6
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call576 = call i32 @fflush(%struct._IO_FILE* noundef %217) #6
  %218 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %219 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call577 = call i32 @write_certificate(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %218, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %219) #6
  store i32 %call577, i32* %ret, align 4
  %cmp578 = icmp ne i32 %call577, 0
  br i1 %cmp578, label %if.then580, label %if.end585

if.then580:                                       ; preds = %if.end574
  %220 = load i32, i32* %ret, align 4
  %arraydecay581 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %220, i8* noundef %arraydecay581, i64 noundef 1024) #6
  %221 = load i32, i32* %ret, align 4
  %sub582 = sub nsw i32 0, %221
  %arraydecay583 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call584 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.81, i64 0, i64 0), i32 noundef %sub582, i8* noundef %arraydecay583) #6
  br label %exit

if.end585:                                        ; preds = %if.end574
  %call586 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #6
  store i32 0, i32* %exit_code, align 4
  br label %exit

exit:                                             ; preds = %if.end585, %if.then580, %if.then567, %if.then547, %if.then526, %if.then507, %if.then488, %if.then470, %if.then461, %if.then450, %if.then441, %if.then430, %if.then417, %if.then404, %if.then385, %if.then374, %if.then355, %if.then345, %if.then330, %if.then319, %usage
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #6
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %issuer_crt) #6
  call void @mbedtls_x509write_crt_free(%struct.mbedtls_x509write_cert* noundef %crt) #6
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %loaded_subject_key) #6
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %loaded_issuer_key) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %serial) #6
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #6
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #6
  %222 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %222) #8
  unreachable
}

declare dso_local void @mbedtls_x509write_crt_init(%struct.mbedtls_x509write_cert* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_string(i8* noundef) #2

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_dn_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_x509_csr_parse_file(%struct.mbedtls_x509_csr* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_check_pair(%struct.mbedtls_pk_context* noundef, %struct.mbedtls_pk_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_x509write_crt_set_subject_key(%struct.mbedtls_x509write_cert* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_x509write_crt_set_issuer_key(%struct.mbedtls_x509write_cert* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_subject_name(%struct.mbedtls_x509write_cert* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_issuer_name(%struct.mbedtls_x509write_cert* noundef, i8* noundef) #2

declare dso_local void @mbedtls_x509write_crt_set_version(%struct.mbedtls_x509write_cert* noundef, i32 noundef) #2

declare dso_local void @mbedtls_x509write_crt_set_md_alg(%struct.mbedtls_x509write_cert* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_serial(%struct.mbedtls_x509write_cert* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_validity(%struct.mbedtls_x509write_cert* noundef, i8* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_basic_constraints(%struct.mbedtls_x509write_cert* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_subject_key_identifier(%struct.mbedtls_x509write_cert* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_authority_key_identifier(%struct.mbedtls_x509write_cert* noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_key_usage(%struct.mbedtls_x509write_cert* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_x509write_crt_set_ns_cert_type(%struct.mbedtls_x509write_cert* noundef, i8 noundef zeroext) #2

declare dso_local void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef) #2

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_x509write_crt_free(%struct.mbedtls_x509write_cert* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

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
