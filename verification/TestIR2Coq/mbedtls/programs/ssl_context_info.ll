; ModuleID = 'ssl/ssl_context_info.c'
source_filename = "ssl/ssl_context_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_md_info_t = type opaque

@b64_file = dso_local global %struct._IO_FILE* null, align 8
@conf_keep_peer_certificate = dso_local global i8 1, align 1
@conf_dtls_proto = dso_local global i8 1, align 1
@debug = dso_local global i8 0, align 1
@alloc_err = dso_local constant [24 x i8] c"Cannot allocate memory\0A\00", align 16
@buf_ln_err = dso_local constant [58 x i8] c"Buffer does not have enough data to complete the parsing\0A\00", align 16
@.str = private unnamed_addr constant [11 x i8] c"%s v%d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ssl_context_info\00", align 1
@.str.2 = private unnamed_addr constant [212 x i8] c"\0AThis program is used to deserialize an Mbed TLS SSL session from the base64 code provided\0Ain the text file. The program can deserialize many codes from one file, but they must be\0Aseparated, e.g. by a newline.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [642 x i8] c"Usage:\0A\09-f path            - Path to the file with base64 code\0A\09-v                 - Show version\0A\09-h                 - Show this usage\0A\09-d                 - Print more information\0A\09--keep-peer-cert=0 - Use this option if you know that the Mbed TLS library\0A\09                     has been compiled with the MBEDTLS_SSL_KEEP_PEER_CERTIFICATE\0A\09                     flag. You can also use it if there are some problems with reading\0A\09                     the information about certificate\0A\09--dtls-protocol=0  - Use this option if you know that the Mbed TLS library\0A\09                     has been compiled without the MBEDTLS_SSL_PROTO_DTLS flag\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"debug: \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"File path is empty\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Cannot specify more than one file with -f\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Cannot find file \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"--keep-peer-cert=0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"--dtls-protocol=0\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@print_time.format = internal constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"512\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"The code found is too small to be a SSL context.\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"The code found is too large by %zu bytes.\0A\00", align 1
@.str.36 = private unnamed_addr constant [64 x i8] c"The length of the base64 code found should be a multiple of 4.\0A\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"Too many bad symbols detected. File check aborted.\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"End of file\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\0ACertificate:\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Invalid format of X.509 - %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Cannot deserialize:\0A\09\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Cannot write to the output - %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"\0ASession info:\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"\09start time     : \00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Ciphersuite ID: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Cannot find ciphersuite info\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"\09ciphersuite    : %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"\09cipher flags   : 0x%02X\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Cannot find cipher info\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"\09cipher         : %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Cannot find Message-Digest info\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"\09Message-Digest : %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"\09compression    : %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Session id length: %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"\09session ID     : \00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"\09                 \00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"\09master secret  : \00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"\09verify result  : 0x%08X\0A\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Certificate length: %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"\09Peer digest    : \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"MD5\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"SHA1\0A\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"SHA224\0A\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"SHA256\0A\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"SHA384\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"SHA512\0A\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"RIPEMD160\0A\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"undefined or erroneous\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"Message-Digest length: %u\0A\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"\09Peer digest cert : \00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"\09                   \00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"\0ATicket:\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"Ticket length: %u\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"\09lifetime : %u sec.\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"\0ASession others:\0A\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"\09MFL                      : %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"\09negotiate truncated HMAC : %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"\09Encrypt-then-MAC         : %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"%i bytes left to analyze from session\0A\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"\0AMbed TLS version:\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"\09major    %u\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"\09minor    %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"\09path     %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [45 x i8] c"\0AEnabled session and context configuration:\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Session config flags 0x%04X\0A\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"Context config flags 0x%06X\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"MBEDTLS_HAVE_TIME\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"MBEDTLS_X509_CRT_PARSE_C\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"MBEDTLS_SSL_MAX_FRAGMENT_LENGTH\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"MBEDTLS_SSL_ENCRYPT_THEN_MAC\00", align 1
@.str.93 = private unnamed_addr constant [28 x i8] c"MBEDTLS_SSL_SESSION_TICKETS\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"MBEDTLS_SSL_SESSION_TICKETS and client\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"MBEDTLS_SSL_DTLS_CONNECTION_ID\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"MBEDTLS_SSL_DTLS_ANTI_REPLAY\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"MBEDTLS_SSL_ALPN\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"Session length %u\0A\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"\0ARandom bytes:\0A\09\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"\0AContext others:\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"In CID length %u\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"\09in CID                             : \00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"Out CID length %u\0A\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"\09out CID                            : \00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"\09bad MAC seen number                : %u\0A\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"\09last validated record sequence no. : \00", align 1
@.str.107 = private unnamed_addr constant [39 x i8] c"\09bitmask for replay detection       : \00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"\09DTLS datagram packing              : %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"\09outgoing record sequence no.       : \00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"\09MTU                                : %u\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"ALPN length %u\0A\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"\09ALPN negotiation                   : \00", align 1
@.str.113 = private unnamed_addr constant [32 x i8] c"\09ALPN negotiation is incorrect\0A\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"not selected\0A\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"%i bytes left to analyze from context\0A\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"\0ADeserializing number %u:\0A\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"\0ABase64 code:\0A\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"base64 code cannot be decoded - %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"\0ADecoded data in hex:\0A\09\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"Finished. Found %u base64 codes\0A\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"Finished. No valid base64 code found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_version() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0, i32 noundef 1) #6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_usage() #0 {
entry:
  call void @print_version() #6
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([212 x i8], [212 x i8]* @.str.2, i64 0, i64 0)) #6
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([642 x i8], [642 x i8]* @.str.3, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_dbg(i8* noundef %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8, i8* @debug, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #6
  %1 = load i8*, i8** %str.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call3 = call i32 @vprintf(i8* noundef %1, %struct.__va_list_tag* noundef %arraydecay2) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* noundef %2) #6
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_err(i8* noundef %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* noundef %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call4 = call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef %3, %struct.__va_list_tag* noundef %arraydecay3) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* noundef %4) #6
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_exit() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %cmp = icmp ne %struct._IO_FILE* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef -1) #7
  unreachable
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_arguments(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_usage() #6
  call void @error_exit() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  store i8 1, i8* @debug, align 1
  br label %if.end53

if.else:                                          ; preds = %while.body
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @print_usage() #6
  br label %if.end52

if.else9:                                         ; preds = %if.else
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 %idxprom10
  %11 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else9
  call void @print_version() #6
  br label %if.end51

if.else15:                                        ; preds = %if.else9
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %12, i64 %idxprom16
  %14 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else35

if.then20:                                        ; preds = %if.else15
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp21 = icmp sge i32 %inc, %16
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #6
  call void @error_exit() #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %cmp24 = icmp ne %struct._IO_FILE* null, %17
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)) #6
  call void @error_exit() #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %18, i64 %idxprom27
  %20 = load i8*, i8** %arrayidx28, align 8
  %call29 = call %struct._IO_FILE* @fopen(i8* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call29, %struct._IO_FILE** @b64_file, align 8
  %cmp30 = icmp eq %struct._IO_FILE* %call29, null
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  %21 = load i8**, i8*** %argv.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds i8*, i8** %21, i64 %idxprom32
  %23 = load i8*, i8** %arrayidx33, align 8
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* noundef %23) #6
  call void @error_exit() #6
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26
  br label %if.end50

if.else35:                                        ; preds = %if.else15
  %24 = load i8**, i8*** %argv.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds i8*, i8** %24, i64 %idxprom36
  %26 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #8
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else35
  store i8 0, i8* @conf_keep_peer_certificate, align 1
  br label %if.end49

if.else41:                                        ; preds = %if.else35
  %27 = load i8**, i8*** %argv.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds i8*, i8** %27, i64 %idxprom42
  %29 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #8
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else41
  store i8 0, i8* @conf_dtls_proto, align 1
  br label %if.end48

if.else47:                                        ; preds = %if.else41
  call void @print_usage() #6
  call void @error_exit() #6
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then40
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end34
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then14
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then8
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then3
  %30 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %30, 1
  store i32 %inc54, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_b64(i8* noundef %b, i64 noundef %len) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %end, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %b.addr, align 8
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  %cmp1 = icmp ugt i64 %inc, 75
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #6
  store i64 0, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %b.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %b.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv) #6
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* noundef %7) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hex(i8* noundef %b, i64 noundef %len, i64 noundef %in_line, i8* noundef %prefix) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %in_line.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %in_line, i64* %in_line.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %end, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %prefix.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load i8*, i8** %b.addr, align 8
  %4 = load i8*, i8** %end, align 8
  %cmp1 = icmp ult i8* %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  %6 = load i64, i64* %in_line.addr, align 8
  %cmp2 = icmp ugt i64 %inc, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %7 = load i8*, i8** %prefix.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %7) #6
  store i64 1, i64* %i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body
  %8 = load i8*, i8** %b.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %b.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv) #6
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %10) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_time(i64* noundef %time) #0 {
entry:
  %time.addr = alloca i64*, align 8
  %buf = alloca [20 x i8], align 16
  %t = alloca %struct.tm*, align 8
  store i64* %time, i64** %time.addr, align 8
  %0 = load i64*, i64** %time.addr, align 8
  %call = call %struct.tm* @gmtime(i64* noundef %0) #9
  store %struct.tm* %call, %struct.tm** %t, align 8
  %1 = load %struct.tm*, %struct.tm** %t, align 8
  %cmp = icmp ne %struct.tm* null, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %2 = load %struct.tm*, %struct.tm** %t, align 8
  %call1 = call i64 @strftime(i8* noundef %arraydecay, i64 noundef 20, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @print_time.format, i64 0, i64 0), %struct.tm* noundef %2) #9
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %arraydecay2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64* noundef) #5

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_if_bit(i8* noundef %str, i32 noundef %bit, i32 noundef %val) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %bit.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %bit, i32* %bit.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %bit.addr, align 4
  %1 = load i32, i32* %val.addr, align 4
  %and = and i32 %0, %1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_enabled_str(i32 noundef %is_en) #0 {
entry:
  %is_en.addr = alloca i32, align 4
  store i32 %is_en, i32* %is_en.addr, align 4
  %0 = load i32, i32* %is_en.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_mfl_str(i32 noundef %mfl_code) #0 {
entry:
  %retval = alloca i8*, align 8
  %mfl_code.addr = alloca i32, align 4
  store i32 %mfl_code, i32* %mfl_code.addr, align 4
  %0 = load i32, i32* %mfl_code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_next_b64_code(i8** noundef %b64, i64* noundef %max_len) #0 {
entry:
  %retval = alloca i64, align 8
  %b64.addr = alloca i8**, align 8
  %max_len.addr = alloca i64*, align 8
  %valid_balance = alloca i32, align 4
  %len = alloca i64, align 8
  %pad = alloca i8, align 1
  %c = alloca i32, align 4
  %c_valid = alloca i8, align 1
  %ptr = alloca i8*, align 8
  %new_size = alloca i64, align 8
  store i8** %b64, i8*** %b64.addr, align 8
  store i64* %max_len, i64** %max_len.addr, align 8
  store i32 0, i32* %valid_balance, align 4
  store i64 0, i64* %len, align 8
  store i8 0, i8* %pad, align 1
  store i32 0, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end99, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 -1, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8 0, i8* %c_valid, align 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* noundef %1) #6
  store i32 %call, i32* %c, align 4
  %2 = load i8, i8* %pad, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp sgt i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %3, 61
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8, i8* %pad, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  store i8 1, i8* %c_valid, align 1
  store i8 2, i8* %pad, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %if.then
  br label %if.end48

if.else:                                          ; preds = %while.body
  %5 = load i32, i32* %c, align 4
  %cmp9 = icmp sge i32 %5, 65
  br i1 %cmp9, label %land.lhs.true11, label %lor.lhs.false

land.lhs.true11:                                  ; preds = %if.else
  %6 = load i32, i32* %c, align 4
  %cmp12 = icmp sle i32 %6, 90
  br i1 %cmp12, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11, %if.else
  %7 = load i32, i32* %c, align 4
  %cmp14 = icmp sge i32 %7, 97
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false19

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %c, align 4
  %cmp17 = icmp sle i32 %8, 122
  br i1 %cmp17, label %if.then31, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16, %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp20 = icmp sge i32 %9, 48
  br i1 %cmp20, label %land.lhs.true22, label %lor.lhs.false25

land.lhs.true22:                                  ; preds = %lor.lhs.false19
  %10 = load i32, i32* %c, align 4
  %cmp23 = icmp sle i32 %10, 57
  br i1 %cmp23, label %if.then31, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true22, %lor.lhs.false19
  %11 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %11, 43
  br i1 %cmp26, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %12 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %12, 47
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %lor.lhs.false28, %lor.lhs.false25, %land.lhs.true22, %land.lhs.true16, %land.lhs.true11
  store i8 1, i8* %c_valid, align 1
  br label %if.end47

if.else32:                                        ; preds = %lor.lhs.false28
  %13 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %13, 61
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else32
  store i8 1, i8* %c_valid, align 1
  store i8 1, i8* %pad, align 1
  br label %if.end46

if.else36:                                        ; preds = %if.else32
  %14 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %14, 45
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else36
  store i32 43, i32* %c, align 4
  store i8 1, i8* %c_valid, align 1
  br label %if.end45

if.else40:                                        ; preds = %if.else36
  %15 = load i32, i32* %c, align 4
  %cmp41 = icmp eq i32 %15, 95
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.else40
  store i32 47, i32* %c, align 4
  store i8 1, i8* %c_valid, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else40
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then35
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then31
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end
  %16 = load i8, i8* %c_valid, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.then49, label %if.else73

if.then49:                                        ; preds = %if.end48
  %17 = load i32, i32* %valid_balance, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %valid_balance, align 4
  %18 = load i64, i64* %len, align 8
  %19 = load i64*, i64** %max_len.addr, align 8
  %20 = load i64, i64* %19, align 8
  %cmp50 = icmp ult i64 %18, %20
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.then49
  %21 = load i32, i32* %c, align 4
  %conv53 = trunc i32 %21 to i8
  %22 = load i8**, i8*** %b64.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %len, align 8
  %inc54 = add i64 %24, 1
  store i64 %inc54, i64* %len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %conv53, i8* %arrayidx, align 1
  br label %if.end72

if.else55:                                        ; preds = %if.then49
  %25 = load i64*, i64** %max_len.addr, align 8
  %26 = load i64, i64* %25, align 8
  %cmp56 = icmp ult i64 %26, 44740555
  br i1 %cmp56, label %if.then58, label %if.else69

if.then58:                                        ; preds = %if.else55
  %27 = load i64*, i64** %max_len.addr, align 8
  %28 = load i64, i64* %27, align 8
  %cmp59 = icmp ugt i64 44736459, %28
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then58
  %29 = load i64*, i64** %max_len.addr, align 8
  %30 = load i64, i64* %29, align 8
  %add = add i64 %30, 4096
  br label %cond.end

cond.false:                                       ; preds = %if.then58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 44740555, %cond.false ]
  store i64 %cond, i64* %new_size, align 8
  %31 = load i8**, i8*** %b64.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %new_size, align 8
  %call61 = call i8* @realloc(i8* noundef %32, i64 noundef %33) #9
  store i8* %call61, i8** %ptr, align 8
  %34 = load i8*, i8** %ptr, align 8
  %cmp62 = icmp eq i8* null, %34
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %cond.end
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @alloc_err, i64 0, i64 0)) #6
  store i64 0, i64* %retval, align 8
  br label %return

if.end65:                                         ; preds = %cond.end
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i8**, i8*** %b64.addr, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %new_size, align 8
  %38 = load i64*, i64** %max_len.addr, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %c, align 4
  %conv66 = trunc i32 %39 to i8
  %40 = load i8**, i8*** %b64.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %len, align 8
  %inc67 = add i64 %42, 1
  store i64 %inc67, i64* %len, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %conv66, i8* %arrayidx68, align 1
  br label %if.end71

if.else69:                                        ; preds = %if.else55
  %43 = load i64, i64* %len, align 8
  %inc70 = add i64 %43, 1
  store i64 %inc70, i64* %len, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.end65
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then52
  br label %if.end95

if.else73:                                        ; preds = %if.end48
  %44 = load i64, i64* %len, align 8
  %cmp74 = icmp ugt i64 %44, 0
  br i1 %cmp74, label %if.then76, label %if.else92

if.then76:                                        ; preds = %if.else73
  %45 = load i32, i32* %valid_balance, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %valid_balance, align 4
  %46 = load i64, i64* %len, align 8
  %cmp77 = icmp ult i64 %46, 84
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then76
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0)) #6
  store i8 0, i8* %pad, align 1
  store i64 0, i64* %len, align 8
  br label %if.end91

if.else80:                                        ; preds = %if.then76
  %47 = load i64, i64* %len, align 8
  %48 = load i64*, i64** %max_len.addr, align 8
  %49 = load i64, i64* %48, align 8
  %cmp81 = icmp ugt i64 %47, %49
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  %50 = load i64, i64* %len, align 8
  %51 = load i64*, i64** %max_len.addr, align 8
  %52 = load i64, i64* %51, align 8
  %sub = sub i64 %50, %52
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0), i64 noundef %sub) #6
  store i8 0, i8* %pad, align 1
  store i64 0, i64* %len, align 8
  br label %if.end90

if.else84:                                        ; preds = %if.else80
  %53 = load i64, i64* %len, align 8
  %rem = urem i64 %53, 4
  %cmp85 = icmp ne i64 %rem, 0
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.else84
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.36, i64 0, i64 0)) #6
  store i8 0, i8* %pad, align 1
  store i64 0, i64* %len, align 8
  br label %if.end89

if.else88:                                        ; preds = %if.else84
  %54 = load i64, i64* %len, align 8
  store i64 %54, i64* %retval, align 8
  br label %return

if.end89:                                         ; preds = %if.then87
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then83
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then79
  br label %if.end94

if.else92:                                        ; preds = %if.else73
  %55 = load i32, i32* %valid_balance, align 4
  %dec93 = add nsw i32 %55, -1
  store i32 %dec93, i32* %valid_balance, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.end91
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end72
  %56 = load i32, i32* %valid_balance, align 4
  %cmp96 = icmp slt i32 %56, -100
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.37, i64 0, i64 0)) #6
  store i64 0, i64* %retval, align 8
  br label %return

if.end99:                                         ; preds = %if.end95
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0)) #6
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then98, %if.else88, %if.then64
  %57 = load i64, i64* %retval, align 8
  ret i64 %57
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_deserialized_ssl_cert(i8* noundef %ssl, i32 noundef %len) #0 {
entry:
  %ssl.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %crt = alloca %struct.mbedtls_x509_crt, align 8
  %ret = alloca i32, align 4
  %str = alloca [4096 x i8], align 16
  %current = alloca %struct.mbedtls_x509_crt*, align 8
  store i8* %ssl, i8** %ssl.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #6
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %crt) #6
  %0 = load i8*, i8** %ssl.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %conv = zext i32 %1 to i64
  %call1 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %crt, i8* noundef %0, i64 noundef %conv) #6
  store i32 %call1, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %3, i8* noundef %arraydecay, i64 noundef 4096) #6
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* noundef %arraydecay3) #6
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #6
  %4 = load i8*, i8** %ssl.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %conv5 = zext i32 %5 to i64
  call void @print_hex(i8* noundef %4, i64 noundef %conv5, i64 noundef 25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %if.end21

if.else:                                          ; preds = %entry
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.else
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %current, align 8
  %cmp6 = icmp ne %struct.mbedtls_x509_crt* %6, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %current, align 8
  %call9 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay8, i64 noundef 4096, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %7) #6
  store i32 %call9, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp10 = icmp sgt i32 0, %8
  br i1 %cmp10, label %if.then12, label %if.else15

if.then12:                                        ; preds = %while.body
  %9 = load i32, i32* %ret, align 4
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %9, i8* noundef %arraydecay13, i64 noundef 4096) #6
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), i8* noundef %arraydecay14) #6
  br label %if.end

if.else15:                                        ; preds = %while.body
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i64 0, i64 0
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef %arraydecay16) #6
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then12
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %current, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %10, i32 0, i32 29
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %11, %struct.mbedtls_x509_crt** %current, align 8
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %current, align 8
  %tobool = icmp ne %struct.mbedtls_x509_crt* %12, null
  br i1 %tobool, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.then
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #6
  ret void
}

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_deserialized_ssl_session(i8* noundef %ssl, i32 noundef %len, i32 noundef %session_cfg_flag) #0 {
entry:
  %ssl.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %session_cfg_flag.addr = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ciphersuite_id = alloca i32, align 4
  %cert_len = alloca i32, align 4
  %ticket_len = alloca i32, align 4
  %verify_result = alloca i32, align 4
  %ticket_lifetime = alloca i32, align 4
  %end = alloca i8*, align 8
  %start = alloca i64, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i8* %ssl, i8** %ssl.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %session_cfg_flag, i32* %session_cfg_flag.addr, align 4
  %0 = load i8*, i8** %ssl.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)) #6
  %2 = load i32, i32* %session_cfg_flag.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i8*, i8** %end, align 8
  %4 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %do.body
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %ssl.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %shl = shl i64 %conv, 56
  %7 = load i8*, i8** %ssl.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i64
  %shl4 = shl i64 %conv3, 48
  %or = or i64 %shl, %shl4
  %9 = load i8*, i8** %ssl.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i64
  %shl7 = shl i64 %conv6, 40
  %or8 = or i64 %or, %shl7
  %11 = load i8*, i8** %ssl.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %12 to i64
  %shl11 = shl i64 %conv10, 32
  %or12 = or i64 %or8, %shl11
  %13 = load i8*, i8** %ssl.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %14 to i64
  %shl15 = shl i64 %conv14, 24
  %or16 = or i64 %or12, %shl15
  %15 = load i8*, i8** %ssl.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %16 to i64
  %shl19 = shl i64 %conv18, 16
  %or20 = or i64 %or16, %shl19
  %17 = load i8*, i8** %ssl.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i64
  %shl23 = shl i64 %conv22, 8
  %or24 = or i64 %or20, %shl23
  %19 = load i8*, i8** %ssl.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i64
  %or27 = or i64 %or24, %conv26
  store i64 %or27, i64* %start, align 8
  %21 = load i8*, i8** %ssl.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %add.ptr28, i8** %ssl.addr, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0)) #6
  call void @print_time(i64* noundef %start) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end, %entry
  br label %do.body31

do.body31:                                        ; preds = %if.end30
  %22 = load i8*, i8** %end, align 8
  %23 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast32 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %23 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %cmp35 = icmp slt i64 %sub.ptr.sub34, 2
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body31
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end38:                                         ; preds = %do.body31
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  %24 = load i8*, i8** %ssl.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %shl42 = shl i32 %conv41, 8
  %26 = load i8*, i8** %ssl.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  %or45 = or i32 %shl42, %conv44
  store i32 %or45, i32* %ciphersuite_id, align 4
  %28 = load i32, i32* %ciphersuite_id, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i32 noundef %28) #6
  %29 = load i8*, i8** %ssl.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr46, i8** %ssl.addr, align 8
  %30 = load i32, i32* %ciphersuite_id, align 4
  %call47 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %30) #6
  store %struct.mbedtls_ssl_ciphersuite_t* %call47, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %31 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cmp48 = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %31, null
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %do.end39
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %if.end72

if.else:                                          ; preds = %do.end39
  %32 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i8* noundef %33) #6
  %34 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %flags = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %34, i32 0, i32 5
  %35 = load i8, i8* %flags, align 1
  %conv52 = zext i8 %35 to i32
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv52) #6
  %36 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cipher = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %36, i32 0, i32 2
  %37 = load i8, i8* %cipher, align 8
  %conv54 = zext i8 %37 to i32
  %call55 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %conv54) #6
  store %struct.mbedtls_cipher_info_t* %call55, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %38 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp56 = icmp eq %struct.mbedtls_cipher_info_t* %38, null
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #6
  br label %if.end62

if.else59:                                        ; preds = %if.else
  %39 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %name60 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %39, i32 0, i32 3
  %40 = load i8*, i8** %name60, align 8
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i8* noundef %40) #6
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then58
  %41 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %41, i32 0, i32 3
  %42 = load i8, i8* %mac, align 1
  %conv63 = zext i8 %42 to i32
  %call64 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %conv63) #6
  store %struct.mbedtls_md_info_t* %call64, %struct.mbedtls_md_info_t** %md_info, align 8
  %43 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp65 = icmp eq %struct.mbedtls_md_info_t* %43, null
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.end62
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.end71

if.else68:                                        ; preds = %if.end62
  %44 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call69 = call i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef %44) #6
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i8* noundef %call69) #6
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then67
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then50
  br label %do.body73

do.body73:                                        ; preds = %if.end72
  %45 = load i8*, i8** %end, align 8
  %46 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast74 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %46 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %cmp77 = icmp slt i64 %sub.ptr.sub76, 1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body73
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end80:                                         ; preds = %do.body73
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  %47 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %ssl.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv82 = zext i8 %48 to i32
  %call83 = call i8* @get_enabled_str(i32 noundef %conv82) #6
  %call84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef %call83) #6
  br label %do.body85

do.body85:                                        ; preds = %do.end81
  %49 = load i8*, i8** %end, align 8
  %50 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast86 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast87 = ptrtoint i8* %50 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %cmp89 = icmp slt i64 %sub.ptr.sub88, 33
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %do.body85
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end92:                                         ; preds = %do.body85
  br label %do.end93

do.end93:                                         ; preds = %if.end92
  %51 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr94, i8** %ssl.addr, align 8
  %52 = load i8, i8* %51, align 1
  %conv95 = zext i8 %52 to i32
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv95) #6
  %call96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0)) #6
  %53 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %53, i64 noundef 32, i64 noundef 16, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0)) #6
  %54 = load i8*, i8** %ssl.addr, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %54, i64 32
  store i8* %add.ptr97, i8** %ssl.addr, align 8
  %call98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %do.body99

do.body99:                                        ; preds = %do.end93
  %55 = load i8*, i8** %end, align 8
  %56 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast100 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast101 = ptrtoint i8* %56 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %cmp103 = icmp slt i64 %sub.ptr.sub102, 48
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %do.body99
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end106:                                        ; preds = %do.body99
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  %57 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %57, i64 noundef 48, i64 noundef 16, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0)) #6
  %58 = load i8*, i8** %ssl.addr, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %58, i64 48
  store i8* %add.ptr108, i8** %ssl.addr, align 8
  br label %do.body109

do.body109:                                       ; preds = %do.end107
  %59 = load i8*, i8** %end, align 8
  %60 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %60 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %cmp113 = icmp slt i64 %sub.ptr.sub112, 4
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body109
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end116:                                        ; preds = %do.body109
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  %61 = load i8*, i8** %ssl.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %62 to i32
  %shl120 = shl i32 %conv119, 24
  %63 = load i8*, i8** %ssl.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %64 to i32
  %shl123 = shl i32 %conv122, 16
  %or124 = or i32 %shl120, %shl123
  %65 = load i8*, i8** %ssl.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %66 to i32
  %shl127 = shl i32 %conv126, 8
  %or128 = or i32 %or124, %shl127
  %67 = load i8*, i8** %ssl.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %67, i64 3
  %68 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %68 to i32
  %or131 = or i32 %or128, %conv130
  store i32 %or131, i32* %verify_result, align 4
  %69 = load i8*, i8** %ssl.addr, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %add.ptr132, i8** %ssl.addr, align 8
  %70 = load i32, i32* %verify_result, align 4
  %call133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i32 noundef %70) #6
  %71 = load i32, i32* %session_cfg_flag.addr, align 4
  %and134 = and i32 2, %71
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end234

if.then136:                                       ; preds = %do.end117
  %72 = load i8, i8* @conf_keep_peer_certificate, align 1
  %tobool137 = icmp ne i8 %72, 0
  br i1 %tobool137, label %if.then138, label %if.else175

if.then138:                                       ; preds = %if.then136
  br label %do.body139

do.body139:                                       ; preds = %if.then138
  %73 = load i8*, i8** %end, align 8
  %74 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast140 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast141 = ptrtoint i8* %74 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  %cmp143 = icmp slt i64 %sub.ptr.sub142, 3
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %do.body139
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end146:                                        ; preds = %do.body139
  br label %do.end147

do.end147:                                        ; preds = %if.end146
  %75 = load i8*, i8** %ssl.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %76 to i32
  %shl150 = shl i32 %conv149, 16
  %77 = load i8*, i8** %ssl.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %78 to i32
  %shl153 = shl i32 %conv152, 8
  %or154 = or i32 %shl150, %shl153
  %79 = load i8*, i8** %ssl.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %80 to i32
  %or157 = or i32 %or154, %conv156
  store i32 %or157, i32* %cert_len, align 4
  %81 = load i8*, i8** %ssl.addr, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %add.ptr158, i8** %ssl.addr, align 8
  %82 = load i32, i32* %cert_len, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0), i32 noundef %82) #6
  %83 = load i32, i32* %cert_len, align 4
  %cmp159 = icmp ugt i32 %83, 0
  br i1 %cmp159, label %if.then161, label %if.end174

if.then161:                                       ; preds = %do.end147
  br label %do.body162

do.body162:                                       ; preds = %if.then161
  %84 = load i8*, i8** %end, align 8
  %85 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast163 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast164 = ptrtoint i8* %85 to i64
  %sub.ptr.sub165 = sub i64 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast164
  %86 = load i32, i32* %cert_len, align 4
  %conv166 = sext i32 %86 to i64
  %cmp167 = icmp slt i64 %sub.ptr.sub165, %conv166
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %do.body162
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end170:                                        ; preds = %do.body162
  br label %do.end171

do.end171:                                        ; preds = %if.end170
  %87 = load i8*, i8** %ssl.addr, align 8
  %88 = load i32, i32* %cert_len, align 4
  call void @print_deserialized_ssl_cert(i8* noundef %87, i32 noundef %88) #6
  %89 = load i32, i32* %cert_len, align 4
  %90 = load i8*, i8** %ssl.addr, align 8
  %idx.ext172 = zext i32 %89 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %90, i64 %idx.ext172
  store i8* %add.ptr173, i8** %ssl.addr, align 8
  br label %if.end174

if.end174:                                        ; preds = %do.end171, %do.end147
  br label %if.end233

if.else175:                                       ; preds = %if.then136
  %call176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0)) #6
  br label %do.body177

do.body177:                                       ; preds = %if.else175
  %91 = load i8*, i8** %end, align 8
  %92 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast178 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast179 = ptrtoint i8* %92 to i64
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179
  %cmp181 = icmp slt i64 %sub.ptr.sub180, 1
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %do.body177
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end184:                                        ; preds = %do.body177
  br label %do.end185

do.end185:                                        ; preds = %if.end184
  %93 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr186, i8** %ssl.addr, align 8
  %94 = load i8, i8* %93, align 1
  %conv187 = zext i8 %94 to i32
  switch i32 %conv187, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb189
    i32 2, label %sw.bb191
    i32 3, label %sw.bb193
    i32 4, label %sw.bb195
    i32 5, label %sw.bb197
    i32 6, label %sw.bb199
    i32 7, label %sw.bb201
  ]

sw.bb:                                            ; preds = %do.end185
  %call188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb189:                                         ; preds = %do.end185
  %call190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb191:                                         ; preds = %do.end185
  %call192 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb193:                                         ; preds = %do.end185
  %call194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb195:                                         ; preds = %do.end185
  %call196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb197:                                         ; preds = %do.end185
  %call198 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb199:                                         ; preds = %do.end185
  %call200 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb201:                                         ; preds = %do.end185
  %call202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0)) #6
  br label %sw.epilog

sw.default:                                       ; preds = %do.end185
  %call203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i64 0, i64 0)) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb201, %sw.bb199, %sw.bb197, %sw.bb195, %sw.bb193, %sw.bb191, %sw.bb189, %sw.bb
  br label %do.body204

do.body204:                                       ; preds = %sw.epilog
  %95 = load i8*, i8** %end, align 8
  %96 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast205 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast206 = ptrtoint i8* %96 to i64
  %sub.ptr.sub207 = sub i64 %sub.ptr.lhs.cast205, %sub.ptr.rhs.cast206
  %cmp208 = icmp slt i64 %sub.ptr.sub207, 1
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %do.body204
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end211:                                        ; preds = %do.body204
  br label %do.end212

do.end212:                                        ; preds = %if.end211
  %97 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr213 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr213, i8** %ssl.addr, align 8
  %98 = load i8, i8* %97, align 1
  %conv214 = zext i8 %98 to i32
  store i32 %conv214, i32* %cert_len, align 4
  %99 = load i32, i32* %cert_len, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i64 0, i64 0), i32 noundef %99) #6
  %100 = load i32, i32* %cert_len, align 4
  %cmp215 = icmp ugt i32 %100, 0
  br i1 %cmp215, label %if.then217, label %if.end232

if.then217:                                       ; preds = %do.end212
  %call218 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %do.body219

do.body219:                                       ; preds = %if.then217
  %101 = load i8*, i8** %end, align 8
  %102 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast220 = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast221 = ptrtoint i8* %102 to i64
  %sub.ptr.sub222 = sub i64 %sub.ptr.lhs.cast220, %sub.ptr.rhs.cast221
  %103 = load i32, i32* %cert_len, align 4
  %conv223 = sext i32 %103 to i64
  %cmp224 = icmp slt i64 %sub.ptr.sub222, %conv223
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %do.body219
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end227:                                        ; preds = %do.body219
  br label %do.end228

do.end228:                                        ; preds = %if.end227
  %104 = load i8*, i8** %ssl.addr, align 8
  %105 = load i32, i32* %cert_len, align 4
  %conv229 = zext i32 %105 to i64
  call void @print_hex(i8* noundef %104, i64 noundef %conv229, i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0)) #6
  %106 = load i32, i32* %cert_len, align 4
  %107 = load i8*, i8** %ssl.addr, align 8
  %idx.ext230 = zext i32 %106 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %107, i64 %idx.ext230
  store i8* %add.ptr231, i8** %ssl.addr, align 8
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %do.end212
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.end174
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %do.end117
  %108 = load i32, i32* %session_cfg_flag.addr, align 4
  %and235 = and i32 4, %108
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %if.then237, label %if.end303

if.then237:                                       ; preds = %if.end234
  %call238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0)) #6
  br label %do.body239

do.body239:                                       ; preds = %if.then237
  %109 = load i8*, i8** %end, align 8
  %110 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast240 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast241 = ptrtoint i8* %110 to i64
  %sub.ptr.sub242 = sub i64 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241
  %cmp243 = icmp slt i64 %sub.ptr.sub242, 3
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %do.body239
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end246:                                        ; preds = %do.body239
  br label %do.end247

do.end247:                                        ; preds = %if.end246
  %111 = load i8*, i8** %ssl.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %111, i64 0
  %112 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %112 to i32
  %shl250 = shl i32 %conv249, 16
  %113 = load i8*, i8** %ssl.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %114 to i32
  %shl253 = shl i32 %conv252, 8
  %or254 = or i32 %shl250, %shl253
  %115 = load i8*, i8** %ssl.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %115, i64 2
  %116 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %116 to i32
  %or257 = or i32 %or254, %conv256
  store i32 %or257, i32* %ticket_len, align 4
  %117 = load i8*, i8** %ssl.addr, align 8
  %add.ptr258 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %add.ptr258, i8** %ssl.addr, align 8
  %118 = load i32, i32* %ticket_len, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0), i32 noundef %118) #6
  %119 = load i32, i32* %ticket_len, align 4
  %cmp259 = icmp ugt i32 %119, 0
  br i1 %cmp259, label %if.then261, label %if.end277

if.then261:                                       ; preds = %do.end247
  %call262 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %do.body263

do.body263:                                       ; preds = %if.then261
  %120 = load i8*, i8** %end, align 8
  %121 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast264 = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i8* %121 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %122 = load i32, i32* %ticket_len, align 4
  %conv267 = sext i32 %122 to i64
  %cmp268 = icmp slt i64 %sub.ptr.sub266, %conv267
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %do.body263
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end271:                                        ; preds = %do.body263
  br label %do.end272

do.end272:                                        ; preds = %if.end271
  %123 = load i8*, i8** %ssl.addr, align 8
  %124 = load i32, i32* %ticket_len, align 4
  %conv273 = zext i32 %124 to i64
  call void @print_hex(i8* noundef %123, i64 noundef %conv273, i64 noundef 22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  %125 = load i32, i32* %ticket_len, align 4
  %126 = load i8*, i8** %ssl.addr, align 8
  %idx.ext274 = zext i32 %125 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %126, i64 %idx.ext274
  store i8* %add.ptr275, i8** %ssl.addr, align 8
  %call276 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %if.end277

if.end277:                                        ; preds = %do.end272, %do.end247
  br label %do.body278

do.body278:                                       ; preds = %if.end277
  %127 = load i8*, i8** %end, align 8
  %128 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast279 = ptrtoint i8* %127 to i64
  %sub.ptr.rhs.cast280 = ptrtoint i8* %128 to i64
  %sub.ptr.sub281 = sub i64 %sub.ptr.lhs.cast279, %sub.ptr.rhs.cast280
  %cmp282 = icmp slt i64 %sub.ptr.sub281, 4
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %do.body278
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end285:                                        ; preds = %do.body278
  br label %do.end286

do.end286:                                        ; preds = %if.end285
  %129 = load i8*, i8** %ssl.addr, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %130 to i32
  %shl289 = shl i32 %conv288, 24
  %131 = load i8*, i8** %ssl.addr, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %132 to i32
  %shl292 = shl i32 %conv291, 16
  %or293 = or i32 %shl289, %shl292
  %133 = load i8*, i8** %ssl.addr, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %133, i64 2
  %134 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %134 to i32
  %shl296 = shl i32 %conv295, 8
  %or297 = or i32 %or293, %shl296
  %135 = load i8*, i8** %ssl.addr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %135, i64 3
  %136 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %136 to i32
  %or300 = or i32 %or297, %conv299
  store i32 %or300, i32* %ticket_lifetime, align 4
  %137 = load i8*, i8** %ssl.addr, align 8
  %add.ptr301 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %add.ptr301, i8** %ssl.addr, align 8
  %138 = load i32, i32* %ticket_lifetime, align 4
  %call302 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0), i32 noundef %138) #6
  br label %if.end303

if.end303:                                        ; preds = %do.end286, %if.end234
  %139 = load i8*, i8** %ssl.addr, align 8
  %140 = load i8*, i8** %end, align 8
  %cmp304 = icmp ult i8* %139, %140
  br i1 %cmp304, label %if.then306, label %if.end308

if.then306:                                       ; preds = %if.end303
  %call307 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0)) #6
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %if.end303
  %141 = load i32, i32* %session_cfg_flag.addr, align 4
  %and309 = and i32 8, %141
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.then311, label %if.end325

if.then311:                                       ; preds = %if.end308
  br label %do.body312

do.body312:                                       ; preds = %if.then311
  %142 = load i8*, i8** %end, align 8
  %143 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast313 = ptrtoint i8* %142 to i64
  %sub.ptr.rhs.cast314 = ptrtoint i8* %143 to i64
  %sub.ptr.sub315 = sub i64 %sub.ptr.lhs.cast313, %sub.ptr.rhs.cast314
  %cmp316 = icmp slt i64 %sub.ptr.sub315, 1
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %do.body312
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end319:                                        ; preds = %do.body312
  br label %do.end320

do.end320:                                        ; preds = %if.end319
  %144 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr321 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr321, i8** %ssl.addr, align 8
  %145 = load i8, i8* %144, align 1
  %conv322 = zext i8 %145 to i32
  %call323 = call i8* @get_mfl_str(i32 noundef %conv322) #6
  %call324 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call323) #6
  br label %if.end325

if.end325:                                        ; preds = %do.end320, %if.end308
  %146 = load i32, i32* %session_cfg_flag.addr, align 4
  %and326 = and i32 16, %146
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %if.then328, label %if.end342

if.then328:                                       ; preds = %if.end325
  br label %do.body329

do.body329:                                       ; preds = %if.then328
  %147 = load i8*, i8** %end, align 8
  %148 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast330 = ptrtoint i8* %147 to i64
  %sub.ptr.rhs.cast331 = ptrtoint i8* %148 to i64
  %sub.ptr.sub332 = sub i64 %sub.ptr.lhs.cast330, %sub.ptr.rhs.cast331
  %cmp333 = icmp slt i64 %sub.ptr.sub332, 1
  br i1 %cmp333, label %if.then335, label %if.end336

if.then335:                                       ; preds = %do.body329
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end336:                                        ; preds = %do.body329
  br label %do.end337

do.end337:                                        ; preds = %if.end336
  %149 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr338 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr338, i8** %ssl.addr, align 8
  %150 = load i8, i8* %149, align 1
  %conv339 = zext i8 %150 to i32
  %call340 = call i8* @get_enabled_str(i32 noundef %conv339) #6
  %call341 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call340) #6
  br label %if.end342

if.end342:                                        ; preds = %do.end337, %if.end325
  %151 = load i32, i32* %session_cfg_flag.addr, align 4
  %and343 = and i32 32, %151
  %tobool344 = icmp ne i32 %and343, 0
  br i1 %tobool344, label %if.then345, label %if.end359

if.then345:                                       ; preds = %if.end342
  br label %do.body346

do.body346:                                       ; preds = %if.then345
  %152 = load i8*, i8** %end, align 8
  %153 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast347 = ptrtoint i8* %152 to i64
  %sub.ptr.rhs.cast348 = ptrtoint i8* %153 to i64
  %sub.ptr.sub349 = sub i64 %sub.ptr.lhs.cast347, %sub.ptr.rhs.cast348
  %cmp350 = icmp slt i64 %sub.ptr.sub349, 1
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %do.body346
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %if.end370

if.end353:                                        ; preds = %do.body346
  br label %do.end354

do.end354:                                        ; preds = %if.end353
  %154 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr355, i8** %ssl.addr, align 8
  %155 = load i8, i8* %154, align 1
  %conv356 = zext i8 %155 to i32
  %call357 = call i8* @get_enabled_str(i32 noundef %conv356) #6
  %call358 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0), i8* noundef %call357) #6
  br label %if.end359

if.end359:                                        ; preds = %do.end354, %if.end342
  %156 = load i8*, i8** %end, align 8
  %157 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast360 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast361 = ptrtoint i8* %157 to i64
  %sub.ptr.sub362 = sub i64 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast361
  %cmp363 = icmp ne i64 0, %sub.ptr.sub362
  br i1 %cmp363, label %if.then365, label %if.end370

if.then365:                                       ; preds = %if.end359
  %158 = load i8*, i8** %end, align 8
  %159 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast366 = ptrtoint i8* %158 to i64
  %sub.ptr.rhs.cast367 = ptrtoint i8* %159 to i64
  %sub.ptr.sub368 = sub i64 %sub.ptr.lhs.cast366, %sub.ptr.rhs.cast367
  %conv369 = trunc i64 %sub.ptr.sub368 to i32
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv369) #6
  br label %if.end370

if.end370:                                        ; preds = %if.then1, %if.then37, %if.then79, %if.then91, %if.then105, %if.then115, %if.then145, %if.then169, %if.then183, %if.then210, %if.then226, %if.then245, %if.then270, %if.then284, %if.then318, %if.then335, %if.then352, %if.then365, %if.end359
  ret void
}

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #1

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i8* @mbedtls_md_get_name(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_deserialized_ssl_context(i8* noundef %ssl, i64 noundef %len) #0 {
entry:
  %ssl.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %end = alloca i8*, align 8
  %session_len = alloca i32, align 4
  %session_cfg_flag = alloca i32, align 4
  %context_cfg_flag = alloca i32, align 4
  %cid_len = alloca i8, align 1
  %badmac_seen = alloca i32, align 4
  %mtu = alloca i16, align 2
  %alpn_len = alloca i8, align 1
  store i8* %ssl, i8** %ssl.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ssl.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %end, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0)) #6
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %ssl.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv) #6
  %6 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %ssl.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv3) #6
  %8 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** %ssl.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = zext i8 %9 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv6) #6
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.86, i64 0, i64 0)) #6
  %10 = load i8*, i8** %ssl.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %11 to i32
  %shl = shl i32 %conv9, 8
  %12 = load i8*, i8** %ssl.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %or = or i32 %shl, %conv11
  store i32 %or, i32* %session_cfg_flag, align 4
  %14 = load i8*, i8** %ssl.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr12, i8** %ssl.addr, align 8
  %15 = load i8*, i8** %ssl.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %shl15 = shl i32 %conv14, 16
  %17 = load i8*, i8** %ssl.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %shl15, %shl18
  %19 = load i8*, i8** %ssl.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  %or22 = or i32 %or19, %conv21
  store i32 %or22, i32* %context_cfg_flag, align 4
  %21 = load i8*, i8** %ssl.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr23, i8** %ssl.addr, align 8
  %22 = load i32, i32* %session_cfg_flag, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0), i32 noundef %22) #6
  %23 = load i32, i32* %context_cfg_flag, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i64 0, i64 0), i32 noundef %23) #6
  %24 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i64 0, i64 0), i32 noundef 1, i32 noundef %24) #6
  %25 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i32 noundef 2, i32 noundef %25) #6
  %26 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0), i32 noundef 8, i32 noundef %26) #6
  %27 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.92, i64 0, i64 0), i32 noundef 32, i32 noundef %27) #6
  %28 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.93, i64 0, i64 0), i32 noundef 64, i32 noundef %28) #6
  %29 = load i32, i32* %session_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i64 0, i64 0), i32 noundef 4, i32 noundef %29) #6
  %30 = load i32, i32* %context_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i32 noundef 1, i32 noundef %30) #6
  %31 = load i32, i32* %context_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0), i32 noundef 4, i32 noundef %31) #6
  %32 = load i32, i32* %context_cfg_flag, align 4
  call void @print_if_bit(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i32 noundef 8, i32 noundef %32) #6
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %33 = load i8*, i8** %end, align 8
  %34 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %34 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %cmp28 = icmp slt i64 %sub.ptr.sub27, 4
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body24
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end31:                                         ; preds = %do.body24
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %35 = load i8*, i8** %ssl.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %36 to i32
  %shl35 = shl i32 %conv34, 24
  %37 = load i8*, i8** %ssl.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %38 to i32
  %shl38 = shl i32 %conv37, 16
  %or39 = or i32 %shl35, %shl38
  %39 = load i8*, i8** %ssl.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %40 to i32
  %shl42 = shl i32 %conv41, 8
  %or43 = or i32 %or39, %shl42
  %41 = load i8*, i8** %ssl.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %42 to i32
  %or46 = or i32 %or43, %conv45
  store i32 %or46, i32* %session_len, align 4
  %43 = load i8*, i8** %ssl.addr, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %add.ptr47, i8** %ssl.addr, align 8
  %44 = load i32, i32* %session_len, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0), i32 noundef %44) #6
  br label %do.body48

do.body48:                                        ; preds = %do.end32
  %45 = load i8*, i8** %end, align 8
  %46 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast49 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %46 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %47 = load i32, i32* %session_len, align 4
  %conv52 = sext i32 %47 to i64
  %cmp53 = icmp slt i64 %sub.ptr.sub51, %conv52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body48
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end56:                                         ; preds = %do.body48
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  %48 = load i8*, i8** %ssl.addr, align 8
  %49 = load i32, i32* %session_len, align 4
  %50 = load i32, i32* %session_cfg_flag, align 4
  call void @print_deserialized_ssl_session(i8* noundef %48, i32 noundef %49, i32 noundef %50) #6
  %51 = load i32, i32* %session_len, align 4
  %52 = load i8*, i8** %ssl.addr, align 8
  %idx.ext = zext i32 %51 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr58, i8** %ssl.addr, align 8
  %call59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i64 0, i64 0)) #6
  br label %do.body60

do.body60:                                        ; preds = %do.end57
  %53 = load i8*, i8** %end, align 8
  %54 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %54 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %cmp64 = icmp slt i64 %sub.ptr.sub63, 64
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body60
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end67:                                         ; preds = %do.body60
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  %55 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %55, i64 noundef 64, i64 noundef 22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  %56 = load i8*, i8** %ssl.addr, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %56, i64 64
  store i8* %add.ptr69, i8** %ssl.addr, align 8
  %call70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0)) #6
  %57 = load i32, i32* %context_cfg_flag, align 4
  %and = and i32 1, %57
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then71, label %if.end139

if.then71:                                        ; preds = %do.end68
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  %58 = load i8*, i8** %end, align 8
  %59 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast73 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %59 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %cmp76 = icmp slt i64 %sub.ptr.sub75, 1
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body72
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end79:                                         ; preds = %do.body72
  br label %do.end80

do.end80:                                         ; preds = %if.end79
  %60 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr81, i8** %ssl.addr, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %cid_len, align 1
  %62 = load i8, i8* %cid_len, align 1
  %conv82 = zext i8 %62 to i32
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv82) #6
  %call83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0)) #6
  %63 = load i8, i8* %cid_len, align 1
  %conv84 = zext i8 %63 to i32
  %cmp85 = icmp sgt i32 %conv84, 0
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %do.end80
  br label %do.body88

do.body88:                                        ; preds = %if.then87
  %64 = load i8*, i8** %end, align 8
  %65 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast89 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %65 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %66 = load i8, i8* %cid_len, align 1
  %conv92 = zext i8 %66 to i32
  %conv93 = sext i32 %conv92 to i64
  %cmp94 = icmp slt i64 %sub.ptr.sub91, %conv93
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.body88
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end97:                                         ; preds = %do.body88
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  %67 = load i8*, i8** %ssl.addr, align 8
  %68 = load i8, i8* %cid_len, align 1
  %conv99 = zext i8 %68 to i64
  call void @print_hex(i8* noundef %67, i64 noundef %conv99, i64 noundef 20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  %69 = load i8, i8* %cid_len, align 1
  %conv100 = zext i8 %69 to i32
  %70 = load i8*, i8** %ssl.addr, align 8
  %idx.ext101 = sext i32 %conv100 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %70, i64 %idx.ext101
  store i8* %add.ptr102, i8** %ssl.addr, align 8
  br label %if.end104

if.else:                                          ; preds = %do.end80
  %call103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #6
  br label %if.end104

if.end104:                                        ; preds = %if.else, %do.end98
  br label %do.body105

do.body105:                                       ; preds = %if.end104
  %71 = load i8*, i8** %end, align 8
  %72 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast106 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast107 = ptrtoint i8* %72 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %cmp109 = icmp slt i64 %sub.ptr.sub108, 1
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %do.body105
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end112:                                        ; preds = %do.body105
  br label %do.end113

do.end113:                                        ; preds = %if.end112
  %73 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr114, i8** %ssl.addr, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %cid_len, align 1
  %75 = load i8, i8* %cid_len, align 1
  %conv115 = zext i8 %75 to i32
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i64 0, i64 0), i32 noundef %conv115) #6
  %call116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i64 0, i64 0)) #6
  %76 = load i8, i8* %cid_len, align 1
  %conv117 = zext i8 %76 to i32
  %cmp118 = icmp sgt i32 %conv117, 0
  br i1 %cmp118, label %if.then120, label %if.else136

if.then120:                                       ; preds = %do.end113
  br label %do.body121

do.body121:                                       ; preds = %if.then120
  %77 = load i8*, i8** %end, align 8
  %78 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast122 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast123 = ptrtoint i8* %78 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %79 = load i8, i8* %cid_len, align 1
  %conv125 = zext i8 %79 to i32
  %conv126 = sext i32 %conv125 to i64
  %cmp127 = icmp slt i64 %sub.ptr.sub124, %conv126
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body121
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end130:                                        ; preds = %do.body121
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  %80 = load i8*, i8** %ssl.addr, align 8
  %81 = load i8, i8* %cid_len, align 1
  %conv132 = zext i8 %81 to i64
  call void @print_hex(i8* noundef %80, i64 noundef %conv132, i64 noundef 20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  %82 = load i8, i8* %cid_len, align 1
  %conv133 = zext i8 %82 to i32
  %83 = load i8*, i8** %ssl.addr, align 8
  %idx.ext134 = sext i32 %conv133 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %83, i64 %idx.ext134
  store i8* %add.ptr135, i8** %ssl.addr, align 8
  br label %if.end138

if.else136:                                       ; preds = %do.end113
  %call137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #6
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %do.end131
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %do.end68
  %84 = load i32, i32* %context_cfg_flag, align 4
  %and140 = and i32 2, %84
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then142, label %if.end190

if.then142:                                       ; preds = %if.end139
  br label %do.body143

do.body143:                                       ; preds = %if.then142
  %85 = load i8*, i8** %end, align 8
  %86 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast144 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast145 = ptrtoint i8* %86 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %cmp147 = icmp slt i64 %sub.ptr.sub146, 4
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body143
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end150:                                        ; preds = %do.body143
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  %87 = load i8*, i8** %ssl.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  %shl154 = shl i32 %conv153, 24
  %89 = load i8*, i8** %ssl.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %90 to i32
  %shl157 = shl i32 %conv156, 16
  %or158 = or i32 %shl154, %shl157
  %91 = load i8*, i8** %ssl.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %92 to i32
  %shl161 = shl i32 %conv160, 8
  %or162 = or i32 %or158, %shl161
  %93 = load i8*, i8** %ssl.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %93, i64 3
  %94 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %94 to i32
  %or165 = or i32 %or162, %conv164
  store i32 %or165, i32* %badmac_seen, align 4
  %95 = load i8*, i8** %ssl.addr, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %add.ptr166, i8** %ssl.addr, align 8
  %96 = load i32, i32* %badmac_seen, align 4
  %call167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i64 0, i64 0), i32 noundef %96) #6
  %call168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.106, i64 0, i64 0)) #6
  br label %do.body169

do.body169:                                       ; preds = %do.end151
  %97 = load i8*, i8** %end, align 8
  %98 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast170 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast171 = ptrtoint i8* %98 to i64
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast171
  %cmp173 = icmp slt i64 %sub.ptr.sub172, 8
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %do.body169
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end176:                                        ; preds = %do.body169
  br label %do.end177

do.end177:                                        ; preds = %if.end176
  %99 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %99, i64 noundef 8, i64 noundef 20, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #6
  %100 = load i8*, i8** %ssl.addr, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %100, i64 8
  store i8* %add.ptr178, i8** %ssl.addr, align 8
  %call179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.107, i64 0, i64 0)) #6
  br label %do.body180

do.body180:                                       ; preds = %do.end177
  %101 = load i8*, i8** %end, align 8
  %102 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast181 = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast182 = ptrtoint i8* %102 to i64
  %sub.ptr.sub183 = sub i64 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %cmp184 = icmp slt i64 %sub.ptr.sub183, 8
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.body180
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end187:                                        ; preds = %do.body180
  br label %do.end188

do.end188:                                        ; preds = %if.end187
  %103 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %103, i64 noundef 8, i64 noundef 20, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #6
  %104 = load i8*, i8** %ssl.addr, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %add.ptr189, i8** %ssl.addr, align 8
  br label %if.end190

if.end190:                                        ; preds = %do.end188, %if.end139
  %105 = load i8, i8* @conf_dtls_proto, align 1
  %tobool191 = icmp ne i8 %105, 0
  br i1 %tobool191, label %if.then192, label %if.end206

if.then192:                                       ; preds = %if.end190
  br label %do.body193

do.body193:                                       ; preds = %if.then192
  %106 = load i8*, i8** %end, align 8
  %107 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast194 = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast195 = ptrtoint i8* %107 to i64
  %sub.ptr.sub196 = sub i64 %sub.ptr.lhs.cast194, %sub.ptr.rhs.cast195
  %cmp197 = icmp slt i64 %sub.ptr.sub196, 1
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %do.body193
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end200:                                        ; preds = %do.body193
  br label %do.end201

do.end201:                                        ; preds = %if.end200
  %108 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr202 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr202, i8** %ssl.addr, align 8
  %109 = load i8, i8* %108, align 1
  %tobool203 = icmp ne i8 %109, 0
  %lnot = xor i1 %tobool203, true
  %lnot.ext = zext i1 %lnot to i32
  %call204 = call i8* @get_enabled_str(i32 noundef %lnot.ext) #6
  %call205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i64 0, i64 0), i8* noundef %call204) #6
  br label %if.end206

if.end206:                                        ; preds = %do.end201, %if.end190
  %call207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i64 0, i64 0)) #6
  br label %do.body208

do.body208:                                       ; preds = %if.end206
  %110 = load i8*, i8** %end, align 8
  %111 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast209 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast210 = ptrtoint i8* %111 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %cmp212 = icmp slt i64 %sub.ptr.sub211, 8
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %do.body208
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end215:                                        ; preds = %do.body208
  br label %do.end216

do.end216:                                        ; preds = %if.end215
  %112 = load i8*, i8** %ssl.addr, align 8
  call void @print_hex(i8* noundef %112, i64 noundef 8, i64 noundef 20, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #6
  %113 = load i8*, i8** %ssl.addr, align 8
  %add.ptr217 = getelementptr inbounds i8, i8* %113, i64 8
  store i8* %add.ptr217, i8** %ssl.addr, align 8
  %114 = load i8, i8* @conf_dtls_proto, align 1
  %tobool218 = icmp ne i8 %114, 0
  br i1 %tobool218, label %if.then219, label %if.end239

if.then219:                                       ; preds = %do.end216
  br label %do.body220

do.body220:                                       ; preds = %if.then219
  %115 = load i8*, i8** %end, align 8
  %116 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast221 = ptrtoint i8* %115 to i64
  %sub.ptr.rhs.cast222 = ptrtoint i8* %116 to i64
  %sub.ptr.sub223 = sub i64 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast222
  %cmp224 = icmp slt i64 %sub.ptr.sub223, 2
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %do.body220
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end227:                                        ; preds = %do.body220
  br label %do.end228

do.end228:                                        ; preds = %if.end227
  %117 = load i8*, i8** %ssl.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %117, i64 0
  %118 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %118 to i32
  %shl231 = shl i32 %conv230, 8
  %119 = load i8*, i8** %ssl.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %120 to i32
  %or234 = or i32 %shl231, %conv233
  %conv235 = trunc i32 %or234 to i16
  store i16 %conv235, i16* %mtu, align 2
  %121 = load i8*, i8** %ssl.addr, align 8
  %add.ptr236 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %add.ptr236, i8** %ssl.addr, align 8
  %122 = load i16, i16* %mtu, align 2
  %conv237 = zext i16 %122 to i32
  %call238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv237) #6
  br label %if.end239

if.end239:                                        ; preds = %do.end228, %do.end216
  %123 = load i32, i32* %context_cfg_flag, align 4
  %and240 = and i32 8, %123
  %tobool241 = icmp ne i32 %and240, 0
  br i1 %tobool241, label %if.then242, label %if.end285

if.then242:                                       ; preds = %if.end239
  br label %do.body243

do.body243:                                       ; preds = %if.then242
  %124 = load i8*, i8** %end, align 8
  %125 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast244 = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %125 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %cmp247 = icmp slt i64 %sub.ptr.sub246, 1
  br i1 %cmp247, label %if.then249, label %if.end250

if.then249:                                       ; preds = %do.body243
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end250:                                        ; preds = %do.body243
  br label %do.end251

do.end251:                                        ; preds = %if.end250
  %126 = load i8*, i8** %ssl.addr, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr252, i8** %ssl.addr, align 8
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %alpn_len, align 1
  %128 = load i8, i8* %alpn_len, align 1
  %conv253 = zext i8 %128 to i32
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv253) #6
  %call254 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0)) #6
  br label %do.body255

do.body255:                                       ; preds = %do.end251
  %129 = load i8*, i8** %end, align 8
  %130 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast256 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast257 = ptrtoint i8* %130 to i64
  %sub.ptr.sub258 = sub i64 %sub.ptr.lhs.cast256, %sub.ptr.rhs.cast257
  %131 = load i8, i8* %alpn_len, align 1
  %conv259 = zext i8 %131 to i32
  %conv260 = sext i32 %conv259 to i64
  %cmp261 = icmp slt i64 %sub.ptr.sub258, %conv260
  br i1 %cmp261, label %if.then263, label %if.end264

if.then263:                                       ; preds = %do.body255
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @buf_ln_err, i64 0, i64 0)) #6
  br label %return

if.end264:                                        ; preds = %do.body255
  br label %do.end265

do.end265:                                        ; preds = %if.end264
  %132 = load i8, i8* %alpn_len, align 1
  %conv266 = zext i8 %132 to i32
  %cmp267 = icmp sgt i32 %conv266, 0
  br i1 %cmp267, label %if.then269, label %if.else282

if.then269:                                       ; preds = %do.end265
  %133 = load i8*, i8** %ssl.addr, align 8
  %call270 = call i64 @strlen(i8* noundef %133) #8
  %134 = load i8, i8* %alpn_len, align 1
  %conv271 = zext i8 %134 to i64
  %cmp272 = icmp eq i64 %call270, %conv271
  br i1 %cmp272, label %if.then274, label %if.else276

if.then274:                                       ; preds = %if.then269
  %135 = load i8*, i8** %ssl.addr, align 8
  %call275 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %135) #6
  br label %if.end278

if.else276:                                       ; preds = %if.then269
  %call277 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.113, i64 0, i64 0)) #6
  br label %if.end278

if.end278:                                        ; preds = %if.else276, %if.then274
  %136 = load i8, i8* %alpn_len, align 1
  %conv279 = zext i8 %136 to i32
  %137 = load i8*, i8** %ssl.addr, align 8
  %idx.ext280 = sext i32 %conv279 to i64
  %add.ptr281 = getelementptr inbounds i8, i8* %137, i64 %idx.ext280
  store i8* %add.ptr281, i8** %ssl.addr, align 8
  br label %if.end284

if.else282:                                       ; preds = %do.end265
  %call283 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0)) #6
  br label %if.end284

if.end284:                                        ; preds = %if.else282, %if.end278
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.end239
  %138 = load i8*, i8** %end, align 8
  %139 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast286 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast287 = ptrtoint i8* %139 to i64
  %sub.ptr.sub288 = sub i64 %sub.ptr.lhs.cast286, %sub.ptr.rhs.cast287
  %cmp289 = icmp ne i64 0, %sub.ptr.sub288
  br i1 %cmp289, label %if.then291, label %if.end296

if.then291:                                       ; preds = %if.end285
  %140 = load i8*, i8** %end, align 8
  %141 = load i8*, i8** %ssl.addr, align 8
  %sub.ptr.lhs.cast292 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast293 = ptrtoint i8* %141 to i64
  %sub.ptr.sub294 = sub i64 %sub.ptr.lhs.cast292, %sub.ptr.rhs.cast293
  %conv295 = trunc i64 %sub.ptr.sub294 to i32
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv295) #6
  br label %if.end296

if.end296:                                        ; preds = %if.then291, %if.end285
  %call297 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.end296, %if.then263, %if.then249, %if.then226, %if.then214, %if.then199, %if.then186, %if.then175, %if.then149, %if.then129, %if.then111, %if.then96, %if.then78, %if.then66, %if.then55, %if.then30, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %b64_counter = alloca i32, align 4
  %b64_buf = alloca i8*, align 8
  %ssl_buf = alloca i8*, align 8
  %b64_max_len = alloca i64, align 8
  %ssl_max_len = alloca i64, align 8
  %ssl_len = alloca i64, align 8
  %b64_len = alloca i64, align 8
  %ret = alloca i32, align 4
  %ssl_required_len = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %b64_counter, align 4
  store i8* null, i8** %b64_buf, align 8
  store i8* null, i8** %ssl_buf, align 8
  store i64 4096, i64* %b64_max_len, align 8
  store i64 4096, i64* %ssl_max_len, align 8
  store i64 0, i64* %ssl_len, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @parse_arguments(i32 noundef %0, i8** noundef %1) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %cmp = icmp ne %struct._IO_FILE* null, %2
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 noundef 4096) #9
  store i8* %call, i8** %b64_buf, align 8
  %call1 = call noalias i8* @malloc(i64 noundef 4096) #9
  store i8* %call1, i8** %ssl_buf, align 8
  %3 = load i8*, i8** %b64_buf, align 8
  %cmp2 = icmp eq i8* null, %3
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i8*, i8** %ssl_buf, align 8
  %cmp3 = icmp eq i8* null, %4
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @alloc_err, i64 0, i64 0)) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* noundef %5) #6
  store %struct._IO_FILE* null, %struct._IO_FILE** @b64_file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.then23, %if.end6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %cmp7 = icmp ne %struct._IO_FILE* null, %6
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call8 = call i64 @read_next_b64_code(i8** noundef %b64_buf, i64* noundef %b64_max_len) #6
  store i64 %call8, i64* %b64_len, align 8
  %7 = load i64, i64* %b64_len, align 8
  %cmp9 = icmp ugt i64 %7, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %8 = load i64, i64* %b64_len, align 8
  %mul = mul i64 %8, 3
  %div = udiv i64 %mul, 4
  %add = add i64 %div, 1
  store i64 %add, i64* %ssl_required_len, align 8
  %9 = load i64, i64* %ssl_required_len, align 8
  %10 = load i64, i64* %ssl_max_len, align 8
  %cmp11 = icmp ugt i64 %9, %10
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then10
  %11 = load i8*, i8** %ssl_buf, align 8
  %12 = load i64, i64* %ssl_required_len, align 8
  %call13 = call i8* @realloc(i8* noundef %11, i64 noundef %12) #9
  store i8* %call13, i8** %ptr, align 8
  %13 = load i8*, i8** %ptr, align 8
  %cmp14 = icmp eq i8* null, %13
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then12
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @alloc_err, i64 0, i64 0)) #6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* noundef %14) #6
  store %struct._IO_FILE* null, %struct._IO_FILE** @b64_file, align 8
  br label %while.end

if.end17:                                         ; preds = %if.then12
  %15 = load i8*, i8** %ptr, align 8
  store i8* %15, i8** %ssl_buf, align 8
  %16 = load i64, i64* %ssl_required_len, align 8
  store i64 %16, i64* %ssl_max_len, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  %17 = load i32, i32* %b64_counter, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %b64_counter, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i32 noundef %inc) #6
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i64 0, i64 0)) #6
  %18 = load i8*, i8** %b64_buf, align 8
  %19 = load i64, i64* %b64_len, align 8
  call void @print_b64(i8* noundef %18, i64 noundef %19) #6
  %20 = load i8*, i8** %ssl_buf, align 8
  %21 = load i64, i64* %ssl_max_len, align 8
  %22 = load i8*, i8** %b64_buf, align 8
  %23 = load i64, i64* %b64_len, align 8
  %call21 = call i32 @mbedtls_base64_decode(i8* noundef %20, i64 noundef %21, i64* noundef %ssl_len, i8* noundef %22, i64 noundef %23) #6
  store i32 %call21, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %25 = load i32, i32* %ret, align 4
  %26 = load i8*, i8** %b64_buf, align 8
  %27 = load i64, i64* %b64_max_len, align 8
  call void @mbedtls_strerror(i32 noundef %25, i8* noundef %26, i64 noundef %27) #6
  %28 = load i8*, i8** %b64_buf, align 8
  call void (i8*, ...) @printf_err(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i8* noundef %28) #6
  br label %while.cond, !llvm.loop !10

if.end24:                                         ; preds = %if.end18
  %29 = load i8, i8* @debug, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end24
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i64 0, i64 0)) #6
  %30 = load i8*, i8** %ssl_buf, align 8
  %31 = load i64, i64* %ssl_len, align 8
  call void @print_hex(i8* noundef %30, i64 noundef %31, i64 noundef 25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end24
  %32 = load i8*, i8** %ssl_buf, align 8
  %33 = load i64, i64* %ssl_len, align 8
  call void @print_deserialized_ssl_context(i8* noundef %32, i64 noundef %33) #6
  br label %if.end29

if.else:                                          ; preds = %while.body
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @b64_file, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* noundef %34) #6
  store %struct._IO_FILE* null, %struct._IO_FILE** @b64_file, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end27
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then15, %while.cond
  %35 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %35) #9
  %36 = load i8*, i8** %ssl_buf, align 8
  call void @free(i8* noundef %36) #9
  %37 = load i32, i32* %b64_counter, align 4
  %cmp30 = icmp ugt i32 %37, 0
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %while.end
  %38 = load i32, i32* %b64_counter, align 4
  call void (i8*, ...) @printf_dbg(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i64 0, i64 0), i32 noundef %38) #6
  br label %if.end34

if.else32:                                        ; preds = %while.end
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.121, i64 0, i64 0)) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

declare dso_local i32 @mbedtls_base64_decode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

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
