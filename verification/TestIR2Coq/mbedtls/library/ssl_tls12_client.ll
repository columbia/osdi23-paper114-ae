; ModuleID = 'ssl_tls12_client.c'
source_filename = "ssl_tls12_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_handshake_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i64, %struct.mbedtls_ssl_ciphersuite_t*, void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i32)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, [20 x i16], i16*, i16*, %struct.mbedtls_dhm_context, %struct.mbedtls_ecdh_context, %struct.mbedtls_ecp_curve_info**, i8*, i64, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, %struct.anon, i8*, i8, i32, i32, i32, %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item*, i8*, i32, %struct.mbedtls_ssl_transform*, [8 x i8], i16, %struct.mbedtls_sha256_context, %struct.mbedtls_sha512_context, i8, %union.anon.1, [64 x i8], [1060 x i8], i8*, i64, %struct.mbedtls_x509_crt* }
%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }
%struct.mbedtls_dhm_context = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.anon = type { i64, i8, [4 x %struct.mbedtls_ssl_hs_buffer], %struct.anon.0 }
%struct.mbedtls_ssl_hs_buffer = type { i8, i8*, i64 }
%struct.anon.0 = type { i8*, i64, i32 }
%struct.mbedtls_ssl_flight_item = type { i8*, i64, i8, %struct.mbedtls_ssl_flight_item* }
%struct.mbedtls_sha256_context = type { [2 x i32], [8 x i32], [64 x i8], i32 }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i8, [64 x i8], i64 }
%struct.mbedtls_ssl_transform = type { i64, i64, i64, i64, i64, [16 x i8], [16 x i8], %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t, i32, i32, %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t, [64 x i8] }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type { %struct.mbedtls_x509_crt*, %struct.mbedtls_pk_context*, %struct.mbedtls_ssl_key_cert* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

@.str = private unnamed_addr constant [19 x i8] c"ssl_tls12_client.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ssl_write_renegotiation_ext\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ssl_write_supported_point_formats_ext\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ssl_write_max_fragment_length_ext\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ssl_write_encrypt_then_mac_ext\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ssl_write_extended_ms_ext\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"ssl_write_session_ticket_ext\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"handshake: done\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"client hello, adding renegotiation extension\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"client hello, adding supported_point_formats extension\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"client hello, adding max_fragment_length extension\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"client hello, adding encrypt_then_mac extension\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"client hello, adding extended_master_secret extension\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"client hello, adding session ticket extension\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"sending session ticket of length %zu\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"=> parse server hello\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"renegotiation requested, but not honored by server\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"non-handshake message during renegotiation\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"bad server hello message\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"received hello verify request\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"<= parse server hello\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"server hello, version\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"server version out of bounds -  min: [0x%x], server: [0x%x], max: [0x%x]\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"server hello, current time: %lu\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"server hello, random bytes\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"server hello, bad compression: %d\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"ciphersuite info for %04x not found\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"server hello, session id len.: %zu\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"server hello, session id\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"%s session has been resumed\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"server hello, chosen ciphersuite: %04x\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"server hello, compress alg.: %d\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"server hello, chosen ciphersuite: %s\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"server hello, total extension length: %zu\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"found renegotiation extension\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"found max_fragment_length extension\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"found encrypt_then_mac extension\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"found extended_master_secret extension\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"found session_ticket extension\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"found supported_point_formats extension\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"found alpn extension\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"unknown extension found: %u (ignoring)\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_derive_keys\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"legacy renegotiation, breaking off handshake\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"renegotiation_info extension missing (secure)\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"legacy renegotiation not allowed\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"renegotiation_info extension present (legacy)\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"=> parse hello verify request\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"incoming HelloVerifyRequest message is too short\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"server version\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"bad server version\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"cookie length does not match incoming message size\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"alloc failed (%d bytes)\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"<= parse hello verify request\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"non-matching renegotiation info\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"non-zero length renegotiation info\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"non-matching max fragment length extension\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"non-matching encrypt-then-MAC extension\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"non-matching extended master secret extension\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"non-matching session ticket extension\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"point format selected: %d\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"no point format in common\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"non-matching ALPN extension\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"ALPN extension: no matching protocol\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"=> parse server key exchange\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"<= skip parse server key exchange\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"ssl_get_ecdh_params_from_cert\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"bad server key exchange message\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"server key exchange message must not be skipped\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"server key exchange\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"parameters hash\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"mbedtls_pk_verify\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"<= parse server key exchange\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"server key not ECDH capable\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"mbedtls_ecdh_get_params\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"bad server certificate (ECDH curve)\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"ECDH curve: %s\00", align 1
@.str.84 = private unnamed_addr constant [59 x i8] c"bad server key exchange message (psk_identity_hint length)\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_read_params\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"DHM prime too short: %zu < %u\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"DHM: P \00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"DHM: G \00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"DHM: GY\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_read_params\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"bad server key exchange message (ECDHE curve)\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"Server used unsupported HashAlgorithm %d\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"server used unsupported SignatureAlgorithm %d\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"server used HashAlgorithm %d that was not offered\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"Server used SignatureAlgorithm %d\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"Server used HashAlgorithm %d\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"=> parse certificate request\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"<= skip parse certificate request\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"bad certificate request message\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"got %s certificate request\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"Supported Signature Algorithm found: %d,%d\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"DN hint: %.*s\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"<= parse certificate request\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"=> parse server hello done\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"bad server hello done message\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"<= parse server hello done\00", align 1
@.str.107 = private unnamed_addr constant [29 x i8] c"=> write client key exchange\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_make_public\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"DHM: X \00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"DHM: GX\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_calc_secret\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"DHM: K \00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_make_public\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_calc_secret\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"psk identity too long or SSL buffer too short\00", align 1
@.str.116 = private unnamed_addr constant [58 x i8] c"psk identity or DHM size too long or SSL buffer too short\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"mbedtls_ssl_psk_derive_premaster\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"<= write client key exchange\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"buffer too small for encrypted pms\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"f_rng\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"certificate key type mismatch\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"mbedtls_rsa_pkcs1_encrypt\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"=> write certificate verify\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"<= skip write certificate verify\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"got no private key for certificate\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"mbedtls_pk_sign\00", align 1
@.str.128 = private unnamed_addr constant [28 x i8] c"<= write certificate verify\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"=> parse new session ticket\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"bad new session ticket message\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"ticket length: %zu\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"ticket alloc failed\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"ticket in use, discarding session id\00", align 1
@.str.134 = private unnamed_addr constant [28 x i8] c"<= parse new session ticket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_has_static_psk(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 46
  %1 = load i8*, i8** %psk_identity, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 47
  %3 = load i64, i64* %psk_identity_len, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 44
  %5 = load i8*, i8** %psk, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 45
  %7 = load i64, i64* %psk_len, align 8
  %cmp3 = icmp ne i64 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_tls12_write_client_hello_exts(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i32 noundef %uses_ec, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %uses_ec.addr = alloca i32, align 4
  %out_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %ext_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %uses_ec, i32* %uses_ec.addr, align 4
  store i64* %out_len, i64** %out_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %ext_len, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %3 = load i32, i32* %uses_ec.addr, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load i64, i64* %ext_len, align 8
  %6 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %end.addr, align 8
  %call = call i32 @ssl_write_renegotiation_ext(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %8, i8* noundef %9, i64* noundef %ext_len) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11) #4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %ext_len, align 8
  %14 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %p, align 8
  %15 = load i32, i32* %uses_ec.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %end.addr, align 8
  %call2 = call i32 @ssl_write_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %16, i8* noundef %17, i8* noundef %18, i64* noundef %ext_len) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then1
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 noundef %20) #4
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then1
  %22 = load i64, i64* %ext_len, align 8
  %23 = load i8*, i8** %p, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr6, i8** %p, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load i8*, i8** %p, align 8
  %26 = load i8*, i8** %end.addr, align 8
  %call8 = call i32 @ssl_write_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %24, i8* noundef %25, i8* noundef %26, i64* noundef %ext_len) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %28 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %27, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 noundef %28) #4
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %30 = load i64, i64* %ext_len, align 8
  %31 = load i8*, i8** %p, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %add.ptr12, i8** %p, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %end.addr, align 8
  %call13 = call i32 @ssl_write_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %32, i8* noundef %33, i8* noundef %34, i64* noundef %ext_len) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 603, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36) #4
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %38 = load i64, i64* %ext_len, align 8
  %39 = load i8*, i8** %p, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %add.ptr17, i8** %p, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %end.addr, align 8
  %call18 = call i32 @ssl_write_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %40, i8* noundef %41, i8* noundef %42, i64* noundef %ext_len) #4
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %43, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %44) #4
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %46 = load i64, i64* %ext_len, align 8
  %47 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %add.ptr22, i8** %p, align 8
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %49 = load i8*, i8** %p, align 8
  %50 = load i8*, i8** %end.addr, align 8
  %call23 = call i32 @ssl_write_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %48, i8* noundef %49, i8* noundef %50, i64* noundef %ext_len) #4
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %52 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %51, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 630, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 noundef %52) #4
  %53 = load i32, i32* %ret, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end21
  %54 = load i64, i64* %ext_len, align 8
  %55 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %add.ptr27, i8** %p, align 8
  %56 = load i8*, i8** %p, align 8
  %57 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %58 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub, i64* %58, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then20, %if.then15, %if.then10, %if.then4, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_renegotiation_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 2
  %3 = load i32, i32* %renego_status, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 61
  %8 = load i64, i64* %verify_data_len, align 8
  %add = add i64 5, %8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %5, i8* noundef %6, i64 noundef %add) #4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %9 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 -1, i8* %arrayidx, align 1
  %10 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 1, i8* %arrayidx4, align 1
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %12, align 1
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 61
  %14 = load i64, i64* %verify_data_len5, align 8
  %add6 = add i64 %14, 1
  %and = and i64 %add6, 255
  %conv = trunc i64 %and to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 %conv, i8* %15, align 1
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 61
  %17 = load i64, i64* %verify_data_len8, align 8
  %and9 = and i64 %17, 255
  %conv10 = trunc i64 %and9 to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 %conv10, i8* %18, align 1
  %19 = load i8*, i8** %p, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %own_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 62
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %own_verify_data, i64 0, i64 0
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 61
  %22 = load i64, i64* %verify_data_len12, align 8
  %call13 = call i8* @memcpy(i8* noundef %19, i8* noundef %arraydecay, i64 noundef %22) #5
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 61
  %24 = load i64, i64* %verify_data_len14, align 8
  %add15 = add i64 5, %24
  %25 = load i64*, i64** %olen.addr, align 8
  store i64 %add15, i64* %25, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then2, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %2, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %4, i8* noundef %5, i64 noundef 6) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %p, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 11, i8* %arrayidx1, align 1
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %p, align 8
  store i8 2, i8* %10, align 1
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 1, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  store i8 0, i8* %12, align 1
  %13 = load i64*, i64** %olen.addr, align 8
  store i64 6, i64* %13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 6
  %4 = load i8, i8* %mfl_code, align 4
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef 5) #4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 1, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 1, i8* %12, align 1
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf8, align 8
  %mfl_code9 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 6
  %15 = load i8, i8* %mfl_code9, align 4
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8
  store i8 %15, i8* %16, align 1
  %17 = load i64*, i64** %olen.addr, align 8
  store i64 5, i64* %17, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 7
  %4 = load i8, i8* %encrypt_then_mac, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef 4) #4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 22, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 0, i8* %12, align 1
  %13 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 8
  %4 = load i8, i8* %extended_ms, align 2
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef 4) #4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 23, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 0, i8* %12, align 1
  %13 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %tlen = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 15
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %ticket_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %2, i32 0, i32 12
  %3 = load i64, i64* %ticket_len, align 8
  store i64 %3, i64* %tlen, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %session_tickets = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 11
  %7 = load i8, i8* %session_tickets, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %11 = load i64, i64* %tlen, align 8
  %add = add i64 4, %11
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %9, i8* noundef %10, i64 noundef %add) #4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  %13 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 35, i8* %arrayidx6, align 1
  %14 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %15 = load i64, i64* %tlen, align 8
  %shr = lshr i64 %15, 8
  %and = and i64 %shr, 255
  %conv7 = trunc i64 %and to i8
  %16 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %conv7, i8* %arrayidx8, align 1
  %17 = load i64, i64* %tlen, align 8
  %and9 = and i64 %17, 255
  %conv10 = trunc i64 %and9 to i8
  %18 = load i8*, i8** %p, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %19 = load i8*, i8** %p, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr12, i8** %p, align 8
  %20 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %20, align 8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 15
  %22 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate13, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %22, i32 0, i32 11
  %23 = load i8*, i8** %ticket, align 8
  %cmp14 = icmp eq i8* %23, null
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %24 = load i64, i64* %tlen, align 8
  %cmp16 = icmp eq i64 %24, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %26 = load i64, i64* %tlen, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 noundef %26) #4
  %27 = load i8*, i8** %p, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 15
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate20, align 8
  %ticket21 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 11
  %30 = load i8*, i8** %ticket21, align 8
  %31 = load i64, i64* %tlen, align 8
  %call22 = call i8* @memcpy(i8* noundef %27, i8* noundef %30, i64 noundef %31) #5
  %32 = load i64, i64* %tlen, align 8
  %33 = load i64*, i64** %olen.addr, align 8
  %34 = load i64, i64* %33, align 8
  %add23 = add i64 %34, %32
  store i64 %add23, i64* %33, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then4, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handshake_client_step(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 1
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 4
  %4 = load i8, i8* %new_session_ticket, align 4
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 1
  store i32 17, i32* %state3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state4, align 8
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
    i32 8, label %sw.bb19
    i32 9, label %sw.bb21
    i32 10, label %sw.bb23
    i32 11, label %sw.bb25
    i32 17, label %sw.bb27
    i32 12, label %sw.bb29
    i32 13, label %sw.bb31
    i32 14, label %sw.bb33
    i32 15, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 1
  store i32 1, i32* %state5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_client_hello(%struct.mbedtls_ssl_context* noundef %9) #4
  store i32 %call, i32* %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @ssl_parse_server_hello(%struct.mbedtls_ssl_context* noundef %10) #4
  store i32 %call8, i32* %ret, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call10 = call i32 @mbedtls_ssl_parse_certificate(%struct.mbedtls_ssl_context* noundef %11) #4
  store i32 %call10, i32* %ret, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call12 = call i32 @ssl_parse_server_key_exchange(%struct.mbedtls_ssl_context* noundef %12) #4
  store i32 %call12, i32* %ret, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i32 @ssl_parse_certificate_request(%struct.mbedtls_ssl_context* noundef %13) #4
  store i32 %call14, i32* %ret, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call16 = call i32 @ssl_parse_server_hello_done(%struct.mbedtls_ssl_context* noundef %14) #4
  store i32 %call16, i32* %ret, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call18 = call i32 @mbedtls_ssl_write_certificate(%struct.mbedtls_ssl_context* noundef %15) #4
  store i32 %call18, i32* %ret, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call20 = call i32 @ssl_write_client_key_exchange(%struct.mbedtls_ssl_context* noundef %16) #4
  store i32 %call20, i32* %ret, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call22 = call i32 @ssl_write_certificate_verify(%struct.mbedtls_ssl_context* noundef %17) #4
  store i32 %call22, i32* %ret, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call24 = call i32 @mbedtls_ssl_write_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %18) #4
  store i32 %call24, i32* %ret, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call26 = call i32 @mbedtls_ssl_write_finished(%struct.mbedtls_ssl_context* noundef %19) #4
  store i32 %call26, i32* %ret, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call28 = call i32 @ssl_parse_new_session_ticket(%struct.mbedtls_ssl_context* noundef %20) #4
  store i32 %call28, i32* %ret, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call30 = call i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %21) #4
  store i32 %call30, i32* %ret, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call32 = call i32 @mbedtls_ssl_parse_finished(%struct.mbedtls_ssl_context* noundef %22) #4
  store i32 %call32, i32* %ret, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3721, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #4
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 1
  store i32 15, i32* %state34, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_wrapup(%struct.mbedtls_ssl_context* noundef %25) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 1
  %28 = load i32, i32* %state36, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3730, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 noundef %28) #4
  store i32 -28928, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb6, %sw.bb
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local i32 @mbedtls_ssl_write_client_hello(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_hello(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  %ext_len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %comp = alloca i8, align 1
  %renegotiation_info_seen = alloca i32, align 4
  %handshake_failure = alloca i32, align 4
  %suite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ext_id = alloca i32, align 4
  %ext_size = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %renegotiation_info_seen, align 4
  store i32 0, i32* %handshake_failure, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1221, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0)) #4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1226, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 noundef %3) #4
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 29
  %6 = load i8*, i8** %in_msg, align 8
  store i8* %6, i8** %buf, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 31
  %8 = load i32, i32* %in_msgtype, align 8
  %cmp1 = icmp ne i32 %8, 22
  br i1 %cmp1, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 2
  %10 = load i32, i32* %renego_status, align 4
  %cmp3 = icmp eq i32 %10, 1
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.then2
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 3
  %12 = load i32, i32* %renego_records_seen, align 8
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %renego_records_seen, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %renego_max_records = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 52
  %15 = load i32, i32* %renego_max_records, align 4
  %cmp5 = icmp sge i32 %15, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 3
  %17 = load i32, i32* %renego_records_seen6, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf7, align 8
  %renego_max_records8 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %19, i32 0, i32 52
  %20 = load i32, i32* %renego_max_records8, align 4
  %cmp9 = icmp sgt i32 %17, %20
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1243, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0)) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.then4
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1248, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0)) #4
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 40
  store i32 1, i32* %keep_current_message, align 4
  store i32 -27392, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then2
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1255, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call13 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %25, i8 noundef zeroext 2, i8 noundef zeroext 10) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf15, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %27, i32 0, i32 3
  %28 = load i8, i8* %transport, align 1
  %conv = zext i8 %28 to i32
  %cmp16 = icmp eq i32 %conv, 1
  br i1 %cmp16, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end14
  %29 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %30 to i32
  %cmp20 = icmp eq i32 %conv19, 3
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then18
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0)) #4
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %32, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1269, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call23 = call i32 @ssl_parse_hello_verify_request(%struct.mbedtls_ssl_context* noundef %33) #4
  store i32 %call23, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then18
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 16
  %35 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %35, i32 0, i32 29
  %36 = load i8*, i8** %cookie, align 8
  call void @free(i8* noundef %36) #5
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 16
  %38 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake24, align 8
  %cookie25 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %38, i32 0, i32 29
  store i8* null, i8** %cookie25, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 16
  %40 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake26, align 8
  %verify_cookie_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %40, i32 0, i32 30
  store i8 0, i8* %verify_cookie_len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end14
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 38
  %42 = load i64, i64* %in_hslen, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call29 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %43) #4
  %add = add i64 38, %call29
  %cmp30 = icmp ult i64 %42, %add
  br i1 %cmp30, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %44 = load i8*, i8** %buf, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %45 to i32
  %cmp34 = icmp ne i32 %conv33, 2
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %lor.lhs.false, %if.end28
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %46, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1285, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call37 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %47, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %lor.lhs.false
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call39 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %48) #4
  %49 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %call39
  store i8* %add.ptr, i8** %buf, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %51 = load i8*, i8** %buf, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %50, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1304, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* noundef %51, i64 noundef 2) #4
  %52 = load i8*, i8** %buf, align 8
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 0
  %54 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf40, align 8
  %transport41 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %54, i32 0, i32 3
  %55 = load i8, i8* %transport41, align 1
  %conv42 = zext i8 %55 to i32
  %call43 = call zeroext i16 @mbedtls_ssl_read_version(i8* noundef %52, i32 noundef %conv42) #4
  %conv44 = zext i16 %call43 to i32
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %56, i32 0, i32 4
  store i32 %conv44, i32* %tls_version, align 4
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version45 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 4
  %58 = load i32, i32* %tls_version45, align 4
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 15
  %60 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %tls_version46 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %60, i32 0, i32 2
  store i32 %58, i32* %tls_version46, align 4
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %61, i32 0, i32 4
  %62 = load i32, i32* %tls_version47, align 4
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 0
  %64 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf48, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %64, i32 0, i32 1
  %65 = load i32, i32* %min_tls_version, align 4
  %cmp49 = icmp ult i32 %62, %65
  br i1 %cmp49, label %if.then56, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end38
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 4
  %67 = load i32, i32* %tls_version52, align 4
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf53 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 0
  %69 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf53, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %69, i32 0, i32 0
  %70 = load i32, i32* %max_tls_version, align 8
  %cmp54 = icmp ugt i32 %67, %70
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %lor.lhs.false51, %if.end38
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 0
  %73 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf57, align 8
  %min_tls_version58 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %73, i32 0, i32 1
  %74 = load i32, i32* %min_tls_version58, align 4
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version59 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %75, i32 0, i32 4
  %76 = load i32, i32* %tls_version59, align 4
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %77, i32 0, i32 0
  %78 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf60, align 8
  %max_tls_version61 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %78, i32 0, i32 0
  %79 = load i32, i32* %max_tls_version61, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %71, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1315, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0), i32 noundef %74, i32 noundef %76, i32 noundef %79) #4
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call62 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %80, i8 noundef zeroext 2, i8 noundef zeroext 70) #4
  store i32 -28288, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %lor.lhs.false51
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %82 = load i8*, i8** %buf, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %83 to i64
  %shl = shl i64 %conv65, 24
  %84 = load i8*, i8** %buf, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %84, i64 3
  %85 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %85 to i64
  %shl68 = shl i64 %conv67, 16
  %or = or i64 %shl, %shl68
  %86 = load i8*, i8** %buf, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %86, i64 4
  %87 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %87 to i64
  %shl71 = shl i64 %conv70, 8
  %or72 = or i64 %or, %shl71
  %88 = load i8*, i8** %buf, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %88, i64 5
  %89 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %89 to i64
  %or75 = or i64 %or72, %conv74
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %81, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1327, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i64 noundef %or75) #4
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %90, i32 0, i32 16
  %91 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake76, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %91, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %add.ptr77 = getelementptr inbounds i8, i8* %arraydecay, i64 32
  %92 = load i8*, i8** %buf, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %92, i64 2
  %call79 = call i8* @memcpy(i8* noundef %add.ptr77, i8* noundef %add.ptr78, i64 noundef 32) #5
  %93 = load i8*, i8** %buf, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %93, i64 34
  %94 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %94 to i64
  store i64 %conv81, i64* %n, align 8
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %96 = load i8*, i8** %buf, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %96, i64 2
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %95, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1333, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* noundef %add.ptr82, i64 noundef 32) #4
  %97 = load i64, i64* %n, align 8
  %cmp83 = icmp ugt i64 %97, 32
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end63
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %98, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1337, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call86 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %99, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end63
  %100 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen88 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %100, i32 0, i32 38
  %101 = load i64, i64* %in_hslen88, align 8
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call89 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %102) #4
  %add90 = add i64 %call89, 39
  %103 = load i64, i64* %n, align 8
  %add91 = add i64 %add90, %103
  %cmp92 = icmp ugt i64 %101, %add91
  br i1 %cmp92, label %if.then94, label %if.else120

if.then94:                                        ; preds = %if.end87
  %104 = load i8*, i8** %buf, align 8
  %105 = load i64, i64* %n, align 8
  %add95 = add i64 38, %105
  %arrayidx96 = getelementptr inbounds i8, i8* %104, i64 %add95
  %106 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %106 to i32
  %shl98 = shl i32 %conv97, 8
  %107 = load i8*, i8** %buf, align 8
  %108 = load i64, i64* %n, align 8
  %add99 = add i64 39, %108
  %arrayidx100 = getelementptr inbounds i8, i8* %107, i64 %add99
  %109 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %109 to i32
  %or102 = or i32 %shl98, %conv101
  %conv103 = sext i32 %or102 to i64
  store i64 %conv103, i64* %ext_len, align 8
  %110 = load i64, i64* %ext_len, align 8
  %cmp104 = icmp ugt i64 %110, 0
  br i1 %cmp104, label %land.lhs.true106, label %lor.lhs.false109

land.lhs.true106:                                 ; preds = %if.then94
  %111 = load i64, i64* %ext_len, align 8
  %cmp107 = icmp ult i64 %111, 4
  br i1 %cmp107, label %if.then117, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true106, %if.then94
  %112 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen110 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %112, i32 0, i32 38
  %113 = load i64, i64* %in_hslen110, align 8
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call111 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %114) #4
  %add112 = add i64 %call111, 40
  %115 = load i64, i64* %n, align 8
  %add113 = add i64 %add112, %115
  %116 = load i64, i64* %ext_len, align 8
  %add114 = add i64 %add113, %116
  %cmp115 = icmp ne i64 %113, %add114
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %lor.lhs.false109, %land.lhs.true106
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %117, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1351, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %118 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call118 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %118, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %lor.lhs.false109
  br label %if.end131

if.else120:                                       ; preds = %if.end87
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen121 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %119, i32 0, i32 38
  %120 = load i64, i64* %in_hslen121, align 8
  %121 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call122 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %121) #4
  %add123 = add i64 %call122, 38
  %122 = load i64, i64* %n, align 8
  %add124 = add i64 %add123, %122
  %cmp125 = icmp eq i64 %120, %add124
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.else120
  store i64 0, i64* %ext_len, align 8
  br label %if.end130

if.else128:                                       ; preds = %if.else120
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %123, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1365, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %124 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call129 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %124, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.then127
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end119
  %125 = load i8*, i8** %buf, align 8
  %126 = load i64, i64* %n, align 8
  %add132 = add i64 35, %126
  %arrayidx133 = getelementptr inbounds i8, i8* %125, i64 %add132
  %127 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %127 to i32
  %shl135 = shl i32 %conv134, 8
  %128 = load i8*, i8** %buf, align 8
  %129 = load i64, i64* %n, align 8
  %add136 = add i64 36, %129
  %arrayidx137 = getelementptr inbounds i8, i8* %128, i64 %add136
  %130 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %130 to i32
  %or139 = or i32 %shl135, %conv138
  store i32 %or139, i32* %i, align 4
  %131 = load i8*, i8** %buf, align 8
  %132 = load i64, i64* %n, align 8
  %add140 = add i64 37, %132
  %arrayidx141 = getelementptr inbounds i8, i8* %131, i64 %add140
  %133 = load i8, i8* %arrayidx141, align 1
  store i8 %133, i8* %comp, align 1
  %134 = load i8, i8* %comp, align 1
  %conv142 = zext i8 %134 to i32
  %cmp143 = icmp ne i32 %conv142, 0
  br i1 %cmp143, label %if.then145, label %if.end148

if.then145:                                       ; preds = %if.end131
  %135 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %136 = load i8, i8* %comp, align 1
  %conv146 = zext i8 %136 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %135, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1382, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv146) #4
  %137 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call147 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %137, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end148:                                        ; preds = %if.end131
  %138 = load i32, i32* %i, align 4
  %call149 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %138) #4
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake150 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %139, i32 0, i32 16
  %140 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake150, align 8
  %ciphersuite_info = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %140, i32 0, i32 11
  store %struct.mbedtls_ssl_ciphersuite_t* %call149, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %141 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake151 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %141, i32 0, i32 16
  %142 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake151, align 8
  %ciphersuite_info152 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %142, i32 0, i32 11
  %143 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info152, align 8
  %cmp153 = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %143, null
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end148
  %144 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %145 = load i32, i32* %i, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %144, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1397, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i32 noundef %145) #4
  %146 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call156 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %146, i8 noundef zeroext 2, i8 noundef zeroext 80) #4
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.end148
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %148 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake158 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %148, i32 0, i32 16
  %149 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake158, align 8
  %ciphersuite_info159 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %149, i32 0, i32 11
  %150 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info159, align 8
  call void @mbedtls_ssl_optimize_checksum(%struct.mbedtls_ssl_context* noundef %147, %struct.mbedtls_ssl_ciphersuite_t* noundef %150) #4
  %151 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %152 = load i64, i64* %n, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %151, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1405, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i64 noundef %152) #4
  %153 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %154 = load i8*, i8** %buf, align 8
  %add.ptr160 = getelementptr inbounds i8, i8* %154, i64 35
  %155 = load i64, i64* %n, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %153, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1406, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* noundef %add.ptr160, i64 noundef %155) #4
  %156 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake161 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %156, i32 0, i32 16
  %157 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake161, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %157, i32 0, i32 0
  %158 = load i8, i8* %resume, align 8
  %conv162 = zext i8 %158 to i32
  %cmp163 = icmp eq i32 %conv162, 0
  br i1 %cmp163, label %if.then192, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end157
  %159 = load i64, i64* %n, align 8
  %cmp166 = icmp eq i64 %159, 0
  br i1 %cmp166, label %if.then192, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false165
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status169 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %160, i32 0, i32 2
  %161 = load i32, i32* %renego_status169, align 4
  %cmp170 = icmp ne i32 %161, 0
  br i1 %cmp170, label %if.then192, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false168
  %162 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate173 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %162, i32 0, i32 15
  %163 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate173, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %163, i32 0, i32 4
  %164 = load i32, i32* %ciphersuite, align 8
  %165 = load i32, i32* %i, align 4
  %cmp174 = icmp ne i32 %164, %165
  br i1 %cmp174, label %if.then192, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false172
  %166 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate177 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %166, i32 0, i32 15
  %167 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate177, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %167, i32 0, i32 5
  %168 = load i32, i32* %compression, align 4
  %169 = load i8, i8* %comp, align 1
  %conv178 = zext i8 %169 to i32
  %cmp179 = icmp ne i32 %168, %conv178
  br i1 %cmp179, label %if.then192, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false176
  %170 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate182 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %170, i32 0, i32 15
  %171 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate182, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %171, i32 0, i32 6
  %172 = load i64, i64* %id_len, align 8
  %173 = load i64, i64* %n, align 8
  %cmp183 = icmp ne i64 %172, %173
  br i1 %cmp183, label %if.then192, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false181
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate186 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %174, i32 0, i32 15
  %175 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate186, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %175, i32 0, i32 7
  %arraydecay187 = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %176 = load i8*, i8** %buf, align 8
  %add.ptr188 = getelementptr inbounds i8, i8* %176, i64 35
  %177 = load i64, i64* %n, align 8
  %call189 = call i32 @memcmp(i8* noundef %arraydecay187, i8* noundef %add.ptr188, i64 noundef %177) #6
  %cmp190 = icmp ne i32 %call189, 0
  br i1 %cmp190, label %if.then192, label %if.else210

if.then192:                                       ; preds = %lor.lhs.false185, %lor.lhs.false181, %lor.lhs.false176, %lor.lhs.false172, %lor.lhs.false168, %lor.lhs.false165, %if.end157
  %178 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %178, i32 0, i32 1
  %179 = load i32, i32* %state, align 8
  %inc193 = add nsw i32 %179, 1
  store i32 %inc193, i32* %state, align 8
  %180 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake194 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %180, i32 0, i32 16
  %181 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake194, align 8
  %resume195 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %181, i32 0, i32 0
  store i8 0, i8* %resume195, align 8
  %call196 = call i64 @time(i64* noundef null) #5
  %182 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate197 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %182, i32 0, i32 15
  %183 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate197, align 8
  %start = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %183, i32 0, i32 3
  store i64 %call196, i64* %start, align 8
  %184 = load i32, i32* %i, align 4
  %185 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate198 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %185, i32 0, i32 15
  %186 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate198, align 8
  %ciphersuite199 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %186, i32 0, i32 4
  store i32 %184, i32* %ciphersuite199, align 8
  %187 = load i8, i8* %comp, align 1
  %conv200 = zext i8 %187 to i32
  %188 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate201 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %188, i32 0, i32 15
  %189 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate201, align 8
  %compression202 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %189, i32 0, i32 5
  store i32 %conv200, i32* %compression202, align 4
  %190 = load i64, i64* %n, align 8
  %191 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate203 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %191, i32 0, i32 15
  %192 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate203, align 8
  %id_len204 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %192, i32 0, i32 6
  store i64 %190, i64* %id_len204, align 8
  %193 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate205 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %193, i32 0, i32 15
  %194 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate205, align 8
  %id206 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %194, i32 0, i32 7
  %arraydecay207 = getelementptr inbounds [32 x i8], [32 x i8]* %id206, i64 0, i64 0
  %195 = load i8*, i8** %buf, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %195, i64 35
  %196 = load i64, i64* %n, align 8
  %call209 = call i8* @memcpy(i8* noundef %arraydecay207, i8* noundef %add.ptr208, i64 noundef %196) #5
  br label %if.end212

if.else210:                                       ; preds = %lor.lhs.false185
  %197 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state211 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %197, i32 0, i32 1
  store i32 12, i32* %state211, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.else210, %if.then192
  %198 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %199 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake213 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %199, i32 0, i32 16
  %200 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake213, align 8
  %resume214 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %200, i32 0, i32 0
  %201 = load i8, i8* %resume214, align 8
  %conv215 = zext i8 %201 to i32
  %tobool = icmp ne i32 %conv215, 0
  %202 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %198, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1436, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i8* noundef %cond) #4
  %203 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %204 = load i32, i32* %i, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %203, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1438, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i32 noundef %204) #4
  %205 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %206 = load i8*, i8** %buf, align 8
  %207 = load i64, i64* %n, align 8
  %add216 = add i64 37, %207
  %arrayidx217 = getelementptr inbounds i8, i8* %206, i64 %add216
  %208 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %208 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %205, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1440, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv218) #4
  store i32 0, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end212, %if.end236
  %209 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf219 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %209, i32 0, i32 0
  %210 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf219, align 8
  %ciphersuite_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %210, i32 0, i32 14
  %211 = load i32*, i32** %ciphersuite_list, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom = sext i32 %212 to i64
  %arrayidx220 = getelementptr inbounds i32, i32* %211, i64 %idxprom
  %213 = load i32, i32* %arrayidx220, align 4
  %cmp221 = icmp eq i32 %213, 0
  br i1 %cmp221, label %if.then223, label %if.end225

if.then223:                                       ; preds = %while.body
  %214 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %214, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1450, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %215 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call224 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %215, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end225:                                        ; preds = %while.body
  %216 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf226 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %216, i32 0, i32 0
  %217 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf226, align 8
  %ciphersuite_list227 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %217, i32 0, i32 14
  %218 = load i32*, i32** %ciphersuite_list227, align 8
  %219 = load i32, i32* %i, align 4
  %inc228 = add nsw i32 %219, 1
  store i32 %inc228, i32* %i, align 4
  %idxprom229 = sext i32 %219 to i64
  %arrayidx230 = getelementptr inbounds i32, i32* %218, i64 %idxprom229
  %220 = load i32, i32* %arrayidx230, align 4
  %221 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate231 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %221, i32 0, i32 15
  %222 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate231, align 8
  %ciphersuite232 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %222, i32 0, i32 4
  %223 = load i32, i32* %ciphersuite232, align 8
  %cmp233 = icmp eq i32 %220, %223
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end225
  br label %while.end

if.end236:                                        ; preds = %if.end225
  br label %while.body

while.end:                                        ; preds = %if.then235
  %224 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate237 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %224, i32 0, i32 15
  %225 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate237, align 8
  %ciphersuite238 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %225, i32 0, i32 4
  %226 = load i32, i32* %ciphersuite238, align 8
  %call239 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %226) #4
  store %struct.mbedtls_ssl_ciphersuite_t* %call239, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %227 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %228 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %229 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version240 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %229, i32 0, i32 4
  %230 = load i32, i32* %tls_version240, align 4
  %231 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version241 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %231, i32 0, i32 4
  %232 = load i32, i32* %tls_version241, align 4
  %call242 = call i32 @mbedtls_ssl_validate_ciphersuite(%struct.mbedtls_ssl_context* noundef %227, %struct.mbedtls_ssl_ciphersuite_t* noundef %228, i32 noundef %230, i32 noundef %232) #4
  %cmp243 = icmp ne i32 %call242, 0
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %while.end
  %233 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %233, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1470, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %234 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call246 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %234, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end247:                                        ; preds = %while.end
  %235 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %236 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %236, i32 0, i32 1
  %237 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %235, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1479, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i8* noundef %237) #4
  %238 = load i8, i8* %comp, align 1
  %conv248 = zext i8 %238 to i32
  %cmp249 = icmp ne i32 %conv248, 0
  br i1 %cmp249, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end247
  %239 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %239, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1492, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %240 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call252 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %240, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end253:                                        ; preds = %if.end247
  %241 = load i8, i8* %comp, align 1
  %conv254 = zext i8 %241 to i32
  %242 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate255 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %242, i32 0, i32 15
  %243 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate255, align 8
  %compression256 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %243, i32 0, i32 5
  store i32 %conv254, i32* %compression256, align 4
  %244 = load i8*, i8** %buf, align 8
  %add.ptr257 = getelementptr inbounds i8, i8* %244, i64 40
  %245 = load i64, i64* %n, align 8
  %add.ptr258 = getelementptr inbounds i8, i8* %add.ptr257, i64 %245
  store i8* %add.ptr258, i8** %ext, align 8
  %246 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %247 = load i64, i64* %ext_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %246, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1504, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i64 noundef %247) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end345, %if.end253
  %248 = load i64, i64* %ext_len, align 8
  %tobool259 = icmp ne i64 %248, 0
  br i1 %tobool259, label %while.body260, label %while.end346

while.body260:                                    ; preds = %while.cond
  %249 = load i8*, i8** %ext, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %249, i64 0
  %250 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %250 to i32
  %shl263 = shl i32 %conv262, 8
  %251 = load i8*, i8** %ext, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %251, i64 1
  %252 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %252 to i32
  %or266 = or i32 %shl263, %conv265
  store i32 %or266, i32* %ext_id, align 4
  %253 = load i8*, i8** %ext, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %253, i64 2
  %254 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %254 to i32
  %shl269 = shl i32 %conv268, 8
  %255 = load i8*, i8** %ext, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %255, i64 3
  %256 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %256 to i32
  %or272 = or i32 %shl269, %conv271
  store i32 %or272, i32* %ext_size, align 4
  %257 = load i32, i32* %ext_size, align 4
  %add273 = add i32 %257, 4
  %conv274 = zext i32 %add273 to i64
  %258 = load i64, i64* %ext_len, align 8
  %cmp275 = icmp ugt i64 %conv274, %258
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %while.body260
  %259 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %259, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1515, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %260 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call278 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %260, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end279:                                        ; preds = %while.body260
  %261 = load i32, i32* %ext_id, align 4
  switch i32 %261, label %sw.default [
    i32 65281, label %sw.bb
    i32 1, label %sw.bb287
    i32 22, label %sw.bb295
    i32 23, label %sw.bb303
    i32 35, label %sw.bb311
    i32 11, label %sw.bb319
    i32 16, label %sw.bb327
  ]

sw.bb:                                            ; preds = %if.end279
  %262 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %262, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1525, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #4
  store i32 1, i32* %renegotiation_info_seen, align 4
  %263 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %264 = load i8*, i8** %ext, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %264, i64 4
  %265 = load i32, i32* %ext_size, align 4
  %conv281 = zext i32 %265 to i64
  %call282 = call i32 @ssl_parse_renegotiation_info(%struct.mbedtls_ssl_context* noundef %263, i8* noundef %add.ptr280, i64 noundef %conv281) #4
  store i32 %call282, i32* %ret, align 4
  %cmp283 = icmp ne i32 %call282, 0
  br i1 %cmp283, label %if.then285, label %if.end286

if.then285:                                       ; preds = %sw.bb
  %266 = load i32, i32* %ret, align 4
  store i32 %266, i32* %retval, align 4
  br label %return

if.end286:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb287:                                         ; preds = %if.end279
  %267 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %267, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1539, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0)) #4
  %268 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %269 = load i8*, i8** %ext, align 8
  %add.ptr288 = getelementptr inbounds i8, i8* %269, i64 4
  %270 = load i32, i32* %ext_size, align 4
  %conv289 = zext i32 %270 to i64
  %call290 = call i32 @ssl_parse_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %268, i8* noundef %add.ptr288, i64 noundef %conv289) #4
  store i32 %call290, i32* %ret, align 4
  %cmp291 = icmp ne i32 %call290, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %sw.bb287
  %271 = load i32, i32* %ret, align 4
  store i32 %271, i32* %retval, align 4
  br label %return

if.end294:                                        ; preds = %sw.bb287
  br label %sw.epilog

sw.bb295:                                         ; preds = %if.end279
  %272 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %272, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1566, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0)) #4
  %273 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %274 = load i8*, i8** %ext, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %274, i64 4
  %275 = load i32, i32* %ext_size, align 4
  %conv297 = zext i32 %275 to i64
  %call298 = call i32 @ssl_parse_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %273, i8* noundef %add.ptr296, i64 noundef %conv297) #4
  store i32 %call298, i32* %ret, align 4
  %cmp299 = icmp ne i32 %call298, 0
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %sw.bb295
  %276 = load i32, i32* %ret, align 4
  store i32 %276, i32* %retval, align 4
  br label %return

if.end302:                                        ; preds = %sw.bb295
  br label %sw.epilog

sw.bb303:                                         ; preds = %if.end279
  %277 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %277, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1580, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0)) #4
  %278 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %279 = load i8*, i8** %ext, align 8
  %add.ptr304 = getelementptr inbounds i8, i8* %279, i64 4
  %280 = load i32, i32* %ext_size, align 4
  %conv305 = zext i32 %280 to i64
  %call306 = call i32 @ssl_parse_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %278, i8* noundef %add.ptr304, i64 noundef %conv305) #4
  store i32 %call306, i32* %ret, align 4
  %cmp307 = icmp ne i32 %call306, 0
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %sw.bb303
  %281 = load i32, i32* %ret, align 4
  store i32 %281, i32* %retval, align 4
  br label %return

if.end310:                                        ; preds = %sw.bb303
  br label %sw.epilog

sw.bb311:                                         ; preds = %if.end279
  %282 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %282, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1593, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0)) #4
  %283 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %284 = load i8*, i8** %ext, align 8
  %add.ptr312 = getelementptr inbounds i8, i8* %284, i64 4
  %285 = load i32, i32* %ext_size, align 4
  %conv313 = zext i32 %285 to i64
  %call314 = call i32 @ssl_parse_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %283, i8* noundef %add.ptr312, i64 noundef %conv313) #4
  store i32 %call314, i32* %ret, align 4
  %cmp315 = icmp ne i32 %call314, 0
  br i1 %cmp315, label %if.then317, label %if.end318

if.then317:                                       ; preds = %sw.bb311
  %286 = load i32, i32* %ret, align 4
  store i32 %286, i32* %retval, align 4
  br label %return

if.end318:                                        ; preds = %sw.bb311
  br label %sw.epilog

sw.bb319:                                         ; preds = %if.end279
  %287 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %287, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1608, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #4
  %288 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %289 = load i8*, i8** %ext, align 8
  %add.ptr320 = getelementptr inbounds i8, i8* %289, i64 4
  %290 = load i32, i32* %ext_size, align 4
  %conv321 = zext i32 %290 to i64
  %call322 = call i32 @ssl_parse_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %288, i8* noundef %add.ptr320, i64 noundef %conv321) #4
  store i32 %call322, i32* %ret, align 4
  %cmp323 = icmp ne i32 %call322, 0
  br i1 %cmp323, label %if.then325, label %if.end326

if.then325:                                       ; preds = %sw.bb319
  %291 = load i32, i32* %ret, align 4
  store i32 %291, i32* %retval, align 4
  br label %return

if.end326:                                        ; preds = %sw.bb319
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.end279
  %292 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %292, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1635, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0)) #4
  %293 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %294 = load i8*, i8** %ext, align 8
  %add.ptr328 = getelementptr inbounds i8, i8* %294, i64 4
  %295 = load i32, i32* %ext_size, align 4
  %conv329 = zext i32 %295 to i64
  %call330 = call i32 @ssl_parse_alpn_ext(%struct.mbedtls_ssl_context* noundef %293, i8* noundef %add.ptr328, i64 noundef %conv329) #4
  store i32 %call330, i32* %ret, align 4
  %cmp331 = icmp ne i32 %call330, 0
  br i1 %cmp331, label %if.then333, label %if.end334

if.then333:                                       ; preds = %sw.bb327
  %296 = load i32, i32* %ret, align 4
  store i32 %296, i32* %retval, align 4
  br label %return

if.end334:                                        ; preds = %sw.bb327
  br label %sw.epilog

sw.default:                                       ; preds = %if.end279
  %297 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %298 = load i32, i32* %ext_id, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %297, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1655, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 noundef %298) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end334, %if.end326, %if.end318, %if.end310, %if.end302, %if.end294, %if.end286
  %299 = load i32, i32* %ext_size, align 4
  %add335 = add i32 4, %299
  %conv336 = zext i32 %add335 to i64
  %300 = load i64, i64* %ext_len, align 8
  %sub = sub i64 %300, %conv336
  store i64 %sub, i64* %ext_len, align 8
  %301 = load i32, i32* %ext_size, align 4
  %add337 = add i32 4, %301
  %302 = load i8*, i8** %ext, align 8
  %idx.ext = zext i32 %add337 to i64
  %add.ptr338 = getelementptr inbounds i8, i8* %302, i64 %idx.ext
  store i8* %add.ptr338, i8** %ext, align 8
  %303 = load i64, i64* %ext_len, align 8
  %cmp339 = icmp ugt i64 %303, 0
  br i1 %cmp339, label %land.lhs.true341, label %if.end345

land.lhs.true341:                                 ; preds = %sw.epilog
  %304 = load i64, i64* %ext_len, align 8
  %cmp342 = icmp ult i64 %304, 4
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %land.lhs.true341
  %305 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %305, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1663, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end345:                                        ; preds = %land.lhs.true341, %sw.epilog
  br label %while.cond, !llvm.loop !4

while.end346:                                     ; preds = %while.cond
  %306 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake347 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %306, i32 0, i32 16
  %307 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake347, align 8
  %resume348 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %307, i32 0, i32 0
  %308 = load i8, i8* %resume348, align 8
  %tobool349 = icmp ne i8 %308, 0
  br i1 %tobool349, label %if.then350, label %if.end357

if.then350:                                       ; preds = %while.end346
  %309 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call351 = call i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef %309) #4
  store i32 %call351, i32* %ret, align 4
  %cmp352 = icmp ne i32 %call351, 0
  br i1 %cmp352, label %if.then354, label %if.end356

if.then354:                                       ; preds = %if.then350
  %310 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %311 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %310, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1677, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i32 noundef %311) #4
  %312 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call355 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %312, i8 noundef zeroext 2, i8 noundef zeroext 80) #4
  %313 = load i32, i32* %ret, align 4
  store i32 %313, i32* %retval, align 4
  br label %return

if.end356:                                        ; preds = %if.then350
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %while.end346
  %314 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %314, i32 0, i32 60
  %315 = load i32, i32* %secure_renegotiation, align 8
  %cmp358 = icmp eq i32 %315, 0
  br i1 %cmp358, label %land.lhs.true360, label %if.else366

land.lhs.true360:                                 ; preds = %if.end357
  %316 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf361 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %316, i32 0, i32 0
  %317 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf361, align 8
  %allow_legacy_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %317, i32 0, i32 5
  %318 = load i8, i8* %allow_legacy_renegotiation, align 1
  %conv362 = zext i8 %318 to i32
  %cmp363 = icmp eq i32 %conv362, 2
  br i1 %cmp363, label %if.then365, label %if.else366

if.then365:                                       ; preds = %land.lhs.true360
  %319 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %319, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1694, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i64 0, i64 0)) #4
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end408

if.else366:                                       ; preds = %land.lhs.true360, %if.end357
  %320 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status367 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %320, i32 0, i32 2
  %321 = load i32, i32* %renego_status367, align 4
  %cmp368 = icmp eq i32 %321, 1
  br i1 %cmp368, label %land.lhs.true370, label %if.else378

land.lhs.true370:                                 ; preds = %if.else366
  %322 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation371 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %322, i32 0, i32 60
  %323 = load i32, i32* %secure_renegotiation371, align 8
  %cmp372 = icmp eq i32 %323, 1
  br i1 %cmp372, label %land.lhs.true374, label %if.else378

land.lhs.true374:                                 ; preds = %land.lhs.true370
  %324 = load i32, i32* %renegotiation_info_seen, align 4
  %cmp375 = icmp eq i32 %324, 0
  br i1 %cmp375, label %if.then377, label %if.else378

if.then377:                                       ; preds = %land.lhs.true374
  %325 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %325, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1703, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0)) #4
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end407

if.else378:                                       ; preds = %land.lhs.true374, %land.lhs.true370, %if.else366
  %326 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status379 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %326, i32 0, i32 2
  %327 = load i32, i32* %renego_status379, align 4
  %cmp380 = icmp eq i32 %327, 1
  br i1 %cmp380, label %land.lhs.true382, label %if.else393

land.lhs.true382:                                 ; preds = %if.else378
  %328 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation383 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %328, i32 0, i32 60
  %329 = load i32, i32* %secure_renegotiation383, align 8
  %cmp384 = icmp eq i32 %329, 0
  br i1 %cmp384, label %land.lhs.true386, label %if.else393

land.lhs.true386:                                 ; preds = %land.lhs.true382
  %330 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf387 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %330, i32 0, i32 0
  %331 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf387, align 8
  %allow_legacy_renegotiation388 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %331, i32 0, i32 5
  %332 = load i8, i8* %allow_legacy_renegotiation388, align 1
  %conv389 = zext i8 %332 to i32
  %cmp390 = icmp eq i32 %conv389, 0
  br i1 %cmp390, label %if.then392, label %if.else393

if.then392:                                       ; preds = %land.lhs.true386
  %333 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %333, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1711, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i64 0, i64 0)) #4
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end406

if.else393:                                       ; preds = %land.lhs.true386, %land.lhs.true382, %if.else378
  %334 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status394 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %334, i32 0, i32 2
  %335 = load i32, i32* %renego_status394, align 4
  %cmp395 = icmp eq i32 %335, 1
  br i1 %cmp395, label %land.lhs.true397, label %if.end405

land.lhs.true397:                                 ; preds = %if.else393
  %336 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation398 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %336, i32 0, i32 60
  %337 = load i32, i32* %secure_renegotiation398, align 8
  %cmp399 = icmp eq i32 %337, 0
  br i1 %cmp399, label %land.lhs.true401, label %if.end405

land.lhs.true401:                                 ; preds = %land.lhs.true397
  %338 = load i32, i32* %renegotiation_info_seen, align 4
  %cmp402 = icmp eq i32 %338, 1
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %land.lhs.true401
  %339 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %339, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1719, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i64 0, i64 0)) #4
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then404, %land.lhs.true401, %land.lhs.true397, %if.else393
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.then392
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %if.then377
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.then365
  %340 = load i32, i32* %handshake_failure, align 4
  %cmp409 = icmp eq i32 %340, 1
  br i1 %cmp409, label %if.then411, label %if.end413

if.then411:                                       ; preds = %if.end408
  %341 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call412 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %341, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end413:                                        ; preds = %if.end408
  %342 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %342, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1733, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end413, %if.then411, %if.then354, %if.then344, %if.then333, %if.then325, %if.then317, %if.then309, %if.then301, %if.then293, %if.then285, %if.then277, %if.then251, %if.then245, %if.then223, %if.then155, %if.then145, %if.else128, %if.then117, %if.then85, %if.then56, %if.then36, %if.then22, %if.end12, %if.end11, %if.then10, %if.then
  %343 = load i32, i32* %retval, align 4
  ret i32 %343
}

declare dso_local i32 @mbedtls_ssl_parse_certificate(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_key_exchange(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %sig_len = alloca i64, align 8
  %hashlen = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  %md_alg = alloca i32, align 4
  %pk_alg = alloca i32, align 4
  %params = alloca i8*, align 8
  %params_len = alloca i64, align 8
  %rs_ctx = alloca i8*, align 8
  %peer_pk = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  store i8* null, i8** %p, align 8
  store i8* null, i8** %end, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2208, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i64 0, i64 0)) #4
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %4, i32 0, i32 4
  %5 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2213, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.70, i64 0, i64 0)) #4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 1
  %8 = load i32, i32* %state, align 8
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %end, align 8
  %11 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange3 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %11, i32 0, i32 4
  %12 = load i8, i8* %key_exchange3, align 2
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 9
  br i1 %cmp5, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange7 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %13, i32 0, i32 4
  %14 = load i8, i8* %key_exchange7, align 2
  %conv8 = zext i8 %14 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_get_ecdh_params_from_cert(%struct.mbedtls_ssl_context* noundef %15) #4
  store i32 %call, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2228, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0), i32 noundef %17) #4
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %18, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then11
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2236, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.70, i64 0, i64 0)) #4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 1
  %22 = load i32, i32* %state17, align 8
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %state17, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %end, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call20 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1) #4
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2255, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 noundef %27) #4
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 31
  %30 = load i32, i32* %in_msgtype, align 8
  %cmp25 = icmp ne i32 %30, 22
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2261, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call28 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %32, i8 noundef zeroext 2, i8 noundef zeroext 10) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 29
  %34 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx, align 1
  %conv30 = zext i8 %35 to i32
  %cmp31 = icmp ne i32 %conv30, 12
  br i1 %cmp31, label %if.then33, label %if.end46

if.then33:                                        ; preds = %if.end29
  %36 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange34 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %36, i32 0, i32 4
  %37 = load i8, i8* %key_exchange34, align 2
  %conv35 = zext i8 %37 to i32
  %cmp36 = icmp eq i32 %conv35, 5
  br i1 %cmp36, label %if.then43, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then33
  %38 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange39 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %38, i32 0, i32 4
  %39 = load i8, i8* %key_exchange39, align 2
  %conv40 = zext i8 %39 to i32
  %cmp41 = icmp eq i32 %conv40, 7
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false38, %if.then33
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 40
  store i32 1, i32* %keep_current_message, align 4
  br label %exit

if.end44:                                         ; preds = %lor.lhs.false38
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2285, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.73, i64 0, i64 0)) #4
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call45 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %42, i8 noundef zeroext 2, i8 noundef zeroext 10) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end29
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 29
  %44 = load i8*, i8** %in_msg47, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call48 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %45) #4
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %call48
  store i8* %add.ptr, i8** %p, align 8
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 29
  %47 = load i8*, i8** %in_msg49, align 8
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 38
  %49 = load i64, i64* %in_hslen, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %add.ptr50, i8** %end, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %51 = load i8*, i8** %p, align 8
  %52 = load i8*, i8** %end, align 8
  %53 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %50, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2302, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i64 0, i64 0), i8* noundef %51, i64 noundef %sub.ptr.sub) #4
  %54 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange51 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %54, i32 0, i32 4
  %55 = load i8, i8* %key_exchange51, align 2
  %conv52 = zext i8 %55 to i32
  %cmp53 = icmp eq i32 %conv52, 5
  br i1 %cmp53, label %if.then70, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end46
  %56 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange56 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %56, i32 0, i32 4
  %57 = load i8, i8* %key_exchange56, align 2
  %conv57 = zext i8 %57 to i32
  %cmp58 = icmp eq i32 %conv57, 7
  br i1 %cmp58, label %if.then70, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false55
  %58 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange61 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %58, i32 0, i32 4
  %59 = load i8, i8* %key_exchange61, align 2
  %conv62 = zext i8 %59 to i32
  %cmp63 = icmp eq i32 %conv62, 6
  br i1 %cmp63, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false60
  %60 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange66 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %60, i32 0, i32 4
  %61 = load i8, i8* %key_exchange66, align 2
  %conv67 = zext i8 %61 to i32
  %cmp68 = icmp eq i32 %conv67, 8
  br i1 %cmp68, label %if.then70, label %if.end77

if.then70:                                        ; preds = %lor.lhs.false65, %lor.lhs.false60, %lor.lhs.false55, %if.end46
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %63 = load i8*, i8** %end, align 8
  %call71 = call i32 @ssl_parse_server_psk_hint(%struct.mbedtls_ssl_context* noundef %62, i8** noundef %p, i8* noundef %63) #4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then70
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2312, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call75 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %65, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.then70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %lor.lhs.false65
  %66 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange78 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %66, i32 0, i32 4
  %67 = load i8, i8* %key_exchange78, align 2
  %conv79 = zext i8 %67 to i32
  %cmp80 = icmp eq i32 %conv79, 5
  br i1 %cmp80, label %if.then87, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end77
  %68 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange83 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %68, i32 0, i32 4
  %69 = load i8, i8* %key_exchange83, align 2
  %conv84 = zext i8 %69 to i32
  %cmp85 = icmp eq i32 %conv84, 7
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %lor.lhs.false82, %if.end77
  br label %if.end129

if.else:                                          ; preds = %lor.lhs.false82
  %70 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange88 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %70, i32 0, i32 4
  %71 = load i8, i8* %key_exchange88, align 2
  %conv89 = zext i8 %71 to i32
  %cmp90 = icmp eq i32 %conv89, 2
  br i1 %cmp90, label %if.then97, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.else
  %72 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange93 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %72, i32 0, i32 4
  %73 = load i8, i8* %key_exchange93, align 2
  %conv94 = zext i8 %73 to i32
  %cmp95 = icmp eq i32 %conv94, 6
  br i1 %cmp95, label %if.then97, label %if.else104

if.then97:                                        ; preds = %lor.lhs.false92, %if.else
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %75 = load i8*, i8** %end, align 8
  %call98 = call i32 @ssl_parse_server_dh_params(%struct.mbedtls_ssl_context* noundef %74, i8** noundef %p, i8* noundef %75) #4
  %cmp99 = icmp ne i32 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.then97
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %76, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2337, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call102 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %77, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then97
  br label %if.end128

if.else104:                                       ; preds = %lor.lhs.false92
  %78 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange105 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %78, i32 0, i32 4
  %79 = load i8, i8* %key_exchange105, align 2
  %conv106 = zext i8 %79 to i32
  %cmp107 = icmp eq i32 %conv106, 3
  br i1 %cmp107, label %if.then119, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.else104
  %80 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange110 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %80, i32 0, i32 4
  %81 = load i8, i8* %key_exchange110, align 2
  %conv111 = zext i8 %81 to i32
  %cmp112 = icmp eq i32 %conv111, 8
  br i1 %cmp112, label %if.then119, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %lor.lhs.false109
  %82 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange115 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %82, i32 0, i32 4
  %83 = load i8, i8* %key_exchange115, align 2
  %conv116 = zext i8 %83 to i32
  %cmp117 = icmp eq i32 %conv116, 4
  br i1 %cmp117, label %if.then119, label %if.else126

if.then119:                                       ; preds = %lor.lhs.false114, %lor.lhs.false109, %if.else104
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %85 = load i8*, i8** %end, align 8
  %call120 = call i32 @ssl_parse_server_ecdh_params(%struct.mbedtls_ssl_context* noundef %84, i8** noundef %p, i8* noundef %85) #4
  %cmp121 = icmp ne i32 %call120, 0
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.then119
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %86, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2357, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call124 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %87, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.then119
  br label %if.end127

if.else126:                                       ; preds = %lor.lhs.false114
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %88, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2387, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.end125
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end103
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then87
  %89 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call130 = call i32 @mbedtls_ssl_ciphersuite_uses_server_signature(%struct.mbedtls_ssl_ciphersuite_t* noundef %89) #4
  %tobool = icmp ne i32 %call130, 0
  br i1 %tobool, label %if.then131, label %if.end197

if.then131:                                       ; preds = %if.end129
  store i32 0, i32* %md_alg, align 4
  store i32 0, i32* %pk_alg, align 4
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg132 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %90, i32 0, i32 29
  %91 = load i8*, i8** %in_msg132, align 8
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call133 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %92) #4
  %add.ptr134 = getelementptr inbounds i8, i8* %91, i64 %call133
  store i8* %add.ptr134, i8** %params, align 8
  %93 = load i8*, i8** %p, align 8
  %94 = load i8*, i8** %params, align 8
  %sub.ptr.lhs.cast135 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %94 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  store i64 %sub.ptr.sub137, i64* %params_len, align 8
  store i8* null, i8** %rs_ctx, align 8
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %96 = load i8*, i8** %end, align 8
  %call138 = call i32 @ssl_parse_signature_algorithm(%struct.mbedtls_ssl_context* noundef %95, i8** noundef %p, i8* noundef %96, i32* noundef %md_alg, i32* noundef %pk_alg) #4
  %cmp139 = icmp ne i32 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.then131
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2415, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call142 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %98, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end143:                                        ; preds = %if.then131
  %99 = load i32, i32* %pk_alg, align 4
  %100 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call144 = call i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %100) #4
  %cmp145 = icmp ne i32 %99, %call144
  br i1 %cmp145, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end143
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %101, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2427, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call148 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %102, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end149:                                        ; preds = %if.end143
  %103 = load i8*, i8** %p, align 8
  %104 = load i8*, i8** %end, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %104, i64 -2
  %cmp151 = icmp ugt i8* %103, %add.ptr150
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end149
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2441, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %106 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call154 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %106, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.end149
  %107 = load i8*, i8** %p, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %108 to i32
  %shl = shl i32 %conv157, 8
  %109 = load i8*, i8** %p, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %110 to i32
  %or = or i32 %shl, %conv159
  %conv160 = sext i32 %or to i64
  store i64 %conv160, i64* %sig_len, align 8
  %111 = load i8*, i8** %p, align 8
  %add.ptr161 = getelementptr inbounds i8, i8* %111, i64 2
  store i8* %add.ptr161, i8** %p, align 8
  %112 = load i8*, i8** %p, align 8
  %113 = load i8*, i8** %end, align 8
  %114 = load i64, i64* %sig_len, align 8
  %idx.neg = sub i64 0, %114
  %add.ptr162 = getelementptr inbounds i8, i8* %113, i64 %idx.neg
  %cmp163 = icmp ne i8* %112, %add.ptr162
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end155
  %115 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %115, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2453, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call166 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %116, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %if.end155
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %118 = load i8*, i8** %p, align 8
  %119 = load i64, i64* %sig_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %117, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2461, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0), i8* noundef %118, i64 noundef %119) #4
  %120 = load i32, i32* %md_alg, align 4
  %cmp168 = icmp ne i32 %120, 0
  br i1 %cmp168, label %if.then170, label %if.else176

if.then170:                                       ; preds = %if.end167
  %121 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %122 = load i8*, i8** %params, align 8
  %123 = load i64, i64* %params_len, align 8
  %124 = load i32, i32* %md_alg, align 4
  %call171 = call i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(%struct.mbedtls_ssl_context* noundef %121, i8* noundef %arraydecay, i64* noundef %hashlen, i8* noundef %122, i64 noundef %123, i32 noundef %124) #4
  store i32 %call171, i32* %ret, align 4
  %125 = load i32, i32* %ret, align 4
  %cmp172 = icmp ne i32 %125, 0
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.then170
  %126 = load i32, i32* %ret, align 4
  store i32 %126, i32* %retval, align 4
  br label %return

if.end175:                                        ; preds = %if.then170
  br label %if.end177

if.else176:                                       ; preds = %if.end167
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %127, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2476, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end177:                                        ; preds = %if.end175
  %128 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay178 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %129 = load i64, i64* %hashlen, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %128, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2480, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0), i8* noundef %arraydecay178, i64 noundef %129) #4
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %130, i32 0, i32 15
  %131 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %131, i32 0, i32 9
  %132 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp179 = icmp eq %struct.mbedtls_x509_crt* %132, null
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end177
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %133, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2488, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.end177
  %134 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate183 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %134, i32 0, i32 15
  %135 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate183, align 8
  %peer_cert184 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %135, i32 0, i32 9
  %136 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert184, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %136, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %peer_pk, align 8
  %137 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %138 = load i32, i32* %pk_alg, align 4
  %call185 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %137, i32 noundef %138) #4
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end189, label %if.then187

if.then187:                                       ; preds = %if.end182
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %139, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2499, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)) #4
  %140 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call188 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %140, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -27904, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %if.end182
  %141 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %142 = load i32, i32* %md_alg, align 4
  %arraydecay190 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %143 = load i64, i64* %hashlen, align 8
  %144 = load i8*, i8** %p, align 8
  %145 = load i64, i64* %sig_len, align 8
  %146 = load i8*, i8** %rs_ctx, align 8
  %call191 = call i32 @mbedtls_pk_verify_restartable(%struct.mbedtls_pk_context* noundef %141, i32 noundef %142, i8* noundef %arraydecay190, i64 noundef %143, i8* noundef %144, i64 noundef %145, i8* noundef %146) #4
  store i32 %call191, i32* %ret, align 4
  %cmp192 = icmp ne i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.end196

if.then194:                                       ; preds = %if.end189
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call195 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %147, i8 noundef zeroext 2, i8 noundef zeroext 51) #4
  %148 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %149 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %148, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2522, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i32 noundef %149) #4
  %150 = load i32, i32* %ret, align 4
  store i32 %150, i32* %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.end189
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.end129
  br label %exit

exit:                                             ; preds = %if.end197, %if.then43
  %151 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state198 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %151, i32 0, i32 1
  %152 = load i32, i32* %state198, align 8
  %inc199 = add nsw i32 %152, 1
  store i32 %inc199, i32* %state198, align 8
  %153 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %153, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2542, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then194, %if.then187, %if.then181, %if.else176, %if.then174, %if.then165, %if.then153, %if.then147, %if.then141, %if.else126, %if.then123, %if.then101, %if.then74, %if.end44, %if.then27, %if.then23, %if.end16, %if.then14, %if.then
  %154 = load i32, i32* %retval, align 4
  ret i32 %154
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %n = alloca i64, align 8
  %cert_type_len = alloca i64, align 8
  %dn_len = alloca i64, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %sig_alg_len = alloca i64, align 8
  %sig_alg = alloca i8*, align 8
  %dn = alloca i8*, align 8
  %i = alloca i64, align 8
  %i106 = alloca i64, align 8
  %dni_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %name = alloca %struct.mbedtls_asn1_named_data, align 8
  %name_cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  %name_prv = alloca %struct.mbedtls_asn1_named_data*, align 8
  %asn1_len = alloca i64, align 8
  %s = alloca [256 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %n, align 8
  store i64 0, i64* %cert_type_len, align 8
  store i64 0, i64* %dn_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2582, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i64 0, i64 0)) #4
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(%struct.mbedtls_ssl_ciphersuite_t* noundef %4) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2586, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i64 0, i64 0)) #4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1) #4
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2593, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 noundef %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 31
  %13 = load i32, i32* %in_msgtype, align 8
  %cmp5 = icmp ne i32 %13, 22
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2599, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call7 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %15, i8 noundef zeroext 2, i8 noundef zeroext 10) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 1
  %17 = load i32, i32* %state9, align 8
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %state9, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 29
  %19 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp11 = icmp eq i32 %conv, 13
  %conv12 = zext i1 %cmp11 to i32
  %conv13 = trunc i32 %conv12 to i8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake14, align 8
  %client_auth = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 43
  store i8 %conv13, i8* %client_auth, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 16
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake15, align 8
  %client_auth16 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 43
  %26 = load i8, i8* %client_auth16, align 8
  %conv17 = zext i8 %26 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  %27 = zext i1 %tobool18 to i64
  %cond = select i1 %tobool18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2612, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i64 0, i64 0), i8* noundef %cond) #4
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 16
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake19, align 8
  %client_auth20 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %29, i32 0, i32 43
  %30 = load i8, i8* %client_auth20, align 8
  %conv21 = zext i8 %30 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 40
  store i32 1, i32* %keep_current_message, align 4
  br label %exit

if.end25:                                         ; preds = %if.end8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 29
  %33 = load i8*, i8** %in_msg26, align 8
  store i8* %33, i8** %buf, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 38
  %35 = load i64, i64* %in_hslen, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call27 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %36) #4
  %cmp28 = icmp ule i64 %35, %call27
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2650, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call31 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %38, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %39 = load i8*, i8** %buf, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call33 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %40) #4
  %arrayidx34 = getelementptr inbounds i8, i8* %39, i64 %call33
  %41 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %41 to i64
  store i64 %conv35, i64* %cert_type_len, align 8
  %42 = load i64, i64* %cert_type_len, align 8
  store i64 %42, i64* %n, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 38
  %44 = load i64, i64* %in_hslen36, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call37 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %45) #4
  %add = add i64 %call37, 2
  %46 = load i64, i64* %n, align 8
  %add38 = add i64 %add, %46
  %cmp39 = icmp ule i64 %44, %add38
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end32
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2670, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call42 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %48, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end32
  %49 = load i8*, i8** %buf, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call44 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %50) #4
  %add45 = add i64 %call44, 1
  %51 = load i64, i64* %n, align 8
  %add46 = add i64 %add45, %51
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i64 %add46
  %52 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %52 to i32
  %shl = shl i32 %conv48, 8
  %53 = load i8*, i8** %buf, align 8
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call49 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %54) #4
  %add50 = add i64 %call49, 2
  %55 = load i64, i64* %n, align 8
  %add51 = add i64 %add50, %55
  %arrayidx52 = getelementptr inbounds i8, i8* %53, i64 %add51
  %56 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %56 to i32
  %or = or i32 %shl, %conv53
  %conv54 = sext i32 %or to i64
  store i64 %conv54, i64* %sig_alg_len, align 8
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 38
  %58 = load i64, i64* %in_hslen55, align 8
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call56 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %59) #4
  %add57 = add i64 %call56, 3
  %60 = load i64, i64* %n, align 8
  %add58 = add i64 %add57, %60
  %61 = load i64, i64* %sig_alg_len, align 8
  %add59 = add i64 %add58, %61
  %cmp60 = icmp ule i64 %58, %add59
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end43
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2694, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call63 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %63, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end43
  %64 = load i8*, i8** %buf, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call65 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %65) #4
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %call65
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %66 = load i64, i64* %n, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr66, i64 %66
  store i8* %add.ptr67, i8** %sig_alg, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end64
  %67 = load i64, i64* %i, align 8
  %68 = load i64, i64* %sig_alg_len, align 8
  %cmp68 = icmp ult i64 %67, %68
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %70 = load i8*, i8** %sig_alg, align 8
  %71 = load i64, i64* %i, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %70, i64 %71
  %72 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %72 to i32
  %73 = load i8*, i8** %sig_alg, align 8
  %74 = load i64, i64* %i, align 8
  %add72 = add i64 %74, 1
  %arrayidx73 = getelementptr inbounds i8, i8* %73, i64 %add72
  %75 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %75 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %69, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2708, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv71, i32 noundef %conv74) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i64, i64* %i, align 8
  %add75 = add i64 %76, 2
  store i64 %add75, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %77 = load i64, i64* %sig_alg_len, align 8
  %add76 = add i64 2, %77
  %78 = load i64, i64* %n, align 8
  %add77 = add i64 %78, %add76
  store i64 %add77, i64* %n, align 8
  %79 = load i8*, i8** %buf, align 8
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call78 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %80) #4
  %add79 = add i64 %call78, 1
  %81 = load i64, i64* %n, align 8
  %add80 = add i64 %add79, %81
  %arrayidx81 = getelementptr inbounds i8, i8* %79, i64 %add80
  %82 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %82 to i32
  %shl83 = shl i32 %conv82, 8
  %83 = load i8*, i8** %buf, align 8
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call84 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %84) #4
  %add85 = add i64 %call84, 2
  %85 = load i64, i64* %n, align 8
  %add86 = add i64 %add85, %85
  %arrayidx87 = getelementptr inbounds i8, i8* %83, i64 %add86
  %86 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %86 to i32
  %or89 = or i32 %shl83, %conv88
  %conv90 = sext i32 %or89 to i64
  store i64 %conv90, i64* %dn_len, align 8
  %87 = load i64, i64* %dn_len, align 8
  %88 = load i64, i64* %n, align 8
  %add91 = add i64 %88, %87
  store i64 %add91, i64* %n, align 8
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen92 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %89, i32 0, i32 38
  %90 = load i64, i64* %in_hslen92, align 8
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call93 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %91) #4
  %add94 = add i64 %call93, 3
  %92 = load i64, i64* %n, align 8
  %add95 = add i64 %add94, %92
  %cmp96 = icmp ne i64 %90, %add95
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %for.end
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %93, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2721, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call99 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %94, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %for.end
  %95 = load i8*, i8** %buf, align 8
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call101 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %96) #4
  %add.ptr102 = getelementptr inbounds i8, i8* %95, i64 %call101
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr102, i64 3
  %97 = load i64, i64* %n, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr103, i64 %97
  %98 = load i64, i64* %dn_len, align 8
  %idx.neg = sub i64 0, %98
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr104, i64 %idx.neg
  store i8* %add.ptr105, i8** %dn, align 8
  store i64 0, i64* %i106, align 8
  store i64 0, i64* %dni_len, align 8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc145, %if.end100
  %99 = load i64, i64* %i106, align 8
  %100 = load i64, i64* %dn_len, align 8
  %cmp108 = icmp ult i64 %99, %100
  br i1 %cmp108, label %for.body110, label %for.end148

for.body110:                                      ; preds = %for.cond107
  %101 = load i8*, i8** %dn, align 8
  %102 = load i64, i64* %i106, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %101, i64 %102
  %add.ptr112 = getelementptr inbounds i8, i8* %add.ptr111, i64 2
  store i8* %add.ptr112, i8** %p, align 8
  %103 = bitcast %struct.mbedtls_asn1_named_data* %name to i8*
  %call113 = call i8* @memset(i8* noundef %103, i32 noundef 0, i64 noundef 64) #5
  %104 = load i8*, i8** %dn, align 8
  %105 = load i64, i64* %i106, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %104, i64 %105
  %arrayidx115 = getelementptr inbounds i8, i8* %add.ptr114, i64 0
  %106 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %106 to i16
  %conv117 = zext i16 %conv116 to i32
  %shl118 = shl i32 %conv117, 8
  %107 = load i8*, i8** %dn, align 8
  %108 = load i64, i64* %i106, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %107, i64 %108
  %arrayidx120 = getelementptr inbounds i8, i8* %add.ptr119, i64 1
  %109 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %109 to i16
  %conv122 = zext i16 %conv121 to i32
  %or123 = or i32 %shl118, %conv122
  %conv124 = sext i32 %or123 to i64
  store i64 %conv124, i64* %dni_len, align 8
  %110 = load i64, i64* %dni_len, align 8
  %111 = load i64, i64* %dn_len, align 8
  %112 = load i64, i64* %i106, align 8
  %sub = sub i64 %111, %112
  %sub125 = sub i64 %sub, 2
  %cmp126 = icmp ugt i64 %110, %sub125
  br i1 %cmp126, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body110
  %113 = load i8*, i8** %p, align 8
  %114 = load i64, i64* %dni_len, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %113, i64 %114
  %call129 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %add.ptr128, i64* noundef %asn1_len, i32 noundef 48) #4
  %cmp130 = icmp ne i32 %call129, 0
  br i1 %cmp130, label %if.then137, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false
  %115 = load i8*, i8** %p, align 8
  %116 = load i64, i64* %asn1_len, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %115, i64 %116
  %call134 = call i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %add.ptr133, %struct.mbedtls_asn1_named_data* noundef %name) #4
  %cmp135 = icmp ne i32 %call134, 0
  br i1 %cmp135, label %if.then137, label %if.end139

if.then137:                                       ; preds = %lor.lhs.false132, %lor.lhs.false, %for.body110
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %117, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2743, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0)) #4
  %118 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call138 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %118, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end139:                                        ; preds = %lor.lhs.false132
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 0
  %call140 = call i32 @mbedtls_x509_dn_gets(i8* noundef %arraydecay, i64 noundef 256, %struct.mbedtls_asn1_named_data* noundef %name) #4
  %arraydecay141 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 0
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %119, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2752, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0), i32 noundef %call140, i8* noundef %arraydecay141) #4
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %name, i32 0, i32 2
  %120 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %120, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end139
  %121 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %cmp142 = icmp ne %struct.mbedtls_asn1_named_data* %121, null
  br i1 %cmp142, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %122 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  store %struct.mbedtls_asn1_named_data* %122, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %123 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %next144 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %123, i32 0, i32 2
  %124 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next144, align 8
  store %struct.mbedtls_asn1_named_data* %124, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %125 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %126 = bitcast %struct.mbedtls_asn1_named_data* %125 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %126, i64 noundef 64) #4
  %127 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %128 = bitcast %struct.mbedtls_asn1_named_data* %127 to i8*
  call void @free(i8* noundef %128) #5
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %for.inc145

for.inc145:                                       ; preds = %while.end
  %129 = load i64, i64* %dni_len, align 8
  %add146 = add i64 2, %129
  %130 = load i64, i64* %i106, align 8
  %add147 = add i64 %130, %add146
  store i64 %add147, i64* %i106, align 8
  br label %for.cond107, !llvm.loop !8

for.end148:                                       ; preds = %for.cond107
  br label %exit

exit:                                             ; preds = %for.end148, %if.then24
  %131 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %131, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2765, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then137, %if.then98, %if.then62, %if.then41, %if.then30, %if.then6, %if.then3, %if.then
  %132 = load i32, i32* %retval, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_hello_done(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2776, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.104, i64 0, i64 0)) #4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2780, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 noundef %3) #4
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 31
  %6 = load i32, i32* %in_msgtype, align 8
  %cmp1 = icmp ne i32 %6, 22
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2786, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i64 0, i64 0)) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 38
  %9 = load i64, i64* %in_hslen, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %10) #4
  %cmp5 = icmp ne i64 %9, %call4
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 29
  %12 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp6 = icmp ne i32 %conv, 14
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %if.end3
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2793, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i64 0, i64 0)) #4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %15, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 1
  %17 = load i32, i32* %state, align 8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %state, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %19, i32 0, i32 3
  %20 = load i8, i8* %transport, align 1
  %conv11 = zext i8 %20 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef %21) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2806, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then8, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @mbedtls_ssl_write_certificate(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_client_key_exchange(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %header_len = alloca i64, align 8
  %content_len = alloca i64, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2821, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.107, i64 0, i64 0)) #4
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %4, i32 0, i32 4
  %5 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 19
  %call = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm_ctx) #4
  store i64 %call, i64* %content_len, align 8
  %8 = load i64, i64* %content_len, align 8
  %shr = lshr i64 %8, 8
  %and = and i64 %shr, 255
  %conv4 = trunc i64 %and to i8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 50
  %10 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 4
  store i8 %conv4, i8* %arrayidx, align 1
  %11 = load i64, i64* %content_len, align 8
  %and5 = and i64 %11, 255
  %conv6 = trunc i64 %and5 to i8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 50
  %13 = load i8*, i8** %out_msg7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 %conv6, i8* %arrayidx8, align 1
  store i64 6, i64* %header_len, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 16
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake9, align 8
  %dhm_ctx10 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %15, i32 0, i32 19
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 16
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake11, align 8
  %dhm_ctx12 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 19
  %call13 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm_ctx12) #4
  %conv14 = trunc i64 %call13 to i32
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 50
  %19 = load i8*, i8** %out_msg15, align 8
  %20 = load i64, i64* %header_len, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load i64, i64* %content_len, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 0
  %23 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %23, i32 0, i32 17
  %24 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf17, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 18
  %27 = load i8*, i8** %p_rng, align 8
  %call18 = call i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %dhm_ctx10, i32 noundef %conv14, i8* noundef %arrayidx16, i64 noundef %21, i32 (i8*, i8*, i64)* noundef %24, i8* noundef %27) #4
  store i32 %call18, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %28, 0
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2840, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i64 0, i64 0), i32 noundef %30) #4
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake22, align 8
  %dhm_ctx23 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 19
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx23, i32 0, i32 2
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %32, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2844, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), %struct.mbedtls_mpi* noundef %X) #4
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 16
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake24, align 8
  %dhm_ctx25 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 19
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx25, i32 0, i32 3
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2845, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i64 0, i64 0), %struct.mbedtls_mpi* noundef %GX) #4
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 16
  %39 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake26, align 8
  %dhm_ctx27 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %39, i32 0, i32 19
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 16
  %41 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake28, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %41, i32 0, i32 46
  %arraydecay = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 16
  %43 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake29, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %43, i32 0, i32 10
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 0
  %45 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf30, align 8
  %f_rng31 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %45, i32 0, i32 17
  %46 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng31, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 0
  %48 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf32, align 8
  %p_rng33 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %48, i32 0, i32 18
  %49 = load i8*, i8** %p_rng33, align 8
  %call34 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm_ctx27, i8* noundef %arraydecay, i64 noundef 1060, i64* noundef %pmslen, i32 (i8*, i8*, i64)* noundef %46, i8* noundef %49) #4
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %51 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %50, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2853, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i64 0, i64 0), i32 noundef %51) #4
  %52 = load i32, i32* %ret, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 16
  %55 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake39, align 8
  %dhm_ctx40 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %55, i32 0, i32 19
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx40, i32 0, i32 5
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2857, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0), %struct.mbedtls_mpi* noundef %K) #4
  br label %if.end232

if.else:                                          ; preds = %entry
  %56 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange41 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %56, i32 0, i32 4
  %57 = load i8, i8* %key_exchange41, align 2
  %conv42 = zext i8 %57 to i32
  %cmp43 = icmp eq i32 %conv42, 3
  br i1 %cmp43, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %58 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange45 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %58, i32 0, i32 4
  %59 = load i8, i8* %key_exchange45, align 2
  %conv46 = zext i8 %59 to i32
  %cmp47 = icmp eq i32 %conv46, 4
  br i1 %cmp47, label %if.then59, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %60 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange50 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %60, i32 0, i32 4
  %61 = load i8, i8* %key_exchange50, align 2
  %conv51 = zext i8 %61 to i32
  %cmp52 = icmp eq i32 %conv51, 9
  br i1 %cmp52, label %if.then59, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false49
  %62 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange55 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %62, i32 0, i32 4
  %63 = load i8, i8* %key_exchange55, align 2
  %conv56 = zext i8 %63 to i32
  %cmp57 = icmp eq i32 %conv56, 10
  br i1 %cmp57, label %if.then59, label %if.else92

if.then59:                                        ; preds = %lor.lhs.false54, %lor.lhs.false49, %lor.lhs.false, %if.else
  store i64 4, i64* %header_len, align 8
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 16
  %65 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake60, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %65, i32 0, i32 20
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 50
  %67 = load i8*, i8** %out_msg61, align 8
  %68 = load i64, i64* %header_len, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %67, i64 %68
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf63 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 0
  %70 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf63, align 8
  %f_rng64 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %70, i32 0, i32 17
  %71 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng64, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf65 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 0
  %73 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf65, align 8
  %p_rng66 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %73, i32 0, i32 18
  %74 = load i8*, i8** %p_rng66, align 8
  %call67 = call i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, i64* noundef %content_len, i8* noundef %arrayidx62, i64 noundef 1000, i32 (i8*, i8*, i64)* noundef %71, i8* noundef %74) #4
  store i32 %call67, i32* %ret, align 4
  %75 = load i32, i32* %ret, align 4
  %cmp68 = icmp ne i32 %75, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then59
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %77 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %76, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2963, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.113, i64 0, i64 0), i32 noundef %77) #4
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.then59
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 16
  %81 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake72, align 8
  %ecdh_ctx73 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %81, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %79, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2972, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx73, i32 noundef 0) #4
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake74 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 16
  %83 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake74, align 8
  %ecdh_ctx75 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %83, i32 0, i32 20
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %84, i32 0, i32 16
  %85 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake76, align 8
  %pmslen77 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %85, i32 0, i32 10
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake78 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %86, i32 0, i32 16
  %87 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake78, align 8
  %premaster79 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %87, i32 0, i32 46
  %arraydecay80 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster79, i64 0, i64 0
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf81 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %88, i32 0, i32 0
  %89 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf81, align 8
  %f_rng82 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %89, i32 0, i32 17
  %90 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng82, align 8
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %91, i32 0, i32 0
  %92 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf83, align 8
  %p_rng84 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %92, i32 0, i32 18
  %93 = load i8*, i8** %p_rng84, align 8
  %call85 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx75, i64* noundef %pmslen77, i8* noundef %arraydecay80, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef %90, i8* noundef %93) #4
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end71
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %95 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %94, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2991, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0), i32 noundef %95) #4
  %96 = load i32, i32* %ret, align 4
  store i32 %96, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end71
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake90 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %98, i32 0, i32 16
  %99 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake90, align 8
  %ecdh_ctx91 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %99, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %97, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3000, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx91, i32 noundef 2) #4
  br label %if.end231

if.else92:                                        ; preds = %lor.lhs.false54
  %100 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call93 = call i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef %100) #4
  %tobool = icmp ne i32 %call93, 0
  br i1 %tobool, label %if.then94, label %if.else217

if.then94:                                        ; preds = %if.else92
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf95 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %101, i32 0, i32 0
  %102 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf95, align 8
  %call96 = call i32 @mbedtls_ssl_conf_has_static_psk(%struct.mbedtls_ssl_config* noundef %102) #4
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then94
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.then94
  store i64 4, i64* %header_len, align 8
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf101 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %103, i32 0, i32 0
  %104 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf101, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %104, i32 0, i32 47
  %105 = load i64, i64* %psk_identity_len, align 8
  store i64 %105, i64* %content_len, align 8
  %106 = load i64, i64* %header_len, align 8
  %add = add i64 %106, 2
  %107 = load i64, i64* %content_len, align 8
  %add102 = add i64 %add, %107
  %cmp103 = icmp ugt i64 %add102, 16384
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end100
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %108, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3155, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.115, i64 0, i64 0)) #4
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.end100
  %109 = load i64, i64* %content_len, align 8
  %shr107 = lshr i64 %109, 8
  %and108 = and i64 %shr107, 255
  %conv109 = trunc i64 %and108 to i8
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg110 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 50
  %111 = load i8*, i8** %out_msg110, align 8
  %112 = load i64, i64* %header_len, align 8
  %inc = add i64 %112, 1
  store i64 %inc, i64* %header_len, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 %conv109, i8* %arrayidx111, align 1
  %113 = load i64, i64* %content_len, align 8
  %and112 = and i64 %113, 255
  %conv113 = trunc i64 %and112 to i8
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg114 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %114, i32 0, i32 50
  %115 = load i8*, i8** %out_msg114, align 8
  %116 = load i64, i64* %header_len, align 8
  %inc115 = add i64 %116, 1
  store i64 %inc115, i64* %header_len, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 %conv113, i8* %arrayidx116, align 1
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %117, i32 0, i32 50
  %118 = load i8*, i8** %out_msg117, align 8
  %119 = load i64, i64* %header_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %118, i64 %119
  %120 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf118 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %120, i32 0, i32 0
  %121 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf118, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %121, i32 0, i32 46
  %122 = load i8*, i8** %psk_identity, align 8
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf119 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %123, i32 0, i32 0
  %124 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf119, align 8
  %psk_identity_len120 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %124, i32 0, i32 47
  %125 = load i64, i64* %psk_identity_len120, align 8
  %call121 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %122, i64 noundef %125) #5
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf122 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %126, i32 0, i32 0
  %127 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf122, align 8
  %psk_identity_len123 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %127, i32 0, i32 47
  %128 = load i64, i64* %psk_identity_len123, align 8
  %129 = load i64, i64* %header_len, align 8
  %add124 = add i64 %129, %128
  store i64 %add124, i64* %header_len, align 8
  %130 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange125 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %130, i32 0, i32 4
  %131 = load i8, i8* %key_exchange125, align 2
  %conv126 = zext i8 %131 to i32
  %cmp127 = icmp eq i32 %conv126, 5
  br i1 %cmp127, label %if.then129, label %if.else130

if.then129:                                       ; preds = %if.end106
  store i64 0, i64* %content_len, align 8
  br label %if.end209

if.else130:                                       ; preds = %if.end106
  %132 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange131 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %132, i32 0, i32 4
  %133 = load i8, i8* %key_exchange131, align 2
  %conv132 = zext i8 %133 to i32
  %cmp133 = icmp eq i32 %conv132, 7
  br i1 %cmp133, label %if.then135, label %if.else141

if.then135:                                       ; preds = %if.else130
  %134 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %135 = load i64, i64* %header_len, align 8
  %call136 = call i32 @ssl_write_encrypted_pms(%struct.mbedtls_ssl_context* noundef %134, i64 noundef %135, i64* noundef %content_len, i64 noundef 2) #4
  store i32 %call136, i32* %ret, align 4
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then135
  %136 = load i32, i32* %ret, align 4
  store i32 %136, i32* %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.then135
  br label %if.end208

if.else141:                                       ; preds = %if.else130
  %137 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange142 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %137, i32 0, i32 4
  %138 = load i8, i8* %key_exchange142, align 2
  %conv143 = zext i8 %138 to i32
  %cmp144 = icmp eq i32 %conv143, 6
  br i1 %cmp144, label %if.then146, label %if.else184

if.then146:                                       ; preds = %if.else141
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake147 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %139, i32 0, i32 16
  %140 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake147, align 8
  %dhm_ctx148 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %140, i32 0, i32 19
  %call149 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm_ctx148) #4
  store i64 %call149, i64* %content_len, align 8
  %141 = load i64, i64* %header_len, align 8
  %add150 = add i64 %141, 2
  %142 = load i64, i64* %content_len, align 8
  %add151 = add i64 %add150, %142
  %cmp152 = icmp ugt i64 %add151, 16384
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.then146
  %143 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %143, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3195, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.116, i64 0, i64 0)) #4
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.then146
  %144 = load i64, i64* %content_len, align 8
  %shr156 = lshr i64 %144, 8
  %and157 = and i64 %shr156, 255
  %conv158 = trunc i64 %and157 to i8
  %145 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg159 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %145, i32 0, i32 50
  %146 = load i8*, i8** %out_msg159, align 8
  %147 = load i64, i64* %header_len, align 8
  %inc160 = add i64 %147, 1
  store i64 %inc160, i64* %header_len, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 %conv158, i8* %arrayidx161, align 1
  %148 = load i64, i64* %content_len, align 8
  %and162 = and i64 %148, 255
  %conv163 = trunc i64 %and162 to i8
  %149 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg164 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %149, i32 0, i32 50
  %150 = load i8*, i8** %out_msg164, align 8
  %151 = load i64, i64* %header_len, align 8
  %inc165 = add i64 %151, 1
  store i64 %inc165, i64* %header_len, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 %conv163, i8* %arrayidx166, align 1
  %152 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake167 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %152, i32 0, i32 16
  %153 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake167, align 8
  %dhm_ctx168 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %153, i32 0, i32 19
  %154 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake169 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %154, i32 0, i32 16
  %155 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake169, align 8
  %dhm_ctx170 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %155, i32 0, i32 19
  %call171 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm_ctx170) #4
  %conv172 = trunc i64 %call171 to i32
  %156 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg173 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %156, i32 0, i32 50
  %157 = load i8*, i8** %out_msg173, align 8
  %158 = load i64, i64* %header_len, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %157, i64 %158
  %159 = load i64, i64* %content_len, align 8
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf175 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %160, i32 0, i32 0
  %161 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf175, align 8
  %f_rng176 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %161, i32 0, i32 17
  %162 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng176, align 8
  %163 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf177 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %163, i32 0, i32 0
  %164 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf177, align 8
  %p_rng178 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %164, i32 0, i32 18
  %165 = load i8*, i8** %p_rng178, align 8
  %call179 = call i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef %dhm_ctx168, i32 noundef %conv172, i8* noundef %arrayidx174, i64 noundef %159, i32 (i8*, i8*, i64)* noundef %162, i8* noundef %165) #4
  store i32 %call179, i32* %ret, align 4
  %166 = load i32, i32* %ret, align 4
  %cmp180 = icmp ne i32 %166, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.end155
  %167 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %168 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %167, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3208, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i64 0, i64 0), i32 noundef %168) #4
  %169 = load i32, i32* %ret, align 4
  store i32 %169, i32* %retval, align 4
  br label %return

if.end183:                                        ; preds = %if.end155
  br label %if.end207

if.else184:                                       ; preds = %if.else141
  %170 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange185 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %170, i32 0, i32 4
  %171 = load i8, i8* %key_exchange185, align 2
  %conv186 = zext i8 %171 to i32
  %cmp187 = icmp eq i32 %conv186, 8
  br i1 %cmp187, label %if.then189, label %if.else205

if.then189:                                       ; preds = %if.else184
  %172 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake190 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %172, i32 0, i32 16
  %173 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake190, align 8
  %ecdh_ctx191 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %173, i32 0, i32 20
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg192 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %174, i32 0, i32 50
  %175 = load i8*, i8** %out_msg192, align 8
  %176 = load i64, i64* %header_len, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %175, i64 %176
  %177 = load i64, i64* %header_len, align 8
  %sub = sub i64 16384, %177
  %178 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf194 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %178, i32 0, i32 0
  %179 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf194, align 8
  %f_rng195 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %179, i32 0, i32 17
  %180 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng195, align 8
  %181 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf196 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %181, i32 0, i32 0
  %182 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf196, align 8
  %p_rng197 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %182, i32 0, i32 18
  %183 = load i8*, i8** %p_rng197, align 8
  %call198 = call i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx191, i64* noundef %content_len, i8* noundef %arrayidx193, i64 noundef %sub, i32 (i8*, i8*, i64)* noundef %180, i8* noundef %183) #4
  store i32 %call198, i32* %ret, align 4
  %184 = load i32, i32* %ret, align 4
  %cmp199 = icmp ne i32 %184, 0
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.then189
  %185 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %186 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %185, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3247, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.113, i64 0, i64 0), i32 noundef %186) #4
  %187 = load i32, i32* %ret, align 4
  store i32 %187, i32* %retval, align 4
  br label %return

if.end202:                                        ; preds = %if.then189
  %188 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %189 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake203 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %189, i32 0, i32 16
  %190 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake203, align 8
  %ecdh_ctx204 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %190, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %188, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3252, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx204, i32 noundef 0) #4
  br label %if.end206

if.else205:                                       ; preds = %if.else184
  %191 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %191, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3257, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end206:                                        ; preds = %if.end202
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end183
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end140
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then129
  %192 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %193 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange210 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %193, i32 0, i32 4
  %194 = load i8, i8* %key_exchange210, align 2
  %conv211 = zext i8 %194 to i32
  %call212 = call i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %192, i32 noundef %conv211) #4
  store i32 %call212, i32* %ret, align 4
  %cmp213 = icmp ne i32 %call212, 0
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end209
  %195 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %196 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %195, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3266, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0), i32 noundef %196) #4
  %197 = load i32, i32* %ret, align 4
  store i32 %197, i32* %retval, align 4
  br label %return

if.end216:                                        ; preds = %if.end209
  br label %if.end230

if.else217:                                       ; preds = %if.else92
  %198 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange218 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %198, i32 0, i32 4
  %199 = load i8, i8* %key_exchange218, align 2
  %conv219 = zext i8 %199 to i32
  %cmp220 = icmp eq i32 %conv219, 1
  br i1 %cmp220, label %if.then222, label %if.else228

if.then222:                                       ; preds = %if.else217
  store i64 4, i64* %header_len, align 8
  %200 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %201 = load i64, i64* %header_len, align 8
  %call223 = call i32 @ssl_write_encrypted_pms(%struct.mbedtls_ssl_context* noundef %200, i64 noundef %201, i64* noundef %content_len, i64 noundef 0) #4
  store i32 %call223, i32* %ret, align 4
  %cmp224 = icmp ne i32 %call223, 0
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.then222
  %202 = load i32, i32* %ret, align 4
  store i32 %202, i32* %retval, align 4
  br label %return

if.end227:                                        ; preds = %if.then222
  br label %if.end229

if.else228:                                       ; preds = %if.else217
  %203 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %204 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %204, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3312, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end229:                                        ; preds = %if.end227
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end216
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end89
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %if.end38
  %205 = load i64, i64* %header_len, align 8
  %206 = load i64, i64* %content_len, align 8
  %add233 = add i64 %205, %206
  %207 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %207, i32 0, i32 52
  store i64 %add233, i64* %out_msglen, align 8
  %208 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %208, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %209 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg234 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %209, i32 0, i32 50
  %210 = load i8*, i8** %out_msg234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 16, i8* %arrayidx235, align 1
  %211 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %211, i32 0, i32 1
  %212 = load i32, i32* %state, align 8
  %inc236 = add nsw i32 %212, 1
  store i32 %inc236, i32* %state, align 8
  %213 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call237 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %213) #4
  store i32 %call237, i32* %ret, align 4
  %cmp238 = icmp ne i32 %call237, 0
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.end232
  %214 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %215 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %214, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3324, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.118, i64 0, i64 0), i32 noundef %215) #4
  %216 = load i32, i32* %ret, align 4
  store i32 %216, i32* %retval, align 4
  br label %return

if.end241:                                        ; preds = %if.end232
  %217 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %217, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3328, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end241, %if.then240, %if.else228, %if.then226, %if.then215, %if.else205, %if.then201, %if.then182, %if.then154, %if.then139, %if.then105, %if.then99, %if.then88, %if.then70, %if.then37, %if.then21
  %218 = load i32, i32* %retval, align 4
  ret i32 %218
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_certificate_verify(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %n = alloca i64, align 8
  %offset = alloca i64, align 8
  %hash = alloca [48 x i8], align 16
  %hash_start = alloca i8*, align 8
  %md_alg = alloca i32, align 4
  %hashlen = alloca i64, align 8
  %rs_ctx = alloca i8*, align 8
  %out_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  store i64 0, i64* %n, align 8
  store i64 0, i64* %offset, align 8
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %hash, i64 0, i64 0
  store i8* %arraydecay, i8** %hash_start, align 8
  store i32 0, i32* %md_alg, align 4
  store i8* null, i8** %rs_ctx, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 50
  %4 = load i8*, i8** %out_msg, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 45
  %6 = load i8*, i8** %out_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 16717, %sub.ptr.sub
  store i64 %sub, i64* %out_buf_len, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3378, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i64 0, i64 0)) #4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef %8) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3390, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i32 noundef %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call2 = call i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(%struct.mbedtls_ssl_ciphersuite_t* noundef %12) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3396, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #4
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 1
  %15 = load i32, i32* %state, align 8
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 16
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %client_auth = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 43
  %18 = load i8, i8* %client_auth, align 8
  %conv = zext i8 %18 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %19) #4
  %cmp9 = icmp eq %struct.mbedtls_x509_crt* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false, %if.end4
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3404, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0)) #4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 1
  %22 = load i32, i32* %state12, align 8
  %inc13 = add nsw i32 %22, 1
  store i32 %inc13, i32* %state12, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %23) #4
  %cmp16 = icmp eq %struct.mbedtls_pk_context* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3411, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.126, i64 0, i64 0)) #4
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 16
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake20, align 8
  %calc_verify = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 13
  %27 = load void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay21 = getelementptr inbounds [48 x i8], [48 x i8]* %hash, i64 0, i64 0
  call void %27(%struct.mbedtls_ssl_context* noundef %28, i8* noundef %arraydecay21, i64* noundef %hashlen) #4
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 16
  %30 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake22, align 8
  %ciphersuite_info23 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %30, i32 0, i32 11
  %31 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info23, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %31, i32 0, i32 3
  %32 = load i8, i8* %mac, align 1
  %conv24 = zext i8 %32 to i32
  %cmp25 = icmp eq i32 %conv24, 5
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end19
  store i32 5, i32* %md_alg, align 4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 50
  %34 = load i8*, i8** %out_msg28, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 4
  store i8 5, i8* %arrayidx, align 1
  br label %if.end31

if.else:                                          ; preds = %if.end19
  store i32 4, i32* %md_alg, align 4
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 50
  %36 = load i8*, i8** %out_msg29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %36, i64 4
  store i8 4, i8* %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call32 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %37) #4
  %call33 = call zeroext i8 @mbedtls_ssl_sig_from_pk(%struct.mbedtls_pk_context* noundef %call32) #4
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 50
  %39 = load i8*, i8** %out_msg34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 5
  store i8 %call33, i8* %arrayidx35, align 1
  store i64 0, i64* %hashlen, align 8
  store i64 2, i64* %offset, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call36 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %40) #4
  %41 = load i32, i32* %md_alg, align 4
  %42 = load i8*, i8** %hash_start, align 8
  %43 = load i64, i64* %hashlen, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg37 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 50
  %45 = load i8*, i8** %out_msg37, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 6
  %46 = load i64, i64* %offset, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 %46
  %47 = load i64, i64* %out_buf_len, align 8
  %sub39 = sub i64 %47, 6
  %48 = load i64, i64* %offset, align 8
  %sub40 = sub i64 %sub39, %48
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 0
  %50 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %50, i32 0, i32 17
  %51 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 0
  %53 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf41, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %53, i32 0, i32 18
  %54 = load i8*, i8** %p_rng, align 8
  %55 = load i8*, i8** %rs_ctx, align 8
  %call42 = call i32 @mbedtls_pk_sign_restartable(%struct.mbedtls_pk_context* noundef %call36, i32 noundef %41, i8* noundef %42, i64 noundef %43, i8* noundef %add.ptr38, i64 noundef %sub40, i64* noundef %n, i32 (i8*, i8*, i64)* noundef %51, i8* noundef %54, i8* noundef %55) #4
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end31
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %57 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %56, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3471, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.127, i64 0, i64 0), i32 noundef %57) #4
  %58 = load i32, i32* %ret, align 4
  store i32 %58, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end31
  %59 = load i64, i64* %n, align 8
  %shr = lshr i64 %59, 8
  %and = and i64 %shr, 255
  %conv47 = trunc i64 %and to i8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 50
  %61 = load i8*, i8** %out_msg48, align 8
  %62 = load i64, i64* %offset, align 8
  %add = add i64 %62, 4
  %arrayidx49 = getelementptr inbounds i8, i8* %61, i64 %add
  store i8 %conv47, i8* %arrayidx49, align 1
  %63 = load i64, i64* %n, align 8
  %and50 = and i64 %63, 255
  %conv51 = trunc i64 %and50 to i8
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 50
  %65 = load i8*, i8** %out_msg52, align 8
  %66 = load i64, i64* %offset, align 8
  %add53 = add i64 %66, 4
  %add54 = add i64 %add53, 1
  %arrayidx55 = getelementptr inbounds i8, i8* %65, i64 %add54
  store i8 %conv51, i8* %arrayidx55, align 1
  %67 = load i64, i64* %n, align 8
  %add56 = add i64 6, %67
  %68 = load i64, i64* %offset, align 8
  %add57 = add i64 %add56, %68
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 52
  store i64 %add57, i64* %out_msglen, align 8
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg58 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 50
  %72 = load i8*, i8** %out_msg58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 15, i8* %arrayidx59, align 1
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 1
  %74 = load i32, i32* %state60, align 8
  %inc61 = add nsw i32 %74, 1
  store i32 %inc61, i32* %state60, align 8
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call62 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %75) #4
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end46
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %77 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %76, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3489, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.118, i64 0, i64 0), i32 noundef %77) #4
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end46
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %79, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3493, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.128, i64 0, i64 0)) #4
  %80 = load i32, i32* %ret, align 4
  store i32 %80, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then65, %if.then45, %if.then18, %if.then11, %if.then3, %if.then
  %81 = load i32, i32* %retval, align 4
  ret i32 %81
}

declare dso_local i32 @mbedtls_ssl_write_change_cipher_spec(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_write_finished(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_new_session_ticket(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %lifetime = alloca i32, align 4
  %ticket_len = alloca i64, align 8
  %ticket = alloca i8*, align 8
  %msg = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3509, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.129, i64 0, i64 0)) #4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3513, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 noundef %3) #4
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 31
  %6 = load i32, i32* %in_msgtype, align 8
  %cmp1 = icmp ne i32 %6, 22
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3519, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i64 0, i64 0)) #4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 10) #4
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 29
  %10 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv, 4
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 38
  %13 = load i64, i64* %in_hslen, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call7 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %14) #4
  %add = add i64 6, %call7
  %cmp8 = icmp ult i64 %13, %add
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3540, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i64 0, i64 0)) #4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %16, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 29
  %18 = load i8*, i8** %in_msg13, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %19) #4
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %call14
  store i8* %add.ptr, i8** %msg, align 8
  %20 = load i8*, i8** %msg, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %shl = shl i32 %conv16, 24
  %22 = load i8*, i8** %msg, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %shl19 = shl i32 %conv18, 16
  %or = or i32 %shl, %shl19
  %24 = load i8*, i8** %msg, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %shl22 = shl i32 %conv21, 8
  %or23 = or i32 %or, %shl22
  %26 = load i8*, i8** %msg, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 3
  %27 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %27 to i32
  %or26 = or i32 %or23, %conv25
  store i32 %or26, i32* %lifetime, align 4
  %28 = load i8*, i8** %msg, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 4
  %29 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %29 to i32
  %shl29 = shl i32 %conv28, 8
  %30 = load i8*, i8** %msg, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 5
  %31 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %or32 = or i32 %shl29, %conv31
  %conv33 = sext i32 %or32 to i64
  store i64 %conv33, i64* %ticket_len, align 8
  %32 = load i64, i64* %ticket_len, align 8
  %add34 = add i64 %32, 6
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call35 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %33) #4
  %add36 = add i64 %add34, %call35
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen37 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 38
  %35 = load i64, i64* %in_hslen37, align 8
  %cmp38 = icmp ne i64 %add36, %35
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end12
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %36, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3555, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i64 0, i64 0)) #4
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call41 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %37, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end12
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i64, i64* %ticket_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3561, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i64 0, i64 0), i64 noundef %39) #4
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 16
  %41 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %41, i32 0, i32 4
  store i8 0, i8* %new_session_ticket, align 4
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 1
  store i32 12, i32* %state, align 8
  %43 = load i64, i64* %ticket_len, align 8
  %cmp43 = icmp eq i64 %43, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 0, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 14
  %45 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp47 = icmp ne %struct.mbedtls_ssl_session* %45, null
  br i1 %cmp47, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %if.end46
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 14
  %47 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session49, align 8
  %ticket50 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %47, i32 0, i32 11
  %48 = load i8*, i8** %ticket50, align 8
  %cmp51 = icmp ne i8* %48, null
  br i1 %cmp51, label %if.then53, label %if.end64

if.then53:                                        ; preds = %land.lhs.true
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session54 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 14
  %50 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session54, align 8
  %ticket55 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %50, i32 0, i32 11
  %51 = load i8*, i8** %ticket55, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 14
  %53 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session56, align 8
  %ticket_len57 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %53, i32 0, i32 12
  %54 = load i64, i64* %ticket_len57, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %51, i64 noundef %54) #4
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session58 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 14
  %56 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session58, align 8
  %ticket59 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %56, i32 0, i32 11
  %57 = load i8*, i8** %ticket59, align 8
  call void @free(i8* noundef %57) #5
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 14
  %59 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session60, align 8
  %ticket61 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %59, i32 0, i32 11
  store i8* null, i8** %ticket61, align 8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 14
  %61 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session62, align 8
  %ticket_len63 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %61, i32 0, i32 12
  store i64 0, i64* %ticket_len63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then53, %land.lhs.true, %if.end46
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 15
  %63 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %ticket65 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %63, i32 0, i32 11
  %64 = load i8*, i8** %ticket65, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 15
  %66 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate66, align 8
  %ticket_len67 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %66, i32 0, i32 12
  %67 = load i64, i64* %ticket_len67, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %64, i64 noundef %67) #4
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 15
  %69 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate68, align 8
  %ticket69 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %69, i32 0, i32 11
  %70 = load i8*, i8** %ticket69, align 8
  call void @free(i8* noundef %70) #5
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate70 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 15
  %72 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate70, align 8
  %ticket71 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %72, i32 0, i32 11
  store i8* null, i8** %ticket71, align 8
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 15
  %74 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate72, align 8
  %ticket_len73 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %74, i32 0, i32 12
  store i64 0, i64* %ticket_len73, align 8
  %75 = load i64, i64* %ticket_len, align 8
  %call74 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %75) #5
  store i8* %call74, i8** %ticket, align 8
  %cmp75 = icmp eq i8* %call74, null
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end64
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %76, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3591, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i64 0, i64 0)) #4
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call78 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %77, i8 noundef zeroext 2, i8 noundef zeroext 80) #4
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.end64
  %78 = load i8*, i8** %ticket, align 8
  %79 = load i8*, i8** %msg, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %79, i64 6
  %80 = load i64, i64* %ticket_len, align 8
  %call81 = call i8* @memcpy(i8* noundef %78, i8* noundef %add.ptr80, i64 noundef %80) #5
  %81 = load i8*, i8** %ticket, align 8
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate82 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 15
  %83 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate82, align 8
  %ticket83 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %83, i32 0, i32 11
  store i8* %81, i8** %ticket83, align 8
  %84 = load i64, i64* %ticket_len, align 8
  %85 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate84 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %85, i32 0, i32 15
  %86 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate84, align 8
  %ticket_len85 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %86, i32 0, i32 12
  store i64 %84, i64* %ticket_len85, align 8
  %87 = load i32, i32* %lifetime, align 4
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate86 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %88, i32 0, i32 15
  %89 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate86, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %89, i32 0, i32 13
  store i32 %87, i32* %ticket_lifetime, align 8
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %90, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3608, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i64 0, i64 0)) #4
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate87 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %91, i32 0, i32 15
  %92 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate87, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %92, i32 0, i32 6
  store i64 0, i64* %id_len, align 8
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %93, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3611, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.134, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then77, %if.then45, %if.then40, %if.then10, %if.then2, %if.then
  %94 = load i32, i32* %retval, align 4
  ret i32 %94
}

declare dso_local i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_parse_finished(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, ...) #1

declare dso_local void @mbedtls_ssl_handshake_wrapup(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %cur, i8* noundef %end, i64 noundef %need) #0 {
entry:
  %cur.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %need.addr = alloca i64, align 8
  store i8* %cur, i8** %cur.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  %0 = load i8*, i8** %cur.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i64, i64* %need.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8*, i8** %cur.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp ugt i64 %2, %sub.ptr.sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_hello_verify_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p = alloca i8*, align 8
  %dtls_legacy_version = alloca i16, align 2
  %cookie_len = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 29
  %1 = load i8*, i8** %in_msg, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %2) #4
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** %p, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1132, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0)) #4
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %4) #4
  %add = add i64 %call1, 3
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 32
  %6 = load i64, i64* %in_msglen, align 8
  %cmp = icmp ugt i64 %add, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1141, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0)) #4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i8*, i8** %p, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1153, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8* noundef %10, i64 noundef 2) #4
  %11 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i16
  %conv3 = zext i16 %conv to i32
  %shl = shl i32 %conv3, 8
  %13 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %14 to i16
  %conv6 = zext i16 %conv5 to i32
  %or = or i32 %shl, %conv6
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %dtls_legacy_version, align 2
  %15 = load i8*, i8** %p, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr8, i8** %p, align 8
  %16 = load i16, i16* %dtls_legacy_version, align 2
  %conv9 = zext i16 %16 to i32
  %cmp10 = icmp ne i32 %conv9, 65277
  br i1 %cmp10, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %17 = load i16, i16* %dtls_legacy_version, align 2
  %conv12 = zext i16 %17 to i32
  %cmp13 = icmp ne i32 %conv12, 65279
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1164, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0)) #4
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call16 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %19, i8 noundef zeroext 2, i8 noundef zeroext 70) #4
  store i32 -28288, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.end
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %cookie_len, align 1
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 29
  %23 = load i8*, i8** %in_msg18, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 32
  %25 = load i64, i64* %in_msglen19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %23, i64 %25
  %26 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i8, i8* %cookie_len, align 1
  %conv21 = zext i8 %27 to i64
  %cmp22 = icmp slt i64 %sub.ptr.sub, %conv21
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end17
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1176, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0)) #4
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call25 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %29, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %cookie_len, align 1
  %conv27 = zext i8 %32 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %30, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1181, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef %31, i64 noundef %conv27) #4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 29
  %35 = load i8*, i8** %cookie, align 8
  call void @free(i8* noundef %35) #5
  %36 = load i8, i8* %cookie_len, align 1
  %conv28 = zext i8 %36 to i64
  %call29 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %conv28) #5
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 16
  %38 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake30, align 8
  %cookie31 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %38, i32 0, i32 29
  store i8* %call29, i8** %cookie31, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 16
  %40 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake32, align 8
  %cookie33 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %40, i32 0, i32 29
  %41 = load i8*, i8** %cookie33, align 8
  %cmp34 = icmp eq i8* %41, null
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end26
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %43 = load i8, i8* %cookie_len, align 1
  %conv37 = zext i8 %43 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1188, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv37) #4
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end26
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 16
  %45 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake39, align 8
  %cookie40 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %45, i32 0, i32 29
  %46 = load i8*, i8** %cookie40, align 8
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %cookie_len, align 1
  %conv41 = zext i8 %48 to i64
  %call42 = call i8* @memcpy(i8* noundef %46, i8* noundef %47, i64 noundef %conv41) #5
  %49 = load i8, i8* %cookie_len, align 1
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake43 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 16
  %51 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake43, align 8
  %verify_cookie_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %51, i32 0, i32 30
  store i8 %49, i8* %verify_cookie_len, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 1
  store i32 1, i32* %state, align 8
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_reset_checksum(%struct.mbedtls_ssl_context* noundef %53) #4
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef %54) #4
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1201, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i64 0, i64 0)) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then36, %if.then24, %if.then15, %if.then
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i64, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 3
  %2 = load i8, i8* %transport, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 12, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 4, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

declare dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local zeroext i16 @mbedtls_ssl_read_version(i8* noundef, i32 noundef) #1

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #1

declare dso_local void @mbedtls_ssl_optimize_checksum(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_ciphersuite_t* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

declare dso_local i32 @mbedtls_ssl_validate_ciphersuite(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_ciphersuite_t* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_renegotiation_info(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 2
  %1 = load i32, i32* %renego_status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %len.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 61
  %4 = load i64, i64* %verify_data_len, align 8
  %mul = mul i64 %4, 2
  %add = add i64 1, %mul
  %cmp1 = icmp ne i64 %2, %add
  br i1 %cmp1, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 61
  %8 = load i64, i64* %verify_data_len2, align 8
  %mul3 = mul i64 %8, 2
  %cmp4 = icmp ne i64 %conv, %mul3
  br i1 %cmp4, label %if.then19, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %9 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %own_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 62
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %own_verify_data, i64 0, i64 0
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 61
  %12 = load i64, i64* %verify_data_len7, align 8
  %call = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr, i8* noundef %arraydecay, i64 noundef %12) #4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then19, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %13 = load i8*, i8** %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 61
  %15 = load i64, i64* %verify_data_len12, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr11, i64 %15
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %peer_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 63
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %peer_verify_data, i64 0, i64 0
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 61
  %18 = load i64, i64* %verify_data_len15, align 8
  %call16 = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr13, i8* noundef %arraydecay14, i64 noundef %18) #4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %if.then
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #4
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call20 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %20, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false10
  br label %if.end31

if.else:                                          ; preds = %entry
  %21 = load i64, i64* %len.addr, align 8
  %cmp21 = icmp ne i64 %21, 1
  br i1 %cmp21, label %if.then28, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else
  %22 = load i8*, i8** %buf.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %lor.lhs.false23, %if.else
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 671, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0)) #4
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call29 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %25, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %lor.lhs.false23
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 60
  store i32 1, i32* %secure_renegotiation, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then28, %if.then19
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 6
  %2 = load i8, i8* %mfl_code, align 4
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ne i64 %3, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf6, align 8
  %mfl_code7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 6
  %8 = load i8, i8* %mfl_code7, align 4
  %conv8 = zext i8 %8 to i32
  %cmp9 = icmp ne i32 %conv5, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i64 0, i64 0)) #4
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %10, i8 noundef zeroext 2, i8 noundef zeroext 47) #4
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 7
  %2 = load i8, i8* %encrypt_then_mac, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ne i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0)) #4
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 110) #4
  store i32 -29952, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %encrypt_then_mac4 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 14
  store i32 1, i32* %encrypt_then_mac4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 8
  %2 = load i8, i8* %extended_ms, align 2
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ne i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i64 0, i64 0)) #4
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 110) #4
  store i32 -29952, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %extended_ms4 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 6
  store i8 1, i8* %extended_ms4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %session_tickets = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 11
  %2 = load i8, i8* %session_tickets, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ne i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0)) #4
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 110) #4
  store i32 -29952, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 4
  store i8 1, i8* %new_session_ticket, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %list_size = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = sext i32 %add to i64
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ne i64 %conv1, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #4
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %7 to i64
  store i64 %conv5, i64* %list_size, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %9 = load i64, i64* %list_size, align 8
  %cmp6 = icmp ugt i64 %9, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %while.body
  %12 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %lor.lhs.false12, %while.body
  %14 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx18, align 1
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 16
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 20
  %point_format = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %ecdh_ctx, i32 0, i32 0
  store i8 %15, i8* %point_format, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv20) #4
  store i32 0, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false12
  %21 = load i64, i64* %list_size, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %list_size, align 8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 889, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i64 0, i64 0)) #4
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call22 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %24, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_alpn_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %list_len = alloca i64, align 8
  %name_len = alloca i64, align 8
  %p = alloca i8**, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %alpn_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 48
  %2 = load i8**, i8*** %alpn_list, align 8
  %cmp = icmp eq i8** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 943, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0)) #4
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 110) #4
  store i32 -29952, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ult i64 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %6, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 %conv, 8
  %9 = load i8*, i8** %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %or = or i32 %shl, %conv6
  %conv7 = sext i32 %or to i64
  store i64 %conv7, i64* %list_len, align 8
  %11 = load i64, i64* %list_len, align 8
  %12 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %12, 2
  %cmp8 = icmp ne i64 %11, %sub
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %13, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end4
  %14 = load i8*, i8** %buf.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %15 to i64
  store i64 %conv14, i64* %name_len, align 8
  %16 = load i64, i64* %name_len, align 8
  %17 = load i64, i64* %list_len, align 8
  %sub15 = sub i64 %17, 1
  %cmp16 = icmp ne i64 %16, %sub15
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call19 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %18, i8 noundef zeroext 2, i8 noundef zeroext 50) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end12
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 0
  %20 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf21, align 8
  %alpn_list22 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %20, i32 0, i32 48
  %21 = load i8**, i8*** %alpn_list22, align 8
  store i8** %21, i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %22 = load i8**, i8*** %p, align 8
  %23 = load i8*, i8** %22, align 8
  %cmp23 = icmp ne i8* %23, null
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %name_len, align 8
  %25 = load i8**, i8*** %p, align 8
  %26 = load i8*, i8** %25, align 8
  %call25 = call i64 @strlen(i8* noundef %26) #6
  %cmp26 = icmp eq i64 %24, %call25
  br i1 %cmp26, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %27 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8**, i8*** %p, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %name_len, align 8
  %call28 = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef %29, i64 noundef %30) #6
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  %31 = load i8**, i8*** %p, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 57
  store i8* %32, i8** %alpn_chosen, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %34 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0)) #4
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call33 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %36, i8 noundef zeroext 2, i8 noundef zeroext 40) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then31, %if.then18, %if.then10, %if.then2, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

declare dso_local i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_reset_checksum(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_ecdh_params_from_cert(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %peer_key = alloca %struct.mbedtls_ecp_keypair*, align 8
  %peer_pk = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 15
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %1, i32 0, i32 9
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2123, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 15
  %5 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate1, align 8
  %peer_cert2 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %5, i32 0, i32 9
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert2, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %6, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %peer_pk, align 8
  %7 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %call = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %7, i32 noundef 2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2133, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0)) #4
  store i32 -27904, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %10 = bitcast %struct.mbedtls_pk_context* %9 to { %struct.mbedtls_pk_info_t*, i8* }*
  %11 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %10, i32 0, i32 0
  %12 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %11, align 8
  %13 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %10, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %call5 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %12, i8* %14) #4
  store %struct.mbedtls_ecp_keypair* %call5, %struct.mbedtls_ecp_keypair** %peer_key, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 16
  %16 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %16, i32 0, i32 20
  %17 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %peer_key, align 8
  %call6 = call i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, %struct.mbedtls_ecp_keypair* noundef %17, i32 noundef 1) #4
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2178, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i64 0, i64 0), i32 noundef %19) #4
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call10 = call i32 @ssl_check_server_ecdh_params(%struct.mbedtls_ssl_context* noundef %21) #4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2184, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i64 0, i64 0)) #4
  store i32 -31232, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_psk_hint(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i16, align 2
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1938, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.84, i64 0, i64 0)) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %conv, 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %10 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %len, align 2
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr, i8** %11, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %15 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %16 = load i16, i16* %len, align 2
  %conv7 = zext i16 %16 to i64
  %cmp8 = icmp slt i64 %sub.ptr.sub6, %conv7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1947, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.84, i64 0, i64 0)) #4
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %18 = load i16, i16* %len, align 2
  %conv12 = zext i16 %18 to i32
  %19 = load i8**, i8*** %p.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %idx.ext = sext i32 %conv12 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr13, i8** %19, align 8
  store i32 0, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_dh_params(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %dhm_actual_bitlen = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 19
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_dhm_read_params(%struct.mbedtls_dhm_context* noundef %dhm_ctx, i8** noundef %2, i8* noundef %3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1760, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0), i32 noundef %5) #4
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %dhm_ctx2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 19
  %call3 = call i64 @mbedtls_dhm_get_bitlen(%struct.mbedtls_dhm_context* noundef %dhm_ctx2) #4
  store i64 %call3, i64* %dhm_actual_bitlen, align 8
  %9 = load i64, i64* %dhm_actual_bitlen, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %dhm_min_bitlen = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 55
  %12 = load i32, i32* %dhm_min_bitlen, align 4
  %conv = zext i32 %12 to i64
  %cmp4 = icmp ult i64 %9, %conv
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %14 = load i64, i64* %dhm_actual_bitlen, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf7, align 8
  %dhm_min_bitlen8 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 55
  %17 = load i32, i32* %dhm_min_bitlen8, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1769, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.86, i64 0, i64 0), i64 noundef %14, i32 noundef %17) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 16
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %dhm_ctx11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 19
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx11, i32 0, i32 0
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1773, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P) #4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 16
  %23 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake12, align 8
  %dhm_ctx13 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %23, i32 0, i32 19
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx13, i32 0, i32 1
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1774, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), %struct.mbedtls_mpi* noundef %G) #4
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 16
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake14, align 8
  %dhm_ctx15 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 19
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx15, i32 0, i32 4
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1775, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), %struct.mbedtls_mpi* noundef %GY) #4
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then6, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_ecdh_params(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 20
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, i8** noundef %2, i8* noundef %3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1898, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i32 noundef %5) #4
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i32 @ssl_check_server_ecdh_params(%struct.mbedtls_ssl_context* noundef %7) #4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1909, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i64 0, i64 0)) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_uses_server_signature(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_signature_algorithm(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end, i32* noundef %md_alg, i32* noundef %pk_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32*, align 8
  %pk_alg.addr = alloca i32*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32* %pk_alg, i32** %pk_alg.addr, align 8
  %0 = load i32*, i32** %md_alg.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32*, i32** %pk_alg.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %call = call i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %7) #4
  %8 = load i32*, i32** %md_alg.addr, align 8
  store i32 %call, i32* %8, align 4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx3, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2071, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx5, align 1
  %call6 = call i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext %15) #4
  %16 = load i32*, i32** %pk_alg.addr, align 8
  store i32 %call6, i32* %16, align 4
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %20 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2082, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv11) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %24 to i16
  %conv15 = zext i16 %conv14 to i32
  %shl = shl i32 %conv15, 8
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i16
  %conv18 = zext i16 %conv17 to i32
  %or = or i32 %shl, %conv18
  %conv19 = trunc i32 %or to i16
  %call20 = call i32 @mbedtls_ssl_sig_alg_is_offered(%struct.mbedtls_ssl_context* noundef %21, i16 noundef zeroext %conv19) #4
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end12
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load i8**, i8*** %p.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx22, align 8
  %31 = load i8, i8* %30, align 1
  %conv23 = zext i8 %31 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2092, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv23) #4
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end12
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %35 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %32, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2097, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv26) #4
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %37 = load i8**, i8*** %p.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %39 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %36, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2099, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv28) #4
  %40 = load i8**, i8*** %p.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %add.ptr29, i8** %40, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then21, %if.then9, %if.then2, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef) #1

declare dso_local i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_pk_verify_restartable(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_keypair*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #4
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_ecp_keypair*
  store %struct.mbedtls_ecp_keypair* %4, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %retval, align 8
  ret %struct.mbedtls_ecp_keypair* %5
}

declare dso_local i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef, %struct.mbedtls_ecp_keypair* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_server_ecdh_params(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %grp_id = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 20
  %grp_id1 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %ecdh_ctx, i32 0, i32 1
  %2 = load i32, i32* %grp_id1, align 4
  store i32 %2, i32* %grp_id, align 4
  %3 = load i32, i32* %grp_id, align 4
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %3) #4
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %4 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_curve_info* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1865, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %7 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %7, i32 0, i32 3
  %8 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1869, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i64 0, i64 0), i8* noundef %8) #4
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %grp_id, align 4
  %call2 = call i32 @mbedtls_ssl_check_curve(%struct.mbedtls_ssl_context* noundef %9, i32 noundef %10) #4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %ecdh_ctx7 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1875, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx7, i32 noundef 1) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_check_curve(%struct.mbedtls_ssl_context* noundef, i32 noundef) #1

declare dso_local void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.mbedtls_ecdh_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_dhm_read_params(%struct.mbedtls_dhm_context* noundef, i8** noundef, i8* noundef) #1

declare dso_local i64 @mbedtls_dhm_get_bitlen(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_ecdh_read_params(%struct.mbedtls_ecdh_context* noundef, i8** noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext) #1

declare dso_local i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_sig_alg_is_offered(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %proposed_sig_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %proposed_sig_alg.addr = alloca i16, align 2
  %sig_alg = alloca i16*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i16 %proposed_sig_alg, i16* %proposed_sig_alg.addr, align 2
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i8* @mbedtls_ssl_get_sig_algs(%struct.mbedtls_ssl_context* noundef %0) #4
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %sig_alg, align 8
  %2 = load i16*, i16** %sig_alg, align 8
  %cmp = icmp eq i16* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i16*, i16** %sig_alg, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %sig_alg, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = zext i16 %6 to i32
  %7 = load i16, i16* %proposed_sig_alg.addr, align 2
  %conv4 = zext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %8 = load i16*, i16** %sig_alg, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr, i16** %sig_alg, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_ssl_get_sig_algs(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_handshake_params* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %sig_algs_heap_allocated = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 9
  %4 = load i8, i8* %sig_algs_heap_allocated, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %sig_algs = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 18
  %7 = load i16*, i16** %sig_algs, align 8
  %cmp6 = icmp ne i16* %7, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake8, align 8
  %sig_algs9 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 18
  %10 = load i16*, i16** %sig_algs9, align 8
  %11 = bitcast i16* %10 to i8*
  store i8* %11, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %sig_algs10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 39
  %14 = load i16*, i16** %sig_algs10, align 8
  %15 = bitcast i16* %14 to i8*
  store i8* %15, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i8*, i8** %retval, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_x509_get_name(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #1

declare dso_local i32 @mbedtls_x509_dn_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_named_data* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

declare dso_local i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef) #1

declare dso_local i32 @mbedtls_dhm_make_public(%struct.mbedtls_dhm_context* noundef, i32 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecdh_make_public(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_encrypted_pms(%struct.mbedtls_ssl_context* noundef %ssl, i64 noundef %offset, i64* noundef %olen, i64 noundef %pms_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %offset.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %pms_offset.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len_bytes = alloca i64, align 8
  %p = alloca i8*, align 8
  %peer_pk = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %pms_offset, i64* %pms_offset.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 2, i64* %len_bytes, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 46
  %arraydecay = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  %2 = load i64, i64* %pms_offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %2
  store i8* %add.ptr, i8** %p, align 8
  %3 = load i64, i64* %offset.addr, align 8
  %4 = load i64, i64* %len_bytes, align 8
  %add = add i64 %3, %4
  %cmp = icmp ugt i64 %add, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1980, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i64 0, i64 0)) #4
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 3
  %9 = load i8, i8* %transport, align 1
  %conv = zext i8 %9 to i32
  call void @mbedtls_ssl_write_version(i8* noundef %6, i32 noundef %conv, i32 noundef 771) #4
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 17
  %12 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 18
  %15 = load i8*, i8** %p_rng, align 8
  %16 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %16, i64 2
  %call = call i32 %12(i8* noundef %15, i8* noundef %add.ptr3, i64 noundef 46) #4
  store i32 %call, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %18 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1996, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0), i32 noundef %18) #4
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 16
  %21 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake8, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %21, i32 0, i32 10
  store i64 48, i64* %pmslen, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 15
  %23 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %23, i32 0, i32 9
  %24 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp9 = icmp eq %struct.mbedtls_x509_crt* %24, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2008, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0)) #4
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 15
  %27 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate13, align 8
  %peer_cert14 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %27, i32 0, i32 9
  %28 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert14, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %28, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %peer_pk, align 8
  %29 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %call15 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %29, i32 noundef 1) #4
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %30, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2019, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.122, i64 0, i64 0)) #4
  store i32 -27904, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %31 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %32 = load i8*, i8** %p, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake18, align 8
  %pmslen19 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 10
  %35 = load i64, i64* %pmslen19, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 50
  %37 = load i8*, i8** %out_msg, align 8
  %38 = load i64, i64* %offset.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %37, i64 %38
  %39 = load i64, i64* %len_bytes, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 %39
  %40 = load i64*, i64** %olen.addr, align 8
  %41 = load i64, i64* %offset.addr, align 8
  %sub = sub i64 16384, %41
  %42 = load i64, i64* %len_bytes, align 8
  %sub22 = sub i64 %sub, %42
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 0
  %44 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf23, align 8
  %f_rng24 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %44, i32 0, i32 17
  %45 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng24, align 8
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 0
  %47 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf25, align 8
  %p_rng26 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %47, i32 0, i32 18
  %48 = load i8*, i8** %p_rng26, align 8
  %call27 = call i32 @mbedtls_pk_encrypt(%struct.mbedtls_pk_context* noundef %31, i8* noundef %32, i64 noundef %35, i8* noundef %add.ptr21, i64* noundef %40, i64 noundef %sub22, i32 (i8*, i8*, i64)* noundef %45, i8* noundef %48) #4
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end17
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %50 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %49, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2029, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.123, i64 0, i64 0), i32 noundef %50) #4
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end17
  %52 = load i64, i64* %len_bytes, align 8
  %cmp32 = icmp eq i64 %52, 2
  br i1 %cmp32, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.end31
  %53 = load i64*, i64** %olen.addr, align 8
  %54 = load i64, i64* %53, align 8
  %shr = lshr i64 %54, 8
  %and = and i64 %shr, 255
  %conv35 = trunc i64 %and to i8
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 50
  %56 = load i8*, i8** %out_msg36, align 8
  %57 = load i64, i64* %offset.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %conv35, i8* %arrayidx, align 1
  %58 = load i64*, i64** %olen.addr, align 8
  %59 = load i64, i64* %58, align 8
  %and37 = and i64 %59, 255
  %conv38 = trunc i64 %and37 to i8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 50
  %61 = load i8*, i8** %out_msg39, align 8
  %62 = load i64, i64* %offset.addr, align 8
  %add40 = add i64 %62, 1
  %arrayidx41 = getelementptr inbounds i8, i8* %61, i64 %add40
  store i8 %conv38, i8* %arrayidx41, align 1
  %63 = load i64*, i64** %olen.addr, align 8
  %64 = load i64, i64* %63, align 8
  %add42 = add i64 %64, 2
  store i64 %add42, i64* %63, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.end31
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then30, %if.then16, %if.then11, %if.then6, %if.then
  %65 = load i32, i32* %retval, align 4
  ret i32 %65
}

declare dso_local i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i32 noundef 1) #4
  ret i32 %call
}

declare dso_local void @mbedtls_ssl_write_version(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_pk_encrypt(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %key_cert = alloca %struct.mbedtls_ssl_key_cert*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_handshake_params* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %key_cert2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 24
  %4 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert2, align 8
  %cmp3 = icmp ne %struct.mbedtls_ssl_key_cert* %4, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %key_cert5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 24
  %7 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert5, align 8
  store %struct.mbedtls_ssl_key_cert* %7, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %key_cert6 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 35
  %10 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert6, align 8
  store %struct.mbedtls_ssl_key_cert* %10, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  %cmp7 = icmp eq %struct.mbedtls_ssl_key_cert* %11, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  %cert = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mbedtls_x509_crt* [ null, %cond.true ], [ %13, %cond.false ]
  ret %struct.mbedtls_x509_crt* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %key_cert = alloca %struct.mbedtls_ssl_key_cert*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_handshake_params* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %key_cert2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 24
  %4 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert2, align 8
  %cmp3 = icmp ne %struct.mbedtls_ssl_key_cert* %4, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %key_cert5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 24
  %7 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert5, align 8
  store %struct.mbedtls_ssl_key_cert* %7, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %key_cert6 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 35
  %10 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert6, align 8
  store %struct.mbedtls_ssl_key_cert* %10, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  %cmp7 = icmp eq %struct.mbedtls_ssl_key_cert* %11, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  %key = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %12, i32 0, i32 1
  %13 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mbedtls_pk_context* [ null, %cond.true ], [ %13, %cond.false ]
  ret %struct.mbedtls_pk_context* %cond
}

declare dso_local zeroext i8 @mbedtls_ssl_sig_from_pk(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_pk_sign_restartable(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
