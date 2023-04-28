; ModuleID = 'ssl/ssl_server2.c'
source_filename = "ssl/ssl_server2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i32, i32, i32, i32, i32, i16, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, [2 x i32], i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.rng_context_t = type { %struct.mbedtls_entropy_context, %struct.mbedtls_ctr_drbg_context }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_net_context = type { i32 }
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
%struct._sni_entry = type { i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_pk_context*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32, %struct._sni_entry* }
%struct._psk_entry = type { i8*, i64, [32 x i8], %struct._psk_entry* }
%struct.mbedtls_ssl_cookie_ctx = type { %struct.mbedtls_md_context_t, i64 }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ssl_cache_context = type { %struct.mbedtls_ssl_cache_entry*, i32, i32 }
%struct.mbedtls_ssl_cache_entry = type { i64, [32 x i8], i64, i8*, i64, %struct.mbedtls_ssl_cache_entry* }
%struct.mbedtls_ssl_ticket_context = type { [2 x %struct.mbedtls_ssl_ticket_key], i8, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_ssl_ticket_key = type { [4 x i8], i32, %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
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
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rng = dso_local global %struct.rng_context_t zeroinitializer, align 8
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@received_sigterm = internal global i32 0, align 4
@listen_fd = internal global %struct.mbedtls_net_context zeroinitializer, align 4
@client_fd = internal global %struct.mbedtls_net_context zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"ssl_server2\00", align 1
@mbedtls_x509_crt_profile_default = external dso_local constant %struct.mbedtls_x509_crt_profile, align 4
@.str.33 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@.str.34 = private unnamed_addr constant [1365 x i8] c"\0A usage: ssl_server2 param=<>...\0A\0A acceptable parameters:\0A    server_addr=%%s      default: (all interfaces)\0A    server_port=%%d      default: 4433\0A    debug_level=%%d      default: 0 (disabled)\0A    buffer_size=%%d      default: 200 \0A                         (minimum: 1)\0A    response_size=%%d    default: about 152 (basic response)\0A                          (minimum: 0, max: 16384)\0A                          increases buffer_size if bigger\0A    nbio=%%d             default: 0 (blocking I/O)\0A                        options: 1 (non-blocking), 2 (added delays)\0A    event=%%d            default: 0 (loop)\0A                        options: 1 (level-triggered, implies nbio=1),\0A    read_timeout=%%d     default: 0 ms (no timeout)\0A\0A    dtls=%%d             default: 0 (TLS)\0A    hs_timeout=%%d-%%d    default: (library default: 1000-60000)\0A                        range of DTLS handshake timeouts in millisecs\0A    mtu=%%d              default: (library default: unlimited)\0A    dgram_packing=%%d    default: 1 (allowed)\0A                        allow or forbid packing of multiple\0A                        records within a single datgram.\0A    cookies=0/1/-1      default: 1 (enabled)\0A                        0: disabled, -1: library default (broken)\0A    anti_replay=0/1     default: (library default: enabled)\0A    badmac_limit=%%d     default: (library default: disabled)\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [2065 x i8] c"    auth_mode=%%s        default: (library default: none)\0A                        options: none, optional, required\0A    cert_req_ca_list=%%d default: 1 (send ca list)\0A                        options: 1 (send ca list), 0 (don't send)\0A                                 2 (send conf dn hint), 3 (send hs dn hint)\0A    ca_file=%%s          The single file containing the top-level CA(s) you fully trust\0A                        default: \22\22 (pre-loaded)\0A                        use \22none\22 to skip loading any top-level CAs.\0A    ca_path=%%s          The path containing the top-level CA(s) you fully trust\0A                        default: \22\22 (pre-loaded) (overrides ca_file)\0A                        use \22none\22 to skip loading any top-level CAs.\0A    crt_file=%%s         Your own cert and chain (in bottom to top order, top may be omitted)\0A                        default: see note after key_file2\0A    key_file=%%s         default: see note after key_file2\0A    key_pwd=%%s          Password for key specified by key_file argument\0A                        default: none\0A    crt_file2=%%s        Your second cert and chain (in bottom to top order, top may be omitted)\0A                        default: see note after key_file2\0A    key_file2=%%s        default: see note below\0A                        note: if neither crt_file/key_file nor crt_file2/key_file2 are used,\0A                              preloaded certificate(s) and key(s) are used if available\0A    key_pwd2=%%s         Password for key specified by key_file2 argument\0A                        default: none\0A    dhm_file=%%s        File containing Diffie-Hellman parameters\0A                       default: preloaded parameters\0A\0A    psk=%%s              default: \22\22 (disabled)\0A                          The PSK values are in hex, without 0x.\0A    psk_list=%%s         default: \22\22\0A                          A list of (PSK identity, PSK value) pairs.\0A                          The PSK values are in hex, without 0x.\0A                          id1,psk1[,id2,psk2[,...]]\0A    psk_identity=%%s     default: \22Client_identity\22\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [2067 x i8] c"    allow_legacy=%%d     default: (library default: no)\0A    renegotiation=%%d    default: 0 (disabled)\0A    renegotiate=%%d      default: 0 (disabled)\0A    renego_delay=%%d     default: -2 (library default)\0A    renego_period=%%d    default: (2^64 - 1 for TLS, 2^48 - 1 for DTLS)\0A    exchanges=%%d        default: 1\0A\0A    tickets=%%d          default: 1 (enabled)\0A    ticket_rotate=%%d    default: 0 (disabled)\0A    ticket_timeout=%%d   default: 86400 (one day)\0A    ticket_aead=%%s      default: \22AES-256-GCM\22\0A    eap_tls=%%d          default: 0 (disabled)\0A    reproducible=0/1     default: 0 (disabled)\0A    nss_keylog=%%d          default: 0 (disabled)\0A                             This cannot be used with eap_tls=1\0A    nss_keylog_file=%%s\0A    cache_max=%%d        default: cache default (50)\0A    cache_timeout=%%d    default: cache default (1d)\0A    max_frag_len=%%d     default: 16384 (tls default)\0A                        options: 512, 1024, 2048, 4096\0A    alpn=%%s             default: \22\22 (disabled)\0A                        example: spdy/1,http/1.1\0A    extended_ms=0/1     default: (library default: on)\0A    etm=0/1             default: (library default: on)\0A    curves=a,b,c,d      default: \22default\22 (library default)\0A                        example: \22secp521r1,brainpoolP512r1\22\0A                        - use \22none\22 for empty list\0A                        - see mbedtls_ecp_curve_list()\0A                          for acceptable curve names\0A    key_opaque_algs=%%s  Allowed opaque key 1 algorithms.\0A                        comma-separated pair of values among the following:\0A                        rsa-sign-pkcs1, rsa-sign-pss, rsa-decrypt,\0A                        ecdsa-sign, ecdh, none (only acceptable for\0A                        the second value).\0A    key_opaque_algs2=%%s Allowed opaque key 2 algorithms.\0A                        comma-separated pair of values among the following:\0A                        rsa-sign-pkcs1, rsa-sign-pss, rsa-decrypt,\0A                        ecdsa-sign, ecdh, none (only acceptable for\0A                        the second value).\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [1150 x i8] c"    sni=%%s              name1,cert1,key1,ca1,crl,auth1[,...]\0A                        default: disabled\0A    allow_sha1=%%d       default: 0\0A    min_version=%%s      default: (library default: tls12)\0A    max_version=%%s      default: (library default: tls12)\0A    force_version=%%s    default: \22\22 (none)\0A                         options: tls12, dtls12\0A\0A    force_ciphersuite=<name>    default: all enabled\0A    query_config=<name>         return 0 if the specified\0A                                configuration macro is defined and 1\0A                                otherwise. The expansion of the macro\0A                                is printed if it is defined\0A    serialize=%%d        default: 0 (do not serialize/deserialize)\0A                        options: 1 (serialize)\0A                                 2 (serialize with re-initialization)\0A    context_file=%%s     The file path to write a serialized connection\0A                        in the form of base64 code (serialize option\0A                        must be set)\0A                         default: \22\22 (do nothing)\0A                         option: a file path\0A acceptable ciphersuite names:\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" %-42s\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Client_identity\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"server_addr\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"dtls\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"nbio\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"read_timeout\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"response_size\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"ca_file\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"ca_path\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"crt_file\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"key_file\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"key_pwd\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"crt_file2\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"key_file2\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"key_pwd2\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"dhm_file\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"psk_identity\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"psk_list\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ecjpake_pw\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"force_ciphersuite\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"renegotiation\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"allow_legacy\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"renegotiate\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"renego_delay\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"renego_period\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"exchanges\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"min_version\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"tls12\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"dtls12\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"max_version\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"allow_sha1\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"force_version\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"auth_mode\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"cert_req_ca_list\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"max_frag_len\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"512\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"alpn\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"trunc_hmac\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"extended_ms\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"etm\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"tickets\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"ticket_rotate\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"ticket_timeout\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"ticket_aead\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"cache_max\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"cache_timeout\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"anti_replay\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"badmac_limit\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"hs_timeout\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"dgram_packing\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"sni\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"query_config\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"context_file\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"eap_tls\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"reproducible\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"nss_keylog\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"nss_keylog_file\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"use_srtp\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"srtp_force_profile\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"support_mki\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"key_opaque_algs\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"key_opaque_algs2\00", align 1
@.str.116 = private unnamed_addr constant [64 x i8] c"Error: eap_tls and nss_keylog options cannot be used together.\0A\00", align 1
@.str.117 = private unnamed_addr constant [54 x i8] c"Warning: event-driven IO mandates nbio=1 - overwrite\0A\00", align 1
@.str.118 = private unnamed_addr constant [116 x i8] c"HTTP/1.0 200 OK\0D\0AContent-Type: text/html\0D\0A\0D\0A<h2>mbed TLS Test Server</h2>\0D\0A<p>Successful connection using: %s</p>\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"Could not allocate %lu bytes\0A\00", align 1
@.str.120 = private unnamed_addr constant [59 x i8] c"forced ciphersuite not allowed with this protocol version\0A\00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"pre-shared key not valid hex\0A\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"psk_list invalid\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"unknown curve %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"supported curves: \00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"Number of curves: %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"curves list too long, maximum %d\00", align 1
@.str.129 = private unnamed_addr constant [44 x i8] c"\0A  . Seeding the random number generator...\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.130 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.131 = private unnamed_addr constant [40 x i8] c"  . Loading the CA root certificate ...\00", align 1
@mbedtls_test_cas = external dso_local global [0 x i8*], align 8
@mbedtls_test_cas_len = external dso_local constant [0 x i64], align 8
@mbedtls_test_cas_der = external dso_local global [0 x i8*], align 8
@mbedtls_test_cas_der_len = external dso_local constant [0 x i64], align 8
@.str.132 = private unnamed_addr constant [53 x i8] c" failed\0A  !  mbedtls_x509_crt_parse returned -0x%x\0A\0A\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c" ok (%d skipped)\0A\00", align 1
@.str.134 = private unnamed_addr constant [40 x i8] c"  . Loading the server cert. and key...\00", align 1
@.str.135 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_file returned -0x%x\0A\0A\00", align 1
@.str.136 = private unnamed_addr constant [55 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile returned -0x%x\0A\0A\00", align 1
@.str.137 = private unnamed_addr constant [55 x i8] c" failed\0A  !  crt_file without key_file or vice-versa\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [61 x i8] c" failed\0A  !  mbedtls_x509_crt_parse_file(2) returned -0x%x\0A\0A\00", align 1
@.str.139 = private unnamed_addr constant [58 x i8] c" failed\0A  !  mbedtls_pk_parse_keyfile(2) returned -0x%x\0A\0A\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c" failed\0A  !  crt_file2 without key_file2 or vice-versa\0A\0A\00", align 1
@mbedtls_test_srv_crt_rsa = external dso_local constant [0 x i8], align 1
@mbedtls_test_srv_crt_rsa_len = external dso_local constant i64, align 8
@mbedtls_test_srv_key_rsa = external dso_local constant [0 x i8], align 1
@mbedtls_test_srv_key_rsa_len = external dso_local constant i64, align 8
@.str.141 = private unnamed_addr constant [51 x i8] c" failed\0A  !  mbedtls_pk_parse_key returned -0x%x\0A\0A\00", align 1
@mbedtls_test_srv_crt_ec = external dso_local constant [0 x i8], align 1
@mbedtls_test_srv_crt_ec_len = external dso_local constant i64, align 8
@.str.142 = private unnamed_addr constant [46 x i8] c" failed\0A  !  x509_crt_parse2 returned -0x%x\0A\0A\00", align 1
@mbedtls_test_srv_key_ec = external dso_local constant [0 x i8], align 1
@mbedtls_test_srv_key_ec_len = external dso_local constant i64, align 8
@.str.143 = private unnamed_addr constant [44 x i8] c" failed\0A  !  pk_parse_key2 returned -0x%x\0A\0A\00", align 1
@.str.144 = private unnamed_addr constant [25 x i8] c" ok (key types: %s, %s)\0A\00", align 1
@.str.145 = private unnamed_addr constant [30 x i8] c"  . Loading DHM parameters...\00", align 1
@.str.146 = private unnamed_addr constant [57 x i8] c" failed\0A  ! mbedtls_dhm_parse_dhmfile returned -0x%04X\0A\0A\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"  . Setting up SNI information...\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c" failed\0A\00", align 1
@.str.149 = private unnamed_addr constant [40 x i8] c"  . Setting up the SSL/TLS structure...\00", align 1
@.str.150 = private unnamed_addr constant [57 x i8] c" failed\0A  ! mbedtls_ssl_config_defaults returned -0x%x\0A\0A\00", align 1
@.str.151 = private unnamed_addr constant [56 x i8] c" failed\0A  ! mbedtls_ssl_conf_max_frag_len returned %d\0A\0A\00", align 1
@.str.152 = private unnamed_addr constant [58 x i8] c" failed\0A  ! mbedtls_ssl_conf_alpn_protocols returned %d\0A\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.153 = private unnamed_addr constant [57 x i8] c"Warning: reproducible option used without constant time\0A\00", align 1
@.str.154 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_ticket_setup returned %d\0A\0A\00", align 1
@.str.155 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_ticket_rotate returned %d\0A\0A\00", align 1
@.str.156 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_cookie_setup returned %d\0A\0A\00", align 1
@.str.157 = private unnamed_addr constant [52 x i8] c" failed\0A  ! mbedtls_ssl_conf_own_cert returned %d\0A\0A\00", align 1
@.str.158 = private unnamed_addr constant [51 x i8] c"  failed\0A  mbedtls_ssl_conf_psk returned -0x%04X\0A\0A\00", align 1
@.str.159 = private unnamed_addr constant [56 x i8] c"  failed\0A  mbedtls_ssl_conf_dh_param returned -0x%04X\0A\0A\00", align 1
@.str.160 = private unnamed_addr constant [47 x i8] c" failed\0A  ! mbedtls_ssl_setup returned -0x%x\0A\0A\00", align 1
@.str.161 = private unnamed_addr constant [28 x i8] c"  . Bind on %s://%s:%s/ ...\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.165 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_bind returned -0x%x\0A\0A\00", align 1
@.str.166 = private unnamed_addr constant [47 x i8] c" interrupted by SIGTERM (not in net_accept())\0A\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"  ! Client initiated reconnection from same port\0A\00", align 1
@.str.168 = private unnamed_addr constant [26 x i8] c"Last error was: %d - %s\0A\0A\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"  . Waiting for a remote connection ...\00", align 1
@.str.170 = private unnamed_addr constant [43 x i8] c" interrupted by SIGTERM (in net_accept())\0A\00", align 1
@.str.171 = private unnamed_addr constant [48 x i8] c" failed\0A  ! mbedtls_net_accept returned -0x%x\0A\0A\00", align 1
@.str.172 = private unnamed_addr constant [50 x i8] c" failed\0A  ! net_set_(non)block() returned -0x%x\0A\0A\00", align 1
@.str.173 = private unnamed_addr constant [67 x i8] c" failed\0A  ! mbedtls_ssl_set_client_transport_id() returned -0x%x\0A\0A\00", align 1
@.str.174 = private unnamed_addr constant [40 x i8] c"  . Performing the SSL/TLS handshake...\00", align 1
@.str.175 = private unnamed_addr constant [31 x i8] c" hello verification requested\0A\00", align 1
@.str.176 = private unnamed_addr constant [51 x i8] c" failed\0A  ! mbedtls_ssl_handshake returned -0x%x\0A\0A\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.179 = private unnamed_addr constant [77 x i8] c" ok\0A    [ Protocol is %s ]\0A    [ Ciphersuite is %s ]\0A    [ Key size is %u ]\0A\00", align 1
@.str.180 = private unnamed_addr constant [32 x i8] c"    [ Record expansion is %d ]\0A\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"    [ Record expansion is unknown ]\0A\00", align 1
@.str.182 = private unnamed_addr constant [54 x i8] c"    [ Maximum incoming record payload length is %u ]\0A\00", align 1
@.str.183 = private unnamed_addr constant [54 x i8] c"    [ Maximum outgoing record payload length is %u ]\0A\00", align 1
@.str.184 = private unnamed_addr constant [42 x i8] c"    [ Application Layer Protocol is %s ]\0A\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.186 = private unnamed_addr constant [40 x i8] c"  . Verifying peer X.509 certificate...\00", align 1
@.str.187 = private unnamed_addr constant [41 x i8] c"  . Peer certificate information    ...\0A\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.189 = private unnamed_addr constant [49 x i8] c" failed\0A  ! mbedtls_ssl_tls_prf returned -0x%x\0A\0A\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"    EAP-TLS key material is:\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"    EAP-TLS IV is:\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"  < Read from client:\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c" connection was closed gracefully\0A\00", align 1
@.str.196 = private unnamed_addr constant [31 x i8] c" connection was reset by peer\0A\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c" mbedtls_ssl_read returned -0x%x\0A\00", align 1
@.str.198 = private unnamed_addr constant [20 x i8] c" %d bytes read\0A\0A%s\0A\00", align 1
@.str.199 = private unnamed_addr constant [30 x i8] c"  ! memory allocation failed\0A\00", align 1
@.str.200 = private unnamed_addr constant [44 x i8] c"  ! mbedtls_ssl_read failed on cached data\0A\00", align 1
@.str.201 = private unnamed_addr constant [30 x i8] c" %d bytes read (%d + %d)\0A\0A%s\0A\00", align 1
@.str.202 = private unnamed_addr constant [19 x i8] c" %d bytes read\0A\0A%s\00", align 1
@.str.203 = private unnamed_addr constant [32 x i8] c"  . Requestion renegotiation...\00", align 1
@.str.204 = private unnamed_addr constant [50 x i8] c" failed\0A  ! mbedtls_ssl_renegotiate returned %d\0A\0A\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"  > Write to client:\00", align 1
@.str.206 = private unnamed_addr constant [41 x i8] c" failed\0A  ! peer closed the connection\0A\0A\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c" failed\0A  ! mbedtls_ssl_write returned %d\0A\0A\00", align 1
@.str.208 = private unnamed_addr constant [39 x i8] c" %d bytes written in %d fragments\0A\0A%s\0A\00", align 1
@.str.209 = private unnamed_addr constant [35 x i8] c"  . Serializing live connection...\00", align 1
@.str.210 = private unnamed_addr constant [54 x i8] c" failed\0A  ! mbedtls_ssl_context_save returned -0x%x\0A\0A\00", align 1
@.str.211 = private unnamed_addr constant [60 x i8] c" failed\0A  ! Couldn't allocate buffer for serialized context\00", align 1
@.str.212 = private unnamed_addr constant [42 x i8] c"  . Save serialized context to a file... \00", align 1
@.str.213 = private unnamed_addr constant [57 x i8] c"failed\0A  ! Couldn't allocate buffer for the base64 code\0A\00", align 1
@.str.214 = private unnamed_addr constant [49 x i8] c"failed\0A  ! mbedtls_base64_encode returned -0x%x\0A\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.216 = private unnamed_addr constant [42 x i8] c"failed\0A  ! Cannot open '%s' for writing.\0A\00", align 1
@.str.217 = private unnamed_addr constant [37 x i8] c"failed\0A  ! fwrite(%ld bytes) failed\0A\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.219 = private unnamed_addr constant [34 x i8] c"  . Context has been reset... ok\0A\00", align 1
@.str.220 = private unnamed_addr constant [42 x i8] c"  . Freeing and reinitializing context...\00", align 1
@.str.221 = private unnamed_addr constant [32 x i8] c"  . Deserializing connection...\00", align 1
@.str.222 = private unnamed_addr constant [53 x i8] c"failed\0A  ! mbedtls_ssl_context_load returned -0x%x\0A\0A\00", align 1
@.str.223 = private unnamed_addr constant [30 x i8] c"  . Closing the connection...\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"Last error was: -0x%X - %s\0A\0A\00", align 1
@.str.226 = private unnamed_addr constant [19 x i8] c"  . Cleaning up...\00", align 1
@.str.227 = private unnamed_addr constant [46 x i8] c"Failed to list of opaque PSKs - error was %d\0A\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c" done.\0A\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"required\00", align 1

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
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %5, i64 noundef 48) #7
  %6 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %randbytes = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %6, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %7 = load i8*, i8** %client_random.addr, align 8
  %call5 = call i8* @memcpy(i8* noundef %arraydecay4, i8* noundef %7, i64 noundef 32) #7
  %8 = load %struct.eap_tls_keys*, %struct.eap_tls_keys** %keys, align 8
  %randbytes6 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %8, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes6, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 32
  %9 = load i8*, i8** %server_random.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %9, i64 noundef 32) #7
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
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #7
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
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv5) #7
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
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
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
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv21) #7
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
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7
  %conv31 = sext i32 %call30 to i64
  %24 = load i64, i64* %len, align 8
  %add32 = add i64 %24, %conv31
  store i64 %add32, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %arrayidx33 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 %25
  store i8 0, i8* %arrayidx33, align 1
  %call34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0)) #8
  %arraydecay36 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay36) #8
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)) #8
  %26 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 8
  %cmp39 = icmp ne i8* %26, null
  br i1 %cmp39, label %if.then41, label %if.end55

if.then41:                                        ; preds = %for.end27
  %27 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 8
  %call42 = call %struct._IO_FILE* @fopen(i8* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  store %struct._IO_FILE* %call42, %struct._IO_FILE** %f, align 8
  %cmp43 = icmp eq %struct._IO_FILE* %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  br label %exit

if.end46:                                         ; preds = %if.then41
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @setbuf(%struct._IO_FILE* noundef %28, i8* noundef null) #7
  %arraydecay47 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  %29 = load i64, i64* %len, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call48 = call i64 @fwrite(i8* noundef %arraydecay47, i64 noundef 1, i64 noundef %29, %struct._IO_FILE* noundef %30) #8
  %31 = load i64, i64* %len, align 8
  %cmp49 = icmp ne i64 %call48, %31
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end46
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* noundef %32) #8
  br label %exit

if.end53:                                         ; preds = %if.end46
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* noundef %33) #8
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %for.end27
  br label %exit

exit:                                             ; preds = %if.end55, %if.then51, %if.then45
  %arraydecay56 = getelementptr inbounds [200 x i8], [200 x i8]* %nss_keylog_line, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay56, i64 noundef 200) #8
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
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %0) #7
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
  %call1 = call i8* @memcpy(i8* noundef %2, i8* noundef %3, i64 noundef %4) #7
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %tmp_buf, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef %5, i8* noundef %6, i64 noundef %7) #8
  store i32 %call2, i32* %ret_cr1, align 4
  %8 = load i32, i32* %ret_cr1, align 4
  %cmp3 = icmp ne i32 %8, -28800
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  %9 = load i8*, i8** %tmp_buf, align 8
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %call5 = call i8* @memcpy(i8* noundef %9, i8* noundef %10, i64 noundef %11) #7
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i8*, i8** %tmp_buf, align 8
  %14 = load i64, i64* %len.addr, align 8
  %call6 = call i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef %12, i8* noundef %13, i64 noundef %14) #8
  store i32 %call6, i32* %ret_cr2, align 4
  %15 = load i32, i32* %ret_cr2, align 4
  %16 = load i32, i32* %ret_cr1, align 4
  %cmp7 = icmp ne i32 %15, %16
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then4
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0)) #8
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
  %18 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp12 = icmp sgt i32 %18, 1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb11
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.bb11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10
  %19 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp17 = icmp sgt i32 %19, 1
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.bb16
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0)) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.bb16
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end10
  %20 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp22 = icmp sgt i32 %20, 1
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.bb21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0)) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb21
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  %21 = load i32, i32* %ret_cr1, align 4
  %sub = sub nsw i32 0, %21
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 noundef %sub) #8
  store i32 -1, i32* %my_ret, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25, %if.end20, %if.end15, %sw.bb
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %sw.default, %if.then8
  %22 = load i8*, i8** %tmp_buf, align 8
  call void @free(i8* noundef %22) #7
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
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net, align 8
  %5 = bitcast %struct.mbedtls_net_context* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call = call i32 @delayed_recv(i8* noundef %5, i8* noundef %6, i64 noundef %7) #8
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net1 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net1, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_net_recv(i8* noundef %10, i8* noundef %11, i64 noundef %12) #8
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
  %16 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp6 = icmp eq i32 %16, 1
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %17 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %ssl = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl, align 8
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i64, i64* %recv_len, align 8
  %call9 = call i32 @ssl_check_record(%struct.mbedtls_ssl_context* noundef %18, i8* noundef %19, i64 noundef %20) #8
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
  %call = call i32 @mbedtls_net_recv_timeout(i8* noundef %4, i8* noundef %5, i64 noundef %6, i32 noundef %7) #8
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
  %11 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1 = icmp eq i32 %11, 1
  br i1 %cmp1, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %12 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %ssl = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i64, i64* %recv_len, align 8
  %call4 = call i32 @ssl_check_record(%struct.mbedtls_ssl_context* noundef %13, i8* noundef %14, i64 noundef %15) #8
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
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net, align 8
  %5 = bitcast %struct.mbedtls_net_context* %4 to i8*
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call = call i32 @delayed_send(i8* noundef %5, i8* noundef %6, i64 noundef %7) #8
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.io_ctx_t*, %struct.io_ctx_t** %io_ctx, align 8
  %net1 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %net1, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_net_send(i8* noundef %10, i8* noundef %11, i64 noundef %12) #8
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
  %call = call i32 @mbedtls_x509_crt_verify_info(i8* noundef %0, i64 noundef %1, i8* noundef %2, i32 noundef %3) #8
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef, i64 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_print_supported_sig_algs() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #8
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0)) #8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0)) #8
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #8
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0)) #8
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #8
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)) #8
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #8
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #8
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #8
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0)) #8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #8
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sni_free(%struct._sni_entry* noundef %head) #0 {
entry:
  %head.addr = alloca %struct._sni_entry*, align 8
  %cur = alloca %struct._sni_entry*, align 8
  %next = alloca %struct._sni_entry*, align 8
  store %struct._sni_entry* %head, %struct._sni_entry** %head.addr, align 8
  %0 = load %struct._sni_entry*, %struct._sni_entry** %head.addr, align 8
  store %struct._sni_entry* %0, %struct._sni_entry** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cmp = icmp ne %struct._sni_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cert = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %3) #8
  %4 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cert1 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert1, align 8
  %6 = bitcast %struct.mbedtls_x509_crt* %5 to i8*
  call void @free(i8* noundef %6) #7
  %7 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %key = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %7, i32 0, i32 2
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key, align 8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %8) #8
  %9 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %key2 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %9, i32 0, i32 2
  %10 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key2, align 8
  %11 = bitcast %struct.mbedtls_pk_context* %10 to i8*
  call void @free(i8* noundef %11) #7
  %12 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %ca = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %12, i32 0, i32 3
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %13) #8
  %14 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %ca3 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %14, i32 0, i32 3
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca3, align 8
  %16 = bitcast %struct.mbedtls_x509_crt* %15 to i8*
  call void @free(i8* noundef %16) #7
  %17 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %crl = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %17, i32 0, i32 4
  %18 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %18) #8
  %19 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %crl4 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %19, i32 0, i32 4
  %20 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl4, align 8
  %21 = bitcast %struct.mbedtls_x509_crl* %20 to i8*
  call void @free(i8* noundef %21) #7
  %22 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %next5 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %22, i32 0, i32 6
  %23 = load %struct._sni_entry*, %struct._sni_entry** %next5, align 8
  store %struct._sni_entry* %23, %struct._sni_entry** %next, align 8
  %24 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %25 = bitcast %struct._sni_entry* %24 to i8*
  call void @free(i8* noundef %25) #7
  %26 = load %struct._sni_entry*, %struct._sni_entry** %next, align 8
  store %struct._sni_entry* %26, %struct._sni_entry** %cur, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._sni_entry* @sni_parse(i8* noundef %sni_string) #0 {
entry:
  %retval = alloca %struct._sni_entry*, align 8
  %sni_string.addr = alloca i8*, align 8
  %cur = alloca %struct._sni_entry*, align 8
  %new = alloca %struct._sni_entry*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %crt_file = alloca i8*, align 8
  %key_file = alloca i8*, align 8
  %ca_file = alloca i8*, align 8
  %auth_str = alloca i8*, align 8
  %crl_file = alloca i8*, align 8
  store i8* %sni_string, i8** %sni_string.addr, align 8
  store %struct._sni_entry* null, %struct._sni_entry** %cur, align 8
  store %struct._sni_entry* null, %struct._sni_entry** %new, align 8
  %0 = load i8*, i8** %sni_string.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  store i8* %1, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %end, align 8
  store i8 44, i8* %5, align 1
  br label %while.cond2

while.cond2:                                      ; preds = %if.end155, %while.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end, align 8
  %cmp3 = icmp ule i8* %6, %7
  br i1 %cmp3, label %while.body5, label %while.end156

while.body5:                                      ; preds = %while.cond2
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 56) #7
  %8 = bitcast i8* %call to %struct._sni_entry*
  store %struct._sni_entry* %8, %struct._sni_entry** %new, align 8
  %cmp6 = icmp eq %struct._sni_entry* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body5
  %9 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  call void @sni_free(%struct._sni_entry* noundef %9) #8
  store %struct._sni_entry* null, %struct._sni_entry** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body5
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %name = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %11, i32 0, i32 0
  store i8* %10, i8** %name, align 8
  br label %while.cond8

while.cond8:                                      ; preds = %if.end17, %do.body
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp ne i32 %conv9, 44
  br i1 %cmp10, label %while.body12, label %while.end18

while.body12:                                     ; preds = %while.cond8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  %15 = load i8*, i8** %end, align 8
  %cmp14 = icmp ugt i8* %incdec.ptr13, %15
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body12
  br label %error

if.end17:                                         ; preds = %while.body12
  br label %while.cond8, !llvm.loop !9

while.end18:                                      ; preds = %while.cond8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 0, i8* %16, align 1
  br label %do.end

do.end:                                           ; preds = %while.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end
  %17 = load i8*, i8** %p, align 8
  store i8* %17, i8** %crt_file, align 8
  br label %while.cond21

while.cond21:                                     ; preds = %if.end30, %do.body20
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp ne i32 %conv22, 44
  br i1 %cmp23, label %while.body25, label %while.end31

while.body25:                                     ; preds = %while.cond21
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  %21 = load i8*, i8** %end, align 8
  %cmp27 = icmp ugt i8* %incdec.ptr26, %21
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.body25
  br label %error

if.end30:                                         ; preds = %while.body25
  br label %while.cond21, !llvm.loop !10

while.end31:                                      ; preds = %while.cond21
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8
  store i8 0, i8* %22, align 1
  br label %do.end33

do.end33:                                         ; preds = %while.end31
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %23 = load i8*, i8** %p, align 8
  store i8* %23, i8** %key_file, align 8
  br label %while.cond35

while.cond35:                                     ; preds = %if.end44, %do.body34
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv36 = sext i8 %25 to i32
  %cmp37 = icmp ne i32 %conv36, 44
  br i1 %cmp37, label %while.body39, label %while.end45

while.body39:                                     ; preds = %while.cond35
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8
  %27 = load i8*, i8** %end, align 8
  %cmp41 = icmp ugt i8* %incdec.ptr40, %27
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.body39
  br label %error

if.end44:                                         ; preds = %while.body39
  br label %while.cond35, !llvm.loop !11

while.end45:                                      ; preds = %while.cond35
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 0, i8* %28, align 1
  br label %do.end47

do.end47:                                         ; preds = %while.end45
  br label %do.body48

do.body48:                                        ; preds = %do.end47
  %29 = load i8*, i8** %p, align 8
  store i8* %29, i8** %ca_file, align 8
  br label %while.cond49

while.cond49:                                     ; preds = %if.end58, %do.body48
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv50 = sext i8 %31 to i32
  %cmp51 = icmp ne i32 %conv50, 44
  br i1 %cmp51, label %while.body53, label %while.end59

while.body53:                                     ; preds = %while.cond49
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  %33 = load i8*, i8** %end, align 8
  %cmp55 = icmp ugt i8* %incdec.ptr54, %33
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.body53
  br label %error

if.end58:                                         ; preds = %while.body53
  br label %while.cond49, !llvm.loop !12

while.end59:                                      ; preds = %while.cond49
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  store i8 0, i8* %34, align 1
  br label %do.end61

do.end61:                                         ; preds = %while.end59
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  %35 = load i8*, i8** %p, align 8
  store i8* %35, i8** %crl_file, align 8
  br label %while.cond63

while.cond63:                                     ; preds = %if.end72, %do.body62
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv64 = sext i8 %37 to i32
  %cmp65 = icmp ne i32 %conv64, 44
  br i1 %cmp65, label %while.body67, label %while.end73

while.body67:                                     ; preds = %while.cond63
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8
  %39 = load i8*, i8** %end, align 8
  %cmp69 = icmp ugt i8* %incdec.ptr68, %39
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %while.body67
  br label %error

if.end72:                                         ; preds = %while.body67
  br label %while.cond63, !llvm.loop !13

while.end73:                                      ; preds = %while.cond63
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr74, i8** %p, align 8
  store i8 0, i8* %40, align 1
  br label %do.end75

do.end75:                                         ; preds = %while.end73
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %41 = load i8*, i8** %p, align 8
  store i8* %41, i8** %auth_str, align 8
  br label %while.cond77

while.cond77:                                     ; preds = %if.end86, %do.body76
  %42 = load i8*, i8** %p, align 8
  %43 = load i8, i8* %42, align 1
  %conv78 = sext i8 %43 to i32
  %cmp79 = icmp ne i32 %conv78, 44
  br i1 %cmp79, label %while.body81, label %while.end87

while.body81:                                     ; preds = %while.cond77
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr82, i8** %p, align 8
  %45 = load i8*, i8** %end, align 8
  %cmp83 = icmp ugt i8* %incdec.ptr82, %45
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %while.body81
  br label %error

if.end86:                                         ; preds = %while.body81
  br label %while.cond77, !llvm.loop !14

while.end87:                                      ; preds = %while.cond77
  %46 = load i8*, i8** %p, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr88, i8** %p, align 8
  store i8 0, i8* %46, align 1
  br label %do.end89

do.end89:                                         ; preds = %while.end87
  %call90 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #7
  %47 = bitcast i8* %call90 to %struct.mbedtls_x509_crt*
  %48 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %cert = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %48, i32 0, i32 1
  store %struct.mbedtls_x509_crt* %47, %struct.mbedtls_x509_crt** %cert, align 8
  %cmp91 = icmp eq %struct.mbedtls_x509_crt* %47, null
  br i1 %cmp91, label %if.then96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end89
  %call93 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7
  %49 = bitcast i8* %call93 to %struct.mbedtls_pk_context*
  %50 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %key = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %50, i32 0, i32 2
  store %struct.mbedtls_pk_context* %49, %struct.mbedtls_pk_context** %key, align 8
  %cmp94 = icmp eq %struct.mbedtls_pk_context* %49, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %lor.lhs.false, %do.end89
  br label %error

if.end97:                                         ; preds = %lor.lhs.false
  %51 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %cert98 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %51, i32 0, i32 1
  %52 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert98, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %52) #8
  %53 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %key99 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %53, i32 0, i32 2
  %54 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key99, align 8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %54) #8
  %55 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %cert100 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %55, i32 0, i32 1
  %56 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert100, align 8
  %57 = load i8*, i8** %crt_file, align 8
  %call101 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %56, i8* noundef %57) #8
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then109, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end97
  %58 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %key105 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %58, i32 0, i32 2
  %59 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key105, align 8
  %60 = load i8*, i8** %key_file, align 8
  %call106 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %59, i8* noundef %60, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %lor.lhs.false104, %if.end97
  br label %error

if.end110:                                        ; preds = %lor.lhs.false104
  %61 = load i8*, i8** %ca_file, align 8
  %call111 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end127

if.then114:                                       ; preds = %if.end110
  %call115 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #7
  %62 = bitcast i8* %call115 to %struct.mbedtls_x509_crt*
  %63 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %ca = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %63, i32 0, i32 3
  store %struct.mbedtls_x509_crt* %62, %struct.mbedtls_x509_crt** %ca, align 8
  %cmp116 = icmp eq %struct.mbedtls_x509_crt* %62, null
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  br label %error

if.end119:                                        ; preds = %if.then114
  %64 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %ca120 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %64, i32 0, i32 3
  %65 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca120, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %65) #8
  %66 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %ca121 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %66, i32 0, i32 3
  %67 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca121, align 8
  %68 = load i8*, i8** %ca_file, align 8
  %call122 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %67, i8* noundef %68) #8
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end119
  br label %error

if.end126:                                        ; preds = %if.end119
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end110
  %69 = load i8*, i8** %crl_file, align 8
  %call128 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then131, label %if.end144

if.then131:                                       ; preds = %if.end127
  %call132 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 416) #7
  %70 = bitcast i8* %call132 to %struct.mbedtls_x509_crl*
  %71 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %crl = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %71, i32 0, i32 4
  store %struct.mbedtls_x509_crl* %70, %struct.mbedtls_x509_crl** %crl, align 8
  %cmp133 = icmp eq %struct.mbedtls_x509_crl* %70, null
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then131
  br label %error

if.end136:                                        ; preds = %if.then131
  %72 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %crl137 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %72, i32 0, i32 4
  %73 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl137, align 8
  call void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef %73) #8
  %74 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %crl138 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %74, i32 0, i32 4
  %75 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl138, align 8
  %76 = load i8*, i8** %crl_file, align 8
  %call139 = call i32 @mbedtls_x509_crl_parse_file(%struct.mbedtls_x509_crl* noundef %75, i8* noundef %76) #8
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.end136
  br label %error

if.end143:                                        ; preds = %if.end136
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end127
  %77 = load i8*, i8** %auth_str, align 8
  %call145 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp146 = icmp ne i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.else

if.then148:                                       ; preds = %if.end144
  %78 = load i8*, i8** %auth_str, align 8
  %call149 = call i32 @get_auth_mode(i8* noundef %78) #8
  %79 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %authmode = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %79, i32 0, i32 5
  store i32 %call149, i32* %authmode, align 8
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.then148
  br label %error

if.end153:                                        ; preds = %if.then148
  br label %if.end155

if.else:                                          ; preds = %if.end144
  %80 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %authmode154 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %80, i32 0, i32 5
  store i32 -1, i32* %authmode154, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.else, %if.end153
  %81 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %82 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  %next = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %82, i32 0, i32 6
  store %struct._sni_entry* %81, %struct._sni_entry** %next, align 8
  %83 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  store %struct._sni_entry* %83, %struct._sni_entry** %cur, align 8
  br label %while.cond2, !llvm.loop !15

while.end156:                                     ; preds = %while.cond2
  %84 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  store %struct._sni_entry* %84, %struct._sni_entry** %retval, align 8
  br label %return

error:                                            ; preds = %if.then152, %if.then142, %if.then135, %if.then125, %if.then118, %if.then109, %if.then96, %if.then85, %if.then71, %if.then57, %if.then43, %if.then29, %if.then16
  %85 = load %struct._sni_entry*, %struct._sni_entry** %new, align 8
  call void @sni_free(%struct._sni_entry* noundef %85) #8
  %86 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  call void @sni_free(%struct._sni_entry* noundef %86) #8
  store %struct._sni_entry* null, %struct._sni_entry** %retval, align 8
  br label %return

return:                                           ; preds = %error, %while.end156, %if.then
  %87 = load %struct._sni_entry*, %struct._sni_entry** %retval, align 8
  ret %struct._sni_entry* %87
}

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef, i8* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @rng_get(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef) #2

declare dso_local i32 @mbedtls_x509_crl_parse_file(%struct.mbedtls_x509_crl* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_auth_mode(i8* noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %s.addr, align 8
  %call5 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.230, i64 0, i64 0)) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sni_callback(i8* noundef %p_info, %struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %name, i64 noundef %name_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_info.addr = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %name.addr = alloca i8*, align 8
  %name_len.addr = alloca i64, align 8
  %cur = alloca %struct._sni_entry*, align 8
  %p = alloca i8*, align 8
  store i8* %p_info, i8** %p_info.addr, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %name_len, i64* %name_len.addr, align 8
  %0 = load i8*, i8** %p_info.addr, align 8
  %1 = bitcast i8* %0 to %struct._sni_entry*
  store %struct._sni_entry* %1, %struct._sni_entry** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cmp = icmp ne %struct._sni_entry* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %name_len.addr, align 8
  %4 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %name1 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %name1, align 8
  %call = call i64 @strlen(i8* noundef %5) #9
  %cmp2 = icmp eq i64 %3, %call
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %name3 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %7, i32 0, i32 0
  %8 = load i8*, i8** %name3, align 8
  %9 = load i64, i64* %name_len.addr, align 8
  %call4 = call i32 @memcmp(i8* noundef %6, i8* noundef %8, i64 noundef %9) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %11 = bitcast %struct._sni_entry* %10 to i8*
  store i8* %11, i8** %p, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i8*, i8** %p, align 8
  call void @mbedtls_ssl_set_user_data_p(%struct.mbedtls_ssl_context* noundef %12, i8* noundef %13) #8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %next = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %14, i32 0, i32 6
  %15 = load %struct._sni_entry*, %struct._sni_entry** %next, align 8
  store %struct._sni_entry* %15, %struct._sni_entry** %cur, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_set_user_data_p(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %p) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %user_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 66
  %p1 = bitcast %union.mbedtls_ssl_user_data_t* %user_data to i8**
  store i8* %0, i8** %p1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cert_callback(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %cur = alloca %struct._sni_entry*, align 8
  %name_len = alloca i64, align 8
  %name = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i8* @mbedtls_ssl_get_user_data_p(%struct.mbedtls_ssl_context* noundef %0) #8
  %1 = bitcast i8* %call to %struct._sni_entry*
  store %struct._sni_entry* %1, %struct._sni_entry** %cur, align 8
  %2 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cmp = icmp ne %struct._sni_entry* %2, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i8* @mbedtls_ssl_get_hs_sni(%struct.mbedtls_ssl_context* noundef %3, i64* noundef %name_len) #8
  store i8* %call1, i8** %name, align 8
  %4 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %name2 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %name2, align 8
  %call3 = call i64 @strlen(i8* noundef %5) #9
  %6 = load i64, i64* %name_len, align 8
  %cmp4 = icmp ne i64 %call3, %6
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %name5 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %7, i32 0, i32 0
  %8 = load i8*, i8** %name5, align 8
  %9 = load i8*, i8** %name, align 8
  %10 = load i64, i64* %name_len, align 8
  %call6 = call i32 @memcmp(i8* noundef %8, i8* noundef %9, i64 noundef %10) #9
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %ca = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %11, i32 0, i32 3
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca, align 8
  %cmp9 = icmp ne %struct.mbedtls_x509_crt* %12, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %14 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %ca11 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %14, i32 0, i32 3
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca11, align 8
  %16 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %crl = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %16, i32 0, i32 4
  %17 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_ssl_set_hs_ca_chain(%struct.mbedtls_ssl_context* noundef %13, %struct.mbedtls_x509_crt* noundef %15, %struct.mbedtls_x509_crl* noundef %17) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %18 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %authmode = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %18, i32 0, i32 5
  %19 = load i32, i32* %authmode, align 8
  %cmp13 = icmp ne i32 %19, -1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %21 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %authmode15 = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %21, i32 0, i32 5
  %22 = load i32, i32* %authmode15, align 8
  call void @mbedtls_ssl_set_hs_authmode(%struct.mbedtls_ssl_context* noundef %20, i32 noundef %22) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %24 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %cert = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %24, i32 0, i32 1
  %25 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert, align 8
  %26 = load %struct._sni_entry*, %struct._sni_entry** %cur, align 8
  %key = getelementptr inbounds %struct._sni_entry, %struct._sni_entry* %26, i32 0, i32 2
  %27 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key, align 8
  %call17 = call i32 @mbedtls_ssl_set_hs_own_cert(%struct.mbedtls_ssl_context* noundef %23, %struct.mbedtls_x509_crt* noundef %25, %struct.mbedtls_pk_context* noundef %27) #8
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.end16, %if.then8
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_ssl_get_user_data_p(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %user_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 66
  %p = bitcast %union.mbedtls_ssl_user_data_t* %user_data to i8**
  %1 = load i8*, i8** %p, align 8
  ret i8* %1
}

declare dso_local i8* @mbedtls_ssl_get_hs_sni(%struct.mbedtls_ssl_context* noundef, i64* noundef) #2

declare dso_local void @mbedtls_ssl_set_hs_ca_chain(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #2

declare dso_local void @mbedtls_ssl_set_hs_authmode(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_set_hs_own_cert(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psk_free(%struct._psk_entry* noundef %head) #0 {
entry:
  %head.addr = alloca %struct._psk_entry*, align 8
  %next = alloca %struct._psk_entry*, align 8
  store %struct._psk_entry* %head, %struct._psk_entry** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._psk_entry*, %struct._psk_entry** %head.addr, align 8
  %cmp = icmp ne %struct._psk_entry* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._psk_entry*, %struct._psk_entry** %head.addr, align 8
  %next1 = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %1, i32 0, i32 3
  %2 = load %struct._psk_entry*, %struct._psk_entry** %next1, align 8
  store %struct._psk_entry* %2, %struct._psk_entry** %next, align 8
  %3 = load %struct._psk_entry*, %struct._psk_entry** %head.addr, align 8
  %4 = bitcast %struct._psk_entry* %3 to i8*
  call void @free(i8* noundef %4) #7
  %5 = load %struct._psk_entry*, %struct._psk_entry** %next, align 8
  store %struct._psk_entry* %5, %struct._psk_entry** %head.addr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._psk_entry* @psk_parse(i8* noundef %psk_string) #0 {
entry:
  %retval = alloca %struct._psk_entry*, align 8
  %psk_string.addr = alloca i8*, align 8
  %cur = alloca %struct._psk_entry*, align 8
  %new = alloca %struct._psk_entry*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %key_hex = alloca i8*, align 8
  store i8* %psk_string, i8** %psk_string.addr, align 8
  store %struct._psk_entry* null, %struct._psk_entry** %cur, align 8
  store %struct._psk_entry* null, %struct._psk_entry** %new, align 8
  %0 = load i8*, i8** %psk_string.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  store i8* %1, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %end, align 8
  store i8 44, i8* %5, align 1
  br label %while.cond2

while.cond2:                                      ; preds = %if.end39, %while.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end, align 8
  %cmp3 = icmp ule i8* %6, %7
  br i1 %cmp3, label %while.body5, label %while.end40

while.body5:                                      ; preds = %while.cond2
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 56) #7
  %8 = bitcast i8* %call to %struct._psk_entry*
  store %struct._psk_entry* %8, %struct._psk_entry** %new, align 8
  %cmp6 = icmp eq %struct._psk_entry* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body5
  br label %error

if.end:                                           ; preds = %while.body5
  %9 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %10 = bitcast %struct._psk_entry* %9 to i8*
  %call8 = call i8* @memset(i8* noundef %10, i32 noundef 0, i64 noundef 56) #7
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %name = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %12, i32 0, i32 0
  store i8* %11, i8** %name, align 8
  br label %while.cond9

while.cond9:                                      ; preds = %if.end18, %do.body
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp ne i32 %conv10, 44
  br i1 %cmp11, label %while.body13, label %while.end19

while.body13:                                     ; preds = %while.cond9
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  %16 = load i8*, i8** %end, align 8
  %cmp15 = icmp ugt i8* %incdec.ptr14, %16
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.body13
  br label %error

if.end18:                                         ; preds = %while.body13
  br label %while.cond9, !llvm.loop !19

while.end19:                                      ; preds = %while.cond9
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 0, i8* %17, align 1
  br label %do.end

do.end:                                           ; preds = %while.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end
  %18 = load i8*, i8** %p, align 8
  store i8* %18, i8** %key_hex, align 8
  br label %while.cond22

while.cond22:                                     ; preds = %if.end31, %do.body21
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv23 = sext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv23, 44
  br i1 %cmp24, label %while.body26, label %while.end32

while.body26:                                     ; preds = %while.cond22
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  %22 = load i8*, i8** %end, align 8
  %cmp28 = icmp ugt i8* %incdec.ptr27, %22
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.body26
  br label %error

if.end31:                                         ; preds = %while.body26
  br label %while.cond22, !llvm.loop !20

while.end32:                                      ; preds = %while.cond22
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  store i8 0, i8* %23, align 1
  br label %do.end34

do.end34:                                         ; preds = %while.end32
  %24 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %key = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %24, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %25 = load i8*, i8** %key_hex, align 8
  %26 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %key_len = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %26, i32 0, i32 1
  %call35 = call i32 @mbedtls_test_unhexify(i8* noundef %arraydecay, i64 noundef 32, i8* noundef %25, i64* noundef %key_len) #8
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.end34
  br label %error

if.end39:                                         ; preds = %do.end34
  %27 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %28 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %next = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %28, i32 0, i32 3
  store %struct._psk_entry* %27, %struct._psk_entry** %next, align 8
  %29 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  store %struct._psk_entry* %29, %struct._psk_entry** %cur, align 8
  br label %while.cond2, !llvm.loop !21

while.end40:                                      ; preds = %while.cond2
  %30 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  store %struct._psk_entry* %30, %struct._psk_entry** %retval, align 8
  br label %return

error:                                            ; preds = %if.then38, %if.then30, %if.then17, %if.then
  %31 = load %struct._psk_entry*, %struct._psk_entry** %new, align 8
  %call41 = call i32 @psk_free(%struct._psk_entry* noundef %31) #8
  %32 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %call42 = call i32 @psk_free(%struct._psk_entry* noundef %32) #8
  store %struct._psk_entry* null, %struct._psk_entry** %retval, align 8
  br label %return

return:                                           ; preds = %error, %while.end40
  %33 = load %struct._psk_entry*, %struct._psk_entry** %retval, align 8
  ret %struct._psk_entry* %33
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_test_unhexify(i8* noundef, i64 noundef, i8* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psk_callback(i8* noundef %p_info, %struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %name, i64 noundef %name_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_info.addr = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %name.addr = alloca i8*, align 8
  %name_len.addr = alloca i64, align 8
  %cur = alloca %struct._psk_entry*, align 8
  store i8* %p_info, i8** %p_info.addr, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %name_len, i64* %name_len.addr, align 8
  %0 = load i8*, i8** %p_info.addr, align 8
  %1 = bitcast i8* %0 to %struct._psk_entry*
  store %struct._psk_entry* %1, %struct._psk_entry** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %cmp = icmp ne %struct._psk_entry* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %name_len.addr, align 8
  %4 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %name1 = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %name1, align 8
  %call = call i64 @strlen(i8* noundef %5) #9
  %cmp2 = icmp eq i64 %3, %call
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %name3 = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %7, i32 0, i32 0
  %8 = load i8*, i8** %name3, align 8
  %9 = load i64, i64* %name_len.addr, align 8
  %call4 = call i32 @memcmp(i8* noundef %6, i8* noundef %8, i64 noundef %9) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %key = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %12 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %key_len = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %12, i32 0, i32 1
  %13 = load i64, i64* %key_len, align 8
  %call6 = call i32 @mbedtls_ssl_set_hs_psk(%struct.mbedtls_ssl_context* noundef %10, i8* noundef %arraydecay, i64 noundef %13) #8
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load %struct._psk_entry*, %struct._psk_entry** %cur, align 8
  %next = getelementptr inbounds %struct._psk_entry, %struct._psk_entry* %14, i32 0, i32 3
  %15 = load %struct._psk_entry*, %struct._psk_entry** %next, align 8
  store %struct._psk_entry* %15, %struct._psk_entry** %cur, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @mbedtls_ssl_set_hs_psk(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_handler(i32 noundef %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  store i32 1, i32* @received_sigterm, align 4
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef @listen_fd) #8
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef @client_fd) #8
  ret void
}

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %written = alloca i32, align 4
  %frags = alloca i32, align 4
  %exchanges_left = alloca i32, align 4
  %query_config_ret = alloca i32, align 4
  %io_ctx = alloca %struct.io_ctx_t, align 8
  %buf = alloca i8*, align 8
  %psk = alloca [32 x i8], align 16
  %psk_len = alloca i64, align 8
  %psk_info = alloca %struct._psk_entry*, align 8
  %pers = alloca i8*, align 8
  %client_ip = alloca [16 x i8], align 16
  %cliip_len = alloca i64, align 8
  %cookie_ctx = alloca %struct.mbedtls_ssl_cookie_ctx, align 8
  %crt_profile_for_test = alloca %struct.mbedtls_x509_crt_profile, align 4
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %timer = alloca %struct.mbedtls_timing_delay_context, align 4
  %renego_period = alloca [8 x i8], align 1
  %flags = alloca i32, align 4
  %cacert = alloca %struct.mbedtls_x509_crt, align 8
  %srvcert = alloca %struct.mbedtls_x509_crt, align 8
  %pkey = alloca %struct.mbedtls_pk_context, align 8
  %srvcert2 = alloca %struct.mbedtls_x509_crt, align 8
  %pkey2 = alloca %struct.mbedtls_pk_context, align 8
  %key_cert_init = alloca i32, align 4
  %key_cert_init2 = alloca i32, align 4
  %dhm = alloca %struct.mbedtls_dhm_context, align 8
  %cache = alloca %struct.mbedtls_ssl_cache_context, align 8
  %ticket_ctx = alloca %struct.mbedtls_ssl_ticket_context, align 8
  %sni_info = alloca %struct._sni_entry*, align 8
  %group_list = alloca [20 x i16], align 16
  %curve_cur = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %alpn_list = alloca [10 x i8*], align 16
  %context_buf = alloca i8*, align 8
  %context_buf_len = alloca i64, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %list = alloca i32*, align 8
  %eap_tls_keymaterial = alloca [16 x i8], align 16
  %eap_tls_iv = alloca [8 x i8], align 1
  %eap_tls_label = alloca i8*, align 8
  %eap_tls_keying = alloca %struct.eap_tls_keys, align 4
  %t = alloca i32, align 4
  %ci = alloca %struct.mbedtls_cipher_info_t*, align 8
  %buf_content_size = alloca i64, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %kbuf = alloca [32 x i8], align 16
  %name1250 = alloca [4 x i8], align 1
  %pk = alloca %struct.mbedtls_pk_context*, align 8
  %pk1367 = alloca %struct.mbedtls_pk_context*, align 8
  %error_buf = alloca [100 x i8], align 16
  %vrfy_buf = alloca [512 x i8], align 16
  %suite_id = alloca i32, align 4
  %ciphersuite_info1593 = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %alp = alloca i8*, align 8
  %vrfy_buf1630 = alloca [512 x i8], align 16
  %crt_buf = alloca [512 x i8], align 16
  %j = alloca i64, align 8
  %terminated = alloca i32, align 4
  %extra_len = alloca i32, align 4
  %ori_len = alloca i32, align 4
  %larger_buf = alloca i8*, align 8
  %buf_len = alloca i64, align 8
  %b64_file = alloca %struct._IO_FILE*, align 8
  %b64_buf = alloca i8*, align 8
  %b64_len = alloca i64, align 8
  %error_buf2073 = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %query_config_ret, align 4
  store i8* null, i8** %buf, align 8
  store i64 0, i64* %psk_len, align 8
  store %struct._psk_entry* null, %struct._psk_entry** %psk_info, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8** %pers, align 8
  %0 = bitcast [16 x i8]* %client_ip to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 16, i1 false)
  %1 = bitcast %struct.mbedtls_x509_crt_profile* %crt_profile_for_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%struct.mbedtls_x509_crt_profile* @mbedtls_x509_crt_profile_default to i8*), i64 16, i1 false)
  %2 = bitcast [8 x i8]* %renego_period to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 8, i1 false)
  store i32 0, i32* %key_cert_init, align 4
  store i32 0, i32* %key_cert_init2, align 4
  store %struct._sni_entry* null, %struct._sni_entry** %sni_info, align 8
  store i8* null, i8** %context_buf, align 8
  store i64 0, i64* %context_buf_len, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i8** %eap_tls_label, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef @client_fd) #8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef @listen_fd) #8
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #8
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #8
  call void @rng_init(%struct.rng_context_t* noundef @rng) #8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %cacert) #8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %srvcert) #8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey) #8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %srvcert2) #8
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef %pkey2) #8
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm) #8
  call void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef %cache) #8
  call void @mbedtls_ssl_ticket_init(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx) #8
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 0
  %3 = bitcast i8** %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 80) #7
  call void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #8
  %call1 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef @term_handler) #7
  %call2 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @term_handler) #7
  %4 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  br label %usage

usage:                                            ; preds = %if.then769, %if.then760, %if.then714, %if.else642, %if.then640, %if.then630, %if.then597, %if.then579, %if.then561, %if.then537, %if.then525, %if.then515, %if.then505, %if.then495, %if.then485, %if.then472, %if.then459, %if.then449, %if.then438, %if.then428, %if.then418, %if.then405, %sw.default392, %sw.default382, %sw.default372, %if.else354, %if.then324, %if.then311, %if.else300, %sw.default284, %if.else274, %if.else259, %if.then244, %if.then234, %if.then230, %if.then214, %sw.default, %if.then181, %if.then100, %if.then87, %if.then72, %if.then62, %if.then52, %if.else42, %if.then23, %if.then
  %5 = load i32, i32* %ret, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %usage
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %usage
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1365 x i8], [1365 x i8]* @.str.34, i64 0, i64 0)) #8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2065 x i8], [2065 x i8]* @.str.35, i64 0, i64 0)) #8
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2067 x i8], [2067 x i8]* @.str.36, i64 0, i64 0)) #8
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1150 x i8], [1150 x i8]* @.str.37, i64 0, i64 0)) #8
  %call9 = call i32* @mbedtls_ssl_list_ciphersuites() #8
  store i32* %call9, i32** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %6 = load i32*, i32** %list, align 8
  %7 = load i32, i32* %6, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32*, i32** %list, align 8
  %9 = load i32, i32* %8, align 4
  %call10 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %9) #8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* noundef %call10) #8
  %10 = load i32*, i32** %list, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %list, align 8
  %11 = load i32*, i32** %list, align 8
  %12 = load i32, i32* %11, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %while.body
  br label %while.end

if.end14:                                         ; preds = %while.body
  %13 = load i32*, i32** %list, align 8
  %14 = load i32, i32* %13, align 4
  %call15 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %14) #8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef %call15) #8
  %15 = load i32*, i32** %list, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr17, i32** %list, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %if.then13, %while.cond
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %exit

if.end19:                                         ; preds = %entry
  store i16 200, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 64), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 65), align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 66), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 69), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 20), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 24), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  store i32 -2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  store i32 -2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  store i64 -1, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  store i32 86400, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 4
  store i32 16, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 48), align 8
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 4
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 68), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 70), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  store i8* null, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 72), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 73), align 4
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 74), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 75), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 76), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 77), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 78), align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %argc.addr, align 4
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  store i8* %20, i8** %p, align 8
  %21 = load i8*, i8** %p, align 8
  %call21 = call i8* @strchr(i8* noundef %21, i32 noundef 61) #9
  store i8* %call21, i8** %q, align 8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body
  br label %usage

if.end24:                                         ; preds = %for.body
  %22 = load i8*, i8** %q, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %q, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %p, align 8
  %call26 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %24 = load i8*, i8** %q, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end708

if.else:                                          ; preds = %if.end24
  %25 = load i8*, i8** %p, align 8
  %call29 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #9
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else
  %26 = load i8*, i8** %q, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end707

if.else32:                                        ; preds = %if.else
  %27 = load i8*, i8** %p, align 8
  %call33 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #9
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else45

if.then35:                                        ; preds = %if.else32
  %28 = load i8*, i8** %q, align 8
  %call36 = call i32 @atoi(i8* noundef %28) #9
  store i32 %call36, i32* %t, align 4
  %29 = load i32, i32* %t, align 4
  %cmp37 = icmp eq i32 %29, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then35
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  br label %if.end44

if.else39:                                        ; preds = %if.then35
  %30 = load i32, i32* %t, align 4
  %cmp40 = icmp eq i32 %30, 1
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else39
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  br label %if.end43

if.else42:                                        ; preds = %if.else39
  br label %usage

if.end43:                                         ; preds = %if.then41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then38
  br label %if.end706

if.else45:                                        ; preds = %if.else32
  %31 = load i8*, i8** %p, align 8
  %call46 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.else45
  %32 = load i8*, i8** %q, align 8
  %call49 = call i32 @atoi(i8* noundef %32) #9
  store i32 %call49, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp50 = icmp slt i32 %33, 0
  br i1 %cmp50, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then48
  %34 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %cmp51 = icmp sgt i32 %34, 65535
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false, %if.then48
  br label %usage

if.end53:                                         ; preds = %lor.lhs.false
  br label %if.end705

if.else54:                                        ; preds = %if.else45
  %35 = load i8*, i8** %p, align 8
  %call55 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #9
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.else64

if.then57:                                        ; preds = %if.else54
  %36 = load i8*, i8** %q, align 8
  %call58 = call i32 @atoi(i8* noundef %36) #9
  store i32 %call58, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp59 = icmp slt i32 %37, 0
  br i1 %cmp59, label %if.then62, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.then57
  %38 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp61 = icmp sgt i32 %38, 2
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false60, %if.then57
  br label %usage

if.end63:                                         ; preds = %lor.lhs.false60
  br label %if.end704

if.else64:                                        ; preds = %if.else54
  %39 = load i8*, i8** %p, align 8
  %call65 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #9
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.else74

if.then67:                                        ; preds = %if.else64
  %40 = load i8*, i8** %q, align 8
  %call68 = call i32 @atoi(i8* noundef %40) #9
  store i32 %call68, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp69 = icmp slt i32 %41, 0
  br i1 %cmp69, label %if.then72, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.then67
  %42 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp71 = icmp sgt i32 %42, 2
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false70, %if.then67
  br label %usage

if.end73:                                         ; preds = %lor.lhs.false70
  br label %if.end703

if.else74:                                        ; preds = %if.else64
  %43 = load i8*, i8** %p, align 8
  %call75 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0)) #9
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.else74
  %44 = load i8*, i8** %q, align 8
  %call78 = call i32 @atoi(i8* noundef %44) #9
  store i32 %call78, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  br label %if.end702

if.else79:                                        ; preds = %if.else74
  %45 = load i8*, i8** %p, align 8
  %call80 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)) #9
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.else89

if.then82:                                        ; preds = %if.else79
  %46 = load i8*, i8** %q, align 8
  %call83 = call i32 @atoi(i8* noundef %46) #9
  %conv = trunc i32 %call83 to i16
  store i16 %conv, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %47 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv84 = zext i16 %47 to i32
  %cmp85 = icmp slt i32 %conv84, 1
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then82
  br label %usage

if.end88:                                         ; preds = %if.then82
  br label %if.end701

if.else89:                                        ; preds = %if.else79
  %48 = load i8*, i8** %p, align 8
  %call90 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0)) #9
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.else108

if.then93:                                        ; preds = %if.else89
  %49 = load i8*, i8** %q, align 8
  %call94 = call i32 @atoi(i8* noundef %49) #9
  store i32 %call94, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp95 = icmp slt i32 %50, 0
  br i1 %cmp95, label %if.then100, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.then93
  %51 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp98 = icmp sgt i32 %51, 16384
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %lor.lhs.false97, %if.then93
  br label %usage

if.end101:                                        ; preds = %lor.lhs.false97
  %52 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv102 = zext i16 %52 to i32
  %53 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp103 = icmp slt i32 %conv102, %53
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end101
  %54 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %conv106 = trunc i32 %54 to i16
  store i16 %conv106, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101
  br label %if.end700

if.else108:                                       ; preds = %if.else89
  %55 = load i8*, i8** %p, align 8
  %call109 = call i32 @strcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #9
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else108
  %56 = load i8*, i8** %q, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  br label %if.end699

if.else113:                                       ; preds = %if.else108
  %57 = load i8*, i8** %p, align 8
  %call114 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #9
  %cmp115 = icmp eq i32 %call114, 0
  br i1 %cmp115, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.else113
  %58 = load i8*, i8** %q, align 8
  store i8* %58, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  br label %if.end698

if.else118:                                       ; preds = %if.else113
  %59 = load i8*, i8** %p, align 8
  %call119 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0)) #9
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then122, label %if.else123

if.then122:                                       ; preds = %if.else118
  %60 = load i8*, i8** %q, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  br label %if.end697

if.else123:                                       ; preds = %if.else118
  %61 = load i8*, i8** %p, align 8
  %call124 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0)) #9
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.else123
  %62 = load i8*, i8** %q, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  br label %if.end696

if.else128:                                       ; preds = %if.else123
  %63 = load i8*, i8** %p, align 8
  %call129 = call i32 @strcmp(i8* noundef %63, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #9
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.else128
  %64 = load i8*, i8** %q, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  br label %if.end695

if.else133:                                       ; preds = %if.else128
  %65 = load i8*, i8** %p, align 8
  %call134 = call i32 @strcmp(i8* noundef %65, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0)) #9
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.else133
  %66 = load i8*, i8** %q, align 8
  store i8* %66, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  br label %if.end694

if.else138:                                       ; preds = %if.else133
  %67 = load i8*, i8** %p, align 8
  %call139 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0)) #9
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.else143

if.then142:                                       ; preds = %if.else138
  %68 = load i8*, i8** %q, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  br label %if.end693

if.else143:                                       ; preds = %if.else138
  %69 = load i8*, i8** %p, align 8
  %call144 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0)) #9
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.else143
  %70 = load i8*, i8** %q, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  br label %if.end692

if.else148:                                       ; preds = %if.else143
  %71 = load i8*, i8** %p, align 8
  %call149 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0)) #9
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.else148
  %72 = load i8*, i8** %q, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  br label %if.end691

if.else153:                                       ; preds = %if.else148
  %73 = load i8*, i8** %p, align 8
  %call154 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #9
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.else153
  %74 = load i8*, i8** %q, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 8
  br label %if.end690

if.else158:                                       ; preds = %if.else153
  %75 = load i8*, i8** %p, align 8
  %call159 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0)) #9
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then162, label %if.else163

if.then162:                                       ; preds = %if.else158
  %76 = load i8*, i8** %q, align 8
  store i8* %76, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  br label %if.end689

if.else163:                                       ; preds = %if.else158
  %77 = load i8*, i8** %p, align 8
  %call164 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #9
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.else163
  %78 = load i8*, i8** %q, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 8
  br label %if.end688

if.else168:                                       ; preds = %if.else163
  %79 = load i8*, i8** %p, align 8
  %call169 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0)) #9
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then172, label %if.else173

if.then172:                                       ; preds = %if.else168
  %80 = load i8*, i8** %q, align 8
  store i8* %80, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 24), align 8
  br label %if.end687

if.else173:                                       ; preds = %if.else168
  %81 = load i8*, i8** %p, align 8
  %call174 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #9
  %cmp175 = icmp eq i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.else183

if.then177:                                       ; preds = %if.else173
  %82 = load i8*, i8** %q, align 8
  %call178 = call i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef %82) #8
  store i32 %call178, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  %cmp179 = icmp eq i32 %83, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.then177
  store i32 2, i32* %ret, align 4
  br label %usage

if.end182:                                        ; preds = %if.then177
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 1), align 4
  br label %if.end686

if.else183:                                       ; preds = %if.else173
  %84 = load i8*, i8** %p, align 8
  %call184 = call i32 @strcmp(i8* noundef %84, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #9
  %cmp185 = icmp eq i32 %call184, 0
  br i1 %cmp185, label %if.then187, label %if.else188

if.then187:                                       ; preds = %if.else183
  %85 = load i8*, i8** %q, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  br label %if.end685

if.else188:                                       ; preds = %if.else183
  %86 = load i8*, i8** %p, align 8
  %call189 = call i32 @strcmp(i8* noundef %86, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0)) #9
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then192, label %if.else195

if.then192:                                       ; preds = %if.else188
  %87 = load i8*, i8** %q, align 8
  %call193 = call i32 @atoi(i8* noundef %87) #9
  %tobool194 = icmp ne i32 %call193, 0
  %88 = zext i1 %tobool194 to i64
  %cond = select i1 %tobool194, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  br label %if.end684

if.else195:                                       ; preds = %if.else188
  %89 = load i8*, i8** %p, align 8
  %call196 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0)) #9
  %cmp197 = icmp eq i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.else203

if.then199:                                       ; preds = %if.else195
  %90 = load i8*, i8** %q, align 8
  %call200 = call i32 @atoi(i8* noundef %90) #9
  switch i32 %call200, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb201
    i32 1, label %sw.bb202
  ]

sw.bb:                                            ; preds = %if.then199
  store i32 2, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %sw.epilog

sw.bb201:                                         ; preds = %if.then199
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.then199
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then199
  br label %usage

sw.epilog:                                        ; preds = %sw.bb202, %sw.bb201, %sw.bb
  br label %if.end683

if.else203:                                       ; preds = %if.else195
  %91 = load i8*, i8** %p, align 8
  %call204 = call i32 @strcmp(i8* noundef %91, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0)) #9
  %cmp205 = icmp eq i32 %call204, 0
  br i1 %cmp205, label %if.then207, label %if.else216

if.then207:                                       ; preds = %if.else203
  %92 = load i8*, i8** %q, align 8
  %call208 = call i32 @atoi(i8* noundef %92) #9
  store i32 %call208, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  %cmp209 = icmp slt i32 %93, 0
  br i1 %cmp209, label %if.then214, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %if.then207
  %94 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  %cmp212 = icmp sgt i32 %94, 1
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %lor.lhs.false211, %if.then207
  br label %usage

if.end215:                                        ; preds = %lor.lhs.false211
  br label %if.end682

if.else216:                                       ; preds = %if.else203
  %95 = load i8*, i8** %p, align 8
  %call217 = call i32 @strcmp(i8* noundef %95, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0)) #9
  %cmp218 = icmp eq i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.else222

if.then220:                                       ; preds = %if.else216
  %96 = load i8*, i8** %q, align 8
  %call221 = call i32 @atoi(i8* noundef %96) #9
  store i32 %call221, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  br label %if.end681

if.else222:                                       ; preds = %if.else216
  %97 = load i8*, i8** %p, align 8
  %call223 = call i32 @strcmp(i8* noundef %97, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0)) #9
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then226, label %if.else236

if.then226:                                       ; preds = %if.else222
  %98 = load i8*, i8** %q, align 8
  %call227 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i64* noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30)) #7
  %cmp228 = icmp ne i32 %call227, 1
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %if.then226
  br label %usage

if.end231:                                        ; preds = %if.then226
  %99 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %cmp232 = icmp ult i64 %99, 2
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end231
  br label %usage

if.end235:                                        ; preds = %if.end231
  br label %if.end680

if.else236:                                       ; preds = %if.else222
  %100 = load i8*, i8** %p, align 8
  %call237 = call i32 @strcmp(i8* noundef %100, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #9
  %cmp238 = icmp eq i32 %call237, 0
  br i1 %cmp238, label %if.then240, label %if.else246

if.then240:                                       ; preds = %if.else236
  %101 = load i8*, i8** %q, align 8
  %call241 = call i32 @atoi(i8* noundef %101) #9
  store i32 %call241, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  %cmp242 = icmp slt i32 %102, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.then240
  br label %usage

if.end245:                                        ; preds = %if.then240
  br label %if.end679

if.else246:                                       ; preds = %if.else236
  %103 = load i8*, i8** %p, align 8
  %call247 = call i32 @strcmp(i8* noundef %103, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0)) #9
  %cmp248 = icmp eq i32 %call247, 0
  br i1 %cmp248, label %if.then250, label %if.else261

if.then250:                                       ; preds = %if.else246
  %104 = load i8*, i8** %q, align 8
  %call251 = call i32 @strcmp(i8* noundef %104, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #9
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %if.then258, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %if.then250
  %105 = load i8*, i8** %q, align 8
  %call255 = call i32 @strcmp(i8* noundef %105, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #9
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.else259

if.then258:                                       ; preds = %lor.lhs.false254, %if.then250
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  br label %if.end260

if.else259:                                       ; preds = %lor.lhs.false254
  br label %usage

if.end260:                                        ; preds = %if.then258
  br label %if.end678

if.else261:                                       ; preds = %if.else246
  %106 = load i8*, i8** %p, align 8
  %call262 = call i32 @strcmp(i8* noundef %106, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0)) #9
  %cmp263 = icmp eq i32 %call262, 0
  br i1 %cmp263, label %if.then265, label %if.else276

if.then265:                                       ; preds = %if.else261
  %107 = load i8*, i8** %q, align 8
  %call266 = call i32 @strcmp(i8* noundef %107, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #9
  %cmp267 = icmp eq i32 %call266, 0
  br i1 %cmp267, label %if.then273, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %if.then265
  %108 = load i8*, i8** %q, align 8
  %call270 = call i32 @strcmp(i8* noundef %108, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #9
  %cmp271 = icmp eq i32 %call270, 0
  br i1 %cmp271, label %if.then273, label %if.else274

if.then273:                                       ; preds = %lor.lhs.false269, %if.then265
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  br label %if.end275

if.else274:                                       ; preds = %lor.lhs.false269
  br label %usage

if.end275:                                        ; preds = %if.then273
  br label %if.end677

if.else276:                                       ; preds = %if.else261
  %109 = load i8*, i8** %p, align 8
  %call277 = call i32 @strcmp(i8* noundef %109, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0)) #9
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then280, label %if.else286

if.then280:                                       ; preds = %if.else276
  %110 = load i8*, i8** %q, align 8
  %call281 = call i32 @atoi(i8* noundef %110) #9
  switch i32 %call281, label %sw.default284 [
    i32 0, label %sw.bb282
    i32 1, label %sw.bb283
  ]

sw.bb282:                                         ; preds = %if.then280
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 4
  br label %sw.epilog285

sw.bb283:                                         ; preds = %if.then280
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 4
  br label %sw.epilog285

sw.default284:                                    ; preds = %if.then280
  br label %usage

sw.epilog285:                                     ; preds = %sw.bb283, %sw.bb282
  br label %if.end676

if.else286:                                       ; preds = %if.else276
  %111 = load i8*, i8** %p, align 8
  %call287 = call i32 @strcmp(i8* noundef %111, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0)) #9
  %cmp288 = icmp eq i32 %call287, 0
  br i1 %cmp288, label %if.then290, label %if.else303

if.then290:                                       ; preds = %if.else286
  %112 = load i8*, i8** %q, align 8
  %call291 = call i32 @strcmp(i8* noundef %112, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #9
  %cmp292 = icmp eq i32 %call291, 0
  br i1 %cmp292, label %if.then294, label %if.else295

if.then294:                                       ; preds = %if.then290
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  br label %if.end302

if.else295:                                       ; preds = %if.then290
  %113 = load i8*, i8** %q, align 8
  %call296 = call i32 @strcmp(i8* noundef %113, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #9
  %cmp297 = icmp eq i32 %call296, 0
  br i1 %cmp297, label %if.then299, label %if.else300

if.then299:                                       ; preds = %if.else295
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  store i32 771, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  br label %if.end301

if.else300:                                       ; preds = %if.else295
  br label %usage

if.end301:                                        ; preds = %if.then299
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.then294
  br label %if.end675

if.else303:                                       ; preds = %if.else286
  %114 = load i8*, i8** %p, align 8
  %call304 = call i32 @strcmp(i8* noundef %114, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0)) #9
  %cmp305 = icmp eq i32 %call304, 0
  br i1 %cmp305, label %if.then307, label %if.else313

if.then307:                                       ; preds = %if.else303
  %115 = load i8*, i8** %q, align 8
  %call308 = call i32 @get_auth_mode(i8* noundef %115) #8
  store i32 %call308, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 8
  %cmp309 = icmp slt i32 %call308, 0
  br i1 %cmp309, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.then307
  br label %usage

if.end312:                                        ; preds = %if.then307
  br label %if.end674

if.else313:                                       ; preds = %if.else303
  %116 = load i8*, i8** %p, align 8
  %call314 = call i32 @strcmp(i8* noundef %116, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0)) #9
  %cmp315 = icmp eq i32 %call314, 0
  br i1 %cmp315, label %if.then317, label %if.else330

if.then317:                                       ; preds = %if.else313
  %117 = load i8*, i8** %q, align 8
  %call318 = call i32 @atoi(i8* noundef %117) #9
  store i32 %call318, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %cmp319 = icmp slt i32 %118, 0
  br i1 %cmp319, label %if.then324, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %if.then317
  %119 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %cmp322 = icmp sgt i32 %119, 3
  br i1 %cmp322, label %if.then324, label %if.end325

if.then324:                                       ; preds = %lor.lhs.false321, %if.then317
  br label %usage

if.end325:                                        ; preds = %lor.lhs.false321
  %120 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %cmp326 = icmp sgt i32 %120, 1
  br i1 %cmp326, label %if.then328, label %if.end329

if.then328:                                       ; preds = %if.end325
  %121 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  store i32 %121, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  br label %if.end329

if.end329:                                        ; preds = %if.then328, %if.end325
  br label %if.end673

if.else330:                                       ; preds = %if.else313
  %122 = load i8*, i8** %p, align 8
  %call331 = call i32 @strcmp(i8* noundef %122, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0)) #9
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %if.then334, label %if.else359

if.then334:                                       ; preds = %if.else330
  %123 = load i8*, i8** %q, align 8
  %call335 = call i32 @strcmp(i8* noundef %123, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0)) #9
  %cmp336 = icmp eq i32 %call335, 0
  br i1 %cmp336, label %if.then338, label %if.else339

if.then338:                                       ; preds = %if.then334
  store i8 1, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  br label %if.end358

if.else339:                                       ; preds = %if.then334
  %124 = load i8*, i8** %q, align 8
  %call340 = call i32 @strcmp(i8* noundef %124, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i64 0, i64 0)) #9
  %cmp341 = icmp eq i32 %call340, 0
  br i1 %cmp341, label %if.then343, label %if.else344

if.then343:                                       ; preds = %if.else339
  store i8 2, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  br label %if.end357

if.else344:                                       ; preds = %if.else339
  %125 = load i8*, i8** %q, align 8
  %call345 = call i32 @strcmp(i8* noundef %125, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0)) #9
  %cmp346 = icmp eq i32 %call345, 0
  br i1 %cmp346, label %if.then348, label %if.else349

if.then348:                                       ; preds = %if.else344
  store i8 3, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  br label %if.end356

if.else349:                                       ; preds = %if.else344
  %126 = load i8*, i8** %q, align 8
  %call350 = call i32 @strcmp(i8* noundef %126, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0)) #9
  %cmp351 = icmp eq i32 %call350, 0
  br i1 %cmp351, label %if.then353, label %if.else354

if.then353:                                       ; preds = %if.else349
  store i8 4, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  br label %if.end355

if.else354:                                       ; preds = %if.else349
  br label %usage

if.end355:                                        ; preds = %if.then353
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %if.then348
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.then343
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.then338
  br label %if.end672

if.else359:                                       ; preds = %if.else330
  %127 = load i8*, i8** %p, align 8
  %call360 = call i32 @strcmp(i8* noundef %127, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #9
  %cmp361 = icmp eq i32 %call360, 0
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %if.else359
  %128 = load i8*, i8** %q, align 8
  store i8* %128, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  br label %if.end671

if.else364:                                       ; preds = %if.else359
  %129 = load i8*, i8** %p, align 8
  %call365 = call i32 @strcmp(i8* noundef %129, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i64 0, i64 0)) #9
  %cmp366 = icmp eq i32 %call365, 0
  br i1 %cmp366, label %if.then368, label %if.else374

if.then368:                                       ; preds = %if.else364
  %130 = load i8*, i8** %q, align 8
  %call369 = call i32 @atoi(i8* noundef %130) #9
  switch i32 %call369, label %sw.default372 [
    i32 0, label %sw.bb370
    i32 1, label %sw.bb371
  ]

sw.bb370:                                         ; preds = %if.then368
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  br label %sw.epilog373

sw.bb371:                                         ; preds = %if.then368
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 39), align 8
  br label %sw.epilog373

sw.default372:                                    ; preds = %if.then368
  br label %usage

sw.epilog373:                                     ; preds = %sw.bb371, %sw.bb370
  br label %if.end670

if.else374:                                       ; preds = %if.else364
  %131 = load i8*, i8** %p, align 8
  %call375 = call i32 @strcmp(i8* noundef %131, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0)) #9
  %cmp376 = icmp eq i32 %call375, 0
  br i1 %cmp376, label %if.then378, label %if.else384

if.then378:                                       ; preds = %if.else374
  %132 = load i8*, i8** %q, align 8
  %call379 = call i32 @atoi(i8* noundef %132) #9
  switch i32 %call379, label %sw.default382 [
    i32 0, label %sw.bb380
    i32 1, label %sw.bb381
  ]

sw.bb380:                                         ; preds = %if.then378
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 8
  br label %sw.epilog383

sw.bb381:                                         ; preds = %if.then378
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 8
  br label %sw.epilog383

sw.default382:                                    ; preds = %if.then378
  br label %usage

sw.epilog383:                                     ; preds = %sw.bb381, %sw.bb380
  br label %if.end669

if.else384:                                       ; preds = %if.else374
  %133 = load i8*, i8** %p, align 8
  %call385 = call i32 @strcmp(i8* noundef %133, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #9
  %cmp386 = icmp eq i32 %call385, 0
  br i1 %cmp386, label %if.then388, label %if.else394

if.then388:                                       ; preds = %if.else384
  %134 = load i8*, i8** %q, align 8
  %call389 = call i32 @atoi(i8* noundef %134) #9
  switch i32 %call389, label %sw.default392 [
    i32 0, label %sw.bb390
    i32 1, label %sw.bb391
  ]

sw.bb390:                                         ; preds = %if.then388
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 4
  br label %sw.epilog393

sw.bb391:                                         ; preds = %if.then388
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 4
  br label %sw.epilog393

sw.default392:                                    ; preds = %if.then388
  br label %usage

sw.epilog393:                                     ; preds = %sw.bb391, %sw.bb390
  br label %if.end668

if.else394:                                       ; preds = %if.else384
  %135 = load i8*, i8** %p, align 8
  %call395 = call i32 @strcmp(i8* noundef %135, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0)) #9
  %cmp396 = icmp eq i32 %call395, 0
  br i1 %cmp396, label %if.then398, label %if.else407

if.then398:                                       ; preds = %if.else394
  %136 = load i8*, i8** %q, align 8
  %call399 = call i32 @atoi(i8* noundef %136) #9
  store i32 %call399, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 4
  %cmp400 = icmp slt i32 %137, 0
  br i1 %cmp400, label %if.then405, label %lor.lhs.false402

lor.lhs.false402:                                 ; preds = %if.then398
  %138 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 4
  %cmp403 = icmp sgt i32 %138, 1
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %lor.lhs.false402, %if.then398
  br label %usage

if.end406:                                        ; preds = %lor.lhs.false402
  br label %if.end667

if.else407:                                       ; preds = %if.else394
  %139 = load i8*, i8** %p, align 8
  %call408 = call i32 @strcmp(i8* noundef %139, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i64 0, i64 0)) #9
  %cmp409 = icmp eq i32 %call408, 0
  br i1 %cmp409, label %if.then411, label %if.else420

if.then411:                                       ; preds = %if.else407
  %140 = load i8*, i8** %q, align 8
  %call412 = call i32 @atoi(i8* noundef %140) #9
  store i32 %call412, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %cmp413 = icmp slt i32 %141, 0
  br i1 %cmp413, label %if.then418, label %lor.lhs.false415

lor.lhs.false415:                                 ; preds = %if.then411
  %142 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %cmp416 = icmp sgt i32 %142, 1
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %lor.lhs.false415, %if.then411
  br label %usage

if.end419:                                        ; preds = %lor.lhs.false415
  br label %if.end666

if.else420:                                       ; preds = %if.else407
  %143 = load i8*, i8** %p, align 8
  %call421 = call i32 @strcmp(i8* noundef %143, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i64 0, i64 0)) #9
  %cmp422 = icmp eq i32 %call421, 0
  br i1 %cmp422, label %if.then424, label %if.else430

if.then424:                                       ; preds = %if.else420
  %144 = load i8*, i8** %q, align 8
  %call425 = call i32 @atoi(i8* noundef %144) #9
  store i32 %call425, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 4
  %cmp426 = icmp slt i32 %145, 0
  br i1 %cmp426, label %if.then428, label %if.end429

if.then428:                                       ; preds = %if.then424
  br label %usage

if.end429:                                        ; preds = %if.then424
  br label %if.end665

if.else430:                                       ; preds = %if.else420
  %146 = load i8*, i8** %p, align 8
  %call431 = call i32 @strcmp(i8* noundef %146, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0)) #9
  %cmp432 = icmp eq i32 %call431, 0
  br i1 %cmp432, label %if.then434, label %if.else441

if.then434:                                       ; preds = %if.else430
  %147 = load i8*, i8** %q, align 8
  %call435 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_string(i8* noundef %147) #8
  store %struct.mbedtls_cipher_info_t* %call435, %struct.mbedtls_cipher_info_t** %ci, align 8
  %148 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %ci, align 8
  %cmp436 = icmp eq %struct.mbedtls_cipher_info_t* %148, null
  br i1 %cmp436, label %if.then438, label %if.end439

if.then438:                                       ; preds = %if.then434
  br label %usage

if.end439:                                        ; preds = %if.then434
  %149 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %ci, align 8
  %call440 = call i32 @mbedtls_cipher_info_get_type(%struct.mbedtls_cipher_info_t* noundef %149) #8
  store i32 %call440, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 8
  br label %if.end664

if.else441:                                       ; preds = %if.else430
  %150 = load i8*, i8** %p, align 8
  %call442 = call i32 @strcmp(i8* noundef %150, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i64 0, i64 0)) #9
  %cmp443 = icmp eq i32 %call442, 0
  br i1 %cmp443, label %if.then445, label %if.else451

if.then445:                                       ; preds = %if.else441
  %151 = load i8*, i8** %q, align 8
  %call446 = call i32 @atoi(i8* noundef %151) #9
  store i32 %call446, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 4
  %cmp447 = icmp slt i32 %152, 0
  br i1 %cmp447, label %if.then449, label %if.end450

if.then449:                                       ; preds = %if.then445
  br label %usage

if.end450:                                        ; preds = %if.then445
  br label %if.end663

if.else451:                                       ; preds = %if.else441
  %153 = load i8*, i8** %p, align 8
  %call452 = call i32 @strcmp(i8* noundef %153, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i64 0, i64 0)) #9
  %cmp453 = icmp eq i32 %call452, 0
  br i1 %cmp453, label %if.then455, label %if.else461

if.then455:                                       ; preds = %if.else451
  %154 = load i8*, i8** %q, align 8
  %call456 = call i32 @atoi(i8* noundef %154) #9
  store i32 %call456, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 8
  %cmp457 = icmp slt i32 %155, 0
  br i1 %cmp457, label %if.then459, label %if.end460

if.then459:                                       ; preds = %if.then455
  br label %usage

if.end460:                                        ; preds = %if.then455
  br label %if.end662

if.else461:                                       ; preds = %if.else451
  %156 = load i8*, i8** %p, align 8
  %call462 = call i32 @strcmp(i8* noundef %156, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0)) #9
  %cmp463 = icmp eq i32 %call462, 0
  br i1 %cmp463, label %if.then465, label %if.else474

if.then465:                                       ; preds = %if.else461
  %157 = load i8*, i8** %q, align 8
  %call466 = call i32 @atoi(i8* noundef %157) #9
  store i32 %call466, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  %cmp467 = icmp slt i32 %158, -1
  br i1 %cmp467, label %if.then472, label %lor.lhs.false469

lor.lhs.false469:                                 ; preds = %if.then465
  %159 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  %cmp470 = icmp sgt i32 %159, 1
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %lor.lhs.false469, %if.then465
  br label %usage

if.end473:                                        ; preds = %lor.lhs.false469
  br label %if.end661

if.else474:                                       ; preds = %if.else461
  %160 = load i8*, i8** %p, align 8
  %call475 = call i32 @strcmp(i8* noundef %160, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0)) #9
  %cmp476 = icmp eq i32 %call475, 0
  br i1 %cmp476, label %if.then478, label %if.else487

if.then478:                                       ; preds = %if.else474
  %161 = load i8*, i8** %q, align 8
  %call479 = call i32 @atoi(i8* noundef %161) #9
  store i32 %call479, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  %cmp480 = icmp slt i32 %162, 0
  br i1 %cmp480, label %if.then485, label %lor.lhs.false482

lor.lhs.false482:                                 ; preds = %if.then478
  %163 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  %cmp483 = icmp sgt i32 %163, 1
  br i1 %cmp483, label %if.then485, label %if.end486

if.then485:                                       ; preds = %lor.lhs.false482, %if.then478
  br label %usage

if.end486:                                        ; preds = %lor.lhs.false482
  br label %if.end660

if.else487:                                       ; preds = %if.else474
  %164 = load i8*, i8** %p, align 8
  %call488 = call i32 @strcmp(i8* noundef %164, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i64 0, i64 0)) #9
  %cmp489 = icmp eq i32 %call488, 0
  br i1 %cmp489, label %if.then491, label %if.else497

if.then491:                                       ; preds = %if.else487
  %165 = load i8*, i8** %q, align 8
  %call492 = call i32 @atoi(i8* noundef %165) #9
  store i32 %call492, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 4
  %cmp493 = icmp slt i32 %166, 0
  br i1 %cmp493, label %if.then495, label %if.end496

if.then495:                                       ; preds = %if.then491
  br label %usage

if.end496:                                        ; preds = %if.then491
  br label %if.end659

if.else497:                                       ; preds = %if.else487
  %167 = load i8*, i8** %p, align 8
  %call498 = call i32 @strcmp(i8* noundef %167, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i64 0, i64 0)) #9
  %cmp499 = icmp eq i32 %call498, 0
  br i1 %cmp499, label %if.then501, label %if.else517

if.then501:                                       ; preds = %if.else497
  %168 = load i8*, i8** %q, align 8
  %call502 = call i8* @strchr(i8* noundef %168, i32 noundef 45) #9
  store i8* %call502, i8** %p, align 8
  %cmp503 = icmp eq i8* %call502, null
  br i1 %cmp503, label %if.then505, label %if.end506

if.then505:                                       ; preds = %if.then501
  br label %usage

if.end506:                                        ; preds = %if.then501
  %169 = load i8*, i8** %p, align 8
  %incdec.ptr507 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr507, i8** %p, align 8
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %q, align 8
  %call508 = call i32 @atoi(i8* noundef %170) #9
  store i32 %call508, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  %171 = load i8*, i8** %p, align 8
  %call509 = call i32 @atoi(i8* noundef %171) #9
  store i32 %call509, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  %cmp510 = icmp eq i32 %172, 0
  br i1 %cmp510, label %if.then515, label %lor.lhs.false512

lor.lhs.false512:                                 ; preds = %if.end506
  %173 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  %cmp513 = icmp ult i32 %173, %174
  br i1 %cmp513, label %if.then515, label %if.end516

if.then515:                                       ; preds = %lor.lhs.false512, %if.end506
  br label %usage

if.end516:                                        ; preds = %lor.lhs.false512
  br label %if.end658

if.else517:                                       ; preds = %if.else497
  %175 = load i8*, i8** %p, align 8
  %call518 = call i32 @strcmp(i8* noundef %175, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #9
  %cmp519 = icmp eq i32 %call518, 0
  br i1 %cmp519, label %if.then521, label %if.else527

if.then521:                                       ; preds = %if.else517
  %176 = load i8*, i8** %q, align 8
  %call522 = call i32 @atoi(i8* noundef %176) #9
  store i32 %call522, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 4
  %cmp523 = icmp slt i32 %177, 0
  br i1 %cmp523, label %if.then525, label %if.end526

if.then525:                                       ; preds = %if.then521
  br label %usage

if.end526:                                        ; preds = %if.then521
  br label %if.end657

if.else527:                                       ; preds = %if.else517
  %178 = load i8*, i8** %p, align 8
  %call528 = call i32 @strcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0)) #9
  %cmp529 = icmp eq i32 %call528, 0
  br i1 %cmp529, label %if.then531, label %if.else539

if.then531:                                       ; preds = %if.else527
  %179 = load i8*, i8** %q, align 8
  %call532 = call i32 @atoi(i8* noundef %179) #9
  store i32 %call532, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  %cmp533 = icmp ne i32 %180, 0
  br i1 %cmp533, label %land.lhs.true, label %if.end538

land.lhs.true:                                    ; preds = %if.then531
  %181 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  %cmp535 = icmp ne i32 %181, 1
  br i1 %cmp535, label %if.then537, label %if.end538

if.then537:                                       ; preds = %land.lhs.true
  br label %usage

if.end538:                                        ; preds = %land.lhs.true, %if.then531
  br label %if.end656

if.else539:                                       ; preds = %if.else527
  %182 = load i8*, i8** %p, align 8
  %call540 = call i32 @strcmp(i8* noundef %182, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #9
  %cmp541 = icmp eq i32 %call540, 0
  br i1 %cmp541, label %if.then543, label %if.else544

if.then543:                                       ; preds = %if.else539
  %183 = load i8*, i8** %q, align 8
  store i8* %183, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  br label %if.end655

if.else544:                                       ; preds = %if.else539
  %184 = load i8*, i8** %p, align 8
  %call545 = call i32 @strcmp(i8* noundef %184, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i64 0, i64 0)) #9
  %cmp546 = icmp eq i32 %call545, 0
  br i1 %cmp546, label %if.then548, label %if.else550

if.then548:                                       ; preds = %if.else544
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  %185 = load i8*, i8** %q, align 8
  %call549 = call i32 @query_config(i8* noundef %185) #8
  store i32 %call549, i32* %query_config_ret, align 4
  br label %exit

if.else550:                                       ; preds = %if.else544
  %186 = load i8*, i8** %p, align 8
  %call551 = call i32 @strcmp(i8* noundef %186, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i64 0, i64 0)) #9
  %cmp552 = icmp eq i32 %call551, 0
  br i1 %cmp552, label %if.then554, label %if.else563

if.then554:                                       ; preds = %if.else550
  %187 = load i8*, i8** %q, align 8
  %call555 = call i32 @atoi(i8* noundef %187) #9
  store i32 %call555, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %188 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %cmp556 = icmp slt i32 %188, 0
  br i1 %cmp556, label %if.then561, label %lor.lhs.false558

lor.lhs.false558:                                 ; preds = %if.then554
  %189 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %cmp559 = icmp sgt i32 %189, 2
  br i1 %cmp559, label %if.then561, label %if.end562

if.then561:                                       ; preds = %lor.lhs.false558, %if.then554
  br label %usage

if.end562:                                        ; preds = %lor.lhs.false558
  br label %if.end653

if.else563:                                       ; preds = %if.else550
  %190 = load i8*, i8** %p, align 8
  %call564 = call i32 @strcmp(i8* noundef %190, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0)) #9
  %cmp565 = icmp eq i32 %call564, 0
  br i1 %cmp565, label %if.then567, label %if.else568

if.then567:                                       ; preds = %if.else563
  %191 = load i8*, i8** %q, align 8
  store i8* %191, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 68), align 8
  br label %if.end652

if.else568:                                       ; preds = %if.else563
  %192 = load i8*, i8** %p, align 8
  %call569 = call i32 @strcmp(i8* noundef %192, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i64 0, i64 0)) #9
  %cmp570 = icmp eq i32 %call569, 0
  br i1 %cmp570, label %if.then572, label %if.else581

if.then572:                                       ; preds = %if.else568
  %193 = load i8*, i8** %q, align 8
  %call573 = call i32 @atoi(i8* noundef %193) #9
  store i32 %call573, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %cmp574 = icmp slt i32 %194, 0
  br i1 %cmp574, label %if.then579, label %lor.lhs.false576

lor.lhs.false576:                                 ; preds = %if.then572
  %195 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %cmp577 = icmp sgt i32 %195, 1
  br i1 %cmp577, label %if.then579, label %if.end580

if.then579:                                       ; preds = %lor.lhs.false576, %if.then572
  br label %usage

if.end580:                                        ; preds = %lor.lhs.false576
  br label %if.end651

if.else581:                                       ; preds = %if.else568
  %196 = load i8*, i8** %p, align 8
  %call582 = call i32 @strcmp(i8* noundef %196, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i64 0, i64 0)) #9
  %cmp583 = icmp eq i32 %call582, 0
  br i1 %cmp583, label %if.then585, label %if.else586

if.then585:                                       ; preds = %if.else581
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 70), align 8
  br label %if.end650

if.else586:                                       ; preds = %if.else581
  %197 = load i8*, i8** %p, align 8
  %call587 = call i32 @strcmp(i8* noundef %197, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i64 0, i64 0)) #9
  %cmp588 = icmp eq i32 %call587, 0
  br i1 %cmp588, label %if.then590, label %if.else599

if.then590:                                       ; preds = %if.else586
  %198 = load i8*, i8** %q, align 8
  %call591 = call i32 @atoi(i8* noundef %198) #9
  store i32 %call591, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  %cmp592 = icmp slt i32 %199, 0
  br i1 %cmp592, label %if.then597, label %lor.lhs.false594

lor.lhs.false594:                                 ; preds = %if.then590
  %200 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  %cmp595 = icmp sgt i32 %200, 1
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %lor.lhs.false594, %if.then590
  br label %usage

if.end598:                                        ; preds = %lor.lhs.false594
  br label %if.end649

if.else599:                                       ; preds = %if.else586
  %201 = load i8*, i8** %p, align 8
  %call600 = call i32 @strcmp(i8* noundef %201, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0)) #9
  %cmp601 = icmp eq i32 %call600, 0
  br i1 %cmp601, label %if.then603, label %if.else604

if.then603:                                       ; preds = %if.else599
  %202 = load i8*, i8** %q, align 8
  store i8* %202, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 63), align 8
  br label %if.end648

if.else604:                                       ; preds = %if.else599
  %203 = load i8*, i8** %p, align 8
  %call605 = call i32 @strcmp(i8* noundef %203, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i64 0, i64 0)) #9
  %cmp606 = icmp eq i32 %call605, 0
  br i1 %cmp606, label %if.then608, label %if.else610

if.then608:                                       ; preds = %if.else604
  %204 = load i8*, i8** %q, align 8
  %call609 = call i32 @atoi(i8* noundef %204) #9
  store i32 %call609, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 72), align 8
  br label %if.end647

if.else610:                                       ; preds = %if.else604
  %205 = load i8*, i8** %p, align 8
  %call611 = call i32 @strcmp(i8* noundef %205, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i64 0, i64 0)) #9
  %cmp612 = icmp eq i32 %call611, 0
  br i1 %cmp612, label %if.then614, label %if.else616

if.then614:                                       ; preds = %if.else610
  %206 = load i8*, i8** %q, align 8
  %call615 = call i32 @atoi(i8* noundef %206) #9
  store i32 %call615, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 73), align 4
  br label %if.end646

if.else616:                                       ; preds = %if.else610
  %207 = load i8*, i8** %p, align 8
  %call617 = call i32 @strcmp(i8* noundef %207, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0)) #9
  %cmp618 = icmp eq i32 %call617, 0
  br i1 %cmp618, label %if.then620, label %if.else622

if.then620:                                       ; preds = %if.else616
  %208 = load i8*, i8** %q, align 8
  %call621 = call i32 @atoi(i8* noundef %208) #9
  store i32 %call621, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 74), align 8
  br label %if.end645

if.else622:                                       ; preds = %if.else616
  %209 = load i8*, i8** %p, align 8
  %call623 = call i32 @strcmp(i8* noundef %209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i64 0, i64 0)) #9
  %cmp624 = icmp eq i32 %call623, 0
  br i1 %cmp624, label %if.then626, label %if.else632

if.then626:                                       ; preds = %if.else622
  %210 = load i8*, i8** %q, align 8
  %call627 = call i32 @key_opaque_alg_parse(i8* noundef %210, i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 75), i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 76)) #8
  %cmp628 = icmp ne i32 %call627, 0
  br i1 %cmp628, label %if.then630, label %if.end631

if.then630:                                       ; preds = %if.then626
  br label %usage

if.end631:                                        ; preds = %if.then626
  br label %if.end644

if.else632:                                       ; preds = %if.else622
  %211 = load i8*, i8** %p, align 8
  %call633 = call i32 @strcmp(i8* noundef %211, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0)) #9
  %cmp634 = icmp eq i32 %call633, 0
  br i1 %cmp634, label %if.then636, label %if.else642

if.then636:                                       ; preds = %if.else632
  %212 = load i8*, i8** %q, align 8
  %call637 = call i32 @key_opaque_alg_parse(i8* noundef %212, i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 77), i8** noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 78)) #8
  %cmp638 = icmp ne i32 %call637, 0
  br i1 %cmp638, label %if.then640, label %if.end641

if.then640:                                       ; preds = %if.then636
  br label %usage

if.end641:                                        ; preds = %if.then636
  br label %if.end643

if.else642:                                       ; preds = %if.else632
  br label %usage

if.end643:                                        ; preds = %if.end641
  br label %if.end644

if.end644:                                        ; preds = %if.end643, %if.end631
  br label %if.end645

if.end645:                                        ; preds = %if.end644, %if.then620
  br label %if.end646

if.end646:                                        ; preds = %if.end645, %if.then614
  br label %if.end647

if.end647:                                        ; preds = %if.end646, %if.then608
  br label %if.end648

if.end648:                                        ; preds = %if.end647, %if.then603
  br label %if.end649

if.end649:                                        ; preds = %if.end648, %if.end598
  br label %if.end650

if.end650:                                        ; preds = %if.end649, %if.then585
  br label %if.end651

if.end651:                                        ; preds = %if.end650, %if.end580
  br label %if.end652

if.end652:                                        ; preds = %if.end651, %if.then567
  br label %if.end653

if.end653:                                        ; preds = %if.end652, %if.end562
  br label %if.end654

if.end654:                                        ; preds = %if.end653
  br label %if.end655

if.end655:                                        ; preds = %if.end654, %if.then543
  br label %if.end656

if.end656:                                        ; preds = %if.end655, %if.end538
  br label %if.end657

if.end657:                                        ; preds = %if.end656, %if.end526
  br label %if.end658

if.end658:                                        ; preds = %if.end657, %if.end516
  br label %if.end659

if.end659:                                        ; preds = %if.end658, %if.end496
  br label %if.end660

if.end660:                                        ; preds = %if.end659, %if.end486
  br label %if.end661

if.end661:                                        ; preds = %if.end660, %if.end473
  br label %if.end662

if.end662:                                        ; preds = %if.end661, %if.end460
  br label %if.end663

if.end663:                                        ; preds = %if.end662, %if.end450
  br label %if.end664

if.end664:                                        ; preds = %if.end663, %if.end439
  br label %if.end665

if.end665:                                        ; preds = %if.end664, %if.end429
  br label %if.end666

if.end666:                                        ; preds = %if.end665, %if.end419
  br label %if.end667

if.end667:                                        ; preds = %if.end666, %if.end406
  br label %if.end668

if.end668:                                        ; preds = %if.end667, %sw.epilog393
  br label %if.end669

if.end669:                                        ; preds = %if.end668, %sw.epilog383
  br label %if.end670

if.end670:                                        ; preds = %if.end669, %sw.epilog373
  br label %if.end671

if.end671:                                        ; preds = %if.end670, %if.then363
  br label %if.end672

if.end672:                                        ; preds = %if.end671, %if.end358
  br label %if.end673

if.end673:                                        ; preds = %if.end672, %if.end329
  br label %if.end674

if.end674:                                        ; preds = %if.end673, %if.end312
  br label %if.end675

if.end675:                                        ; preds = %if.end674, %if.end302
  br label %if.end676

if.end676:                                        ; preds = %if.end675, %sw.epilog285
  br label %if.end677

if.end677:                                        ; preds = %if.end676, %if.end275
  br label %if.end678

if.end678:                                        ; preds = %if.end677, %if.end260
  br label %if.end679

if.end679:                                        ; preds = %if.end678, %if.end245
  br label %if.end680

if.end680:                                        ; preds = %if.end679, %if.end235
  br label %if.end681

if.end681:                                        ; preds = %if.end680, %if.then220
  br label %if.end682

if.end682:                                        ; preds = %if.end681, %if.end215
  br label %if.end683

if.end683:                                        ; preds = %if.end682, %sw.epilog
  br label %if.end684

if.end684:                                        ; preds = %if.end683, %if.then192
  br label %if.end685

if.end685:                                        ; preds = %if.end684, %if.then187
  br label %if.end686

if.end686:                                        ; preds = %if.end685, %if.end182
  br label %if.end687

if.end687:                                        ; preds = %if.end686, %if.then172
  br label %if.end688

if.end688:                                        ; preds = %if.end687, %if.then167
  br label %if.end689

if.end689:                                        ; preds = %if.end688, %if.then162
  br label %if.end690

if.end690:                                        ; preds = %if.end689, %if.then157
  br label %if.end691

if.end691:                                        ; preds = %if.end690, %if.then152
  br label %if.end692

if.end692:                                        ; preds = %if.end691, %if.then147
  br label %if.end693

if.end693:                                        ; preds = %if.end692, %if.then142
  br label %if.end694

if.end694:                                        ; preds = %if.end693, %if.then137
  br label %if.end695

if.end695:                                        ; preds = %if.end694, %if.then132
  br label %if.end696

if.end696:                                        ; preds = %if.end695, %if.then127
  br label %if.end697

if.end697:                                        ; preds = %if.end696, %if.then122
  br label %if.end698

if.end698:                                        ; preds = %if.end697, %if.then117
  br label %if.end699

if.end699:                                        ; preds = %if.end698, %if.then112
  br label %if.end700

if.end700:                                        ; preds = %if.end699, %if.end107
  br label %if.end701

if.end701:                                        ; preds = %if.end700, %if.end88
  br label %if.end702

if.end702:                                        ; preds = %if.end701, %if.then77
  br label %if.end703

if.end703:                                        ; preds = %if.end702, %if.end73
  br label %if.end704

if.end704:                                        ; preds = %if.end703, %if.end63
  br label %if.end705

if.end705:                                        ; preds = %if.end704, %if.end53
  br label %if.end706

if.end706:                                        ; preds = %if.end705, %if.end44
  br label %if.end707

if.end707:                                        ; preds = %if.end706, %if.then31
  br label %if.end708

if.end708:                                        ; preds = %if.end707, %if.then28
  br label %for.inc

for.inc:                                          ; preds = %if.end708
  %213 = load i32, i32* %i, align 4
  %inc = add nsw i32 %213, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %214 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  %cmp709 = icmp ne i32 %214, 0
  br i1 %cmp709, label %land.lhs.true711, label %if.end716

land.lhs.true711:                                 ; preds = %for.end
  %215 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %cmp712 = icmp ne i32 %215, 0
  br i1 %cmp712, label %if.then714, label %if.end716

if.then714:                                       ; preds = %land.lhs.true711
  %call715 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %usage

if.end716:                                        ; preds = %land.lhs.true711, %for.end
  %216 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp717 = icmp eq i32 %216, 1
  br i1 %cmp717, label %land.lhs.true719, label %if.end724

land.lhs.true719:                                 ; preds = %if.end716
  %217 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp720 = icmp ne i32 %217, 1
  br i1 %cmp720, label %if.then722, label %if.end724

if.then722:                                       ; preds = %land.lhs.true719
  %call723 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.117, i64 0, i64 0)) #8
  store i32 1, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  br label %if.end724

if.end724:                                        ; preds = %if.then722, %land.lhs.true719, %if.end716
  %218 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  call void @mbedtls_debug_set_threshold(i32 noundef %218) #8
  %219 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv725 = zext i16 %219 to i64
  store i64 %conv725, i64* %buf_content_size, align 8
  %220 = load i64, i64* %buf_content_size, align 8
  %call726 = call i64 @strlen(i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.118, i64 0, i64 0)) #9
  %add = add i64 %call726, 80
  %cmp727 = icmp ult i64 %220, %add
  br i1 %cmp727, label %if.then729, label %if.end732

if.then729:                                       ; preds = %if.end724
  %call730 = call i64 @strlen(i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.118, i64 0, i64 0)) #9
  %add731 = add i64 %call730, 80
  store i64 %add731, i64* %buf_content_size, align 8
  br label %if.end732

if.end732:                                        ; preds = %if.then729, %if.end724
  %221 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp733 = icmp ne i32 %221, -1
  br i1 %cmp733, label %land.lhs.true735, label %if.end741

land.lhs.true735:                                 ; preds = %if.end732
  %222 = load i64, i64* %buf_content_size, align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %conv736 = sext i32 %223 to i64
  %cmp737 = icmp ult i64 %222, %conv736
  br i1 %cmp737, label %if.then739, label %if.end741

if.then739:                                       ; preds = %land.lhs.true735
  %224 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %conv740 = sext i32 %224 to i64
  store i64 %conv740, i64* %buf_content_size, align 8
  br label %if.end741

if.end741:                                        ; preds = %if.then739, %land.lhs.true735, %if.end732
  %225 = load i64, i64* %buf_content_size, align 8
  %add742 = add i64 %225, 1
  %call743 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add742) #7
  store i8* %call743, i8** %buf, align 8
  %226 = load i8*, i8** %buf, align 8
  %cmp744 = icmp eq i8* %226, null
  br i1 %cmp744, label %if.then746, label %if.end749

if.then746:                                       ; preds = %if.end741
  %227 = load i64, i64* %buf_content_size, align 8
  %add747 = add i64 %227, 1
  %call748 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.119, i64 0, i64 0), i64 noundef %add747) #8
  store i32 3, i32* %ret, align 4
  br label %exit

if.end749:                                        ; preds = %if.end741
  %228 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  %cmp750 = icmp sgt i32 %228, 0
  br i1 %cmp750, label %if.then752, label %if.end791

if.then752:                                       ; preds = %if.end749
  %229 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  %call753 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %229) #8
  store %struct.mbedtls_ssl_ciphersuite_t* %call753, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %230 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  %cmp754 = icmp ne i32 %230, -1
  br i1 %cmp754, label %land.lhs.true756, label %if.end762

land.lhs.true756:                                 ; preds = %if.then752
  %231 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %231, i32 0, i32 6
  %232 = load i16, i16* %min_tls_version, align 4
  %conv757 = zext i16 %232 to i32
  %233 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  %cmp758 = icmp sgt i32 %conv757, %233
  br i1 %cmp758, label %if.then760, label %if.end762

if.then760:                                       ; preds = %land.lhs.true756
  %call761 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.120, i64 0, i64 0)) #8
  store i32 2, i32* %ret, align 4
  br label %usage

if.end762:                                        ; preds = %land.lhs.true756, %if.then752
  %234 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  %cmp763 = icmp ne i32 %234, -1
  br i1 %cmp763, label %land.lhs.true765, label %if.end771

land.lhs.true765:                                 ; preds = %if.end762
  %235 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %235, i32 0, i32 7
  %236 = load i16, i16* %max_tls_version, align 2
  %conv766 = zext i16 %236 to i32
  %237 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  %cmp767 = icmp slt i32 %conv766, %237
  br i1 %cmp767, label %if.then769, label %if.end771

if.then769:                                       ; preds = %land.lhs.true765
  %call770 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.120, i64 0, i64 0)) #8
  store i32 2, i32* %ret, align 4
  br label %usage

if.end771:                                        ; preds = %land.lhs.true765, %if.end762
  %238 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  %cmp772 = icmp eq i32 %238, -1
  br i1 %cmp772, label %if.then779, label %lor.lhs.false774

lor.lhs.false774:                                 ; preds = %if.end771
  %239 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  %240 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version775 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %240, i32 0, i32 7
  %241 = load i16, i16* %max_tls_version775, align 2
  %conv776 = zext i16 %241 to i32
  %cmp777 = icmp sgt i32 %239, %conv776
  br i1 %cmp777, label %if.then779, label %if.end782

if.then779:                                       ; preds = %lor.lhs.false774, %if.end771
  %242 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %max_tls_version780 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %242, i32 0, i32 7
  %243 = load i16, i16* %max_tls_version780, align 2
  %conv781 = zext i16 %243 to i32
  store i32 %conv781, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  br label %if.end782

if.end782:                                        ; preds = %if.then779, %lor.lhs.false774
  %244 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  %245 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version783 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %245, i32 0, i32 6
  %246 = load i16, i16* %min_tls_version783, align 4
  %conv784 = zext i16 %246 to i32
  %cmp785 = icmp slt i32 %244, %conv784
  br i1 %cmp785, label %if.then787, label %if.end790

if.then787:                                       ; preds = %if.end782
  %247 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %min_tls_version788 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %247, i32 0, i32 6
  %248 = load i16, i16* %min_tls_version788, align 4
  %conv789 = zext i16 %248 to i32
  store i32 %conv789, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  br label %if.end790

if.end790:                                        ; preds = %if.then787, %if.end782
  br label %if.end791

if.end791:                                        ; preds = %if.end790, %if.end749
  %arraydecay792 = getelementptr inbounds [32 x i8], [32 x i8]* %psk, i64 0, i64 0
  %249 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 8
  %call793 = call i32 @mbedtls_test_unhexify(i8* noundef %arraydecay792, i64 noundef 32, i8* noundef %249, i64* noundef %psk_len) #8
  %cmp794 = icmp ne i32 %call793, 0
  br i1 %cmp794, label %if.then796, label %if.end798

if.then796:                                       ; preds = %if.end791
  %call797 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0)) #8
  br label %exit

if.end798:                                        ; preds = %if.end791
  %250 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 8
  %cmp799 = icmp ne i8* %250, null
  br i1 %cmp799, label %if.then801, label %if.end808

if.then801:                                       ; preds = %if.end798
  %251 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 8
  %call802 = call %struct._psk_entry* @psk_parse(i8* noundef %251) #8
  store %struct._psk_entry* %call802, %struct._psk_entry** %psk_info, align 8
  %cmp803 = icmp eq %struct._psk_entry* %call802, null
  br i1 %cmp803, label %if.then805, label %if.end807

if.then805:                                       ; preds = %if.then801
  %call806 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0)) #8
  br label %exit

if.end807:                                        ; preds = %if.then801
  br label %if.end808

if.end808:                                        ; preds = %if.end807, %if.end798
  %252 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  %cmp809 = icmp ne i8* %252, null
  br i1 %cmp809, label %if.then811, label %if.end883

if.then811:                                       ; preds = %if.end808
  %253 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  store i8* %253, i8** %p, align 8
  store i32 0, i32* %i, align 4
  %254 = load i8*, i8** %p, align 8
  %call812 = call i32 @strcmp(i8* noundef %254, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp813 = icmp eq i32 %call812, 0
  br i1 %cmp813, label %if.then815, label %if.else817

if.then815:                                       ; preds = %if.then811
  %arrayidx816 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 0
  store i16 0, i16* %arrayidx816, align 16
  br label %if.end882

if.else817:                                       ; preds = %if.then811
  %255 = load i8*, i8** %p, align 8
  %call818 = call i32 @strcmp(i8* noundef %255, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0)) #9
  %cmp819 = icmp ne i32 %call818, 0
  br i1 %cmp819, label %if.then821, label %if.end881

if.then821:                                       ; preds = %if.else817
  br label %while.cond822

while.cond822:                                    ; preds = %if.end867, %if.then821
  %256 = load i32, i32* %i, align 4
  %cmp823 = icmp slt i32 %256, 19
  br i1 %cmp823, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond822
  %257 = load i8*, i8** %p, align 8
  %258 = load i8, i8* %257, align 1
  %conv825 = sext i8 %258 to i32
  %cmp826 = icmp ne i32 %conv825, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond822
  %259 = phi i1 [ false, %while.cond822 ], [ %cmp826, %land.rhs ]
  br i1 %259, label %while.body828, label %while.end868

while.body828:                                    ; preds = %land.end
  %260 = load i8*, i8** %p, align 8
  store i8* %260, i8** %q, align 8
  br label %while.cond829

while.cond829:                                    ; preds = %while.body838, %while.body828
  %261 = load i8*, i8** %p, align 8
  %262 = load i8, i8* %261, align 1
  %conv830 = sext i8 %262 to i32
  %cmp831 = icmp ne i32 %conv830, 44
  br i1 %cmp831, label %land.rhs833, label %land.end837

land.rhs833:                                      ; preds = %while.cond829
  %263 = load i8*, i8** %p, align 8
  %264 = load i8, i8* %263, align 1
  %conv834 = sext i8 %264 to i32
  %cmp835 = icmp ne i32 %conv834, 0
  br label %land.end837

land.end837:                                      ; preds = %land.rhs833, %while.cond829
  %265 = phi i1 [ false, %while.cond829 ], [ %cmp835, %land.rhs833 ]
  br i1 %265, label %while.body838, label %while.end840

while.body838:                                    ; preds = %land.end837
  %266 = load i8*, i8** %p, align 8
  %incdec.ptr839 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr839, i8** %p, align 8
  br label %while.cond829, !llvm.loop !25

while.end840:                                     ; preds = %land.end837
  %267 = load i8*, i8** %p, align 8
  %268 = load i8, i8* %267, align 1
  %conv841 = sext i8 %268 to i32
  %cmp842 = icmp eq i32 %conv841, 44
  br i1 %cmp842, label %if.then844, label %if.end846

if.then844:                                       ; preds = %while.end840
  %269 = load i8*, i8** %p, align 8
  %incdec.ptr845 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr845, i8** %p, align 8
  store i8 0, i8* %269, align 1
  br label %if.end846

if.end846:                                        ; preds = %if.then844, %while.end840
  %270 = load i8*, i8** %q, align 8
  %call847 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef %270) #8
  store %struct.mbedtls_ecp_curve_info* %call847, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %cmp848 = icmp ne %struct.mbedtls_ecp_curve_info* %call847, null
  br i1 %cmp848, label %if.then850, label %if.else854

if.then850:                                       ; preds = %if.end846
  %271 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %tls_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %271, i32 0, i32 1
  %272 = load i16, i16* %tls_id, align 4
  %273 = load i32, i32* %i, align 4
  %inc851 = add nsw i32 %273, 1
  store i32 %inc851, i32* %i, align 4
  %idxprom852 = sext i32 %273 to i64
  %arrayidx853 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 %idxprom852
  store i16 %272, i16* %arrayidx853, align 2
  br label %if.end867

if.else854:                                       ; preds = %if.end846
  %274 = load i8*, i8** %q, align 8
  %call855 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i64 0, i64 0), i8* noundef %274) #8
  %call856 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i64 0, i64 0)) #8
  %call857 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #8
  store %struct.mbedtls_ecp_curve_info* %call857, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  br label %for.cond858

for.cond858:                                      ; preds = %for.inc863, %if.else854
  %275 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %275, i32 0, i32 0
  %276 = load i32, i32* %grp_id, align 8
  %cmp859 = icmp ne i32 %276, 0
  br i1 %cmp859, label %for.body861, label %for.end865

for.body861:                                      ; preds = %for.cond858
  %277 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %277, i32 0, i32 3
  %278 = load i8*, i8** %name, align 8
  %call862 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i64 0, i64 0), i8* noundef %278) #8
  br label %for.inc863

for.inc863:                                       ; preds = %for.body861
  %279 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  %incdec.ptr864 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %279, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr864, %struct.mbedtls_ecp_curve_info** %curve_cur, align 8
  br label %for.cond858, !llvm.loop !26

for.end865:                                       ; preds = %for.cond858
  %call866 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %exit

if.end867:                                        ; preds = %if.then850
  br label %while.cond822, !llvm.loop !27

while.end868:                                     ; preds = %land.end
  %280 = load i32, i32* %i, align 4
  %call869 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.127, i64 0, i64 0), i32 noundef %280) #8
  %281 = load i32, i32* %i, align 4
  %cmp870 = icmp eq i32 %281, 19
  br i1 %cmp870, label %land.lhs.true872, label %if.end878

land.lhs.true872:                                 ; preds = %while.end868
  %282 = load i8*, i8** %p, align 8
  %283 = load i8, i8* %282, align 1
  %conv873 = sext i8 %283 to i32
  %cmp874 = icmp ne i32 %conv873, 0
  br i1 %cmp874, label %if.then876, label %if.end878

if.then876:                                       ; preds = %land.lhs.true872
  %call877 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i64 0, i64 0), i32 noundef 19) #8
  br label %exit

if.end878:                                        ; preds = %land.lhs.true872, %while.end868
  %284 = load i32, i32* %i, align 4
  %idxprom879 = sext i32 %284 to i64
  %arrayidx880 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 %idxprom879
  store i16 0, i16* %arrayidx880, align 2
  br label %if.end881

if.end881:                                        ; preds = %if.end878, %if.else817
  br label %if.end882

if.end882:                                        ; preds = %if.end881, %if.then815
  br label %if.end883

if.end883:                                        ; preds = %if.end882, %if.end808
  %285 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  %cmp884 = icmp ne i8* %285, null
  br i1 %cmp884, label %if.then886, label %if.end918

if.then886:                                       ; preds = %if.end883
  %286 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  store i8* %286, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond887

while.cond887:                                    ; preds = %if.end916, %if.then886
  %287 = load i32, i32* %i, align 4
  %cmp888 = icmp slt i32 %287, 9
  br i1 %cmp888, label %land.rhs890, label %land.end894

land.rhs890:                                      ; preds = %while.cond887
  %288 = load i8*, i8** %p, align 8
  %289 = load i8, i8* %288, align 1
  %conv891 = sext i8 %289 to i32
  %cmp892 = icmp ne i32 %conv891, 0
  br label %land.end894

land.end894:                                      ; preds = %land.rhs890, %while.cond887
  %290 = phi i1 [ false, %while.cond887 ], [ %cmp892, %land.rhs890 ]
  br i1 %290, label %while.body895, label %while.end917

while.body895:                                    ; preds = %land.end894
  %291 = load i8*, i8** %p, align 8
  %292 = load i32, i32* %i, align 4
  %inc896 = add nsw i32 %292, 1
  store i32 %inc896, i32* %i, align 4
  %idxprom897 = sext i32 %292 to i64
  %arrayidx898 = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 %idxprom897
  store i8* %291, i8** %arrayidx898, align 8
  br label %while.cond899

while.cond899:                                    ; preds = %while.body908, %while.body895
  %293 = load i8*, i8** %p, align 8
  %294 = load i8, i8* %293, align 1
  %conv900 = sext i8 %294 to i32
  %cmp901 = icmp ne i32 %conv900, 44
  br i1 %cmp901, label %land.rhs903, label %land.end907

land.rhs903:                                      ; preds = %while.cond899
  %295 = load i8*, i8** %p, align 8
  %296 = load i8, i8* %295, align 1
  %conv904 = sext i8 %296 to i32
  %cmp905 = icmp ne i32 %conv904, 0
  br label %land.end907

land.end907:                                      ; preds = %land.rhs903, %while.cond899
  %297 = phi i1 [ false, %while.cond899 ], [ %cmp905, %land.rhs903 ]
  br i1 %297, label %while.body908, label %while.end910

while.body908:                                    ; preds = %land.end907
  %298 = load i8*, i8** %p, align 8
  %incdec.ptr909 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %incdec.ptr909, i8** %p, align 8
  br label %while.cond899, !llvm.loop !28

while.end910:                                     ; preds = %land.end907
  %299 = load i8*, i8** %p, align 8
  %300 = load i8, i8* %299, align 1
  %conv911 = sext i8 %300 to i32
  %cmp912 = icmp eq i32 %conv911, 44
  br i1 %cmp912, label %if.then914, label %if.end916

if.then914:                                       ; preds = %while.end910
  %301 = load i8*, i8** %p, align 8
  %incdec.ptr915 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %incdec.ptr915, i8** %p, align 8
  store i8 0, i8* %301, align 1
  br label %if.end916

if.end916:                                        ; preds = %if.then914, %while.end910
  br label %while.cond887, !llvm.loop !29

while.end917:                                     ; preds = %land.end894
  br label %if.end918

if.end918:                                        ; preds = %while.end917, %if.end883
  %call919 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.129, i64 0, i64 0)) #8
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call920 = call i32 @fflush(%struct._IO_FILE* noundef %302) #8
  %303 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 70), align 8
  %304 = load i8*, i8** %pers, align 8
  %call921 = call i32 @rng_seed(%struct.rng_context_t* noundef @rng, i32 noundef %303, i8* noundef %304) #8
  store i32 %call921, i32* %ret, align 4
  %305 = load i32, i32* %ret, align 4
  %cmp922 = icmp ne i32 %305, 0
  br i1 %cmp922, label %if.then924, label %if.end925

if.then924:                                       ; preds = %if.end918
  br label %exit

if.end925:                                        ; preds = %if.end918
  %call926 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  %call927 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.131, i64 0, i64 0)) #8
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call928 = call i32 @fflush(%struct._IO_FILE* noundef %306) #8
  %307 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call929 = call i32 @strcmp(i8* noundef %307, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp930 = icmp eq i32 %call929, 0
  br i1 %cmp930, label %if.then936, label %lor.lhs.false932

lor.lhs.false932:                                 ; preds = %if.end925
  %308 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call933 = call i32 @strcmp(i8* noundef %308, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp934 = icmp eq i32 %call933, 0
  br i1 %cmp934, label %if.then936, label %if.else937

if.then936:                                       ; preds = %lor.lhs.false932, %if.end925
  store i32 0, i32* %ret, align 4
  br label %if.end990

if.else937:                                       ; preds = %lor.lhs.false932
  %309 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call938 = call i64 @strlen(i8* noundef %309) #9
  %tobool939 = icmp ne i64 %call938, 0
  br i1 %tobool939, label %if.then940, label %if.else942

if.then940:                                       ; preds = %if.else937
  %310 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call941 = call i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %310) #8
  store i32 %call941, i32* %ret, align 4
  br label %if.end989

if.else942:                                       ; preds = %if.else937
  %311 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call943 = call i64 @strlen(i8* noundef %311) #9
  %tobool944 = icmp ne i64 %call943, 0
  br i1 %tobool944, label %if.then945, label %if.else947

if.then945:                                       ; preds = %if.else942
  %312 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call946 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %312) #8
  store i32 %call946, i32* %ret, align 4
  br label %if.end988

if.else947:                                       ; preds = %if.else942
  store i32 0, i32* %i, align 4
  br label %for.cond948

for.cond948:                                      ; preds = %for.inc963, %if.else947
  %313 = load i32, i32* %i, align 4
  %idxprom949 = sext i32 %313 to i64
  %arrayidx950 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas, i64 0, i64 %idxprom949
  %314 = load i8*, i8** %arrayidx950, align 8
  %cmp951 = icmp ne i8* %314, null
  br i1 %cmp951, label %for.body953, label %for.end965

for.body953:                                      ; preds = %for.cond948
  %315 = load i32, i32* %i, align 4
  %idxprom954 = sext i32 %315 to i64
  %arrayidx955 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas, i64 0, i64 %idxprom954
  %316 = load i8*, i8** %arrayidx955, align 8
  %317 = load i32, i32* %i, align 4
  %idxprom956 = sext i32 %317 to i64
  %arrayidx957 = getelementptr inbounds [0 x i64], [0 x i64]* @mbedtls_test_cas_len, i64 0, i64 %idxprom956
  %318 = load i64, i64* %arrayidx957, align 8
  %call958 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %316, i64 noundef %318) #8
  store i32 %call958, i32* %ret, align 4
  %319 = load i32, i32* %ret, align 4
  %cmp959 = icmp ne i32 %319, 0
  br i1 %cmp959, label %if.then961, label %if.end962

if.then961:                                       ; preds = %for.body953
  br label %for.end965

if.end962:                                        ; preds = %for.body953
  br label %for.inc963

for.inc963:                                       ; preds = %if.end962
  %320 = load i32, i32* %i, align 4
  %inc964 = add nsw i32 %320, 1
  store i32 %inc964, i32* %i, align 4
  br label %for.cond948, !llvm.loop !30

for.end965:                                       ; preds = %if.then961, %for.cond948
  %321 = load i32, i32* %ret, align 4
  %cmp966 = icmp eq i32 %321, 0
  br i1 %cmp966, label %if.then968, label %if.end987

if.then968:                                       ; preds = %for.end965
  store i32 0, i32* %i, align 4
  br label %for.cond969

for.cond969:                                      ; preds = %for.inc984, %if.then968
  %322 = load i32, i32* %i, align 4
  %idxprom970 = sext i32 %322 to i64
  %arrayidx971 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas_der, i64 0, i64 %idxprom970
  %323 = load i8*, i8** %arrayidx971, align 8
  %cmp972 = icmp ne i8* %323, null
  br i1 %cmp972, label %for.body974, label %for.end986

for.body974:                                      ; preds = %for.cond969
  %324 = load i32, i32* %i, align 4
  %idxprom975 = sext i32 %324 to i64
  %arrayidx976 = getelementptr inbounds [0 x i8*], [0 x i8*]* @mbedtls_test_cas_der, i64 0, i64 %idxprom975
  %325 = load i8*, i8** %arrayidx976, align 8
  %326 = load i32, i32* %i, align 4
  %idxprom977 = sext i32 %326 to i64
  %arrayidx978 = getelementptr inbounds [0 x i64], [0 x i64]* @mbedtls_test_cas_der_len, i64 0, i64 %idxprom977
  %327 = load i64, i64* %arrayidx978, align 8
  %call979 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %cacert, i8* noundef %325, i64 noundef %327) #8
  store i32 %call979, i32* %ret, align 4
  %328 = load i32, i32* %ret, align 4
  %cmp980 = icmp ne i32 %328, 0
  br i1 %cmp980, label %if.then982, label %if.end983

if.then982:                                       ; preds = %for.body974
  br label %for.end986

if.end983:                                        ; preds = %for.body974
  br label %for.inc984

for.inc984:                                       ; preds = %if.end983
  %329 = load i32, i32* %i, align 4
  %inc985 = add nsw i32 %329, 1
  store i32 %inc985, i32* %i, align 4
  br label %for.cond969, !llvm.loop !31

for.end986:                                       ; preds = %if.then982, %for.cond969
  br label %if.end987

if.end987:                                        ; preds = %for.end986, %for.end965
  br label %if.end988

if.end988:                                        ; preds = %if.end987, %if.then945
  br label %if.end989

if.end989:                                        ; preds = %if.end988, %if.then940
  br label %if.end990

if.end990:                                        ; preds = %if.end989, %if.then936
  %330 = load i32, i32* %ret, align 4
  %cmp991 = icmp slt i32 %330, 0
  br i1 %cmp991, label %if.then993, label %if.end995

if.then993:                                       ; preds = %if.end990
  %331 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %331
  %call994 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.132, i64 0, i64 0), i32 noundef %sub) #8
  br label %exit

if.end995:                                        ; preds = %if.end990
  %332 = load i32, i32* %ret, align 4
  %call996 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.133, i64 0, i64 0), i32 noundef %332) #8
  %call997 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.134, i64 0, i64 0)) #8
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call998 = call i32 @fflush(%struct._IO_FILE* noundef %333) #8
  %334 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call999 = call i64 @strlen(i8* noundef %334) #9
  %tobool1000 = icmp ne i64 %call999, 0
  br i1 %tobool1000, label %land.lhs.true1001, label %if.end1014

land.lhs.true1001:                                ; preds = %if.end995
  %335 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call1002 = call i32 @strcmp(i8* noundef %335, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1003 = icmp ne i32 %call1002, 0
  br i1 %cmp1003, label %if.then1005, label %if.end1014

if.then1005:                                      ; preds = %land.lhs.true1001
  %336 = load i32, i32* %key_cert_init, align 4
  %inc1006 = add nsw i32 %336, 1
  store i32 %inc1006, i32* %key_cert_init, align 4
  %337 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call1007 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef %337) #8
  store i32 %call1007, i32* %ret, align 4
  %cmp1008 = icmp ne i32 %call1007, 0
  br i1 %cmp1008, label %if.then1010, label %if.end1013

if.then1010:                                      ; preds = %if.then1005
  %338 = load i32, i32* %ret, align 4
  %sub1011 = sub nsw i32 0, %338
  %call1012 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.135, i64 0, i64 0), i32 noundef %sub1011) #8
  br label %exit

if.end1013:                                       ; preds = %if.then1005
  br label %if.end1014

if.end1014:                                       ; preds = %if.end1013, %land.lhs.true1001, %if.end995
  %339 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call1015 = call i64 @strlen(i8* noundef %339) #9
  %tobool1016 = icmp ne i64 %call1015, 0
  br i1 %tobool1016, label %land.lhs.true1017, label %if.end1030

land.lhs.true1017:                                ; preds = %if.end1014
  %340 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call1018 = call i32 @strcmp(i8* noundef %340, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1019 = icmp ne i32 %call1018, 0
  br i1 %cmp1019, label %if.then1021, label %if.end1030

if.then1021:                                      ; preds = %land.lhs.true1017
  %341 = load i32, i32* %key_cert_init, align 4
  %inc1022 = add nsw i32 %341, 1
  store i32 %inc1022, i32* %key_cert_init, align 4
  %342 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %343 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 8
  %call1023 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef %342, i8* noundef %343, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  store i32 %call1023, i32* %ret, align 4
  %cmp1024 = icmp ne i32 %call1023, 0
  br i1 %cmp1024, label %if.then1026, label %if.end1029

if.then1026:                                      ; preds = %if.then1021
  %344 = load i32, i32* %ret, align 4
  %sub1027 = sub nsw i32 0, %344
  %call1028 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.136, i64 0, i64 0), i32 noundef %sub1027) #8
  br label %exit

if.end1029:                                       ; preds = %if.then1021
  br label %if.end1030

if.end1030:                                       ; preds = %if.end1029, %land.lhs.true1017, %if.end1014
  %345 = load i32, i32* %key_cert_init, align 4
  %cmp1031 = icmp eq i32 %345, 1
  br i1 %cmp1031, label %if.then1033, label %if.end1035

if.then1033:                                      ; preds = %if.end1030
  %call1034 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.137, i64 0, i64 0)) #8
  br label %exit

if.end1035:                                       ; preds = %if.end1030
  %346 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %call1036 = call i64 @strlen(i8* noundef %346) #9
  %tobool1037 = icmp ne i64 %call1036, 0
  br i1 %tobool1037, label %land.lhs.true1038, label %if.end1051

land.lhs.true1038:                                ; preds = %if.end1035
  %347 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %call1039 = call i32 @strcmp(i8* noundef %347, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1040 = icmp ne i32 %call1039, 0
  br i1 %cmp1040, label %if.then1042, label %if.end1051

if.then1042:                                      ; preds = %land.lhs.true1038
  %348 = load i32, i32* %key_cert_init2, align 4
  %inc1043 = add nsw i32 %348, 1
  store i32 %inc1043, i32* %key_cert_init2, align 4
  %349 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %call1044 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %srvcert2, i8* noundef %349) #8
  store i32 %call1044, i32* %ret, align 4
  %cmp1045 = icmp ne i32 %call1044, 0
  br i1 %cmp1045, label %if.then1047, label %if.end1050

if.then1047:                                      ; preds = %if.then1042
  %350 = load i32, i32* %ret, align 4
  %sub1048 = sub nsw i32 0, %350
  %call1049 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.138, i64 0, i64 0), i32 noundef %sub1048) #8
  br label %exit

if.end1050:                                       ; preds = %if.then1042
  br label %if.end1051

if.end1051:                                       ; preds = %if.end1050, %land.lhs.true1038, %if.end1035
  %351 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  %call1052 = call i64 @strlen(i8* noundef %351) #9
  %tobool1053 = icmp ne i64 %call1052, 0
  br i1 %tobool1053, label %land.lhs.true1054, label %if.end1067

land.lhs.true1054:                                ; preds = %if.end1051
  %352 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  %call1055 = call i32 @strcmp(i8* noundef %352, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1056 = icmp ne i32 %call1055, 0
  br i1 %cmp1056, label %if.then1058, label %if.end1067

if.then1058:                                      ; preds = %land.lhs.true1054
  %353 = load i32, i32* %key_cert_init2, align 4
  %inc1059 = add nsw i32 %353, 1
  store i32 %inc1059, i32* %key_cert_init2, align 4
  %354 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  %355 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %call1060 = call i32 @mbedtls_pk_parse_keyfile(%struct.mbedtls_pk_context* noundef %pkey2, i8* noundef %354, i8* noundef %355, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  store i32 %call1060, i32* %ret, align 4
  %cmp1061 = icmp ne i32 %call1060, 0
  br i1 %cmp1061, label %if.then1063, label %if.end1066

if.then1063:                                      ; preds = %if.then1058
  %356 = load i32, i32* %ret, align 4
  %sub1064 = sub nsw i32 0, %356
  %call1065 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.139, i64 0, i64 0), i32 noundef %sub1064) #8
  br label %exit

if.end1066:                                       ; preds = %if.then1058
  br label %if.end1067

if.end1067:                                       ; preds = %if.end1066, %land.lhs.true1054, %if.end1051
  %357 = load i32, i32* %key_cert_init2, align 4
  %cmp1068 = icmp eq i32 %357, 1
  br i1 %cmp1068, label %if.then1070, label %if.end1072

if.then1070:                                      ; preds = %if.end1067
  %call1071 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.140, i64 0, i64 0)) #8
  br label %exit

if.end1072:                                       ; preds = %if.end1067
  %358 = load i32, i32* %key_cert_init, align 4
  %cmp1073 = icmp eq i32 %358, 0
  br i1 %cmp1073, label %land.lhs.true1075, label %if.end1123

land.lhs.true1075:                                ; preds = %if.end1072
  %359 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call1076 = call i32 @strcmp(i8* noundef %359, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1077 = icmp ne i32 %call1076, 0
  br i1 %cmp1077, label %land.lhs.true1079, label %if.end1123

land.lhs.true1079:                                ; preds = %land.lhs.true1075
  %360 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 8
  %call1080 = call i32 @strcmp(i8* noundef %360, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1081 = icmp ne i32 %call1080, 0
  br i1 %cmp1081, label %land.lhs.true1083, label %if.end1123

land.lhs.true1083:                                ; preds = %land.lhs.true1079
  %361 = load i32, i32* %key_cert_init2, align 4
  %cmp1084 = icmp eq i32 %361, 0
  br i1 %cmp1084, label %land.lhs.true1086, label %if.end1123

land.lhs.true1086:                                ; preds = %land.lhs.true1083
  %362 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %call1087 = call i32 @strcmp(i8* noundef %362, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1088 = icmp ne i32 %call1087, 0
  br i1 %cmp1088, label %land.lhs.true1090, label %if.end1123

land.lhs.true1090:                                ; preds = %land.lhs.true1086
  %363 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 8
  %call1091 = call i32 @strcmp(i8* noundef %363, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1092 = icmp ne i32 %call1091, 0
  br i1 %cmp1092, label %if.then1094, label %if.end1123

if.then1094:                                      ; preds = %land.lhs.true1090
  %364 = load i64, i64* @mbedtls_test_srv_crt_rsa_len, align 8
  %call1095 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_srv_crt_rsa, i64 0, i64 0), i64 noundef %364) #8
  store i32 %call1095, i32* %ret, align 4
  %cmp1096 = icmp ne i32 %call1095, 0
  br i1 %cmp1096, label %if.then1098, label %if.end1101

if.then1098:                                      ; preds = %if.then1094
  %365 = load i32, i32* %ret, align 4
  %sub1099 = sub nsw i32 0, %365
  %call1100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.132, i64 0, i64 0), i32 noundef %sub1099) #8
  br label %exit

if.end1101:                                       ; preds = %if.then1094
  %366 = load i64, i64* @mbedtls_test_srv_key_rsa_len, align 8
  %call1102 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_srv_key_rsa, i64 0, i64 0), i64 noundef %366, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  store i32 %call1102, i32* %ret, align 4
  %cmp1103 = icmp ne i32 %call1102, 0
  br i1 %cmp1103, label %if.then1105, label %if.end1108

if.then1105:                                      ; preds = %if.end1101
  %367 = load i32, i32* %ret, align 4
  %sub1106 = sub nsw i32 0, %367
  %call1107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.141, i64 0, i64 0), i32 noundef %sub1106) #8
  br label %exit

if.end1108:                                       ; preds = %if.end1101
  store i32 2, i32* %key_cert_init, align 4
  %368 = load i64, i64* @mbedtls_test_srv_crt_ec_len, align 8
  %call1109 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %srvcert2, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_srv_crt_ec, i64 0, i64 0), i64 noundef %368) #8
  store i32 %call1109, i32* %ret, align 4
  %cmp1110 = icmp ne i32 %call1109, 0
  br i1 %cmp1110, label %if.then1112, label %if.end1115

if.then1112:                                      ; preds = %if.end1108
  %369 = load i32, i32* %ret, align 4
  %sub1113 = sub nsw i32 0, %369
  %call1114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.142, i64 0, i64 0), i32 noundef %sub1113) #8
  br label %exit

if.end1115:                                       ; preds = %if.end1108
  %370 = load i64, i64* @mbedtls_test_srv_key_ec_len, align 8
  %call1116 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef %pkey2, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_srv_key_ec, i64 0, i64 0), i64 noundef %370, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  store i32 %call1116, i32* %ret, align 4
  %cmp1117 = icmp ne i32 %call1116, 0
  br i1 %cmp1117, label %if.then1119, label %if.end1122

if.then1119:                                      ; preds = %if.end1115
  %371 = load i32, i32* %ret, align 4
  %sub1120 = sub nsw i32 0, %371
  %call1121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.143, i64 0, i64 0), i32 noundef %sub1120) #8
  br label %exit

if.end1122:                                       ; preds = %if.end1115
  store i32 2, i32* %key_cert_init2, align 4
  br label %if.end1123

if.end1123:                                       ; preds = %if.end1122, %land.lhs.true1090, %land.lhs.true1086, %land.lhs.true1083, %land.lhs.true1079, %land.lhs.true1075, %if.end1072
  %372 = load i32, i32* %key_cert_init, align 4
  %tobool1124 = icmp ne i32 %372, 0
  br i1 %tobool1124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end1123
  %call1125 = call i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %pkey) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end1123
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1126 = phi i8* [ %call1125, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %cond.false ]
  %373 = load i32, i32* %key_cert_init2, align 4
  %tobool1127 = icmp ne i32 %373, 0
  br i1 %tobool1127, label %cond.true1128, label %cond.false1130

cond.true1128:                                    ; preds = %cond.end
  %call1129 = call i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %pkey2) #8
  br label %cond.end1131

cond.false1130:                                   ; preds = %cond.end
  br label %cond.end1131

cond.end1131:                                     ; preds = %cond.false1130, %cond.true1128
  %cond1132 = phi i8* [ %call1129, %cond.true1128 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %cond.false1130 ]
  %call1133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.144, i64 0, i64 0), i8* noundef %cond1126, i8* noundef %cond1132) #8
  %374 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp1134 = icmp ne i8* %374, null
  br i1 %cmp1134, label %if.then1136, label %if.end1147

if.then1136:                                      ; preds = %cond.end1131
  %call1137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.145, i64 0, i64 0)) #8
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1138 = call i32 @fflush(%struct._IO_FILE* noundef %375) #8
  %376 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %call1139 = call i32 @mbedtls_dhm_parse_dhmfile(%struct.mbedtls_dhm_context* noundef %dhm, i8* noundef %376) #8
  store i32 %call1139, i32* %ret, align 4
  %cmp1140 = icmp ne i32 %call1139, 0
  br i1 %cmp1140, label %if.then1142, label %if.end1145

if.then1142:                                      ; preds = %if.then1136
  %377 = load i32, i32* %ret, align 4
  %sub1143 = sub nsw i32 0, %377
  %call1144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i64 0, i64 0), i32 noundef %sub1143) #8
  br label %exit

if.end1145:                                       ; preds = %if.then1136
  %call1146 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end1147

if.end1147:                                       ; preds = %if.end1145, %cond.end1131
  %378 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  %cmp1148 = icmp ne i8* %378, null
  br i1 %cmp1148, label %if.then1150, label %if.end1160

if.then1150:                                      ; preds = %if.end1147
  %call1151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.147, i64 0, i64 0)) #8
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1152 = call i32 @fflush(%struct._IO_FILE* noundef %379) #8
  %380 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  %call1153 = call %struct._sni_entry* @sni_parse(i8* noundef %380) #8
  store %struct._sni_entry* %call1153, %struct._sni_entry** %sni_info, align 8
  %cmp1154 = icmp eq %struct._sni_entry* %call1153, null
  br i1 %cmp1154, label %if.then1156, label %if.end1158

if.then1156:                                      ; preds = %if.then1150
  %call1157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0)) #8
  br label %exit

if.end1158:                                       ; preds = %if.then1150
  %call1159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end1160

if.end1160:                                       ; preds = %if.end1158, %if.end1147
  %call1161 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.149, i64 0, i64 0)) #8
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1162 = call i32 @fflush(%struct._IO_FILE* noundef %381) #8
  %382 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %call1163 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef %382, i32 noundef 0) #8
  store i32 %call1163, i32* %ret, align 4
  %cmp1164 = icmp ne i32 %call1163, 0
  br i1 %cmp1164, label %if.then1166, label %if.end1169

if.then1166:                                      ; preds = %if.end1160
  %383 = load i32, i32* %ret, align 4
  %sub1167 = sub nsw i32 0, %383
  %call1168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.150, i64 0, i64 0), i32 noundef %sub1167) #8
  br label %exit

if.end1169:                                       ; preds = %if.end1160
  %384 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 34), align 4
  %cmp1170 = icmp sgt i32 %384, 0
  br i1 %cmp1170, label %if.then1172, label %if.end1173

if.then1172:                                      ; preds = %if.end1169
  %allowed_mds = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %crt_profile_for_test, i32 0, i32 0
  %385 = load i32, i32* %allowed_mds, align 4
  %or = or i32 %385, 2
  store i32 %or, i32* %allowed_mds, align 4
  call void @mbedtls_ssl_conf_cert_profile(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt_profile* noundef %crt_profile_for_test) #8
  call void @mbedtls_ssl_conf_sig_algs(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef getelementptr inbounds ([12 x i16], [12 x i16]* @ssl_sig_algs_for_test, i64 0, i64 0)) #8
  br label %if.end1173

if.end1173:                                       ; preds = %if.then1172, %if.end1169
  %386 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 8
  %cmp1174 = icmp ne i32 %386, -1
  br i1 %cmp1174, label %if.then1176, label %if.end1177

if.then1176:                                      ; preds = %if.end1173
  %387 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 35), align 8
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %387) #8
  br label %if.end1177

if.end1177:                                       ; preds = %if.then1176, %if.end1173
  %388 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %cmp1178 = icmp ne i32 %388, 1
  br i1 %cmp1178, label %if.then1180, label %if.end1182

if.then1180:                                      ; preds = %if.end1177
  %389 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 36), align 4
  %conv1181 = trunc i32 %389 to i8
  call void @mbedtls_ssl_conf_cert_req_ca_list(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv1181) #8
  br label %if.end1182

if.end1182:                                       ; preds = %if.then1180, %if.end1177
  %390 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 8
  %cmp1183 = icmp eq i32 %390, 2
  br i1 %cmp1183, label %land.lhs.true1185, label %if.end1188

land.lhs.true1185:                                ; preds = %if.end1182
  %391 = load i32, i32* %key_cert_init2, align 4
  %tobool1186 = icmp ne i32 %391, 0
  br i1 %tobool1186, label %if.then1187, label %if.end1188

if.then1187:                                      ; preds = %land.lhs.true1185
  call void @mbedtls_ssl_conf_dn_hints(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert2) #8
  br label %if.end1188

if.end1188:                                       ; preds = %if.then1187, %land.lhs.true1185, %if.end1182
  %392 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  %cmp1189 = icmp ne i32 %392, 0
  br i1 %cmp1189, label %if.then1194, label %lor.lhs.false1191

lor.lhs.false1191:                                ; preds = %if.end1188
  %393 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  %cmp1192 = icmp ne i32 %393, 0
  br i1 %cmp1192, label %if.then1194, label %if.end1195

if.then1194:                                      ; preds = %lor.lhs.false1191, %if.end1188
  %394 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 56), align 4
  %395 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 57), align 8
  call void @mbedtls_ssl_conf_handshake_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %394, i32 noundef %395) #8
  br label %if.end1195

if.end1195:                                       ; preds = %if.then1194, %lor.lhs.false1191
  %396 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  %cmp1196 = icmp ne i32 %396, 1
  br i1 %cmp1196, label %if.then1198, label %if.end1199

if.then1198:                                      ; preds = %if.end1195
  %397 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 59), align 8
  call void @mbedtls_ssl_set_datagram_packing(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %397) #8
  br label %if.end1199

if.end1199:                                       ; preds = %if.then1198, %if.end1195
  %398 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 38), align 4
  %call1200 = call i32 @mbedtls_ssl_conf_max_frag_len(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef zeroext %398) #8
  store i32 %call1200, i32* %ret, align 4
  %cmp1201 = icmp ne i32 %call1200, 0
  br i1 %cmp1201, label %if.then1203, label %if.end1205

if.then1203:                                      ; preds = %if.end1199
  %399 = load i32, i32* %ret, align 4
  %call1204 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.151, i64 0, i64 0), i32 noundef %399) #8
  br label %exit

if.end1205:                                       ; preds = %if.end1199
  %400 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 8
  %cmp1206 = icmp ne i32 %400, -1
  br i1 %cmp1206, label %if.then1208, label %if.end1210

if.then1208:                                      ; preds = %if.end1205
  %401 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 51), align 8
  %conv1209 = trunc i32 %401 to i8
  call void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv1209) #8
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1208, %if.end1205
  %402 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 4
  %cmp1211 = icmp ne i32 %402, -1
  br i1 %cmp1211, label %if.then1213, label %if.end1215

if.then1213:                                      ; preds = %if.end1210
  %403 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 52), align 4
  %conv1214 = trunc i32 %403 to i8
  call void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv1214) #8
  br label %if.end1215

if.end1215:                                       ; preds = %if.then1213, %if.end1210
  %404 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  %cmp1216 = icmp ne i8* %404, null
  br i1 %cmp1216, label %if.then1218, label %if.end1226

if.then1218:                                      ; preds = %if.end1215
  %arraydecay1219 = getelementptr inbounds [10 x i8*], [10 x i8*]* %alpn_list, i64 0, i64 0
  %call1220 = call i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef %conf, i8** noundef %arraydecay1219) #8
  store i32 %call1220, i32* %ret, align 4
  %cmp1221 = icmp ne i32 %call1220, 0
  br i1 %cmp1221, label %if.then1223, label %if.end1225

if.then1223:                                      ; preds = %if.then1218
  %405 = load i32, i32* %ret, align 4
  %call1224 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.152, i64 0, i64 0), i32 noundef %405) #8
  br label %exit

if.end1225:                                       ; preds = %if.then1218
  br label %if.end1226

if.end1226:                                       ; preds = %if.end1225, %if.end1215
  %406 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 70), align 8
  %tobool1227 = icmp ne i32 %406, 0
  br i1 %tobool1227, label %if.then1228, label %if.end1230

if.then1228:                                      ; preds = %if.end1226
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %407, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.153, i64 0, i64 0)) #8
  br label %if.end1230

if.end1230:                                       ; preds = %if.then1228, %if.end1226
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %409 = bitcast %struct._IO_FILE* %408 to i8*
  call void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef @my_debug, i8* noundef %409) #8
  %410 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 4
  %cmp1231 = icmp ne i32 %410, -1
  br i1 %cmp1231, label %if.then1233, label %if.end1234

if.then1233:                                      ; preds = %if.end1230
  %411 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 44), align 4
  call void @mbedtls_ssl_cache_set_max_entries(%struct.mbedtls_ssl_cache_context* noundef %cache, i32 noundef %411) #8
  br label %if.end1234

if.end1234:                                       ; preds = %if.then1233, %if.end1230
  %412 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 8
  %cmp1235 = icmp ne i32 %412, -1
  br i1 %cmp1235, label %if.then1237, label %if.end1238

if.then1237:                                      ; preds = %if.end1234
  %413 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 45), align 8
  call void @mbedtls_ssl_cache_set_timeout(%struct.mbedtls_ssl_cache_context* noundef %cache, i32 noundef %413) #8
  br label %if.end1238

if.end1238:                                       ; preds = %if.then1237, %if.end1234
  %414 = bitcast %struct.mbedtls_ssl_cache_context* %cache to i8*
  call void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %414, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_get, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef @mbedtls_ssl_cache_set) #8
  %415 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 40), align 4
  %cmp1239 = icmp eq i32 %415, 1
  br i1 %cmp1239, label %if.then1241, label %if.end1270

if.then1241:                                      ; preds = %if.end1238
  %416 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 43), align 8
  %417 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 4
  %call1242 = call i32 @mbedtls_ssl_ticket_setup(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*), i32 noundef %416, i32 noundef %417) #8
  store i32 %call1242, i32* %ret, align 4
  %cmp1243 = icmp ne i32 %call1242, 0
  br i1 %cmp1243, label %if.then1245, label %if.end1247

if.then1245:                                      ; preds = %if.then1241
  %418 = load i32, i32* %ret, align 4
  %call1246 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.154, i64 0, i64 0), i32 noundef %418) #8
  br label %exit

if.end1247:                                       ; preds = %if.then1241
  %419 = bitcast %struct.mbedtls_ssl_ticket_context* %ticket_ctx to i8*
  call void @mbedtls_ssl_conf_session_tickets_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* noundef @mbedtls_ssl_ticket_write, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* noundef @mbedtls_ssl_ticket_parse, i8* noundef %419) #8
  %420 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 41), align 8
  %tobool1248 = icmp ne i32 %420, 0
  br i1 %tobool1248, label %if.then1249, label %if.end1269

if.then1249:                                      ; preds = %if.end1247
  %arraydecay1251 = getelementptr inbounds [4 x i8], [4 x i8]* %name1250, i64 0, i64 0
  %call1252 = call i32 @rng_get(i8* noundef bitcast (%struct.rng_context_t* @rng to i8*), i8* noundef %arraydecay1251, i64 noundef 4) #8
  store i32 %call1252, i32* %ret, align 4
  %cmp1253 = icmp ne i32 %call1252, 0
  br i1 %cmp1253, label %if.then1266, label %lor.lhs.false1255

lor.lhs.false1255:                                ; preds = %if.then1249
  %arraydecay1256 = getelementptr inbounds [32 x i8], [32 x i8]* %kbuf, i64 0, i64 0
  %call1257 = call i32 @rng_get(i8* noundef bitcast (%struct.rng_context_t* @rng to i8*), i8* noundef %arraydecay1256, i64 noundef 32) #8
  store i32 %call1257, i32* %ret, align 4
  %cmp1258 = icmp ne i32 %call1257, 0
  br i1 %cmp1258, label %if.then1266, label %lor.lhs.false1260

lor.lhs.false1260:                                ; preds = %lor.lhs.false1255
  %arraydecay1261 = getelementptr inbounds [4 x i8], [4 x i8]* %name1250, i64 0, i64 0
  %arraydecay1262 = getelementptr inbounds [32 x i8], [32 x i8]* %kbuf, i64 0, i64 0
  %421 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 42), align 4
  %call1263 = call i32 @mbedtls_ssl_ticket_rotate(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx, i8* noundef %arraydecay1261, i64 noundef 4, i8* noundef %arraydecay1262, i64 noundef 32, i32 noundef %421) #8
  store i32 %call1263, i32* %ret, align 4
  %cmp1264 = icmp ne i32 %call1263, 0
  br i1 %cmp1264, label %if.then1266, label %if.end1268

if.then1266:                                      ; preds = %lor.lhs.false1260, %lor.lhs.false1255, %if.then1249
  %422 = load i32, i32* %ret, align 4
  %call1267 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.155, i64 0, i64 0), i32 noundef %422) #8
  br label %exit

if.end1268:                                       ; preds = %lor.lhs.false1260
  br label %if.end1269

if.end1269:                                       ; preds = %if.end1268, %if.end1247
  br label %if.end1270

if.end1270:                                       ; preds = %if.end1269, %if.end1238
  %423 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1271 = icmp eq i32 %423, 1
  br i1 %cmp1271, label %if.then1273, label %if.end1299

if.then1273:                                      ; preds = %if.end1270
  %424 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  %cmp1274 = icmp sgt i32 %424, 0
  br i1 %cmp1274, label %if.then1276, label %if.else1283

if.then1276:                                      ; preds = %if.then1273
  %call1277 = call i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx, i32 (i8*, i8*, i64)* noundef @rng_get, i8* noundef bitcast (%struct.rng_context_t* @rng to i8*)) #8
  store i32 %call1277, i32* %ret, align 4
  %cmp1278 = icmp ne i32 %call1277, 0
  br i1 %cmp1278, label %if.then1280, label %if.end1282

if.then1280:                                      ; preds = %if.then1276
  %425 = load i32, i32* %ret, align 4
  %call1281 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.156, i64 0, i64 0), i32 noundef %425) #8
  br label %exit

if.end1282:                                       ; preds = %if.then1276
  %426 = bitcast %struct.mbedtls_ssl_cookie_ctx* %cookie_ctx to i8*
  call void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8**, i8*, i8*, i64)* noundef @mbedtls_ssl_cookie_write, i32 (i8*, i8*, i64, i8*, i64)* noundef @mbedtls_ssl_cookie_check, i8* noundef %426) #8
  br label %if.end1289

if.else1283:                                      ; preds = %if.then1273
  %427 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 54), align 4
  %cmp1284 = icmp eq i32 %427, 0
  br i1 %cmp1284, label %if.then1286, label %if.else1287

if.then1286:                                      ; preds = %if.else1283
  call void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8**, i8*, i8*, i64)* noundef null, i32 (i8*, i8*, i64, i8*, i64)* noundef null, i8* noundef null) #8
  br label %if.end1288

if.else1287:                                      ; preds = %if.else1283
  br label %if.end1288

if.end1288:                                       ; preds = %if.else1287, %if.then1286
  br label %if.end1289

if.end1289:                                       ; preds = %if.end1288, %if.end1282
  %428 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  %cmp1290 = icmp ne i32 %428, -1
  br i1 %cmp1290, label %if.then1292, label %if.end1294

if.then1292:                                      ; preds = %if.end1289
  %429 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 55), align 8
  %conv1293 = trunc i32 %429 to i8
  call void @mbedtls_ssl_conf_dtls_anti_replay(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv1293) #8
  br label %if.end1294

if.end1294:                                       ; preds = %if.then1292, %if.end1289
  %430 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 4
  %cmp1295 = icmp ne i32 %430, -1
  br i1 %cmp1295, label %if.then1297, label %if.end1298

if.then1297:                                      ; preds = %if.end1294
  %431 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 60), align 4
  call void @mbedtls_ssl_conf_dtls_badmac_limit(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %431) #8
  br label %if.end1298

if.end1298:                                       ; preds = %if.then1297, %if.end1294
  br label %if.end1299

if.end1299:                                       ; preds = %if.end1298, %if.end1270
  %432 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0), align 8
  %cmp1300 = icmp ne i32 %432, 0
  br i1 %cmp1300, label %if.then1302, label %if.end1303

if.then1302:                                      ; preds = %if.end1299
  call void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 25, i64 0)) #8
  br label %if.end1303

if.end1303:                                       ; preds = %if.then1302, %if.end1299
  %433 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  %cmp1304 = icmp ne i32 %433, -2
  br i1 %cmp1304, label %if.then1306, label %if.end1307

if.then1306:                                      ; preds = %if.end1303
  %434 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 27), align 4
  call void @mbedtls_ssl_conf_legacy_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %434) #8
  br label %if.end1307

if.end1307:                                       ; preds = %if.then1306, %if.end1303
  %435 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 26), align 8
  call void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %435) #8
  %436 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  %cmp1308 = icmp ne i32 %436, -2
  br i1 %cmp1308, label %if.then1310, label %if.end1311

if.then1310:                                      ; preds = %if.end1307
  %437 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 29), align 4
  call void @mbedtls_ssl_conf_renegotiation_enforced(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %437) #8
  br label %if.end1311

if.end1311:                                       ; preds = %if.then1310, %if.end1307
  %438 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %cmp1312 = icmp ne i64 %438, -1
  br i1 %cmp1312, label %if.then1314, label %if.end1346

if.then1314:                                      ; preds = %if.end1311
  %439 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr = lshr i64 %439, 56
  %and = and i64 %shr, 255
  %conv1315 = trunc i64 %and to i8
  %arrayidx1316 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 0
  store i8 %conv1315, i8* %arrayidx1316, align 1
  %440 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1317 = lshr i64 %440, 48
  %and1318 = and i64 %shr1317, 255
  %conv1319 = trunc i64 %and1318 to i8
  %arrayidx1320 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 1
  store i8 %conv1319, i8* %arrayidx1320, align 1
  %441 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1321 = lshr i64 %441, 40
  %and1322 = and i64 %shr1321, 255
  %conv1323 = trunc i64 %and1322 to i8
  %arrayidx1324 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 2
  store i8 %conv1323, i8* %arrayidx1324, align 1
  %442 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1325 = lshr i64 %442, 32
  %and1326 = and i64 %shr1325, 255
  %conv1327 = trunc i64 %and1326 to i8
  %arrayidx1328 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 3
  store i8 %conv1327, i8* %arrayidx1328, align 1
  %443 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1329 = lshr i64 %443, 24
  %and1330 = and i64 %shr1329, 255
  %conv1331 = trunc i64 %and1330 to i8
  %arrayidx1332 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 4
  store i8 %conv1331, i8* %arrayidx1332, align 1
  %444 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1333 = lshr i64 %444, 16
  %and1334 = and i64 %shr1333, 255
  %conv1335 = trunc i64 %and1334 to i8
  %arrayidx1336 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 5
  store i8 %conv1335, i8* %arrayidx1336, align 1
  %445 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1337 = lshr i64 %445, 8
  %and1338 = and i64 %shr1337, 255
  %conv1339 = trunc i64 %and1338 to i8
  %arrayidx1340 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 6
  store i8 %conv1339, i8* %arrayidx1340, align 1
  %446 = load i64, i64* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 30), align 8
  %shr1341 = lshr i64 %446, 0
  %and1342 = and i64 %shr1341, 255
  %conv1343 = trunc i64 %and1342 to i8
  %arrayidx1344 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 7
  store i8 %conv1343, i8* %arrayidx1344, align 1
  %arraydecay1345 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 0
  call void @mbedtls_ssl_conf_renegotiation_period(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %arraydecay1345) #8
  br label %if.end1346

if.end1346:                                       ; preds = %if.then1314, %if.end1311
  %447 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), align 8
  %call1347 = call i32 @strcmp(i8* noundef %447, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1348 = icmp ne i32 %call1347, 0
  br i1 %cmp1348, label %land.lhs.true1350, label %if.end1355

land.lhs.true1350:                                ; preds = %if.end1346
  %448 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  %call1351 = call i32 @strcmp(i8* noundef %448, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9
  %cmp1352 = icmp ne i32 %call1351, 0
  br i1 %cmp1352, label %if.then1354, label %if.end1355

if.then1354:                                      ; preds = %land.lhs.true1350
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %cacert, %struct.mbedtls_x509_crl* noundef null) #8
  br label %if.end1355

if.end1355:                                       ; preds = %if.then1354, %land.lhs.true1350, %if.end1346
  %449 = load i32, i32* %key_cert_init, align 4
  %tobool1356 = icmp ne i32 %449, 0
  br i1 %tobool1356, label %if.then1357, label %if.end1364

if.then1357:                                      ; preds = %if.end1355
  store %struct.mbedtls_pk_context* %pkey, %struct.mbedtls_pk_context** %pk, align 8
  %450 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk, align 8
  %call1358 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert, %struct.mbedtls_pk_context* noundef %450) #8
  store i32 %call1358, i32* %ret, align 4
  %cmp1359 = icmp ne i32 %call1358, 0
  br i1 %cmp1359, label %if.then1361, label %if.end1363

if.then1361:                                      ; preds = %if.then1357
  %451 = load i32, i32* %ret, align 4
  %call1362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.157, i64 0, i64 0), i32 noundef %451) #8
  br label %exit

if.end1363:                                       ; preds = %if.then1357
  br label %if.end1364

if.end1364:                                       ; preds = %if.end1363, %if.end1355
  %452 = load i32, i32* %key_cert_init2, align 4
  %tobool1365 = icmp ne i32 %452, 0
  br i1 %tobool1365, label %if.then1366, label %if.end1374

if.then1366:                                      ; preds = %if.end1364
  store %struct.mbedtls_pk_context* %pkey2, %struct.mbedtls_pk_context** %pk1367, align 8
  %453 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk1367, align 8
  %call1368 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %srvcert2, %struct.mbedtls_pk_context* noundef %453) #8
  store i32 %call1368, i32* %ret, align 4
  %cmp1369 = icmp ne i32 %call1368, 0
  br i1 %cmp1369, label %if.then1371, label %if.end1373

if.then1371:                                      ; preds = %if.then1366
  %454 = load i32, i32* %ret, align 4
  %call1372 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.157, i64 0, i64 0), i32 noundef %454) #8
  br label %exit

if.end1373:                                       ; preds = %if.then1366
  br label %if.end1374

if.end1374:                                       ; preds = %if.end1373, %if.end1364
  %455 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 46), align 8
  %cmp1375 = icmp ne i8* %455, null
  br i1 %cmp1375, label %if.then1377, label %if.end1378

if.then1377:                                      ; preds = %if.end1374
  %456 = load %struct._sni_entry*, %struct._sni_entry** %sni_info, align 8
  %457 = bitcast %struct._sni_entry* %456 to i8*
  call void @mbedtls_ssl_conf_sni(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef @sni_callback, i8* noundef %457) #8
  call void @mbedtls_ssl_conf_cert_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (%struct.mbedtls_ssl_context*)* noundef @cert_callback) #8
  br label %if.end1378

if.end1378:                                       ; preds = %if.then1377, %if.end1374
  %458 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  %cmp1379 = icmp ne i8* %458, null
  br i1 %cmp1379, label %land.lhs.true1381, label %if.end1387

land.lhs.true1381:                                ; preds = %if.end1378
  %459 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 47), align 8
  %call1382 = call i32 @strcmp(i8* noundef %459, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0)) #9
  %cmp1383 = icmp ne i32 %call1382, 0
  br i1 %cmp1383, label %if.then1385, label %if.end1387

if.then1385:                                      ; preds = %land.lhs.true1381
  %arraydecay1386 = getelementptr inbounds [20 x i16], [20 x i16]* %group_list, i64 0, i64 0
  call void @mbedtls_ssl_conf_groups(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef %arraydecay1386) #8
  br label %if.end1387

if.end1387:                                       ; preds = %if.then1385, %land.lhs.true1381, %if.end1378
  %460 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 21), align 8
  %call1388 = call i64 @strlen(i8* noundef %460) #9
  %cmp1389 = icmp ne i64 %call1388, 0
  br i1 %cmp1389, label %land.lhs.true1391, label %if.end1409

land.lhs.true1391:                                ; preds = %if.end1387
  %461 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  %call1392 = call i64 @strlen(i8* noundef %461) #9
  %cmp1393 = icmp ne i64 %call1392, 0
  br i1 %cmp1393, label %if.then1395, label %if.end1409

if.then1395:                                      ; preds = %land.lhs.true1391
  %462 = load i64, i64* %psk_len, align 8
  %cmp1396 = icmp ugt i64 %462, 0
  br i1 %cmp1396, label %if.then1398, label %if.end1408

if.then1398:                                      ; preds = %if.then1395
  %arraydecay1399 = getelementptr inbounds [32 x i8], [32 x i8]* %psk, i64 0, i64 0
  %463 = load i64, i64* %psk_len, align 8
  %464 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  %465 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 22), align 8
  %call1400 = call i64 @strlen(i8* noundef %465) #9
  %call1401 = call i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %arraydecay1399, i64 noundef %463, i8* noundef %464, i64 noundef %call1400) #8
  store i32 %call1401, i32* %ret, align 4
  %466 = load i32, i32* %ret, align 4
  %cmp1402 = icmp ne i32 %466, 0
  br i1 %cmp1402, label %if.then1404, label %if.end1407

if.then1404:                                      ; preds = %if.then1398
  %467 = load i32, i32* %ret, align 4
  %sub1405 = sub nsw i32 0, %467
  %call1406 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.158, i64 0, i64 0), i32 noundef %sub1405) #8
  br label %exit

if.end1407:                                       ; preds = %if.then1398
  br label %if.end1408

if.end1408:                                       ; preds = %if.end1407, %if.then1395
  br label %if.end1409

if.end1409:                                       ; preds = %if.end1408, %land.lhs.true1391, %if.end1387
  %468 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 23), align 8
  %cmp1410 = icmp ne i8* %468, null
  br i1 %cmp1410, label %if.then1412, label %if.end1413

if.then1412:                                      ; preds = %if.end1409
  %469 = load %struct._psk_entry*, %struct._psk_entry** %psk_info, align 8
  %470 = bitcast %struct._psk_entry* %469 to i8*
  call void @mbedtls_ssl_conf_psk_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef @psk_callback, i8* noundef %470) #8
  br label %if.end1413

if.end1413:                                       ; preds = %if.then1412, %if.end1409
  %471 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 50), align 8
  %cmp1414 = icmp ne i8* %471, null
  br i1 %cmp1414, label %if.then1416, label %if.end1418

if.then1416:                                      ; preds = %if.end1413
  %call1417 = call i32 @mbedtls_ssl_conf_dh_param_ctx(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_dhm_context* noundef %dhm) #8
  store i32 %call1417, i32* %ret, align 4
  br label %if.end1418

if.end1418:                                       ; preds = %if.then1416, %if.end1413
  %472 = load i32, i32* %ret, align 4
  %cmp1419 = icmp ne i32 %472, 0
  br i1 %cmp1419, label %if.then1421, label %if.end1424

if.then1421:                                      ; preds = %if.end1418
  %473 = load i32, i32* %ret, align 4
  %sub1422 = sub nsw i32 0, %473
  %call1423 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.159, i64 0, i64 0), i32 noundef %sub1422) #8
  br label %exit

if.end1424:                                       ; preds = %if.end1418
  %474 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  %cmp1425 = icmp ne i32 %474, -1
  br i1 %cmp1425, label %if.then1427, label %if.end1428

if.then1427:                                      ; preds = %if.end1424
  %475 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 32), align 4
  call void @mbedtls_ssl_conf_min_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %475) #8
  br label %if.end1428

if.end1428:                                       ; preds = %if.then1427, %if.end1424
  %476 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  %cmp1429 = icmp ne i32 %476, -1
  br i1 %cmp1429, label %if.then1431, label %if.end1432

if.then1431:                                      ; preds = %if.end1428
  %477 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 33), align 8
  call void @mbedtls_ssl_conf_max_tls_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %477) #8
  br label %if.end1432

if.end1432:                                       ; preds = %if.then1431, %if.end1428
  %call1433 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #8
  store i32 %call1433, i32* %ret, align 4
  %cmp1434 = icmp ne i32 %call1433, 0
  br i1 %cmp1434, label %if.then1436, label %if.end1439

if.then1436:                                      ; preds = %if.end1432
  %478 = load i32, i32* %ret, align 4
  %sub1437 = sub nsw i32 0, %478
  %call1438 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.160, i64 0, i64 0), i32 noundef %sub1437) #8
  br label %exit

if.end1439:                                       ; preds = %if.end1432
  %479 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %cmp1440 = icmp ne i32 %479, 0
  br i1 %cmp1440, label %if.then1442, label %if.else1443

if.then1442:                                      ; preds = %if.end1439
  %480 = bitcast %struct.eap_tls_keys* %eap_tls_keying to i8*
  call void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef %ssl, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef @eap_tls_key_derivation, i8* noundef %480) #8
  br label %if.end1448

if.else1443:                                      ; preds = %if.end1439
  %481 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 62), align 4
  %cmp1444 = icmp ne i32 %481, 0
  br i1 %cmp1444, label %if.then1446, label %if.end1447

if.then1446:                                      ; preds = %if.else1443
  call void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef %ssl, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef @nss_keylog_export, i8* noundef null) #8
  br label %if.end1447

if.end1447:                                       ; preds = %if.then1446, %if.else1443
  br label %if.end1448

if.end1448:                                       ; preds = %if.end1447, %if.then1442
  %ssl1449 = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %io_ctx, i32 0, i32 0
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl1449, align 8
  %net = getelementptr inbounds %struct.io_ctx_t, %struct.io_ctx_t* %io_ctx, i32 0, i32 1
  store %struct.mbedtls_net_context* @client_fd, %struct.mbedtls_net_context** %net, align 8
  %482 = bitcast %struct.io_ctx_t* %io_ctx to i8*
  %483 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp1450 = icmp eq i32 %483, 0
  %484 = zext i1 %cmp1450 to i64
  %cond1452 = select i1 %cmp1450, i32 (i8*, i8*, i64, i32)* @recv_timeout_cb, i32 (i8*, i8*, i64, i32)* null
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %482, i32 (i8*, i8*, i64)* noundef @send_cb, i32 (i8*, i8*, i64)* noundef @recv_cb, i32 (i8*, i8*, i64, i32)* noundef %cond1452) #8
  %485 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 4
  %cmp1453 = icmp ne i32 %485, -1
  br i1 %cmp1453, label %if.then1455, label %if.end1457

if.then1455:                                      ; preds = %if.end1448
  %486 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 58), align 4
  %conv1456 = trunc i32 %486 to i16
  call void @mbedtls_ssl_set_mtu(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %conv1456) #8
  br label %if.end1457

if.end1457:                                       ; preds = %if.then1455, %if.end1448
  %487 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %487, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #8
  %call1458 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  %488 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1459 = icmp eq i32 %488, 0
  %489 = zext i1 %cmp1459 to i64
  %cond1461 = select i1 %cmp1459, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i64 0, i64 0)
  %490 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %tobool1462 = icmp ne i8* %490, null
  br i1 %tobool1462, label %cond.true1463, label %cond.false1464

cond.true1463:                                    ; preds = %if.end1457
  %491 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %cond.end1465

cond.false1464:                                   ; preds = %if.end1457
  br label %cond.end1465

cond.end1465:                                     ; preds = %cond.false1464, %cond.true1463
  %cond1466 = phi i8* [ %491, %cond.true1463 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i64 0, i64 0), %cond.false1464 ]
  %492 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call1467 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.161, i64 0, i64 0), i8* noundef %cond1461, i8* noundef %cond1466, i8* noundef %492) #8
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1468 = call i32 @fflush(%struct._IO_FILE* noundef %493) #8
  %494 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %495 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %496 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1469 = icmp eq i32 %496, 0
  %497 = zext i1 %cmp1469 to i64
  %cond1471 = select i1 %cmp1469, i32 0, i32 1
  %call1472 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef @listen_fd, i8* noundef %494, i8* noundef %495, i32 noundef %cond1471) #8
  store i32 %call1472, i32* %ret, align 4
  %cmp1473 = icmp ne i32 %call1472, 0
  br i1 %cmp1473, label %if.then1475, label %if.end1478

if.then1475:                                      ; preds = %cond.end1465
  %498 = load i32, i32* %ret, align 4
  %sub1476 = sub nsw i32 0, %498
  %call1477 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i32 noundef %sub1476) #8
  br label %exit

if.end1478:                                       ; preds = %cond.end1465
  %call1479 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %reset

reset:                                            ; preds = %do.end2068, %if.then1955, %if.then1925, %if.then1920, %if.then1852, %sw.default1830, %if.then1784, %if.then1768, %sw.default1740, %sw.bb1738, %if.then1687, %if.then1659, %if.end1590, %if.then1574, %if.then1568, %if.end1478
  %499 = load i32, i32* @received_sigterm, align 4
  %tobool1480 = icmp ne i32 %499, 0
  br i1 %tobool1480, label %if.then1481, label %if.end1487

if.then1481:                                      ; preds = %reset
  %call1482 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.166, i64 0, i64 0)) #8
  %500 = load i32, i32* %ret, align 4
  %cmp1483 = icmp eq i32 %500, -69
  br i1 %cmp1483, label %if.then1485, label %if.end1486

if.then1485:                                      ; preds = %if.then1481
  store i32 0, i32* %ret, align 4
  br label %if.end1486

if.end1486:                                       ; preds = %if.then1485, %if.then1481
  br label %exit

if.end1487:                                       ; preds = %reset
  %501 = load i32, i32* %ret, align 4
  %cmp1488 = icmp eq i32 %501, -26496
  br i1 %cmp1488, label %if.then1490, label %if.end1492

if.then1490:                                      ; preds = %if.end1487
  %call1491 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.167, i64 0, i64 0)) #8
  br label %handshake

if.end1492:                                       ; preds = %if.end1487
  %502 = load i32, i32* %ret, align 4
  %cmp1493 = icmp ne i32 %502, 0
  br i1 %cmp1493, label %if.then1495, label %if.end1499

if.then1495:                                      ; preds = %if.end1492
  %503 = load i32, i32* %ret, align 4
  %arraydecay1496 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %503, i8* noundef %arraydecay1496, i64 noundef 100) #8
  %504 = load i32, i32* %ret, align 4
  %arraydecay1497 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call1498 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.168, i64 0, i64 0), i32 noundef %504, i8* noundef %arraydecay1497) #8
  br label %if.end1499

if.end1499:                                       ; preds = %if.then1495, %if.end1492
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef @client_fd) #8
  %call1500 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call1501 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.169, i64 0, i64 0)) #8
  %505 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1502 = call i32 @fflush(%struct._IO_FILE* noundef %505) #8
  %arraydecay1503 = getelementptr inbounds [16 x i8], [16 x i8]* %client_ip, i64 0, i64 0
  %call1504 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef @listen_fd, %struct.mbedtls_net_context* noundef @client_fd, i8* noundef %arraydecay1503, i64 noundef 16, i64* noundef %cliip_len) #8
  store i32 %call1504, i32* %ret, align 4
  %cmp1505 = icmp ne i32 %call1504, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1518

if.then1507:                                      ; preds = %if.end1499
  %506 = load i32, i32* @received_sigterm, align 4
  %tobool1508 = icmp ne i32 %506, 0
  br i1 %tobool1508, label %if.then1509, label %if.end1515

if.then1509:                                      ; preds = %if.then1507
  %call1510 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.170, i64 0, i64 0)) #8
  %507 = load i32, i32* %ret, align 4
  %cmp1511 = icmp eq i32 %507, -74
  br i1 %cmp1511, label %if.then1513, label %if.end1514

if.then1513:                                      ; preds = %if.then1509
  store i32 0, i32* %ret, align 4
  br label %if.end1514

if.end1514:                                       ; preds = %if.then1513, %if.then1509
  br label %exit

if.end1515:                                       ; preds = %if.then1507
  %508 = load i32, i32* %ret, align 4
  %sub1516 = sub nsw i32 0, %508
  %call1517 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.171, i64 0, i64 0), i32 noundef %sub1516) #8
  br label %exit

if.end1518:                                       ; preds = %if.end1499
  %509 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp1519 = icmp sgt i32 %509, 0
  br i1 %cmp1519, label %if.then1521, label %if.else1523

if.then1521:                                      ; preds = %if.end1518
  %call1522 = call i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef @client_fd) #8
  store i32 %call1522, i32* %ret, align 4
  br label %if.end1525

if.else1523:                                      ; preds = %if.end1518
  %call1524 = call i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef @client_fd) #8
  store i32 %call1524, i32* %ret, align 4
  br label %if.end1525

if.end1525:                                       ; preds = %if.else1523, %if.then1521
  %510 = load i32, i32* %ret, align 4
  %cmp1526 = icmp ne i32 %510, 0
  br i1 %cmp1526, label %if.then1528, label %if.end1531

if.then1528:                                      ; preds = %if.end1525
  %511 = load i32, i32* %ret, align 4
  %sub1529 = sub nsw i32 0, %511
  %call1530 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.172, i64 0, i64 0), i32 noundef %sub1529) #8
  br label %exit

if.end1531:                                       ; preds = %if.end1525
  %512 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  call void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %512) #8
  %513 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1532 = icmp eq i32 %513, 1
  br i1 %cmp1532, label %if.then1534, label %if.end1543

if.then1534:                                      ; preds = %if.end1531
  %arraydecay1535 = getelementptr inbounds [16 x i8], [16 x i8]* %client_ip, i64 0, i64 0
  %514 = load i64, i64* %cliip_len, align 8
  %call1536 = call i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay1535, i64 noundef %514) #8
  store i32 %call1536, i32* %ret, align 4
  %cmp1537 = icmp ne i32 %call1536, 0
  br i1 %cmp1537, label %if.then1539, label %if.end1542

if.then1539:                                      ; preds = %if.then1534
  %515 = load i32, i32* %ret, align 4
  %sub1540 = sub nsw i32 0, %515
  %call1541 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.173, i64 0, i64 0), i32 noundef %sub1540) #8
  br label %exit

if.end1542:                                       ; preds = %if.then1534
  br label %if.end1543

if.end1543:                                       ; preds = %if.end1542, %if.end1531
  %516 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 37), align 8
  %cmp1544 = icmp eq i32 %516, 3
  br i1 %cmp1544, label %land.lhs.true1546, label %if.end1549

land.lhs.true1546:                                ; preds = %if.end1543
  %517 = load i32, i32* %key_cert_init2, align 4
  %tobool1547 = icmp ne i32 %517, 0
  br i1 %tobool1547, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %land.lhs.true1546
  call void @mbedtls_ssl_set_hs_dn_hints(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_x509_crt* noundef %srvcert2) #8
  br label %if.end1549

if.end1549:                                       ; preds = %if.then1548, %land.lhs.true1546, %if.end1543
  %call1550 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %handshake

handshake:                                        ; preds = %if.end1549, %if.then1490
  %call1551 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.174, i64 0, i64 0)) #8
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1552 = call i32 @fflush(%struct._IO_FILE* noundef %518) #8
  br label %while.cond1553

while.cond1553:                                   ; preds = %if.end1570, %handshake
  %call1554 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1554, i32* %ret, align 4
  %cmp1555 = icmp ne i32 %call1554, 0
  br i1 %cmp1555, label %while.body1557, label %while.end1571

while.body1557:                                   ; preds = %while.cond1553
  %519 = load i32, i32* %ret, align 4
  %call1558 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %519) #8
  %tobool1559 = icmp ne i32 %call1558, 0
  br i1 %tobool1559, label %if.end1561, label %if.then1560

if.then1560:                                      ; preds = %while.body1557
  br label %while.end1571

if.end1561:                                       ; preds = %while.body1557
  %520 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1562 = icmp eq i32 %520, 1
  br i1 %cmp1562, label %if.then1564, label %if.end1570

if.then1564:                                      ; preds = %if.end1561
  %521 = load i32, i32* %ret, align 4
  %call1565 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %521) #8
  store i32 %call1565, i32* %ret, align 4
  %522 = load i32, i32* %ret, align 4
  %cmp1566 = icmp ne i32 %522, 0
  br i1 %cmp1566, label %if.then1568, label %if.end1569

if.then1568:                                      ; preds = %if.then1564
  br label %reset

if.end1569:                                       ; preds = %if.then1564
  br label %if.end1570

if.end1570:                                       ; preds = %if.end1569, %if.end1561
  br label %while.cond1553, !llvm.loop !32

while.end1571:                                    ; preds = %if.then1560, %while.cond1553
  %523 = load i32, i32* %ret, align 4
  %cmp1572 = icmp eq i32 %523, -27264
  br i1 %cmp1572, label %if.then1574, label %if.else1576

if.then1574:                                      ; preds = %while.end1571
  %call1575 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.175, i64 0, i64 0)) #8
  store i32 0, i32* %ret, align 4
  br label %reset

if.else1576:                                      ; preds = %while.end1571
  %524 = load i32, i32* %ret, align 4
  %cmp1577 = icmp ne i32 %524, 0
  br i1 %cmp1577, label %if.then1579, label %if.else1591

if.then1579:                                      ; preds = %if.else1576
  %525 = load i32, i32* %ret, align 4
  %sub1580 = sub nsw i32 0, %525
  %call1581 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.176, i64 0, i64 0), i32 noundef %sub1580) #8
  %526 = load i32, i32* %ret, align 4
  %cmp1582 = icmp eq i32 %526, -9984
  br i1 %cmp1582, label %if.then1584, label %if.end1590

if.then1584:                                      ; preds = %if.then1579
  %call1585 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1585, i32* %flags, align 4
  %arraydecay1586 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %527 = load i32, i32* %flags, align 4
  %call1587 = call i32 @x509_crt_verify_info(i8* noundef %arraydecay1586, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i64 0, i64 0), i32 noundef %527) #8
  %arraydecay1588 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf, i64 0, i64 0
  %call1589 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i64 0, i64 0), i8* noundef %arraydecay1588) #8
  br label %if.end1590

if.end1590:                                       ; preds = %if.then1584, %if.then1579
  br label %reset

if.else1591:                                      ; preds = %if.else1576
  %call1592 = call i32 @mbedtls_ssl_get_ciphersuite_id_from_ssl(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1592, i32* %suite_id, align 4
  %528 = load i32, i32* %suite_id, align 4
  %call1594 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %528) #8
  store %struct.mbedtls_ssl_ciphersuite_t* %call1594, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1593, align 8
  %call1595 = call i8* @mbedtls_ssl_get_version(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %529 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1593, align 8
  %call1596 = call i8* @mbedtls_ssl_ciphersuite_get_name(%struct.mbedtls_ssl_ciphersuite_t* noundef %529) #8
  %530 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1593, align 8
  %call1597 = call i64 @mbedtls_ssl_ciphersuite_get_cipher_key_bitlen(%struct.mbedtls_ssl_ciphersuite_t* noundef %530) #8
  %conv1598 = trunc i64 %call1597 to i32
  %call1599 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.179, i64 0, i64 0), i8* noundef %call1595, i8* noundef %call1596, i32 noundef %conv1598) #8
  br label %if.end1600

if.end1600:                                       ; preds = %if.else1591
  br label %if.end1601

if.end1601:                                       ; preds = %if.end1600
  %call1602 = call i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1602, i32* %ret, align 4
  %cmp1603 = icmp sge i32 %call1602, 0
  br i1 %cmp1603, label %if.then1605, label %if.else1607

if.then1605:                                      ; preds = %if.end1601
  %531 = load i32, i32* %ret, align 4
  %call1606 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.180, i64 0, i64 0), i32 noundef %531) #8
  br label %if.end1609

if.else1607:                                      ; preds = %if.end1601
  %call1608 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.181, i64 0, i64 0)) #8
  br label %if.end1609

if.end1609:                                       ; preds = %if.else1607, %if.then1605
  %call1610 = call i32 @mbedtls_ssl_get_max_in_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call1611 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.182, i64 0, i64 0), i32 noundef %call1610) #8
  %call1612 = call i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call1613 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.183, i64 0, i64 0), i32 noundef %call1612) #8
  %532 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 49), align 8
  %cmp1614 = icmp ne i8* %532, null
  br i1 %cmp1614, label %if.then1616, label %if.end1624

if.then1616:                                      ; preds = %if.end1609
  %call1617 = call i8* @mbedtls_ssl_get_alpn_protocol(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i8* %call1617, i8** %alp, align 8
  %533 = load i8*, i8** %alp, align 8
  %tobool1618 = icmp ne i8* %533, null
  br i1 %tobool1618, label %cond.true1619, label %cond.false1620

cond.true1619:                                    ; preds = %if.then1616
  %534 = load i8*, i8** %alp, align 8
  br label %cond.end1621

cond.false1620:                                   ; preds = %if.then1616
  br label %cond.end1621

cond.end1621:                                     ; preds = %cond.false1620, %cond.true1619
  %cond1622 = phi i8* [ %534, %cond.true1619 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i64 0, i64 0), %cond.false1620 ]
  %call1623 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.184, i64 0, i64 0), i8* noundef %cond1622) #8
  br label %if.end1624

if.end1624:                                       ; preds = %cond.end1621, %if.end1609
  %call1625 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.186, i64 0, i64 0)) #8
  %call1626 = call i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1626, i32* %flags, align 4
  %cmp1627 = icmp ne i32 %call1626, 0
  br i1 %cmp1627, label %if.then1629, label %if.else1636

if.then1629:                                      ; preds = %if.end1624
  %call1631 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0)) #8
  %arraydecay1632 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf1630, i64 0, i64 0
  %535 = load i32, i32* %flags, align 4
  %call1633 = call i32 @x509_crt_verify_info(i8* noundef %arraydecay1632, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i64 0, i64 0), i32 noundef %535) #8
  %arraydecay1634 = getelementptr inbounds [512 x i8], [512 x i8]* %vrfy_buf1630, i64 0, i64 0
  %call1635 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i64 0, i64 0), i8* noundef %arraydecay1634) #8
  br label %if.end1638

if.else1636:                                      ; preds = %if.end1624
  %call1637 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end1638

if.end1638:                                       ; preds = %if.else1636, %if.then1629
  %call1639 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %cmp1640 = icmp ne %struct.mbedtls_x509_crt* %call1639, null
  br i1 %cmp1640, label %if.then1642, label %if.end1649

if.then1642:                                      ; preds = %if.end1638
  %call1643 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.187, i64 0, i64 0)) #8
  %arraydecay1644 = getelementptr inbounds [512 x i8], [512 x i8]* %crt_buf, i64 0, i64 0
  %call1645 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call1646 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay1644, i64 noundef 512, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %call1645) #8
  %arraydecay1647 = getelementptr inbounds [512 x i8], [512 x i8]* %crt_buf, i64 0, i64 0
  %call1648 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i64 0, i64 0), i8* noundef %arraydecay1647) #8
  br label %if.end1649

if.end1649:                                       ; preds = %if.then1642, %if.end1638
  %536 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 61), align 8
  %cmp1650 = icmp ne i32 %536, 0
  br i1 %cmp1650, label %if.then1652, label %if.end1709

if.then1652:                                      ; preds = %if.end1649
  store i64 0, i64* %j, align 8
  %tls_prf_type = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 2
  %537 = load i32, i32* %tls_prf_type, align 4
  %master_secret = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 0
  %arraydecay1653 = getelementptr inbounds [48 x i8], [48 x i8]* %master_secret, i64 0, i64 0
  %538 = load i8*, i8** %eap_tls_label, align 8
  %randbytes = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 1
  %arraydecay1654 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %arraydecay1655 = getelementptr inbounds [16 x i8], [16 x i8]* %eap_tls_keymaterial, i64 0, i64 0
  %call1656 = call i32 @mbedtls_ssl_tls_prf(i32 noundef %537, i8* noundef %arraydecay1653, i64 noundef 48, i8* noundef %538, i8* noundef %arraydecay1654, i64 noundef 64, i8* noundef %arraydecay1655, i64 noundef 16) #8
  store i32 %call1656, i32* %ret, align 4
  %cmp1657 = icmp ne i32 %call1656, 0
  br i1 %cmp1657, label %if.then1659, label %if.end1662

if.then1659:                                      ; preds = %if.then1652
  %539 = load i32, i32* %ret, align 4
  %sub1660 = sub nsw i32 0, %539
  %call1661 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.189, i64 0, i64 0), i32 noundef %sub1660) #8
  br label %reset

if.end1662:                                       ; preds = %if.then1652
  %call1663 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.190, i64 0, i64 0)) #8
  store i64 0, i64* %j, align 8
  br label %for.cond1664

for.cond1664:                                     ; preds = %for.inc1676, %if.end1662
  %540 = load i64, i64* %j, align 8
  %cmp1665 = icmp ult i64 %540, 16
  br i1 %cmp1665, label %for.body1667, label %for.end1678

for.body1667:                                     ; preds = %for.cond1664
  %541 = load i64, i64* %j, align 8
  %rem = urem i64 %541, 8
  %cmp1668 = icmp eq i64 %rem, 0
  br i1 %cmp1668, label %if.then1670, label %if.end1672

if.then1670:                                      ; preds = %for.body1667
  %call1671 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i64 0, i64 0)) #8
  br label %if.end1672

if.end1672:                                       ; preds = %if.then1670, %for.body1667
  %542 = load i64, i64* %j, align 8
  %arrayidx1673 = getelementptr inbounds [16 x i8], [16 x i8]* %eap_tls_keymaterial, i64 0, i64 %542
  %543 = load i8, i8* %arrayidx1673, align 1
  %conv1674 = zext i8 %543 to i32
  %call1675 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i64 0, i64 0), i32 noundef %conv1674) #8
  br label %for.inc1676

for.inc1676:                                      ; preds = %if.end1672
  %544 = load i64, i64* %j, align 8
  %inc1677 = add i64 %544, 1
  store i64 %inc1677, i64* %j, align 8
  br label %for.cond1664, !llvm.loop !33

for.end1678:                                      ; preds = %for.cond1664
  %call1679 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  %tls_prf_type1680 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 2
  %545 = load i32, i32* %tls_prf_type1680, align 4
  %546 = load i8*, i8** %eap_tls_label, align 8
  %randbytes1681 = getelementptr inbounds %struct.eap_tls_keys, %struct.eap_tls_keys* %eap_tls_keying, i32 0, i32 1
  %arraydecay1682 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes1681, i64 0, i64 0
  %arraydecay1683 = getelementptr inbounds [8 x i8], [8 x i8]* %eap_tls_iv, i64 0, i64 0
  %call1684 = call i32 @mbedtls_ssl_tls_prf(i32 noundef %545, i8* noundef null, i64 noundef 0, i8* noundef %546, i8* noundef %arraydecay1682, i64 noundef 64, i8* noundef %arraydecay1683, i64 noundef 8) #8
  store i32 %call1684, i32* %ret, align 4
  %cmp1685 = icmp ne i32 %call1684, 0
  br i1 %cmp1685, label %if.then1687, label %if.end1690

if.then1687:                                      ; preds = %for.end1678
  %547 = load i32, i32* %ret, align 4
  %sub1688 = sub nsw i32 0, %547
  %call1689 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.189, i64 0, i64 0), i32 noundef %sub1688) #8
  br label %reset

if.end1690:                                       ; preds = %for.end1678
  %call1691 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i64 0, i64 0)) #8
  store i64 0, i64* %j, align 8
  br label %for.cond1692

for.cond1692:                                     ; preds = %for.inc1705, %if.end1690
  %548 = load i64, i64* %j, align 8
  %cmp1693 = icmp ult i64 %548, 8
  br i1 %cmp1693, label %for.body1695, label %for.end1707

for.body1695:                                     ; preds = %for.cond1692
  %549 = load i64, i64* %j, align 8
  %rem1696 = urem i64 %549, 8
  %cmp1697 = icmp eq i64 %rem1696, 0
  br i1 %cmp1697, label %if.then1699, label %if.end1701

if.then1699:                                      ; preds = %for.body1695
  %call1700 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i64 0, i64 0)) #8
  br label %if.end1701

if.end1701:                                       ; preds = %if.then1699, %for.body1695
  %550 = load i64, i64* %j, align 8
  %arrayidx1702 = getelementptr inbounds [8 x i8], [8 x i8]* %eap_tls_iv, i64 0, i64 %550
  %551 = load i8, i8* %arrayidx1702, align 1
  %conv1703 = zext i8 %551 to i32
  %call1704 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i64 0, i64 0), i32 noundef %conv1703) #8
  br label %for.inc1705

for.inc1705:                                      ; preds = %if.end1701
  %552 = load i64, i64* %j, align 8
  %inc1706 = add i64 %552, 1
  store i64 %inc1706, i64* %j, align 8
  br label %for.cond1692, !llvm.loop !34

for.end1707:                                      ; preds = %for.cond1692
  %call1708 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %if.end1709

if.end1709:                                       ; preds = %for.end1707, %if.end1649
  %553 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  %cmp1710 = icmp eq i32 %553, 0
  br i1 %cmp1710, label %if.then1712, label %if.end1713

if.then1712:                                      ; preds = %if.end1709
  br label %close_notify

if.end1713:                                       ; preds = %if.end1709
  %554 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  store i32 %554, i32* %exchanges_left, align 4
  br label %data_exchange

data_exchange:                                    ; preds = %if.then2060, %if.end1713
  %call1714 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.194, i64 0, i64 0)) #8
  %555 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1715 = call i32 @fflush(%struct._IO_FILE* noundef %555) #8
  %556 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1716 = icmp eq i32 %556, 0
  br i1 %cmp1716, label %if.then1718, label %if.else1805

if.then1718:                                      ; preds = %data_exchange
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then1718
  store i32 0, i32* %terminated, align 4
  %557 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv1719 = zext i16 %557 to i32
  store i32 %conv1719, i32* %len, align 4
  %558 = load i8*, i8** %buf, align 8
  %559 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv1720 = zext i16 %559 to i64
  %call1721 = call i8* @memset(i8* noundef %558, i32 noundef 0, i64 noundef %conv1720) #7
  %560 = load i8*, i8** %buf, align 8
  %561 = load i32, i32* %len, align 4
  %conv1722 = sext i32 %561 to i64
  %call1723 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %560, i64 noundef %conv1722) #8
  store i32 %call1723, i32* %ret, align 4
  %562 = load i32, i32* %ret, align 4
  %call1724 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %562) #8
  %tobool1725 = icmp ne i32 %call1724, 0
  br i1 %tobool1725, label %if.then1726, label %if.end1732

if.then1726:                                      ; preds = %do.body
  %563 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1727 = icmp eq i32 %563, 1
  br i1 %cmp1727, label %if.then1729, label %if.end1731

if.then1729:                                      ; preds = %if.then1726
  %564 = load i32, i32* %ret, align 4
  %call1730 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %564) #8
  br label %if.end1731

if.end1731:                                       ; preds = %if.then1729, %if.then1726
  br label %do.cond

if.end1732:                                       ; preds = %do.body
  %565 = load i32, i32* %ret, align 4
  %cmp1733 = icmp sle i32 %565, 0
  br i1 %cmp1733, label %if.then1735, label %if.end1743

if.then1735:                                      ; preds = %if.end1732
  %566 = load i32, i32* %ret, align 4
  switch i32 %566, label %sw.default1740 [
    i32 -30848, label %sw.bb1736
    i32 0, label %sw.bb1738
    i32 -80, label %sw.bb1738
  ]

sw.bb1736:                                        ; preds = %if.then1735
  %call1737 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.195, i64 0, i64 0)) #8
  br label %close_notify

sw.bb1738:                                        ; preds = %if.then1735, %if.then1735
  %call1739 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i64 0, i64 0)) #8
  store i32 -80, i32* %ret, align 4
  br label %reset

sw.default1740:                                   ; preds = %if.then1735
  %567 = load i32, i32* %ret, align 4
  %sub1741 = sub nsw i32 0, %567
  %call1742 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i64 0, i64 0), i32 noundef %sub1741) #8
  br label %reset

if.end1743:                                       ; preds = %if.end1732
  %call1744 = call i64 @mbedtls_ssl_get_bytes_avail(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %cmp1745 = icmp eq i64 %call1744, 0
  br i1 %cmp1745, label %if.then1747, label %if.else1759

if.then1747:                                      ; preds = %if.end1743
  %568 = load i32, i32* %ret, align 4
  store i32 %568, i32* %len, align 4
  %569 = load i8*, i8** %buf, align 8
  %570 = load i32, i32* %len, align 4
  %idxprom1748 = sext i32 %570 to i64
  %arrayidx1749 = getelementptr inbounds i8, i8* %569, i64 %idxprom1748
  store i8 0, i8* %arrayidx1749, align 1
  %571 = load i32, i32* %len, align 4
  %572 = load i8*, i8** %buf, align 8
  %call1750 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.198, i64 0, i64 0), i32 noundef %571, i8* noundef %572) #8
  %573 = load i8*, i8** %buf, align 8
  %574 = load i32, i32* %len, align 4
  %sub1751 = sub nsw i32 %574, 1
  %idxprom1752 = sext i32 %sub1751 to i64
  %arrayidx1753 = getelementptr inbounds i8, i8* %573, i64 %idxprom1752
  %575 = load i8, i8* %arrayidx1753, align 1
  %conv1754 = zext i8 %575 to i32
  %cmp1755 = icmp eq i32 %conv1754, 10
  br i1 %cmp1755, label %if.then1757, label %if.end1758

if.then1757:                                      ; preds = %if.then1747
  store i32 1, i32* %terminated, align 4
  br label %if.end1758

if.end1758:                                       ; preds = %if.then1757, %if.then1747
  br label %if.end1801

if.else1759:                                      ; preds = %if.end1743
  %576 = load i32, i32* %ret, align 4
  store i32 %576, i32* %ori_len, align 4
  %call1760 = call i64 @mbedtls_ssl_get_bytes_avail(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %conv1761 = trunc i64 %call1760 to i32
  store i32 %conv1761, i32* %extra_len, align 4
  %577 = load i32, i32* %ori_len, align 4
  %578 = load i32, i32* %extra_len, align 4
  %add1762 = add nsw i32 %577, %578
  %add1763 = add nsw i32 %add1762, 1
  %conv1764 = sext i32 %add1763 to i64
  %call1765 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %conv1764) #7
  store i8* %call1765, i8** %larger_buf, align 8
  %579 = load i8*, i8** %larger_buf, align 8
  %cmp1766 = icmp eq i8* %579, null
  br i1 %cmp1766, label %if.then1768, label %if.end1770

if.then1768:                                      ; preds = %if.else1759
  %call1769 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.199, i64 0, i64 0)) #8
  store i32 1, i32* %ret, align 4
  br label %reset

if.end1770:                                       ; preds = %if.else1759
  %580 = load i8*, i8** %larger_buf, align 8
  %581 = load i32, i32* %ori_len, align 4
  %582 = load i32, i32* %extra_len, align 4
  %add1771 = add nsw i32 %581, %582
  %conv1772 = sext i32 %add1771 to i64
  %call1773 = call i8* @memset(i8* noundef %580, i32 noundef 0, i64 noundef %conv1772) #7
  %583 = load i8*, i8** %larger_buf, align 8
  %584 = load i8*, i8** %buf, align 8
  %585 = load i32, i32* %ori_len, align 4
  %conv1774 = sext i32 %585 to i64
  %call1775 = call i8* @memcpy(i8* noundef %583, i8* noundef %584, i64 noundef %conv1774) #7
  %586 = load i8*, i8** %larger_buf, align 8
  %587 = load i32, i32* %ori_len, align 4
  %idx.ext = sext i32 %587 to i64
  %add.ptr = getelementptr inbounds i8, i8* %586, i64 %idx.ext
  %588 = load i32, i32* %extra_len, align 4
  %conv1776 = sext i32 %588 to i64
  %call1777 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %add.ptr, i64 noundef %conv1776) #8
  store i32 %call1777, i32* %ret, align 4
  %589 = load i32, i32* %ret, align 4
  %590 = load i32, i32* %extra_len, align 4
  %cmp1778 = icmp ne i32 %589, %590
  br i1 %cmp1778, label %if.then1784, label %lor.lhs.false1780

lor.lhs.false1780:                                ; preds = %if.end1770
  %call1781 = call i64 @mbedtls_ssl_get_bytes_avail(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %cmp1782 = icmp ne i64 %call1781, 0
  br i1 %cmp1782, label %if.then1784, label %if.end1786

if.then1784:                                      ; preds = %lor.lhs.false1780, %if.end1770
  %call1785 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.200, i64 0, i64 0)) #8
  store i32 1, i32* %ret, align 4
  br label %reset

if.end1786:                                       ; preds = %lor.lhs.false1780
  %591 = load i8*, i8** %larger_buf, align 8
  %592 = load i32, i32* %ori_len, align 4
  %593 = load i32, i32* %extra_len, align 4
  %add1787 = add nsw i32 %592, %593
  %idxprom1788 = sext i32 %add1787 to i64
  %arrayidx1789 = getelementptr inbounds i8, i8* %591, i64 %idxprom1788
  store i8 0, i8* %arrayidx1789, align 1
  %594 = load i32, i32* %ori_len, align 4
  %595 = load i32, i32* %extra_len, align 4
  %add1790 = add nsw i32 %594, %595
  %596 = load i32, i32* %ori_len, align 4
  %597 = load i32, i32* %extra_len, align 4
  %598 = load i8*, i8** %larger_buf, align 8
  %call1791 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.201, i64 0, i64 0), i32 noundef %add1790, i32 noundef %596, i32 noundef %597, i8* noundef %598) #8
  %599 = load i8*, i8** %larger_buf, align 8
  %600 = load i32, i32* %ori_len, align 4
  %601 = load i32, i32* %extra_len, align 4
  %add1792 = add nsw i32 %600, %601
  %sub1793 = sub nsw i32 %add1792, 1
  %idxprom1794 = sext i32 %sub1793 to i64
  %arrayidx1795 = getelementptr inbounds i8, i8* %599, i64 %idxprom1794
  %602 = load i8, i8* %arrayidx1795, align 1
  %conv1796 = zext i8 %602 to i32
  %cmp1797 = icmp eq i32 %conv1796, 10
  br i1 %cmp1797, label %if.then1799, label %if.end1800

if.then1799:                                      ; preds = %if.end1786
  store i32 1, i32* %terminated, align 4
  br label %if.end1800

if.end1800:                                       ; preds = %if.then1799, %if.end1786
  %603 = load i8*, i8** %larger_buf, align 8
  call void @free(i8* noundef %603) #7
  br label %if.end1801

if.end1801:                                       ; preds = %if.end1800, %if.end1758
  %604 = load i32, i32* %terminated, align 4
  %tobool1802 = icmp ne i32 %604, 0
  br i1 %tobool1802, label %if.then1803, label %if.end1804

if.then1803:                                      ; preds = %if.end1801
  store i32 0, i32* %ret, align 4
  br label %do.end

if.end1804:                                       ; preds = %if.end1801
  br label %do.cond

do.cond:                                          ; preds = %if.end1804, %if.end1731
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then1803
  br label %if.end1837

if.else1805:                                      ; preds = %data_exchange
  %605 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv1806 = zext i16 %605 to i32
  store i32 %conv1806, i32* %len, align 4
  %606 = load i8*, i8** %buf, align 8
  %607 = load i16, i16* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), align 4
  %conv1807 = zext i16 %607 to i64
  %call1808 = call i8* @memset(i8* noundef %606, i32 noundef 0, i64 noundef %conv1807) #7
  br label %do.body1809

do.body1809:                                      ; preds = %do.cond1821, %if.else1805
  %call1810 = call i32 @mbedtls_ssl_check_pending(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %cmp1811 = icmp eq i32 %call1810, 0
  br i1 %cmp1811, label %land.lhs.true1813, label %if.end1818

land.lhs.true1813:                                ; preds = %do.body1809
  %608 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1814 = icmp eq i32 %608, 1
  br i1 %cmp1814, label %if.then1816, label %if.end1818

if.then1816:                                      ; preds = %land.lhs.true1813
  %call1817 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef -26880) #8
  br label %if.end1818

if.end1818:                                       ; preds = %if.then1816, %land.lhs.true1813, %do.body1809
  %609 = load i8*, i8** %buf, align 8
  %610 = load i32, i32* %len, align 4
  %conv1819 = sext i32 %610 to i64
  %call1820 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %609, i64 noundef %conv1819) #8
  store i32 %call1820, i32* %ret, align 4
  br label %do.cond1821

do.cond1821:                                      ; preds = %if.end1818
  %611 = load i32, i32* %ret, align 4
  %call1822 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %611) #8
  %tobool1823 = icmp ne i32 %call1822, 0
  br i1 %tobool1823, label %do.body1809, label %do.end1824, !llvm.loop !35

do.end1824:                                       ; preds = %do.cond1821
  %612 = load i32, i32* %ret, align 4
  %cmp1825 = icmp sle i32 %612, 0
  br i1 %cmp1825, label %if.then1827, label %if.end1833

if.then1827:                                      ; preds = %do.end1824
  %613 = load i32, i32* %ret, align 4
  switch i32 %613, label %sw.default1830 [
    i32 -30848, label %sw.bb1828
  ]

sw.bb1828:                                        ; preds = %if.then1827
  %call1829 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.195, i64 0, i64 0)) #8
  store i32 0, i32* %ret, align 4
  br label %close_notify

sw.default1830:                                   ; preds = %if.then1827
  %614 = load i32, i32* %ret, align 4
  %sub1831 = sub nsw i32 0, %614
  %call1832 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i64 0, i64 0), i32 noundef %sub1831) #8
  br label %reset

if.end1833:                                       ; preds = %do.end1824
  %615 = load i32, i32* %ret, align 4
  store i32 %615, i32* %len, align 4
  %616 = load i8*, i8** %buf, align 8
  %617 = load i32, i32* %len, align 4
  %idxprom1834 = sext i32 %617 to i64
  %arrayidx1835 = getelementptr inbounds i8, i8* %616, i64 %idxprom1834
  store i8 0, i8* %arrayidx1835, align 1
  %618 = load i32, i32* %len, align 4
  %619 = load i8*, i8** %buf, align 8
  %call1836 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.202, i64 0, i64 0), i32 noundef %618, i8* noundef %619) #8
  store i32 0, i32* %ret, align 4
  br label %if.end1837

if.end1837:                                       ; preds = %if.end1833, %do.end
  %620 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 28), align 8
  %tobool1838 = icmp ne i32 %620, 0
  br i1 %tobool1838, label %land.lhs.true1839, label %if.end1862

land.lhs.true1839:                                ; preds = %if.end1837
  %621 = load i32, i32* %exchanges_left, align 4
  %622 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 31), align 8
  %cmp1840 = icmp eq i32 %621, %622
  br i1 %cmp1840, label %if.then1842, label %if.end1862

if.then1842:                                      ; preds = %land.lhs.true1839
  %call1843 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.203, i64 0, i64 0)) #8
  %623 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1844 = call i32 @fflush(%struct._IO_FILE* noundef %623) #8
  br label %while.cond1845

while.cond1845:                                   ; preds = %if.end1859, %if.then1842
  %call1846 = call i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call1846, i32* %ret, align 4
  %cmp1847 = icmp ne i32 %call1846, 0
  br i1 %cmp1847, label %while.body1849, label %while.end1860

while.body1849:                                   ; preds = %while.cond1845
  %624 = load i32, i32* %ret, align 4
  %call1850 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %624) #8
  %tobool1851 = icmp ne i32 %call1850, 0
  br i1 %tobool1851, label %if.end1854, label %if.then1852

if.then1852:                                      ; preds = %while.body1849
  %625 = load i32, i32* %ret, align 4
  %call1853 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.204, i64 0, i64 0), i32 noundef %625) #8
  br label %reset

if.end1854:                                       ; preds = %while.body1849
  %626 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1855 = icmp eq i32 %626, 1
  br i1 %cmp1855, label %if.then1857, label %if.end1859

if.then1857:                                      ; preds = %if.end1854
  %627 = load i32, i32* %ret, align 4
  %call1858 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %627) #8
  br label %if.end1859

if.end1859:                                       ; preds = %if.then1857, %if.end1854
  br label %while.cond1845, !llvm.loop !36

while.end1860:                                    ; preds = %while.cond1845
  %call1861 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end1862

if.end1862:                                       ; preds = %while.end1860, %land.lhs.true1839, %if.end1837
  %call1863 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.205, i64 0, i64 0)) #8
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1864 = call i32 @fflush(%struct._IO_FILE* noundef %628) #8
  %629 = load i8*, i8** %buf, align 8
  %call1865 = call i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call1866 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %629, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.118, i64 0, i64 0), i8* noundef %call1865) #7
  store i32 %call1866, i32* %len, align 4
  %630 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp1867 = icmp ne i32 %630, -1
  br i1 %cmp1867, label %land.lhs.true1869, label %if.end1880

land.lhs.true1869:                                ; preds = %if.end1862
  %631 = load i32, i32* %len, align 4
  %632 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp1870 = icmp slt i32 %631, %632
  br i1 %cmp1870, label %if.then1872, label %if.end1880

if.then1872:                                      ; preds = %land.lhs.true1869
  %633 = load i8*, i8** %buf, align 8
  %634 = load i32, i32* %len, align 4
  %idx.ext1873 = sext i32 %634 to i64
  %add.ptr1874 = getelementptr inbounds i8, i8* %633, i64 %idx.ext1873
  %635 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %636 = load i32, i32* %len, align 4
  %sub1875 = sub nsw i32 %635, %636
  %conv1876 = sext i32 %sub1875 to i64
  %call1877 = call i8* @memset(i8* noundef %add.ptr1874, i32 noundef 66, i64 noundef %conv1876) #7
  %637 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %638 = load i32, i32* %len, align 4
  %sub1878 = sub nsw i32 %637, %638
  %639 = load i32, i32* %len, align 4
  %add1879 = add nsw i32 %639, %sub1878
  store i32 %add1879, i32* %len, align 4
  br label %if.end1880

if.end1880:                                       ; preds = %if.then1872, %land.lhs.true1869, %if.end1862
  %640 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp1881 = icmp ne i32 %640, -1
  br i1 %cmp1881, label %land.lhs.true1883, label %if.end1901

land.lhs.true1883:                                ; preds = %if.end1880
  %641 = load i32, i32* %len, align 4
  %642 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp1884 = icmp sgt i32 %641, %642
  br i1 %cmp1884, label %if.then1886, label %if.end1901

if.then1886:                                      ; preds = %land.lhs.true1883
  %643 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  store i32 %643, i32* %len, align 4
  %644 = load i32, i32* %len, align 4
  %cmp1887 = icmp sge i32 %644, 2
  br i1 %cmp1887, label %if.then1889, label %if.end1893

if.then1889:                                      ; preds = %if.then1886
  %645 = load i8*, i8** %buf, align 8
  %646 = load i32, i32* %len, align 4
  %sub1890 = sub nsw i32 %646, 2
  %idxprom1891 = sext i32 %sub1890 to i64
  %arrayidx1892 = getelementptr inbounds i8, i8* %645, i64 %idxprom1891
  store i8 13, i8* %arrayidx1892, align 1
  br label %if.end1893

if.end1893:                                       ; preds = %if.then1889, %if.then1886
  %647 = load i32, i32* %len, align 4
  %cmp1894 = icmp sge i32 %647, 1
  br i1 %cmp1894, label %if.then1896, label %if.end1900

if.then1896:                                      ; preds = %if.end1893
  %648 = load i8*, i8** %buf, align 8
  %649 = load i32, i32* %len, align 4
  %sub1897 = sub nsw i32 %649, 1
  %idxprom1898 = sext i32 %sub1897 to i64
  %arrayidx1899 = getelementptr inbounds i8, i8* %648, i64 %idxprom1898
  store i8 10, i8* %arrayidx1899, align 1
  br label %if.end1900

if.end1900:                                       ; preds = %if.then1896, %if.end1893
  br label %if.end1901

if.end1901:                                       ; preds = %if.end1900, %land.lhs.true1883, %if.end1880
  %650 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 53), align 8
  %cmp1902 = icmp eq i32 %650, 0
  br i1 %cmp1902, label %if.then1904, label %if.else1938

if.then1904:                                      ; preds = %if.end1901
  store i32 0, i32* %written, align 4
  store i32 0, i32* %frags, align 4
  br label %for.cond1905

for.cond1905:                                     ; preds = %for.inc1934, %if.then1904
  %651 = load i32, i32* %written, align 4
  %652 = load i32, i32* %len, align 4
  %cmp1906 = icmp slt i32 %651, %652
  br i1 %cmp1906, label %for.body1908, label %for.end1937

for.body1908:                                     ; preds = %for.cond1905
  br label %while.cond1909

while.cond1909:                                   ; preds = %if.end1932, %for.body1908
  %653 = load i8*, i8** %buf, align 8
  %654 = load i32, i32* %written, align 4
  %idx.ext1910 = sext i32 %654 to i64
  %add.ptr1911 = getelementptr inbounds i8, i8* %653, i64 %idx.ext1910
  %655 = load i32, i32* %len, align 4
  %656 = load i32, i32* %written, align 4
  %sub1912 = sub nsw i32 %655, %656
  %conv1913 = sext i32 %sub1912 to i64
  %call1914 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %add.ptr1911, i64 noundef %conv1913) #8
  store i32 %call1914, i32* %ret, align 4
  %cmp1915 = icmp sle i32 %call1914, 0
  br i1 %cmp1915, label %while.body1917, label %while.end1933

while.body1917:                                   ; preds = %while.cond1909
  %657 = load i32, i32* %ret, align 4
  %cmp1918 = icmp eq i32 %657, -80
  br i1 %cmp1918, label %if.then1920, label %if.end1922

if.then1920:                                      ; preds = %while.body1917
  %call1921 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.206, i64 0, i64 0)) #8
  br label %reset

if.end1922:                                       ; preds = %while.body1917
  %658 = load i32, i32* %ret, align 4
  %call1923 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %658) #8
  %tobool1924 = icmp ne i32 %call1923, 0
  br i1 %tobool1924, label %if.end1927, label %if.then1925

if.then1925:                                      ; preds = %if.end1922
  %659 = load i32, i32* %ret, align 4
  %call1926 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.207, i64 0, i64 0), i32 noundef %659) #8
  br label %reset

if.end1927:                                       ; preds = %if.end1922
  %660 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1928 = icmp eq i32 %660, 1
  br i1 %cmp1928, label %if.then1930, label %if.end1932

if.then1930:                                      ; preds = %if.end1927
  %661 = load i32, i32* %ret, align 4
  %call1931 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %661) #8
  br label %if.end1932

if.end1932:                                       ; preds = %if.then1930, %if.end1927
  br label %while.cond1909, !llvm.loop !37

while.end1933:                                    ; preds = %while.cond1909
  br label %for.inc1934

for.inc1934:                                      ; preds = %while.end1933
  %662 = load i32, i32* %ret, align 4
  %663 = load i32, i32* %written, align 4
  %add1935 = add nsw i32 %663, %662
  store i32 %add1935, i32* %written, align 4
  %664 = load i32, i32* %frags, align 4
  %inc1936 = add nsw i32 %664, 1
  store i32 %inc1936, i32* %frags, align 4
  br label %for.cond1905, !llvm.loop !38

for.end1937:                                      ; preds = %for.cond1905
  br label %if.end1958

if.else1938:                                      ; preds = %if.end1901
  br label %while.body1940

while.body1940:                                   ; preds = %if.else1938, %if.end1951
  %665 = load i8*, i8** %buf, align 8
  %666 = load i32, i32* %len, align 4
  %conv1941 = sext i32 %666 to i64
  %call1942 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %665, i64 noundef %conv1941) #8
  store i32 %call1942, i32* %ret, align 4
  %667 = load i32, i32* %ret, align 4
  %call1943 = call i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %667) #8
  %tobool1944 = icmp ne i32 %call1943, 0
  br i1 %tobool1944, label %if.end1946, label %if.then1945

if.then1945:                                      ; preds = %while.body1940
  br label %while.end1952

if.end1946:                                       ; preds = %while.body1940
  %668 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp1947 = icmp eq i32 %668, 1
  br i1 %cmp1947, label %if.then1949, label %if.end1951

if.then1949:                                      ; preds = %if.end1946
  %669 = load i32, i32* %ret, align 4
  %call1950 = call i32 @idle(%struct.mbedtls_net_context* noundef @client_fd, %struct.mbedtls_timing_delay_context* noundef %timer, i32 noundef %669) #8
  br label %if.end1951

if.end1951:                                       ; preds = %if.then1949, %if.end1946
  br label %while.body1940

while.end1952:                                    ; preds = %if.then1945
  %670 = load i32, i32* %ret, align 4
  %cmp1953 = icmp slt i32 %670, 0
  br i1 %cmp1953, label %if.then1955, label %if.end1957

if.then1955:                                      ; preds = %while.end1952
  %671 = load i32, i32* %ret, align 4
  %call1956 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.207, i64 0, i64 0), i32 noundef %671) #8
  br label %reset

if.end1957:                                       ; preds = %while.end1952
  store i32 1, i32* %frags, align 4
  %672 = load i32, i32* %ret, align 4
  store i32 %672, i32* %written, align 4
  br label %if.end1958

if.end1958:                                       ; preds = %if.end1957, %for.end1937
  %673 = load i8*, i8** %buf, align 8
  %674 = load i32, i32* %written, align 4
  %idxprom1959 = sext i32 %674 to i64
  %arrayidx1960 = getelementptr inbounds i8, i8* %673, i64 %idxprom1959
  store i8 0, i8* %arrayidx1960, align 1
  %675 = load i32, i32* %written, align 4
  %676 = load i32, i32* %frags, align 4
  %677 = load i8*, i8** %buf, align 8
  %call1961 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.208, i64 0, i64 0), i32 noundef %675, i32 noundef %676, i8* noundef %677) #8
  store i32 0, i32* %ret, align 4
  %678 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %cmp1962 = icmp ne i32 %678, 0
  br i1 %cmp1962, label %if.then1964, label %if.end2057

if.then1964:                                      ; preds = %if.end1958
  %call1965 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.209, i64 0, i64 0)) #8
  %call1966 = call i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef null, i64 noundef 0, i64* noundef %buf_len) #8
  store i32 %call1966, i32* %ret, align 4
  %679 = load i32, i32* %ret, align 4
  %cmp1967 = icmp ne i32 %679, -27136
  br i1 %cmp1967, label %if.then1969, label %if.end1972

if.then1969:                                      ; preds = %if.then1964
  %680 = load i32, i32* %ret, align 4
  %sub1970 = sub nsw i32 0, %680
  %call1971 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.210, i64 0, i64 0), i32 noundef %sub1970) #8
  br label %exit

if.end1972:                                       ; preds = %if.then1964
  %681 = load i64, i64* %buf_len, align 8
  %call1973 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %681) #7
  store i8* %call1973, i8** %context_buf, align 8
  %cmp1974 = icmp eq i8* %call1973, null
  br i1 %cmp1974, label %if.then1976, label %if.end1978

if.then1976:                                      ; preds = %if.end1972
  %call1977 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.211, i64 0, i64 0)) #8
  br label %exit

if.end1978:                                       ; preds = %if.end1972
  %682 = load i64, i64* %buf_len, align 8
  store i64 %682, i64* %context_buf_len, align 8
  %683 = load i8*, i8** %context_buf, align 8
  %684 = load i64, i64* %buf_len, align 8
  %call1979 = call i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %683, i64 noundef %684, i64* noundef %buf_len) #8
  store i32 %call1979, i32* %ret, align 4
  %cmp1980 = icmp ne i32 %call1979, 0
  br i1 %cmp1980, label %if.then1982, label %if.end1985

if.then1982:                                      ; preds = %if.end1978
  %685 = load i32, i32* %ret, align 4
  %sub1983 = sub nsw i32 0, %685
  %call1984 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.210, i64 0, i64 0), i32 noundef %sub1983) #8
  br label %exit

if.end1985:                                       ; preds = %if.end1978
  %call1986 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  %686 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 68), align 8
  %call1987 = call i64 @strlen(i8* noundef %686) #9
  %cmp1988 = icmp ult i64 0, %call1987
  br i1 %cmp1988, label %if.then1990, label %if.end2021

if.then1990:                                      ; preds = %if.end1985
  %call1991 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.212, i64 0, i64 0)) #8
  %687 = load i8*, i8** %context_buf, align 8
  %688 = load i64, i64* %buf_len, align 8
  %call1992 = call i32 @mbedtls_base64_encode(i8* noundef null, i64 noundef 0, i64* noundef %b64_len, i8* noundef %687, i64 noundef %688) #8
  %689 = load i64, i64* %b64_len, align 8
  %call1993 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %689) #7
  store i8* %call1993, i8** %b64_buf, align 8
  %cmp1994 = icmp eq i8* %call1993, null
  br i1 %cmp1994, label %if.then1996, label %if.end1998

if.then1996:                                      ; preds = %if.then1990
  %call1997 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.213, i64 0, i64 0)) #8
  br label %exit

if.end1998:                                       ; preds = %if.then1990
  %690 = load i8*, i8** %b64_buf, align 8
  %691 = load i64, i64* %b64_len, align 8
  %692 = load i8*, i8** %context_buf, align 8
  %693 = load i64, i64* %buf_len, align 8
  %call1999 = call i32 @mbedtls_base64_encode(i8* noundef %690, i64 noundef %691, i64* noundef %b64_len, i8* noundef %692, i64 noundef %693) #8
  store i32 %call1999, i32* %ret, align 4
  %cmp2000 = icmp ne i32 %call1999, 0
  br i1 %cmp2000, label %if.then2002, label %if.end2005

if.then2002:                                      ; preds = %if.end1998
  %694 = load i32, i32* %ret, align 4
  %sub2003 = sub nsw i32 0, %694
  %call2004 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.214, i64 0, i64 0), i32 noundef %sub2003) #8
  %695 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %695) #7
  br label %exit

if.end2005:                                       ; preds = %if.end1998
  %696 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 68), align 8
  %call2006 = call %struct._IO_FILE* @fopen(i8* noundef %696, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.215, i64 0, i64 0)) #8
  store %struct._IO_FILE* %call2006, %struct._IO_FILE** %b64_file, align 8
  %cmp2007 = icmp eq %struct._IO_FILE* %call2006, null
  br i1 %cmp2007, label %if.then2009, label %if.end2011

if.then2009:                                      ; preds = %if.end2005
  %697 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 68), align 8
  %call2010 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.216, i64 0, i64 0), i8* noundef %697) #8
  %698 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %698) #7
  br label %exit

if.end2011:                                       ; preds = %if.end2005
  %699 = load i64, i64* %b64_len, align 8
  %700 = load i8*, i8** %b64_buf, align 8
  %701 = load i64, i64* %b64_len, align 8
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call2012 = call i64 @fwrite(i8* noundef %700, i64 noundef 1, i64 noundef %701, %struct._IO_FILE* noundef %702) #8
  %cmp2013 = icmp ne i64 %699, %call2012
  br i1 %cmp2013, label %if.then2015, label %if.end2018

if.then2015:                                      ; preds = %if.end2011
  %703 = load i64, i64* %b64_len, align 8
  %call2016 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.217, i64 0, i64 0), i64 noundef %703) #8
  %704 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %704) #7
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call2017 = call i32 @fclose(%struct._IO_FILE* noundef %705) #8
  br label %exit

if.end2018:                                       ; preds = %if.end2011
  %706 = load i8*, i8** %b64_buf, align 8
  call void @free(i8* noundef %706) #7
  %707 = load %struct._IO_FILE*, %struct._IO_FILE** %b64_file, align 8
  %call2019 = call i32 @fclose(%struct._IO_FILE* noundef %707) #8
  %call2020 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i64 0, i64 0)) #8
  br label %if.end2021

if.end2021:                                       ; preds = %if.end2018, %if.end1985
  %708 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %cmp2022 = icmp eq i32 %708, 1
  br i1 %cmp2022, label %if.then2024, label %if.end2026

if.then2024:                                      ; preds = %if.end2021
  %call2025 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.219, i64 0, i64 0)) #8
  br label %if.end2026

if.end2026:                                       ; preds = %if.then2024, %if.end2021
  %709 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 67), align 8
  %cmp2027 = icmp eq i32 %709, 2
  br i1 %cmp2027, label %if.then2029, label %if.end2047

if.then2029:                                      ; preds = %if.end2026
  %call2030 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.220, i64 0, i64 0)) #8
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #8
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #8
  %call2031 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #8
  store i32 %call2031, i32* %ret, align 4
  %cmp2032 = icmp ne i32 %call2031, 0
  br i1 %cmp2032, label %if.then2034, label %if.end2037

if.then2034:                                      ; preds = %if.then2029
  %710 = load i32, i32* %ret, align 4
  %sub2035 = sub nsw i32 0, %710
  %call2036 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.160, i64 0, i64 0), i32 noundef %sub2035) #8
  br label %exit

if.end2037:                                       ; preds = %if.then2029
  %711 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp2038 = icmp eq i32 %711, 2
  br i1 %cmp2038, label %if.then2040, label %if.else2041

if.then2040:                                      ; preds = %if.end2037
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef bitcast (%struct.mbedtls_net_context* @client_fd to i8*), i32 (i8*, i8*, i64)* noundef @delayed_send, i32 (i8*, i8*, i64)* noundef @delayed_recv, i32 (i8*, i8*, i64, i32)* noundef null) #8
  br label %if.end2045

if.else2041:                                      ; preds = %if.end2037
  %712 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 4
  %cmp2042 = icmp eq i32 %712, 0
  %713 = zext i1 %cmp2042 to i64
  %cond2044 = select i1 %cmp2042, i32 (i8*, i8*, i64, i32)* @mbedtls_net_recv_timeout, i32 (i8*, i8*, i64, i32)* null
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef bitcast (%struct.mbedtls_net_context* @client_fd to i8*), i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef %cond2044) #8
  br label %if.end2045

if.end2045:                                       ; preds = %if.else2041, %if.then2040
  %714 = bitcast %struct.mbedtls_timing_delay_context* %timer to i8*
  call void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %714, void (i8*, i32, i32)* noundef @mbedtls_timing_set_delay, i32 (i8*)* noundef @mbedtls_timing_get_delay) #8
  %call2046 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end2047

if.end2047:                                       ; preds = %if.end2045, %if.end2026
  %call2048 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.221, i64 0, i64 0)) #8
  %715 = load i8*, i8** %context_buf, align 8
  %716 = load i64, i64* %buf_len, align 8
  %call2049 = call i32 @mbedtls_ssl_context_load(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %715, i64 noundef %716) #8
  store i32 %call2049, i32* %ret, align 4
  %cmp2050 = icmp ne i32 %call2049, 0
  br i1 %cmp2050, label %if.then2052, label %if.end2055

if.then2052:                                      ; preds = %if.end2047
  %717 = load i32, i32* %ret, align 4
  %sub2053 = sub nsw i32 0, %717
  %call2054 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.222, i64 0, i64 0), i32 noundef %sub2053) #8
  br label %exit

if.end2055:                                       ; preds = %if.end2047
  %718 = load i8*, i8** %context_buf, align 8
  call void @free(i8* noundef %718) #7
  store i8* null, i8** %context_buf, align 8
  store i64 0, i64* %context_buf_len, align 8
  %call2056 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0)) #8
  br label %if.end2057

if.end2057:                                       ; preds = %if.end2055, %if.end1958
  %719 = load i32, i32* %exchanges_left, align 4
  %dec = add nsw i32 %719, -1
  store i32 %dec, i32* %exchanges_left, align 4
  %cmp2058 = icmp sgt i32 %dec, 0
  br i1 %cmp2058, label %if.then2060, label %if.end2061

if.then2060:                                      ; preds = %if.end2057
  br label %data_exchange

if.end2061:                                       ; preds = %if.end2057
  br label %close_notify

close_notify:                                     ; preds = %if.end2061, %sw.bb1828, %sw.bb1736, %if.then1712
  %call2062 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.223, i64 0, i64 0)) #8
  br label %do.body2063

do.body2063:                                      ; preds = %do.cond2065, %close_notify
  %call2064 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #8
  store i32 %call2064, i32* %ret, align 4
  br label %do.cond2065

do.cond2065:                                      ; preds = %do.body2063
  %720 = load i32, i32* %ret, align 4
  %cmp2066 = icmp eq i32 %720, -26752
  br i1 %cmp2066, label %do.body2063, label %do.end2068, !llvm.loop !39

do.end2068:                                       ; preds = %do.cond2065
  store i32 0, i32* %ret, align 4
  %call2069 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i64 0, i64 0)) #8
  br label %reset

exit:                                             ; preds = %if.then2052, %if.then2034, %if.then2015, %if.then2009, %if.then2002, %if.then1996, %if.then1982, %if.then1976, %if.then1969, %if.then1539, %if.then1528, %if.end1515, %if.end1514, %if.end1486, %if.then1475, %if.then1436, %if.then1421, %if.then1404, %if.then1371, %if.then1361, %if.then1280, %if.then1266, %if.then1245, %if.then1223, %if.then1203, %if.then1166, %if.then1156, %if.then1142, %if.then1119, %if.then1112, %if.then1105, %if.then1098, %if.then1070, %if.then1063, %if.then1047, %if.then1033, %if.then1026, %if.then1010, %if.then993, %if.then924, %if.then876, %for.end865, %if.then805, %if.then796, %if.then746, %if.then548, %while.end
  %721 = load i32, i32* %ret, align 4
  %cmp2070 = icmp ne i32 %721, 0
  br i1 %cmp2070, label %if.then2072, label %if.end2078

if.then2072:                                      ; preds = %exit
  %722 = load i32, i32* %ret, align 4
  %arraydecay2074 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf2073, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %722, i8* noundef %arraydecay2074, i64 noundef 100) #8
  %723 = load i32, i32* %ret, align 4
  %sub2075 = sub nsw i32 0, %723
  %arraydecay2076 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf2073, i64 0, i64 0
  %call2077 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.225, i64 0, i64 0), i32 noundef %sub2075, i8* noundef %arraydecay2076) #8
  br label %if.end2078

if.end2078:                                       ; preds = %if.then2072, %exit
  %724 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  %cmp2079 = icmp eq i32 %724, 0
  br i1 %cmp2079, label %if.then2081, label %if.end2084

if.then2081:                                      ; preds = %if.end2078
  %call2082 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.226, i64 0, i64 0)) #8
  %725 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2083 = call i32 @fflush(%struct._IO_FILE* noundef %725) #8
  br label %if.end2084

if.end2084:                                       ; preds = %if.then2081, %if.end2078
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef @client_fd) #8
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef @listen_fd) #8
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #8
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #8
  call void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef %cache) #8
  call void @mbedtls_ssl_ticket_free(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx) #8
  call void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef %cookie_ctx) #8
  %726 = load i8*, i8** %context_buf, align 8
  %cmp2085 = icmp ne i8* %726, null
  br i1 %cmp2085, label %if.then2087, label %if.end2088

if.then2087:                                      ; preds = %if.end2084
  %727 = load i8*, i8** %context_buf, align 8
  %728 = load i64, i64* %context_buf_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %727, i64 noundef %728) #8
  br label %if.end2088

if.end2088:                                       ; preds = %if.then2087, %if.end2084
  %729 = load i8*, i8** %context_buf, align 8
  call void @free(i8* noundef %729) #7
  %730 = load %struct._sni_entry*, %struct._sni_entry** %sni_info, align 8
  call void @sni_free(%struct._sni_entry* noundef %730) #8
  %731 = load %struct._psk_entry*, %struct._psk_entry** %psk_info, align 8
  %call2089 = call i32 @psk_free(%struct._psk_entry* noundef %731) #8
  store i32 %call2089, i32* %ret, align 4
  %732 = load i32, i32* %ret, align 4
  %cmp2090 = icmp ne i32 %732, 0
  br i1 %cmp2090, label %land.lhs.true2092, label %if.end2097

land.lhs.true2092:                                ; preds = %if.end2088
  %733 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  %cmp2093 = icmp eq i32 %733, 0
  br i1 %cmp2093, label %if.then2095, label %if.end2097

if.then2095:                                      ; preds = %land.lhs.true2092
  %734 = load i32, i32* %ret, align 4
  %call2096 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.227, i64 0, i64 0), i32 noundef %734) #8
  br label %if.end2097

if.end2097:                                       ; preds = %if.then2095, %land.lhs.true2092, %if.end2088
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %cacert) #8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %srvcert) #8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey) #8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %srvcert2) #8
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pkey2) #8
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm) #8
  call void @rng_free(%struct.rng_context_t* noundef @rng) #8
  %735 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %735) #7
  %736 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  %cmp2098 = icmp eq i32 %736, 0
  br i1 %cmp2098, label %if.then2100, label %if.end2102

if.then2100:                                      ; preds = %if.end2097
  %call2101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i64 0, i64 0)) #8
  br label %if.end2102

if.end2102:                                       ; preds = %if.then2100, %if.end2097
  %737 = load i32, i32* %ret, align 4
  %cmp2103 = icmp slt i32 %737, 0
  br i1 %cmp2103, label %if.then2105, label %if.end2106

if.then2105:                                      ; preds = %if.end2102
  store i32 1, i32* %ret, align 4
  br label %if.end2106

if.end2106:                                       ; preds = %if.then2105, %if.end2102
  %738 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 71), align 4
  %cmp2107 = icmp eq i32 %738, 0
  br i1 %cmp2107, label %if.then2109, label %if.else2110

if.then2109:                                      ; preds = %if.end2106
  %739 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %739) #10
  unreachable

if.else2110:                                      ; preds = %if.end2106
  %740 = load i32, i32* %query_config_ret, align 4
  call void @exit(i32 noundef %740) #10
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #2

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @rng_init(%struct.rng_context_t* noundef) #2

declare dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef) #2

declare dso_local void @mbedtls_ssl_ticket_init(%struct.mbedtls_ssl_ticket_context* noundef) #2

declare dso_local void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

declare dso_local i32* @mbedtls_ssl_list_ciphersuites() #2

declare dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #1

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_string(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_info_get_type(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @query_config(i8* noundef) #2

declare dso_local i32 @key_opaque_alg_parse(i8* noundef, i8** noundef, i8** noundef) #2

declare dso_local void @mbedtls_debug_set_threshold(i32 noundef) #2

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @rng_seed(%struct.rng_context_t* noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_dhm_parse_dhmfile(%struct.mbedtls_dhm_context* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_cert_profile(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt_profile* noundef) #2

declare dso_local void @mbedtls_ssl_conf_sig_algs(%struct.mbedtls_ssl_config* noundef, i16* noundef) #2

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_cert_req_ca_list(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_conf_dn_hints(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dn_hints = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 58
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %dn_hints, align 8
  ret void
}

declare dso_local void @mbedtls_ssl_conf_handshake_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_set_datagram_packing(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_max_frag_len(%struct.mbedtls_ssl_config* noundef, i8 noundef zeroext) #2

declare dso_local void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

declare dso_local void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

declare dso_local i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef, i8** noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef, void (i8*, i32, i8*, i32, i8*)* noundef, i8* noundef) #2

declare dso_local void @my_debug(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_cache_set_max_entries(%struct.mbedtls_ssl_cache_context* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_cache_set_timeout(%struct.mbedtls_ssl_cache_context* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef, i8* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef) #2

declare dso_local i32 @mbedtls_ssl_cache_get(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_cache_set(i8* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ssl_session* noundef) #2

declare dso_local i32 @mbedtls_ssl_ticket_setup(%struct.mbedtls_ssl_ticket_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_session_tickets_cb(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* noundef, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_ticket_write(i8* noundef, %struct.mbedtls_ssl_session* noundef, i8* noundef, i8* noundef, i64* noundef, i32* noundef) #2

declare dso_local i32 @mbedtls_ssl_ticket_parse(i8* noundef, %struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_ticket_rotate(%struct.mbedtls_ssl_ticket_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8**, i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_write(i8* noundef, i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_cookie_check(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_conf_dtls_anti_replay(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #2

declare dso_local void @mbedtls_ssl_conf_dtls_badmac_limit(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef, i32* noundef) #2

declare dso_local void @mbedtls_ssl_conf_legacy_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_renegotiation_enforced(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_conf_renegotiation_period(%struct.mbedtls_ssl_config* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_ssl_conf_sni(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_conf_cert_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (%struct.mbedtls_ssl_context*)* noundef %f_cert_cb) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_cert_cb.addr = alloca i32 (%struct.mbedtls_ssl_context*)*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (%struct.mbedtls_ssl_context*)* %f_cert_cb, i32 (%struct.mbedtls_ssl_context*)** %f_cert_cb.addr, align 8
  %0 = load i32 (%struct.mbedtls_ssl_context*)*, i32 (%struct.mbedtls_ssl_context*)** %f_cert_cb.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_cert_cb1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 57
  store i32 (%struct.mbedtls_ssl_context*)* %0, i32 (%struct.mbedtls_ssl_context*)** %f_cert_cb1, align 8
  ret void
}

declare dso_local void @mbedtls_ssl_conf_groups(%struct.mbedtls_ssl_config* noundef, i16* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_conf_psk_cb(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_dh_param_ctx(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_dhm_context* noundef) #2

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

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #2

declare dso_local void @mbedtls_ssl_set_mtu(%struct.mbedtls_ssl_context* noundef, i16 noundef zeroext) #2

declare dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef, i8* noundef, void (i8*, i32, i32)* noundef, i32 (i8*)* noundef) #2

declare dso_local void @mbedtls_timing_set_delay(i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_timing_get_delay(i8* noundef) #2

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #2

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef) #2

declare dso_local i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef) #2

declare dso_local void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_set_hs_dn_hints(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_x509_crt* noundef) #2

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_status_is_ssl_in_progress(i32 noundef %ret) #0 {
entry:
  %ret.addr = alloca i32, align 4
  store i32 %ret, i32* %ret.addr, align 4
  %0 = load i32, i32* %ret.addr, align 4
  %cmp = icmp eq i32 %0, -26880
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ret.addr, align 4
  %cmp1 = icmp eq i32 %1, -26752
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %ret.addr, align 4
  %cmp2 = icmp eq i32 %2, -25856
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

declare dso_local i32 @idle(%struct.mbedtls_net_context* noundef, %struct.mbedtls_timing_delay_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef) #2

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

declare dso_local %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #2

declare dso_local i32 @mbedtls_ssl_tls_prf(i32 noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i64 @mbedtls_ssl_get_bytes_avail(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_check_pending(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_base64_encode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_context_load(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #2

declare dso_local void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef) #2

declare dso_local void @mbedtls_ssl_ticket_free(%struct.mbedtls_ssl_ticket_context* noundef) #2

declare dso_local void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef) #2

declare dso_local void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local void @rng_free(%struct.rng_context_t* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }

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
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
