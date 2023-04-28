; ModuleID = 'ssl/ssl_client2.c'
source_filename = "ssl/ssl_client2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.eap_tls_keys = type { [48 x i8], [64 x i8], i32 }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
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
%struct.io_ctx_t = type { %struct.mbedtls_ssl_context*, %struct.mbedtls_net_context* }
%struct.mbedtls_net_context = type { i32 }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.rng_context_t = type { %struct.mbedtls_entropy_context, %struct.mbedtls_ctr_drbg_context }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CLIENT_RANDOM \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"---------------- NSS KEYLOG -----------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@opt = dso_local global %struct.options zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"mbedtls_ssl_check_record() returned inconsistent results.\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"mbedtls_ssl_check_record() detected invalid record.\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"mbedtls_ssl_check_record() detected unauthentic record.\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"mbedtls_ssl_check_record() detected unexpected record.\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"mbedtls_ssl_check_record() failed fatally with -%#04x.\0A\00", align 1
@ssl_sig_algs_for_test = dso_local global [12 x i16] [i16 1539, i16 1537, i16 1283, i16 1281, i16 1027, i16 1025, i16 771, i16 769, i16 2052, i16 515, i16 513, i16 0], align 16
@.str.13 = private unnamed_addr constant [33 x i8] c"supported signature algorithms:\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\09rsa_pkcs1_sha256 \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"rsa_pkcs1_sha384 \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"rsa_pkcs1_sha512\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\09ecdsa_secp256r1_sha256 \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"ecdsa_secp384r1_sha384 \00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"ecdsa_secp521r1_sha512\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09rsa_pss_rsae_sha256 \00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"rsa_pss_rsae_sha384 \00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"rsa_pss_rsae_sha512\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\09rsa_pss_pss_sha256 \00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"rsa_pss_pss_sha384 \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"rsa_pss_pss_sha512\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"\09ed25519 \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ed448 \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"rsa_pkcs1_sha1 \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ecdsa_sha1\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"ssl_client2\00", align 1
@mbedtls_x509_crt_profile_default = external dso_local constant %struct.mbedtls_x509_crt_profile, align 4
@.str.31 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@.str.32 = private unnamed_addr constant [1451 x i8] c"\0A usage: ssl_client2 param=<>...\0A\0A acceptable parameters:\0A    server_name=%%s      default: localhost\0A    server_addr=%%s      default: given by name\0A    server_port=%%d      default: 4433\0A    request_page=%%s     default: \22.\22\0A    request_size=%%d     default: about 34 (basic request)\0A                        (minimum: 0, max: 20000)\0A                        If 0, in the first exchange only an empty\0A                        application data message is sent followed by\0A                        a second non-empty message before attempting\0A                        to read a response from the server\0A    debug_level=%%d      default: 0 (disabled)\0A    nbio=%%d             default: 0 (blocking I/O)\0A                        options: 1 (non-blocking), 2 (added delays)\0A    event=%%d            default: 0 (loop)\0A                        options: 1 (level-triggered, implies nbio=1),\0A    read_timeout=%%d     default: 0 ms (no timeout)\0A    max_resend=%%d       default: 0 (no resend on timeout)\0A    skip_close_notify=%%d default: 0 (send close_notify)\0A\0A    dtls=%%d             default: 0 (TLS)\0A    hs_timeout=%%d-%%d    default: (library default: 1000-60000)\0A                        range of DTLS handshake timeouts in millisecs\0A    mtu=%%d              default: (library default: unlimited)\0A    dgram_packing=%%d    default: 1 (allowed)\0A                        allow or forbid packing of multiple\0A                        records within a single datgram.\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [1015 x i8] c"    auth_mode=%%s        default: (library default: none)\0A                        options: none, optional, required\0A    ca_file=%%s          The single file containing the top-level CA(s) you fully trust\0A                        default: \22\22 (pre-loaded)\0A                        use \22none\22 to skip loading any top-level CAs.\0A    ca_path=%%s          The path containing the top-level CA(s) you fully trust\0A                        default: \22\22 (pre-loaded) (overrides ca_file)\0A                        use \22none\22 to skip loading any top-level CAs.\0A    crt_file=%%s         Your own cert and chain (in bottom to top order, top may be omitted)\0A                        default: \22\22 (pre-loaded)\0A    key_file=%%s         default: \22\22 (pre-loaded)\0A    key_pwd=%%s          Password for key specified by key_file argument\0A                        default: none\0A\0A    psk=%%s              default: \22\22 (disabled)\0A                          The PSK values are in hex, without 0x.\0A    psk_identity=%%s     default: \22Client_identity\22\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [1952 x i8] c"    allow_legacy=%%d     default: (library default: no)\0A    renegotiation=%%d    default: 0 (disabled)\0A    renegotiate=%%d      default: 0 (disabled)\0A    exchanges=%%d        default: 1\0A    reconnect=%%d        number of reconnections using session resumption\0A                        default: 0 (disabled)\0A    reco_delay=%%d       default: 0 seconds\0A    reco_mode=%%d        0: copy session, 1: serialize session\0A                        default: 1\0A    reconnect_hard=%%d   default: 0 (disabled)\0A    tickets=%%d          default: 1 (enabled)\0A    eap_tls=%%d          default: 0 (disabled)\0A    max_frag_len=%%d     default: 16384 (tls default)\0A                        options: 512, 1024, 2048, 4096\0A    context_crt_cb=%%d   This determines whether the CRT verification callback is bound\0A                        to the SSL configuration of the SSL context.\0A                        Possible values:\0A                        - 0 (default): Use CRT callback bound to configuration\0A                        - 1: Use CRT callback bound to SSL context\0A    alpn=%%s             default: \22\22 (disabled)\0A                        example: spdy/1,http/1.1\0A    extended_ms=0/1     default: (library default: on)\0A    etm=0/1             default: (library default: on)\0A    reproducible=0/1     default: 0 (disabled)\0A    curves=a,b,c,d      default: \22default\22 (library default)\0A                        example: \22secp521r1,brainpoolP512r1\22\0A                        - use \22none\22 for empty list\0A                        - see mbedtls_ecp_curve_list()\0A                          for acceptable curve names\0A    dhmlen=%%d           default: (library default: 1024 bits)\0A    key_opaque_algs=%%s  Allowed opaque key algorithms.\0A                        comma-separated pair of values among the following:\0A                        rsa-sign-pkcs1, rsa-sign-pss, rsa-decrypt,\0A                        ecdsa-sign, ecdh, none (only acceptable for\0A                        the second value).\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [1046 x i8] c"    allow_sha1=%%d       default: 0\0A    min_version=%%s      default: (library default: tls12)\0A    max_version=%%s      default: (library default: tls12)\0A    force_version=%%s    default: \22\22 (none)\0A                         options: tls12, dtls12\0A\0A    force_ciphersuite=<name>    default: all enabled\0A    query_config=<name>         return 0 if the specified\0A                                configuration macro is defined and 1\0A                                otherwise. The expansion of the macro\0A                                is printed if it is defined\0A    serialize=%%d        default: 0 (do not serialize/deserialize)\0A                        options: 1 (serialize)\0A                                 2 (serialize with re-initialization)\0A    context_file=%%s     The file path to write a serialized connection\0A                        in the form of base64 code (serialize option\0A                        must be set)\0A                         default: \22\22 (do nothing)\0A                         option: a file path\0A acceptable ciphersuite names:\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" %-42s\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Client_identity\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"server_addr\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"dtls\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"context_crt_cb\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"nbio\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"read_timeout\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"max_resend\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"request_page\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"request_size\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"ca_file\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"ca_path\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"crt_file\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"key_file\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"key_pwd\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"psk_identity\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"ecjpake_pw\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ec_max_ops\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"force_ciphersuite\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"renegotiation\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"allow_legacy\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"renegotiate\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"exchanges\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"reco_delay\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"reco_mode\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"reconnect_hard\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"tickets\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"alpn\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"extended_ms\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"etm\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"min_version\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"tls12\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"dtls12\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"max_version\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"allow_sha1\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"force_version\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"auth_mode\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"max_frag_len\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"512\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"trunc_hmac\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"hs_timeout\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"dgram_packing\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"recsplit\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"dhmlen\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"query_config\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"context_file\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"eap_tls\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"reproducible\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"nss_keylog\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"nss_keylog_file\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"skip_close_notify\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"use_srtp\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"srtp_force_profile\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"mki\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"key_opaque_algs\00", align 1
@.str.111 = private unnamed_addr constant [64 x i8] c"Error: eap_tls and nss_keylog options cannot be used together.\0A\00", align 1
@.str.112 = private unnamed_addr constant [54 x i8] c"Warning: event-driven IO mandates nbio=1 - overwrite\0A\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"pre-shared key not valid\0A\00", align 1
@.str.114 = private unnamed_addr constant [59 x i8] c"forced ciphersuite not allowed with this protocol version\0A\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"unknown curve %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"supported curves: \00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"Number of curves: %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"curves list too long, maximum %d\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.122 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.123 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@mbedtls_test_cas = external dso_local global [0 x i8*], align 8
@mbedtls_test_cas_len = external dso_local constant [0 x i64], align 8
@mbedtls_test_cas_der = external dso_local global [0 x i8*], align 8
@mbedtls_test_cas_der_len = external dso_local constant [0 x i64], align 8
@.str.124 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned -0x%x\0A\0A\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"  . Loading the client cert. and key...\00", align 1
@mbedtls_test_cli_crt = external dso_local global i8*, align 8
@mbedtls_test_cli_crt_len = external dso_local constant i64, align 8
@mbedtls_test_cli_key = external dso_local global i8*, align 8
@mbedtls_test_cli_key_len = external dso_local constant i64, align 8
@.str.127 = private unnamed_addr constant [51 x i8] c" failed\0A  !  mbedtls_pk_parse_key returned -0x%x\0A\0A\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c" ok (key type: %s)\0A\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"  . Setting up the SSL/TLS structure...\00", align 1
@.str.130 = private unnamed_addr constant [57 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned -0x%x\0A\0A\00", align 1
@peer_crt_info = internal global [1024 x i8] zeroinitializer, align 16
@.str.131 = private unnamed_addr constant [56 x i8] c" failed\0A  ! mbedtls_ssl_conf_max_frag_len returned %d\0A\0A\00", align 1
@.str.132 = private unnamed_addr constant [58 x i8] c" failed\0A  ! mbedtls_ssl_conf_alpn_protocols returned %d\0A\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.133 = private unnamed_addr constant [57 x i8] c"Warning: reproducible option used without constant time\0A\00", align 1
@.str.134 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.135 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ssl_conf_psk returned %d\0A\0A\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ssl_setup returned -0x%x\0A\0A\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_set_hostname returned %d\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"  . Connecting to %s/%s/%s...\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.141 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_net_connect returned -0x%x\0A\0A\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c" failed\0A  ! net_set_(non)block() returned -0x%x\0A\0A\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"  . Performing the SSL/TLS handshake...\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\00", align 1
@.str.145 = private unnamed_addr constant [216 x i8] c"    Unable to verify the server's certificate. Either it is invalid,\0A    or you didn't set ca_file or ca_path to an appropriate value.\0A    Alternatively, you may want to use auth_mode=optional for testing purposes.\0A\00", align 1
@.str.146 = private unnamed_addr constant [77 x i8] c" ok\0A    [ Protocol is %s ]\0A    [ Ciphersuite is %s ]\0A    [ Key size is %u ]\0A\00", align 1
@.str.147 = private unnamed_addr constant [32 x i8] c"    [ Record expansion is %d ]\0A\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"    [ Record expansion is unknown ]\0A\00", align 1
@.str.149 = private unnamed_addr constant [54 x i8] c"    [ Maximum incoming record payload length is %u ]\0A\00", align 1
@.str.150 = private unnamed_addr constant [54 x i8] c"    [ Maximum outgoing record payload length is %u ]\0A\00", align 1
@.str.151 = private unnamed_addr constant [42 x i8] c"    [ Application Layer Protocol is %s ]\0A\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.153 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_ssl_tls_prf returned -0x%x\0A\0A\00", align 1
@.str.154 = private unnamed_addr constant [29 x i8] c"    EAP-TLS key material is:\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"    EAP-TLS IV is:\00", align 1
@.str.158 = private unnamed_addr constant [32 x i8] c"  . Saving session for reuse...\00", align 1
@.str.159 = private unnamed_addr constant [54 x i8] c"failed\0A  ! mbedtls_ssl_get_session() returned -%#02x\0A\00", align 1
@.str.160 = private unnamed_addr constant [45 x i8] c" failed\0A  ! alloc %u bytes for session data\0A\00", align 1
@.str.161 = private unnamed_addr constant [57 x i8] c" failed\0A  ! mbedtls_ssl_session_saved returned -0x%04x\0A\0A\00", align 1
@.str.162 = private unnamed_addr constant [53 x i8] c" failed\0A  ! mbedtls_ssl_get_session returned -0x%x\0A\0A\00", align 1
@.str.163 = private unnamed_addr constant [39 x i8] c"    [ Saved %u bytes of session data]\0A\00", align 1
@.str.164 = private unnamed_addr constant [40 x i8] c"  . Verifying peer X.509 certificate...\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.168 = private unnamed_addr constant [41 x i8] c"  . Peer certificate information    ...\0A\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"  . Performing renegotiation...\00", align 1
@.str.170 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ssl_renegotiate returned %d\0A\0A\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"  > Write to server:\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"GET %s HTTP/1.0\0D\0AExtra-header: \00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.174 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ssl_write returned -0x%x\0A\0A\00", align 1
@.str.175 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.176 = private unnamed_addr constant [82 x i8] c" warning\0A  ! request didn't fit into single datagram and was truncated to size %u\00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c" %d bytes written in %d fragments\0A\0A%s\0A\00", align 1
@.str.178 = private unnamed_addr constant [22 x i8] c"  < Read from server:\00", align 1
@.str.179 = private unnamed_addr constant [35 x i8] c" connection was closed gracefully\0A\00", align 1
@.str.180 = private unnamed_addr constant [31 x i8] c" connection was reset by peer\0A\00", align 1
@.str.181 = private unnamed_addr constant [34 x i8] c" mbedtls_ssl_read returned -0x%x\0A\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c" %d bytes read\0A\0A%s\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c" timeout\0A\00", align 1
@.str.184 = private unnamed_addr constant [44 x i8] c"  . Restarting connection from same port...\00", align 1
@.str.185 = private unnamed_addr constant [55 x i8] c" failed\0A  ! mbedtls_ssl_session_reset returned -0x%x\0A\0A\00", align 1
@.str.186 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\0A\00", align 1
@.str.187 = private unnamed_addr constant [35 x i8] c"  . Serializing live connection...\00", align 1
@.str.188 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_context_save returned -0x%x\0A\0A\00", align 1
@.str.189 = private unnamed_addr constant [60 x i8] c" failed\0A  ! Couldn't allocate buffer for serialized context\00", align 1
@.str.190 = private unnamed_addr constant [42 x i8] c"  . Save serialized context to a file... \00", align 1
@.str.191 = private unnamed_addr constant [57 x i8] c"failed\0A  ! Couldn't allocate buffer for the base64 code\0A\00", align 1
@.str.192 = private unnamed_addr constant [49 x i8] c"failed\0A  ! mbedtls_base64_encode returned -0x%x\0A\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.194 = private unnamed_addr constant [42 x i8] c"failed\0A  ! Cannot open '%s' for writing.\0A\00", align 1
@.str.195 = private unnamed_addr constant [37 x i8] c"failed\0A  ! fwrite(%ld bytes) failed\0A\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c"  . Context has been reset... ok\0A\00", align 1
@.str.198 = private unnamed_addr constant [42 x i8] c"  . Freeing and reinitializing context...\00", align 1
@.str.199 = private unnamed_addr constant [32 x i8] c"  . Deserializing connection...\00", align 1
@.str.200 = private unnamed_addr constant [53 x i8] c"failed\0A  ! mbedtls_ssl_context_load returned -0x%x\0A\0A\00", align 1
@.str.201 = private unnamed_addr constant [30 x i8] c"  . Closing the connection...\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.203 = private unnamed_addr constant [39 x i8] c"  . Reconnecting with saved session...\00", align 1
@.str.204 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_session_load returned -0x%x\0A\0A\00", align 1
@.str.205 = private unnamed_addr constant [53 x i8] c" failed\0A  ! mbedtls_ssl_set_session returned -0x%x\0A\0A\00", align 1
@.str.206 = private unnamed_addr constant [29 x i8] c"Last error was: -0x%X - %s\0A\0A\00", align 1
@.str.207 = private unnamed_addr constant [35 x i8] c"\0AVerify requested for (Depth %d):\0A\00", align 1
@.str.208 = private unnamed_addr constant [33 x i8] c"  This certificate has no flags\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_tls_key_derivation(i8* noundef %p_expkey, i32 noundef %secret_type, i8* noundef %secret, i64 noundef %secret_len, i8* noundef %client_random, i8* noundef %server_random, i32 noundef %tls_prf_type) #0 {
entry:
  %p_expkey.addr = alloca i8*, align 8
  %secret_type.addr = alloca i32, align 4
  %secret.addr = alloca i8*, align 8
  %secret_len.addr = alloca i64, align 8
  %client_random.addr = alloca i8*, align 8
  %server_random.addr = alloca i8*, align 8
  %tls_prf_type.addr = alloca i32, align 4
  %keys = alloca %struct.eap_tls_keys*, align 8
  store i8* %p_expkey, i8** %p_expkey.addr, align 8
  store i32 %secret_type, i32* %secret_type.addr, align 4
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %secret_len, i64* %secret_len.addr, align 8
  store i8* %client_random, i8** %client_random.addr, align 8
  store i8* %server_random, i8** %server_random.addr, align 8
  store i32 %tls_prf_type, i32* %tls_prf_type.addr, align 4
  %0 = load i8*, i8** %p_expkey.addr, align 8
  %1 = bitcast i8* %0 to %struct.eap_tls_keys*
  store %struct.eap_tls_keys* %1, %struct.eap_tls_keys** %keys, align 8
  %2 = load i32, i32* %secret_type.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %secret_len.addr, align 8
  %cmp1 = icmp ne i64 %3, 48
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %master_secret = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %master_secret, i64 0, i64 0
  %5 = load i8*, i8** %secret.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %5, i64 noundef 48) #6
  %6 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %randbytes = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %6, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %7 = load i8*, i8** %client_random.addr, align 8
  %call5 = call i8* @memcpy(i8* noundef %arraydecay4, i8* noundef %7, i64 noundef 32) #6
  %8 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %randbytes6 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %8, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes6, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 32
  %9 = load i8*, i8** %server_random.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %9, i64 noundef 32) #6
  %10 = load i32, i32* %tls_prf_type.addr, align 4
  %11 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %tls_prf_type9 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %11, i32 0, i32 2
  store i32 %10, i32* %tls_prf_type9, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nss_keylog_export(i8* noundef %p_expkey, i32 noundef %secret_type, i8* noundef %secret, i64 noundef %secret_len, i8* noundef %client_random, i8* noundef %server_random, i32 noundef %tls_prf_type) #0 {
entry:
  %p_expkey.addr = alloca i8*, align 8
  %secret_type.addr = alloca i32, align 4
  %secret.addr = alloca i8*, align 8
  %secret_len.addr = alloca i64, align 8
  %client_random.addr = alloca i8*, align 8
  %server_random.addr = alloca i8*, align 8
  %tls_prf_type.addr = alloca i32, align 4
  %nss_keylog_line = alloca [200 x i8], align 16
  %client_random_len = alloca i64, align 8
  %len = alloca i64, align 8
  %j = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %p_expkey, i8** %p_expkey.addr, align 8
  store i32 %secret_type, i32* %secret_type.addr, align 4
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %secret_len, i64* %secret_len.addr, align 8
  store i8* %client_random, i8** %client_random.addr, align 8
  store i8* %server_random, i8** %server_random.addr, align 8
  store i32 %tls_prf_type, i32* %tls_prf_type.addr, align 4
  store i64 32, i64* %client_random_len, align 8
  store i64 0, i64* %len, align 8
  %0 = load i32, i32* %secret_type.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p_expkey.addr, align 8
  %2 = load i8*, i8** %server_random.addr, align 8
  %3 = load i32, i32* %tls_prf_type.addr, align 4
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %4 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6
  %conv = sext i32 %call to i64
  %5 = load i64, i64* %len, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, i64* %j, align 8
  %cmp1 = icmp ult i64 %6, 32
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %7 = load i64, i64* %len, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay3, i64 %7
  %8 = load i8*, i8** %client_random.addr, align 8
  %9 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv5) #6
  %conv7 = sext i32 %call6 to i64
  %11 = load i64, i64* %len, align 8
  %add8 = add i64 %11, %conv7
  store i64 %add8, i64* %len, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %j, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %13 = load i64, i64* %len, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 %13
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %conv12 = sext i32 %call11 to i64
  %14 = load i64, i64* %len, align 8
  %add13 = add i64 %14, %conv12
  store i64 %add13, i64* %len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %secret_len.addr, align 8
  %cmp15 = icmp ult i64 %15, %16
  br i1 %cmp15, label %for.body17, label %for.end27

for.body17:                                       ; preds = %for.cond14
  %arraydecay18 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %17 = load i64, i64* %len, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 %17
  %18 = load i8*, i8** %secret.addr, align 8
  %19 = load i64, i64* %j, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv21) #6
  %conv23 = sext i32 %call22 to i64
  %21 = load i64, i64* %len, align 8
  %add24 = add i64 %21, %conv23
  store i64 %add24, i64* %len, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body17
  %22 = load i64, i64* %j, align 8
  %inc26 = add i64 %22, 1
  store i64 %inc26, i64* %j, align 8
  br label %for.cond14, !llvm.loop !6

for.end27:                                        ; preds = %for.cond14
  %arraydecay28 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %23 = load i64, i64* %len, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %arraydecay28, i64 %23
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %conv31 = sext i32 %call30 to i64
  %24 = load i64, i64* %len, align 8
  %add32 = add i64 %24, %conv31
  store i64 %add32, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %arrayidx33 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 %25
  store i8 0, i8* %arrayidx33, align 1
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0)) #7
  %arraydecay36 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay36) #7
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)) #7
  %26 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp39 = icmp ne i8* %26, null
  br i1 %cmp39, label %if.then41, label %if.end55

if.then41:                                        ; preds = %for.end27
  %27 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %call42 = call %struct._IO_FILE* @fopen(i8* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call42, %struct._IO_FILE** %f, align 8
  %cmp43 = icmp eq %struct._IO_FILE* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  br label %exit

if.end46:                                         ; preds = %if.then41
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %28, i8* noundef null) #6
  %arraydecay47 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %29 = load i64, i64* %len, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call48 = call i64 @fwrite(i8* noundef %arraydecay47, i64 noundef 1, i64 noundef %29, %struct._IO_FILE* noundef %30) #7
  %31 = load i64, i64* %len, align 8
  %cmp49 = icmp ne i64 %call48, %31
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end46
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* noundef %32) #7
  br label %exit

if.end53:                                         ; preds = %if.end46
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* noundef %33) #7
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %for.end27
  br label %exit

exit:                                             ; preds = %if.end55, %if.then51, %if.then45
  %arraydecay56 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay56, i64 noundef 200) #7
  br label %return

return:                                           ; preds = %exit, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE* noundef, i8* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_check_record(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %my_ret = alloca i32, align 4
  %ret_cr1 = alloca i32, align 4
  %ret_cr2 = alloca i32, align 4
  %tmp_buf = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %my_ret, align 4
  %0 = load i64, i64* %len.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #6
  store i8* %call, i8** %tmp_buf, align 8
  %1 = load i8*, i8** %tmp_buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %tmp_buf, align 8
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i8* @memcpy(i8* noundef %2, i8* noundef %3, i64 noundef %4) #6
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %tmp_buf, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef %5, i8* noundef %6, i64 noundef %7) #7
  store i32 %call2, i32* %ret_cr1, align 4
  %8 = load i32, i32* %ret_cr1, align 4
  %cmp3 = icmp ne i32 %8, -28800
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  %9 = load i8*, i8** %tmp_buf, align 8
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %call5 = call i8* @memcpy(i8* noundef %9, i8* noundef %10, i64 noundef %11) #6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i8*, i8** %tmp_buf, align 8
  %14 = load i64, i64* %len.addr, align 8
  %call6 = call i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef %12, i8* noundef %13, i64 noundef %14) #7
  store i32 %call6, i32* %ret_cr2, align 4
  %15 = load i32, i32* %ret_cr2, align 4
  %16 = load i32, i32* %ret_cr1, align 4
  %cmp7 = icmp ne i32 %15, %16
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then4
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0)) #7
  store i32 -1, i32* %my_ret, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  %17 = load i32, i32* %ret_cr1, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 -29184, label %sw.bb11
    i32 -29056, label %sw.bb16
    i32 -26368, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end10
  %18 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp12 = icmp sgt i32 %18, 1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb11
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.bb11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10
  %19 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp17 = icmp sgt i32 %19, 1
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.bb16
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0)) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.bb16
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end10
  %20 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp22 = icmp sgt i32 %20, 1
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.bb21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0)) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb21
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  %21 = load i32, i32* %ret_cr1, align 4
  %sub = sub nsw i32 0, %21
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 noundef %sub) #7
  store i32 -1, i32* %my_ret, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25, %if.end20, %if.end15, %sw.bb
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %sw.default, %if.then8
  %22 = load i8*, i8** %tmp_buf, align 8
  call void @free(i8* noundef %22) #6
  %23 = load i32, i32* %my_ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_cb(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %io_ctx = alloca %struct.io_ctx_t*, align 8
  %recv_len = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.io_ctx_t*
  store %struct.io_ctx_t* %1, %struct.io_ctx_t** %io_ctx, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net, align 8
  %5 = bitcast %struct.mbedtls_net_context* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call = call i32 @delayed_recv(i8* noundef %5, i8* noundef %6, i64 noundef %7) #7
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net1 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net1, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_net_recv(i8* noundef %10, i8* noundef %11, i64 noundef %12) #7
  store i32 %call2, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %15 = load i32, i32* %ret, align 4
  %conv = sext i32 %15 to i64
  store i64 %conv, i64* %recv_len, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp6 = icmp eq i32 %16, 1
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %17 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %ssl = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl, align 8
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i64, i64* %recv_len, align 8
  %call9 = call i32 @ssl_check_record(%struct.mbedtls_ssl_context* noundef %18, i8* noundef %19, i64 noundef %20) #7
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end5
  %21 = load i64, i64* %recv_len, align 8
  %conv15 = trunc i64 %21 to i32
  store i32 %conv15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then4
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare dso_local i32 @delayed_recv(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_timeout_cb(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len, i32 noundef %timeout) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %timeout.addr = alloca i32, align 4
  %io_ctx = alloca %struct.io_ctx_t*, align 8
  %ret = alloca i32, align 4
  %recv_len = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %timeout, i32* %timeout.addr, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.io_ctx_t*
  store %struct.io_ctx_t* %1, %struct.io_ctx_t** %io_ctx, align 8
  %2 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net, align 8
  %4 = bitcast %struct.mbedtls_net_context* %3 to i8*
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i32, i32* %timeout.addr, align 4
  %call = call i32 @mbedtls_net_recv_timeout(i8* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #7
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %ret, align 4
  %conv = sext i32 %10 to i64
  store i64 %conv, i64* %recv_len, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1 = icmp eq i32 %11, 1
  br i1 %cmp1, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %12 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %ssl = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i64, i64* %recv_len, align 8
  %call4 = call i32 @ssl_check_record(%struct.mbedtls_ssl_context* noundef %13, i8* noundef %14, i64 noundef %15) #7
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %16 = load i64, i64* %recv_len, align 8
  %conv10 = trunc i64 %16 to i32
  store i32 %conv10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_net_recv_timeout(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_cb(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %io_ctx = alloca %struct.io_ctx_t*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.io_ctx_t*
  store %struct.io_ctx_t* %1, %struct.io_ctx_t** %io_ctx, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net, align 8
  %5 = bitcast %struct.mbedtls_net_context* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call = call i32 @delayed_send(i8* noundef %5, i8* noundef %6, i64 noundef %7) #7
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net1 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net1, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_net_send(i8* noundef %10, i8* noundef %11, i64 noundef %12) #7
  store i32 %call2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @delayed_send(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_crt_verify_info(i8* noundef %buf, i64 noundef %size, i8* noundef %prefix, i32 noundef %flags) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %0, i64 noundef %1, i8* noundef %2, i32 noundef %3) #7
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_print_supported_sig_algs() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #7
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #7
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #7
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0)) #7
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0)) #7
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #7
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #7
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #7
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0)) #7
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #7
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #7
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)) #7
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #7
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #7
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #7
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #7
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #7
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %tail_len = alloca i32, align 4
  %i = alloca i32, align 4
  %written = alloca i32, align 4
  %frags = alloca i32, align 4
  %retry_left = alloca i32, align 4
  %query_config_ret = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %io_ctx = alloca %struct.io_ctx_t, align 8
  %buf = alloca [20001 x i8], align 16
  %psk = alloca [32 x i8], align 16
  %psk_len = alloca i64, align 8
  %alpn_list = alloca [10 x i8*], align 16
  %group_list = alloca [20 x i16], align 16
  %curve_cur = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %pers = alloca i8*, align 8
  %crt_profile_for_test = alloca %struct.mbedtls_x509_crt_profile, align 4
  %rng = alloca %struct.rng_context_t, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %saved_session = alloca %struct.mbedtls_ssl_session, align 8
  %session_data = alloca i8*, align 8
  %session_data_len = alloca i64, align 8
  %timer = alloca %struct.mbedtls_timing_delay_context, align 4
  %flags = alloca i32, align 4
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %clicert = alloca %struct.mbedtls_x509_crt, align 8
  %pkey = alloca %struct.mbedtls_pk_context, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %list = alloca i32*, align 8
  %context_buf = alloca i8*, align 8
  %context_buf_len = alloca i64, align 8
  %eap_tls_keymaterial = alloca [16 x i8], align 16
  %eap_tls_iv = alloca [8 x i8], align 1
  %eap_tls_label = alloca i8*, align 8
  %eap_tls_keying = alloca %struct.eap_tls_keys, align 4
  %t = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %suite_id = alloca i32, align 4
  %ciphersuite_info1086 = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %alp = alloca i8*, align 8
  %j = alloca i64, align 8
  %exported_session = alloca %struct.mbedtls_ssl_session, align 8
  %vrfy_buf = alloca [512 x i8], align 16
  %buf_len = alloca i64, align 8
  %b64_file = alloca %struct._IO_FILE*, align 8
  %b64_buf = alloca i8*, align 8
  %b64_len = alloca i64, align 8
  %error_buf = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %query_config_ret, align 4
  store i64 0, i64* %psk_len, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8** %pers, align 8
  %0 = bitcast %struct.mbedtls_x509_crt_profile* %crt_profile_for_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.mbedtls_x509_crt_profile* @mbedtls_x509_crt_profile_default to i8*), i64 16, i1 false)
  store i8* null, i8** %session_data, align 8
  store i64 0, i64* %session_data_len, align 8
  store i8* null, i8** %context_buf, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i8** %eap_tls_label, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #7
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #7
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #7
  %1 = bitcast %struct.mbedtls_ssl_session* %saved_session to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 152) #6
  call void @rng_init(%struct.rng_context_t* noundef %rng) #7
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #7
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %clicert) #7
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #7
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 0
  %2 = bitcast i8** %arraydecay to i8*
  %call1 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 80) #6
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.then589, %if.then580, %if.then554, %if.else491, %if.then489, %if.then467, %if.then453, %if.then439, %if.then425, %if.then410, %if.then402, %if.then392, %if.then382, %if.then374, %if.then366, %sw.default358, %if.else346, %if.else323, %if.else305, %sw.default292, %if.else283, %if.else271, %sw.default259, %sw.default246, %if.then233, %if.then223, %if.then213, %if.then205, %if.then197, %if.then187, %if.then179, %sw.default, %if.then156, %if.then111, %if.then97, %if.then84, %if.then74, %if.then64, %if.then55, %if.else45, %if.then22, %if.then
  %4 = load i32, i32* %ret, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %usage
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %usage
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1451 x i8], [1451 x i8]* @.str.32, i64 0, i64 0)) #7
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1015 x i8], [1015 x i8]* @.str.33, i64 0, i64 0)) #7
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1952 x i8], [1952 x i8]* @.str.34, i64 0, i64 0)) #7
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1046 x i8], [1046 x i8]* @.str.35, i64 0, i64 0)) #7
  %call8 = call i32* @mbedtls_ssl_list_ciphersuites() #7
  store i32* %call8, i32** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %5 = load i32*, i32** %list, align 8
  %6 = load i32, i32* %5, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32*, i32** %list, align 8
  %8 = load i32, i32* %7, align 4
  %call9 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %8) #7
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call9) #7
  %9 = load i32*, i32** %list, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr, i32** %list, align 8
  %10 = load i32*, i32** %list, align 8
  %11 = load i32, i32* %10, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.body
  br label %while.end

if.end13:                                         ; preds = %while.body
  %12 = load i32*, i32** %list, align 8
  %13 = load i32, i32* %12, align 4
  %call14 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %13) #7
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call14) #7
  %14 = load i32*, i32** %list, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr16, i32** %list, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then12, %while.cond
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %exit

if.end18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 4
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 4
  store i32 -2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 64), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 65), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 66), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8
  store i8* %19, i8** %p, align 8
  %20 = load i8*, i8** %p, align 8
  %call20 = call i8* @strchr(i8* noundef %20, i32 noundef 61) #8
  store i8* %call20, i8** %q, align 8
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  br label %usage

if.end23:                                         ; preds = %for.body
  %21 = load i8*, i8** %q, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %p, align 8
  %call25 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  %23 = load i8*, i8** %q, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end550

if.else:                                          ; preds = %if.end23
  %24 = load i8*, i8** %p, align 8
  %call28 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  %25 = load i8*, i8** %q, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end549

if.else31:                                        ; preds = %if.else
  %26 = load i8*, i8** %p, align 8
  %call32 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #8
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else31
  %27 = load i8*, i8** %q, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end548

if.else35:                                        ; preds = %if.else31
  %28 = load i8*, i8** %p, align 8
  %call36 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.else48

if.then38:                                        ; preds = %if.else35
  %29 = load i8*, i8** %q, align 8
  %call39 = call i32 @atoi(i8* noundef %29) #8
  store i32 %call39, i32* %t, align 4
  %30 = load i32, i32* %t, align 4
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.then38
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  br label %if.end47

if.else42:                                        ; preds = %if.then38
  %31 = load i32, i32* %t, align 4
  %cmp43 = icmp eq i32 %31, 1
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else42
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  br label %if.end46

if.else45:                                        ; preds = %if.else42
  br label %usage

if.end46:                                         ; preds = %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then41
  br label %if.end547

if.else48:                                        ; preds = %if.else35
  %32 = load i8*, i8** %p, align 8
  %call49 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #8
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.else57

if.then51:                                        ; preds = %if.else48
  %33 = load i8*, i8** %q, align 8
  %call52 = call i32 @atoi(i8* noundef %33) #8
  store i32 %call52, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp53 = icmp slt i32 %34, 0
  br i1 %cmp53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then51
  %35 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp54 = icmp sgt i32 %35, 65535
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %if.then51
  br label %usage

if.end56:                                         ; preds = %lor.lhs.false
  br label %if.end546

if.else57:                                        ; preds = %if.else48
  %36 = load i8*, i8** %p, align 8
  %call58 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #8
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.else66

if.then60:                                        ; preds = %if.else57
  %37 = load i8*, i8** %q, align 8
  %call61 = call i32 @atoi(i8* noundef %37) #8
  store i32 %call61, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp62 = icmp ne i32 %38, 0
  br i1 %cmp62, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.then60
  %39 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp63 = icmp ne i32 %39, 1
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true
  br label %usage

if.end65:                                         ; preds = %land.lhs.true, %if.then60
  br label %if.end545

if.else66:                                        ; preds = %if.else57
  %40 = load i8*, i8** %p, align 8
  %call67 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0)) #8
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.else76

if.then69:                                        ; preds = %if.else66
  %41 = load i8*, i8** %q, align 8
  %call70 = call i32 @atoi(i8* noundef %41) #8
  store i32 %call70, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp71 = icmp slt i32 %42, 0
  br i1 %cmp71, label %if.then74, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then69
  %43 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp73 = icmp sgt i32 %43, 2
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false72, %if.then69
  br label %usage

if.end75:                                         ; preds = %lor.lhs.false72
  br label %if.end544

if.else76:                                        ; preds = %if.else66
  %44 = load i8*, i8** %p, align 8
  %call77 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0)) #8
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.else76
  %45 = load i8*, i8** %q, align 8
  %call80 = call i32 @atoi(i8* noundef %45) #8
  store i32 %call80, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp81 = icmp slt i32 %46, 0
  br i1 %cmp81, label %if.then84, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.then79
  %47 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp83 = icmp sgt i32 %47, 2
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false82, %if.then79
  br label %usage

if.end85:                                         ; preds = %lor.lhs.false82
  br label %if.end543

if.else86:                                        ; preds = %if.else76
  %48 = load i8*, i8** %p, align 8
  %call87 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0)) #8
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else86
  %49 = load i8*, i8** %q, align 8
  %call90 = call i32 @atoi(i8* noundef %49) #8
  store i32 %call90, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  br label %if.end542

if.else91:                                        ; preds = %if.else86
  %50 = load i8*, i8** %p, align 8
  %call92 = call i32 @strcmp(i8* noundef %50, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0)) #8
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.else99

if.then94:                                        ; preds = %if.else91
  %51 = load i8*, i8** %q, align 8
  %call95 = call i32 @atoi(i8* noundef %51) #8
  store i32 %call95, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  %cmp96 = icmp slt i32 %52, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then94
  br label %usage

if.end98:                                         ; preds = %if.then94
  br label %if.end541

if.else99:                                        ; preds = %if.else91
  %53 = load i8*, i8** %p, align 8
  %call100 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #8
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else99
  %54 = load i8*, i8** %q, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  br label %if.end540

if.else103:                                       ; preds = %if.else99
  %55 = load i8*, i8** %p, align 8
  %call104 = call i32 @strcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0)) #8
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.else113

if.then106:                                       ; preds = %if.else103
  %56 = load i8*, i8** %q, align 8
  %call107 = call i32 @atoi(i8* noundef %56) #8
  store i32 %call107, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp108 = icmp slt i32 %57, 0
  br i1 %cmp108, label %if.then111, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.then106
  %58 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp110 = icmp sgt i32 %58, 20000
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %lor.lhs.false109, %if.then106
  br label %usage

if.end112:                                        ; preds = %lor.lhs.false109
  br label %if.end539

if.else113:                                       ; preds = %if.else103
  %59 = load i8*, i8** %p, align 8
  %call114 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #8
  %cmp115 = icmp eq i32 %call114, 0
  br i1 %cmp115, label %if.then116, label %if.else117

if.then116:                                       ; preds = %if.else113
  %60 = load i8*, i8** %q, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  br label %if.end538

if.else117:                                       ; preds = %if.else113
  %61 = load i8*, i8** %p, align 8
  %call118 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)) #8
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.else117
  %62 = load i8*, i8** %q, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  br label %if.end537

if.else121:                                       ; preds = %if.else117
  %63 = load i8*, i8** %p, align 8
  %call122 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0)) #8
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else121
  %64 = load i8*, i8** %q, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  br label %if.end536

if.else125:                                       ; preds = %if.else121
  %65 = load i8*, i8** %p, align 8
  %call126 = call i32 @strcmp(i8* noundef %65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0)) #8
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then128, label %if.else129

if.then128:                                       ; preds = %if.else125
  %66 = load i8*, i8** %q, align 8
  store i8* %66, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  br label %if.end535

if.else129:                                       ; preds = %if.else125
  %67 = load i8*, i8** %p, align 8
  %call130 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0)) #8
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.else129
  %68 = load i8*, i8** %q, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  br label %if.end534

if.else133:                                       ; preds = %if.else129
  %69 = load i8*, i8** %p, align 8
  %call134 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #8
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.else133
  %70 = load i8*, i8** %q, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  br label %if.end533

if.else137:                                       ; preds = %if.else133
  %71 = load i8*, i8** %p, align 8
  %call138 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0)) #8
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.then140, label %if.else141

if.then140:                                       ; preds = %if.else137
  %72 = load i8*, i8** %q, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 8
  br label %if.end532

if.else141:                                       ; preds = %if.else137
  %73 = load i8*, i8** %p, align 8
  %call142 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0)) #8
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.else141
  %74 = load i8*, i8** %q, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  br label %if.end531

if.else145:                                       ; preds = %if.else141
  %75 = load i8*, i8** %p, align 8
  %call146 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0)) #8
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then148, label %if.else150

if.then148:                                       ; preds = %if.else145
  %76 = load i8*, i8** %q, align 8
  %call149 = call i32 @atoi(i8* noundef %76) #8
  store i32 %call149, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 8
  br label %if.end530

if.else150:                                       ; preds = %if.else145
  %77 = load i8*, i8** %p, align 8
  %call151 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #8
  %cmp152 = icmp eq i32 %call151, 0
  br i1 %cmp152, label %if.then153, label %if.else158

if.then153:                                       ; preds = %if.else150
  %78 = load i8*, i8** %q, align 8
  %call154 = call i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef %78) #7
  store i32 %call154, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  %cmp155 = icmp eq i32 %79, 0
  br i1 %cmp155, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.then153
  store i32 2, i32* %ret, align 4
  br label %usage

if.end157:                                        ; preds = %if.then153
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 1), align 4
  br label %if.end529

if.else158:                                       ; preds = %if.else150
  %80 = load i8*, i8** %p, align 8
  %call159 = call i32 @strcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0)) #8
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else158
  %81 = load i8*, i8** %q, align 8
  %call162 = call i32 @atoi(i8* noundef %81) #8
  %tobool163 = icmp ne i32 %call162, 0
  %82 = zext i1 %tobool163 to i64
  %cond = select i1 %tobool163, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 4
  br label %if.end528

if.else164:                                       ; preds = %if.else158
  %83 = load i8*, i8** %p, align 8
  %call165 = call i32 @strcmp(i8* noundef %83, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #8
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then167, label %if.else171

if.then167:                                       ; preds = %if.else164
  %84 = load i8*, i8** %q, align 8
  %call168 = call i32 @atoi(i8* noundef %84) #8
  switch i32 %call168, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb169
    i32 1, label %sw.bb170
  ]

sw.bb:                                            ; preds = %if.then167
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  br label %sw.epilog

sw.bb169:                                         ; preds = %if.then167
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  br label %sw.epilog

sw.bb170:                                         ; preds = %if.then167
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then167
  br label %usage

sw.epilog:                                        ; preds = %sw.bb170, %sw.bb169, %sw.bb
  br label %if.end527

if.else171:                                       ; preds = %if.else164
  %85 = load i8*, i8** %p, align 8
  %call172 = call i32 @strcmp(i8* noundef %85, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0)) #8
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then174, label %if.else181

if.then174:                                       ; preds = %if.else171
  %86 = load i8*, i8** %q, align 8
  %call175 = call i32 @atoi(i8* noundef %86) #8
  store i32 %call175, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 4
  %cmp176 = icmp slt i32 %87, 0
  br i1 %cmp176, label %if.then179, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %if.then174
  %88 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 4
  %cmp178 = icmp sgt i32 %88, 1
  br i1 %cmp178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %lor.lhs.false177, %if.then174
  br label %usage

if.end180:                                        ; preds = %lor.lhs.false177
  br label %if.end526

if.else181:                                       ; preds = %if.else171
  %89 = load i8*, i8** %p, align 8
  %call182 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0)) #8
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then184, label %if.else189

if.then184:                                       ; preds = %if.else181
  %90 = load i8*, i8** %q, align 8
  %call185 = call i32 @atoi(i8* noundef %90) #8
  store i32 %call185, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25), align 4
  %cmp186 = icmp slt i32 %91, 1
  br i1 %cmp186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.then184
  br label %usage

if.end188:                                        ; preds = %if.then184
  br label %if.end525

if.else189:                                       ; preds = %if.else181
  %92 = load i8*, i8** %p, align 8
  %call190 = call i32 @strcmp(i8* noundef %92, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0)) #8
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.then192, label %if.else199

if.then192:                                       ; preds = %if.else189
  %93 = load i8*, i8** %q, align 8
  %call193 = call i32 @atoi(i8* noundef %93) #8
  store i32 %call193, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %cmp194 = icmp slt i32 %94, 0
  br i1 %cmp194, label %if.then197, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %if.then192
  %95 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %cmp196 = icmp sgt i32 %95, 2
  br i1 %cmp196, label %if.then197, label %if.end198

if.then197:                                       ; preds = %lor.lhs.false195, %if.then192
  br label %usage

if.end198:                                        ; preds = %lor.lhs.false195
  br label %if.end524

if.else199:                                       ; preds = %if.else189
  %96 = load i8*, i8** %p, align 8
  %call200 = call i32 @strcmp(i8* noundef %96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0)) #8
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then202, label %if.else207

if.then202:                                       ; preds = %if.else199
  %97 = load i8*, i8** %q, align 8
  %call203 = call i32 @atoi(i8* noundef %97) #8
  store i32 %call203, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 4
  %cmp204 = icmp slt i32 %98, 0
  br i1 %cmp204, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.then202
  br label %usage

if.end206:                                        ; preds = %if.then202
  br label %if.end523

if.else207:                                       ; preds = %if.else199
  %99 = load i8*, i8** %p, align 8
  %call208 = call i32 @strcmp(i8* noundef %99, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #8
  %cmp209 = icmp eq i32 %call208, 0
  br i1 %cmp209, label %if.then210, label %if.else215

if.then210:                                       ; preds = %if.else207
  %100 = load i8*, i8** %q, align 8
  %call211 = call i32 @atoi(i8* noundef %100) #8
  store i32 %call211, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  %cmp212 = icmp slt i32 %101, 0
  br i1 %cmp212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then210
  br label %usage

if.end214:                                        ; preds = %if.then210
  br label %if.end522

if.else215:                                       ; preds = %if.else207
  %102 = load i8*, i8** %p, align 8
  %call216 = call i32 @strcmp(i8* noundef %102, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0)) #8
  %cmp217 = icmp eq i32 %call216, 0
  br i1 %cmp217, label %if.then218, label %if.else225

if.then218:                                       ; preds = %if.else215
  %103 = load i8*, i8** %q, align 8
  %call219 = call i32 @atoi(i8* noundef %103) #8
  store i32 %call219, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  %cmp220 = icmp slt i32 %104, 0
  br i1 %cmp220, label %if.then223, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %if.then218
  %105 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  %cmp222 = icmp sgt i32 %105, 1
  br i1 %cmp222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %lor.lhs.false221, %if.then218
  br label %usage

if.end224:                                        ; preds = %lor.lhs.false221
  br label %if.end521

if.else225:                                       ; preds = %if.else215
  %106 = load i8*, i8** %p, align 8
  %call226 = call i32 @strcmp(i8* noundef %106, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0)) #8
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.then228, label %if.else235

if.then228:                                       ; preds = %if.else225
  %107 = load i8*, i8** %q, align 8
  %call229 = call i32 @atoi(i8* noundef %107) #8
  store i32 %call229, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 8
  %cmp230 = icmp slt i32 %108, 0
  br i1 %cmp230, label %if.then233, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %if.then228
  %109 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 8
  %cmp232 = icmp sgt i32 %109, 2
  br i1 %cmp232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %lor.lhs.false231, %if.then228
  br label %usage

if.end234:                                        ; preds = %lor.lhs.false231
  br label %if.end520

if.else235:                                       ; preds = %if.else225
  %110 = load i8*, i8** %p, align 8
  %call236 = call i32 @strcmp(i8* noundef %110, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #8
  %cmp237 = icmp eq i32 %call236, 0
  br i1 %cmp237, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else235
  %111 = load i8*, i8** %q, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  br label %if.end519

if.else239:                                       ; preds = %if.else235
  %112 = load i8*, i8** %p, align 8
  %call240 = call i32 @strcmp(i8* noundef %112, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0)) #8
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %if.then242, label %if.else248

if.then242:                                       ; preds = %if.else239
  %113 = load i8*, i8** %q, align 8
  %call243 = call i32 @atoi(i8* noundef %113) #8
  switch i32 %call243, label %sw.default246 [
    i32 0, label %sw.bb244
    i32 1, label %sw.bb245
  ]

sw.bb244:                                         ; preds = %if.then242
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  br label %sw.epilog247

sw.bb245:                                         ; preds = %if.then242
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  br label %sw.epilog247

sw.default246:                                    ; preds = %if.then242
  br label %usage

sw.epilog247:                                     ; preds = %sw.bb245, %sw.bb244
  br label %if.end518

if.else248:                                       ; preds = %if.else239
  %114 = load i8*, i8** %p, align 8
  %call249 = call i32 @strcmp(i8* noundef %114, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0)) #8
  %cmp250 = icmp eq i32 %call249, 0
  br i1 %cmp250, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.else248
  %115 = load i8*, i8** %q, align 8
  store i8* %115, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  br label %if.end517

if.else252:                                       ; preds = %if.else248
  %116 = load i8*, i8** %p, align 8
  %call253 = call i32 @strcmp(i8* noundef %116, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  %cmp254 = icmp eq i32 %call253, 0
  br i1 %cmp254, label %if.then255, label %if.else261

if.then255:                                       ; preds = %if.else252
  %117 = load i8*, i8** %q, align 8
  %call256 = call i32 @atoi(i8* noundef %117) #8
  switch i32 %call256, label %sw.default259 [
    i32 0, label %sw.bb257
    i32 1, label %sw.bb258
  ]

sw.bb257:                                         ; preds = %if.then255
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 4
  br label %sw.epilog260

sw.bb258:                                         ; preds = %if.then255
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 4
  br label %sw.epilog260

sw.default259:                                    ; preds = %if.then255
  br label %usage

sw.epilog260:                                     ; preds = %sw.bb258, %sw.bb257
  br label %if.end516

if.else261:                                       ; preds = %if.else252
  %118 = load i8*, i8** %p, align 8
  %call262 = call i32 @strcmp(i8* noundef %118, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0)) #8
  %cmp263 = icmp eq i32 %call262, 0
  br i1 %cmp263, label %if.then264, label %if.else273

if.then264:                                       ; preds = %if.else261
  %119 = load i8*, i8** %q, align 8
  %call265 = call i32 @strcmp(i8* noundef %119, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #8
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %if.then270, label %lor.lhs.false267

lor.lhs.false267:                                 ; preds = %if.then264
  %120 = load i8*, i8** %q, align 8
  %call268 = call i32 @strcmp(i8* noundef %120, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0)) #8
  %cmp269 = icmp eq i32 %call268, 0
  br i1 %cmp269, label %if.then270, label %if.else271

if.then270:                                       ; preds = %lor.lhs.false267, %if.then264
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  br label %if.end272

if.else271:                                       ; preds = %lor.lhs.false267
  br label %usage

if.end272:                                        ; preds = %if.then270
  br label %if.end515

if.else273:                                       ; preds = %if.else261
  %121 = load i8*, i8** %p, align 8
  %call274 = call i32 @strcmp(i8* noundef %121, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0)) #8
  %cmp275 = icmp eq i32 %call274, 0
  br i1 %cmp275, label %if.then276, label %if.else285

if.then276:                                       ; preds = %if.else273
  %122 = load i8*, i8** %q, align 8
  %call277 = call i32 @strcmp(i8* noundef %122, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #8
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then282, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %if.then276
  %123 = load i8*, i8** %q, align 8
  %call280 = call i32 @strcmp(i8* noundef %123, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0)) #8
  %cmp281 = icmp eq i32 %call280, 0
  br i1 %cmp281, label %if.then282, label %if.else283

if.then282:                                       ; preds = %lor.lhs.false279, %if.then276
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %if.end284

if.else283:                                       ; preds = %lor.lhs.false279
  br label %usage

if.end284:                                        ; preds = %if.then282
  br label %if.end514

if.else285:                                       ; preds = %if.else273
  %124 = load i8*, i8** %p, align 8
  %call286 = call i32 @strcmp(i8* noundef %124, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0)) #8
  %cmp287 = icmp eq i32 %call286, 0
  br i1 %cmp287, label %if.then288, label %if.else294

if.then288:                                       ; preds = %if.else285
  %125 = load i8*, i8** %q, align 8
  %call289 = call i32 @atoi(i8* noundef %125) #8
  switch i32 %call289, label %sw.default292 [
    i32 0, label %sw.bb290
    i32 1, label %sw.bb291
  ]

sw.bb290:                                         ; preds = %if.then288
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  br label %sw.epilog293

sw.bb291:                                         ; preds = %if.then288
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  br label %sw.epilog293

sw.default292:                                    ; preds = %if.then288
  br label %usage

sw.epilog293:                                     ; preds = %sw.bb291, %sw.bb290
  br label %if.end513

if.else294:                                       ; preds = %if.else285
  %126 = load i8*, i8** %p, align 8
  %call295 = call i32 @strcmp(i8* noundef %126, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0)) #8
  %cmp296 = icmp eq i32 %call295, 0
  br i1 %cmp296, label %if.then297, label %if.else308

if.then297:                                       ; preds = %if.else294
  %127 = load i8*, i8** %q, align 8
  %call298 = call i32 @strcmp(i8* noundef %127, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #8
  %cmp299 = icmp eq i32 %call298, 0
  br i1 %cmp299, label %if.then300, label %if.else301

if.then300:                                       ; preds = %if.then297
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %if.end307

if.else301:                                       ; preds = %if.then297
  %128 = load i8*, i8** %q, align 8
  %call302 = call i32 @strcmp(i8* noundef %128, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0)) #8
  %cmp303 = icmp eq i32 %call302, 0
  br i1 %cmp303, label %if.then304, label %if.else305

if.then304:                                       ; preds = %if.else301
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  br label %if.end306

if.else305:                                       ; preds = %if.else301
  br label %usage

if.end306:                                        ; preds = %if.then304
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.then300
  br label %if.end512

if.else308:                                       ; preds = %if.else294
  %129 = load i8*, i8** %p, align 8
  %call309 = call i32 @strcmp(i8* noundef %129, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0)) #8
  %cmp310 = icmp eq i32 %call309, 0
  br i1 %cmp310, label %if.then311, label %if.else327

if.then311:                                       ; preds = %if.else308
  %130 = load i8*, i8** %q, align 8
  %call312 = call i32 @strcmp(i8* noundef %130, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp313 = icmp eq i32 %call312, 0
  br i1 %cmp313, label %if.then314, label %if.else315

if.then314:                                       ; preds = %if.then311
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  br label %if.end326

if.else315:                                       ; preds = %if.then311
  %131 = load i8*, i8** %q, align 8
  %call316 = call i32 @strcmp(i8* noundef %131, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i64 0, i64 0)) #8
  %cmp317 = icmp eq i32 %call316, 0
  br i1 %cmp317, label %if.then318, label %if.else319

if.then318:                                       ; preds = %if.else315
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  br label %if.end325

if.else319:                                       ; preds = %if.else315
  %132 = load i8*, i8** %q, align 8
  %call320 = call i32 @strcmp(i8* noundef %132, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i64 0, i64 0)) #8
  %cmp321 = icmp eq i32 %call320, 0
  br i1 %cmp321, label %if.then322, label %if.else323

if.then322:                                       ; preds = %if.else319
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  br label %if.end324

if.else323:                                       ; preds = %if.else319
  br label %usage

if.end324:                                        ; preds = %if.then322
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.then318
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.then314
  br label %if.end511

if.else327:                                       ; preds = %if.else308
  %133 = load i8*, i8** %p, align 8
  %call328 = call i32 @strcmp(i8* noundef %133, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i64 0, i64 0)) #8
  %cmp329 = icmp eq i32 %call328, 0
  br i1 %cmp329, label %if.then330, label %if.else351

if.then330:                                       ; preds = %if.else327
  %134 = load i8*, i8** %q, align 8
  %call331 = call i32 @strcmp(i8* noundef %134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #8
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %if.then333, label %if.else334

if.then333:                                       ; preds = %if.then330
  store i8 1, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  br label %if.end350

if.else334:                                       ; preds = %if.then330
  %135 = load i8*, i8** %q, align 8
  %call335 = call i32 @strcmp(i8* noundef %135, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0)) #8
  %cmp336 = icmp eq i32 %call335, 0
  br i1 %cmp336, label %if.then337, label %if.else338

if.then337:                                       ; preds = %if.else334
  store i8 2, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  br label %if.end349

if.else338:                                       ; preds = %if.else334
  %136 = load i8*, i8** %q, align 8
  %call339 = call i32 @strcmp(i8* noundef %136, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0)) #8
  %cmp340 = icmp eq i32 %call339, 0
  br i1 %cmp340, label %if.then341, label %if.else342

if.then341:                                       ; preds = %if.else338
  store i8 3, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  br label %if.end348

if.else342:                                       ; preds = %if.else338
  %137 = load i8*, i8** %q, align 8
  %call343 = call i32 @strcmp(i8* noundef %137, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0)) #8
  %cmp344 = icmp eq i32 %call343, 0
  br i1 %cmp344, label %if.then345, label %if.else346

if.then345:                                       ; preds = %if.else342
  store i8 4, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  br label %if.end347

if.else346:                                       ; preds = %if.else342
  br label %usage

if.end347:                                        ; preds = %if.then345
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.then341
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then337
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %if.then333
  br label %if.end510

if.else351:                                       ; preds = %if.else327
  %138 = load i8*, i8** %p, align 8
  %call352 = call i32 @strcmp(i8* noundef %138, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0)) #8
  %cmp353 = icmp eq i32 %call352, 0
  br i1 %cmp353, label %if.then354, label %if.else360

if.then354:                                       ; preds = %if.else351
  %139 = load i8*, i8** %q, align 8
  %call355 = call i32 @atoi(i8* noundef %139) #8
  switch i32 %call355, label %sw.default358 [
    i32 0, label %sw.bb356
    i32 1, label %sw.bb357
  ]

sw.bb356:                                         ; preds = %if.then354
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 4
  br label %sw.epilog359

sw.bb357:                                         ; preds = %if.then354
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 4
  br label %sw.epilog359

sw.default358:                                    ; preds = %if.then354
  br label %usage

sw.epilog359:                                     ; preds = %sw.bb357, %sw.bb356
  br label %if.end509

if.else360:                                       ; preds = %if.else351
  %140 = load i8*, i8** %p, align 8
  %call361 = call i32 @strcmp(i8* noundef %140, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i64 0, i64 0)) #8
  %cmp362 = icmp eq i32 %call361, 0
  br i1 %cmp362, label %if.then363, label %if.else376

if.then363:                                       ; preds = %if.else360
  %141 = load i8*, i8** %q, align 8
  %call364 = call i8* @strchr(i8* noundef %141, i32 noundef 45) #8
  store i8* %call364, i8** %p, align 8
  %cmp365 = icmp eq i8* %call364, null
  br i1 %cmp365, label %if.then366, label %if.end367

if.then366:                                       ; preds = %if.then363
  br label %usage

if.end367:                                        ; preds = %if.then363
  %142 = load i8*, i8** %p, align 8
  %incdec.ptr368 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr368, i8** %p, align 8
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %q, align 8
  %call369 = call i32 @atoi(i8* noundef %143) #8
  store i32 %call369, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  %144 = load i8*, i8** %p, align 8
  %call370 = call i32 @atoi(i8* noundef %144) #8
  store i32 %call370, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  %cmp371 = icmp eq i32 %145, 0
  br i1 %cmp371, label %if.then374, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %if.end367
  %146 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  %cmp373 = icmp ult i32 %146, %147
  br i1 %cmp373, label %if.then374, label %if.end375

if.then374:                                       ; preds = %lor.lhs.false372, %if.end367
  br label %usage

if.end375:                                        ; preds = %lor.lhs.false372
  br label %if.end508

if.else376:                                       ; preds = %if.else360
  %148 = load i8*, i8** %p, align 8
  %call377 = call i32 @strcmp(i8* noundef %148, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #8
  %cmp378 = icmp eq i32 %call377, 0
  br i1 %cmp378, label %if.then379, label %if.else384

if.then379:                                       ; preds = %if.else376
  %149 = load i8*, i8** %q, align 8
  %call380 = call i32 @atoi(i8* noundef %149) #8
  store i32 %call380, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 4
  %cmp381 = icmp slt i32 %150, 0
  br i1 %cmp381, label %if.then382, label %if.end383

if.then382:                                       ; preds = %if.then379
  br label %usage

if.end383:                                        ; preds = %if.then379
  br label %if.end507

if.else384:                                       ; preds = %if.else376
  %151 = load i8*, i8** %p, align 8
  %call385 = call i32 @strcmp(i8* noundef %151, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i64 0, i64 0)) #8
  %cmp386 = icmp eq i32 %call385, 0
  br i1 %cmp386, label %if.then387, label %if.else394

if.then387:                                       ; preds = %if.else384
  %152 = load i8*, i8** %q, align 8
  %call388 = call i32 @atoi(i8* noundef %152) #8
  store i32 %call388, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  %cmp389 = icmp ne i32 %153, 0
  br i1 %cmp389, label %land.lhs.true390, label %if.end393

land.lhs.true390:                                 ; preds = %if.then387
  %154 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  %cmp391 = icmp ne i32 %154, 1
  br i1 %cmp391, label %if.then392, label %if.end393

if.then392:                                       ; preds = %land.lhs.true390
  br label %usage

if.end393:                                        ; preds = %land.lhs.true390, %if.then387
  br label %if.end506

if.else394:                                       ; preds = %if.else384
  %155 = load i8*, i8** %p, align 8
  %call395 = call i32 @strcmp(i8* noundef %155, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i64 0, i64 0)) #8
  %cmp396 = icmp eq i32 %call395, 0
  br i1 %cmp396, label %if.then397, label %if.else404

if.then397:                                       ; preds = %if.else394
  %156 = load i8*, i8** %q, align 8
  %call398 = call i32 @atoi(i8* noundef %156) #8
  store i32 %call398, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 8
  %cmp399 = icmp slt i32 %157, 0
  br i1 %cmp399, label %if.then402, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %if.then397
  %158 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 8
  %cmp401 = icmp sgt i32 %158, 1
  br i1 %cmp401, label %if.then402, label %if.end403

if.then402:                                       ; preds = %lor.lhs.false400, %if.then397
  br label %usage

if.end403:                                        ; preds = %lor.lhs.false400
  br label %if.end505

if.else404:                                       ; preds = %if.else394
  %159 = load i8*, i8** %p, align 8
  %call405 = call i32 @strcmp(i8* noundef %159, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0)) #8
  %cmp406 = icmp eq i32 %call405, 0
  br i1 %cmp406, label %if.then407, label %if.else412

if.then407:                                       ; preds = %if.else404
  %160 = load i8*, i8** %q, align 8
  %call408 = call i32 @atoi(i8* noundef %160) #8
  store i32 %call408, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 4
  %cmp409 = icmp slt i32 %161, 0
  br i1 %cmp409, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.then407
  br label %usage

if.end411:                                        ; preds = %if.then407
  br label %if.end504

if.else412:                                       ; preds = %if.else404
  %162 = load i8*, i8** %p, align 8
  %call413 = call i32 @strcmp(i8* noundef %162, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i64 0, i64 0)) #8
  %cmp414 = icmp eq i32 %call413, 0
  br i1 %cmp414, label %if.then415, label %if.else417

if.then415:                                       ; preds = %if.else412
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 8
  %163 = load i8*, i8** %q, align 8
  %call416 = call i32 @query_config(i8* noundef %163) #7
  store i32 %call416, i32* %query_config_ret, align 4
  br label %exit

if.else417:                                       ; preds = %if.else412
  %164 = load i8*, i8** %p, align 8
  %call418 = call i32 @strcmp(i8* noundef %164, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i64 0, i64 0)) #8
  %cmp419 = icmp eq i32 %call418, 0
  br i1 %cmp419, label %if.then420, label %if.else427

if.then420:                                       ; preds = %if.else417
  %165 = load i8*, i8** %q, align 8
  %call421 = call i32 @atoi(i8* noundef %165) #8
  store i32 %call421, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp422 = icmp slt i32 %166, 0
  br i1 %cmp422, label %if.then425, label %lor.lhs.false423

lor.lhs.false423:                                 ; preds = %if.then420
  %167 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp424 = icmp sgt i32 %167, 2
  br i1 %cmp424, label %if.then425, label %if.end426

if.then425:                                       ; preds = %lor.lhs.false423, %if.then420
  br label %usage

if.end426:                                        ; preds = %lor.lhs.false423
  br label %if.end502

if.else427:                                       ; preds = %if.else417
  %168 = load i8*, i8** %p, align 8
  %call428 = call i32 @strcmp(i8* noundef %168, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i64 0, i64 0)) #8
  %cmp429 = icmp eq i32 %call428, 0
  br i1 %cmp429, label %if.then430, label %if.else431

if.then430:                                       ; preds = %if.else427
  %169 = load i8*, i8** %q, align 8
  store i8* %169, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 8
  br label %if.end501

if.else431:                                       ; preds = %if.else427
  %170 = load i8*, i8** %p, align 8
  %call432 = call i32 @strcmp(i8* noundef %170, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0)) #8
  %cmp433 = icmp eq i32 %call432, 0
  br i1 %cmp433, label %if.then434, label %if.else441

if.then434:                                       ; preds = %if.else431
  %171 = load i8*, i8** %q, align 8
  %call435 = call i32 @atoi(i8* noundef %171) #8
  store i32 %call435, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %cmp436 = icmp slt i32 %172, 0
  br i1 %cmp436, label %if.then439, label %lor.lhs.false437

lor.lhs.false437:                                 ; preds = %if.then434
  %173 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %cmp438 = icmp sgt i32 %173, 1
  br i1 %cmp438, label %if.then439, label %if.end440

if.then439:                                       ; preds = %lor.lhs.false437, %if.then434
  br label %usage

if.end440:                                        ; preds = %lor.lhs.false437
  br label %if.end500

if.else441:                                       ; preds = %if.else431
  %174 = load i8*, i8** %p, align 8
  %call442 = call i32 @strcmp(i8* noundef %174, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i64 0, i64 0)) #8
  %cmp443 = icmp eq i32 %call442, 0
  br i1 %cmp443, label %if.then444, label %if.else445

if.then444:                                       ; preds = %if.else441
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 8
  br label %if.end499

if.else445:                                       ; preds = %if.else441
  %175 = load i8*, i8** %p, align 8
  %call446 = call i32 @strcmp(i8* noundef %175, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0)) #8
  %cmp447 = icmp eq i32 %call446, 0
  br i1 %cmp447, label %if.then448, label %if.else455

if.then448:                                       ; preds = %if.else445
  %176 = load i8*, i8** %q, align 8
  %call449 = call i32 @atoi(i8* noundef %176) #8
  store i32 %call449, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  %cmp450 = icmp slt i32 %177, 0
  br i1 %cmp450, label %if.then453, label %lor.lhs.false451

lor.lhs.false451:                                 ; preds = %if.then448
  %178 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  %cmp452 = icmp sgt i32 %178, 1
  br i1 %cmp452, label %if.then453, label %if.end454

if.then453:                                       ; preds = %lor.lhs.false451, %if.then448
  br label %usage

if.end454:                                        ; preds = %lor.lhs.false451
  br label %if.end498

if.else455:                                       ; preds = %if.else445
  %179 = load i8*, i8** %p, align 8
  %call456 = call i32 @strcmp(i8* noundef %179, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i64 0, i64 0)) #8
  %cmp457 = icmp eq i32 %call456, 0
  br i1 %cmp457, label %if.then458, label %if.else459

if.then458:                                       ; preds = %if.else455
  %180 = load i8*, i8** %q, align 8
  store i8* %180, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  br label %if.end497

if.else459:                                       ; preds = %if.else455
  %181 = load i8*, i8** %p, align 8
  %call460 = call i32 @strcmp(i8* noundef %181, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i64 0, i64 0)) #8
  %cmp461 = icmp eq i32 %call460, 0
  br i1 %cmp461, label %if.then462, label %if.else469

if.then462:                                       ; preds = %if.else459
  %182 = load i8*, i8** %q, align 8
  %call463 = call i32 @atoi(i8* noundef %182) #8
  store i32 %call463, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 4
  %cmp464 = icmp slt i32 %183, 0
  br i1 %cmp464, label %if.then467, label %lor.lhs.false465

lor.lhs.false465:                                 ; preds = %if.then462
  %184 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 4
  %cmp466 = icmp sgt i32 %184, 1
  br i1 %cmp466, label %if.then467, label %if.end468

if.then467:                                       ; preds = %lor.lhs.false465, %if.then462
  br label %usage

if.end468:                                        ; preds = %lor.lhs.false465
  br label %if.end496

if.else469:                                       ; preds = %if.else459
  %185 = load i8*, i8** %p, align 8
  %call470 = call i32 @strcmp(i8* noundef %185, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0)) #8
  %cmp471 = icmp eq i32 %call470, 0
  br i1 %cmp471, label %if.then472, label %if.else474

if.then472:                                       ; preds = %if.else469
  %186 = load i8*, i8** %q, align 8
  %call473 = call i32 @atoi(i8* noundef %186) #8
  store i32 %call473, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 4
  br label %if.end495

if.else474:                                       ; preds = %if.else469
  %187 = load i8*, i8** %p, align 8
  %call475 = call i32 @strcmp(i8* noundef %187, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i64 0, i64 0)) #8
  %cmp476 = icmp eq i32 %call475, 0
  br i1 %cmp476, label %if.then477, label %if.else479

if.then477:                                       ; preds = %if.else474
  %188 = load i8*, i8** %q, align 8
  %call478 = call i32 @atoi(i8* noundef %188) #8
  store i32 %call478, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 64), align 8
  br label %if.end494

if.else479:                                       ; preds = %if.else474
  %189 = load i8*, i8** %p, align 8
  %call480 = call i32 @strcmp(i8* noundef %189, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #8
  %cmp481 = icmp eq i32 %call480, 0
  br i1 %cmp481, label %if.then482, label %if.else483

if.then482:                                       ; preds = %if.else479
  %190 = load i8*, i8** %q, align 8
  store i8* %190, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 65), align 8
  br label %if.end493

if.else483:                                       ; preds = %if.else479
  %191 = load i8*, i8** %p, align 8
  %call484 = call i32 @strcmp(i8* noundef %191, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0)) #8
  %cmp485 = icmp eq i32 %call484, 0
  br i1 %cmp485, label %if.then486, label %if.else491

if.then486:                                       ; preds = %if.else483
  %192 = load i8*, i8** %q, align 8
  %call487 = call i32 @key_opaque_alg_parse(i8* noundef %192, i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 66), i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67)) #7
  %cmp488 = icmp ne i32 %call487, 0
  br i1 %cmp488, label %if.then489, label %if.end490

if.then489:                                       ; preds = %if.then486
  br label %usage

if.end490:                                        ; preds = %if.then486
  br label %if.end492

if.else491:                                       ; preds = %if.else483
  br label %usage

if.end492:                                        ; preds = %if.end490
  br label %if.end493

if.end493:                                        ; preds = %if.end492, %if.then482
  br label %if.end494

if.end494:                                        ; preds = %if.end493, %if.then477
  br label %if.end495

if.end495:                                        ; preds = %if.end494, %if.then472
  br label %if.end496

if.end496:                                        ; preds = %if.end495, %if.end468
  br label %if.end497

if.end497:                                        ; preds = %if.end496, %if.then458
  br label %if.end498

if.end498:                                        ; preds = %if.end497, %if.end454
  br label %if.end499

if.end499:                                        ; preds = %if.end498, %if.then444
  br label %if.end500

if.end500:                                        ; preds = %if.end499, %if.end440
  br label %if.end501

if.end501:                                        ; preds = %if.end500, %if.then430
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.end426
  br label %if.end503

if.end503:                                        ; preds = %if.end502
  br label %if.end504

if.end504:                                        ; preds = %if.end503, %if.end411
  br label %if.end505

if.end505:                                        ; preds = %if.end504, %if.end403
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %if.end393
  br label %if.end507

if.end507:                                        ; preds = %if.end506, %if.end383
  br label %if.end508

if.end508:                                        ; preds = %if.end507, %if.end375
  br label %if.end509

if.end509:                                        ; preds = %if.end508, %sw.epilog359
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.end350
  br label %if.end511

if.end511:                                        ; preds = %if.end510, %if.end326
  br label %if.end512

if.end512:                                        ; preds = %if.end511, %if.end307
  br label %if.end513

if.end513:                                        ; preds = %if.end512, %sw.epilog293
  br label %if.end514

if.end514:                                        ; preds = %if.end513, %if.end284
  br label %if.end515

if.end515:                                        ; preds = %if.end514, %if.end272
  br label %if.end516

if.end516:                                        ; preds = %if.end515, %sw.epilog260
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %if.then251
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %sw.epilog247
  br label %if.end519

if.end519:                                        ; preds = %if.end518, %if.then238
  br label %if.end520

if.end520:                                        ; preds = %if.end519, %if.end234
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.end224
  br label %if.end522

if.end522:                                        ; preds = %if.end521, %if.end214
  br label %if.end523

if.end523:                                        ; preds = %if.end522, %if.end206
  br label %if.end524

if.end524:                                        ; preds = %if.end523, %if.end198
  br label %if.end525

if.end525:                                        ; preds = %if.end524, %if.end188
  br label %if.end526

if.end526:                                        ; preds = %if.end525, %if.end180
  br label %if.end527

if.end527:                                        ; preds = %if.end526, %sw.epilog
  br label %if.end528

if.end528:                                        ; preds = %if.end527, %if.then161
  br label %if.end529

if.end529:                                        ; preds = %if.end528, %if.end157
  br label %if.end530

if.end530:                                        ; preds = %if.end529, %if.then148
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %if.then144
  br label %if.end532

if.end532:                                        ; preds = %if.end531, %if.then140
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %if.then136
  br label %if.end534

if.end534:                                        ; preds = %if.end533, %if.then132
  br label %if.end535

if.end535:                                        ; preds = %if.end534, %if.then128
  br label %if.end536

if.end536:                                        ; preds = %if.end535, %if.then124
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %if.then120
  br label %if.end538

if.end538:                                        ; preds = %if.end537, %if.then116
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %if.end112
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %if.then102
  br label %if.end541

if.end541:                                        ; preds = %if.end540, %if.end98
  br label %if.end542

if.end542:                                        ; preds = %if.end541, %if.then89
  br label %if.end543

if.end543:                                        ; preds = %if.end542, %if.end85
  br label %if.end544

if.end544:                                        ; preds = %if.end543, %if.end75
  br label %if.end545

if.end545:                                        ; preds = %if.end544, %if.end65
  br label %if.end546

if.end546:                                        ; preds = %if.end545, %if.end56
  br label %if.end547

if.end547:                                        ; preds = %if.end546, %if.end47
  br label %if.end548

if.end548:                                        ; preds = %if.end547, %if.then34
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %if.then30
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.then27
  br label %for.inc

for.inc:                                          ; preds = %if.end550
  %193 = load i32, i32* %i, align 4
  %inc = add nsw i32 %193, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %194 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  %cmp551 = icmp ne i32 %194, 0
  br i1 %cmp551, label %land.lhs.true552, label %if.end556

land.lhs.true552:                                 ; preds = %for.end
  %195 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %cmp553 = icmp ne i32 %195, 0
  br i1 %cmp553, label %if.then554, label %if.end556

if.then554:                                       ; preds = %land.lhs.true552
  %call555 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.111, i64 0, i64 0)) #7
  br label %usage

if.end556:                                        ; preds = %land.lhs.true552, %for.end
  %196 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp557 = icmp eq i32 %196, 1
  br i1 %cmp557, label %land.lhs.true558, label %if.end562

land.lhs.true558:                                 ; preds = %if.end556
  %197 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp559 = icmp ne i32 %197, 1
  br i1 %cmp559, label %if.then560, label %if.end562

if.then560:                                       ; preds = %land.lhs.true558
  %call561 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.112, i64 0, i64 0)) #7
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  br label %if.end562

if.end562:                                        ; preds = %if.then560, %land.lhs.true558, %if.end556
  %198 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  call void @mbedtls_debug_set_threshold(i32 noundef %198) #7
  %199 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %call563 = call i64 @strlen(i8* noundef %199) #8
  %tobool564 = icmp ne i64 %call563, 0
  br i1 %tobool564, label %if.then565, label %if.end572

if.then565:                                       ; preds = %if.end562
  %arraydecay566 = getelementptr inbounds [32 x i8], [32 x i8]* %psk, i64 0, i64 0
  %200 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %call567 = call i32 @mbedtls_test_unhexify(i8* noundef %arraydecay566, i64 noundef 32, i8* noundef %200, i64* noundef %psk_len) #7
  %cmp568 = icmp ne i32 %call567, 0
  br i1 %cmp568, label %if.then569, label %if.end571

if.then569:                                       ; preds = %if.then565
  %call570 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i64 0, i64 0)) #7
  br label %exit

if.end571:                                        ; preds = %if.then565
  br label %if.end572

if.end572:                                        ; preds = %if.end571, %if.end562
  %201 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  %cmp573 = icmp sgt i32 %201, 0
  br i1 %cmp573, label %if.then574, label %if.end618

if.then574:                                       ; preds = %if.end572
  %202 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  %call575 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %202) #7
  store %struct.mbedtls_ssl_ciphersuite_t* %call575, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %203 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %cmp576 = icmp ne i32 %203, -1
  br i1 %cmp576, label %land.lhs.true577, label %if.end582

land.lhs.true577:                                 ; preds = %if.then574
  %204 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %204, i32 0, i32 6
  %205 = load i16, i16* %min_tls_version, align 4
  %conv = zext i16 %205 to i32
  %206 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %cmp578 = icmp sgt i32 %conv, %206
  br i1 %cmp578, label %if.then580, label %if.end582

if.then580:                                       ; preds = %land.lhs.true577
  %call581 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.114, i64 0, i64 0)) #7
  store i32 2, i32* %ret, align 4
  br label %usage

if.end582:                                        ; preds = %land.lhs.true577, %if.then574
  %207 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %cmp583 = icmp ne i32 %207, -1
  br i1 %cmp583, label %land.lhs.true585, label %if.end591

land.lhs.true585:                                 ; preds = %if.end582
  %208 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %208, i32 0, i32 7
  %209 = load i16, i16* %max_tls_version, align 2
  %conv586 = zext i16 %209 to i32
  %210 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %cmp587 = icmp slt i32 %conv586, %210
  br i1 %cmp587, label %if.then589, label %if.end591

if.then589:                                       ; preds = %land.lhs.true585
  %call590 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.114, i64 0, i64 0)) #7
  store i32 2, i32* %ret, align 4
  br label %usage

if.end591:                                        ; preds = %land.lhs.true585, %if.end582
  %211 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %cmp592 = icmp eq i32 %211, -1
  br i1 %cmp592, label %if.then599, label %lor.lhs.false594

lor.lhs.false594:                                 ; preds = %if.end591
  %212 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %213 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version595 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %213, i32 0, i32 7
  %214 = load i16, i16* %max_tls_version595, align 2
  %conv596 = zext i16 %214 to i32
  %cmp597 = icmp sgt i32 %212, %conv596
  br i1 %cmp597, label %if.then599, label %if.end602

if.then599:                                       ; preds = %lor.lhs.false594, %if.end591
  %215 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version600 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %215, i32 0, i32 7
  %216 = load i16, i16* %max_tls_version600, align 2
  %conv601 = zext i16 %216 to i32
  store i32 %conv601, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %if.end602

if.end602:                                        ; preds = %if.then599, %lor.lhs.false594
  %217 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %218 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version603 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %218, i32 0, i32 6
  %219 = load i16, i16* %min_tls_version603, align 4
  %conv604 = zext i16 %219 to i32
  %cmp605 = icmp slt i32 %217, %conv604
  br i1 %cmp605, label %if.then607, label %if.end617

if.then607:                                       ; preds = %if.end602
  %220 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version608 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %220, i32 0, i32 6
  %221 = load i16, i16* %min_tls_version608, align 4
  %conv609 = zext i16 %221 to i32
  store i32 %conv609, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp610 = icmp eq i32 %222, 1
  br i1 %cmp610, label %land.lhs.true612, label %if.end616

land.lhs.true612:                                 ; preds = %if.then607
  %223 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %cmp613 = icmp slt i32 %223, 771
  br i1 %cmp613, label %if.then615, label %if.end616

if.then615:                                       ; preds = %land.lhs.true612
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  br label %if.end616

if.end616:                                        ; preds = %if.then615, %land.lhs.true612, %if.then607
  br label %if.end617

if.end617:                                        ; preds = %if.end616, %if.end602
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %if.end572
  %224 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  %cmp619 = icmp ne i8* %224, null
  br i1 %cmp619, label %if.then621, label %if.end693

if.then621:                                       ; preds = %if.end618
  %225 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  store i8* %225, i8** %p, align 8
  store i32 0, i32* %i, align 4
  %226 = load i8*, i8** %p, align 8
  %call622 = call i32 @strcmp(i8* noundef %226, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp623 = icmp eq i32 %call622, 0
  br i1 %cmp623, label %if.then625, label %if.else627

if.then625:                                       ; preds = %if.then621
  %arrayidx626 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 0
  store i16 0, i16* %arrayidx626, align 16
  br label %if.end692

if.else627:                                       ; preds = %if.then621
  %227 = load i8*, i8** %p, align 8
  %call628 = call i32 @strcmp(i8* noundef %227, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0)) #8
  %cmp629 = icmp ne i32 %call628, 0
  br i1 %cmp629, label %if.then631, label %if.end691

if.then631:                                       ; preds = %if.else627
  br label %while.cond632

while.cond632:                                    ; preds = %if.end677, %if.then631
  %228 = load i32, i32* %i, align 4
  %cmp633 = icmp slt i32 %228, 19
  br i1 %cmp633, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond632
  %229 = load i8*, i8** %p, align 8
  %230 = load i8, i8* %229, align 1
  %conv635 = sext i8 %230 to i32
  %cmp636 = icmp ne i32 %conv635, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond632
  %231 = phi i1 [ false, %while.cond632 ], [ %cmp636, %land.rhs ]
  br i1 %231, label %while.body638, label %while.end678

while.body638:                                    ; preds = %land.end
  %232 = load i8*, i8** %p, align 8
  store i8* %232, i8** %q, align 8
  br label %while.cond639

while.cond639:                                    ; preds = %while.body648, %while.body638
  %233 = load i8*, i8** %p, align 8
  %234 = load i8, i8* %233, align 1
  %conv640 = sext i8 %234 to i32
  %cmp641 = icmp ne i32 %conv640, 44
  br i1 %cmp641, label %land.rhs643, label %land.end647

land.rhs643:                                      ; preds = %while.cond639
  %235 = load i8*, i8** %p, align 8
  %236 = load i8, i8* %235, align 1
  %conv644 = sext i8 %236 to i32
  %cmp645 = icmp ne i32 %conv644, 0
  br label %land.end647

land.end647:                                      ; preds = %land.rhs643, %while.cond639
  %237 = phi i1 [ false, %while.cond639 ], [ %cmp645, %land.rhs643 ]
  br i1 %237, label %while.body648, label %while.end650

while.body648:                                    ; preds = %land.end647
  %238 = load i8*, i8** %p, align 8
  %incdec.ptr649 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr649, i8** %p, align 8
  br label %while.cond639, !llvm.loop !9

while.end650:                                     ; preds = %land.end647
  %239 = load i8*, i8** %p, align 8
  %240 = load i8, i8* %239, align 1
  %conv651 = sext i8 %240 to i32
  %cmp652 = icmp eq i32 %conv651, 44
  br i1 %cmp652, label %if.then654, label %if.end656

if.then654:                                       ; preds = %while.end650
  %241 = load i8*, i8** %p, align 8
  %incdec.ptr655 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr655, i8** %p, align 8
  store i8 0, i8* %241, align 1
  br label %if.end656

if.end656:                                        ; preds = %if.then654, %while.end650
  %242 = load i8*, i8** %q, align 8
  %call657 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef %242) #7
  store %struct.mbedtls_ecp_curve_info* %call657, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %cmp658 = icmp ne %struct.mbedtls_ecp_curve_info* %call657, null
  br i1 %cmp658, label %if.then660, label %if.else664

if.then660:                                       ; preds = %if.end656
  %243 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %tls_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %243, i32 0, i32 1
  %244 = load i16, i16* %tls_id, align 4
  %245 = load i32, i32* %i, align 4
  %inc661 = add nsw i32 %245, 1
  store i32 %inc661, i32* %i, align 4
  %idxprom662 = sext i32 %245 to i64
  %arrayidx663 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 %idxprom662
  store i16 %244, i16* %arrayidx663, align 2
  br label %if.end677

if.else664:                                       ; preds = %if.end656
  %246 = load i8*, i8** %q, align 8
  %call665 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i64 0, i64 0), i8* noundef %246) #7
  %call666 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i64 0, i64 0)) #7
  %call667 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #7
  store %struct.mbedtls_ecp_curve_info* %call667, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  br label %for.cond668

for.cond668:                                      ; preds = %for.inc673, %if.else664
  %247 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %247, i32 0, i32 0
  %248 = load i32, i32* %grp_id, align 8
  %cmp669 = icmp ne i32 %248, 0
  br i1 %cmp669, label %for.body671, label %for.end675

for.body671:                                      ; preds = %for.cond668
  %249 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %249, i32 0, i32 3
  %250 = load i8*, i8** %name, align 8
  %call672 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i8* noundef %250) #7
  br label %for.inc673

for.inc673:                                       ; preds = %for.body671
  %251 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %incdec.ptr674 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %251, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr674, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  br label %for.cond668, !llvm.loop !10

for.end675:                                       ; preds = %for.cond668
  %call676 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %exit

if.end677:                                        ; preds = %if.then660
  br label %while.cond632, !llvm.loop !11

while.end678:                                     ; preds = %land.end
  %252 = load i32, i32* %i, align 4
  %call679 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i64 0, i64 0), i32 noundef %252) #7
  %253 = load i32, i32* %i, align 4
  %cmp680 = icmp eq i32 %253, 19
  br i1 %cmp680, label %land.lhs.true682, label %if.end688

land.lhs.true682:                                 ; preds = %while.end678
  %254 = load i8*, i8** %p, align 8
  %255 = load i8, i8* %254, align 1
  %conv683 = sext i8 %255 to i32
  %cmp684 = icmp ne i32 %conv683, 0
  br i1 %cmp684, label %if.then686, label %if.end688

if.then686:                                       ; preds = %land.lhs.true682
  %call687 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i64 0, i64 0), i32 noundef 19) #7
  br label %exit

if.end688:                                        ; preds = %land.lhs.true682, %while.end678
  %256 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %256 to i64
  %arrayidx690 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 %idxprom689
  store i16 0, i16* %arrayidx690, align 2
  br label %if.end691

if.end691:                                        ; preds = %if.end688, %if.else627
  br label %if.end692

if.end692:                                        ; preds = %if.end691, %if.then625
  br label %if.end693

if.end693:                                        ; preds = %if.end692, %if.end618
  %257 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %cmp694 = icmp ne i8* %257, null
  br i1 %cmp694, label %if.then696, label %if.end728

if.then696:                                       ; preds = %if.end693
  %258 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  store i8* %258, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond697

while.cond697:                                    ; preds = %if.end726, %if.then696
  %259 = load i32, i32* %i, align 4
  %cmp698 = icmp slt i32 %259, 9
  br i1 %cmp698, label %land.rhs700, label %land.end704

land.rhs700:                                      ; preds = %while.cond697
  %260 = load i8*, i8** %p, align 8
  %261 = load i8, i8* %260, align 1
  %conv701 = sext i8 %261 to i32
  %cmp702 = icmp ne i32 %conv701, 0
  br label %land.end704

land.end704:                                      ; preds = %land.rhs700, %while.cond697
  %262 = phi i1 [ false, %while.cond697 ], [ %cmp702, %land.rhs700 ]
  br i1 %262, label %while.body705, label %while.end727

while.body705:                                    ; preds = %land.end704
  %263 = load i8*, i8** %p, align 8
  %264 = load i32, i32* %i, align 4
  %inc706 = add nsw i32 %264, 1
  store i32 %inc706, i32* %i, align 4
  %idxprom707 = sext i32 %264 to i64
  %arrayidx708 = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 %idxprom707
  store i8* %263, i8** %arrayidx708, align 8
  br label %while.cond709

while.cond709:                                    ; preds = %while.body718, %while.body705
  %265 = load i8*, i8** %p, align 8
  %266 = load i8, i8* %265, align 1
  %conv710 = sext i8 %266 to i32
  %cmp711 = icmp ne i32 %conv710, 44
  br i1 %cmp711, label %land.rhs713, label %land.end717

land.rhs713:                                      ; preds = %while.cond709
  %267 = load i8*, i8** %p, align 8
  %268 = load i8, i8* %267, align 1
  %conv714 = sext i8 %268 to i32
  %cmp715 = icmp ne i32 %conv714, 0
  br label %land.end717

land.end717:                                      ; preds = %land.rhs713, %while.cond709
  %269 = phi i1 [ false, %while.cond709 ], [ %cmp715, %land.rhs713 ]
  br i1 %269, label %while.body718, label %while.end720

while.body718:                                    ; preds = %land.end717
  %270 = load i8*, i8** %p, align 8
  %incdec.ptr719 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr719, i8** %p, align 8
  br label %while.cond709, !llvm.loop !12

while.end720:                                     ; preds = %land.end717
  %271 = load i8*, i8** %p, align 8
  %272 = load i8, i8* %271, align 1
  %conv721 = sext i8 %272 to i32
  %cmp722 = icmp eq i32 %conv721, 44
  br i1 %cmp722, label %if.then724, label %if.end726

if.then724:                                       ; preds = %while.end720
  %273 = load i8*, i8** %p, align 8
  %incdec.ptr725 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr725, i8** %p, align 8
  store i8 0, i8* %273, align 1
  br label %if.end726

if.end726:                                        ; preds = %if.then724, %while.end720
  br label %while.cond697, !llvm.loop !13

while.end727:                                     ; preds = %land.end704
  br label %if.end728

if.end728:                                        ; preds = %while.end727, %if.end693
  %call729 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.121, i64 0, i64 0)) #7
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call730 = call i32 @fflush(%struct._IO_FILE* noundef %274) #7
  %275 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 8
  %276 = load i8*, i8** %pers, align 8
  %call731 = call i32 @rng_seed(%struct.rng_context_t* noundef %rng, i32 noundef %275, i8* noundef %276) #7
  store i32 %call731, i32* %ret, align 4
  %277 = load i32, i32* %ret, align 4
  %cmp732 = icmp ne i32 %277, 0
  br i1 %cmp732, label %if.then734, label %if.end735

if.then734:                                       ; preds = %if.end728
  br label %exit

if.end735:                                        ; preds = %if.end728
  %call736 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  %call737 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.123, i64 0, i64 0)) #7
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call738 = call i32 @fflush(%struct._IO_FILE* noundef %278) #7
  %279 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call739 = call i32 @strcmp(i8* noundef %279, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp740 = icmp eq i32 %call739, 0
  br i1 %cmp740, label %if.then746, label %lor.lhs.false742

lor.lhs.false742:                                 ; preds = %if.end735
  %280 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call743 = call i32 @strcmp(i8* noundef %280, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp744 = icmp eq i32 %call743, 0
  br i1 %cmp744, label %if.then746, label %if.else747

if.then746:                                       ; preds = %lor.lhs.false742, %if.end735
  store i32 0, i32* %ret, align 4
  br label %if.end800

if.else747:                                       ; preds = %lor.lhs.false742
  %281 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call748 = call i64 @strlen(i8* noundef %281) #8
  %tobool749 = icmp ne i64 %call748, 0
  br i1 %tobool749, label %if.then750, label %if.else752

if.then750:                                       ; preds = %if.else747
  %282 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call751 = call i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %282) #7
  store i32 %call751, i32* %ret, align 4
  br label %if.end799

if.else752:                                       ; preds = %if.else747
  %283 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call753 = call i64 @strlen(i8* noundef %283) #8
  %tobool754 = icmp ne i64 %call753, 0
  br i1 %tobool754, label %if.then755, label %if.else757

if.then755:                                       ; preds = %if.else752
  %284 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call756 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %284) #7
  store i32 %call756, i32* %ret, align 4
  br label %if.end798

if.else757:                                       ; preds = %if.else752
  store i32 0, i32* %i, align 4
  br label %for.cond758

for.cond758:                                      ; preds = %for.inc773, %if.else757
  %285 = load i32, i32* %i, align 4
  %idxprom759 = sext i32 %285 to i64
  %arrayidx760 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas, i64 0, i64 %idxprom759
  %286 = load i8*, i8** %arrayidx760, align 8
  %cmp761 = icmp ne i8* %286, null
  br i1 %cmp761, label %for.body763, label %for.end775

for.body763:                                      ; preds = %for.cond758
  %287 = load i32, i32* %i, align 4
  %idxprom764 = sext i32 %287 to i64
  %arrayidx765 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas, i64 0, i64 %idxprom764
  %288 = load i8*, i8** %arrayidx765, align 8
  %289 = load i32, i32* %i, align 4
  %idxprom766 = sext i32 %289 to i64
  %arrayidx767 = getelementptr inbounds [0 x i64], [0 x i64]* @mbedtls_test_cas_len, i64 0, i64 %idxprom766
  %290 = load i64, i64* %arrayidx767, align 8
  %call768 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %288, i64 noundef %290) #7
  store i32 %call768, i32* %ret, align 4
  %291 = load i32, i32* %ret, align 4
  %cmp769 = icmp ne i32 %291, 0
  br i1 %cmp769, label %if.then771, label %if.end772

if.then771:                                       ; preds = %for.body763
  br label %for.end775

if.end772:                                        ; preds = %for.body763
  br label %for.inc773

for.inc773:                                       ; preds = %if.end772
  %292 = load i32, i32* %i, align 4
  %inc774 = add nsw i32 %292, 1
  store i32 %inc774, i32* %i, align 4
  br label %for.cond758, !llvm.loop !14

for.end775:                                       ; preds = %if.then771, %for.cond758
  %293 = load i32, i32* %ret, align 4
  %cmp776 = icmp eq i32 %293, 0
  br i1 %cmp776, label %if.then778, label %if.end797

if.then778:                                       ; preds = %for.end775
  store i32 0, i32* %i, align 4
  br label %for.cond779

for.cond779:                                      ; preds = %for.inc794, %if.then778
  %294 = load i32, i32* %i, align 4
  %idxprom780 = sext i32 %294 to i64
  %arrayidx781 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas_der, i64 0, i64 %idxprom780
  %295 = load i8*, i8** %arrayidx781, align 8
  %cmp782 = icmp ne i8* %295, null
  br i1 %cmp782, label %for.body784, label %for.end796

for.body784:                                      ; preds = %for.cond779
  %296 = load i32, i32* %i, align 4
  %idxprom785 = sext i32 %296 to i64
  %arrayidx786 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas_der, i64 0, i64 %idxprom785
  %297 = load i8*, i8** %arrayidx786, align 8
  %298 = load i32, i32* %i, align 4
  %idxprom787 = sext i32 %298 to i64
  %arrayidx788 = getelementptr inbounds [0 x i64], [0 x i64]* @mbedtls_test_cas_der_len, i64 0, i64 %idxprom787
  %299 = load i64, i64* %arrayidx788, align 8
  %call789 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %297, i64 noundef %299) #7
  store i32 %call789, i32* %ret, align 4
  %300 = load i32, i32* %ret, align 4
  %cmp790 = icmp ne i32 %300, 0
  br i1 %cmp790, label %if.then792, label %if.end793

if.then792:                                       ; preds = %for.body784
  br label %for.end796

if.end793:                                        ; preds = %for.body784
  br label %for.inc794

for.inc794:                                       ; preds = %if.end793
  %301 = load i32, i32* %i, align 4
  %inc795 = add nsw i32 %301, 1
  store i32 %inc795, i32* %i, align 4
  br label %for.cond779, !llvm.loop !15

for.end796:                                       ; preds = %if.then792, %for.cond779
  br label %if.end797

if.end797:                                        ; preds = %for.end796, %for.end775
  br label %if.end798

if.end798:                                        ; preds = %if.end797, %if.then755
  br label %if.end799

if.end799:                                        ; preds = %if.end798, %if.then750
  br label %if.end800

if.end800:                                        ; preds = %if.end799, %if.then746
  %302 = load i32, i32* %ret, align 4
  %cmp801 = icmp slt i32 %302, 0
  br i1 %cmp801, label %if.then803, label %if.end805

if.then803:                                       ; preds = %if.end800
  %303 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %303
  %call804 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.124, i64 0, i64 0), i32 noundef %sub) #7
  br label %exit

if.end805:                                        ; preds = %if.end800
  %304 = load i32, i32* %ret, align 4
  %call806 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i64 0, i64 0), i32 noundef %304) #7
  %call807 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i64 0, i64 0)) #7
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call808 = call i32 @fflush(%struct._IO_FILE* noundef %305) #7
  %306 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %call809 = call i32 @strcmp(i8* noundef %306, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp810 = icmp eq i32 %call809, 0
  br i1 %cmp810, label %if.then812, label %if.else813

if.then812:                                       ; preds = %if.end805
  store i32 0, i32* %ret, align 4
  br label %if.end821

if.else813:                                       ; preds = %if.end805
  %307 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %call814 = call i64 @strlen(i8* noundef %307) #8
  %tobool815 = icmp ne i64 %call814, 0
  br i1 %tobool815, label %if.then816, label %if.else818

if.then816:                                       ; preds = %if.else813
  %308 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %call817 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %clicert, i8* noundef %308) #7
  store i32 %call817, i32* %ret, align 4
  br label %if.end820

if.else818:                                       ; preds = %if.else813
  %309 = load i8*, i8** @mbedtls_test_cli_crt, align 8
  %310 = load i64, i64* @mbedtls_test_cli_crt_len, align 8
  %call819 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %clicert, i8* noundef %309, i64 noundef %310) #7
  store i32 %call819, i32* %ret, align 4
  br label %if.end820

if.end820:                                        ; preds = %if.else818, %if.then816
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.then812
  %311 = load i32, i32* %ret, align 4
  %cmp822 = icmp ne i32 %311, 0
  br i1 %cmp822, label %if.then824, label %if.end827

if.then824:                                       ; preds = %if.end821
  %312 = load i32, i32* %ret, align 4
  %sub825 = sub nsw i32 0, %312
  %call826 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.124, i64 0, i64 0), i32 noundef %sub825) #7
  br label %exit

if.end827:                                        ; preds = %if.end821
  %313 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %call828 = call i32 @strcmp(i8* noundef %313, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp829 = icmp eq i32 %call828, 0
  br i1 %cmp829, label %if.then831, label %if.else832

if.then831:                                       ; preds = %if.end827
  store i32 0, i32* %ret, align 4
  br label %if.end840

if.else832:                                       ; preds = %if.end827
  %314 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %call833 = call i64 @strlen(i8* noundef %314) #8
  %tobool834 = icmp ne i64 %call833, 0
  br i1 %tobool834, label %if.then835, label %if.else837

if.then835:                                       ; preds = %if.else832
  %315 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %316 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  %317 = bitcast %struct.rng_context_t* %rng to i8*
  %call836 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %315, i8* noundef %316, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef %317) #7
  store i32 %call836, i32* %ret, align 4
  br label %if.end839

if.else837:                                       ; preds = %if.else832
  %318 = load i8*, i8** @mbedtls_test_cli_key, align 8
  %319 = load i64, i64* @mbedtls_test_cli_key_len, align 8
  %320 = bitcast %struct.rng_context_t* %rng to i8*
  %call838 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %318, i64 noundef %319, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef %320) #7
  store i32 %call838, i32* %ret, align 4
  br label %if.end839

if.end839:                                        ; preds = %if.else837, %if.then835
  br label %if.end840

if.end840:                                        ; preds = %if.end839, %if.then831
  %321 = load i32, i32* %ret, align 4
  %cmp841 = icmp ne i32 %321, 0
  br i1 %cmp841, label %if.then843, label %if.end846

if.then843:                                       ; preds = %if.end840
  %322 = load i32, i32* %ret, align 4
  %sub844 = sub nsw i32 0, %322
  %call845 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.127, i64 0, i64 0), i32 noundef %sub844) #7
  br label %exit

if.end846:                                        ; preds = %if.end840
  %323 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %call847 = call i64 @strlen(i8* noundef %323) #8
  %tobool848 = icmp ne i64 %call847, 0
  br i1 %tobool848, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end846
  %call849 = call i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %pkey) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end846
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond850 = phi i8* [ %call849, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %cond.false ]
  %call851 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.128, i64 0, i64 0), i8* noundef %cond850) #7
  %call852 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.129, i64 0, i64 0)) #7
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call853 = call i32 @fflush(%struct._IO_FILE* noundef %324) #7
  %325 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %call854 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef %325, i32 noundef 0) #7
  store i32 %call854, i32* %ret, align 4
  %cmp855 = icmp ne i32 %call854, 0
  br i1 %cmp855, label %if.then857, label %if.end860

if.then857:                                       ; preds = %cond.end
  %326 = load i32, i32* %ret, align 4
  %sub858 = sub nsw i32 0, %326
  %call859 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.130, i64 0, i64 0), i32 noundef %sub858) #7
  br label %exit

if.end860:                                        ; preds = %cond.end
  %327 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  %cmp861 = icmp sgt i32 %327, 0
  br i1 %cmp861, label %if.then863, label %if.end864

if.then863:                                       ; preds = %if.end860
  %allowed_mds = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %crt_profile_for_test, i32 0, i32 0
  %328 = load i32, i32* %allowed_mds, align 4
  %or = or i32 %328, 2
  store i32 %or, i32* %allowed_mds, align 4
  call void @mbedtls_ssl_conf_cert_profile(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt_profile* noundef %crt_profile_for_test) #7
  call void @mbedtls_ssl_conf_sig_algs(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef getelementptr inbounds ([12 x i16], [12 x i16]* @ssl_sig_algs_for_test, i64 0, i64 0)) #7
  br label %if.end864

if.end864:                                        ; preds = %if.then863, %if.end860
  %329 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp865 = icmp eq i32 %329, 0
  br i1 %cmp865, label %if.then867, label %if.end868

if.then867:                                       ; preds = %if.end864
  call void @mbedtls_ssl_conf_verify(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef @my_verify, i8* noundef null) #7
  br label %if.end868

if.end868:                                        ; preds = %if.then867, %if.end864
  %call869 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @peer_crt_info, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #6
  %330 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  %cmp870 = icmp ne i32 %330, -1
  br i1 %cmp870, label %if.then872, label %if.end873

if.then872:                                       ; preds = %if.end868
  %331 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %331) #7
  br label %if.end873

if.end873:                                        ; preds = %if.then872, %if.end868
  %332 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  %cmp874 = icmp ne i32 %332, 0
  br i1 %cmp874, label %if.then879, label %lor.lhs.false876

lor.lhs.false876:                                 ; preds = %if.end873
  %333 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 8
  %cmp877 = icmp ne i32 %333, 0
  br i1 %cmp877, label %if.then879, label %if.end880

if.then879:                                       ; preds = %lor.lhs.false876, %if.end873
  %334 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 4
  %335 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 8
  call void @mbedtls_ssl_conf_handshake_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %334, i32 noundef %335) #7
  br label %if.end880

if.end880:                                        ; preds = %if.then879, %lor.lhs.false876
  %336 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  %cmp881 = icmp ne i32 %336, 1
  br i1 %cmp881, label %if.then883, label %if.end884

if.then883:                                       ; preds = %if.end880
  %337 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 4
  call void @mbedtls_ssl_set_datagram_packing(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %337) #7
  br label %if.end884

if.end884:                                        ; preds = %if.then883, %if.end880
  %338 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %call885 = call i32 @mbedtls_ssl_conf_max_frag_len(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef zeroext %338) #7
  store i32 %call885, i32* %ret, align 4
  %cmp886 = icmp ne i32 %call885, 0
  br i1 %cmp886, label %if.then888, label %if.end890

if.then888:                                       ; preds = %if.end884
  %339 = load i32, i32* %ret, align 4
  %call889 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.131, i64 0, i64 0), i32 noundef %339) #7
  br label %exit

if.end890:                                        ; preds = %if.end884
  %340 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  %cmp891 = icmp ne i32 %340, -1
  br i1 %cmp891, label %if.then893, label %if.end895

if.then893:                                       ; preds = %if.end890
  %341 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  %conv894 = trunc i32 %341 to i8
  call void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv894) #7
  br label %if.end895

if.end895:                                        ; preds = %if.then893, %if.end890
  %342 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 4
  %cmp896 = icmp ne i32 %342, -1
  br i1 %cmp896, label %if.then898, label %if.end900

if.then898:                                       ; preds = %if.end895
  %343 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 4
  %conv899 = trunc i32 %343 to i8
  call void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv899) #7
  br label %if.end900

if.end900:                                        ; preds = %if.then898, %if.end895
  %344 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 4
  %cmp901 = icmp ne i32 %344, -1
  br i1 %cmp901, label %if.then903, label %if.end904

if.then903:                                       ; preds = %if.end900
  %345 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 4
  call void @mbedtls_ssl_conf_dhm_min_bitlen(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %345) #7
  br label %if.end904

if.end904:                                        ; preds = %if.then903, %if.end900
  %346 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %cmp905 = icmp ne i8* %346, null
  br i1 %cmp905, label %if.then907, label %if.end915

if.then907:                                       ; preds = %if.end904
  %arraydecay908 = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 0
  %call909 = call i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef %conf, i8** noundef %arraydecay908) #7
  store i32 %call909, i32* %ret, align 4
  %cmp910 = icmp ne i32 %call909, 0
  br i1 %cmp910, label %if.then912, label %if.end914

if.then912:                                       ; preds = %if.then907
  %347 = load i32, i32* %ret, align 4
  %call913 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.132, i64 0, i64 0), i32 noundef %347) #7
  br label %exit

if.end914:                                        ; preds = %if.then907
  br label %if.end915

if.end915:                                        ; preds = %if.end914, %if.end904
  %348 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 8
  %tobool916 = icmp ne i32 %348, 0
  br i1 %tobool916, label %if.then917, label %if.end919

if.then917:                                       ; preds = %if.end915
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call918 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %349, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.133, i64 0, i64 0)) #7
  br label %if.end919

if.end919:                                        ; preds = %if.then917, %if.end915
  %350 = bitcast %struct.rng_context_t* %rng to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef %350) #7
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %352 = bitcast %struct._IO_FILE* %351 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %352) #7
  %353 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 4
  call void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %353) #7
  %354 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 8
  call void @mbedtls_ssl_conf_session_tickets(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %354) #7
  %355 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0), align 4
  %cmp920 = icmp ne i32 %355, 0
  br i1 %cmp920, label %if.then922, label %if.end923

if.then922:                                       ; preds = %if.end919
  call void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20, i64 0)) #7
  br label %if.end923

if.end923:                                        ; preds = %if.then922, %if.end919
  %356 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  %cmp924 = icmp ne i32 %356, -2
  br i1 %cmp924, label %if.then926, label %if.end927

if.then926:                                       ; preds = %if.end923
  %357 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  call void @mbedtls_ssl_conf_legacy_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %357) #7
  br label %if.end927

if.end927:                                        ; preds = %if.then926, %if.end923
  %358 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 4
  call void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %358) #7
  %359 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call928 = call i32 @strcmp(i8* noundef %359, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp929 = icmp ne i32 %call928, 0
  br i1 %cmp929, label %land.lhs.true931, label %if.end936

land.lhs.true931:                                 ; preds = %if.end927
  %360 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call932 = call i32 @strcmp(i8* noundef %360, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp933 = icmp ne i32 %call932, 0
  br i1 %cmp933, label %if.then935, label %if.end936

if.then935:                                       ; preds = %land.lhs.true931
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #7
  br label %if.end936

if.end936:                                        ; preds = %if.then935, %land.lhs.true931, %if.end927
  %361 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %call937 = call i32 @strcmp(i8* noundef %361, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp938 = icmp ne i32 %call937, 0
  br i1 %cmp938, label %land.lhs.true940, label %if.end951

land.lhs.true940:                                 ; preds = %if.end936
  %362 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %call941 = call i32 @strcmp(i8* noundef %362, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #8
  %cmp942 = icmp ne i32 %call941, 0
  br i1 %cmp942, label %if.then944, label %if.end951

if.then944:                                       ; preds = %land.lhs.true940
  %call945 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %clicert, %struct.mbedtls_pk_context* noundef %pkey) #7
  store i32 %call945, i32* %ret, align 4
  %cmp946 = icmp ne i32 %call945, 0
  br i1 %cmp946, label %if.then948, label %if.end950

if.then948:                                       ; preds = %if.then944
  %363 = load i32, i32* %ret, align 4
  %call949 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.134, i64 0, i64 0), i32 noundef %363) #7
  br label %exit

if.end950:                                        ; preds = %if.then944
  br label %if.end951

if.end951:                                        ; preds = %if.end950, %land.lhs.true940, %if.end936
  %364 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  %cmp952 = icmp ne i8* %364, null
  br i1 %cmp952, label %land.lhs.true954, label %if.end960

land.lhs.true954:                                 ; preds = %if.end951
  %365 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  %call955 = call i32 @strcmp(i8* noundef %365, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0)) #8
  %cmp956 = icmp ne i32 %call955, 0
  br i1 %cmp956, label %if.then958, label %if.end960

if.then958:                                       ; preds = %land.lhs.true954
  %arraydecay959 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 0
  call void @mbedtls_ssl_conf_groups(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef %arraydecay959) #7
  br label %if.end960

if.end960:                                        ; preds = %if.then958, %land.lhs.true954, %if.end951
  %366 = load i64, i64* %psk_len, align 8
  %cmp961 = icmp ugt i64 %366, 0
  br i1 %cmp961, label %if.then963, label %if.end972

if.then963:                                       ; preds = %if.end960
  %arraydecay964 = getelementptr inbounds [32 x i8], [32 x i8]* %psk, i64 0, i64 0
  %367 = load i64, i64* %psk_len, align 8
  %368 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 8
  %369 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 8
  %call965 = call i64 @strlen(i8* noundef %369) #8
  %call966 = call i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %arraydecay964, i64 noundef %367, i8* noundef %368, i64 noundef %call965) #7
  store i32 %call966, i32* %ret, align 4
  %370 = load i32, i32* %ret, align 4
  %cmp967 = icmp ne i32 %370, 0
  br i1 %cmp967, label %if.then969, label %if.end971

if.then969:                                       ; preds = %if.then963
  %371 = load i32, i32* %ret, align 4
  %call970 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.135, i64 0, i64 0), i32 noundef %371) #7
  br label %exit

if.end971:                                        ; preds = %if.then963
  br label %if.end972

if.end972:                                        ; preds = %if.end971, %if.end960
  %372 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  %cmp973 = icmp ne i32 %372, -1
  br i1 %cmp973, label %if.then975, label %if.end976

if.then975:                                       ; preds = %if.end972
  %373 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  call void @mbedtls_ssl_conf_min_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %373) #7
  br label %if.end976

if.end976:                                        ; preds = %if.then975, %if.end972
  %374 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %cmp977 = icmp ne i32 %374, -1
  br i1 %cmp977, label %if.then979, label %if.end980

if.then979:                                       ; preds = %if.end976
  %375 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  call void @mbedtls_ssl_conf_max_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %375) #7
  br label %if.end980

if.end980:                                        ; preds = %if.then979, %if.end976
  %call981 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #7
  store i32 %call981, i32* %ret, align 4
  %cmp982 = icmp ne i32 %call981, 0
  br i1 %cmp982, label %if.then984, label %if.end987

if.then984:                                       ; preds = %if.end980
  %376 = load i32, i32* %ret, align 4
  %sub985 = sub nsw i32 0, %376
  %call986 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.136, i64 0, i64 0), i32 noundef %sub985) #7
  br label %exit

if.end987:                                        ; preds = %if.end980
  %377 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %cmp988 = icmp ne i32 %377, 0
  br i1 %cmp988, label %if.then990, label %if.else991

if.then990:                                       ; preds = %if.end987
  %378 = bitcast %struct.eap_tls_keys* %eap_tls_keying to i8*
  call void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef %ssl, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef @eap_tls_key_derivation, i8* noundef %378) #7
  br label %if.end996

if.else991:                                       ; preds = %if.end987
  %379 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 8
  %cmp992 = icmp ne i32 %379, 0
  br i1 %cmp992, label %if.then994, label %if.end995

if.then994:                                       ; preds = %if.else991
  call void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef %ssl, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef @nss_keylog_export, i8* noundef null) #7
  br label %if.end995

if.end995:                                        ; preds = %if.then994, %if.else991
  br label %if.end996

if.end996:                                        ; preds = %if.end995, %if.then990
  %380 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %call997 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %380) #7
  store i32 %call997, i32* %ret, align 4
  %cmp998 = icmp ne i32 %call997, 0
  br i1 %cmp998, label %if.then1000, label %if.end1002

if.then1000:                                      ; preds = %if.end996
  %381 = load i32, i32* %ret, align 4
  %call1001 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.137, i64 0, i64 0), i32 noundef %381) #7
  br label %exit

if.end1002:                                       ; preds = %if.end996
  %382 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp1003 = icmp eq i32 %382, 1
  br i1 %cmp1003, label %if.then1005, label %if.end1006

if.then1005:                                      ; preds = %if.end1002
  call void @mbedtls_ssl_set_verify(%struct.mbedtls_ssl_context* noundef %ssl, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef @my_verify, i8* noundef null) #7
  br label %if.end1006

if.end1006:                                       ; preds = %if.then1005, %if.end1002
  %ssl1007 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %io_ctx, i32 0, i32 0
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl1007, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %io_ctx, i32 0, i32 1
  store %struct.mbedtls_net_context* %server_fd, %struct.mbedtls_net_context** %net, align 8
  %383 = bitcast %struct.io_ctx_t* %io_ctx to i8*
  %384 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp1008 = icmp eq i32 %384, 0
  %385 = zext i1 %cmp1008 to i64
  %cond1010 = select i1 %cmp1008, i32 (i8*, i8*, i64, i32)* @recv_timeout_cb, i32 (i8*, i8*, i64, i32)* null
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %383, i32 (i8*, i8*, i64)* noundef @send_cb, i32 (i8*, i8*, i64)* noundef @recv_cb, i32 (i8*, i8*, i64, i32)* noundef %cond1010) #7
  %386 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 4
  %cmp1011 = icmp ne i32 %386, -1
  br i1 %cmp1011, label %if.then1013, label %if.end1015

if.then1013:                                      ; preds = %if.end1006
  %387 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 4
  %conv1014 = trunc i32 %387 to i16
  call void @mbedtls_ssl_set_mtu(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %conv1014) #7
  br label %if.end1015

if.end1015:                                       ; preds = %if.then1013, %if.end1006
  %388 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %388, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #7
  %call1016 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  %389 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %cmp1017 = icmp eq i8* %389, null
  br i1 %cmp1017, label %if.then1019, label %if.end1020

if.then1019:                                      ; preds = %if.end1015
  %390 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* %390, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end1020

if.end1020:                                       ; preds = %if.then1019, %if.end1015
  %391 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1021 = icmp eq i32 %391, 0
  %392 = zext i1 %cmp1021 to i64
  %cond1023 = select i1 %cmp1021, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0)
  %393 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %394 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %call1024 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.138, i64 0, i64 0), i8* noundef %cond1023, i8* noundef %393, i8* noundef %394) #7
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1025 = call i32 @fflush(%struct._IO_FILE* noundef %395) #7
  %396 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %397 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %398 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1026 = icmp eq i32 %398, 0
  %399 = zext i1 %cmp1026 to i64
  %cond1028 = select i1 %cmp1026, i32 0, i32 1
  %call1029 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %396, i8* noundef %397, i32 noundef %cond1028) #7
  store i32 %call1029, i32* %ret, align 4
  %cmp1030 = icmp ne i32 %call1029, 0
  br i1 %cmp1030, label %if.then1032, label %if.end1035

if.then1032:                                      ; preds = %if.end1020
  %400 = load i32, i32* %ret, align 4
  %sub1033 = sub nsw i32 0, %400
  %call1034 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.141, i64 0, i64 0), i32 noundef %sub1033) #7
  br label %exit

if.end1035:                                       ; preds = %if.end1020
  %401 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp1036 = icmp sgt i32 %401, 0
  br i1 %cmp1036, label %if.then1038, label %if.else1040

if.then1038:                                      ; preds = %if.end1035
  %call1039 = call i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef %server_fd) #7
  store i32 %call1039, i32* %ret, align 4
  br label %if.end1042

if.else1040:                                      ; preds = %if.end1035
  %call1041 = call i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef %server_fd) #7
  store i32 %call1041, i32* %ret, align 4
  br label %if.end1042

if.end1042:                                       ; preds = %if.else1040, %if.then1038
  %402 = load i32, i32* %ret, align 4
  %cmp1043 = icmp ne i32 %402, 0
  br i1 %cmp1043, label %if.then1045, label %if.end1048

if.then1045:                                      ; preds = %if.end1042
  %403 = load i32, i32* %ret, align 4
  %sub1046 = sub nsw i32 0, %403
  %call1047 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.142, i64 0, i64 0), i32 noundef %sub1046) #7
  br label %exit

if.end1048:                                       ; preds = %if.end1042
  %call1049 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  %call1050 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.143, i64 0, i64 0)) #7
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1051 = call i32 @fflush(%struct._IO_FILE* noundef %404) #7
  br label %while.cond1052

while.cond1052:                                   ; preds = %if.end1083, %if.end1048
  %call1053 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1053, i32* %ret, align 4
  %cmp1054 = icmp ne i32 %call1053, 0
  br i1 %cmp1054, label %while.body1056, label %while.end1084

while.body1056:                                   ; preds = %while.cond1052
  %405 = load i32, i32* %ret, align 4
  %cmp1057 = icmp ne i32 %405, -26880
  br i1 %cmp1057, label %land.lhs.true1059, label %if.end1074

land.lhs.true1059:                                ; preds = %while.body1056
  %406 = load i32, i32* %ret, align 4
  %cmp1060 = icmp ne i32 %406, -26752
  br i1 %cmp1060, label %land.lhs.true1062, label %if.end1074

land.lhs.true1062:                                ; preds = %land.lhs.true1059
  %407 = load i32, i32* %ret, align 4
  %cmp1063 = icmp ne i32 %407, -28672
  br i1 %cmp1063, label %if.then1065, label %if.end1074

if.then1065:                                      ; preds = %land.lhs.true1062
  %408 = load i32, i32* %ret, align 4
  %sub1066 = sub nsw i32 0, %408
  %call1067 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.144, i64 0, i64 0), i32 noundef %sub1066) #7
  %409 = load i32, i32* %ret, align 4
  %cmp1068 = icmp eq i32 %409, -9984
  br i1 %cmp1068, label %if.then1070, label %if.end1072

if.then1070:                                      ; preds = %if.then1065
  %call1071 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.145, i64 0, i64 0)) #7
  br label %if.end1072

if.end1072:                                       ; preds = %if.then1070, %if.then1065
  %call1073 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %exit

if.end1074:                                       ; preds = %land.lhs.true1062, %land.lhs.true1059, %while.body1056
  %410 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1075 = icmp eq i32 %410, 1
  br i1 %cmp1075, label %if.then1077, label %if.end1083

if.then1077:                                      ; preds = %if.end1074
  %411 = load i32, i32* %ret, align 4
  %call1078 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %411) #7
  store i32 %call1078, i32* %ret, align 4
  %412 = load i32, i32* %ret, align 4
  %cmp1079 = icmp ne i32 %412, 0
  br i1 %cmp1079, label %if.then1081, label %if.end1082

if.then1081:                                      ; preds = %if.then1077
  br label %exit

if.end1082:                                       ; preds = %if.then1077
  br label %if.end1083

if.end1083:                                       ; preds = %if.end1082, %if.end1074
  br label %while.cond1052, !llvm.loop !16

while.end1084:                                    ; preds = %while.cond1052
  %call1085 = call i32 @mbedtls_ssl_get_ciphersuite_id_from_ssl(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1085, i32* %suite_id, align 4
  %413 = load i32, i32* %suite_id, align 4
  %call1087 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %413) #7
  store %struct.mbedtls_ssl_ciphersuite_t* %call1087, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1086, align 8
  %call1088 = call i8* @mbedtls_ssl_get_version(%struct.mbedtls_ssl_context* noundef %ssl) #7
  %414 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1086, align 8
  %call1089 = call i8* @mbedtls_ssl_ciphersuite_get_name(%struct.mbedtls_ssl_ciphersuite_t* noundef %414) #7
  %415 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1086, align 8
  %call1090 = call i64 @mbedtls_ssl_ciphersuite_get_cipher_key_bitlen(%struct.mbedtls_ssl_ciphersuite_t* noundef %415) #7
  %conv1091 = trunc i64 %call1090 to i32
  %call1092 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.146, i64 0, i64 0), i8* noundef %call1088, i8* noundef %call1089, i32 noundef %conv1091) #7
  %call1093 = call i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1093, i32* %ret, align 4
  %cmp1094 = icmp sge i32 %call1093, 0
  br i1 %cmp1094, label %if.then1096, label %if.else1098

if.then1096:                                      ; preds = %while.end1084
  %416 = load i32, i32* %ret, align 4
  %call1097 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.147, i64 0, i64 0), i32 noundef %416) #7
  br label %if.end1100

if.else1098:                                      ; preds = %while.end1084
  %call1099 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.148, i64 0, i64 0)) #7
  br label %if.end1100

if.end1100:                                       ; preds = %if.else1098, %if.then1096
  %call1101 = call i32 @mbedtls_ssl_get_max_in_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #7
  %call1102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.149, i64 0, i64 0), i32 noundef %call1101) #7
  %call1103 = call i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #7
  %call1104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.150, i64 0, i64 0), i32 noundef %call1103) #7
  %417 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %cmp1105 = icmp ne i8* %417, null
  br i1 %cmp1105, label %if.then1107, label %if.end1115

if.then1107:                                      ; preds = %if.end1100
  %call1108 = call i8* @mbedtls_ssl_get_alpn_protocol(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i8* %call1108, i8** %alp, align 8
  %418 = load i8*, i8** %alp, align 8
  %tobool1109 = icmp ne i8* %418, null
  br i1 %tobool1109, label %cond.true1110, label %cond.false1111

cond.true1110:                                    ; preds = %if.then1107
  %419 = load i8*, i8** %alp, align 8
  br label %cond.end1112

cond.false1111:                                   ; preds = %if.then1107
  br label %cond.end1112

cond.end1112:                                     ; preds = %cond.false1111, %cond.true1110
  %cond1113 = phi i8* [ %419, %cond.true1110 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i64 0, i64 0), %cond.false1111 ]
  %call1114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.151, i64 0, i64 0), i8* noundef %cond1113) #7
  br label %if.end1115

if.end1115:                                       ; preds = %cond.end1112, %if.end1100
  %420 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 4
  %cmp1116 = icmp ne i32 %420, 0
  br i1 %cmp1116, label %if.then1118, label %if.end1175

if.then1118:                                      ; preds = %if.end1115
  store i64 0, i64* %j, align 8
  %tls_prf_type = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 2
  %421 = load i32, i32* %tls_prf_type, align 4
  %master_secret = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 0
  %arraydecay1119 = getelementptr inbounds [48 x i8], [48 x i8]* %master_secret, i64 0, i64 0
  %422 = load i8*, i8** %eap_tls_label, align 8
  %randbytes = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 1
  %arraydecay1120 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %arraydecay1121 = getelementptr inbounds [16 x i8], [16 x i8]* %eap_tls_keymaterial, i64 0, i64 0
  %call1122 = call i32 @mbedtls_ssl_tls_prf(i32 noundef %421, i8* noundef %arraydecay1119, i64 noundef 48, i8* noundef %422, i8* noundef %arraydecay1120, i64 noundef 64, i8* noundef %arraydecay1121, i64 noundef 16) #7
  store i32 %call1122, i32* %ret, align 4
  %cmp1123 = icmp ne i32 %call1122, 0
  br i1 %cmp1123, label %if.then1125, label %if.end1128

if.then1125:                                      ; preds = %if.then1118
  %423 = load i32, i32* %ret, align 4
  %sub1126 = sub nsw i32 0, %423
  %call1127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.153, i64 0, i64 0), i32 noundef %sub1126) #7
  br label %exit

if.end1128:                                       ; preds = %if.then1118
  %call1129 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.154, i64 0, i64 0)) #7
  store i64 0, i64* %j, align 8
  br label %for.cond1130

for.cond1130:                                     ; preds = %for.inc1142, %if.end1128
  %424 = load i64, i64* %j, align 8
  %cmp1131 = icmp ult i64 %424, 16
  br i1 %cmp1131, label %for.body1133, label %for.end1144

for.body1133:                                     ; preds = %for.cond1130
  %425 = load i64, i64* %j, align 8
  %rem = urem i64 %425, 8
  %cmp1134 = icmp eq i64 %rem, 0
  br i1 %cmp1134, label %if.then1136, label %if.end1138

if.then1136:                                      ; preds = %for.body1133
  %call1137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i64 0, i64 0)) #7
  br label %if.end1138

if.end1138:                                       ; preds = %if.then1136, %for.body1133
  %426 = load i64, i64* %j, align 8
  %arrayidx1139 = getelementptr inbounds [16 x i8], [16 x i8]* %eap_tls_keymaterial, i64 0, i64 %426
  %427 = load i8, i8* %arrayidx1139, align 1
  %conv1140 = zext i8 %427 to i32
  %call1141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv1140) #7
  br label %for.inc1142

for.inc1142:                                      ; preds = %if.end1138
  %428 = load i64, i64* %j, align 8
  %inc1143 = add i64 %428, 1
  store i64 %inc1143, i64* %j, align 8
  br label %for.cond1130, !llvm.loop !17

for.end1144:                                      ; preds = %for.cond1130
  %call1145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  %tls_prf_type1146 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 2
  %429 = load i32, i32* %tls_prf_type1146, align 4
  %430 = load i8*, i8** %eap_tls_label, align 8
  %randbytes1147 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 1
  %arraydecay1148 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes1147, i64 0, i64 0
  %arraydecay1149 = getelementptr inbounds [8 x i8], [8 x i8]* %eap_tls_iv, i64 0, i64 0
  %call1150 = call i32 @mbedtls_ssl_tls_prf(i32 noundef %429, i8* noundef null, i64 noundef 0, i8* noundef %430, i8* noundef %arraydecay1148, i64 noundef 64, i8* noundef %arraydecay1149, i64 noundef 8) #7
  store i32 %call1150, i32* %ret, align 4
  %cmp1151 = icmp ne i32 %call1150, 0
  br i1 %cmp1151, label %if.then1153, label %if.end1156

if.then1153:                                      ; preds = %for.end1144
  %431 = load i32, i32* %ret, align 4
  %sub1154 = sub nsw i32 0, %431
  %call1155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.153, i64 0, i64 0), i32 noundef %sub1154) #7
  br label %exit

if.end1156:                                       ; preds = %for.end1144
  %call1157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i64 0, i64 0)) #7
  store i64 0, i64* %j, align 8
  br label %for.cond1158

for.cond1158:                                     ; preds = %for.inc1171, %if.end1156
  %432 = load i64, i64* %j, align 8
  %cmp1159 = icmp ult i64 %432, 8
  br i1 %cmp1159, label %for.body1161, label %for.end1173

for.body1161:                                     ; preds = %for.cond1158
  %433 = load i64, i64* %j, align 8
  %rem1162 = urem i64 %433, 8
  %cmp1163 = icmp eq i64 %rem1162, 0
  br i1 %cmp1163, label %if.then1165, label %if.end1167

if.then1165:                                      ; preds = %for.body1161
  %call1166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i64 0, i64 0)) #7
  br label %if.end1167

if.end1167:                                       ; preds = %if.then1165, %for.body1161
  %434 = load i64, i64* %j, align 8
  %arrayidx1168 = getelementptr inbounds [8 x i8], [8 x i8]* %eap_tls_iv, i64 0, i64 %434
  %435 = load i8, i8* %arrayidx1168, align 1
  %conv1169 = zext i8 %435 to i32
  %call1170 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv1169) #7
  br label %for.inc1171

for.inc1171:                                      ; preds = %if.end1167
  %436 = load i64, i64* %j, align 8
  %inc1172 = add i64 %436, 1
  store i64 %inc1172, i64* %j, align 8
  br label %for.cond1158, !llvm.loop !18

for.end1173:                                      ; preds = %for.cond1158
  %call1174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %if.end1175

if.end1175:                                       ; preds = %for.end1173, %if.end1115
  %437 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %cmp1176 = icmp ne i32 %437, 0
  br i1 %cmp1176, label %if.then1178, label %if.end1226

if.then1178:                                      ; preds = %if.end1175
  %call1179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.158, i64 0, i64 0)) #7
  %438 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1180 = call i32 @fflush(%struct._IO_FILE* noundef %438) #7
  %439 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  %cmp1181 = icmp eq i32 %439, 1
  br i1 %cmp1181, label %if.then1183, label %if.else1210

if.then1183:                                      ; preds = %if.then1178
  %440 = load i8*, i8** %session_data, align 8
  %cmp1184 = icmp ne i8* %440, null
  br i1 %cmp1184, label %if.then1186, label %if.end1187

if.then1186:                                      ; preds = %if.then1183
  %441 = load i8*, i8** %session_data, align 8
  %442 = load i64, i64* %session_data_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %441, i64 noundef %442) #7
  %443 = load i8*, i8** %session_data, align 8
  call void @free(i8* noundef %443) #6
  store i8* null, i8** %session_data, align 8
  br label %if.end1187

if.end1187:                                       ; preds = %if.then1186, %if.then1183
  call void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef %exported_session) #7
  %call1188 = call i32 @mbedtls_ssl_get_session(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_session* noundef %exported_session) #7
  store i32 %call1188, i32* %ret, align 4
  %444 = load i32, i32* %ret, align 4
  %cmp1189 = icmp ne i32 %444, 0
  br i1 %cmp1189, label %if.then1191, label %if.end1194

if.then1191:                                      ; preds = %if.end1187
  %445 = load i32, i32* %ret, align 4
  %sub1192 = sub nsw i32 0, %445
  %call1193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.159, i64 0, i64 0), i32 noundef %sub1192) #7
  br label %exit

if.end1194:                                       ; preds = %if.end1187
  %call1195 = call i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %exported_session, i8* noundef null, i64 noundef 0, i64* noundef %session_data_len) #7
  %446 = load i64, i64* %session_data_len, align 8
  %call1196 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %446) #6
  store i8* %call1196, i8** %session_data, align 8
  %447 = load i8*, i8** %session_data, align 8
  %cmp1197 = icmp eq i8* %447, null
  br i1 %cmp1197, label %if.then1199, label %if.end1202

if.then1199:                                      ; preds = %if.end1194
  %448 = load i64, i64* %session_data_len, align 8
  %conv1200 = trunc i64 %448 to i32
  %call1201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.160, i64 0, i64 0), i32 noundef %conv1200) #7
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %exported_session) #7
  store i32 -32512, i32* %ret, align 4
  br label %exit

if.end1202:                                       ; preds = %if.end1194
  %449 = load i8*, i8** %session_data, align 8
  %450 = load i64, i64* %session_data_len, align 8
  %call1203 = call i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %exported_session, i8* noundef %449, i64 noundef %450, i64* noundef %session_data_len) #7
  store i32 %call1203, i32* %ret, align 4
  %cmp1204 = icmp ne i32 %call1203, 0
  br i1 %cmp1204, label %if.then1206, label %if.end1209

if.then1206:                                      ; preds = %if.end1202
  %451 = load i32, i32* %ret, align 4
  %sub1207 = sub nsw i32 0, %451
  %call1208 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.161, i64 0, i64 0), i32 noundef %sub1207) #7
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %exported_session) #7
  br label %exit

if.end1209:                                       ; preds = %if.end1202
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %exported_session) #7
  br label %if.end1218

if.else1210:                                      ; preds = %if.then1178
  %call1211 = call i32 @mbedtls_ssl_get_session(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_session* noundef %saved_session) #7
  store i32 %call1211, i32* %ret, align 4
  %cmp1212 = icmp ne i32 %call1211, 0
  br i1 %cmp1212, label %if.then1214, label %if.end1217

if.then1214:                                      ; preds = %if.else1210
  %452 = load i32, i32* %ret, align 4
  %sub1215 = sub nsw i32 0, %452
  %call1216 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.162, i64 0, i64 0), i32 noundef %sub1215) #7
  br label %exit

if.end1217:                                       ; preds = %if.else1210
  br label %if.end1218

if.end1218:                                       ; preds = %if.end1217, %if.end1209
  %call1219 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  %453 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  %cmp1220 = icmp eq i32 %453, 1
  br i1 %cmp1220, label %if.then1222, label %if.end1225

if.then1222:                                      ; preds = %if.end1218
  %454 = load i64, i64* %session_data_len, align 8
  %conv1223 = trunc i64 %454 to i32
  %call1224 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.163, i64 0, i64 0), i32 noundef %conv1223) #7
  br label %if.end1225

if.end1225:                                       ; preds = %if.then1222, %if.end1218
  br label %if.end1226

if.end1226:                                       ; preds = %if.end1225, %if.end1175
  %call1227 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.164, i64 0, i64 0)) #7
  %call1228 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1228, i32* %flags, align 4
  %cmp1229 = icmp ne i32 %call1228, 0
  br i1 %cmp1229, label %if.then1231, label %if.else1237

if.then1231:                                      ; preds = %if.end1226
  %call1232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i64 0, i64 0)) #7
  %arraydecay1233 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %455 = load i32, i32* %flags, align 4
  %call1234 = call i32 @x509_crt_verify_info(i8* noundef %arraydecay1233, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i64 0, i64 0), i32 noundef %455) #7
  %arraydecay1235 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call1236 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i64 0, i64 0), i8* noundef %arraydecay1235) #7
  br label %if.end1239

if.else1237:                                      ; preds = %if.end1226
  %call1238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %if.end1239

if.end1239:                                       ; preds = %if.else1237, %if.then1231
  %call1240 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.168, i64 0, i64 0)) #7
  %call1241 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @peer_crt_info, i64 0, i64 0)) #7
  %456 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 4
  %tobool1242 = icmp ne i32 %456, 0
  br i1 %tobool1242, label %if.then1243, label %if.end1269

if.then1243:                                      ; preds = %if.end1239
  %call1244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i64 0, i64 0)) #7
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1245 = call i32 @fflush(%struct._IO_FILE* noundef %457) #7
  br label %while.cond1246

while.cond1246:                                   ; preds = %if.end1266, %if.then1243
  %call1247 = call i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1247, i32* %ret, align 4
  %cmp1248 = icmp ne i32 %call1247, 0
  br i1 %cmp1248, label %while.body1250, label %while.end1267

while.body1250:                                   ; preds = %while.cond1246
  %458 = load i32, i32* %ret, align 4
  %cmp1251 = icmp ne i32 %458, -26880
  br i1 %cmp1251, label %land.lhs.true1253, label %if.end1261

land.lhs.true1253:                                ; preds = %while.body1250
  %459 = load i32, i32* %ret, align 4
  %cmp1254 = icmp ne i32 %459, -26752
  br i1 %cmp1254, label %land.lhs.true1256, label %if.end1261

land.lhs.true1256:                                ; preds = %land.lhs.true1253
  %460 = load i32, i32* %ret, align 4
  %cmp1257 = icmp ne i32 %460, -28672
  br i1 %cmp1257, label %if.then1259, label %if.end1261

if.then1259:                                      ; preds = %land.lhs.true1256
  %461 = load i32, i32* %ret, align 4
  %call1260 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.170, i64 0, i64 0), i32 noundef %461) #7
  br label %exit

if.end1261:                                       ; preds = %land.lhs.true1256, %land.lhs.true1253, %while.body1250
  %462 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1262 = icmp eq i32 %462, 1
  br i1 %cmp1262, label %if.then1264, label %if.end1266

if.then1264:                                      ; preds = %if.end1261
  %463 = load i32, i32* %ret, align 4
  %call1265 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %463) #7
  br label %if.end1266

if.end1266:                                       ; preds = %if.then1264, %if.end1261
  br label %while.cond1246, !llvm.loop !19

while.end1267:                                    ; preds = %while.cond1246
  %call1268 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %if.end1269

if.end1269:                                       ; preds = %while.end1267, %if.end1239
  %464 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 8
  store i32 %464, i32* %retry_left, align 4
  br label %send_request

send_request:                                     ; preds = %while.end1713, %if.then1622, %while.end1520, %if.then1472, %if.then1391, %if.end1269
  %call1270 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.171, i64 0, i64 0)) #7
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1271 = call i32 @fflush(%struct._IO_FILE* noundef %465) #7
  %arraydecay1272 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %466 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call1273 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay1272, i64 noundef 20000, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i64 0, i64 0), i8* noundef %466) #6
  store i32 %call1273, i32* %len, align 4
  %call1274 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i64 0, i64 0)) #8
  %conv1275 = trunc i64 %call1274 to i32
  store i32 %conv1275, i32* %tail_len, align 4
  %467 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp1276 = icmp ne i32 %467, -1
  br i1 %cmp1276, label %land.lhs.true1278, label %if.end1290

land.lhs.true1278:                                ; preds = %send_request
  %468 = load i32, i32* %len, align 4
  %469 = load i32, i32* %tail_len, align 4
  %add = add nsw i32 %468, %469
  %470 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp1279 = icmp slt i32 %add, %470
  br i1 %cmp1279, label %if.then1281, label %if.end1290

if.then1281:                                      ; preds = %land.lhs.true1278
  %arraydecay1282 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %471 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %471 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1282, i64 %idx.ext
  %472 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %473 = load i32, i32* %len, align 4
  %sub1283 = sub nsw i32 %472, %473
  %474 = load i32, i32* %tail_len, align 4
  %sub1284 = sub nsw i32 %sub1283, %474
  %conv1285 = sext i32 %sub1284 to i64
  %call1286 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 65, i64 noundef %conv1285) #6
  %475 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %476 = load i32, i32* %len, align 4
  %sub1287 = sub nsw i32 %475, %476
  %477 = load i32, i32* %tail_len, align 4
  %sub1288 = sub nsw i32 %sub1287, %477
  %478 = load i32, i32* %len, align 4
  %add1289 = add nsw i32 %478, %sub1288
  store i32 %add1289, i32* %len, align 4
  br label %if.end1290

if.end1290:                                       ; preds = %if.then1281, %land.lhs.true1278, %send_request
  %arraydecay1291 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %479 = load i32, i32* %len, align 4
  %idx.ext1292 = sext i32 %479 to i64
  %add.ptr1293 = getelementptr inbounds i8, i8* %arraydecay1291, i64 %idx.ext1292
  %480 = load i32, i32* %len, align 4
  %conv1294 = sext i32 %480 to i64
  %sub1295 = sub i64 20001, %conv1294
  %sub1296 = sub i64 %sub1295, 1
  %call1297 = call i8* @strncpy(i8* noundef %add.ptr1293, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i64 0, i64 0), i64 noundef %sub1296) #6
  %481 = load i32, i32* %tail_len, align 4
  %482 = load i32, i32* %len, align 4
  %add1298 = add nsw i32 %482, %481
  store i32 %add1298, i32* %len, align 4
  %483 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp1299 = icmp ne i32 %483, -1
  br i1 %cmp1299, label %land.lhs.true1301, label %if.end1319

land.lhs.true1301:                                ; preds = %if.end1290
  %484 = load i32, i32* %len, align 4
  %485 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %cmp1302 = icmp sgt i32 %484, %485
  br i1 %cmp1302, label %if.then1304, label %if.end1319

if.then1304:                                      ; preds = %land.lhs.true1301
  %486 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i32 %486, i32* %len, align 4
  %487 = load i32, i32* %len, align 4
  %cmp1305 = icmp sge i32 %487, 2
  br i1 %cmp1305, label %if.then1307, label %if.end1311

if.then1307:                                      ; preds = %if.then1304
  %488 = load i32, i32* %len, align 4
  %sub1308 = sub nsw i32 %488, 2
  %idxprom1309 = sext i32 %sub1308 to i64
  %arrayidx1310 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1309
  store i8 13, i8* %arrayidx1310, align 1
  br label %if.end1311

if.end1311:                                       ; preds = %if.then1307, %if.then1304
  %489 = load i32, i32* %len, align 4
  %cmp1312 = icmp sge i32 %489, 1
  br i1 %cmp1312, label %if.then1314, label %if.end1318

if.then1314:                                      ; preds = %if.end1311
  %490 = load i32, i32* %len, align 4
  %sub1315 = sub nsw i32 %490, 1
  %idxprom1316 = sext i32 %sub1315 to i64
  %arrayidx1317 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1316
  store i8 10, i8* %arrayidx1317, align 1
  br label %if.end1318

if.end1318:                                       ; preds = %if.then1314, %if.end1311
  br label %if.end1319

if.end1319:                                       ; preds = %if.end1318, %land.lhs.true1301, %if.end1290
  %491 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1320 = icmp eq i32 %491, 0
  br i1 %cmp1320, label %if.then1322, label %if.else1355

if.then1322:                                      ; preds = %if.end1319
  store i32 0, i32* %written, align 4
  store i32 0, i32* %frags, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then1322
  br label %while.cond1323

while.cond1323:                                   ; preds = %if.end1349, %do.body
  %arraydecay1324 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %492 = load i32, i32* %written, align 4
  %idx.ext1325 = sext i32 %492 to i64
  %add.ptr1326 = getelementptr inbounds i8, i8* %arraydecay1324, i64 %idx.ext1325
  %493 = load i32, i32* %len, align 4
  %494 = load i32, i32* %written, align 4
  %sub1327 = sub nsw i32 %493, %494
  %conv1328 = sext i32 %sub1327 to i64
  %call1329 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %add.ptr1326, i64 noundef %conv1328) #7
  store i32 %call1329, i32* %ret, align 4
  %cmp1330 = icmp slt i32 %call1329, 0
  br i1 %cmp1330, label %while.body1332, label %while.end1350

while.body1332:                                   ; preds = %while.cond1323
  %495 = load i32, i32* %ret, align 4
  %cmp1333 = icmp ne i32 %495, -26880
  br i1 %cmp1333, label %land.lhs.true1335, label %if.end1344

land.lhs.true1335:                                ; preds = %while.body1332
  %496 = load i32, i32* %ret, align 4
  %cmp1336 = icmp ne i32 %496, -26752
  br i1 %cmp1336, label %land.lhs.true1338, label %if.end1344

land.lhs.true1338:                                ; preds = %land.lhs.true1335
  %497 = load i32, i32* %ret, align 4
  %cmp1339 = icmp ne i32 %497, -28672
  br i1 %cmp1339, label %if.then1341, label %if.end1344

if.then1341:                                      ; preds = %land.lhs.true1338
  %498 = load i32, i32* %ret, align 4
  %sub1342 = sub nsw i32 0, %498
  %call1343 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.174, i64 0, i64 0), i32 noundef %sub1342) #7
  br label %exit

if.end1344:                                       ; preds = %land.lhs.true1338, %land.lhs.true1335, %while.body1332
  %499 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1345 = icmp eq i32 %499, 1
  br i1 %cmp1345, label %if.then1347, label %if.end1349

if.then1347:                                      ; preds = %if.end1344
  %500 = load i32, i32* %ret, align 4
  %call1348 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %500) #7
  br label %if.end1349

if.end1349:                                       ; preds = %if.then1347, %if.end1344
  br label %while.cond1323, !llvm.loop !20

while.end1350:                                    ; preds = %while.cond1323
  %501 = load i32, i32* %frags, align 4
  %inc1351 = add nsw i32 %501, 1
  store i32 %inc1351, i32* %frags, align 4
  %502 = load i32, i32* %ret, align 4
  %503 = load i32, i32* %written, align 4
  %add1352 = add nsw i32 %503, %502
  store i32 %add1352, i32* %written, align 4
  br label %do.cond

do.cond:                                          ; preds = %while.end1350
  %504 = load i32, i32* %written, align 4
  %505 = load i32, i32* %len, align 4
  %cmp1353 = icmp slt i32 %504, %505
  br i1 %cmp1353, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  br label %if.end1384

if.else1355:                                      ; preds = %if.end1319
  br label %while.body1357

while.body1357:                                   ; preds = %if.else1355, %if.end1372
  %arraydecay1358 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %506 = load i32, i32* %len, align 4
  %conv1359 = sext i32 %506 to i64
  %call1360 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay1358, i64 noundef %conv1359) #7
  store i32 %call1360, i32* %ret, align 4
  %507 = load i32, i32* %ret, align 4
  %cmp1361 = icmp ne i32 %507, -26880
  br i1 %cmp1361, label %land.lhs.true1363, label %if.end1367

land.lhs.true1363:                                ; preds = %while.body1357
  %508 = load i32, i32* %ret, align 4
  %cmp1364 = icmp ne i32 %508, -26752
  br i1 %cmp1364, label %if.then1366, label %if.end1367

if.then1366:                                      ; preds = %land.lhs.true1363
  br label %while.end1373

if.end1367:                                       ; preds = %land.lhs.true1363, %while.body1357
  %509 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1368 = icmp eq i32 %509, 1
  br i1 %cmp1368, label %if.then1370, label %if.end1372

if.then1370:                                      ; preds = %if.end1367
  %510 = load i32, i32* %ret, align 4
  %call1371 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %510) #7
  br label %if.end1372

if.end1372:                                       ; preds = %if.then1370, %if.end1367
  br label %while.body1357

while.end1373:                                    ; preds = %if.then1366
  %511 = load i32, i32* %ret, align 4
  %cmp1374 = icmp slt i32 %511, 0
  br i1 %cmp1374, label %if.then1376, label %if.end1378

if.then1376:                                      ; preds = %while.end1373
  %512 = load i32, i32* %ret, align 4
  %call1377 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.175, i64 0, i64 0), i32 noundef %512) #7
  br label %exit

if.end1378:                                       ; preds = %while.end1373
  store i32 1, i32* %frags, align 4
  %513 = load i32, i32* %ret, align 4
  store i32 %513, i32* %written, align 4
  %514 = load i32, i32* %written, align 4
  %515 = load i32, i32* %len, align 4
  %cmp1379 = icmp slt i32 %514, %515
  br i1 %cmp1379, label %if.then1381, label %if.end1383

if.then1381:                                      ; preds = %if.end1378
  %516 = load i32, i32* %written, align 4
  %call1382 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.176, i64 0, i64 0), i32 noundef %516) #7
  br label %if.end1383

if.end1383:                                       ; preds = %if.then1381, %if.end1378
  br label %if.end1384

if.end1384:                                       ; preds = %if.end1383, %do.end
  %517 = load i32, i32* %written, align 4
  %idxprom1385 = sext i32 %517 to i64
  %arrayidx1386 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1385
  store i8 0, i8* %arrayidx1386, align 1
  %518 = load i32, i32* %written, align 4
  %519 = load i32, i32* %frags, align 4
  %arraydecay1387 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %call1388 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.177, i64 0, i64 0), i32 noundef %518, i32 noundef %519, i8* noundef %arraydecay1387) #7
  %520 = load i32, i32* %len, align 4
  %cmp1389 = icmp eq i32 %520, 0
  br i1 %cmp1389, label %if.then1391, label %if.end1392

if.then1391:                                      ; preds = %if.end1384
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  br label %send_request

if.end1392:                                       ; preds = %if.end1384
  %call1393 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.178, i64 0, i64 0)) #7
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1394 = call i32 @fflush(%struct._IO_FILE* noundef %521) #7
  %522 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1395 = icmp eq i32 %522, 0
  br i1 %cmp1395, label %if.then1397, label %if.else1444

if.then1397:                                      ; preds = %if.end1392
  br label %do.body1398

do.body1398:                                      ; preds = %do.cond1442, %if.then1397
  store i32 20000, i32* %len, align 4
  %arraydecay1399 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %call1400 = call i8* @memset(i8* noundef %arraydecay1399, i32 noundef 0, i64 noundef 20001) #6
  %arraydecay1401 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %523 = load i32, i32* %len, align 4
  %conv1402 = sext i32 %523 to i64
  %call1403 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay1401, i64 noundef %conv1402) #7
  store i32 %call1403, i32* %ret, align 4
  %524 = load i32, i32* %ret, align 4
  %cmp1404 = icmp eq i32 %524, -26880
  br i1 %cmp1404, label %if.then1409, label %lor.lhs.false1406

lor.lhs.false1406:                                ; preds = %do.body1398
  %525 = load i32, i32* %ret, align 4
  %cmp1407 = icmp eq i32 %525, -26752
  br i1 %cmp1407, label %if.then1409, label %if.end1415

if.then1409:                                      ; preds = %lor.lhs.false1406, %do.body1398
  %526 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1410 = icmp eq i32 %526, 1
  br i1 %cmp1410, label %if.then1412, label %if.end1414

if.then1412:                                      ; preds = %if.then1409
  %527 = load i32, i32* %ret, align 4
  %call1413 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %527) #7
  br label %if.end1414

if.end1414:                                       ; preds = %if.then1412, %if.then1409
  br label %do.cond1442

if.end1415:                                       ; preds = %lor.lhs.false1406
  %528 = load i32, i32* %ret, align 4
  %cmp1416 = icmp sle i32 %528, 0
  br i1 %cmp1416, label %if.then1418, label %if.end1426

if.then1418:                                      ; preds = %if.end1415
  %529 = load i32, i32* %ret, align 4
  switch i32 %529, label %sw.default1423 [
    i32 -30848, label %sw.bb1419
    i32 0, label %sw.bb1421
    i32 -80, label %sw.bb1421
  ]

sw.bb1419:                                        ; preds = %if.then1418
  %call1420 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.179, i64 0, i64 0)) #7
  store i32 0, i32* %ret, align 4
  br label %close_notify

sw.bb1421:                                        ; preds = %if.then1418, %if.then1418
  %call1422 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.180, i64 0, i64 0)) #7
  store i32 0, i32* %ret, align 4
  br label %reconnect

sw.default1423:                                   ; preds = %if.then1418
  %530 = load i32, i32* %ret, align 4
  %sub1424 = sub nsw i32 0, %530
  %call1425 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.181, i64 0, i64 0), i32 noundef %sub1424) #7
  br label %exit

if.end1426:                                       ; preds = %if.end1415
  %531 = load i32, i32* %ret, align 4
  store i32 %531, i32* %len, align 4
  %532 = load i32, i32* %len, align 4
  %idxprom1427 = sext i32 %532 to i64
  %arrayidx1428 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1427
  store i8 0, i8* %arrayidx1428, align 1
  %533 = load i32, i32* %len, align 4
  %arraydecay1429 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %call1430 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0), i32 noundef %533, i8* noundef %arraydecay1429) #7
  %534 = load i32, i32* %ret, align 4
  %cmp1431 = icmp sgt i32 %534, 0
  br i1 %cmp1431, label %land.lhs.true1433, label %if.end1441

land.lhs.true1433:                                ; preds = %if.end1426
  %535 = load i32, i32* %len, align 4
  %sub1434 = sub nsw i32 %535, 1
  %idxprom1435 = sext i32 %sub1434 to i64
  %arrayidx1436 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1435
  %536 = load i8, i8* %arrayidx1436, align 1
  %conv1437 = zext i8 %536 to i32
  %cmp1438 = icmp eq i32 %conv1437, 10
  br i1 %cmp1438, label %if.then1440, label %if.end1441

if.then1440:                                      ; preds = %land.lhs.true1433
  store i32 0, i32* %ret, align 4
  br label %do.end1443

if.end1441:                                       ; preds = %land.lhs.true1433, %if.end1426
  br label %do.cond1442

do.cond1442:                                      ; preds = %if.end1441, %if.end1414
  br i1 true, label %do.body1398, label %do.end1443

do.end1443:                                       ; preds = %do.cond1442, %if.then1440
  br label %if.end1484

if.else1444:                                      ; preds = %if.end1392
  store i32 20000, i32* %len, align 4
  %arraydecay1445 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %call1446 = call i8* @memset(i8* noundef %arraydecay1445, i32 noundef 0, i64 noundef 20001) #6
  br label %while.body1448

while.body1448:                                   ; preds = %if.else1444, %if.end1463
  %arraydecay1449 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %537 = load i32, i32* %len, align 4
  %conv1450 = sext i32 %537 to i64
  %call1451 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay1449, i64 noundef %conv1450) #7
  store i32 %call1451, i32* %ret, align 4
  %538 = load i32, i32* %ret, align 4
  %cmp1452 = icmp ne i32 %538, -26880
  br i1 %cmp1452, label %land.lhs.true1454, label %if.end1458

land.lhs.true1454:                                ; preds = %while.body1448
  %539 = load i32, i32* %ret, align 4
  %cmp1455 = icmp ne i32 %539, -26752
  br i1 %cmp1455, label %if.then1457, label %if.end1458

if.then1457:                                      ; preds = %land.lhs.true1454
  br label %while.end1464

if.end1458:                                       ; preds = %land.lhs.true1454, %while.body1448
  %540 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1459 = icmp eq i32 %540, 1
  br i1 %cmp1459, label %if.then1461, label %if.end1463

if.then1461:                                      ; preds = %if.end1458
  %541 = load i32, i32* %ret, align 4
  %call1462 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %541) #7
  br label %if.end1463

if.end1463:                                       ; preds = %if.then1461, %if.end1458
  br label %while.body1448

while.end1464:                                    ; preds = %if.then1457
  %542 = load i32, i32* %ret, align 4
  %cmp1465 = icmp sle i32 %542, 0
  br i1 %cmp1465, label %if.then1467, label %if.end1479

if.then1467:                                      ; preds = %while.end1464
  %543 = load i32, i32* %ret, align 4
  switch i32 %543, label %sw.default1476 [
    i32 -26624, label %sw.bb1468
    i32 -30848, label %sw.bb1474
  ]

sw.bb1468:                                        ; preds = %if.then1467
  %call1469 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i64 0, i64 0)) #7
  %544 = load i32, i32* %retry_left, align 4
  %dec = add nsw i32 %544, -1
  store i32 %dec, i32* %retry_left, align 4
  %cmp1470 = icmp sgt i32 %544, 0
  br i1 %cmp1470, label %if.then1472, label %if.end1473

if.then1472:                                      ; preds = %sw.bb1468
  br label %send_request

if.end1473:                                       ; preds = %sw.bb1468
  br label %exit

sw.bb1474:                                        ; preds = %if.then1467
  %call1475 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.179, i64 0, i64 0)) #7
  store i32 0, i32* %ret, align 4
  br label %close_notify

sw.default1476:                                   ; preds = %if.then1467
  %545 = load i32, i32* %ret, align 4
  %sub1477 = sub nsw i32 0, %545
  %call1478 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.181, i64 0, i64 0), i32 noundef %sub1477) #7
  br label %exit

if.end1479:                                       ; preds = %while.end1464
  %546 = load i32, i32* %ret, align 4
  store i32 %546, i32* %len, align 4
  %547 = load i32, i32* %len, align 4
  %idxprom1480 = sext i32 %547 to i64
  %arrayidx1481 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 %idxprom1480
  store i8 0, i8* %arrayidx1481, align 1
  %548 = load i32, i32* %len, align 4
  %arraydecay1482 = getelementptr inbounds [20001 x i8], [20001 x i8]* %buf, i64 0, i64 0
  %call1483 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0), i32 noundef %548, i8* noundef %arraydecay1482) #7
  store i32 0, i32* %ret, align 4
  br label %if.end1484

if.end1484:                                       ; preds = %if.end1479, %do.end1443
  %549 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  %cmp1485 = icmp ne i32 %549, 0
  br i1 %cmp1485, label %if.then1487, label %if.end1522

if.then1487:                                      ; preds = %if.end1484
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 4
  %call1488 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.184, i64 0, i64 0)) #7
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1489 = call i32 @fflush(%struct._IO_FILE* noundef %550) #7
  %call1490 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @peer_crt_info, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #6
  %call1491 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1491, i32* %ret, align 4
  %cmp1492 = icmp ne i32 %call1491, 0
  br i1 %cmp1492, label %if.then1494, label %if.end1497

if.then1494:                                      ; preds = %if.then1487
  %551 = load i32, i32* %ret, align 4
  %sub1495 = sub nsw i32 0, %551
  %call1496 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.185, i64 0, i64 0), i32 noundef %sub1495) #7
  br label %exit

if.end1497:                                       ; preds = %if.then1487
  br label %while.cond1498

while.cond1498:                                   ; preds = %if.end1519, %if.end1497
  %call1499 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1499, i32* %ret, align 4
  %cmp1500 = icmp ne i32 %call1499, 0
  br i1 %cmp1500, label %while.body1502, label %while.end1520

while.body1502:                                   ; preds = %while.cond1498
  %552 = load i32, i32* %ret, align 4
  %cmp1503 = icmp ne i32 %552, -26880
  br i1 %cmp1503, label %land.lhs.true1505, label %if.end1514

land.lhs.true1505:                                ; preds = %while.body1502
  %553 = load i32, i32* %ret, align 4
  %cmp1506 = icmp ne i32 %553, -26752
  br i1 %cmp1506, label %land.lhs.true1508, label %if.end1514

land.lhs.true1508:                                ; preds = %land.lhs.true1505
  %554 = load i32, i32* %ret, align 4
  %cmp1509 = icmp ne i32 %554, -28672
  br i1 %cmp1509, label %if.then1511, label %if.end1514

if.then1511:                                      ; preds = %land.lhs.true1508
  %555 = load i32, i32* %ret, align 4
  %sub1512 = sub nsw i32 0, %555
  %call1513 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.186, i64 0, i64 0), i32 noundef %sub1512) #7
  br label %exit

if.end1514:                                       ; preds = %land.lhs.true1508, %land.lhs.true1505, %while.body1502
  %556 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 8
  %cmp1515 = icmp eq i32 %556, 1
  br i1 %cmp1515, label %if.then1517, label %if.end1519

if.then1517:                                      ; preds = %if.end1514
  %557 = load i32, i32* %ret, align 4
  %call1518 = call i32 @idle(%struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %557) #7
  br label %if.end1519

if.end1519:                                       ; preds = %if.then1517, %if.end1514
  br label %while.cond1498, !llvm.loop !22

while.end1520:                                    ; preds = %while.cond1498
  %call1521 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %send_request

if.end1522:                                       ; preds = %if.end1484
  %558 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp1523 = icmp ne i32 %558, 0
  br i1 %cmp1523, label %if.then1525, label %if.end1618

if.then1525:                                      ; preds = %if.end1522
  %call1526 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.187, i64 0, i64 0)) #7
  %call1527 = call i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef null, i64 noundef 0, i64* noundef %buf_len) #7
  store i32 %call1527, i32* %ret, align 4
  %559 = load i32, i32* %ret, align 4
  %cmp1528 = icmp ne i32 %559, -27136
  br i1 %cmp1528, label %if.then1530, label %if.end1533

if.then1530:                                      ; preds = %if.then1525
  %560 = load i32, i32* %ret, align 4
  %sub1531 = sub nsw i32 0, %560
  %call1532 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.188, i64 0, i64 0), i32 noundef %sub1531) #7
  br label %exit

if.end1533:                                       ; preds = %if.then1525
  %561 = load i64, i64* %buf_len, align 8
  %call1534 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %561) #6
  store i8* %call1534, i8** %context_buf, align 8
  %cmp1535 = icmp eq i8* %call1534, null
  br i1 %cmp1535, label %if.then1537, label %if.end1539

if.then1537:                                      ; preds = %if.end1533
  %call1538 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.189, i64 0, i64 0)) #7
  br label %exit

if.end1539:                                       ; preds = %if.end1533
  %562 = load i64, i64* %buf_len, align 8
  store i64 %562, i64* %context_buf_len, align 8
  %563 = load i8*, i8** %context_buf, align 8
  %564 = load i64, i64* %buf_len, align 8
  %call1540 = call i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %563, i64 noundef %564, i64* noundef %buf_len) #7
  store i32 %call1540, i32* %ret, align 4
  %cmp1541 = icmp ne i32 %call1540, 0
  br i1 %cmp1541, label %if.then1543, label %if.end1546

if.then1543:                                      ; preds = %if.end1539
  %565 = load i32, i32* %ret, align 4
  %sub1544 = sub nsw i32 0, %565
  %call1545 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.188, i64 0, i64 0), i32 noundef %sub1544) #7
  br label %exit

if.end1546:                                       ; preds = %if.end1539
  %call1547 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  %566 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 8
  %call1548 = call i64 @strlen(i8* noundef %566) #8
  %cmp1549 = icmp ult i64 0, %call1548
  br i1 %cmp1549, label %if.then1551, label %if.end1582

if.then1551:                                      ; preds = %if.end1546
  %call1552 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.190, i64 0, i64 0)) #7
  %567 = load i8*, i8** %context_buf, align 8
  %568 = load i64, i64* %buf_len, align 8
  %call1553 = call i32 @mbedtls_base64_encode(i8* noundef null, i64 noundef 0, i64* noundef %b64_len, i8* noundef %567, i64 noundef %568) #7
  %569 = load i64, i64* %b64_len, align 8
  %call1554 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %569) #6
  store i8* %call1554, i8** %b64_buf, align 8
  %cmp1555 = icmp eq i8* %call1554, null
  br i1 %cmp1555, label %if.then1557, label %if.end1559

if.then1557:                                      ; preds = %if.then1551
  %call1558 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.191, i64 0, i64 0)) #7
  br label %exit

if.end1559:                                       ; preds = %if.then1551
  %570 = load i8*, i8** %b64_buf, align 8
  %571 = load i64, i64* %b64_len, align 8
  %572 = load i8*, i8** %context_buf, align 8
  %573 = load i64, i64* %buf_len, align 8
  %call1560 = call i32 @mbedtls_base64_encode(i8* noundef %570, i64 noundef %571, i64* noundef %b64_len, i8* noundef %572, i64 noundef %573) #7
  store i32 %call1560, i32* %ret, align 4
  %cmp1561 = icmp ne i32 %call1560, 0
  br i1 %cmp1561, label %if.then1563, label %if.end1566

if.then1563:                                      ; preds = %if.end1559
  %574 = load i32, i32* %ret, align 4
  %sub1564 = sub nsw i32 0, %574
  %call1565 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.192, i64 0, i64 0), i32 noundef %sub1564) #7
  %575 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %575) #6
  br label %exit

if.end1566:                                       ; preds = %if.end1559
  %576 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 8
  %call1567 = call %struct._IO_FILE* @fopen(i8* noundef %576, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call1567, %struct._IO_FILE** %b64_file, align 8
  %cmp1568 = icmp eq %struct._IO_FILE* %call1567, null
  br i1 %cmp1568, label %if.then1570, label %if.end1572

if.then1570:                                      ; preds = %if.end1566
  %577 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 8
  %call1571 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.194, i64 0, i64 0), i8* noundef %577) #7
  %578 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %578) #6
  br label %exit

if.end1572:                                       ; preds = %if.end1566
  %579 = load i64, i64* %b64_len, align 8
  %580 = load i8*, i8** %b64_buf, align 8
  %581 = load i64, i64* %b64_len, align 8
  %582 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call1573 = call i64 @fwrite(i8* noundef %580, i64 noundef 1, i64 noundef %581, %struct._IO_FILE* noundef %582) #7
  %cmp1574 = icmp ne i64 %579, %call1573
  br i1 %cmp1574, label %if.then1576, label %if.end1579

if.then1576:                                      ; preds = %if.end1572
  %583 = load i64, i64* %b64_len, align 8
  %call1577 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.195, i64 0, i64 0), i64 noundef %583) #7
  %584 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %584) #6
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call1578 = call i32 @fclose(%struct._IO_FILE* noundef %585) #7
  br label %exit

if.end1579:                                       ; preds = %if.end1572
  %586 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %586) #6
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call1580 = call i32 @fclose(%struct._IO_FILE* noundef %587) #7
  %call1581 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i64 0, i64 0)) #7
  br label %if.end1582

if.end1582:                                       ; preds = %if.end1579, %if.end1546
  %588 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp1583 = icmp eq i32 %588, 1
  br i1 %cmp1583, label %if.then1585, label %if.end1587

if.then1585:                                      ; preds = %if.end1582
  %call1586 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i64 0, i64 0)) #7
  br label %if.end1587

if.end1587:                                       ; preds = %if.then1585, %if.end1582
  %589 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp1588 = icmp eq i32 %589, 2
  br i1 %cmp1588, label %if.then1590, label %if.end1608

if.then1590:                                      ; preds = %if.end1587
  %call1591 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.198, i64 0, i64 0)) #7
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #7
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #7
  %call1592 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #7
  store i32 %call1592, i32* %ret, align 4
  %cmp1593 = icmp ne i32 %call1592, 0
  br i1 %cmp1593, label %if.then1595, label %if.end1598

if.then1595:                                      ; preds = %if.then1590
  %590 = load i32, i32* %ret, align 4
  %sub1596 = sub nsw i32 0, %590
  %call1597 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.136, i64 0, i64 0), i32 noundef %sub1596) #7
  br label %exit

if.end1598:                                       ; preds = %if.then1590
  %591 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp1599 = icmp eq i32 %591, 2
  br i1 %cmp1599, label %if.then1601, label %if.else1602

if.then1601:                                      ; preds = %if.end1598
  %592 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %592, i32 (i8*, i8*, i64)* noundef @delayed_send, i32 (i8*, i8*, i64)* noundef @delayed_recv, i32 (i8*, i8*, i64, i32)* noundef null) #7
  br label %if.end1606

if.else1602:                                      ; preds = %if.end1598
  %593 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  %594 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp1603 = icmp eq i32 %594, 0
  %595 = zext i1 %cmp1603 to i64
  %cond1605 = select i1 %cmp1603, i32 (i8*, i8*, i64, i32)* @mbedtls_net_recv_timeout, i32 (i8*, i8*, i64, i32)* null
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %593, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef %cond1605) #7
  br label %if.end1606

if.end1606:                                       ; preds = %if.else1602, %if.then1601
  %596 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %596, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #7
  %call1607 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %if.end1608

if.end1608:                                       ; preds = %if.end1606, %if.end1587
  %call1609 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.199, i64 0, i64 0)) #7
  %597 = load i8*, i8** %context_buf, align 8
  %598 = load i64, i64* %buf_len, align 8
  %call1610 = call i32 @mbedtls_ssl_context_load(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %597, i64 noundef %598) #7
  store i32 %call1610, i32* %ret, align 4
  %cmp1611 = icmp ne i32 %call1610, 0
  br i1 %cmp1611, label %if.then1613, label %if.end1616

if.then1613:                                      ; preds = %if.end1608
  %599 = load i32, i32* %ret, align 4
  %sub1614 = sub nsw i32 0, %599
  %call1615 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.200, i64 0, i64 0), i32 noundef %sub1614) #7
  br label %exit

if.end1616:                                       ; preds = %if.end1608
  %600 = load i8*, i8** %context_buf, align 8
  call void @free(i8* noundef %600) #6
  store i8* null, i8** %context_buf, align 8
  store i64 0, i64* %context_buf_len, align 8
  %call1617 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %if.end1618

if.end1618:                                       ; preds = %if.end1616, %if.end1522
  %601 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25), align 4
  %dec1619 = add nsw i32 %601, -1
  store i32 %dec1619, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25), align 4
  %cmp1620 = icmp sgt i32 %dec1619, 0
  br i1 %cmp1620, label %if.then1622, label %if.end1623

if.then1622:                                      ; preds = %if.end1618
  br label %send_request

if.end1623:                                       ; preds = %if.end1618
  br label %close_notify

close_notify:                                     ; preds = %if.end1623, %sw.bb1474, %sw.bb1419
  %call1624 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.201, i64 0, i64 0)) #7
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1625 = call i32 @fflush(%struct._IO_FILE* noundef %602) #7
  %603 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 4
  %cmp1626 = icmp eq i32 %603, 0
  br i1 %cmp1626, label %if.then1628, label %if.end1635

if.then1628:                                      ; preds = %close_notify
  br label %do.body1629

do.body1629:                                      ; preds = %do.cond1631, %if.then1628
  %call1630 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1630, i32* %ret, align 4
  br label %do.cond1631

do.cond1631:                                      ; preds = %do.body1629
  %604 = load i32, i32* %ret, align 4
  %cmp1632 = icmp eq i32 %604, -26752
  br i1 %cmp1632, label %do.body1629, label %do.end1634, !llvm.loop !23

do.end1634:                                       ; preds = %do.cond1631
  store i32 0, i32* %ret, align 4
  br label %if.end1635

if.end1635:                                       ; preds = %do.end1634, %close_notify
  %call1636 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.202, i64 0, i64 0)) #7
  br label %reconnect

reconnect:                                        ; preds = %if.end1635, %sw.bb1421
  %605 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %cmp1637 = icmp ne i32 %605, 0
  br i1 %cmp1637, label %if.then1639, label %if.end1715

if.then1639:                                      ; preds = %reconnect
  %606 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  %dec1640 = add nsw i32 %606, -1
  store i32 %dec1640, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 8
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #7
  %607 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 4
  %cmp1641 = icmp sgt i32 %607, 0
  br i1 %cmp1641, label %if.then1643, label %if.end1645

if.then1643:                                      ; preds = %if.then1639
  %608 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 4
  %mul = mul nsw i32 1000000, %608
  %conv1644 = sext i32 %mul to i64
  call void @mbedtls_net_usleep(i64 noundef %conv1644) #7
  br label %if.end1645

if.end1645:                                       ; preds = %if.then1643, %if.then1639
  %call1646 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.203, i64 0, i64 0)) #7
  %call1647 = call i8* @memset(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @peer_crt_info, i64 0, i64 0), i32 noundef 0, i64 noundef 1024) #6
  %call1648 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1648, i32* %ret, align 4
  %cmp1649 = icmp ne i32 %call1648, 0
  br i1 %cmp1649, label %if.then1651, label %if.end1654

if.then1651:                                      ; preds = %if.end1645
  %609 = load i32, i32* %ret, align 4
  %sub1652 = sub nsw i32 0, %609
  %call1653 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.185, i64 0, i64 0), i32 noundef %sub1652) #7
  br label %exit

if.end1654:                                       ; preds = %if.end1645
  %610 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 8
  %cmp1655 = icmp eq i32 %610, 1
  br i1 %cmp1655, label %if.then1657, label %if.end1665

if.then1657:                                      ; preds = %if.end1654
  %611 = load i8*, i8** %session_data, align 8
  %612 = load i64, i64* %session_data_len, align 8
  %call1658 = call i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef %saved_session, i8* noundef %611, i64 noundef %612) #7
  store i32 %call1658, i32* %ret, align 4
  %cmp1659 = icmp ne i32 %call1658, 0
  br i1 %cmp1659, label %if.then1661, label %if.end1664

if.then1661:                                      ; preds = %if.then1657
  %613 = load i32, i32* %ret, align 4
  %sub1662 = sub nsw i32 0, %613
  %call1663 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.204, i64 0, i64 0), i32 noundef %sub1662) #7
  br label %exit

if.end1664:                                       ; preds = %if.then1657
  br label %if.end1665

if.end1665:                                       ; preds = %if.end1664, %if.end1654
  %call1666 = call i32 @mbedtls_ssl_set_session(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_session* noundef %saved_session) #7
  store i32 %call1666, i32* %ret, align 4
  %cmp1667 = icmp ne i32 %call1666, 0
  br i1 %cmp1667, label %if.then1669, label %if.end1672

if.then1669:                                      ; preds = %if.end1665
  %614 = load i32, i32* %ret, align 4
  %sub1670 = sub nsw i32 0, %614
  %call1671 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.205, i64 0, i64 0), i32 noundef %sub1670) #7
  br label %exit

if.end1672:                                       ; preds = %if.end1665
  %615 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %616 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %617 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 8
  %cmp1673 = icmp eq i32 %617, 0
  %618 = zext i1 %cmp1673 to i64
  %cond1675 = select i1 %cmp1673, i32 0, i32 1
  %call1676 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %615, i8* noundef %616, i32 noundef %cond1675) #7
  store i32 %call1676, i32* %ret, align 4
  %cmp1677 = icmp ne i32 %call1676, 0
  br i1 %cmp1677, label %if.then1679, label %if.end1682

if.then1679:                                      ; preds = %if.end1672
  %619 = load i32, i32* %ret, align 4
  %sub1680 = sub nsw i32 0, %619
  %call1681 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.141, i64 0, i64 0), i32 noundef %sub1680) #7
  br label %exit

if.end1682:                                       ; preds = %if.end1672
  %620 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 4
  %cmp1683 = icmp sgt i32 %620, 0
  br i1 %cmp1683, label %if.then1685, label %if.else1687

if.then1685:                                      ; preds = %if.end1682
  %call1686 = call i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef %server_fd) #7
  store i32 %call1686, i32* %ret, align 4
  br label %if.end1689

if.else1687:                                      ; preds = %if.end1682
  %call1688 = call i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef %server_fd) #7
  store i32 %call1688, i32* %ret, align 4
  br label %if.end1689

if.end1689:                                       ; preds = %if.else1687, %if.then1685
  %621 = load i32, i32* %ret, align 4
  %cmp1690 = icmp ne i32 %621, 0
  br i1 %cmp1690, label %if.then1692, label %if.end1695

if.then1692:                                      ; preds = %if.end1689
  %622 = load i32, i32* %ret, align 4
  %sub1693 = sub nsw i32 0, %622
  %call1694 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.142, i64 0, i64 0), i32 noundef %sub1693) #7
  br label %exit

if.end1695:                                       ; preds = %if.end1689
  br label %while.cond1696

while.cond1696:                                   ; preds = %if.end1712, %if.end1695
  %call1697 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #7
  store i32 %call1697, i32* %ret, align 4
  %cmp1698 = icmp ne i32 %call1697, 0
  br i1 %cmp1698, label %while.body1700, label %while.end1713

while.body1700:                                   ; preds = %while.cond1696
  %623 = load i32, i32* %ret, align 4
  %cmp1701 = icmp ne i32 %623, -26880
  br i1 %cmp1701, label %land.lhs.true1703, label %if.end1712

land.lhs.true1703:                                ; preds = %while.body1700
  %624 = load i32, i32* %ret, align 4
  %cmp1704 = icmp ne i32 %624, -26752
  br i1 %cmp1704, label %land.lhs.true1706, label %if.end1712

land.lhs.true1706:                                ; preds = %land.lhs.true1703
  %625 = load i32, i32* %ret, align 4
  %cmp1707 = icmp ne i32 %625, -28672
  br i1 %cmp1707, label %if.then1709, label %if.end1712

if.then1709:                                      ; preds = %land.lhs.true1706
  %626 = load i32, i32* %ret, align 4
  %sub1710 = sub nsw i32 0, %626
  %call1711 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.186, i64 0, i64 0), i32 noundef %sub1710) #7
  br label %exit

if.end1712:                                       ; preds = %land.lhs.true1706, %land.lhs.true1703, %while.body1700
  br label %while.cond1696, !llvm.loop !24

while.end1713:                                    ; preds = %while.cond1696
  %call1714 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i64 0, i64 0)) #7
  br label %send_request

if.end1715:                                       ; preds = %reconnect
  br label %exit

exit:                                             ; preds = %if.end1715, %if.then1709, %if.then1692, %if.then1679, %if.then1669, %if.then1661, %if.then1651, %if.then1613, %if.then1595, %if.then1576, %if.then1570, %if.then1563, %if.then1557, %if.then1543, %if.then1537, %if.then1530, %if.then1511, %if.then1494, %sw.default1476, %if.end1473, %sw.default1423, %if.then1376, %if.then1341, %if.then1259, %if.then1214, %if.then1206, %if.then1199, %if.then1191, %if.then1153, %if.then1125, %if.then1081, %if.end1072, %if.then1045, %if.then1032, %if.then1000, %if.then984, %if.then969, %if.then948, %if.then912, %if.then888, %if.then857, %if.then843, %if.then824, %if.then803, %if.then734, %if.then686, %for.end675, %if.then569, %if.then415, %while.end
  %627 = load i32, i32* %ret, align 4
  %cmp1716 = icmp ne i32 %627, 0
  br i1 %cmp1716, label %if.then1718, label %if.end1723

if.then1718:                                      ; preds = %exit
  %628 = load i32, i32* %ret, align 4
  %arraydecay1719 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %628, i8* noundef %arraydecay1719, i64 noundef 100) #7
  %629 = load i32, i32* %ret, align 4
  %sub1720 = sub nsw i32 0, %629
  %arraydecay1721 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call1722 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.206, i64 0, i64 0), i32 noundef %sub1720, i8* noundef %arraydecay1721) #7
  br label %if.end1723

if.end1723:                                       ; preds = %if.then1718, %exit
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #7
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #7
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #7
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %saved_session) #7
  %630 = load i8*, i8** %session_data, align 8
  %cmp1724 = icmp ne i8* %630, null
  br i1 %cmp1724, label %if.then1726, label %if.end1727

if.then1726:                                      ; preds = %if.end1723
  %631 = load i8*, i8** %session_data, align 8
  %632 = load i64, i64* %session_data_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %631, i64 noundef %632) #7
  br label %if.end1727

if.end1727:                                       ; preds = %if.then1726, %if.end1723
  %633 = load i8*, i8** %session_data, align 8
  call void @free(i8* noundef %633) #6
  %634 = load i8*, i8** %context_buf, align 8
  %cmp1728 = icmp ne i8* %634, null
  br i1 %cmp1728, label %if.then1730, label %if.end1731

if.then1730:                                      ; preds = %if.end1727
  %635 = load i8*, i8** %context_buf, align 8
  %636 = load i64, i64* %context_buf_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %635, i64 noundef %636) #7
  br label %if.end1731

if.end1731:                                       ; preds = %if.then1730, %if.end1727
  %637 = load i8*, i8** %context_buf, align 8
  call void @free(i8* noundef %637) #6
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %clicert) #7
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #7
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #7
  call void @rng_free(%struct.rng_context_t* noundef %rng) #7
  %638 = load i32, i32* %ret, align 4
  %cmp1732 = icmp slt i32 %638, 0
  br i1 %cmp1732, label %if.then1734, label %if.end1735

if.then1734:                                      ; preds = %if.end1731
  store i32 1, i32* %ret, align 4
  br label %if.end1735

if.end1735:                                       ; preds = %if.then1734, %if.end1731
  %639 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 8
  %cmp1736 = icmp eq i32 %639, 0
  br i1 %cmp1736, label %if.then1738, label %if.else1739

if.then1738:                                      ; preds = %if.end1735
  %640 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %640) #9
  unreachable

if.else1739:                                      ; preds = %if.end1735
  %641 = load i32, i32* %query_config_ret, align 4
  call void @exit(i32 noundef %641) #9
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #2

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @rng_init(%struct.rng_context_t* noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32* @mbedtls_ssl_list_ciphersuites() #2

declare dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef) #2

declare dso_local i32 @query_config(i8* noundef) #2

declare dso_local i32 @key_opaque_alg_parse(i8* noundef, i8** noundef, i8** noundef) #2

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

declare dso_local i32 @mbedtls_test_unhexify(i8* noundef, i64 noundef, i8* noundef, i64* noundef) #2

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @rng_seed(%struct.rng_context_t* noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @rng_get(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_cert_profile(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt_profile* noundef) #2

declare dso_local void @mbedtls_ssl_conf_sig_algs(%struct.mbedtls_ssl_config* noundef, i16* noundef) #2

declare dso_local void @mbedtls_ssl_conf_verify(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_verify(i8* noundef %data, %struct.mbedtls_x509_crt* noundef %crt, i32 noundef %depth, i32* noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
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
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.207, i64 0, i64 0), i32 noundef %1) #7
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %call1 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay, i64 noundef 1023, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %2) #7
  %3 = load i32, i32* %depth.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call3 = call i8* @memcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @peer_crt_info, i64 0, i64 0), i8* noundef %arraydecay2, i64 noundef 1024) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay7) #7
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32, i32* %5, align 4
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.208, i64 0, i64 0)) #7
  br label %if.end16

if.else:                                          ; preds = %if.end6
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %7 = load i32*, i32** %flags.addr, align 8
  %8 = load i32, i32* %7, align 4
  %call13 = call i32 @x509_crt_verify_info(i8* noundef %arraydecay12, i64 noundef 1024, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i64 0, i64 0), i32 noundef %8) #7
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i64 0, i64 0), i8* noundef %arraydecay14) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then5
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_handshake_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_set_datagram_packing(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_max_frag_len(%struct.mbedtls_ssl_config* noundef, i8 noundef zeroext) #2

declare dso_local void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

declare dso_local void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

declare dso_local void @mbedtls_ssl_conf_dhm_min_bitlen(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef, i8** noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef, void (i8*, i32, i8*, i32, i8*)* noundef, i8* noundef) #2

declare dso_local void @my_debug(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_session_tickets(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef, i32* noundef) #2

declare dso_local void @mbedtls_ssl_conf_legacy_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_ssl_conf_groups(%struct.mbedtls_ssl_config* noundef, i16* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_conf_min_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %tls_version) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %tls_version.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %tls_version, i32* %tls_version.addr, align 4
  %0 = load i32, i32* %tls_version.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 1
  store i32 %0, i32* %min_tls_version, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_conf_max_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %tls_version) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %tls_version.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %tls_version, i32* %tls_version.addr, align 4
  %0 = load i32, i32* %tls_version.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 0
  store i32 %0, i32* %max_tls_version, align 8
  ret void
}

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_set_verify(%struct.mbedtls_ssl_context* noundef, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #2

declare dso_local void @mbedtls_ssl_set_mtu(%struct.mbedtls_ssl_context* noundef, i16 noundef zeroext) #2

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #2

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #2

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef) #2

declare dso_local i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @idle(%struct.mbedtls_net_context* noundef, %struct.mbedtls_timing_delay_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_id_from_ssl(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i8* @mbedtls_ssl_get_version(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_ssl_ciphersuite_get_name(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

declare dso_local i64 @mbedtls_ssl_ciphersuite_get_cipher_key_bitlen(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_max_in_record_payload(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i8* @mbedtls_ssl_get_alpn_protocol(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_tls_prf(i32 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_session(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_base64_encode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_context_load(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #2

declare dso_local void @mbedtls_net_usleep(i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_set_session(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @rng_free(%struct.rng_context_t* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
