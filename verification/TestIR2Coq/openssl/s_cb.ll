; ModuleID = 'apps/lib/s_cb.c'
source_filename = "apps/lib/s_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verify_options_st = type { i32, i32, i32, i32 }
%struct.bio_st = type opaque
%struct.string_int_pair_st = type { i8*, i32 }
%union.bio_addr_st = type opaque
%struct.security_debug_ex = type { %struct.bio_st*, i32, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* }
%struct.ssl_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ssl_excert_st = type { i32, i8*, i32, i8*, i8*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i32, %struct.ssl_excert_st*, %struct.ssl_excert_st* }
%struct.stack_st = type opaque
%struct.engine_st = type opaque
%struct.ssl_cipher_st = type opaque
%struct.ssl_conf_ctx_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.x509_store_st = type opaque
%struct.X509_crl_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.stack_st_X509_NAME = type opaque

@verify_args = local_unnamed_addr global %struct.verify_options_st { i32 -1, i32 0, i32 0, i32 0 }, align 4
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str = private unnamed_addr constant [10 x i8] c"depth=%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<no cert>\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"verify error:num=%d:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"issuer= \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"notBefore=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"notAfter=\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"verify return:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"unable to get certificate from '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unable to get private key from '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Private key does not match the certificate public key\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"error setting certificate\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"error setting private key\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"error setting certificate chain\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"error building certificate chain\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Peer signing digest: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Peer signature type: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Supported Elliptic Curve Point Formats: \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_prime\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_char2\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"unknown(%d)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"groups to print\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Supported groups: \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"apps/lib/s_cb.c\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"\0AShared groups: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Server Temp Key: \00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"RSA, %d bits\0A\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"DH, %d bits\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"ECDH, %s, %d bits\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"%s, %d bits\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"read from %p [%p] (%zu bytes => %zu (0x%zX))\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"read from %p [%p] (%zu bytes => %d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"write to %p [%p] (%zu bytes => %zu (0x%zX))\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"write to %p [%p] (%zu bytes => %d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"SSL_accept\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"SSL3 alert %s:%s:%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"%s:failed in %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"%s:error in %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ssl_versions = internal global [8 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i32 768 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), i32 769 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i32 770 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i32 0, i32 0), i32 771 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i32 772 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), i32 65279 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.145, i32 0, i32 0), i32 256 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c", ChangeCipherSpec\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c", Alert\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c", ???\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c", warning\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c", fatal\00", align 1
@alert_types = internal global [34 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.147, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.148, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i32 0, i32 0), i32 20 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.150, i32 0, i32 0), i32 21 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.151, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.152, i32 0, i32 0), i32 30 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0), i32 40 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0), i32 42 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.155, i32 0, i32 0), i32 43 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.156, i32 0, i32 0), i32 44 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i32 0, i32 0), i32 45 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.158, i32 0, i32 0), i32 46 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.159, i32 0, i32 0), i32 47 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), i32 48 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.161, i32 0, i32 0), i32 49 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.162, i32 0, i32 0), i32 50 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i32 51 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0), i32 60 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i32 0, i32 0), i32 70 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.166, i32 0, i32 0), i32 71 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i32 0, i32 0), i32 80 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.168, i32 0, i32 0), i32 86 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.169, i32 0, i32 0), i32 90 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.170, i32 0, i32 0), i32 100 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.171, i32 0, i32 0), i32 109 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.172, i32 0, i32 0), i32 110 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.173, i32 0, i32 0), i32 111 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i32 0, i32 0), i32 112 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.175, i32 0, i32 0), i32 113 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.176, i32 0, i32 0), i32 114 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.177, i32 0, i32 0), i32 115 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.178, i32 0, i32 0), i32 116 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [5 x i8] c" ???\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c", Handshake\00", align 1
@handshakes = internal global [21 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.179, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.180, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.184, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.185, i32 0, i32 0), i32 8 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i32 11 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.187, i32 0, i32 0), i32 12 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.188, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.189, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.190, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.191, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i32 0, i32 0), i32 20 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i32 21 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.194, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.195, i32 0, i32 0), i32 23 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i32 0, i32 0), i32 24 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0), i32 67 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.198, i32 0, i32 0), i32 254 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [18 x i8] c", ApplicationData\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c", RecordHeader\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c", InnerContent\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c", Unknown (content_type=%d)\00", align 1
@.str.64 = private unnamed_addr constant [62 x i8] c"Not TLS data or unknown version (version=%d, content_type=%d)\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%s %s%s [length %04lx]%s%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@tlsext_types = internal global [30 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.200, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.201, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.202, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.203, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0), i32 6 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), i32 7 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0), i32 8 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.208, i32 0, i32 0), i32 9 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.210, i32 0, i32 0), i32 11 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.211, i32 0, i32 0), i32 12 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.212, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.214, i32 0, i32 0), i32 35 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.215, i32 0, i32 0), i32 65281 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.216, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.217, i32 0, i32 0), i32 21 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.218, i32 0, i32 0), i32 13172 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.219, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.220, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.221, i32 0, i32 0), i32 23 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.222, i32 0, i32 0), i32 51 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.223, i32 0, i32 0), i32 43 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i32 0, i32 0), i32 41 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.225, i32 0, i32 0), i32 45 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.226, i32 0, i32 0), i32 47 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.227, i32 0, i32 0), i32 49 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.70 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"TLS %s extension \22%s\22 (id=%d), len=%d\0A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@cookie_initialized = internal unnamed_addr global i1 false, align 4
@cookie_secret = internal global [16 x i8] zeroinitializer, align 16
@.str.74 = private unnamed_addr constant [36 x i8] c"error setting random cookie secret\0A\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"memory full\0A\00", align 1
@ourpeer = external local_unnamed_addr global %union.bio_addr_st*, align 8
@.str.76 = private unnamed_addr constant [29 x i8] c"Failed getting peer address\0A\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"assertion failed: length != 0\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"cookie generate buffer\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.81 = private unnamed_addr constant [51 x i8] c"Error calculating HMAC-SHA1 of buffer with secret\0A\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Missing filename\0A\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"Server Certificate\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"server key\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"server chain\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"%s: Key already specified\0A\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"%s: Chain already specified\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"Verification: OK\0A\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"Verified peername: %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"Verification error: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"DANE TLSA %d %d %d %s%s %s at depth %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"signed the certificate\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"matched TA certificate\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"matched EE certificate\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"Protocol version: %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"Ciphersuite: %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"Peer certificate: \00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Hash used: %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"Signature type: %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"No peer certificate\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"Call to SSL_CONF_cmd(%s, %s) failed\0A\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"Error finishing context\0A\00", align 1
@ssl_ctx_security_debug.sdb = internal global %struct.security_debug_ex zeroinitializer, align 8
@bio_keylog = internal unnamed_addr global %struct.bio_st* null, align 8
@.str.107 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"Error writing keylog file %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [50 x i8] c"# SSL/TLS secrets log file, generated by OpenSSL\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"---\0ANo %s certificate CA names sent\0A\00", align 1
@.str.111 = private unnamed_addr constant [40 x i8] c"---\0AAcceptable %s certificate CA names\0A\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"Client Certificate Types: \00", align 1
@cert_type_list = internal global [10 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), i32 64 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i32 65 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i32 0, i32 0), i32 66 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i32 67 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.113 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"UNKNOWN (%d),\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"RSA sign\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"DSA sign\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"RSA fixed DH\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"DSS fixed DH\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"ECDSA sign\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"RSA fixed ECDH\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"ECDSA fixed ECDH\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"GOST01 Sign\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"GOST12 Sign\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"Shared \00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"Requested \00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"Signature Algorithms: \00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"+0x%02X\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"Ed25519\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"Ed448\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"gost2001\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"gost2012_256\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"gost2012_512\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"SSL 3.0\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"TLS 1.0\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"TLS 1.1\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"TLS 1.2\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"TLS 1.3\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"DTLS 1.0\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"DTLS 1.0 (bad)\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c" close_notify\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c" end_of_early_data\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c" unexpected_message\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c" bad_record_mac\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c" decryption_failed\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c" record_overflow\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c" decompression_failure\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c" handshake_failure\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c" bad_certificate\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c" unsupported_certificate\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c" certificate_revoked\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c" certificate_expired\00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c" certificate_unknown\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c" illegal_parameter\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c" unknown_ca\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c" access_denied\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c" decode_error\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c" decrypt_error\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c" export_restriction\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c" protocol_version\00", align 1
@.str.166 = private unnamed_addr constant [23 x i8] c" insufficient_security\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c" internal_error\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c" inappropriate_fallback\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c" user_canceled\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c" no_renegotiation\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c" missing_extension\00", align 1
@.str.172 = private unnamed_addr constant [23 x i8] c" unsupported_extension\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c" certificate_unobtainable\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c" unrecognized_name\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c" bad_certificate_status_response\00", align 1
@.str.176 = private unnamed_addr constant [28 x i8] c" bad_certificate_hash_value\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c" unknown_psk_identity\00", align 1
@.str.178 = private unnamed_addr constant [22 x i8] c" certificate_required\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c", HelloRequest\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c", ClientHello\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c", ServerHello\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c", HelloVerifyRequest\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c", NewSessionTicket\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c", EndOfEarlyData\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c", EncryptedExtensions\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c", Certificate\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c", ServerKeyExchange\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c", CertificateRequest\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c", ServerHelloDone\00", align 1
@.str.190 = private unnamed_addr constant [20 x i8] c", CertificateVerify\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c", ClientKeyExchange\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c", Finished\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c", CertificateUrl\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c", CertificateStatus\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c", SupplementalData\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c", KeyUpdate\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c", NextProto\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c", MessageHash\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"server name\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"max fragment length\00", align 1
@.str.201 = private unnamed_addr constant [23 x i8] c"client certificate URL\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"trusted CA keys\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"truncated HMAC\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"status request\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"user mapping\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"client authz\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"server authz\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"cert type\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"supported_groups\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"EC point formats\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"SRP\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"signature algorithms\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"use SRTP\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"session ticket\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"renegotiation info\00", align 1
@.str.216 = private unnamed_addr constant [30 x i8] c"signed certificate timestamps\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"TLS padding\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"next protocol\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"encrypt-then-mac\00", align 1
@.str.220 = private unnamed_addr constant [39 x i8] c"application layer protocol negotiation\00", align 1
@.str.221 = private unnamed_addr constant [23 x i8] c"extended master secret\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"key share\00", align 1
@.str.223 = private unnamed_addr constant [19 x i8] c"supported versions\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"psk kex modes\00", align 1
@.str.226 = private unnamed_addr constant [24 x i8] c"certificate authorities\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"post handshake auth\00", align 1
@.str.228 = private unnamed_addr constant [34 x i8] c"Checking cert chain %d:\0ASubject: \00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"\09%s: %s\0A\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"NOT OK\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"\09Suite B: \00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"NOT OK\0A\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"not tested\0A\00", align 1
@.str.236 = private unnamed_addr constant [17 x i8] c"Overall Validity\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"Sign with EE key\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"EE signature\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"CA signature\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"EE key parameters\00", align 1
@.str.241 = private unnamed_addr constant [18 x i8] c"CA key parameters\00", align 1
@.str.242 = private unnamed_addr constant [28 x i8] c"Explicitly sign with EE key\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"Issuer Name\00", align 1
@.str.244 = private unnamed_addr constant [17 x i8] c"Certificate Type\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"prepend cert\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.247 = private unnamed_addr constant [44 x i8] c"%s: %zu-byte buffer too large to hexencode\0A\00", align 1
@.str.248 = private unnamed_addr constant [21 x i8] c"TLSA hex data buffer\00", align 1
@print_raw_cipherlist.scsv_id = internal constant [2 x i8] c"\00\FF", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"assertion failed: num == 2\00", align 1
@.str.250 = private unnamed_addr constant [21 x i8] c"Client cipher list: \00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"SCSV\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.254 = private unnamed_addr constant [20 x i8] c"Security callback: \00", align 1
@callback_types = internal global [20 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.266, i32 0, i32 0), i32 65537 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.267, i32 0, i32 0), i32 65538 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.268, i32 0, i32 0), i32 65539 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.269, i32 0, i32 0), i32 262151 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.270, i32 0, i32 0), i32 131076 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.271, i32 0, i32 0), i32 131077 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.272, i32 0, i32 0), i32 131078 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.273, i32 0, i32 0), i32 327691 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.274, i32 0, i32 0), i32 327692 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.275, i32 0, i32 0), i32 327693 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.276, i32 0, i32 0), i32 327694 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.277, i32 0, i32 0), i32 393232 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.278, i32 0, i32 0), i32 393233 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.279, i32 0, i32 0), i32 397328 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.280, i32 0, i32 0), i32 397329 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.281, i32 0, i32 0), i32 393234 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.282, i32 0, i32 0), i32 397330 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.283, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.284, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.255 = private unnamed_addr constant [11 x i8] c"Version=%s\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"%s, bits=%d\00", align 1
@.str.258 = private unnamed_addr constant [39 x i8] c"s_cb.c:security_callback_debug op=0x%x\00", align 1
@signature_tls13_scheme_list = internal global [20 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.285, i32 0, i32 0), i32 513 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.286, i32 0, i32 0), i32 515 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.287, i32 0, i32 0), i32 1025 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.288, i32 0, i32 0), i32 1027 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.289, i32 0, i32 0), i32 1281 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.290, i32 0, i32 0), i32 1283 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.291, i32 0, i32 0), i32 1537 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.292, i32 0, i32 0), i32 1539 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.293, i32 0, i32 0), i32 2052 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.294, i32 0, i32 0), i32 2053 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.295, i32 0, i32 0), i32 2054 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.296, i32 0, i32 0), i32 2055 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.297, i32 0, i32 0), i32 2056 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.298, i32 0, i32 0), i32 2057 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.299, i32 0, i32 0), i32 2058 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.300, i32 0, i32 0), i32 2059 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i32 60909 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.302, i32 0, i32 0), i32 61166 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.303, i32 0, i32 0), i32 61423 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.259 = private unnamed_addr constant [11 x i8] c" scheme=%s\00", align 1
@signature_tls12_alg_list = internal global [5 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st zeroinitializer], align 16
@signature_tls12_hash_list = internal global [8 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.305, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.307, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.308, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.309, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0), i32 6 }, %struct.string_int_pair_st zeroinitializer], align 16
@.str.260 = private unnamed_addr constant [25 x i8] c" digest=%s, algorithm=%s\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c" scheme=unknown(0x%04x)\00", align 1
@.str.262 = private unnamed_addr constant [19 x i8] c", security bits=%d\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.266 = private unnamed_addr constant [22 x i8] c"Supported Ciphersuite\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"Shared Ciphersuite\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"Check Ciphersuite\00", align 1
@.str.269 = private unnamed_addr constant [17 x i8] c"Temp DH key bits\00", align 1
@.str.270 = private unnamed_addr constant [16 x i8] c"Supported Curve\00", align 1
@.str.271 = private unnamed_addr constant [13 x i8] c"Shared Curve\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"Check Curve\00", align 1
@.str.273 = private unnamed_addr constant [30 x i8] c"Supported Signature Algorithm\00", align 1
@.str.274 = private unnamed_addr constant [27 x i8] c"Shared Signature Algorithm\00", align 1
@.str.275 = private unnamed_addr constant [26 x i8] c"Check Signature Algorithm\00", align 1
@.str.276 = private unnamed_addr constant [25 x i8] c"Signature Algorithm mask\00", align 1
@.str.277 = private unnamed_addr constant [25 x i8] c"Certificate chain EE key\00", align 1
@.str.278 = private unnamed_addr constant [25 x i8] c"Certificate chain CA key\00", align 1
@.str.279 = private unnamed_addr constant [18 x i8] c"Peer Chain EE key\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"Peer Chain CA key\00", align 1
@.str.281 = private unnamed_addr constant [28 x i8] c"Certificate chain CA digest\00", align 1
@.str.282 = private unnamed_addr constant [21 x i8] c"Peer chain CA digest\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"SSL compression\00", align 1
@.str.284 = private unnamed_addr constant [15 x i8] c"Session ticket\00", align 1
@.str.285 = private unnamed_addr constant [15 x i8] c"rsa_pkcs1_sha1\00", align 1
@.str.286 = private unnamed_addr constant [11 x i8] c"ecdsa_sha1\00", align 1
@.str.287 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha256\00", align 1
@.str.288 = private unnamed_addr constant [23 x i8] c"ecdsa_secp256r1_sha256\00", align 1
@.str.289 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha384\00", align 1
@.str.290 = private unnamed_addr constant [23 x i8] c"ecdsa_secp384r1_sha384\00", align 1
@.str.291 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha512\00", align 1
@.str.292 = private unnamed_addr constant [23 x i8] c"ecdsa_secp521r1_sha512\00", align 1
@.str.293 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha256\00", align 1
@.str.294 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha384\00", align 1
@.str.295 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha512\00", align 1
@.str.296 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"ed448\00", align 1
@.str.298 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha256\00", align 1
@.str.299 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha384\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha512\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"gostr34102001\00", align 1
@.str.302 = private unnamed_addr constant [18 x i8] c"gostr34102012_256\00", align 1
@.str.303 = private unnamed_addr constant [18 x i8] c"gostr34102012_512\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.311 = private unnamed_addr constant [48 x i8] c"Keylog callback is invoked without valid file!\0A\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @verify_callback(i32 noundef %ok, %struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef %ctx) #9
  %call1 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %ctx) #9
  %call2 = tail call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef %ctx) #9
  %0 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4, !tbaa !4
  %tobool = icmp ne i32 %0, 0
  %tobool3 = icmp ne i32 %ok, 0
  %or.cond = and i1 %tobool3, %tobool
  br i1 %or.cond, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %call2) #9
  %cmp.not = icmp eq %struct.x509_st* %call, null
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call) #9
  %call7 = tail call i64 @get_nameopt() #9
  %call8 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %2, %struct.X509_name_st* noundef %call6, i32 noundef 0, i64 noundef %call7) #9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end11

if.else:                                          ; preds = %if.then
  %call10 = tail call i32 @BIO_puts(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.else, %entry
  br i1 %tobool3, label %if.end27, label %if.then13

if.then13:                                        ; preds = %if.end11
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %conv = sext i32 %call1 to i64
  %call14 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #9
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call1, i8* noundef %call14) #9
  %5 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 0), align 4, !tbaa !11
  %cmp16 = icmp sgt i32 %5, -1
  %cmp19.not = icmp slt i32 %5, %call2
  %or.cond85 = select i1 %cmp16, i1 %cmp19.not, i1 false
  %6 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 3), align 4
  %tobool22.not = icmp eq i32 %6, 0
  %call1.sink = select i1 %or.cond85, i32 22, i32 %call1
  %not.or.cond85 = xor i1 %or.cond85, true
  %narrow = select i1 %not.or.cond85, i1 %tobool22.not, i1 false
  %ok.addr.1.ph = zext i1 %narrow to i32
  store i32 %call1.sink, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 2), align 4, !tbaa !12
  br label %if.end27

if.end27:                                         ; preds = %if.then13, %if.end11
  %ok.addr.1 = phi i32 [ %ok, %if.end11 ], [ %ok.addr.1.ph, %if.then13 ]
  switch i32 %call1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 9, label %sw.bb33
    i32 13, label %sw.bb33
    i32 10, label %sw.bb38
    i32 14, label %sw.bb38
    i32 43, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end27
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call28 = tail call i32 @BIO_puts(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #9
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call29 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %call) #9
  %call30 = tail call i64 @get_nameopt() #9
  %call31 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %8, %struct.X509_name_st* noundef %call29, i32 noundef 0, i64 noundef %call30) #9
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call32 = tail call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end54

sw.bb33:                                          ; preds = %if.end27, %if.end27
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #9
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call35 = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef %call) #9
  %call36 = tail call i32 @ASN1_TIME_print(%struct.bio_st* noundef %11, %struct.asn1_string_st* noundef %call35) #9
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call37 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end54

sw.bb38:                                          ; preds = %if.end27, %if.end27
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call39 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #9
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call40 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %call) #9
  %call41 = tail call i32 @ASN1_TIME_print(%struct.bio_st* noundef %14, %struct.asn1_string_st* noundef %call40) #9
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end54

sw.bb43:                                          ; preds = %if.end27
  %16 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4, !tbaa !4
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %if.then45, label %if.end54

if.then45:                                        ; preds = %sw.bb43
  tail call void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) #9
  br label %if.end54

sw.epilog:                                        ; preds = %if.end27
  %cmp47 = icmp ne i32 %call1, 0
  %cmp49 = icmp ne i32 %ok.addr.1, 2
  %or.cond61.not = or i1 %cmp47, %cmp49
  %17 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4
  %tobool52 = icmp ne i32 %17, 0
  %or.cond62 = select i1 %or.cond61.not, i1 true, i1 %tobool52
  br i1 %or.cond62, label %if.end54, label %if.then53

if.then53:                                        ; preds = %sw.epilog
  tail call void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) #9
  br label %if.end54

if.end54:                                         ; preds = %sw.bb, %sw.bb33, %sw.bb38, %if.then45, %sw.bb43, %if.then53, %sw.epilog
  %tobool55 = icmp eq i32 %ok.addr.1, 0
  %18 = load i32, i32* getelementptr inbounds (%struct.verify_options_st, %struct.verify_options_st* @verify_args, i64 0, i32 1), align 4
  %tobool57 = icmp ne i32 %18, 0
  %or.cond63 = select i1 %tobool55, i1 true, i1 %tobool57
  br i1 %or.cond63, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end54
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef %ok.addr.1) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end54
  ret i32 %ok.addr.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i64 @get_nameopt() local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @policies_print(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @set_cert_stuff(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %cert_file, i8* noundef %key_file) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %cert_file, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %cert_file, i32 noundef 1) #9
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %cert_file) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #9
  br label %return

if.end:                                           ; preds = %if.then
  %cmp4 = icmp eq i8* %key_file, null
  %spec.select = select i1 %cmp4, i8* %cert_file, i8* %key_file
  %call7 = tail call i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %spec.select, i32 noundef 1) #9
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %spec.select) #9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #9
  br label %return

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef %ctx) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %return

if.then13:                                        ; preds = %if.end11
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #9
  br label %return

return:                                           ; preds = %entry, %if.end11, %if.then13, %if.then9, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then9 ], [ 0, %if.then13 ], [ 1, %if.end11 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @set_cert_key_stuff(%struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert, %struct.evp_pkey_st* noundef %key, %struct.stack_st_X509* noundef %chain, i32 noundef %build_chain) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.stack_st_X509* %chain, null
  %cmp = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef nonnull %cert) #9
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %key) #9
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef %ctx) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  br i1 %tobool.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %5 = bitcast %struct.stack_st_X509* %chain to i8*
  %call16 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 88, i64 noundef 1, i8* noundef nonnull %5) #9
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #9
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %7) #9
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %if.end14
  %tobool21.not = icmp eq i32 %build_chain, 0
  br i1 %tobool21.not, label %cleanup, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20
  %8 = select i1 %tobool.not, i64 0, i64 4
  %call23 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 105, i64 noundef %8, i8* noundef null) #9
  %tobool24.not = icmp eq i64 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %cleanup

if.then25:                                        ; preds = %land.lhs.true22
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0)) #9
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true22, %entry, %if.then25, %if.then18, %if.then12, %if.then7, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then7 ], [ 0, %if.then25 ], [ 0, %if.then18 ], [ 0, %if.then12 ], [ 1, %entry ], [ 1, %land.lhs.true22 ], [ 1, %if.end20 ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_print_sigalgs(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %nid = alloca i32, align 4
  %0 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ssl_print_client_cert_types(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @do_print_sigalgs(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s, i32 noundef 0) #11
  tail call fastcc void @do_print_sigalgs(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s, i32 noundef 1) #11
  %call3 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 108, i64 noundef 0, i8* noundef nonnull %0) #9
  %tobool4 = icmp ne i64 %call3, 0
  %1 = load i32, i32* %nid, align 4
  %cmp = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool4, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %call6 = call i8* @OBJ_nid2sn(i32 noundef %1) #9
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %call9 = call i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef %s, i32* noundef nonnull %nid) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end8
  %2 = load i32, i32* %nid, align 4, !tbaa !13
  %call12 = call fastcc i8* @get_sigtype(i32 noundef %2) #11
  %call13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call12) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 1
}

declare i32 @SSL_is_server(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_print_client_cert_types(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 103, i64 noundef 0, i8* noundef nonnull %0) #9
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i64 0, i64 0)) #9
  %cmp32 = icmp sgt i32 %conv, 0
  br i1 %cmp32, label %if.end8.peel, label %for.end

if.end8.peel:                                     ; preds = %if.end
  %wide.trip.count = and i64 %call, 4294967295
  %1 = load i8*, i8** %p, align 8, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !14
  %conv3.peel = zext i8 %2 to i32
  %call4.peel = call fastcc i8* @lookup(i32 noundef %conv3.peel, %struct.string_int_pair_st* noundef getelementptr inbounds ([10 x %struct.string_int_pair_st], [10 x %struct.string_int_pair_st]* @cert_type_list, i64 0, i64 0), i8* noundef null) #11
  %cmp9.not.peel = icmp eq i8* %call4.peel, null
  br i1 %cmp9.not.peel, label %if.else.peel, label %if.then11.peel

if.then11.peel:                                   ; preds = %if.end8.peel
  %call12.peel = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef nonnull %call4.peel) #9
  br label %if.end15.peel

if.else.peel:                                     ; preds = %if.end8.peel
  %call14.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv3.peel) #9
  br label %if.end15.peel

if.end15.peel:                                    ; preds = %if.else.peel, %if.then11.peel
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.peel.not, label %for.end, label %if.end8

if.end8:                                          ; preds = %if.end15.peel, %if.end15
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end15 ], [ 1, %if.end15.peel ]
  %3 = load i8*, i8** %p, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv3 = zext i8 %4 to i32
  %call4 = call fastcc i8* @lookup(i32 noundef %conv3, %struct.string_int_pair_st* noundef getelementptr inbounds ([10 x %struct.string_int_pair_st], [10 x %struct.string_int_pair_st]* @cert_type_list, i64 0, i64 0), i8* noundef null) #11
  %call7 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0)) #9
  %cmp9.not = icmp eq i8* %call4, null
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef nonnull %call4) #9
  br label %if.end15

if.else:                                          ; preds = %if.end8
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv3) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %if.end8, !llvm.loop !15

for.end:                                          ; preds = %if.end15, %if.end15.peel, %if.end
  %call16 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_print_sigalgs(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s, i32 noundef %shared) unnamed_addr #0 {
entry:
  %hash_nid = alloca i32, align 4
  %sign_nid = alloca i32, align 4
  %rhash = alloca i8, align 1
  %rsign = alloca i8, align 1
  %call = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool.not = icmp eq i32 %call, 0
  %tobool1.not = icmp eq i32 %shared, 0
  br i1 %tobool1.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @SSL_get_sigalgs(%struct.ssl_st* noundef %s, i32 noundef -1, i32* noundef null, i32* noundef null, i32* noundef null, i8* noundef null, i8* noundef null) #9
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %cleanup, label %if.end9

if.end.thread:                                    ; preds = %entry
  %call2 = tail call i32 @SSL_get_shared_sigalgs(%struct.ssl_st* noundef %s, i32 noundef 0, i32* noundef null, i32* noundef null, i32* noundef null, i8* noundef null, i8* noundef null) #9
  %cmp2 = icmp eq i32 %call2, 0
  br i1 %cmp2, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end.thread
  %call8 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0)) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then7
  %nsig.036 = phi i32 [ %call2, %if.then7 ], [ %call3, %if.end ]
  br i1 %tobool.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i64 0, i64 0)) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %call14 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i64 0, i64 0)) #9
  %cmp158 = icmp sgt i32 %nsig.036, 0
  br i1 %cmp158, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %0 = bitcast i32* %hash_nid to i8*
  %1 = bitcast i32* %sign_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rhash) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rsign) #10
  br i1 %tobool1.not, label %if.else19.peel, label %if.then17.peel

if.then17.peel:                                   ; preds = %for.body.lr.ph
  %call18.peel = call i32 @SSL_get_shared_sigalgs(%struct.ssl_st* noundef %s, i32 noundef 0, i32* noundef nonnull %sign_nid, i32* noundef nonnull %hash_nid, i32* noundef null, i8* noundef nonnull %rsign, i8* noundef nonnull %rhash) #9
  br label %if.end25.peel

if.else19.peel:                                   ; preds = %for.body.lr.ph
  %call20.peel = call i32 @SSL_get_sigalgs(%struct.ssl_st* noundef %s, i32 noundef 0, i32* noundef nonnull %sign_nid, i32* noundef nonnull %hash_nid, i32* noundef null, i8* noundef nonnull %rsign, i8* noundef nonnull %rhash) #9
  br label %if.end25.peel

if.end25.peel:                                    ; preds = %if.else19.peel, %if.then17.peel
  %.pre = load i32, i32* %sign_nid, align 4, !tbaa !13
  %call26.peel = call fastcc i8* @get_sigtype(i32 noundef %.pre) #11
  %tobool27.not.peel = icmp eq i8* %call26.peel, null
  br i1 %tobool27.not.peel, label %if.end32.peel, label %if.end32.thread.peel

if.end32.thread.peel:                             ; preds = %if.end25.peel
  %call29.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %call26.peel) #9
  %2 = load i32, i32* %hash_nid, align 4, !tbaa !13
  %cmp33.not7.peel = icmp eq i32 %2, 0
  br i1 %cmp33.not7.peel, label %if.end45.peel, label %if.then35.peel

if.end32.peel:                                    ; preds = %if.end25.peel
  %3 = load i8, i8* %rsign, align 1, !tbaa !14
  %conv.peel = zext i8 %3 to i32
  %call31.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), i32 noundef %conv.peel) #9
  %4 = load i32, i32* %hash_nid, align 4, !tbaa !13
  %cmp33.not.peel = icmp eq i32 %4, 0
  br i1 %cmp33.not.peel, label %if.then41.peel, label %if.then35.peel

if.then35.peel:                                   ; preds = %if.end32.peel, %if.end32.thread.peel
  %5 = phi i32 [ %2, %if.end32.thread.peel ], [ %4, %if.end32.peel ]
  %call36.peel = call i8* @OBJ_nid2sn(i32 noundef %5) #9
  %call37.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* noundef %call36.peel) #9
  br label %if.end45.peel

if.then41.peel:                                   ; preds = %if.end32.peel
  %6 = load i8, i8* %rhash, align 1, !tbaa !14
  %conv42.peel = zext i8 %6 to i32
  %call43.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i64 0, i64 0), i32 noundef %conv42.peel) #9
  br label %if.end45.peel

if.end45.peel:                                    ; preds = %if.then41.peel, %if.then35.peel, %if.end32.thread.peel
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rsign) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rhash) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  %exitcond.peel.not = icmp eq i32 %nsig.036, 1
  br i1 %exitcond.peel.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end45.peel, %if.end45
  %i.09 = phi i32 [ %inc, %if.end45 ], [ 1, %if.end45.peel ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rhash) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rsign) #10
  br i1 %tobool1.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %for.body
  %call18 = call i32 @SSL_get_shared_sigalgs(%struct.ssl_st* noundef %s, i32 noundef %i.09, i32* noundef nonnull %sign_nid, i32* noundef nonnull %hash_nid, i32* noundef null, i8* noundef nonnull %rsign, i8* noundef nonnull %rhash) #9
  br label %if.end25

if.else19:                                        ; preds = %for.body
  %call20 = call i32 @SSL_get_sigalgs(%struct.ssl_st* noundef %s, i32 noundef %i.09, i32* noundef nonnull %sign_nid, i32* noundef nonnull %hash_nid, i32* noundef null, i8* noundef nonnull %rsign, i8* noundef nonnull %rhash) #9
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.then17
  %call24 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  %7 = load i32, i32* %sign_nid, align 4, !tbaa !13
  %call26 = call fastcc i8* @get_sigtype(i32 noundef %7) #11
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %if.end32, label %if.end32.thread

if.end32:                                         ; preds = %if.end25
  %8 = load i8, i8* %rsign, align 1, !tbaa !14
  %conv = zext i8 %8 to i32
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), i32 noundef %conv) #9
  %9 = load i32, i32* %hash_nid, align 4, !tbaa !13
  %cmp33.not = icmp eq i32 %9, 0
  br i1 %cmp33.not, label %if.then41, label %if.then35

if.end32.thread:                                  ; preds = %if.end25
  %call29 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %call26) #9
  %10 = load i32, i32* %hash_nid, align 4, !tbaa !13
  %cmp33.not7 = icmp eq i32 %10, 0
  br i1 %cmp33.not7, label %if.end45, label %if.then35

if.then35:                                        ; preds = %if.end32.thread, %if.end32
  %11 = phi i32 [ %10, %if.end32.thread ], [ %9, %if.end32 ]
  %call36 = call i8* @OBJ_nid2sn(i32 noundef %11) #9
  %call37 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0), i8* noundef %call36) #9
  br label %if.end45

if.then41:                                        ; preds = %if.end32
  %12 = load i8, i8* %rhash, align 1, !tbaa !14
  %conv42 = zext i8 %12 to i32
  %call43 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i64 0, i64 0), i32 noundef %conv42) #9
  br label %if.end45

if.end45:                                         ; preds = %if.end32.thread, %if.then41, %if.then35
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rsign) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rhash) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %nsig.036
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !18

for.end:                                          ; preds = %if.end45, %if.end45.peel, %if.end13
  %call46 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end, %for.end
  ret void
}

declare i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @get_sigtype(i32 noundef %nid) unnamed_addr #3 {
entry:
  switch i32 %nid, label %sw.default [
    i32 6, label %return
    i32 912, label %sw.bb1
    i32 116, label %sw.bb2
    i32 408, label %sw.bb3
    i32 1087, label %sw.bb4
    i32 1088, label %sw.bb5
    i32 811, label %sw.bb6
    i32 979, label %sw.bb7
    i32 980, label %sw.bb8
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ null, %sw.default ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_print_point_formats(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %pformats = alloca i8*, align 8
  %0 = bitcast i8** %pformats to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 111, i64 noundef 0, i8* noundef nonnull %0) #9
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %cleanup, label %if.end7.peel

if.end7.peel:                                     ; preds = %entry
  %call2 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0)) #9
  %.pre = load i8*, i8** %pformats, align 8, !tbaa !9
  %.pre33 = load i8, i8* %.pre, align 1, !tbaa !14
  %phi.cast = sext i8 %.pre33 to i32
  switch i32 %phi.cast, label %sw.default.peel [
    i32 0, label %sw.bb.peel
    i32 1, label %sw.bb10.peel
    i32 2, label %sw.bb12.peel
  ]

sw.bb12.peel:                                     ; preds = %if.end7.peel
  %call13.peel = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0)) #9
  br label %for.inc.peel

sw.bb10.peel:                                     ; preds = %if.end7.peel
  %call11.peel = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #9
  br label %for.inc.peel

sw.bb.peel:                                       ; preds = %if.end7.peel
  %call9.peel = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %for.inc.peel

sw.default.peel:                                  ; preds = %if.end7.peel
  %call15.peel = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef %phi.cast) #9
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %sw.default.peel, %sw.bb.peel, %sw.bb10.peel, %sw.bb12.peel
  %1 = load i8*, i8** %pformats, align 8, !tbaa !9
  %incdec.ptr.peel = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %incdec.ptr.peel, i8** %pformats, align 8, !tbaa !9
  %exitcond.peel.not = icmp eq i32 %conv, 1
  br i1 %exitcond.peel.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %for.inc.peel, %for.inc
  %i.031 = phi i32 [ %inc, %for.inc ], [ 1, %for.inc.peel ]
  %call6 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  %.pre34 = load i8*, i8** %pformats, align 8, !tbaa !9
  %2 = load i8, i8* %.pre34, align 1, !tbaa !14
  %conv8 = sext i8 %2 to i32
  switch i32 %conv8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end7
  %call9 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %for.inc

sw.bb10:                                          ; preds = %if.end7
  %call11 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #9
  br label %for.inc

sw.bb12:                                          ; preds = %if.end7
  %call13 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0)) #9
  br label %for.inc

sw.default:                                       ; preds = %if.end7
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv8) #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb10, %sw.bb12, %sw.default
  %inc = add nuw nsw i32 %i.031, 1
  %3 = load i8*, i8** %pformats, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %incdec.ptr, i8** %pformats, align 8, !tbaa !9
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %if.end7, !llvm.loop !19

for.end:                                          ; preds = %for.inc, %for.inc.peel
  %call16 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_print_groups(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s, i32 noundef %noshared) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 90, i64 noundef 0, i8* noundef null) #9
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %cleanup, label %if.end10.peel

if.end10.peel:                                    ; preds = %entry
  %sext = shl i64 %call, 32
  %mul = ashr exact i64 %sext, 30
  %call3 = tail call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0)) #9
  %0 = bitcast i8* %call3 to i32*
  %call4 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 90, i64 noundef 0, i8* noundef %call3) #9
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0)) #9
  %wide.trip.count = and i64 %call, 4294967295
  %.pre = load i32, i32* %0, align 4, !tbaa !13
  %call11.peel = tail call i8* @SSL_group_to_name(%struct.ssl_st* noundef %s, i32 noundef %.pre) #9
  %call12.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call11.peel) #9
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.peel.not, label %for.end, label %if.end10

if.end10:                                         ; preds = %if.end10.peel, %if.end10
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end10 ], [ 1, %if.end10.peel ]
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %call11 = tail call i8* @SSL_group_to_name(%struct.ssl_st* noundef %s, i32 noundef %1) #9
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call11) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %if.end10, !llvm.loop !20

for.end:                                          ; preds = %if.end10, %if.end10.peel
  tail call void @CRYPTO_free(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 362) #9
  %tobool13.not = icmp eq i32 %noshared, 0
  br i1 %tobool13.not, label %if.end16, label %cleanup.sink.split

if.end16:                                         ; preds = %for.end
  %call17 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0)) #9
  %call18 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 93, i64 noundef -1, i8* noundef null) #9
  %conv19 = trunc i64 %call18 to i32
  %cmp2178 = icmp sgt i32 %conv19, 0
  br i1 %cmp2178, label %if.end27.peel, label %for.end35

if.end27.peel:                                    ; preds = %if.end16
  %wide.trip.count85 = and i64 %call18, 4294967295
  %call29.peel = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 93, i64 noundef 0, i8* noundef null) #9
  %conv30.peel = trunc i64 %call29.peel to i32
  %call31.peel = tail call i8* @SSL_group_to_name(%struct.ssl_st* noundef %s, i32 noundef %conv30.peel) #9
  %call32.peel = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call31.peel) #9
  %exitcond86.peel.not = icmp eq i64 %wide.trip.count85, 1
  br i1 %exitcond86.peel.not, label %cleanup.sink.split, label %if.end27

if.end27:                                         ; preds = %if.end27.peel, %if.end27
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %if.end27 ], [ 1, %if.end27.peel ]
  %call26 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  %call29 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 93, i64 noundef %indvars.iv82, i8* noundef null) #9
  %conv30 = trunc i64 %call29 to i32
  %call31 = tail call i8* @SSL_group_to_name(%struct.ssl_st* noundef %s, i32 noundef %conv30) #9
  %call32 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call31) #9
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %for.end35, label %if.end27, !llvm.loop !21

for.end35:                                        ; preds = %if.end27, %if.end16
  %cmp36 = icmp eq i32 %conv19, 0
  br i1 %cmp36, label %if.then38, label %cleanup.sink.split

if.then38:                                        ; preds = %for.end35
  %call39 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end35, %if.then38, %if.end27.peel, %for.end
  %call41 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret i32 1
}

declare i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @SSL_group_to_name(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_print_tmp_key(%struct.bio_st* noundef %out, %struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %key = alloca %struct.evp_pkey_st*, align 8
  %name = alloca [80 x i8], align 16
  %name_len = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 109, i64 noundef 0, i8* noundef nonnull %0) #9
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0)) #9
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call2 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %1) #9
  switch i32 %call2, label %sw.default [
    i32 6, label %sw.bb
    i32 28, label %sw.bb5
    i32 408, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call3 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %2) #9
  %call4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call3) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call6 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %3) #9
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call6) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #10
  %5 = bitcast i64* %name_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call9 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 80, i64* noundef nonnull %name_len) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %sw.bb8
  %call13 = call i8* @strcpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %sw.bb8
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call16 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %7) #9
  %call17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* noundef nonnull %4, i32 noundef %call16) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call18 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %8) #9
  %call19 = call i8* @OBJ_nid2sn(i32 noundef %call18) #9
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %call20 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %9) #9
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef %call19, i32 noundef %call20) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end14, %sw.bb5, %sw.bb
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 1
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @bio_dump_callback(%struct.bio_st* noundef %bio, i32 noundef %cmd, i8* noundef %argp, i64 noundef %len, i32 noundef %argi, i64 noundef %argl, i32 noundef %ret, i64* noundef readonly %processed) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @BIO_get_callback_arg(%struct.bio_st* noundef %bio) #9
  %0 = bitcast i8* %call to %struct.bio_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 130, label %if.then3
    i32 131, label %if.then17
  ]

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %ret, 0
  %cmp6 = icmp ne i64* %processed, null
  %or.cond = and i1 %cmp4, %cmp6
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  %1 = load i64, i64* %processed, align 8, !tbaa !22
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0), %struct.bio_st* noundef %bio, i8* noundef %argp, i64 noundef %len, i64 noundef %1, i64 noundef %1) #9
  %2 = load i64, i64* %processed, align 8, !tbaa !22
  %conv10 = trunc i64 %2 to i32
  %call11 = tail call i32 @BIO_dump(%struct.bio_st* noundef nonnull %0, i8* noundef %argp, i32 noundef %conv10) #9
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0), %struct.bio_st* noundef %bio, i8* noundef %argp, i64 noundef %len, i32 noundef %ret) #9
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %cmp18 = icmp sgt i32 %ret, 0
  %cmp21 = icmp ne i64* %processed, null
  %or.cond33 = and i1 %cmp18, %cmp21
  br i1 %or.cond33, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.then17
  %3 = load i64, i64* %processed, align 8, !tbaa !22
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.bio_st* noundef %bio, i8* noundef %argp, i64 noundef %len, i64 noundef %3, i64 noundef %3) #9
  %4 = load i64, i64* %processed, align 8, !tbaa !22
  %conv25 = trunc i64 %4 to i32
  %call26 = tail call i32 @BIO_dump(%struct.bio_st* noundef nonnull %0, i8* noundef %argp, i32 noundef %conv25) #9
  br label %cleanup

if.else27:                                        ; preds = %if.then17
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0), %struct.bio_st* noundef %bio, i8* noundef %argp, i64 noundef %len, i32 noundef %ret) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then23, %if.else27, %if.end, %entry
  %retval.0 = sext i32 %ret to i64
  ret i64 %retval.0
}

declare i8* @BIO_get_callback_arg(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_dump(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @apps_ssl_info_callback(%struct.ssl_st* noundef %s, i32 noundef %where, i32 noundef %ret) local_unnamed_addr #0 {
entry:
  %and1 = and i32 %where, 4096
  %tobool.not = icmp eq i32 %and1, 0
  %and2 = and i32 %where, 8192
  %tobool3.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool3.not, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0)
  %str.0 = select i1 %tobool.not, i8* %., i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)
  %and7 = and i32 %where, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call = tail call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s) #9
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef %str.0, i8* noundef %call) #9
  br label %if.end36

if.else11:                                        ; preds = %entry
  %and12 = and i32 %where, 16384
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else20, label %if.then14

if.then14:                                        ; preds = %if.else11
  %and15 = and i32 %where, 4
  %tobool16.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool16.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call17 = tail call i8* @SSL_alert_type_string_long(i32 noundef %ret) #9
  %call18 = tail call i8* @SSL_alert_desc_string_long(i32 noundef %ret) #9
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* noundef %cond, i8* noundef %call17, i8* noundef %call18) #9
  br label %if.end36

if.else20:                                        ; preds = %if.else11
  %and21 = and i32 %where, 2
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end36, label %if.then23

if.then23:                                        ; preds = %if.else20
  %cmp = icmp eq i32 %ret, 0
  br i1 %cmp, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.then23
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call25 = tail call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s) #9
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* noundef %str.0, i8* noundef %call25) #9
  br label %if.end36

if.else27:                                        ; preds = %if.then23
  %cmp28 = icmp slt i32 %ret, 0
  br i1 %cmp28, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.else27
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call30 = tail call i8* @SSL_state_string_long(%struct.ssl_st* noundef %s) #9
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8* noundef %str.0, i8* noundef %call30) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then14, %if.then24, %if.then29, %if.else27, %if.else20, %if.then9
  ret void
}

declare i8* @SSL_state_string_long(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @SSL_alert_type_string_long(i32 noundef) local_unnamed_addr #2

declare i8* @SSL_alert_desc_string_long(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @msg_cb(i32 noundef %write_p, i32 noundef %version, i32 noundef %content_type, i8* nocapture noundef readonly %buf, i64 noundef %len, %struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %tmpbuf = alloca [128 x i8], align 16
  %0 = bitcast i8* %arg to %struct.bio_st*
  %tobool.not = icmp eq i32 %write_p, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #10
  switch i32 %version, label %if.else [
    i32 65279, label %if.then
    i32 772, label %if.then
    i32 771, label %if.then
    i32 770, label %if.then
    i32 769, label %if.then
    i32 768, label %if.then
    i32 256, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call = tail call fastcc i8* @lookup(i32 noundef %version, %struct.string_int_pair_st* noundef getelementptr inbounds ([8 x %struct.string_int_pair_st], [8 x %struct.string_int_pair_st]* @ssl_versions, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #11
  switch i32 %content_type, label %sw.default [
    i32 20, label %if.end37
    i32 21, label %sw.bb12
    i32 22, label %sw.bb20
    i32 23, label %sw.bb28
    i32 256, label %sw.bb29
    i32 257, label %sw.bb30
  ]

sw.bb12:                                          ; preds = %if.then
  %cmp13 = icmp eq i64 %len, 2
  br i1 %cmp13, label %if.then14, label %if.end37

if.then14:                                        ; preds = %sw.bb12
  %2 = load i8, i8* %buf, align 1, !tbaa !14
  %switch.selectcmp = icmp eq i8 %2, 2
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)
  %switch.selectcmp108 = icmp eq i8 %2, 1
  %switch.select109 = select i1 %switch.selectcmp108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0), i8* %switch.select
  %arrayidx17 = getelementptr inbounds i8, i8* %buf, i64 1
  %3 = load i8, i8* %arrayidx17, align 1, !tbaa !14
  %conv18 = zext i8 %3 to i32
  %call19 = tail call fastcc i8* @lookup(i32 noundef %conv18, %struct.string_int_pair_st* noundef getelementptr inbounds ([34 x %struct.string_int_pair_st], [34 x %struct.string_int_pair_st]* @alert_types, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)) #11
  br label %if.end37.thread

sw.bb20:                                          ; preds = %if.then
  %cmp21.not = icmp eq i64 %len, 0
  br i1 %cmp21.not, label %if.end37.thread116, label %if.then23

if.end37.thread116:                               ; preds = %sw.bb20
  %call38121 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i8* noundef %cond, i8* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0)) #9
  br label %if.end61

if.then23:                                        ; preds = %sw.bb20
  %4 = load i8, i8* %buf, align 1, !tbaa !14
  %conv25 = zext i8 %4 to i32
  %call26 = tail call fastcc i8* @lookup(i32 noundef %conv25, %struct.string_int_pair_st* noundef getelementptr inbounds ([21 x %struct.string_int_pair_st], [21 x %struct.string_int_pair_st]* @handshakes, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #11
  br label %if.end37.thread

sw.bb28:                                          ; preds = %if.then
  br label %if.end37

sw.bb29:                                          ; preds = %if.then
  br label %if.end37

sw.bb30:                                          ; preds = %if.then
  br label %if.end37

sw.default:                                       ; preds = %if.then
  %call31 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 127, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i32 noundef %content_type) #9
  br label %if.end37

if.else:                                          ; preds = %entry
  %call35 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 127, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.64, i64 0, i64 0), i32 noundef %version, i32 noundef %content_type) #9
  br label %if.end37

if.end37.thread:                                  ; preds = %if.then14, %if.then23
  %str_details1.1.ph = phi i8* [ %switch.select109, %if.then14 ], [ %call26, %if.then23 ]
  %str_details2.0.ph = phi i8* [ %call19, %if.then14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %if.then23 ]
  %str_content_type.0.ph = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), %if.then14 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), %if.then23 ]
  %call38114 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i8* noundef %cond, i8* noundef %call, i8* noundef nonnull %str_content_type.0.ph, i64 noundef %len, i8* noundef %str_details1.1.ph, i8* noundef %str_details2.0.ph) #9
  br label %for.body.preheader

if.end37:                                         ; preds = %if.then, %sw.bb28, %sw.bb29, %sw.bb30, %sw.default, %sw.bb12, %if.else
  %str_details1.1 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %sw.bb30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %sw.bb29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %sw.bb28 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %if.then ]
  %str_content_type.0 = phi i8* [ %1, %sw.default ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), %sw.bb30 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), %sw.bb29 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), %sw.bb28 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), %if.then ]
  %str_version.0 = phi i8* [ %call, %sw.default ], [ %call, %sw.bb30 ], [ %call, %sw.bb29 ], [ %call, %sw.bb28 ], [ %call, %sw.bb12 ], [ %1, %if.else ], [ %call, %if.then ]
  %call38 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i8* noundef %cond, i8* noundef %str_version.0, i8* noundef nonnull %str_content_type.0, i64 noundef %len, i8* noundef nonnull %str_details1.1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0)) #9
  %cmp39.not = icmp eq i64 %len, 0
  br i1 %cmp39.not, label %if.end61, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end37, %if.end37.thread
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0)) #9
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end51
  %i.0124 = phi i64 [ %inc, %if.end51 ], [ 0, %for.body.preheader ]
  %rem = and i64 %i.0124, 15
  %cmp45 = icmp eq i64 %rem, 0
  %cmp47 = icmp ne i64 %i.0124, 0
  %or.cond69 = and i1 %cmp47, %cmp45
  br i1 %or.cond69, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body
  %call50 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0)) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body
  %arrayidx52 = getelementptr inbounds i8, i8* %buf, i64 %i.0124
  %5 = load i8, i8* %arrayidx52, align 1, !tbaa !14
  %conv53 = zext i8 %5 to i32
  %call54 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv53) #9
  %inc = add nuw i64 %i.0124, 1
  %exitcond.not = icmp eq i64 %inc, %len
  br i1 %exitcond.not, label %if.end59, label %for.body, !llvm.loop !24

if.end59:                                         ; preds = %if.end51
  %call60 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %if.end61

if.end61:                                         ; preds = %if.end37.thread116, %if.end59, %if.end37
  %call62 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @lookup(i32 noundef %val, %struct.string_int_pair_st* nocapture noundef readonly %list, i8* noundef readnone %def) unnamed_addr #5 {
entry:
  %name6 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %list, i64 0, i32 0
  %0 = load i8*, i8** %name6, align 8, !tbaa !25
  %tobool.not7 = icmp eq i8* %0, null
  br i1 %tobool.not7, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %retval110 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %list, i64 0, i32 1
  %1 = load i32, i32* %retval110, align 8, !tbaa !27
  %cmp11 = icmp eq i32 %1, %val
  br i1 %cmp11, label %return, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %list.pn = phi %struct.string_int_pair_st* [ %incdec.ptr13, %for.body ], [ %list, %for.body.preheader ]
  %incdec.ptr13 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %list.pn, i64 1
  %name = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %incdec.ptr13, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !25
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %return, label %for.body, !llvm.loop !28

for.body:                                         ; preds = %for.cond
  %retval1 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %list.pn, i64 1, i32 1
  %3 = load i32, i32* %retval1, align 8, !tbaa !27
  %cmp = icmp eq i32 %3, %val
  br i1 %cmp, label %return, label %for.cond, !llvm.loop !28

return:                                           ; preds = %for.cond, %for.body, %for.body.preheader, %entry
  %retval.0 = phi i8* [ %def, %entry ], [ %0, %for.body.preheader ], [ %2, %for.body ], [ %def, %for.cond ]
  ret i8* %retval.0
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @tlsext_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %client_server, i32 noundef %type, i8* noundef %data, i32 noundef %len, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %arg to %struct.bio_st*
  %call = tail call fastcc i8* @lookup(i32 noundef %type, %struct.string_int_pair_st* noundef getelementptr inbounds ([30 x %struct.string_int_pair_st], [30 x %struct.string_int_pair_st]* @tlsext_types, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0)) #11
  %tobool.not = icmp eq i32 %client_server, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0)
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i64 0, i64 0), i8* noundef %cond, i8* noundef %call, i32 noundef %type, i32 noundef %len) #9
  %call2 = tail call i32 @BIO_dump(%struct.bio_st* noundef %0, i8* noundef %data, i32 noundef %len) #9
  %call3 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @generate_stateless_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef %cookie, i64* noundef %cookie_len) local_unnamed_addr #0 {
entry:
  %length = alloca i64, align 8
  %port = alloca i16, align 2
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %length, align 8, !tbaa !22
  %1 = bitcast i16* %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #10
  %.b = load i1, i1* @cookie_initialized, align 4
  br i1 %.b, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cookie_secret, i64 0, i64 0), i32 noundef 16) #9
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i1 true, i1* @cookie_initialized, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %call4 = tail call i32 @SSL_is_dtls(%struct.ssl_st* noundef %ssl) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = tail call %union.bio_addr_st* @BIO_ADDR_new() #9
  %cmp8 = icmp eq %union.bio_addr_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0)) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %call12 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %ssl) #9
  %4 = bitcast %union.bio_addr_st* %call7 to i8*
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call12, i32 noundef 46, i64 noundef 0, i8* noundef nonnull %4) #9
  br label %if.end14

if.else:                                          ; preds = %if.end3
  %5 = load %union.bio_addr_st*, %union.bio_addr_st** @ourpeer, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end11
  %lpeer.0 = phi %union.bio_addr_st* [ %call7, %if.end11 ], [ null, %if.else ]
  %peer.0 = phi %union.bio_addr_st* [ %call7, %if.end11 ], [ %5, %if.else ]
  %call15 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %peer.0, i8* noundef null, i64* noundef nonnull %length) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0)) #9
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %lpeer.0) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %7 = load i64, i64* %length, align 8, !tbaa !22
  %cmp20.not = icmp eq i64 %7, 0
  br i1 %cmp20.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end19
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 780) #12
  unreachable

cond.end:                                         ; preds = %if.end19
  %call22 = call zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef %peer.0) #9
  store i16 %call22, i16* %port, align 2, !tbaa !29
  %8 = load i64, i64* %length, align 8, !tbaa !22
  %add = add i64 %8, 2
  store i64 %add, i64* %length, align 8, !tbaa !22
  %call23 = call i8* @app_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i64 0, i64 0)) #9
  %call24 = call i8* @memcpy(i8* noundef %call23, i8* noundef nonnull %1, i64 noundef 2) #9
  %add.ptr = getelementptr inbounds i8, i8* %call23, i64 2
  %call25 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %peer.0, i8* noundef nonnull %add.ptr, i64* noundef null) #9
  %9 = load i64, i64* %length, align 8, !tbaa !22
  %call26 = call i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), %struct.ossl_param_st* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cookie_secret, i64 0, i64 0), i64 noundef 16, i8* noundef %call23, i64 noundef %9, i8* noundef %cookie, i64 noundef 255, i64* noundef %cookie_len) #9
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then29, label %end

if.then29:                                        ; preds = %cond.end
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call30 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.81, i64 0, i64 0)) #9
  br label %end

end:                                              ; preds = %cond.end, %if.then29
  %res.0 = phi i32 [ 0, %if.then29 ], [ 1, %cond.end ]
  call void @CRYPTO_free(i8* noundef %call23, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 797) #9
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef %lpeer.0) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then17, %if.then9, %if.then1
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %res.0, %end ], [ 0, %if.then17 ], [ 0, %if.then1 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_is_dtls(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #2

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @BIO_ADDR_free(%union.bio_addr_st* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @verify_stateless_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef readonly %cookie, i64 noundef %cookie_len) local_unnamed_addr #0 {
entry:
  %result = alloca [64 x i8], align 16
  %resultlength = alloca i64, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  %1 = bitcast i64* %resultlength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %.b = load i1, i1* @cookie_initialized, align 4
  br i1 %.b, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @generate_stateless_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef nonnull %0, i64* noundef nonnull %resultlength) #11
  %tobool1.not = icmp ne i32 %call, 0
  %2 = load i64, i64* %resultlength, align 8
  %cmp = icmp eq i64 %2, %cookie_len
  %or.cond = select i1 %tobool1.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call5 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef %cookie, i64 noundef %cookie_len) #13
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define i32 @generate_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef %cookie, i32* nocapture noundef writeonly %cookie_len) local_unnamed_addr #0 {
entry:
  %temp = alloca i64, align 8
  %0 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %temp, align 8, !tbaa !22
  %call = call i32 @generate_stateless_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef %cookie, i64* noundef nonnull %temp) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %temp, align 8, !tbaa !22
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %cookie_len, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @verify_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef %cookie, i32 noundef %cookie_len) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %cookie_len to i64
  %call = tail call i32 @verify_stateless_cookie_callback(%struct.ssl_st* noundef %ssl, i8* noundef %cookie, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_ctx_set_excert(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_excert_st* noundef %exc) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ssl_excert_st* %exc to i8*
  tail call void @SSL_CTX_set_cert_cb(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i8*)* noundef nonnull @set_cert_cb, i8* noundef %0) #9
  ret void
}

declare void @SSL_CTX_set_cert_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cert_cb(%struct.ssl_st* noundef %ssl, i8* noundef readonly %arg) #0 {
entry:
  tail call void @SSL_certs_clear(%struct.ssl_st* noundef %ssl) #9
  %cmp = icmp eq i8* %arg, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = bitcast i8* %arg to %struct.ssl_excert_st*
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %exc.0 = phi %struct.ssl_excert_st* [ %1, %while.cond ], [ %0, %while.cond.preheader ]
  %next = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.0, i64 0, i32 9
  %1 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %next, align 8, !tbaa !31
  %cmp1.not = icmp eq %struct.ssl_excert_st* %1, null
  br i1 %cmp1.not, label %while.body5, label %while.cond, !llvm.loop !33

while.body5:                                      ; preds = %while.cond, %if.end37
  %exc.169 = phi %struct.ssl_excert_st* [ %14, %if.end37 ], [ %exc.0, %while.cond ]
  %i.068 = phi i32 [ %inc, %if.end37 ], [ 0, %while.cond ]
  %inc = add nuw nsw i32 %i.068, 1
  %cert = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.169, i64 0, i32 5
  %2 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !34
  %key = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.169, i64 0, i32 6
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !35
  %chain = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.169, i64 0, i32 7
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !36
  %call = tail call i32 @SSL_check_chain(%struct.ssl_st* noundef %ssl, %struct.x509_st* noundef %2, %struct.evp_pkey_st* noundef %3, %struct.stack_st_X509* noundef %4) #9
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.228, i64 0, i64 0), i32 noundef %inc) #9
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %7 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !34
  %call8 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %7) #9
  %call9 = tail call i64 @get_nameopt() #9
  %call10 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %6, %struct.X509_name_st* noundef %call8, i32 noundef 0, i64 noundef %call9) #9
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call11 = tail call i32 @BIO_puts(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  tail call fastcc void @print_chain_flags(%struct.ssl_st* noundef %ssl, i32 noundef %call) #11
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end37, label %if.then12

if.then12:                                        ; preds = %while.body5
  %9 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !34
  %call14 = tail call i32 @SSL_use_certificate(%struct.ssl_st* noundef %ssl, %struct.x509_st* noundef %9) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then12
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !35
  %call17 = tail call i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef %ssl, %struct.evp_pkey_st* noundef %10) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false
  %build_chain = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.169, i64 0, i32 8
  %11 = load i32, i32* %build_chain, align 8, !tbaa !37
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 105, i64 noundef 0, i8* noundef null) #9
  %tobool24.not = icmp eq i64 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end37

if.else:                                          ; preds = %if.end20
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !36
  %cmp28.not = icmp eq %struct.stack_st_X509* %12, null
  br i1 %cmp28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %if.else
  %13 = bitcast %struct.stack_st_X509* %12 to i8*
  %call31 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 88, i64 noundef 1, i8* noundef nonnull %13) #9
  %tobool32.not = icmp eq i64 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.then22, %if.then29, %if.else, %while.body5
  %prev = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.169, i64 0, i32 10
  %14 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %prev, align 8, !tbaa !38
  %cmp4.not = icmp eq %struct.ssl_excert_st* %14, null
  br i1 %cmp4.not, label %cleanup, label %while.body5, !llvm.loop !39

cleanup:                                          ; preds = %lor.lhs.false, %if.then12, %if.then22, %if.then29, %if.end37, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.then12 ], [ 0, %if.then22 ], [ 0, %if.then29 ], [ 1, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_excert_free(%struct.ssl_excert_st* noundef %exc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_excert_st* %exc, null
  br i1 %cmp, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %exc.addr.010 = phi %struct.ssl_excert_st* [ %3, %while.body ], [ %exc, %entry ]
  %cert = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.addr.010, i64 0, i32 5
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !34
  tail call void @X509_free(%struct.x509_st* noundef %0) #9
  %key = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.addr.010, i64 0, i32 6
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !35
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #9
  %chain = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.addr.010, i64 0, i32 7
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !36
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %next = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.addr.010, i64 0, i32 9
  %3 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %next, align 8, !tbaa !31
  %4 = bitcast %struct.ssl_excert_st* %exc.addr.010 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 989) #9
  %tobool.not = icmp eq %struct.ssl_excert_st* %3, null
  br i1 %tobool.not, label %cleanup, label %while.body, !llvm.loop !40

cleanup:                                          ; preds = %while.body, %entry
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @load_excert(%struct.ssl_excert_st** nocapture noundef %pexc) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  %cmp = icmp eq %struct.ssl_excert_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %certfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %0, i64 0, i32 1
  %1 = load i8*, i8** %certfile, align 8, !tbaa !41
  %cond = icmp eq i8* %1, null
  br i1 %cond, label %land.lhs.true, label %if.end8.preheader

if.end8.preheader:                                ; preds = %for.body.preheader, %if.end
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %next = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %0, i64 0, i32 9
  %2 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %next, align 8, !tbaa !31
  %cmp2 = icmp eq %struct.ssl_excert_st* %2, null
  br i1 %cmp2, label %if.then3, label %for.body.preheader

if.then3:                                         ; preds = %land.lhs.true
  tail call void @ssl_excert_free(%struct.ssl_excert_st* noundef nonnull %0) #11
  store %struct.ssl_excert_st* null, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  br label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true
  %cmp671 = icmp eq i8* %1, null
  br i1 %cmp671, label %if.then7, label %if.end8.preheader

if.then7:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0)) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end8.preheader, %for.inc.for.body_crit_edge
  %exc.06472 = phi %struct.ssl_excert_st* [ %12, %for.inc.for.body_crit_edge ], [ %0, %if.end8.preheader ]
  %4 = phi i8* [ %.pre, %for.inc.for.body_crit_edge ], [ %1, %if.end8.preheader ]
  %certfile573 = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 1
  %certform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 0
  %5 = load i32, i32* %certform, align 8, !tbaa !42
  %call10 = tail call %struct.x509_st* @load_cert_pass(i8* noundef nonnull %4, i32 noundef %5, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0)) #9
  %cert = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 5
  store %struct.x509_st* %call10, %struct.x509_st** %cert, align 8, !tbaa !34
  %cmp12 = icmp eq %struct.x509_st* %call10, null
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %keyfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 3
  %6 = load i8*, i8** %keyfile, align 8, !tbaa !43
  %cmp15.not = icmp eq i8* %6, null
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %keyform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 2
  %7 = load i32, i32* %keyform, align 8, !tbaa !44
  %call18 = tail call %struct.evp_pkey_st* @load_key(i8* noundef nonnull %6, i32 noundef %7, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i64 0, i64 0)) #9
  br label %if.end23

if.else:                                          ; preds = %if.end14
  %8 = load i8*, i8** %certfile573, align 8, !tbaa !41
  %9 = load i32, i32* %certform, align 8, !tbaa !42
  %call21 = tail call %struct.evp_pkey_st* @load_key(i8* noundef %8, i32 noundef %9, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i64 0, i64 0)) #9
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  %call18.sink = phi %struct.evp_pkey_st* [ %call21, %if.else ], [ %call18, %if.then16 ]
  %10 = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 6
  store %struct.evp_pkey_st* %call18.sink, %struct.evp_pkey_st** %10, align 8
  %cmp25 = icmp eq %struct.evp_pkey_st* %call18.sink, null
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end23
  %chainfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 4
  %11 = load i8*, i8** %chainfile, align 8, !tbaa !45
  %cmp28.not = icmp eq i8* %11, null
  br i1 %cmp28.not, label %for.inc, label %if.then29

if.then29:                                        ; preds = %if.end27
  %chain = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 7
  %call31 = tail call i32 @load_certs(i8* noundef nonnull %11, i32 noundef 0, %struct.stack_st_X509** noundef nonnull %chain, i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i64 0, i64 0)) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end27, %if.then29
  %next36 = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %exc.06472, i64 0, i32 9
  %12 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %next36, align 8, !tbaa !31
  %tobool.not = icmp eq %struct.ssl_excert_st* %12, null
  br i1 %tobool.not, label %cleanup, label %for.inc.for.body_crit_edge, !llvm.loop !46

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %certfile5.phi.trans.insert = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %12, i64 0, i32 1
  %.pre = load i8*, i8** %certfile5.phi.trans.insert, align 8, !tbaa !41
  %cmp6 = icmp eq i8* %.pre, null
  br i1 %cmp6, label %if.then7, label %if.end8

cleanup:                                          ; preds = %if.end8, %if.end23, %if.then29, %for.inc, %entry, %if.then7, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.then7 ], [ 1, %entry ], [ 0, %if.end8 ], [ 0, %if.end23 ], [ 0, %if.then29 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

declare %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @load_certs(i8* noundef, i32 noundef, %struct.stack_st_X509** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @args_excert(i32 noundef %opt, %struct.ssl_excert_st** nocapture noundef %pexc) local_unnamed_addr #0 {
entry:
  %exc = alloca %struct.ssl_excert_st*, align 8
  %0 = bitcast %struct.ssl_excert_st** %exc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  store %struct.ssl_excert_st* %1, %struct.ssl_excert_st** %exc, align 8, !tbaa !9
  %cmp = icmp eq %struct.ssl_excert_st* %1, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call fastcc void @ssl_excert_prepend(%struct.ssl_excert_st** noundef nonnull %exc) #11
  %2 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %exc, align 8, !tbaa !9
  store %struct.ssl_excert_st* %2, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %3 = phi %struct.ssl_excert_st* [ %2, %if.then ], [ %1, %entry ]
  switch i32 %opt, label %sw.epilog [
    i32 1000, label %cleanup
    i32 1007, label %cleanup
    i32 1002, label %sw.bb5
    i32 1001, label %sw.bb15
    i32 1003, label %sw.bb23
    i32 1004, label %sw.bb31
    i32 1005, label %sw.bb32
    i32 1006, label %sw.bb38
  ]

sw.bb5:                                           ; preds = %if.end4
  %certfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %certfile, align 8, !tbaa !41
  %cmp6.not = icmp eq i8* %4, null
  br i1 %cmp6.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb5
  call fastcc void @ssl_excert_prepend(%struct.ssl_excert_st** noundef nonnull %exc) #11
  %.pre = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %exc, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %sw.bb5
  %5 = phi %struct.ssl_excert_st* [ %.pre, %land.lhs.true ], [ %3, %sw.bb5 ]
  store %struct.ssl_excert_st* %5, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  %call13 = tail call i8* @opt_arg() #9
  %certfile14 = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %5, i64 0, i32 1
  store i8* %call13, i8** %certfile14, align 8, !tbaa !41
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  %keyfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 3
  %6 = load i8*, i8** %keyfile, align 8, !tbaa !43
  %cmp16.not = icmp eq i8* %6, null
  br i1 %cmp16.not, label %if.end20, label %err

if.end20:                                         ; preds = %sw.bb15
  %call21 = tail call i8* @opt_arg() #9
  store i8* %call21, i8** %keyfile, align 8, !tbaa !43
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end4
  %chainfile = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 4
  %7 = load i8*, i8** %chainfile, align 8, !tbaa !45
  %cmp24.not = icmp eq i8* %7, null
  br i1 %cmp24.not, label %if.end28, label %err

if.end28:                                         ; preds = %sw.bb23
  %call29 = tail call i8* @opt_arg() #9
  store i8* %call29, i8** %chainfile, align 8, !tbaa !45
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end4
  %build_chain = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 8
  store i32 1, i32* %build_chain, align 8, !tbaa !37
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end4
  %call33 = tail call i8* @opt_arg() #9
  %certform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 0
  %call34 = tail call i32 @opt_format(i8* noundef %call33, i64 noundef 1982, i32* noundef %certform) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %call39 = tail call i8* @opt_arg() #9
  %keyform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 2
  %call40 = tail call i32 @opt_format(i8* noundef %call39, i64 noundef 1982, i32* noundef nonnull %keyform) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb32, %if.end4, %sw.bb31, %if.end28, %if.end20, %if.end12
  br label %cleanup

err:                                              ; preds = %sw.bb23, %sw.bb15
  %.sink47 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.89, i64 0, i64 0), %sw.bb23 ]
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call26 = tail call i8* @opt_getprog() #9
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef %.sink47, i8* noundef %call26) #9
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #9
  tail call void @ssl_excert_free(%struct.ssl_excert_st* noundef nonnull %3) #11
  store %struct.ssl_excert_st* null, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.bb32, %if.end4, %if.end4, %err, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %err ], [ 0, %if.end4 ], [ 0, %if.end4 ], [ 0, %sw.bb32 ], [ 0, %sw.bb38 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_excert_prepend(%struct.ssl_excert_st** nocapture noundef %pexc) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_malloc(i64 noundef 88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.245, i64 0, i64 0)) #9
  %call1 = tail call i8* @memset(i8* noundef %call, i32 noundef 0, i64 noundef 88) #9
  %0 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %pexc, align 8, !tbaa !9
  %next = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %next to %struct.ssl_excert_st**
  store %struct.ssl_excert_st* %0, %struct.ssl_excert_st** %1, align 8, !tbaa !31
  %2 = bitcast %struct.ssl_excert_st** %pexc to i8**
  store i8* %call, i8** %2, align 8, !tbaa !9
  %3 = load %struct.ssl_excert_st*, %struct.ssl_excert_st** %1, align 8, !tbaa !31
  %tobool.not = icmp eq %struct.ssl_excert_st* %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %certform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 0
  %4 = load i32, i32* %certform, align 8, !tbaa !42
  %certform4 = bitcast i8* %call to i32*
  store i32 %4, i32* %certform4, align 8, !tbaa !42
  %keyform = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 2
  %5 = load i32, i32* %keyform, align 8, !tbaa !44
  %keyform6 = getelementptr inbounds i8, i8* %call, i64 16
  %6 = bitcast i8* %keyform6 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !44
  %prev = getelementptr inbounds %struct.ssl_excert_st, %struct.ssl_excert_st* %3, i64 0, i32 10
  %7 = bitcast %struct.ssl_excert_st** %prev to i8**
  store i8* %call, i8** %7, align 8, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %entry
  %certform8 = bitcast i8* %call to i32*
  store i32 32773, i32* %certform8, align 8, !tbaa !42
  %keyform9 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %keyform9 to i32*
  store i32 32773, i32* %8, align 8, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @opt_getprog() local_unnamed_addr #2

declare i8* @opt_arg() local_unnamed_addr #2

declare i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @print_verify_detail(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %mspki = alloca %struct.evp_pkey_st*, align 8
  %usage = alloca i8, align 1
  %selector = alloca i8, align 1
  %mtype = alloca i8, align 1
  %data = alloca i8*, align 8
  %dlen = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %mspki to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = tail call i64 @SSL_get_verify_result(%struct.ssl_st* noundef %s) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @SSL_get0_peername(%struct.ssl_st* noundef %s) #9
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #9
  %cmp3.not = icmp eq i8* %call1, null
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* noundef nonnull %call1) #9
  br label %if.end8

if.else:                                          ; preds = %entry
  %call6 = tail call i8* @X509_verify_cert_error_string(i64 noundef %call) #9
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i64 0, i64 0), i8* noundef %call6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then4, %if.else
  %call9 = call i32 @SSL_get0_dane_authority(%struct.ssl_st* noundef %s, %struct.x509_st** noundef null, %struct.evp_pkey_st** noundef nonnull %mspki) #9
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end29

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %usage) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %selector) #10
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %mtype) #10
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i8* null, i8** %data, align 8, !tbaa !9
  %2 = bitcast i64* %dlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  store i64 0, i64* %dlen, align 8, !tbaa !22
  %call12 = call i32 @SSL_get0_dane_tlsa(%struct.ssl_st* noundef %s, i8* noundef nonnull %usage, i8* noundef nonnull %selector, i8* noundef nonnull %mtype, i8** noundef nonnull %data, i64* noundef nonnull %dlen) #9
  %3 = load i64, i64* %dlen, align 8, !tbaa !22
  %cmp13 = icmp ugt i64 %3, 12
  %4 = load i8*, i8** %data, align 8, !tbaa !9
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.then11
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %3
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 -12
  %call16 = call fastcc i8* @hexencode(i8* noundef nonnull %add.ptr15, i64 noundef 12) #11
  br label %if.end19

if.else17:                                        ; preds = %if.then11
  %call18 = call fastcc i8* @hexencode(i8* noundef %4, i64 noundef %3) #11
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then14
  %hexdata.0 = phi i8* [ %call16, %if.then14 ], [ %call18, %if.else17 ]
  %5 = load i8, i8* %usage, align 1, !tbaa !14
  %conv = zext i8 %5 to i32
  %6 = load i8, i8* %selector, align 1, !tbaa !14
  %conv20 = zext i8 %6 to i32
  %7 = load i8, i8* %mtype, align 1, !tbaa !14
  %conv21 = zext i8 %7 to i32
  %8 = load i64, i64* %dlen, align 8, !tbaa !22
  %cmp22 = icmp ugt i64 %8, 12
  %cond = select i1 %cmp22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0)
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %mspki, align 8, !tbaa !9
  %cmp24.not = icmp eq %struct.evp_pkey_st* %9, null
  %tobool.not = icmp eq i32 %call12, 0
  %cond26 = select i1 %tobool.not, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i64 0, i64 0)
  %cond27 = select i1 %cmp24.not, i8* %cond26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0)
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv20, i32 noundef %conv21, i8* noundef %cond, i8* noundef %hexdata.0, i8* noundef %cond27, i32 noundef %call12) #9
  call void @CRYPTO_free(i8* noundef %hexdata.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 1195) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mtype) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %selector) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %usage) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end19, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

declare i64 @SSL_get_verify_result(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @SSL_get0_peername(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @SSL_get0_dane_authority(%struct.ssl_st* noundef, %struct.x509_st** noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare i32 @SSL_get0_dane_tlsa(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @hexencode(i8* nocapture noundef readonly %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %mul = shl i64 %len, 1
  %add = or i64 %mul, 1
  %cmp = icmp uge i64 %add, %len
  %0 = add i64 %mul, 2147483649
  %1 = icmp ult i64 %0, 4294967296
  %or.cond = and i1 %cmp, %1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call = tail call i8* @opt_getprog() #9
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.247, i64 0, i64 0), i8* noundef %call, i64 noundef %len) #9
  tail call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %entry
  %call10 = tail call i8* @app_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.248, i64 0, i64 0)) #9
  %cmp11.not34 = icmp eq i64 %len, 0
  br i1 %cmp11.not34, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  %xtraiter = and i64 %len, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader
  %dec.prol = add i64 %len, -1
  %3 = load i8, i8* %data, align 1, !tbaa !14
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i64
  %arrayidx.prol = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx.prol, align 1, !tbaa !14
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %call10, i64 1
  store i8 %6, i8* %call10, align 1, !tbaa !14
  %incdec.ptr14.prol = getelementptr inbounds i8, i8* %data, i64 1
  %7 = load i8, i8* %data, align 1, !tbaa !14
  %8 = and i8 %7, 15
  %9 = zext i8 %8 to i64
  %arrayidx18.prol = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx18.prol, align 1, !tbaa !14
  %incdec.ptr19.prol = getelementptr inbounds i8, i8* %call10, i64 2
  store i8 %10, i8* %incdec.ptr.prol, align 1, !tbaa !14
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %incdec.ptr19.lcssa.unr = phi i8* [ undef, %while.body.preheader ], [ %incdec.ptr19.prol, %while.body.prol ]
  %data.addr.037.unr = phi i8* [ %data, %while.body.preheader ], [ %incdec.ptr14.prol, %while.body.prol ]
  %len.addr.036.unr = phi i64 [ %len, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %cp.035.unr = phi i8* [ %call10, %while.body.preheader ], [ %incdec.ptr19.prol, %while.body.prol ]
  %11 = icmp eq i64 %len, 1
  br i1 %11, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %data.addr.037 = phi i8* [ %incdec.ptr14.1, %while.body ], [ %data.addr.037.unr, %while.body.prol.loopexit ]
  %len.addr.036 = phi i64 [ %dec.1, %while.body ], [ %len.addr.036.unr, %while.body.prol.loopexit ]
  %cp.035 = phi i8* [ %incdec.ptr19.1, %while.body ], [ %cp.035.unr, %while.body.prol.loopexit ]
  %12 = load i8, i8* %data.addr.037, align 1, !tbaa !14
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.035, i64 1
  store i8 %15, i8* %cp.035, align 1, !tbaa !14
  %incdec.ptr14 = getelementptr inbounds i8, i8* %data.addr.037, i64 1
  %16 = load i8, i8* %data.addr.037, align 1, !tbaa !14
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i64
  %arrayidx18 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx18, align 1, !tbaa !14
  %incdec.ptr19 = getelementptr inbounds i8, i8* %cp.035, i64 2
  store i8 %19, i8* %incdec.ptr, align 1, !tbaa !14
  %dec.1 = add i64 %len.addr.036, -2
  %20 = load i8, i8* %incdec.ptr14, align 1, !tbaa !14
  %21 = lshr i8 %20, 4
  %22 = zext i8 %21 to i64
  %arrayidx.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %22
  %23 = load i8, i8* %arrayidx.1, align 1, !tbaa !14
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %cp.035, i64 3
  store i8 %23, i8* %incdec.ptr19, align 1, !tbaa !14
  %incdec.ptr14.1 = getelementptr inbounds i8, i8* %data.addr.037, i64 2
  %24 = load i8, i8* %incdec.ptr14, align 1, !tbaa !14
  %25 = and i8 %24, 15
  %26 = zext i8 %25 to i64
  %arrayidx18.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.246, i64 0, i64 %26
  %27 = load i8, i8* %arrayidx18.1, align 1, !tbaa !14
  %incdec.ptr19.1 = getelementptr inbounds i8, i8* %cp.035, i64 4
  store i8 %27, i8* %incdec.ptr.1, align 1, !tbaa !14
  %cmp11.not.1 = icmp eq i64 %dec.1, 0
  br i1 %cmp11.not.1, label %while.end, label %while.body, !llvm.loop !47

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %if.end
  %cp.0.lcssa = phi i8* [ %call10, %if.end ], [ %incdec.ptr19.lcssa.unr, %while.body.prol.loopexit ], [ %incdec.ptr19.1, %while.body ]
  store i8 0, i8* %cp.0.lcssa, align 1, !tbaa !14
  ret i8* %call10
}

; Function Attrs: noinline nounwind uwtable
define void @print_ssl_summary(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %nid = alloca i32, align 4
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call = tail call i8* @SSL_get_version(%struct.ssl_st* noundef %s) #9
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i64 0, i64 0), i8* noundef %call) #9
  tail call fastcc void @print_raw_cipherlist(%struct.ssl_st* noundef %s) #11
  %call2 = tail call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %s) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call3 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call2) #9
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i64 0, i64 0), i8* noundef %call3) #9
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call fastcc void @do_print_sigalgs(%struct.bio_st* noundef %2, %struct.ssl_st* noundef %s, i32 noundef 0) #11
  %call6 = tail call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %s) #9
  %cmp.not = icmp eq %struct.x509_st* %call6, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call7 = tail call i32 @BIO_puts(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i64 0, i64 0)) #9
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call8 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call6) #9
  %call9 = tail call i64 @get_nameopt() #9
  %call10 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %5, %struct.X509_name_st* noundef %call8, i32 noundef 0, i64 noundef %call9) #9
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call11 = tail call i32 @BIO_puts(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  %call12 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 108, i64 noundef 0, i8* noundef nonnull %3) #9
  %tobool.not = icmp eq i64 %call12, 0
  br i1 %tobool.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %8 = load i32, i32* %nid, align 4, !tbaa !13
  %call14 = call i8* @OBJ_nid2sn(i32 noundef %8) #9
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call14) #9
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %call16 = call i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef %s, i32* noundef nonnull %nid) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %10 = load i32, i32* %nid, align 4, !tbaa !13
  %call19 = call fastcc i8* @get_sigtype(i32 noundef %10) #11
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0), i8* noundef %call19) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @print_verify_detail(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %11) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  br label %if.end23

if.else:                                          ; preds = %entry
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call22 = tail call i32 @BIO_puts(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i64 0, i64 0)) #9
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end21
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call24 = call i32 @ssl_print_point_formats(%struct.bio_st* noundef %13, %struct.ssl_st* noundef %s) #11
  %call25 = call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool26.not = icmp eq i32 %call25, 0
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %call28 = call i32 @ssl_print_groups(%struct.bio_st* noundef %14, %struct.ssl_st* noundef %s, i32 noundef 1) #11
  br label %if.end31

if.else29:                                        ; preds = %if.end23
  %call30 = call i32 @ssl_print_tmp_key(%struct.bio_st* noundef %14, %struct.ssl_st* noundef %s) #11
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  ret void
}

declare i8* @SSL_get_version(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_raw_cipherlist(%struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %rlist = alloca i8*, align 8
  %0 = bitcast i8** %rlist to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 110, i64 noundef 0, i8* noundef null) #9
  %cmp = icmp eq i64 %call1, 2
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 1104) #12
  unreachable

cond.end:                                         ; preds = %if.end
  %call2 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 110, i64 noundef 0, i8* noundef nonnull %0) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call3 = call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.250, i64 0, i64 0)) #9
  %cmp450.not = icmp eq i64 %call2, 0
  br i1 %cmp450.not, label %for.end27, label %for.body.preheader

for.body.preheader:                               ; preds = %cond.end
  %.pre = load i8*, i8** %rlist, align 8, !tbaa !9
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end25
  %2 = phi i8* [ %add.ptr, %if.end25 ], [ %.pre, %for.body.preheader ]
  %i.051 = phi i64 [ %add, %if.end25 ], [ 0, %for.body.preheader ]
  %call5 = call %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef %s, i8* noundef %2) #9
  %tobool6.not = icmp eq i64 %i.051, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %for.body
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call8 = call i32 @BIO_puts(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body
  %cmp10.not = icmp eq %struct.ssl_cipher_st* %call5, null
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call12 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef nonnull %call5) #9
  %call13 = call i32 @BIO_puts(%struct.bio_st* noundef %4, i8* noundef %call12) #9
  br label %if.end25

if.else:                                          ; preds = %if.end9
  %5 = load i8*, i8** %rlist, align 8, !tbaa !9
  %call14 = call i32 @memcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @print_raw_cipherlist.scsv_id, i64 0, i64 0), i64 noundef 2) #13
  %cmp15 = icmp eq i32 %call14, 0
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %call17 = call i32 @BIO_puts(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0)) #9
  br label %if.end25

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @BIO_puts(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0)) #9
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %8 = load i8*, i8** %rlist, align 8, !tbaa !9
  %9 = load i8, i8* %8, align 1, !tbaa !14
  %conv = zext i8 %9 to i32
  %call23 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.253, i64 0, i64 0), i32 noundef %conv) #9
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %11 = load i8*, i8** %rlist, align 8, !tbaa !9
  %arrayidx.1 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx.1, align 1, !tbaa !14
  %conv.1 = zext i8 %12 to i32
  %call23.1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.253, i64 0, i64 0), i32 noundef %conv.1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %if.then16, %if.then11
  %add = add i64 %i.051, 2
  %13 = load i8*, i8** %rlist, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr, i8** %rlist, align 8, !tbaa !9
  %cmp4 = icmp ult i64 %add, %call2
  br i1 %cmp4, label %for.body, label %for.end27, !llvm.loop !48

for.end27:                                        ; preds = %if.end25, %cond.end
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call28 = call i32 @BIO_puts(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

declare %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @config_ctx(%struct.ssl_conf_ctx_st* noundef %cctx, %struct.stack_st_OPENSSL_STRING* noundef %str, %struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef %cctx, %struct.ssl_ctx_st* noundef %ctx) #9
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %str) #11
  %call131 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp32 = icmp sgt i32 %call131, 0
  br i1 %cmp32, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %add11, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !49

for.body:                                         ; preds = %entry, %for.cond
  %i.033 = phi i32 [ %add11, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.033) #9
  %add = or i32 %i.033, 1
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %add) #9
  %call6 = tail call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %call3, i8* noundef %call5) #9
  %cmp7 = icmp slt i32 %call6, 1
  %add11 = add nuw nsw i32 %i.033, 2
  br i1 %cmp7, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %cmp8 = icmp eq i8* %call5, null
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i64 0, i64 0), i8* %call5
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.104, i64 0, i64 0), i8* noundef %call3, i8* noundef %cond) #9
  br label %cleanup16.sink.split

for.end:                                          ; preds = %for.cond, %entry
  %call12 = tail call i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef %cctx) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %cleanup16

if.then13:                                        ; preds = %for.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call14 = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i64 0, i64 0)) #9
  br label %cleanup16.sink.split

cleanup16.sink.split:                             ; preds = %if.then13, %if.then
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #9
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup16.sink.split, %for.end
  %retval.2 = phi i32 [ 1, %for.end ], [ 0, %cleanup16.sink.split ]
  ret i32 %retval.2
}

declare void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_ctx_add_crls(%struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509_CRL* noundef %crls, i32 noundef %crl_download) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef %ctx) #9
  tail call fastcc void @add_crls_store(%struct.x509_store_st* noundef %call, %struct.stack_st_X509_CRL* noundef %crls) #11
  %tobool.not = icmp eq i32 %crl_download, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @store_setup_crl_download(%struct.x509_store_st* noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_crls_store(%struct.x509_store_st* noundef %st, %struct.stack_st_X509_CRL* noundef %crls) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls) #11
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp2 = icmp sgt i32 %call11, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.03) #9
  %0 = bitcast i8* %call3 to %struct.X509_crl_st*
  %call4 = tail call i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef %st, %struct.X509_crl_st* noundef %0) #9
  %inc = add nuw nsw i32 %i.03, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !50

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare void @store_setup_crl_download(%struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_load_stores(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %vfyCApath, i8* noundef %vfyCAfile, i8* noundef %vfyCAstore, i8* noundef %chCApath, i8* noundef %chCAfile, i8* noundef %chCAstore, %struct.stack_st_X509_CRL* noundef %crls, i32 noundef %crl_download) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i8* %vfyCApath, null
  %cmp1 = icmp ne i8* %vfyCAfile, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp ne i8* %vfyCAstore, null
  %or.cond58 = or i1 %or.cond, %cmp3
  br i1 %or.cond58, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #9
  %cmp4 = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp4, label %err, label %if.end

if.end:                                           ; preds = %if.then
  br i1 %cmp1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @X509_STORE_load_file(%struct.x509_store_st* noundef nonnull %call, i8* noundef nonnull %vfyCAfile) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end
  br i1 %cmp, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %call12 = tail call i32 @X509_STORE_load_path(%struct.x509_store_st* noundef nonnull %call, i8* noundef nonnull %vfyCApath) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11, %if.end9
  br i1 %cmp3, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %if.end15
  %call18 = tail call i32 @X509_STORE_load_store(%struct.x509_store_st* noundef nonnull %call, i8* noundef nonnull %vfyCAstore) #9
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %if.end15
  tail call fastcc void @add_crls_store(%struct.x509_store_st* noundef nonnull %call, %struct.stack_st_X509_CRL* noundef %crls) #11
  %0 = bitcast %struct.x509_store_st* %call to i8*
  %call23 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 106, i64 noundef 1, i8* noundef nonnull %0) #9
  %tobool24.not = icmp eq i32 %crl_download, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  tail call void @store_setup_crl_download(%struct.x509_store_st* noundef nonnull %call) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end21, %if.then25, %entry
  %vfy.0 = phi %struct.x509_store_st* [ %call, %if.then25 ], [ %call, %if.end21 ], [ null, %entry ]
  %cmp28 = icmp ne i8* %chCApath, null
  %cmp30 = icmp ne i8* %chCAfile, null
  %or.cond59 = or i1 %cmp28, %cmp30
  %cmp32 = icmp ne i8* %chCAstore, null
  %or.cond60 = or i1 %or.cond59, %cmp32
  br i1 %or.cond60, label %if.then33, label %err

if.then33:                                        ; preds = %if.end27
  %call34 = tail call %struct.x509_store_st* @X509_STORE_new() #9
  %cmp35 = icmp eq %struct.x509_store_st* %call34, null
  br i1 %cmp35, label %err, label %if.end37

if.end37:                                         ; preds = %if.then33
  br i1 %cmp30, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.end37
  %call40 = tail call i32 @X509_STORE_load_file(%struct.x509_store_st* noundef nonnull %call34, i8* noundef nonnull %chCAfile) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %land.lhs.true39, %if.end37
  br i1 %cmp28, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %if.end43
  %call46 = tail call i32 @X509_STORE_load_path(%struct.x509_store_st* noundef nonnull %call34, i8* noundef nonnull %chCApath) #9
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %land.lhs.true45, %if.end43
  br i1 %cmp32, label %land.lhs.true51, label %if.end55

land.lhs.true51:                                  ; preds = %if.end49
  %call52 = tail call i32 @X509_STORE_load_store(%struct.x509_store_st* noundef nonnull %call34, i8* noundef nonnull %chCAstore) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %land.lhs.true51, %if.end49
  %1 = bitcast %struct.x509_store_st* %call34 to i8*
  %call56 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 107, i64 noundef 1, i8* noundef nonnull %1) #9
  br label %err

err:                                              ; preds = %if.end55, %if.end27, %land.lhs.true51, %land.lhs.true45, %land.lhs.true39, %if.then33, %land.lhs.true17, %land.lhs.true11, %land.lhs.true, %if.then
  %vfy.1 = phi %struct.x509_store_st* [ null, %if.then ], [ %vfy.0, %if.then33 ], [ %vfy.0, %land.lhs.true51 ], [ %vfy.0, %land.lhs.true45 ], [ %vfy.0, %land.lhs.true39 ], [ %call, %land.lhs.true17 ], [ %call, %land.lhs.true11 ], [ %call, %land.lhs.true ], [ %vfy.0, %if.end27 ], [ %vfy.0, %if.end55 ]
  %ch.1 = phi %struct.x509_store_st* [ null, %if.then ], [ null, %if.then33 ], [ %call34, %land.lhs.true51 ], [ %call34, %land.lhs.true45 ], [ %call34, %land.lhs.true39 ], [ null, %land.lhs.true17 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true ], [ null, %if.end27 ], [ %call34, %if.end55 ]
  %rv.0 = phi i32 [ 0, %if.then ], [ 0, %if.then33 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true45 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true ], [ 1, %if.end27 ], [ 1, %if.end55 ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %vfy.1) #9
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %ch.1) #9
  ret i32 %rv.0
}

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare i32 @X509_STORE_load_file(%struct.x509_store_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_load_path(%struct.x509_store_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_load_store(%struct.x509_store_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ssl_ctx_security_debug(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %verbose) local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  store %struct.bio_st* %0, %struct.bio_st** getelementptr inbounds (%struct.security_debug_ex, %struct.security_debug_ex* @ssl_ctx_security_debug.sdb, i64 0, i32 0), align 8, !tbaa !51
  store i32 %verbose, i32* getelementptr inbounds (%struct.security_debug_ex, %struct.security_debug_ex* @ssl_ctx_security_debug.sdb, i64 0, i32 1), align 8, !tbaa !53
  %call = tail call i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* @SSL_CTX_get_security_callback(%struct.ssl_ctx_st* noundef %ctx) #9
  store i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %call, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** getelementptr inbounds (%struct.security_debug_ex, %struct.security_debug_ex* @ssl_ctx_security_debug.sdb, i64 0, i32 2), align 8, !tbaa !54
  tail call void @SSL_CTX_set_security_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* noundef nonnull @security_callback_debug) #9
  tail call void @SSL_CTX_set0_security_ex_data(%struct.ssl_ctx_st* noundef %ctx, i8* noundef bitcast (%struct.security_debug_ex* @ssl_ctx_security_debug.sdb to i8*)) #9
  ret void
}

declare i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* @SSL_CTX_get_security_callback(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_security_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @security_callback_debug(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other, i8* noundef %ex) #0 {
entry:
  %algname = alloca i8*, align 8
  %old_cb = getelementptr inbounds i8, i8* %ex, i64 16
  %0 = bitcast i8* %old_cb to i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)**
  %1 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %0, align 8, !tbaa !54
  %call = tail call i32 %1(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other, i8* noundef %ex) #9
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %verbose = getelementptr inbounds i8, i8* %ex, i64 8
  %2 = bitcast i8* %verbose to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !53
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %out = bitcast i8* %ex to %struct.bio_st**
  %4 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call2 = tail call i32 @BIO_puts(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.254, i64 0, i64 0)) #9
  %call3 = tail call fastcc i8* @lookup(i32 noundef %op, %struct.string_int_pair_st* noundef getelementptr inbounds ([20 x %struct.string_int_pair_st], [20 x %struct.string_int_pair_st]* @callback_types, i64 0, i64 0), i8* noundef null) #11
  %cmp4.not = icmp eq i8* %call3, null
  switch i32 %op, label %sw.epilog [
    i32 10, label %if.end14
    i32 15, label %if.end14
    i32 9, label %sw.epilog81.thread
    i32 393234, label %sw.bb9
    i32 397330, label %sw.bb9
    i32 327691, label %sw.bb10
    i32 327692, label %sw.bb10
    i32 327693, label %sw.bb10
    i32 327694, label %sw.bb10
  ]

sw.epilog81.thread:                               ; preds = %if.end
  %5 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call7 = tail call fastcc i8* @lookup(i32 noundef %nid, %struct.string_int_pair_st* noundef getelementptr inbounds ([8 x %struct.string_int_pair_st], [8 x %struct.string_int_pair_st]* @ssl_versions, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #11
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.255, i64 0, i64 0), i8* noundef %call7) #9
  br label %if.end86

sw.bb9:                                           ; preds = %if.end, %if.end
  br i1 %cmp4.not, label %if.end14, label %if.then11

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  br label %if.end14

sw.epilog:                                        ; preds = %if.end
  br i1 %cmp4.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %sw.bb9, %sw.epilog
  %tobool29.not158 = phi i1 [ false, %sw.bb9 ], [ true, %sw.epilog ]
  %6 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.256, i64 0, i64 0), i8* noundef nonnull %call3) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.end, %sw.bb10, %sw.bb9, %if.then11, %sw.epilog
  %tobool82.not157 = phi i1 [ false, %if.then11 ], [ false, %sw.epilog ], [ false, %sw.bb9 ], [ false, %sw.bb10 ], [ true, %if.end ], [ true, %if.end ]
  %tobool29.not156 = phi i1 [ %tobool29.not158, %if.then11 ], [ true, %sw.epilog ], [ false, %sw.bb9 ], [ true, %sw.bb10 ], [ true, %if.end ], [ true, %if.end ]
  %7 = add i32 %op, -65536
  %8 = lshr i32 %7, 16
  %trunc = trunc i32 %8 to i16
  switch i16 %trunc, label %sw.epilog81 [
    i16 0, label %sw.bb15
    i16 1, label %sw.bb19
    i16 5, label %sw.bb28
    i16 4, label %sw.bb42
  ]

sw.bb15:                                          ; preds = %if.end14
  %9 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %10 = bitcast i8* %other to %struct.ssl_cipher_st*
  %call17 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %10) #9
  %call18 = tail call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef %call17) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

sw.bb19:                                          ; preds = %if.end14
  %call20 = tail call i8* @EC_curve_nid2nist(i32 noundef %nid) #9
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.bb19
  %call24 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb19
  %cname.0 = phi i8* [ %call24, %if.then23 ], [ %call20, %sw.bb19 ]
  %11 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call27 = tail call i32 @BIO_puts(%struct.bio_st* noundef %11, i8* noundef %cname.0) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

sw.bb28:                                          ; preds = %if.end14
  %12 = bitcast i8* %other to %struct.x509_st*
  br i1 %tobool29.not156, label %if.else, label %if.then30

if.then30:                                        ; preds = %sw.bb28
  %call31 = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef %12) #9
  %13 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call33 = tail call i8* @OBJ_nid2sn(i32 noundef %call31) #9
  %call34 = tail call i32 @BIO_puts(%struct.bio_st* noundef %13, i8* noundef %call33) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

if.else:                                          ; preds = %sw.bb28
  %call35 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %12) #9
  %14 = bitcast i8** %algname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), i8** %algname, align 8, !tbaa !9
  %call36 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_get0_asn1(%struct.evp_pkey_st* noundef %call35) #9
  %call37 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef null, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef nonnull %algname, %struct.evp_pkey_asn1_method_st* noundef %call36) #9
  %15 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %16 = load i8*, i8** %algname, align 8, !tbaa !9
  %call39 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %call35) #9
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.257, i64 0, i64 0), i8* noundef %16, i32 noundef %call39) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #10
  br i1 %tobool82.not157, label %if.end86, label %if.then83

sw.bb42:                                          ; preds = %if.end14
  %17 = load i8, i8* %other, align 1, !tbaa !14
  %conv43 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv43, 8
  %arrayidx44 = getelementptr inbounds i8, i8* %other, i64 1
  %18 = load i8, i8* %arrayidx44, align 1, !tbaa !14
  %conv45 = zext i8 %18 to i32
  %add = or i32 %shl, %conv45
  %19 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  br i1 %cmp4.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %sw.bb42
  %call50 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %call3) #9
  br label %if.end54

if.else51:                                        ; preds = %sw.bb42
  %call53 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.258, i64 0, i64 0), i32 noundef %op) #9
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then48
  %call55 = tail call fastcc i8* @lookup(i32 noundef %add, %struct.string_int_pair_st* noundef getelementptr inbounds ([20 x %struct.string_int_pair_st], [20 x %struct.string_int_pair_st]* @signature_tls13_scheme_list, i64 0, i64 0), i8* noundef null) #11
  %cmp56.not = icmp eq i8* %call55, null
  br i1 %cmp56.not, label %if.else61, label %if.then58

if.then58:                                        ; preds = %if.end54
  %20 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call60 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i64 0, i64 0), i8* noundef nonnull %call55) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

if.else61:                                        ; preds = %if.end54
  %21 = load i8, i8* %arrayidx44, align 1, !tbaa !14
  %conv63 = zext i8 %21 to i32
  %22 = load i8, i8* %other, align 1, !tbaa !14
  %conv65 = zext i8 %22 to i32
  %call66 = tail call fastcc i8* @lookup(i32 noundef %conv63, %struct.string_int_pair_st* noundef getelementptr inbounds ([5 x %struct.string_int_pair_st], [5 x %struct.string_int_pair_st]* @signature_tls12_alg_list, i64 0, i64 0), i8* noundef null) #11
  %call67 = tail call fastcc i8* @lookup(i32 noundef %conv65, %struct.string_int_pair_st* noundef getelementptr inbounds ([8 x %struct.string_int_pair_st], [8 x %struct.string_int_pair_st]* @signature_tls12_hash_list, i64 0, i64 0), i8* noundef null) #11
  %cmp68 = icmp ne i8* %call66, null
  %cmp71 = icmp ne i8* %call67, null
  %or.cond = select i1 %cmp68, i1 %cmp71, i1 false
  %23 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  br i1 %or.cond, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.else61
  %call75 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.260, i64 0, i64 0), i8* noundef nonnull %call67, i8* noundef nonnull %call66) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

if.else76:                                        ; preds = %if.else61
  %call78 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.261, i64 0, i64 0), i32 noundef %add) #9
  br i1 %tobool82.not157, label %if.end86, label %if.then83

sw.epilog81:                                      ; preds = %if.end14
  br i1 %tobool82.not157, label %if.end86, label %if.then83

if.then83:                                        ; preds = %sw.bb15, %if.end25, %if.else, %if.then30, %if.then73, %if.else76, %if.then58, %sw.epilog81
  %24 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %call85 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.262, i64 0, i64 0), i32 noundef %bits) #9
  br label %if.end86

if.end86:                                         ; preds = %sw.bb15, %if.end25, %if.else, %if.then30, %if.then73, %if.else76, %if.then58, %sw.epilog81.thread, %if.then83, %sw.epilog81
  %25 = load %struct.bio_st*, %struct.bio_st** %out, align 8, !tbaa !51
  %tobool88.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool88.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.265, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.264, i64 0, i64 0)
  %call89 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.263, i64 0, i64 0), i8* noundef %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end86
  ret i32 %call
}

declare void @SSL_CTX_set0_security_ex_data(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @set_keylog_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %keylog_file) local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  tail call void @BIO_free_all(%struct.bio_st* noundef %0) #9
  store %struct.bio_st* null, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %keylog_file, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %keylog_file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #9
  store %struct.bio_st* %call, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %cmp2 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i64 0, i64 0), i8* noundef nonnull %keylog_file) #9
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 133, i64 noundef 0, i8* noundef null) #9
  %conv = trunc i64 %call6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %call10 = tail call i32 @BIO_puts(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.109, i64 0, i64 0)) #9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %call11 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %3, i32 noundef 11, i64 noundef 0, i8* noundef null) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end5
  tail call void @SSL_CTX_set_keylog_callback(%struct.ssl_ctx_st* noundef nonnull %ctx, void (%struct.ssl_st*, i8*)* noundef nonnull @keylog_callback) #9
  br label %return

return:                                           ; preds = %entry, %if.end13, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end13 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_keylog_callback(%struct.ssl_ctx_st* noundef, void (%struct.ssl_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @keylog_callback(%struct.ssl_st* nocapture noundef readnone %ssl, i8* noundef %line) #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.311, i64 0, i64 0)) #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.312, i64 0, i64 0), i8* noundef %line) #9
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_keylog, align 8, !tbaa !9
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 11, i64 noundef 0, i8* noundef null) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_ca_names(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0)
  %call1 = tail call %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* noundef %s) #9
  %cmp = icmp eq %struct.stack_st_X509_NAME* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %call1) #11
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call5 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %s) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.then
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.110, i64 0, i64 0), i8* noundef %cond) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.111, i64 0, i64 0), i8* noundef %cond) #9
  %call1235 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #9
  %cmp1336 = icmp sgt i32 %call1235, 0
  br i1 %cmp1336, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end9, %for.body
  %i.037 = phi i32 [ %inc, %for.body ], [ 0, %if.end9 ]
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.037) #9
  %0 = bitcast i8* %call15 to %struct.X509_name_st*
  %call16 = tail call i64 @get_nameopt() #9
  %call17 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bio, %struct.X509_name_st* noundef %0, i32 noundef 0, i64 noundef %call16) #9
  %call18 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1) #9
  %inc = add nuw nsw i32 %i.037, 1
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #9
  %cmp13 = icmp slt i32 %inc, %call12
  br i1 %cmp13, label %for.body, label %cleanup, !llvm.loop !55

cleanup:                                          ; preds = %for.body, %if.end9, %if.then, %if.then7
  ret void
}

declare %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_get_shared_sigalgs(%struct.ssl_st* noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_get_sigalgs(%struct.ssl_st* noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @SSL_certs_clear(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @SSL_check_chain(%struct.ssl_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_chain_flags(%struct.ssl_st* noundef %s, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %and = and i32 %flags, 1
  %tobool2.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool2.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.236, i64 0, i64 0), i8* noundef %cond) #9
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %2 = insertelement <8 x i32> poison, i32 %flags, i64 0
  %shuffle = shufflevector <8 x i32> %2, <8 x i32> poison, <8 x i32> zeroinitializer
  %3 = and <8 x i32> %shuffle, <i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 2>
  %4 = icmp eq <8 x i32> %3, zeroinitializer
  %5 = extractelement <8 x i1> %4, i64 7
  %cond.1 = select i1 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i64 0, i64 0), i8* noundef %cond.1) #9
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %7 = extractelement <8 x i1> %4, i64 6
  %cond.2 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i64 0, i64 0), i8* noundef %cond.2) #9
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %9 = extractelement <8 x i1> %4, i64 5
  %cond.3 = select i1 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i64 0, i64 0), i8* noundef %cond.3) #9
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %11 = extractelement <8 x i1> %4, i64 4
  %cond.4 = select i1 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.240, i64 0, i64 0), i8* noundef %cond.4) #9
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %13 = extractelement <8 x i1> %4, i64 3
  %cond.5 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.241, i64 0, i64 0), i8* noundef %cond.5) #9
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %15 = extractelement <8 x i1> %4, i64 2
  %cond.6 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.242, i64 0, i64 0), i8* noundef %cond.6) #9
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %17 = extractelement <8 x i1> %4, i64 1
  %cond.7 = select i1 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.243, i64 0, i64 0), i8* noundef %cond.7) #9
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %19 = extractelement <8 x i1> %4, i64 0
  %cond.8 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i64 0, i64 0)
  %call.8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.244, i64 0, i64 0), i8* noundef %cond.8) #9
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i64 0, i64 0)) #9
  %call4 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 99, i64 noundef 0, i8* noundef null) #9
  %and5 = and i64 %call4, 196608
  %tobool6.not = icmp eq i64 %and5, 0
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and7 = and i32 %flags, 2048
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.233, i64 0, i64 0)
  %call10 = tail call i32 @BIO_puts(%struct.bio_st* noundef %21, i8* noundef %cond9) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.235, i64 0, i64 0)) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @SSL_use_certificate(%struct.ssl_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i8* @EC_curve_nid2nist(i32 noundef) local_unnamed_addr #2

declare i32 @X509_get_signature_nid(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_get0_asn1(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"verify_options_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !6, i64 8}
!13 = !{!6, !6, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = distinct !{!24, !16}
!25 = !{!26, !10, i64 0}
!26 = !{!"string_int_pair_st", !10, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = distinct !{!28, !16}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !7, i64 0}
!31 = !{!32, !10, i64 72}
!32 = !{!"ssl_excert_st", !6, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !10, i64 80}
!33 = distinct !{!33, !16}
!34 = !{!32, !10, i64 40}
!35 = !{!32, !10, i64 48}
!36 = !{!32, !10, i64 56}
!37 = !{!32, !6, i64 64}
!38 = !{!32, !10, i64 80}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = !{!32, !10, i64 8}
!42 = !{!32, !6, i64 0}
!43 = !{!32, !10, i64 24}
!44 = !{!32, !6, i64 16}
!45 = !{!32, !10, i64 32}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = !{!52, !10, i64 0}
!52 = !{!"", !10, i64 0, !6, i64 8, !10, i64 16}
!53 = !{!52, !6, i64 8}
!54 = !{!52, !10, i64 16}
!55 = distinct !{!55, !16}
