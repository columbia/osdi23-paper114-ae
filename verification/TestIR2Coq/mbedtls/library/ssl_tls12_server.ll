; ModuleID = 'ssl_tls12_server.c'
source_filename = "ssl_tls12_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
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
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
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
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

@.str = private unnamed_addr constant [19 x i8] c"ssl_tls12_server.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"server state: %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"handshake: done\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"=> parse client hello\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_fetch_input\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"record header\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"client hello, message type: %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"bad client hello message\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"client hello, message len.: %d\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"client hello, protocol version: [%d:%d]\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"replayed record, discarding\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"record contents\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"client hello v3, handshake type: %d\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"client hello v3, handshake len.: %u\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"bad client hello message: %u != 0\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"bad client hello message: %u != %u + %u\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"bad client hello message_seq: %u (expected %u)\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"fragment_offset=%u fragment_length=%u length=%u\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"ClientHello fragmentation not supported\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"client hello, version\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"server only supports TLS 1.2\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"client hello, random bytes\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"client hello, session id\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"client hello, cookie\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"cookie verification failed\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"cookie verification passed\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"cookie verification skipped\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"client hello, ciphersuitelist\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"client hello, compression\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"client hello extensions\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"found ServerName extension\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"found renegotiation extension\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"found signature_algorithms extension\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"found supported elliptic curves extension\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"found supported point formats extension\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"found max fragment length extension\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"found encrypt then mac extension\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"found extended master secret extension\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"found session ticket extension\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"found alpn extension\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"unknown extension found: %u (ignoring)\00", align 1
@__const.ssl_parse_client_hello.default_sig_algs = private unnamed_addr constant [3 x i16] [i16 515, i16 513, i16 0], align 2
@.str.42 = private unnamed_addr constant [39 x i8] c"received TLS_EMPTY_RENEGOTIATION_INFO \00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"received RENEGOTIATION SCSV during renegotiation\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"legacy renegotiation, breaking off handshake\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"renegotiation_info extension missing (secure)\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"legacy renegotiation not allowed\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"renegotiation_info extension present (legacy)\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"f_cert_cb\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"got ciphersuites in common, but none of them usable\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"got no ciphersuites in common\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"selected ciphersuite: %s\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"client hello v3, signature_algorithm ext: %u\00", align 1
@.str.53 = private unnamed_addr constant [65 x i8] c"no hash algorithm for signature algorithm %u - should not happen\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"<= parse client hello\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"non-matching renegotiation info\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"non-zero length renegotiation info\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"point format selected: %d\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"ticket length: %zu\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"ticket rejected: renegotiating\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"ticket is not authentic\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"ticket is expired\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_ticket_parse\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"session successfully restored from ticket\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"trying ciphersuite: %#04x (%s)\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"ciphersuite mismatch: version\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"ciphersuite mismatch: no common elliptic curve\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"ciphersuite mismatch: no pre-shared key\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"ciphersuite mismatch: no suitable certificate\00", align 1
@.str.70 = private unnamed_addr constant [76 x i8] c"ciphersuite mismatch: no suitable hash algorithm for signature algorithm %u\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"ciphersuite requires certificate\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"server has no certificate\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"candidate certificate chain, certificate\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"certificate mismatch: key type\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"certificate mismatch: (extended) key usage extension\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"certificate mismatch: elliptic curve\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"selected certificate chain, certificate\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"=> write server hello\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"client hello was not authenticated\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"<= write server hello\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"no RNG provided\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"server hello, chosen version: [%d:%d]\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"server hello, current time: %lld\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"server hello, random bytes\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_derive_keys\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"server hello, session id len.: %zu\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"server hello, session id\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"%s session has been resumed\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"server hello, chosen ciphersuite: %s\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"server hello, compress alg.: 0x%02X\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"server hello, total extension length: %zu\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"=> write hello verify request\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"server version\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"inconsistent cookie callbacks\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"f_cookie_write\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"cookie sent\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"mbedtls_ssl_flight_transmit\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"<= write hello verify request\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"session successfully restored from cache\00", align 1
@.str.103 = private unnamed_addr constant [45 x i8] c"server hello, secure renegotiation extension\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"server hello, max_fragment_length extension\00", align 1
@.str.105 = private unnamed_addr constant [48 x i8] c"server hello, adding encrypt then mac extension\00", align 1
@.str.106 = private unnamed_addr constant [54 x i8] c"server hello, adding extended master secret extension\00", align 1
@.str.107 = private unnamed_addr constant [46 x i8] c"server hello, adding session ticket extension\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"server hello, supported_point_formats extension\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"=> write server key exchange\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"ssl_get_ecdh_params_from_cert\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"<= skip write server key exchange\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"<= write server key exchange (pending)\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"my signature\00", align 1
@.str.114 = private unnamed_addr constant [29 x i8] c"<= write server key exchange\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"got no server private key\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"server key not ECDH capable\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"mbedtls_ecdh_get_params\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"no DH parameters set\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"mbedtls_dhm_set_group\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_make_params\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"DHM: X \00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"DHM: P \00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"DHM: G \00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"DHM: GX\00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"no matching curve for ECDHE\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"ECDHE curve: %s\00", align 1
@.str.127 = private unnamed_addr constant [23 x i8] c"mbedtls_ecp_group_load\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_make_params\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"pick hash algorithm %u for signing\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"parameters hash\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"got no private key\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"mbedtls_pk_sign\00", align 1
@.str.133 = private unnamed_addr constant [29 x i8] c"=> write certificate request\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"<= skip write certificate request\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"skipping CAs: buffer too short\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"requested DN\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"<= write certificate request\00", align 1
@.str.138 = private unnamed_addr constant [27 x i8] c"=> write server hello done\00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"<= write server hello done\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"=> parse client key exchange\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@.str.142 = private unnamed_addr constant [32 x i8] c"bad client key exchange message\00", align 1
@.str.143 = private unnamed_addr constant [27 x i8] c"ssl_parse_client_dh_public\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"bad client key exchange\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_calc_secret\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"DHM: K \00", align 1
@.str.147 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_read_public\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_calc_secret\00", align 1
@.str.149 = private unnamed_addr constant [30 x i8] c"ssl_parse_client_psk_identity\00", align 1
@.str.150 = private unnamed_addr constant [33 x i8] c"mbedtls_ssl_psk_derive_premaster\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"ssl_parse_encrypted_pms\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"ssl_parse_parse_encrypted_pms_secret\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"<= parse client key exchange\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_read_public\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"DHM: GY\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"got no pre-shared key\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"Unknown PSK identity\00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"got no RSA private key\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"=> parse certificate verify\00", align 1
@.str.160 = private unnamed_addr constant [33 x i8] c"<= skip parse certificate verify\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"bad certificate verify message\00", align 1
@.str.162 = private unnamed_addr constant [58 x i8] c"peer not adhering to requested sig_alg for verify message\00", align 1
@.str.163 = private unnamed_addr constant [31 x i8] c"sig_alg doesn't match cert key\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"mbedtls_pk_verify\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"<= parse certificate verify\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"=> write new session ticket\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_ticket_write\00", align 1
@.str.168 = private unnamed_addr constant [28 x i8] c"<= write new session ticket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_client_transport_id(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %info, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %info.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  %2 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 58
  %4 = load i8*, i8** %cli_id, align 8
  call void @free(i8* noundef %4) #4
  %5 = load i64, i64* %ilen.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 58
  store i8* %call, i8** %cli_id2, align 8
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 58
  %8 = load i8*, i8** %cli_id7, align 8
  %9 = load i8*, i8** %info.addr, align 8
  %10 = load i64, i64* %ilen.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10) #4
  %11 = load i64, i64* %ilen.addr, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 59
  store i64 %11, i64* %cli_id_len, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_dtls_cookies(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8**, i8*, i8*, i64)* noundef %f_cookie_write, i32 (i8*, i8*, i64, i8*, i64)* noundef %f_cookie_check, i8* noundef %p_cookie) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_cookie_write.addr = alloca i32 (i8*, i8**, i8*, i8*, i64)*, align 8
  %f_cookie_check.addr = alloca i32 (i8*, i8*, i64, i8*, i64)*, align 8
  %p_cookie.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, i8**, i8*, i8*, i64)* %f_cookie_write, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write.addr, align 8
  store i32 (i8*, i8*, i64, i8*, i64)* %f_cookie_check, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check.addr, align 8
  store i8* %p_cookie, i8** %p_cookie.addr, align 8
  %0 = load i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_cookie_write1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 28
  store i32 (i8*, i8**, i8*, i8*, i64)* %0, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write1, align 8
  %2 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_cookie_check2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 29
  store i32 (i8*, i8*, i64, i8*, i64)* %2, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check2, align 8
  %4 = load i8*, i8** %p_cookie.addr, align 8
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_cookie3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 30
  store i8* %4, i8** %p_cookie3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handshake_server_step(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 1
  %2 = load i32, i32* %state, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4322, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2) #5
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 1
  %4 = load i32, i32* %state1, align 8
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 18, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 5, label %sw.bb11
    i32 6, label %sw.bb13
    i32 7, label %sw.bb15
    i32 8, label %sw.bb17
    i32 9, label %sw.bb19
    i32 10, label %sw.bb21
    i32 11, label %sw.bb23
    i32 12, label %sw.bb25
    i32 13, label %sw.bb29
    i32 14, label %sw.bb31
    i32 15, label %sw.bb33
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 1
  store i32 1, i32* %state2, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_parse_client_hello(%struct.mbedtls_ssl_context* noundef %6) #5
  store i32 %call, i32* %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 -27264, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call6 = call i32 @ssl_write_server_hello(%struct.mbedtls_ssl_context* noundef %7) #5
  store i32 %call6, i32* %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @mbedtls_ssl_write_certificate(%struct.mbedtls_ssl_context* noundef %8) #5
  store i32 %call8, i32* %ret, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call10 = call i32 @ssl_write_server_key_exchange(%struct.mbedtls_ssl_context* noundef %9) #5
  store i32 %call10, i32* %ret, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call12 = call i32 @ssl_write_certificate_request(%struct.mbedtls_ssl_context* noundef %10) #5
  store i32 %call12, i32* %ret, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i32 @ssl_write_server_hello_done(%struct.mbedtls_ssl_context* noundef %11) #5
  store i32 %call14, i32* %ret, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call16 = call i32 @mbedtls_ssl_parse_certificate(%struct.mbedtls_ssl_context* noundef %12) #5
  store i32 %call16, i32* %ret, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call18 = call i32 @ssl_parse_client_key_exchange(%struct.mbedtls_ssl_context* noundef %13) #5
  store i32 %call18, i32* %ret, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call20 = call i32 @ssl_parse_certificate_verify(%struct.mbedtls_ssl_context* noundef %14) #5
  store i32 %call20, i32* %ret, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call22 = call i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %15) #5
  store i32 %call22, i32* %ret, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call24 = call i32 @mbedtls_ssl_parse_finished(%struct.mbedtls_ssl_context* noundef %16) #5
  store i32 %call24, i32* %ret, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 16
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 4
  %19 = load i8, i8* %new_session_ticket, align 4
  %conv = zext i8 %19 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb25
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call27 = call i32 @ssl_write_new_session_ticket(%struct.mbedtls_ssl_context* noundef %20) #5
  store i32 %call27, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb25
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call28 = call i32 @mbedtls_ssl_write_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %21) #5
  store i32 %call28, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call30 = call i32 @mbedtls_ssl_write_finished(%struct.mbedtls_ssl_context* noundef %22) #5
  store i32 %call30, i32* %ret, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4415, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 1
  store i32 15, i32* %state32, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_wrapup(%struct.mbedtls_ssl_context* noundef %25) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 1
  %28 = load i32, i32* %state34, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4424, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %28) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb31, %sw.bb29, %if.end, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb4
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_client_hello(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %got_common_suite = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ciph_offset = alloca i64, align 8
  %comp_offset = alloca i64, align 8
  %ext_offset = alloca i64, align 8
  %msg_len = alloca i64, align 8
  %ciph_len = alloca i64, align 8
  %sess_len = alloca i64, align 8
  %comp_len = alloca i64, align 8
  %ext_len = alloca i64, align 8
  %cookie_offset = alloca i64, align 8
  %cookie_len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %renegotiation_info_seen = alloca i32, align 4
  %handshake_failure = alloca i32, align 4
  %ciphersuites = alloca i32*, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %sig_hash_alg_ext_present = alloca i32, align 4
  %handshake_len = alloca i64, align 8
  %cli_msg_seq = alloca i32, align 4
  %cli_msg_seq154 = alloca i32, align 4
  %fragment_offset = alloca i64, align 8
  %fragment_length = alloca i64, align 8
  %length = alloca i64, align 8
  %ext_id = alloca i32, align 4
  %ext_size = alloca i32, align 4
  %received_sig_algs = alloca i16*, align 8
  %default_sig_algs = alloca [3 x i16], align 2
  %sig_alg = alloca i32, align 4
  %sig_hash = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %renegotiation_info_seen, align 4
  store i32 0, i32* %handshake_failure, align 4
  store i32 0, i32* %sig_hash_alg_ext_present, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 923, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %read_record_header

read_record_header:                               ; preds = %if.then44, %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 2
  %2 = load i32, i32* %renego_status, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %read_record_header
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef %3, i64 noundef 5) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 940, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef %5) #5
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %read_record_header
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 26
  %8 = load i8*, i8** %in_hdr, align 8
  store i8* %8, i8** %buf, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call i64 @mbedtls_ssl_in_hdr_len(%struct.mbedtls_ssl_context* noundef %11) #5
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef %10, i64 noundef %call4) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 959, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv) #5
  %15 = load i8*, i8** %buf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %16 to i32
  %cmp7 = icmp ne i32 %conv6, 22
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 963, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end3
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 27
  %20 = load i8*, i8** %in_len, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %21 to i32
  %shl = shl i32 %conv12, 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 27
  %23 = load i8*, i8** %in_len13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %24 to i32
  %or = or i32 %shl, %conv15
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 968, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 noundef %or) #5
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %26 = load i8*, i8** %buf, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  %28 = load i8*, i8** %buf, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 971, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv17, i32 noundef %conv19) #5
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 0
  %31 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %31, i32 0, i32 3
  %32 = load i8, i8* %transport, align 1
  %conv20 = zext i8 %32 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %if.end10
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 2
  %34 = load i32, i32* %renego_status23, align 4
  %cmp24 = icmp eq i32 %34, 0
  br i1 %cmp24, label %if.then26, label %if.end46

if.then26:                                        ; preds = %land.lhs.true
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 25
  %36 = load i8*, i8** %in_ctr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %37 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 25
  %39 = load i8*, i8** %in_ctr31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %40 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.then26
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 985, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 54
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 2
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 25
  %44 = load i8*, i8** %in_ctr39, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 2
  %call40 = call i8* @memcpy(i8* noundef %arrayidx38, i8* noundef %add.ptr, i64 noundef 6) #4
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call41 = call i32 @mbedtls_ssl_dtls_replay_check(%struct.mbedtls_ssl_context* noundef %45) #5
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %46, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 995, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #5
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 35
  store i64 0, i64* %next_record_offset, align 8
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 33
  store i64 0, i64* %in_left, align 8
  br label %read_record_header

if.end45:                                         ; preds = %if.end37
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_dtls_replay_update(%struct.mbedtls_ssl_context* noundef %49) #5
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true, %if.end10
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 27
  %51 = load i8*, i8** %in_len47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %52 to i32
  %shl50 = shl i32 %conv49, 8
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len51 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 27
  %54 = load i8*, i8** %in_len51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %55 to i32
  %or54 = or i32 %shl50, %conv53
  %conv55 = sext i32 %or54 to i64
  store i64 %conv55, i64* %msg_len, align 8
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %56, i32 0, i32 2
  %57 = load i32, i32* %renego_status56, align 4
  %cmp57 = icmp ne i32 %57, 0
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end46
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 38
  %59 = load i64, i64* %in_hslen, align 8
  store i64 %59, i64* %msg_len, align 8
  br label %if.end82

if.else:                                          ; preds = %if.end46
  %60 = load i64, i64* %msg_len, align 8
  %cmp60 = icmp ugt i64 %60, 16384
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %61, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1020, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.else
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call64 = call i64 @mbedtls_ssl_in_hdr_len(%struct.mbedtls_ssl_context* noundef %63) #5
  %64 = load i64, i64* %msg_len, align 8
  %add = add i64 %call64, %64
  %call65 = call i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef %62, i64 noundef %add) #5
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end63
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %66 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %65, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1027, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef %66) #5
  %67 = load i32, i32* %ret, align 4
  store i32 %67, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end63
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf70 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 0
  %69 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf70, align 8
  %transport71 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %69, i32 0, i32 3
  %70 = load i8, i8* %transport71, align 1
  %conv72 = zext i8 %70 to i32
  %cmp73 = icmp eq i32 %conv72, 1
  br i1 %cmp73, label %if.then75, label %if.else79

if.then75:                                        ; preds = %if.end69
  %71 = load i64, i64* %msg_len, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call76 = call i64 @mbedtls_ssl_in_hdr_len(%struct.mbedtls_ssl_context* noundef %72) #5
  %add77 = add i64 %71, %call76
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset78 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 35
  store i64 %add77, i64* %next_record_offset78, align 8
  br label %if.end81

if.else79:                                        ; preds = %if.end69
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left80 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %74, i32 0, i32 33
  store i64 0, i64* %in_left80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then75
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then59
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %75, i32 0, i32 29
  %76 = load i8*, i8** %in_msg, align 8
  store i8* %76, i8** %buf, align 8
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %78 = load i8*, i8** %buf, align 8
  %79 = load i64, i64* %msg_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %77, i32 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1042, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef %78, i64 noundef %79) #5
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 16
  %81 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %81, i32 0, i32 12
  %82 = load void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  %83 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %84 = load i8*, i8** %buf, align 8
  %85 = load i64, i64* %msg_len, align 8
  call void %82(%struct.mbedtls_ssl_context* noundef %83, i8* noundef %84, i64 noundef %85) #5
  %86 = load i64, i64* %msg_len, align 8
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call83 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %87) #5
  %cmp84 = icmp ult i64 %86, %call83
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %88, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1056, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end82
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %90 = load i8*, i8** %buf, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %91 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %89, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1060, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv89) #5
  %92 = load i8*, i8** %buf, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %93 to i32
  %cmp92 = icmp ne i32 %conv91, 1
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end87
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %94, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1064, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.end87
  %95 = load i8*, i8** %buf, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %96 to i32
  %shl98 = shl i32 %conv97, 16
  %97 = load i8*, i8** %buf, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %98 to i32
  %shl101 = shl i32 %conv100, 8
  %or102 = or i32 %shl98, %shl101
  %99 = load i8*, i8** %buf, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %99, i64 3
  %100 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %100 to i32
  %or105 = or i32 %or102, %conv104
  %conv106 = zext i32 %or105 to i64
  store i64 %conv106, i64* %handshake_len, align 8
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %102 = load i64, i64* %handshake_len, align 8
  %conv107 = trunc i64 %102 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %101, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1070, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv107) #5
  %103 = load i8*, i8** %buf, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %104 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.end95
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %106 = load i8*, i8** %buf, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %107 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1077, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv114) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end95
  %108 = load i64, i64* %msg_len, align 8
  %109 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call116 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %109) #5
  %110 = load i64, i64* %handshake_len, align 8
  %add117 = add i64 %call116, %110
  %cmp118 = icmp ne i64 %108, %add117
  br i1 %cmp118, label %if.then120, label %if.end125

if.then120:                                       ; preds = %if.end115
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %112 = load i64, i64* %msg_len, align 8
  %conv121 = trunc i64 %112 to i32
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call122 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %113) #5
  %conv123 = trunc i64 %call122 to i32
  %114 = load i64, i64* %handshake_len, align 8
  %conv124 = trunc i64 %114 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %111, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1087, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv121, i32 noundef %conv123, i32 noundef %conv124) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.end115
  %115 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf126 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %115, i32 0, i32 0
  %116 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf126, align 8
  %transport127 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %116, i32 0, i32 3
  %117 = load i8, i8* %transport127, align 1
  %conv128 = zext i8 %117 to i32
  %cmp129 = icmp eq i32 %conv128, 1
  br i1 %cmp129, label %if.then131, label %if.end220

if.then131:                                       ; preds = %if.end125
  %118 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status132 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %118, i32 0, i32 2
  %119 = load i32, i32* %renego_status132, align 4
  %cmp133 = icmp eq i32 %119, 1
  br i1 %cmp133, label %if.then135, label %if.else153

if.then135:                                       ; preds = %if.then131
  %120 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg136 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %120, i32 0, i32 29
  %121 = load i8*, i8** %in_msg136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %121, i64 4
  %122 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %122 to i32
  %shl139 = shl i32 %conv138, 8
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg140 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %123, i32 0, i32 29
  %124 = load i8*, i8** %in_msg140, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %124, i64 5
  %125 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %125 to i32
  %or143 = or i32 %shl139, %conv142
  store i32 %or143, i32* %cli_msg_seq, align 4
  %126 = load i32, i32* %cli_msg_seq, align 4
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake144 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %127, i32 0, i32 16
  %128 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake144, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %128, i32 0, i32 32
  %129 = load i32, i32* %in_msg_seq, align 8
  %cmp145 = icmp ne i32 %126, %129
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.then135
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %131 = load i32, i32* %cli_msg_seq, align 4
  %132 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake148 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %132, i32 0, i32 16
  %133 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake148, align 8
  %in_msg_seq149 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %133, i32 0, i32 32
  %134 = load i32, i32* %in_msg_seq149, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %130, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1110, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 noundef %131, i32 noundef %134) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end150:                                        ; preds = %if.then135
  %135 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake151 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %135, i32 0, i32 16
  %136 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake151, align 8
  %in_msg_seq152 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %136, i32 0, i32 32
  %137 = load i32, i32* %in_msg_seq152, align 8
  %inc = add i32 %137, 1
  store i32 %inc, i32* %in_msg_seq152, align 8
  br label %if.end167

if.else153:                                       ; preds = %if.then131
  %138 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg155 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %138, i32 0, i32 29
  %139 = load i8*, i8** %in_msg155, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %139, i64 4
  %140 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %140 to i32
  %shl158 = shl i32 %conv157, 8
  %141 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg159 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %141, i32 0, i32 29
  %142 = load i8*, i8** %in_msg159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %142, i64 5
  %143 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %143 to i32
  %or162 = or i32 %shl158, %conv161
  store i32 %or162, i32* %cli_msg_seq154, align 4
  %144 = load i32, i32* %cli_msg_seq154, align 4
  %145 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake163 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %145, i32 0, i32 16
  %146 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake163, align 8
  %out_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %146, i32 0, i32 31
  store i32 %144, i32* %out_msg_seq, align 4
  %147 = load i32, i32* %cli_msg_seq154, align 4
  %add164 = add i32 %147, 1
  %148 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake165 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %148, i32 0, i32 16
  %149 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake165, align 8
  %in_msg_seq166 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %149, i32 0, i32 32
  store i32 %add164, i32* %in_msg_seq166, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.else153, %if.end150
  %150 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg168 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %150, i32 0, i32 29
  %151 = load i8*, i8** %in_msg168, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %151, i64 6
  %152 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %152 to i32
  %shl171 = shl i32 %conv170, 16
  %153 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg172 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %153, i32 0, i32 29
  %154 = load i8*, i8** %in_msg172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %154, i64 7
  %155 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %155 to i32
  %shl175 = shl i32 %conv174, 8
  %or176 = or i32 %shl171, %shl175
  %156 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg177 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %156, i32 0, i32 29
  %157 = load i8*, i8** %in_msg177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %157, i64 8
  %158 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %158 to i32
  %or180 = or i32 %or176, %conv179
  %conv181 = zext i32 %or180 to i64
  store i64 %conv181, i64* %fragment_offset, align 8
  %159 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg182 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %159, i32 0, i32 29
  %160 = load i8*, i8** %in_msg182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %160, i64 9
  %161 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %161 to i32
  %shl185 = shl i32 %conv184, 16
  %162 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg186 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %162, i32 0, i32 29
  %163 = load i8*, i8** %in_msg186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %163, i64 10
  %164 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %164 to i32
  %shl189 = shl i32 %conv188, 8
  %or190 = or i32 %shl185, %shl189
  %165 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg191 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %165, i32 0, i32 29
  %166 = load i8*, i8** %in_msg191, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %166, i64 11
  %167 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %167 to i32
  %or194 = or i32 %or190, %conv193
  %conv195 = zext i32 %or194 to i64
  store i64 %conv195, i64* %fragment_length, align 8
  %168 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg196 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %168, i32 0, i32 29
  %169 = load i8*, i8** %in_msg196, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %170 to i32
  %shl199 = shl i32 %conv198, 16
  %171 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg200 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %171, i32 0, i32 29
  %172 = load i8*, i8** %in_msg200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %172, i64 2
  %173 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %173 to i32
  %shl203 = shl i32 %conv202, 8
  %or204 = or i32 %shl199, %shl203
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg205 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %174, i32 0, i32 29
  %175 = load i8*, i8** %in_msg205, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %176 to i32
  %or208 = or i32 %or204, %conv207
  %conv209 = zext i32 %or208 to i64
  store i64 %conv209, i64* %length, align 8
  %177 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %178 = load i64, i64* %fragment_offset, align 8
  %conv210 = trunc i64 %178 to i32
  %179 = load i64, i64* %fragment_length, align 8
  %conv211 = trunc i64 %179 to i32
  %180 = load i64, i64* %length, align 8
  %conv212 = trunc i64 %180 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %177, i32 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1136, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv210, i32 noundef %conv211, i32 noundef %conv212) #5
  %181 = load i64, i64* %fragment_offset, align 8
  %cmp213 = icmp ne i64 %181, 0
  br i1 %cmp213, label %if.then218, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.end167
  %182 = load i64, i64* %length, align 8
  %183 = load i64, i64* %fragment_length, align 8
  %cmp216 = icmp ne i64 %182, %183
  br i1 %cmp216, label %if.then218, label %if.end219

if.then218:                                       ; preds = %lor.lhs.false215, %if.end167
  %184 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %184, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1139, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0)) #5
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end219:                                        ; preds = %lor.lhs.false215
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.end125
  %185 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call221 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %185) #5
  %186 = load i8*, i8** %buf, align 8
  %add.ptr222 = getelementptr inbounds i8, i8* %186, i64 %call221
  store i8* %add.ptr222, i8** %buf, align 8
  %187 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call223 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %187) #5
  %188 = load i64, i64* %msg_len, align 8
  %sub = sub i64 %188, %call223
  store i64 %sub, i64* %msg_len, align 8
  %189 = load i64, i64* %msg_len, align 8
  %cmp224 = icmp ult i64 %189, 38
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.end220
  %190 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %190, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1172, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end227:                                        ; preds = %if.end220
  %191 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %192 = load i8*, i8** %buf, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %191, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1179, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* noundef %192, i64 noundef 2) #5
  %193 = load i8*, i8** %buf, align 8
  %194 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf228 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %194, i32 0, i32 0
  %195 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf228, align 8
  %transport229 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %195, i32 0, i32 3
  %196 = load i8, i8* %transport229, align 1
  %conv230 = zext i8 %196 to i32
  %call231 = call zeroext i16 @mbedtls_ssl_read_version(i8* noundef %193, i32 noundef %conv230) #5
  %conv232 = zext i16 %call231 to i32
  %197 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %197, i32 0, i32 4
  store i32 %conv232, i32* %tls_version, align 4
  %198 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version233 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %198, i32 0, i32 4
  %199 = load i32, i32* %tls_version233, align 4
  %200 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %200, i32 0, i32 15
  %201 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %tls_version234 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %201, i32 0, i32 2
  store i32 %199, i32* %tls_version234, align 4
  %202 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version235 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %202, i32 0, i32 4
  %203 = load i32, i32* %tls_version235, align 4
  %cmp236 = icmp ne i32 %203, 771
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %if.end227
  %204 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %204, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1186, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #5
  %205 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call239 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %205, i8 noundef zeroext 2, i8 noundef zeroext 70) #5
  store i32 -28288, i32* %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.end227
  %206 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %207 = load i8*, i8** %buf, align 8
  %add.ptr241 = getelementptr inbounds i8, i8* %207, i64 2
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %206, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1195, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* noundef %add.ptr241, i64 noundef 32) #5
  %208 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake242 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %208, i32 0, i32 16
  %209 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake242, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %209, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %210 = load i8*, i8** %buf, align 8
  %add.ptr243 = getelementptr inbounds i8, i8* %210, i64 2
  %call244 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %add.ptr243, i64 noundef 32) #4
  %211 = load i8*, i8** %buf, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %211, i64 34
  %212 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %212 to i64
  store i64 %conv246, i64* %sess_len, align 8
  %213 = load i64, i64* %sess_len, align 8
  %cmp247 = icmp ugt i64 %213, 32
  br i1 %cmp247, label %if.then254, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %if.end240
  %214 = load i64, i64* %sess_len, align 8
  %add250 = add i64 %214, 34
  %add251 = add i64 %add250, 2
  %215 = load i64, i64* %msg_len, align 8
  %cmp252 = icmp ugt i64 %add251, %215
  br i1 %cmp252, label %if.then254, label %if.end256

if.then254:                                       ; preds = %lor.lhs.false249, %if.end240
  %216 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %216, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1207, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %217 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call255 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %217, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end256:                                        ; preds = %lor.lhs.false249
  %218 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %219 = load i8*, i8** %buf, align 8
  %add.ptr257 = getelementptr inbounds i8, i8* %219, i64 35
  %220 = load i64, i64* %sess_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %218, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1213, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i8* noundef %add.ptr257, i64 noundef %220) #5
  %221 = load i64, i64* %sess_len, align 8
  %222 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate258 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %222, i32 0, i32 15
  %223 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate258, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %223, i32 0, i32 6
  store i64 %221, i64* %id_len, align 8
  %224 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate259 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %224, i32 0, i32 15
  %225 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate259, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %225, i32 0, i32 7
  %arraydecay260 = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %call261 = call i8* @memset(i8* noundef %arraydecay260, i32 noundef 0, i64 noundef 32) #4
  %226 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate262 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %226, i32 0, i32 15
  %227 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate262, align 8
  %id263 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %227, i32 0, i32 7
  %arraydecay264 = getelementptr inbounds [32 x i8], [32 x i8]* %id263, i64 0, i64 0
  %228 = load i8*, i8** %buf, align 8
  %add.ptr265 = getelementptr inbounds i8, i8* %228, i64 35
  %229 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate266 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %229, i32 0, i32 15
  %230 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate266, align 8
  %id_len267 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %230, i32 0, i32 6
  %231 = load i64, i64* %id_len267, align 8
  %call268 = call i8* @memcpy(i8* noundef %arraydecay264, i8* noundef %add.ptr265, i64 noundef %231) #4
  %232 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf269 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %232, i32 0, i32 0
  %233 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf269, align 8
  %transport270 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %233, i32 0, i32 3
  %234 = load i8, i8* %transport270, align 1
  %conv271 = zext i8 %234 to i32
  %cmp272 = icmp eq i32 %conv271, 1
  br i1 %cmp272, label %if.then274, label %if.else318

if.then274:                                       ; preds = %if.end256
  %235 = load i64, i64* %sess_len, align 8
  %add275 = add i64 35, %235
  store i64 %add275, i64* %cookie_offset, align 8
  %236 = load i8*, i8** %buf, align 8
  %237 = load i64, i64* %cookie_offset, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %236, i64 %237
  %238 = load i8, i8* %arrayidx276, align 1
  %conv277 = zext i8 %238 to i64
  store i64 %conv277, i64* %cookie_len, align 8
  %239 = load i64, i64* %cookie_offset, align 8
  %add278 = add i64 %239, 1
  %240 = load i64, i64* %cookie_len, align 8
  %add279 = add i64 %add278, %240
  %add280 = add i64 %add279, 2
  %241 = load i64, i64* %msg_len, align 8
  %cmp281 = icmp ugt i64 %add280, %241
  br i1 %cmp281, label %if.then283, label %if.end285

if.then283:                                       ; preds = %if.then274
  %242 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %242, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1232, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %243 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call284 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %243, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end285:                                        ; preds = %if.then274
  %244 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %245 = load i8*, i8** %buf, align 8
  %246 = load i64, i64* %cookie_offset, align 8
  %add.ptr286 = getelementptr inbounds i8, i8* %245, i64 %246
  %add.ptr287 = getelementptr inbounds i8, i8* %add.ptr286, i64 1
  %247 = load i64, i64* %cookie_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %244, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1239, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* noundef %add.ptr287, i64 noundef %247) #5
  %248 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf288 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %248, i32 0, i32 0
  %249 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf288, align 8
  %f_cookie_check = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %249, i32 0, i32 29
  %250 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check, align 8
  %cmp289 = icmp ne i32 (i8*, i8*, i64, i8*, i64)* %250, null
  br i1 %cmp289, label %land.lhs.true291, label %if.else310

land.lhs.true291:                                 ; preds = %if.end285
  %251 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status292 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %251, i32 0, i32 2
  %252 = load i32, i32* %renego_status292, align 4
  %cmp293 = icmp eq i32 %252, 0
  br i1 %cmp293, label %if.then295, label %if.else310

if.then295:                                       ; preds = %land.lhs.true291
  %253 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf296 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %253, i32 0, i32 0
  %254 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf296, align 8
  %f_cookie_check297 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %254, i32 0, i32 29
  %255 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check297, align 8
  %256 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf298 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %256, i32 0, i32 0
  %257 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf298, align 8
  %p_cookie = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %257, i32 0, i32 30
  %258 = load i8*, i8** %p_cookie, align 8
  %259 = load i8*, i8** %buf, align 8
  %260 = load i64, i64* %cookie_offset, align 8
  %add.ptr299 = getelementptr inbounds i8, i8* %259, i64 %260
  %add.ptr300 = getelementptr inbounds i8, i8* %add.ptr299, i64 1
  %261 = load i64, i64* %cookie_len, align 8
  %262 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %262, i32 0, i32 58
  %263 = load i8*, i8** %cli_id, align 8
  %264 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %264, i32 0, i32 59
  %265 = load i64, i64* %cli_id_len, align 8
  %call301 = call i32 %255(i8* noundef %258, i8* noundef %add.ptr300, i64 noundef %261, i8* noundef %263, i64 noundef %265) #5
  %cmp302 = icmp ne i32 %call301, 0
  br i1 %cmp302, label %if.then304, label %if.else306

if.then304:                                       ; preds = %if.then295
  %266 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %266, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1252, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0)) #5
  %267 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake305 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %267, i32 0, i32 16
  %268 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake305, align 8
  %verify_cookie_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %268, i32 0, i32 30
  store i8 1, i8* %verify_cookie_len, align 8
  br label %if.end309

if.else306:                                       ; preds = %if.then295
  %269 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %269, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1257, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #5
  %270 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake307 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %270, i32 0, i32 16
  %271 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake307, align 8
  %verify_cookie_len308 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %271, i32 0, i32 30
  store i8 0, i8* %verify_cookie_len308, align 8
  br label %if.end309

if.end309:                                        ; preds = %if.else306, %if.then304
  br label %if.end315

if.else310:                                       ; preds = %land.lhs.true291, %if.end285
  %272 = load i64, i64* %cookie_len, align 8
  %cmp311 = icmp ne i64 %272, 0
  br i1 %cmp311, label %if.then313, label %if.end314

if.then313:                                       ; preds = %if.else310
  %273 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %273, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end314:                                        ; preds = %if.else310
  %274 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %274, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1272, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %if.end315

if.end315:                                        ; preds = %if.end314, %if.end309
  %275 = load i64, i64* %cookie_offset, align 8
  %add316 = add i64 %275, 1
  %276 = load i64, i64* %cookie_len, align 8
  %add317 = add i64 %add316, %276
  store i64 %add317, i64* %ciph_offset, align 8
  br label %if.end320

if.else318:                                       ; preds = %if.end256
  %277 = load i64, i64* %sess_len, align 8
  %add319 = add i64 35, %277
  store i64 %add319, i64* %ciph_offset, align 8
  br label %if.end320

if.end320:                                        ; preds = %if.else318, %if.end315
  %278 = load i8*, i8** %buf, align 8
  %279 = load i64, i64* %ciph_offset, align 8
  %add321 = add i64 %279, 0
  %arrayidx322 = getelementptr inbounds i8, i8* %278, i64 %add321
  %280 = load i8, i8* %arrayidx322, align 1
  %conv323 = zext i8 %280 to i32
  %shl324 = shl i32 %conv323, 8
  %281 = load i8*, i8** %buf, align 8
  %282 = load i64, i64* %ciph_offset, align 8
  %add325 = add i64 %282, 1
  %arrayidx326 = getelementptr inbounds i8, i8* %281, i64 %add325
  %283 = load i8, i8* %arrayidx326, align 1
  %conv327 = zext i8 %283 to i32
  %or328 = or i32 %shl324, %conv327
  %conv329 = sext i32 %or328 to i64
  store i64 %conv329, i64* %ciph_len, align 8
  %284 = load i64, i64* %ciph_len, align 8
  %cmp330 = icmp ult i64 %284, 2
  br i1 %cmp330, label %if.then341, label %lor.lhs.false332

lor.lhs.false332:                                 ; preds = %if.end320
  %285 = load i64, i64* %ciph_len, align 8
  %add333 = add i64 %285, 2
  %286 = load i64, i64* %ciph_offset, align 8
  %add334 = add i64 %add333, %286
  %add335 = add i64 %add334, 1
  %287 = load i64, i64* %msg_len, align 8
  %cmp336 = icmp ugt i64 %add335, %287
  br i1 %cmp336, label %if.then341, label %lor.lhs.false338

lor.lhs.false338:                                 ; preds = %lor.lhs.false332
  %288 = load i64, i64* %ciph_len, align 8
  %rem = urem i64 %288, 2
  %cmp339 = icmp ne i64 %rem, 0
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %lor.lhs.false338, %lor.lhs.false332, %if.end320
  %289 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %289, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1291, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %290 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call342 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %290, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end343:                                        ; preds = %lor.lhs.false338
  %291 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %292 = load i8*, i8** %buf, align 8
  %293 = load i64, i64* %ciph_offset, align 8
  %add.ptr344 = getelementptr inbounds i8, i8* %292, i64 %293
  %add.ptr345 = getelementptr inbounds i8, i8* %add.ptr344, i64 2
  %294 = load i64, i64* %ciph_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %291, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1298, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* noundef %add.ptr345, i64 noundef %294) #5
  %295 = load i64, i64* %ciph_offset, align 8
  %add346 = add i64 %295, 2
  %296 = load i64, i64* %ciph_len, align 8
  %add347 = add i64 %add346, %296
  store i64 %add347, i64* %comp_offset, align 8
  %297 = load i8*, i8** %buf, align 8
  %298 = load i64, i64* %comp_offset, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %297, i64 %298
  %299 = load i8, i8* %arrayidx348, align 1
  %conv349 = zext i8 %299 to i64
  store i64 %conv349, i64* %comp_len, align 8
  %300 = load i64, i64* %comp_len, align 8
  %cmp350 = icmp ult i64 %300, 1
  br i1 %cmp350, label %if.then360, label %lor.lhs.false352

lor.lhs.false352:                                 ; preds = %if.end343
  %301 = load i64, i64* %comp_len, align 8
  %cmp353 = icmp ugt i64 %301, 16
  br i1 %cmp353, label %if.then360, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %lor.lhs.false352
  %302 = load i64, i64* %comp_len, align 8
  %303 = load i64, i64* %comp_offset, align 8
  %add356 = add i64 %302, %303
  %add357 = add i64 %add356, 1
  %304 = load i64, i64* %msg_len, align 8
  %cmp358 = icmp ugt i64 %add357, %304
  br i1 %cmp358, label %if.then360, label %if.end362

if.then360:                                       ; preds = %lor.lhs.false355, %lor.lhs.false352, %if.end343
  %305 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %305, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1311, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %306 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call361 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %306, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end362:                                        ; preds = %lor.lhs.false355
  %307 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %308 = load i8*, i8** %buf, align 8
  %309 = load i64, i64* %comp_offset, align 8
  %add.ptr363 = getelementptr inbounds i8, i8* %308, i64 %309
  %add.ptr364 = getelementptr inbounds i8, i8* %add.ptr363, i64 1
  %310 = load i64, i64* %comp_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %307, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1318, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i8* noundef %add.ptr364, i64 noundef %310) #5
  %311 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate365 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %311, i32 0, i32 15
  %312 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate365, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %312, i32 0, i32 5
  store i32 0, i32* %compression, align 4
  %313 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf366 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %313, i32 0, i32 0
  %314 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf366, align 8
  %transport367 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %314, i32 0, i32 3
  %315 = load i8, i8* %transport367, align 1
  %conv368 = zext i8 %315 to i32
  %cmp369 = icmp eq i32 %conv368, 1
  br i1 %cmp369, label %if.then371, label %if.end374

if.then371:                                       ; preds = %if.end362
  %316 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate372 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %316, i32 0, i32 15
  %317 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate372, align 8
  %compression373 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %317, i32 0, i32 5
  store i32 0, i32* %compression373, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then371, %if.end362
  %318 = load i64, i64* %comp_offset, align 8
  %add375 = add i64 %318, 1
  %319 = load i64, i64* %comp_len, align 8
  %add376 = add i64 %add375, %319
  store i64 %add376, i64* %ext_offset, align 8
  %320 = load i64, i64* %msg_len, align 8
  %321 = load i64, i64* %ext_offset, align 8
  %cmp377 = icmp ugt i64 %320, %321
  br i1 %cmp377, label %if.then379, label %if.else402

if.then379:                                       ; preds = %if.end374
  %322 = load i64, i64* %msg_len, align 8
  %323 = load i64, i64* %ext_offset, align 8
  %add380 = add i64 %323, 2
  %cmp381 = icmp ult i64 %322, %add380
  br i1 %cmp381, label %if.then383, label %if.end385

if.then383:                                       ; preds = %if.then379
  %324 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %324, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1334, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %325 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call384 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %325, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end385:                                        ; preds = %if.then379
  %326 = load i8*, i8** %buf, align 8
  %327 = load i64, i64* %ext_offset, align 8
  %add386 = add i64 %327, 0
  %arrayidx387 = getelementptr inbounds i8, i8* %326, i64 %add386
  %328 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %328 to i32
  %shl389 = shl i32 %conv388, 8
  %329 = load i8*, i8** %buf, align 8
  %330 = load i64, i64* %ext_offset, align 8
  %add390 = add i64 %330, 1
  %arrayidx391 = getelementptr inbounds i8, i8* %329, i64 %add390
  %331 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %331 to i32
  %or393 = or i32 %shl389, %conv392
  %conv394 = sext i32 %or393 to i64
  store i64 %conv394, i64* %ext_len, align 8
  %332 = load i64, i64* %msg_len, align 8
  %333 = load i64, i64* %ext_offset, align 8
  %add395 = add i64 %333, 2
  %334 = load i64, i64* %ext_len, align 8
  %add396 = add i64 %add395, %334
  %cmp397 = icmp ne i64 %332, %add396
  br i1 %cmp397, label %if.then399, label %if.end401

if.then399:                                       ; preds = %if.end385
  %335 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %335, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1345, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %336 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call400 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %336, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end401:                                        ; preds = %if.end385
  br label %if.end403

if.else402:                                       ; preds = %if.end374
  store i64 0, i64* %ext_len, align 8
  br label %if.end403

if.end403:                                        ; preds = %if.else402, %if.end401
  %337 = load i8*, i8** %buf, align 8
  %338 = load i64, i64* %ext_offset, align 8
  %add.ptr404 = getelementptr inbounds i8, i8* %337, i64 %338
  %add.ptr405 = getelementptr inbounds i8, i8* %add.ptr404, i64 2
  store i8* %add.ptr405, i8** %ext, align 8
  %339 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %340 = load i8*, i8** %ext, align 8
  %341 = load i64, i64* %ext_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %339, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1355, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* noundef %340, i64 noundef %341) #5
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end403
  %342 = load i64, i64* %ext_len, align 8
  %cmp406 = icmp ne i64 %342, 0
  br i1 %cmp406, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %343 = load i64, i64* %ext_len, align 8
  %cmp408 = icmp ult i64 %343, 4
  br i1 %cmp408, label %if.then410, label %if.end412

if.then410:                                       ; preds = %while.body
  %344 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %344, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1362, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %345 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call411 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %345, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end412:                                        ; preds = %while.body
  %346 = load i8*, i8** %ext, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %346, i64 0
  %347 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %347 to i32
  %shl415 = shl i32 %conv414, 8
  %348 = load i8*, i8** %ext, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %348, i64 1
  %349 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %349 to i32
  %or418 = or i32 %shl415, %conv417
  store i32 %or418, i32* %ext_id, align 4
  %350 = load i8*, i8** %ext, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %350, i64 2
  %351 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %351 to i32
  %shl421 = shl i32 %conv420, 8
  %352 = load i8*, i8** %ext, align 8
  %arrayidx422 = getelementptr inbounds i8, i8* %352, i64 3
  %353 = load i8, i8* %arrayidx422, align 1
  %conv423 = zext i8 %353 to i32
  %or424 = or i32 %shl421, %conv423
  store i32 %or424, i32* %ext_size, align 4
  %354 = load i32, i32* %ext_size, align 4
  %add425 = add i32 %354, 4
  %conv426 = zext i32 %add425 to i64
  %355 = load i64, i64* %ext_len, align 8
  %cmp427 = icmp ugt i64 %conv426, %355
  br i1 %cmp427, label %if.then429, label %if.end431

if.then429:                                       ; preds = %if.end412
  %356 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %356, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1372, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %357 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call430 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %357, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end431:                                        ; preds = %if.end412
  %358 = load i32, i32* %ext_id, align 4
  switch i32 %358, label %sw.default [
    i32 0, label %sw.bb
    i32 65281, label %sw.bb440
    i32 13, label %sw.bb448
    i32 10, label %sw.bb458
    i32 11, label %sw.bb466
    i32 1, label %sw.bb478
    i32 22, label %sw.bb486
    i32 23, label %sw.bb494
    i32 35, label %sw.bb502
    i32 16, label %sw.bb510
  ]

sw.bb:                                            ; preds = %if.end431
  %359 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %359, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1381, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0)) #5
  %360 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %361 = load i8*, i8** %ext, align 8
  %add.ptr432 = getelementptr inbounds i8, i8* %361, i64 4
  %362 = load i8*, i8** %ext, align 8
  %add.ptr433 = getelementptr inbounds i8, i8* %362, i64 4
  %363 = load i32, i32* %ext_size, align 4
  %idx.ext = zext i32 %363 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %add.ptr433, i64 %idx.ext
  %call435 = call i32 @mbedtls_ssl_parse_server_name_ext(%struct.mbedtls_ssl_context* noundef %360, i8* noundef %add.ptr432, i8* noundef %add.ptr434) #5
  store i32 %call435, i32* %ret, align 4
  %364 = load i32, i32* %ret, align 4
  %cmp436 = icmp ne i32 %364, 0
  br i1 %cmp436, label %if.then438, label %if.end439

if.then438:                                       ; preds = %sw.bb
  %365 = load i32, i32* %ret, align 4
  store i32 %365, i32* %retval, align 4
  br label %return

if.end439:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb440:                                         ; preds = %if.end431
  %366 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %366, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1390, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0)) #5
  store i32 1, i32* %renegotiation_info_seen, align 4
  %367 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %368 = load i8*, i8** %ext, align 8
  %add.ptr441 = getelementptr inbounds i8, i8* %368, i64 4
  %369 = load i32, i32* %ext_size, align 4
  %conv442 = zext i32 %369 to i64
  %call443 = call i32 @ssl_parse_renegotiation_info(%struct.mbedtls_ssl_context* noundef %367, i8* noundef %add.ptr441, i64 noundef %conv442) #5
  store i32 %call443, i32* %ret, align 4
  %370 = load i32, i32* %ret, align 4
  %cmp444 = icmp ne i32 %370, 0
  br i1 %cmp444, label %if.then446, label %if.end447

if.then446:                                       ; preds = %sw.bb440
  %371 = load i32, i32* %ret, align 4
  store i32 %371, i32* %retval, align 4
  br label %return

if.end447:                                        ; preds = %sw.bb440
  br label %sw.epilog

sw.bb448:                                         ; preds = %if.end431
  %372 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %372, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1402, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0)) #5
  %373 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %374 = load i8*, i8** %ext, align 8
  %add.ptr449 = getelementptr inbounds i8, i8* %374, i64 4
  %375 = load i8*, i8** %ext, align 8
  %add.ptr450 = getelementptr inbounds i8, i8* %375, i64 4
  %376 = load i32, i32* %ext_size, align 4
  %idx.ext451 = zext i32 %376 to i64
  %add.ptr452 = getelementptr inbounds i8, i8* %add.ptr450, i64 %idx.ext451
  %call453 = call i32 @mbedtls_ssl_parse_sig_alg_ext(%struct.mbedtls_ssl_context* noundef %373, i8* noundef %add.ptr449, i8* noundef %add.ptr452) #5
  store i32 %call453, i32* %ret, align 4
  %377 = load i32, i32* %ret, align 4
  %cmp454 = icmp ne i32 %377, 0
  br i1 %cmp454, label %if.then456, label %if.end457

if.then456:                                       ; preds = %sw.bb448
  %378 = load i32, i32* %ret, align 4
  store i32 %378, i32* %retval, align 4
  br label %return

if.end457:                                        ; preds = %sw.bb448
  store i32 1, i32* %sig_hash_alg_ext_present, align 4
  br label %sw.epilog

sw.bb458:                                         ; preds = %if.end431
  %379 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %379, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1415, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0)) #5
  %380 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %381 = load i8*, i8** %ext, align 8
  %add.ptr459 = getelementptr inbounds i8, i8* %381, i64 4
  %382 = load i32, i32* %ext_size, align 4
  %conv460 = zext i32 %382 to i64
  %call461 = call i32 @ssl_parse_supported_groups_ext(%struct.mbedtls_ssl_context* noundef %380, i8* noundef %add.ptr459, i64 noundef %conv460) #5
  store i32 %call461, i32* %ret, align 4
  %383 = load i32, i32* %ret, align 4
  %cmp462 = icmp ne i32 %383, 0
  br i1 %cmp462, label %if.then464, label %if.end465

if.then464:                                       ; preds = %sw.bb458
  %384 = load i32, i32* %ret, align 4
  store i32 %384, i32* %retval, align 4
  br label %return

if.end465:                                        ; preds = %sw.bb458
  br label %sw.epilog

sw.bb466:                                         ; preds = %if.end431
  %385 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %385, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1423, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0)) #5
  %386 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake467 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %386, i32 0, i32 16
  %387 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake467, align 8
  %cli_exts = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %387, i32 0, i32 1
  %388 = load i8, i8* %cli_exts, align 1
  %conv468 = zext i8 %388 to i32
  %or469 = or i32 %conv468, 1
  %conv470 = trunc i32 %or469 to i8
  store i8 %conv470, i8* %cli_exts, align 1
  %389 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %390 = load i8*, i8** %ext, align 8
  %add.ptr471 = getelementptr inbounds i8, i8* %390, i64 4
  %391 = load i32, i32* %ext_size, align 4
  %conv472 = zext i32 %391 to i64
  %call473 = call i32 @ssl_parse_supported_point_formats(%struct.mbedtls_ssl_context* noundef %389, i8* noundef %add.ptr471, i64 noundef %conv472) #5
  store i32 %call473, i32* %ret, align 4
  %392 = load i32, i32* %ret, align 4
  %cmp474 = icmp ne i32 %392, 0
  br i1 %cmp474, label %if.then476, label %if.end477

if.then476:                                       ; preds = %sw.bb466
  %393 = load i32, i32* %ret, align 4
  store i32 %393, i32* %retval, align 4
  br label %return

if.end477:                                        ; preds = %sw.bb466
  br label %sw.epilog

sw.bb478:                                         ; preds = %if.end431
  %394 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %394, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1445, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0)) #5
  %395 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %396 = load i8*, i8** %ext, align 8
  %add.ptr479 = getelementptr inbounds i8, i8* %396, i64 4
  %397 = load i32, i32* %ext_size, align 4
  %conv480 = zext i32 %397 to i64
  %call481 = call i32 @ssl_parse_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %395, i8* noundef %add.ptr479, i64 noundef %conv480) #5
  store i32 %call481, i32* %ret, align 4
  %398 = load i32, i32* %ret, align 4
  %cmp482 = icmp ne i32 %398, 0
  br i1 %cmp482, label %if.then484, label %if.end485

if.then484:                                       ; preds = %sw.bb478
  %399 = load i32, i32* %ret, align 4
  store i32 %399, i32* %retval, align 4
  br label %return

if.end485:                                        ; preds = %sw.bb478
  br label %sw.epilog

sw.bb486:                                         ; preds = %if.end431
  %400 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %400, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1465, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0)) #5
  %401 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %402 = load i8*, i8** %ext, align 8
  %add.ptr487 = getelementptr inbounds i8, i8* %402, i64 4
  %403 = load i32, i32* %ext_size, align 4
  %conv488 = zext i32 %403 to i64
  %call489 = call i32 @ssl_parse_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %401, i8* noundef %add.ptr487, i64 noundef %conv488) #5
  store i32 %call489, i32* %ret, align 4
  %404 = load i32, i32* %ret, align 4
  %cmp490 = icmp ne i32 %404, 0
  br i1 %cmp490, label %if.then492, label %if.end493

if.then492:                                       ; preds = %sw.bb486
  %405 = load i32, i32* %ret, align 4
  store i32 %405, i32* %retval, align 4
  br label %return

if.end493:                                        ; preds = %sw.bb486
  br label %sw.epilog

sw.bb494:                                         ; preds = %if.end431
  %406 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %406, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1475, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #5
  %407 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %408 = load i8*, i8** %ext, align 8
  %add.ptr495 = getelementptr inbounds i8, i8* %408, i64 4
  %409 = load i32, i32* %ext_size, align 4
  %conv496 = zext i32 %409 to i64
  %call497 = call i32 @ssl_parse_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %407, i8* noundef %add.ptr495, i64 noundef %conv496) #5
  store i32 %call497, i32* %ret, align 4
  %410 = load i32, i32* %ret, align 4
  %cmp498 = icmp ne i32 %410, 0
  br i1 %cmp498, label %if.then500, label %if.end501

if.then500:                                       ; preds = %sw.bb494
  %411 = load i32, i32* %ret, align 4
  store i32 %411, i32* %retval, align 4
  br label %return

if.end501:                                        ; preds = %sw.bb494
  br label %sw.epilog

sw.bb502:                                         ; preds = %if.end431
  %412 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %412, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1485, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0)) #5
  %413 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %414 = load i8*, i8** %ext, align 8
  %add.ptr503 = getelementptr inbounds i8, i8* %414, i64 4
  %415 = load i32, i32* %ext_size, align 4
  %conv504 = zext i32 %415 to i64
  %call505 = call i32 @ssl_parse_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %413, i8* noundef %add.ptr503, i64 noundef %conv504) #5
  store i32 %call505, i32* %ret, align 4
  %416 = load i32, i32* %ret, align 4
  %cmp506 = icmp ne i32 %416, 0
  br i1 %cmp506, label %if.then508, label %if.end509

if.then508:                                       ; preds = %sw.bb502
  %417 = load i32, i32* %ret, align 4
  store i32 %417, i32* %retval, align 4
  br label %return

if.end509:                                        ; preds = %sw.bb502
  br label %sw.epilog

sw.bb510:                                         ; preds = %if.end431
  %418 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %418, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1495, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0)) #5
  %419 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %420 = load i8*, i8** %ext, align 8
  %add.ptr511 = getelementptr inbounds i8, i8* %420, i64 4
  %421 = load i8*, i8** %ext, align 8
  %add.ptr512 = getelementptr inbounds i8, i8* %421, i64 4
  %422 = load i32, i32* %ext_size, align 4
  %idx.ext513 = zext i32 %422 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %add.ptr512, i64 %idx.ext513
  %call515 = call i32 @mbedtls_ssl_parse_alpn_ext(%struct.mbedtls_ssl_context* noundef %419, i8* noundef %add.ptr511, i8* noundef %add.ptr514) #5
  store i32 %call515, i32* %ret, align 4
  %423 = load i32, i32* %ret, align 4
  %cmp516 = icmp ne i32 %423, 0
  br i1 %cmp516, label %if.then518, label %if.end519

if.then518:                                       ; preds = %sw.bb510
  %424 = load i32, i32* %ret, align 4
  store i32 %424, i32* %retval, align 4
  br label %return

if.end519:                                        ; preds = %sw.bb510
  br label %sw.epilog

sw.default:                                       ; preds = %if.end431
  %425 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %426 = load i32, i32* %ext_id, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %425, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1516, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i32 noundef %426) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end519, %if.end509, %if.end501, %if.end493, %if.end485, %if.end477, %if.end465, %if.end457, %if.end447, %if.end439
  %427 = load i32, i32* %ext_size, align 4
  %add520 = add i32 4, %427
  %conv521 = zext i32 %add520 to i64
  %428 = load i64, i64* %ext_len, align 8
  %sub522 = sub i64 %428, %conv521
  store i64 %sub522, i64* %ext_len, align 8
  %429 = load i32, i32* %ext_size, align 4
  %add523 = add i32 4, %429
  %430 = load i8*, i8** %ext, align 8
  %idx.ext524 = zext i32 %add523 to i64
  %add.ptr525 = getelementptr inbounds i8, i8* %430, i64 %idx.ext524
  store i8* %add.ptr525, i8** %ext, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %431 = load i32, i32* %sig_hash_alg_ext_present, align 4
  %tobool = icmp ne i32 %431, 0
  br i1 %tobool, label %if.end532, label %if.then526

if.then526:                                       ; preds = %while.end
  %432 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake527 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %432, i32 0, i32 16
  %433 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake527, align 8
  %received_sig_algs528 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %433, i32 0, i32 16
  %arraydecay529 = getelementptr inbounds [20 x i16], [20 x i16]* %received_sig_algs528, i64 0, i64 0
  store i16* %arraydecay529, i16** %received_sig_algs, align 8
  %434 = bitcast [3 x i16]* %default_sig_algs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %434, i8* align 2 bitcast ([3 x i16]* @__const.ssl_parse_client_hello.default_sig_algs to i8*), i64 6, i1 false)
  %435 = load i16*, i16** %received_sig_algs, align 8
  %436 = bitcast i16* %435 to i8*
  %arraydecay530 = getelementptr inbounds [3 x i16], [3 x i16]* %default_sig_algs, i64 0, i64 0
  %437 = bitcast i16* %arraydecay530 to i8*
  %call531 = call i8* @memcpy(i8* noundef %436, i8* noundef %437, i64 noundef 6) #4
  br label %if.end532

if.end532:                                        ; preds = %if.then526, %while.end
  store i64 0, i64* %i, align 8
  %438 = load i8*, i8** %buf, align 8
  %439 = load i64, i64* %ciph_offset, align 8
  %add.ptr533 = getelementptr inbounds i8, i8* %438, i64 %439
  %add.ptr534 = getelementptr inbounds i8, i8* %add.ptr533, i64 2
  store i8* %add.ptr534, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end532
  %440 = load i64, i64* %i, align 8
  %441 = load i64, i64* %ciph_len, align 8
  %cmp535 = icmp ult i64 %440, %441
  br i1 %cmp535, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %442 = load i8*, i8** %p, align 8
  %arrayidx537 = getelementptr inbounds i8, i8* %442, i64 0
  %443 = load i8, i8* %arrayidx537, align 1
  %conv538 = zext i8 %443 to i32
  %cmp539 = icmp eq i32 %conv538, 0
  br i1 %cmp539, label %land.lhs.true541, label %if.end553

land.lhs.true541:                                 ; preds = %for.body
  %444 = load i8*, i8** %p, align 8
  %arrayidx542 = getelementptr inbounds i8, i8* %444, i64 1
  %445 = load i8, i8* %arrayidx542, align 1
  %conv543 = zext i8 %445 to i32
  %cmp544 = icmp eq i32 %conv543, 255
  br i1 %cmp544, label %if.then546, label %if.end553

if.then546:                                       ; preds = %land.lhs.true541
  %446 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %446, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1561, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0)) #5
  %447 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status547 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %447, i32 0, i32 2
  %448 = load i32, i32* %renego_status547, align 4
  %cmp548 = icmp eq i32 %448, 1
  br i1 %cmp548, label %if.then550, label %if.end552

if.then550:                                       ; preds = %if.then546
  %449 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %449, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1566, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.43, i64 0, i64 0)) #5
  %450 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call551 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %450, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end552:                                        ; preds = %if.then546
  %451 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %451, i32 0, i32 60
  store i32 1, i32* %secure_renegotiation, align 8
  br label %for.end

if.end553:                                        ; preds = %land.lhs.true541, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end553
  %452 = load i64, i64* %i, align 8
  %add554 = add i64 %452, 2
  store i64 %add554, i64* %i, align 8
  %453 = load i8*, i8** %p, align 8
  %add.ptr555 = getelementptr inbounds i8, i8* %453, i64 2
  store i8* %add.ptr555, i8** %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end552, %for.cond
  %454 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation556 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %454, i32 0, i32 60
  %455 = load i32, i32* %secure_renegotiation556, align 8
  %cmp557 = icmp ne i32 %455, 1
  br i1 %cmp557, label %land.lhs.true559, label %if.else565

land.lhs.true559:                                 ; preds = %for.end
  %456 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf560 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %456, i32 0, i32 0
  %457 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf560, align 8
  %allow_legacy_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %457, i32 0, i32 5
  %458 = load i8, i8* %allow_legacy_renegotiation, align 1
  %conv561 = zext i8 %458 to i32
  %cmp562 = icmp eq i32 %conv561, 2
  br i1 %cmp562, label %if.then564, label %if.else565

if.then564:                                       ; preds = %land.lhs.true559
  %459 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %459, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1583, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0)) #5
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end607

if.else565:                                       ; preds = %land.lhs.true559, %for.end
  %460 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status566 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %460, i32 0, i32 2
  %461 = load i32, i32* %renego_status566, align 4
  %cmp567 = icmp eq i32 %461, 1
  br i1 %cmp567, label %land.lhs.true569, label %if.else577

land.lhs.true569:                                 ; preds = %if.else565
  %462 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation570 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %462, i32 0, i32 60
  %463 = load i32, i32* %secure_renegotiation570, align 8
  %cmp571 = icmp eq i32 %463, 1
  br i1 %cmp571, label %land.lhs.true573, label %if.else577

land.lhs.true573:                                 ; preds = %land.lhs.true569
  %464 = load i32, i32* %renegotiation_info_seen, align 4
  %cmp574 = icmp eq i32 %464, 0
  br i1 %cmp574, label %if.then576, label %if.else577

if.then576:                                       ; preds = %land.lhs.true573
  %465 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %465, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1591, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i64 0, i64 0)) #5
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end606

if.else577:                                       ; preds = %land.lhs.true573, %land.lhs.true569, %if.else565
  %466 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status578 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %466, i32 0, i32 2
  %467 = load i32, i32* %renego_status578, align 4
  %cmp579 = icmp eq i32 %467, 1
  br i1 %cmp579, label %land.lhs.true581, label %if.else592

land.lhs.true581:                                 ; preds = %if.else577
  %468 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation582 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %468, i32 0, i32 60
  %469 = load i32, i32* %secure_renegotiation582, align 8
  %cmp583 = icmp eq i32 %469, 0
  br i1 %cmp583, label %land.lhs.true585, label %if.else592

land.lhs.true585:                                 ; preds = %land.lhs.true581
  %470 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf586 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %470, i32 0, i32 0
  %471 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf586, align 8
  %allow_legacy_renegotiation587 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %471, i32 0, i32 5
  %472 = load i8, i8* %allow_legacy_renegotiation587, align 1
  %conv588 = zext i8 %472 to i32
  %cmp589 = icmp eq i32 %conv588, 0
  br i1 %cmp589, label %if.then591, label %if.else592

if.then591:                                       ; preds = %land.lhs.true585
  %473 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %473, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1598, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0)) #5
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end605

if.else592:                                       ; preds = %land.lhs.true585, %land.lhs.true581, %if.else577
  %474 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status593 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %474, i32 0, i32 2
  %475 = load i32, i32* %renego_status593, align 4
  %cmp594 = icmp eq i32 %475, 1
  br i1 %cmp594, label %land.lhs.true596, label %if.end604

land.lhs.true596:                                 ; preds = %if.else592
  %476 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation597 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %476, i32 0, i32 60
  %477 = load i32, i32* %secure_renegotiation597, align 8
  %cmp598 = icmp eq i32 %477, 0
  br i1 %cmp598, label %land.lhs.true600, label %if.end604

land.lhs.true600:                                 ; preds = %land.lhs.true596
  %478 = load i32, i32* %renegotiation_info_seen, align 4
  %cmp601 = icmp eq i32 %478, 1
  br i1 %cmp601, label %if.then603, label %if.end604

if.then603:                                       ; preds = %land.lhs.true600
  %479 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %479, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1605, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0)) #5
  store i32 1, i32* %handshake_failure, align 4
  br label %if.end604

if.end604:                                        ; preds = %if.then603, %land.lhs.true600, %land.lhs.true596, %if.else592
  br label %if.end605

if.end605:                                        ; preds = %if.end604, %if.then591
  br label %if.end606

if.end606:                                        ; preds = %if.end605, %if.then576
  br label %if.end607

if.end607:                                        ; preds = %if.end606, %if.then564
  %480 = load i32, i32* %handshake_failure, align 4
  %cmp608 = icmp eq i32 %480, 1
  br i1 %cmp608, label %if.then610, label %if.end612

if.then610:                                       ; preds = %if.end607
  %481 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call611 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %481, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end612:                                        ; preds = %if.end607
  %482 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf613 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %482, i32 0, i32 0
  %483 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf613, align 8
  %f_cert_cb = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %483, i32 0, i32 57
  %484 = load i32 (%struct.mbedtls_ssl_context*)*, i32 (%struct.mbedtls_ssl_context*)** %f_cert_cb, align 8
  %tobool614 = icmp ne i32 (%struct.mbedtls_ssl_context*)* %484, null
  br i1 %tobool614, label %land.lhs.true615, label %if.end622

land.lhs.true615:                                 ; preds = %if.end612
  %485 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf616 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %485, i32 0, i32 0
  %486 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf616, align 8
  %f_cert_cb617 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %486, i32 0, i32 57
  %487 = load i32 (%struct.mbedtls_ssl_context*)*, i32 (%struct.mbedtls_ssl_context*)** %f_cert_cb617, align 8
  %488 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call618 = call i32 %487(%struct.mbedtls_ssl_context* noundef %488) #5
  store i32 %call618, i32* %ret, align 4
  %cmp619 = icmp ne i32 %call618, 0
  br i1 %cmp619, label %if.then621, label %if.end622

if.then621:                                       ; preds = %land.lhs.true615
  %489 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %490 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %489, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1622, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i32 noundef %490) #5
  %491 = load i32, i32* %ret, align 4
  store i32 %491, i32* %retval, align 4
  br label %return

if.end622:                                        ; preds = %land.lhs.true615, %if.end612
  %492 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake623 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %492, i32 0, i32 16
  %493 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake623, align 8
  %sni_name = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %493, i32 0, i32 47
  store i8* null, i8** %sni_name, align 8
  %494 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake624 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %494, i32 0, i32 16
  %495 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake624, align 8
  %sni_name_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %495, i32 0, i32 48
  store i64 0, i64* %sni_name_len, align 8
  store i32 0, i32* %got_common_suite, align 4
  %496 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf625 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %496, i32 0, i32 0
  %497 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf625, align 8
  %ciphersuite_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %497, i32 0, i32 14
  %498 = load i32*, i32** %ciphersuite_list, align 8
  store i32* %498, i32** %ciphersuites, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* null, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %499 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf626 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %499, i32 0, i32 0
  %500 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf626, align 8
  %respect_cli_pref = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %500, i32 0, i32 13
  %501 = load i8, i8* %respect_cli_pref, align 1
  %conv627 = zext i8 %501 to i32
  %cmp628 = icmp eq i32 %conv627, 1
  br i1 %cmp628, label %if.then630, label %if.else672

if.then630:                                       ; preds = %if.end622
  store i64 0, i64* %j, align 8
  %502 = load i8*, i8** %buf, align 8
  %503 = load i64, i64* %ciph_offset, align 8
  %add.ptr631 = getelementptr inbounds i8, i8* %502, i64 %503
  %add.ptr632 = getelementptr inbounds i8, i8* %add.ptr631, i64 2
  store i8* %add.ptr632, i8** %p, align 8
  br label %for.cond633

for.cond633:                                      ; preds = %for.inc668, %if.then630
  %504 = load i64, i64* %j, align 8
  %505 = load i64, i64* %ciph_len, align 8
  %cmp634 = icmp ult i64 %504, %505
  br i1 %cmp634, label %for.body636, label %for.end671

for.body636:                                      ; preds = %for.cond633
  store i64 0, i64* %i, align 8
  br label %for.cond637

for.cond637:                                      ; preds = %for.inc665, %for.body636
  %506 = load i32*, i32** %ciphersuites, align 8
  %507 = load i64, i64* %i, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %506, i64 %507
  %508 = load i32, i32* %arrayidx638, align 4
  %cmp639 = icmp ne i32 %508, 0
  br i1 %cmp639, label %for.body641, label %for.end667

for.body641:                                      ; preds = %for.cond637
  %509 = load i8*, i8** %p, align 8
  %arrayidx642 = getelementptr inbounds i8, i8* %509, i64 0
  %510 = load i8, i8* %arrayidx642, align 1
  %conv643 = zext i8 %510 to i16
  %conv644 = zext i16 %conv643 to i32
  %shl645 = shl i32 %conv644, 8
  %511 = load i8*, i8** %p, align 8
  %arrayidx646 = getelementptr inbounds i8, i8* %511, i64 1
  %512 = load i8, i8* %arrayidx646, align 1
  %conv647 = zext i8 %512 to i16
  %conv648 = zext i16 %conv647 to i32
  %or649 = or i32 %shl645, %conv648
  %513 = load i32*, i32** %ciphersuites, align 8
  %514 = load i64, i64* %i, align 8
  %arrayidx650 = getelementptr inbounds i32, i32* %513, i64 %514
  %515 = load i32, i32* %arrayidx650, align 4
  %cmp651 = icmp ne i32 %or649, %515
  br i1 %cmp651, label %if.then653, label %if.end654

if.then653:                                       ; preds = %for.body641
  br label %for.inc665

if.end654:                                        ; preds = %for.body641
  store i32 1, i32* %got_common_suite, align 4
  %516 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %517 = load i32*, i32** %ciphersuites, align 8
  %518 = load i64, i64* %i, align 8
  %arrayidx655 = getelementptr inbounds i32, i32* %517, i64 %518
  %519 = load i32, i32* %arrayidx655, align 4
  %call656 = call i32 @ssl_ciphersuite_match(%struct.mbedtls_ssl_context* noundef %516, i32 noundef %519, %struct.mbedtls_ssl_ciphersuite_t** noundef %ciphersuite_info) #5
  store i32 %call656, i32* %ret, align 4
  %cmp657 = icmp ne i32 %call656, 0
  br i1 %cmp657, label %if.then659, label %if.end660

if.then659:                                       ; preds = %if.end654
  %520 = load i32, i32* %ret, align 4
  store i32 %520, i32* %retval, align 4
  br label %return

if.end660:                                        ; preds = %if.end654
  %521 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cmp661 = icmp ne %struct.mbedtls_ssl_ciphersuite_t* %521, null
  br i1 %cmp661, label %if.then663, label %if.end664

if.then663:                                       ; preds = %if.end660
  br label %have_ciphersuite

if.end664:                                        ; preds = %if.end660
  br label %for.inc665

for.inc665:                                       ; preds = %if.end664, %if.then653
  %522 = load i64, i64* %i, align 8
  %inc666 = add i64 %522, 1
  store i64 %inc666, i64* %i, align 8
  br label %for.cond637, !llvm.loop !7

for.end667:                                       ; preds = %for.cond637
  br label %for.inc668

for.inc668:                                       ; preds = %for.end667
  %523 = load i64, i64* %j, align 8
  %add669 = add i64 %523, 2
  store i64 %add669, i64* %j, align 8
  %524 = load i8*, i8** %p, align 8
  %add.ptr670 = getelementptr inbounds i8, i8* %524, i64 2
  store i8* %add.ptr670, i8** %p, align 8
  br label %for.cond633, !llvm.loop !8

for.end671:                                       ; preds = %for.cond633
  br label %if.end714

if.else672:                                       ; preds = %if.end622
  store i64 0, i64* %i, align 8
  br label %for.cond673

for.cond673:                                      ; preds = %for.inc711, %if.else672
  %525 = load i32*, i32** %ciphersuites, align 8
  %526 = load i64, i64* %i, align 8
  %arrayidx674 = getelementptr inbounds i32, i32* %525, i64 %526
  %527 = load i32, i32* %arrayidx674, align 4
  %cmp675 = icmp ne i32 %527, 0
  br i1 %cmp675, label %for.body677, label %for.end713

for.body677:                                      ; preds = %for.cond673
  store i64 0, i64* %j, align 8
  %528 = load i8*, i8** %buf, align 8
  %529 = load i64, i64* %ciph_offset, align 8
  %add.ptr678 = getelementptr inbounds i8, i8* %528, i64 %529
  %add.ptr679 = getelementptr inbounds i8, i8* %add.ptr678, i64 2
  store i8* %add.ptr679, i8** %p, align 8
  br label %for.cond680

for.cond680:                                      ; preds = %for.inc707, %for.body677
  %530 = load i64, i64* %j, align 8
  %531 = load i64, i64* %ciph_len, align 8
  %cmp681 = icmp ult i64 %530, %531
  br i1 %cmp681, label %for.body683, label %for.end710

for.body683:                                      ; preds = %for.cond680
  %532 = load i8*, i8** %p, align 8
  %arrayidx684 = getelementptr inbounds i8, i8* %532, i64 0
  %533 = load i8, i8* %arrayidx684, align 1
  %conv685 = zext i8 %533 to i16
  %conv686 = zext i16 %conv685 to i32
  %shl687 = shl i32 %conv686, 8
  %534 = load i8*, i8** %p, align 8
  %arrayidx688 = getelementptr inbounds i8, i8* %534, i64 1
  %535 = load i8, i8* %arrayidx688, align 1
  %conv689 = zext i8 %535 to i16
  %conv690 = zext i16 %conv689 to i32
  %or691 = or i32 %shl687, %conv690
  %536 = load i32*, i32** %ciphersuites, align 8
  %537 = load i64, i64* %i, align 8
  %arrayidx692 = getelementptr inbounds i32, i32* %536, i64 %537
  %538 = load i32, i32* %arrayidx692, align 4
  %cmp693 = icmp ne i32 %or691, %538
  br i1 %cmp693, label %if.then695, label %if.end696

if.then695:                                       ; preds = %for.body683
  br label %for.inc707

if.end696:                                        ; preds = %for.body683
  store i32 1, i32* %got_common_suite, align 4
  %539 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %540 = load i32*, i32** %ciphersuites, align 8
  %541 = load i64, i64* %i, align 8
  %arrayidx697 = getelementptr inbounds i32, i32* %540, i64 %541
  %542 = load i32, i32* %arrayidx697, align 4
  %call698 = call i32 @ssl_ciphersuite_match(%struct.mbedtls_ssl_context* noundef %539, i32 noundef %542, %struct.mbedtls_ssl_ciphersuite_t** noundef %ciphersuite_info) #5
  store i32 %call698, i32* %ret, align 4
  %cmp699 = icmp ne i32 %call698, 0
  br i1 %cmp699, label %if.then701, label %if.end702

if.then701:                                       ; preds = %if.end696
  %543 = load i32, i32* %ret, align 4
  store i32 %543, i32* %retval, align 4
  br label %return

if.end702:                                        ; preds = %if.end696
  %544 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cmp703 = icmp ne %struct.mbedtls_ssl_ciphersuite_t* %544, null
  br i1 %cmp703, label %if.then705, label %if.end706

if.then705:                                       ; preds = %if.end702
  br label %have_ciphersuite

if.end706:                                        ; preds = %if.end702
  br label %for.inc707

for.inc707:                                       ; preds = %if.end706, %if.then695
  %545 = load i64, i64* %j, align 8
  %add708 = add i64 %545, 2
  store i64 %add708, i64* %j, align 8
  %546 = load i8*, i8** %p, align 8
  %add.ptr709 = getelementptr inbounds i8, i8* %546, i64 2
  store i8* %add.ptr709, i8** %p, align 8
  br label %for.cond680, !llvm.loop !9

for.end710:                                       ; preds = %for.cond680
  br label %for.inc711

for.inc711:                                       ; preds = %for.end710
  %547 = load i64, i64* %i, align 8
  %inc712 = add i64 %547, 1
  store i64 %inc712, i64* %i, align 8
  br label %for.cond673, !llvm.loop !10

for.end713:                                       ; preds = %for.cond673
  br label %if.end714

if.end714:                                        ; preds = %for.end713, %for.end671
  %548 = load i32, i32* %got_common_suite, align 4
  %tobool715 = icmp ne i32 %548, 0
  br i1 %tobool715, label %if.then716, label %if.else718

if.then716:                                       ; preds = %if.end714
  %549 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %549, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1678, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.49, i64 0, i64 0)) #5
  %550 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call717 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %550, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.else718:                                       ; preds = %if.end714
  %551 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %551, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1685, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)) #5
  %552 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call719 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %552, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

have_ciphersuite:                                 ; preds = %if.then705, %if.then663
  %553 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %554 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %554, i32 0, i32 1
  %555 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %553, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1692, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* noundef %555) #5
  %556 = load i32*, i32** %ciphersuites, align 8
  %557 = load i64, i64* %i, align 8
  %arrayidx720 = getelementptr inbounds i32, i32* %556, i64 %557
  %558 = load i32, i32* %arrayidx720, align 4
  %559 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate721 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %559, i32 0, i32 15
  %560 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate721, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %560, i32 0, i32 4
  store i32 %558, i32* %ciphersuite, align 8
  %561 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %562 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake722 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %562, i32 0, i32 16
  %563 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake722, align 8
  %ciphersuite_info723 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %563, i32 0, i32 11
  store %struct.mbedtls_ssl_ciphersuite_t* %561, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info723, align 8
  %564 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %564, i32 0, i32 1
  %565 = load i32, i32* %state, align 8
  %inc724 = add nsw i32 %565, 1
  store i32 %inc724, i32* %state, align 8
  %566 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf725 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %566, i32 0, i32 0
  %567 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf725, align 8
  %transport726 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %567, i32 0, i32 3
  %568 = load i8, i8* %transport726, align 1
  %conv727 = zext i8 %568 to i32
  %cmp728 = icmp eq i32 %conv727, 1
  br i1 %cmp728, label %if.then730, label %if.end731

if.then730:                                       ; preds = %have_ciphersuite
  %569 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef %569) #5
  br label %if.end731

if.end731:                                        ; preds = %if.then730, %have_ciphersuite
  %570 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call732 = call i32 @mbedtls_ssl_get_ciphersuite_sig_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %570) #5
  store i32 %call732, i32* %sig_alg, align 4
  %571 = load i32, i32* %sig_alg, align 4
  %cmp733 = icmp ne i32 %571, 0
  br i1 %cmp733, label %if.then735, label %if.else739

if.then735:                                       ; preds = %if.end731
  %572 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %573 = load i32, i32* %sig_alg, align 4
  %call736 = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %573) #5
  %conv737 = zext i8 %call736 to i32
  %call738 = call i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(%struct.mbedtls_ssl_context* noundef %572, i32 noundef %conv737) #5
  store i32 %call738, i32* %sig_hash, align 4
  %574 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %575 = load i32, i32* %sig_hash, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %574, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1713, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i64 0, i64 0), i32 noundef %575) #5
  br label %if.end740

if.else739:                                       ; preds = %if.end731
  %576 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %577 = load i32, i32* %sig_alg, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %576, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1718, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.53, i64 0, i64 0), i32 noundef %577) #5
  br label %if.end740

if.end740:                                        ; preds = %if.else739, %if.then735
  %578 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %578, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1722, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end740, %if.else718, %if.then716, %if.then701, %if.then659, %if.then621, %if.then610, %if.then550, %if.then518, %if.then508, %if.then500, %if.then492, %if.then484, %if.then476, %if.then464, %if.then456, %if.then446, %if.then438, %if.then429, %if.then410, %if.then399, %if.then383, %if.then360, %if.then341, %if.then313, %if.then283, %if.then254, %if.then238, %if.then226, %if.then218, %if.then147, %if.then120, %if.then112, %if.then94, %if.then86, %if.then68, %if.then62, %if.then36, %if.then9, %if.then2
  %579 = load i32, i32* %retval, align 4
  ret i32 %579
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_server_hello(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %t = alloca i64, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  %ext_len = alloca i64, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %suite = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %ext_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2213, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 3
  %3 = load i8, i8* %transport, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %verify_cookie_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 30
  %6 = load i8, i8* %verify_cookie_len, align 8
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2219, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0)) #5
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2220, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0)) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_write_hello_verify_request(%struct.mbedtls_ssl_context* noundef %9) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf5, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 17
  %12 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %cmp6 = icmp eq i32 (i8*, i8*, i64)* %12, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2228, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0)) #5
  store i32 -29696, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 50
  %15 = load i8*, i8** %out_msg, align 8
  store i8* %15, i8** %buf, align 8
  %16 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr, i8** %p, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf10, align 8
  %transport11 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %19, i32 0, i32 3
  %20 = load i8, i8* %transport11, align 1
  %conv12 = zext i8 %20 to i32
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 4
  %22 = load i32, i32* %tls_version, align 4
  call void @mbedtls_ssl_write_version(i8* noundef %17, i32 noundef %conv12, i32 noundef %22) #5
  %23 = load i8*, i8** %p, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %add.ptr13, i8** %p, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 4
  %26 = load i8, i8* %arrayidx, align 1
  %conv14 = zext i8 %26 to i32
  %27 = load i8*, i8** %buf, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %27, i64 5
  %28 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %28 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2246, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv14, i32 noundef %conv16) #5
  %call17 = call i64 @time(i64* noundef null) #4
  store i64 %call17, i64* %t, align 8
  %29 = load i64, i64* %t, align 8
  %shr = ashr i64 %29, 24
  %and = and i64 %shr, 255
  %conv18 = trunc i64 %and to i8
  %30 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %conv18, i8* %arrayidx19, align 1
  %31 = load i64, i64* %t, align 8
  %shr20 = ashr i64 %31, 16
  %and21 = and i64 %shr20, 255
  %conv22 = trunc i64 %and21 to i8
  %32 = load i8*, i8** %p, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %33 = load i64, i64* %t, align 8
  %shr24 = ashr i64 %33, 8
  %and25 = and i64 %shr24, 255
  %conv26 = trunc i64 %and25 to i8
  %34 = load i8*, i8** %p, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %conv26, i8* %arrayidx27, align 1
  %35 = load i64, i64* %t, align 8
  %and28 = and i64 %35, 255
  %conv29 = trunc i64 %and28 to i8
  %36 = load i8*, i8** %p, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %conv29, i8* %arrayidx30, align 1
  %37 = load i8*, i8** %p, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %add.ptr31, i8** %p, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i64, i64* %t, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2254, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0), i64 noundef %39) #5
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 0
  %41 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf32, align 8
  %f_rng33 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %41, i32 0, i32 17
  %42 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng33, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 0
  %44 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf34, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %44, i32 0, i32 18
  %45 = load i8*, i8** %p_rng, align 8
  %46 = load i8*, i8** %p, align 8
  %call35 = call i32 %42(i8* noundef %45, i8* noundef %46, i64 noundef 28) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end9
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end9
  %48 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %48, i64 28
  store i8* %add.ptr40, i8** %p, align 8
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 16
  %50 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake41, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %50, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay, i64 32
  %51 = load i8*, i8** %buf, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %51, i64 6
  %call44 = call i8* @memcpy(i8* noundef %add.ptr42, i8* noundef %add.ptr43, i64 noundef 32) #4
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %53 = load i8*, i8** %buf, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %53, i64 6
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2269, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i64 0, i64 0), i8* noundef %add.ptr45, i64 noundef 32) #5
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_handle_id_based_session_resumption(%struct.mbedtls_ssl_context* noundef %54) #5
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 16
  %56 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake46, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %56, i32 0, i32 0
  %57 = load i8, i8* %resume, align 8
  %conv47 = zext i8 %57 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.end39
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 1
  %59 = load i32, i32* %state, align 8
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %state, align 8
  %call51 = call i64 @time(i64* noundef null) #4
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 15
  %61 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %start = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %61, i32 0, i32 3
  store i64 %call51, i64* %start, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 16
  %63 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake52, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %63, i32 0, i32 4
  %64 = load i8, i8* %new_session_ticket, align 4
  %conv53 = zext i8 %64 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then50
  store i64 0, i64* %n, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 15
  %66 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate57, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %66, i32 0, i32 6
  store i64 0, i64* %id_len, align 8
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate58 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 15
  %68 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate58, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %68, i32 0, i32 7
  %arraydecay59 = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %call60 = call i8* @memset(i8* noundef %arraydecay59, i32 noundef 0, i64 noundef 32) #4
  br label %if.end75

if.else:                                          ; preds = %if.then50
  store i64 32, i64* %n, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 15
  %70 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate61, align 8
  %id_len62 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %70, i32 0, i32 6
  store i64 32, i64* %id_len62, align 8
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf63 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 0
  %72 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf63, align 8
  %f_rng64 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %72, i32 0, i32 17
  %73 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng64, align 8
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf65 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %74, i32 0, i32 0
  %75 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf65, align 8
  %p_rng66 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %75, i32 0, i32 18
  %76 = load i8*, i8** %p_rng66, align 8
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate67 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %77, i32 0, i32 15
  %78 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate67, align 8
  %id68 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %78, i32 0, i32 7
  %arraydecay69 = getelementptr inbounds [32 x i8], [32 x i8]* %id68, i64 0, i64 0
  %79 = load i64, i64* %n, align 8
  %call70 = call i32 %73(i8* noundef %76, i8* noundef %arraydecay69, i64 noundef %79) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.else
  %80 = load i32, i32* %ret, align 4
  store i32 %80, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.else
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then56
  br label %if.end85

if.else76:                                        ; preds = %if.end39
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate77 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %81, i32 0, i32 15
  %82 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate77, align 8
  %id_len78 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %82, i32 0, i32 6
  %83 = load i64, i64* %id_len78, align 8
  store i64 %83, i64* %n, align 8
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %84, i32 0, i32 1
  store i32 12, i32* %state79, align 8
  %85 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call80 = call i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef %85) #5
  store i32 %call80, i32* %ret, align 4
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else76
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %87 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %86, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2310, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0), i32 noundef %87) #5
  %88 = load i32, i32* %ret, align 4
  store i32 %88, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.else76
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end75
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate86 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %89, i32 0, i32 15
  %90 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate86, align 8
  %id_len87 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %90, i32 0, i32 6
  %91 = load i64, i64* %id_len87, align 8
  %conv88 = trunc i64 %91 to i8
  %92 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv88, i8* %92, align 1
  %93 = load i8*, i8** %p, align 8
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate89 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %94, i32 0, i32 15
  %95 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate89, align 8
  %id90 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %95, i32 0, i32 7
  %arraydecay91 = getelementptr inbounds [32 x i8], [32 x i8]* %id90, i64 0, i64 0
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate92 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 15
  %97 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate92, align 8
  %id_len93 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %97, i32 0, i32 6
  %98 = load i64, i64* %id_len93, align 8
  %call94 = call i8* @memcpy(i8* noundef %93, i8* noundef %arraydecay91, i64 noundef %98) #4
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate95 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %99, i32 0, i32 15
  %100 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate95, align 8
  %id_len96 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %100, i32 0, i32 6
  %101 = load i64, i64* %id_len96, align 8
  %102 = load i8*, i8** %p, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %add.ptr97, i8** %p, align 8
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %104 = load i64, i64* %n, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %103, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2327, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i64 0, i64 0), i64 noundef %104) #5
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %106 = load i8*, i8** %buf, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %106, i64 39
  %107 = load i64, i64* %n, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2328, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i64 0, i64 0), i8* noundef %add.ptr98, i64 noundef %107) #5
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %109 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake99 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %109, i32 0, i32 16
  %110 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake99, align 8
  %resume100 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %110, i32 0, i32 0
  %111 = load i8, i8* %resume100, align 8
  %conv101 = zext i8 %111 to i32
  %tobool = icmp ne i32 %conv101, 0
  %112 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0)
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %108, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2330, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i8* noundef %cond) #5
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate102 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %113, i32 0, i32 15
  %114 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate102, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %114, i32 0, i32 4
  %115 = load i32, i32* %ciphersuite, align 8
  %shr103 = ashr i32 %115, 8
  %and104 = and i32 %shr103, 255
  %conv105 = trunc i32 %and104 to i8
  %116 = load i8*, i8** %p, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 %conv105, i8* %arrayidx106, align 1
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %117, i32 0, i32 15
  %118 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate107, align 8
  %ciphersuite108 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %118, i32 0, i32 4
  %119 = load i32, i32* %ciphersuite108, align 8
  %and109 = and i32 %119, 255
  %conv110 = trunc i32 %and109 to i8
  %120 = load i8*, i8** %p, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 %conv110, i8* %arrayidx111, align 1
  %121 = load i8*, i8** %p, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %add.ptr112, i8** %p, align 8
  %122 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate113 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %122, i32 0, i32 15
  %123 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate113, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %123, i32 0, i32 5
  %124 = load i32, i32* %compression, align 4
  %and114 = and i32 %124, 255
  %conv115 = trunc i32 %and114 to i8
  %125 = load i8*, i8** %p, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr116, i8** %p, align 8
  store i8 %conv115, i8* %125, align 1
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %127, i32 0, i32 15
  %128 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate117, align 8
  %ciphersuite118 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %128, i32 0, i32 4
  %129 = load i32, i32* %ciphersuite118, align 8
  %call119 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %129) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %126, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2337, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.91, i64 0, i64 0), i8* noundef %call119) #5
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %131 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate120 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %131, i32 0, i32 15
  %132 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate120, align 8
  %compression121 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %132, i32 0, i32 5
  %133 = load i32, i32* %compression121, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %130, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2339, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i64 0, i64 0), i32 noundef %133) #5
  %134 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %135 = load i8*, i8** %p, align 8
  %add.ptr122 = getelementptr inbounds i8, i8* %135, i64 2
  %136 = load i64, i64* %ext_len, align 8
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 %136
  call void @ssl_write_renegotiation_ext(%struct.mbedtls_ssl_context* noundef %134, i8* noundef %add.ptr123, i64* noundef %olen) #5
  %137 = load i64, i64* %olen, align 8
  %138 = load i64, i64* %ext_len, align 8
  %add = add i64 %138, %137
  store i64 %add, i64* %ext_len, align 8
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %140 = load i8*, i8** %p, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %140, i64 2
  %141 = load i64, i64* %ext_len, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %add.ptr124, i64 %141
  call void @ssl_write_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %139, i8* noundef %add.ptr125, i64* noundef %olen) #5
  %142 = load i64, i64* %olen, align 8
  %143 = load i64, i64* %ext_len, align 8
  %add126 = add i64 %143, %142
  store i64 %add126, i64* %ext_len, align 8
  %144 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %145 = load i8*, i8** %p, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %145, i64 2
  %146 = load i64, i64* %ext_len, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %add.ptr127, i64 %146
  call void @ssl_write_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %144, i8* noundef %add.ptr128, i64* noundef %olen) #5
  %147 = load i64, i64* %olen, align 8
  %148 = load i64, i64* %ext_len, align 8
  %add129 = add i64 %148, %147
  store i64 %add129, i64* %ext_len, align 8
  %149 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %150 = load i8*, i8** %p, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %150, i64 2
  %151 = load i64, i64* %ext_len, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %add.ptr130, i64 %151
  call void @ssl_write_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %149, i8* noundef %add.ptr131, i64* noundef %olen) #5
  %152 = load i64, i64* %olen, align 8
  %153 = load i64, i64* %ext_len, align 8
  %add132 = add i64 %153, %152
  store i64 %add132, i64* %ext_len, align 8
  %154 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %155 = load i8*, i8** %p, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %155, i64 2
  %156 = load i64, i64* %ext_len, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr133, i64 %156
  call void @ssl_write_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %154, i8* noundef %add.ptr134, i64* noundef %olen) #5
  %157 = load i64, i64* %olen, align 8
  %158 = load i64, i64* %ext_len, align 8
  %add135 = add i64 %158, %157
  store i64 %add135, i64* %ext_len, align 8
  %159 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate136 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %159, i32 0, i32 15
  %160 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate136, align 8
  %ciphersuite137 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %160, i32 0, i32 4
  %161 = load i32, i32* %ciphersuite137, align 8
  %call138 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %161) #5
  store %struct.mbedtls_ssl_ciphersuite_t* %call138, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %162 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %cmp139 = icmp ne %struct.mbedtls_ssl_ciphersuite_t* %162, null
  br i1 %cmp139, label %land.lhs.true141, label %if.end148

land.lhs.true141:                                 ; preds = %if.end85
  %163 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %call142 = call i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef %163) #5
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.end148

if.then144:                                       ; preds = %land.lhs.true141
  %164 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %165 = load i8*, i8** %p, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %165, i64 2
  %166 = load i64, i64* %ext_len, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %add.ptr145, i64 %166
  call void @ssl_write_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %164, i8* noundef %add.ptr146, i64* noundef %olen) #5
  %167 = load i64, i64* %olen, align 8
  %168 = load i64, i64* %ext_len, align 8
  %add147 = add i64 %168, %167
  store i64 %add147, i64* %ext_len, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %land.lhs.true141, %if.end85
  %169 = load i8*, i8** %buf, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %169, i64 16384
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr149, i64 -4
  store i8* %add.ptr150, i8** %end, align 8
  %170 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %171 = load i8*, i8** %p, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %171, i64 2
  %172 = load i64, i64* %ext_len, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %add.ptr151, i64 %172
  %173 = load i8*, i8** %end, align 8
  %call153 = call i32 @mbedtls_ssl_write_alpn_ext(%struct.mbedtls_ssl_context* noundef %170, i8* noundef %add.ptr152, i8* noundef %173, i64* noundef %olen) #5
  store i32 %call153, i32* %ret, align 4
  %cmp154 = icmp ne i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end148
  %174 = load i32, i32* %ret, align 4
  store i32 %174, i32* %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.end148
  %175 = load i64, i64* %olen, align 8
  %176 = load i64, i64* %ext_len, align 8
  %add158 = add i64 %176, %175
  store i64 %add158, i64* %ext_len, align 8
  %177 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %178 = load i64, i64* %ext_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %177, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2403, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i64 0, i64 0), i64 noundef %178) #5
  %179 = load i64, i64* %ext_len, align 8
  %cmp159 = icmp ugt i64 %179, 0
  br i1 %cmp159, label %if.then161, label %if.end171

if.then161:                                       ; preds = %if.end157
  %180 = load i64, i64* %ext_len, align 8
  %shr162 = lshr i64 %180, 8
  %and163 = and i64 %shr162, 255
  %conv164 = trunc i64 %and163 to i8
  %181 = load i8*, i8** %p, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %181, i64 0
  store i8 %conv164, i8* %arrayidx165, align 1
  %182 = load i64, i64* %ext_len, align 8
  %and166 = and i64 %182, 255
  %conv167 = trunc i64 %and166 to i8
  %183 = load i8*, i8** %p, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %183, i64 1
  store i8 %conv167, i8* %arrayidx168, align 1
  %184 = load i64, i64* %ext_len, align 8
  %add169 = add i64 2, %184
  %185 = load i8*, i8** %p, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %185, i64 %add169
  store i8* %add.ptr170, i8** %p, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then161, %if.end157
  %186 = load i8*, i8** %p, align 8
  %187 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %186 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %187 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %188 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %188, i32 0, i32 52
  store i64 %sub.ptr.sub, i64* %out_msglen, align 8
  %189 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %189, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %190 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg172 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %190, i32 0, i32 50
  %191 = load i8*, i8** %out_msg172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %191, i64 0
  store i8 2, i8* %arrayidx173, align 1
  %192 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call174 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %192) #5
  store i32 %call174, i32* %ret, align 4
  %193 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %193, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2417, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0)) #5
  %194 = load i32, i32* %ret, align 4
  store i32 %194, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end171, %if.then156, %if.then83, %if.then73, %if.then38, %if.then8, %if.then
  %195 = load i32, i32* %retval, align 4
  ret i32 %195
}

declare dso_local i32 @mbedtls_ssl_write_certificate(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_server_key_exchange(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %signature_len = alloca i64, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %signature_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3208, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_no_pfs(%struct.mbedtls_ssl_ciphersuite_t* noundef %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call2 = call i32 @mbedtls_ssl_ciphersuite_uses_ecdh(%struct.mbedtls_ssl_ciphersuite_t* noundef %5) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @ssl_get_ecdh_params_from_cert(%struct.mbedtls_ssl_context* noundef %6) #5
  store i32 %call5, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %9 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3223, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.110, i64 0, i64 0), i32 noundef %9) #5
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3231, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.111, i64 0, i64 0)) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 1
  %13 = load i32, i32* %state, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @ssl_prepare_server_key_exchange(%struct.mbedtls_ssl_context* noundef %14, i64* noundef %signature_len) #5
  store i32 %call9, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %16 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %16, -25856
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3261, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0)) #5
  br label %if.end14

if.else:                                          ; preds = %if.then11
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 52
  store i64 0, i64* %out_msglen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end8
  %20 = load i64, i64* %signature_len, align 8
  %cmp16 = icmp ne i64 %20, 0
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end15
  %21 = load i64, i64* %signature_len, align 8
  %shr = lshr i64 %21, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 50
  %23 = load i8*, i8** %out_msg, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 52
  %25 = load i64, i64* %out_msglen18, align 8
  %inc19 = add i64 %25, 1
  store i64 %inc19, i64* %out_msglen18, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %conv, i8* %arrayidx, align 1
  %26 = load i64, i64* %signature_len, align 8
  %and20 = and i64 %26, 255
  %conv21 = trunc i64 %and20 to i8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 50
  %28 = load i8*, i8** %out_msg22, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 52
  %30 = load i64, i64* %out_msglen23, align 8
  %inc24 = add i64 %30, 1
  store i64 %inc24, i64* %out_msglen23, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %conv21, i8* %arrayidx25, align 1
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 50
  %33 = load i8*, i8** %out_msg26, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 52
  %35 = load i64, i64* %out_msglen27, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %35
  %36 = load i64, i64* %signature_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3278, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i64 0, i64 0), i8* noundef %add.ptr, i64 noundef %36) #5
  %37 = load i64, i64* %signature_len, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 52
  %39 = load i64, i64* %out_msglen28, align 8
  %add = add i64 %39, %37
  store i64 %add, i64* %out_msglen28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %if.end15
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 50
  %42 = load i8*, i8** %out_msg30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 12, i8* %arrayidx31, align 1
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 1
  %44 = load i32, i32* %state32, align 8
  %inc33 = add nsw i32 %44, 1
  store i32 %inc33, i32* %state32, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call34 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %45) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end29
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %47 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %46, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3293, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0), i32 noundef %47) #5
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end29
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %49, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3297, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.114, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.end14, %if.end7, %if.then6
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_certificate_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %dn_size = alloca i16, align 2
  %total_dn_size = alloca i16, align 2
  %ct_len = alloca i64, align 8
  %sa_len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %crt = alloca %struct.mbedtls_x509_crt*, align 8
  %authmode = alloca i32, align 4
  %sig_alg = alloca i16*, align 8
  %hash = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 50
  %4 = load i8*, i8** %out_msg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 16384
  store i8* %add.ptr, i8** %end, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2455, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.133, i64 0, i64 0)) #5
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %state, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %sni_authmode = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 2
  %10 = load i8, i8* %sni_authmode, align 2
  %conv = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 16
  %12 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %sni_authmode5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %12, i32 0, i32 2
  %13 = load i8, i8* %sni_authmode5, align 2
  %conv6 = zext i8 %13 to i32
  store i32 %conv6, i32* %authmode, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %authmode7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 4
  %16 = load i8, i8* %authmode7, align 2
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %authmode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(%struct.mbedtls_ssl_ciphersuite_t* noundef %17) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, i32* %authmode, align 4
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2469, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.134, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 50
  %21 = load i8*, i8** %out_msg13, align 8
  store i8* %21, i8** %buf, align 8
  %22 = load i8*, i8** %buf, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr14, i8** %p, align 8
  store i64 0, i64* %ct_len, align 8
  %23 = load i8*, i8** %p, align 8
  %24 = load i64, i64* %ct_len, align 8
  %inc15 = add i64 %24, 1
  store i64 %inc15, i64* %ct_len, align 8
  %add = add i64 1, %24
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %add
  store i8 1, i8* %arrayidx, align 1
  %25 = load i8*, i8** %p, align 8
  %26 = load i64, i64* %ct_len, align 8
  %inc16 = add i64 %26, 1
  store i64 %inc16, i64* %ct_len, align 8
  %add17 = add i64 1, %26
  %arrayidx18 = getelementptr inbounds i8, i8* %25, i64 %add17
  store i8 64, i8* %arrayidx18, align 1
  %27 = load i64, i64* %ct_len, align 8
  %inc19 = add i64 %27, 1
  store i64 %inc19, i64* %ct_len, align 8
  %conv20 = trunc i64 %27 to i8
  %28 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  %29 = load i64, i64* %ct_len, align 8
  %30 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %add.ptr22, i8** %p, align 8
  store i64 0, i64* %sa_len, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call23 = call i8* @mbedtls_ssl_get_sig_algs(%struct.mbedtls_ssl_context* noundef %31) #5
  %32 = bitcast i8* %call23 to i16*
  store i16* %32, i16** %sig_alg, align 8
  %33 = load i16*, i16** %sig_alg, align 8
  %cmp24 = icmp eq i16* %33, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end12
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %34 = load i16*, i16** %sig_alg, align 8
  %35 = load i16, i16* %34, align 2
  %conv28 = zext i16 %35 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i16*, i16** %sig_alg, align 8
  %37 = load i16, i16* %36, align 2
  %conv31 = zext i16 %37 to i32
  %shr = ashr i32 %conv31, 8
  %and = and i32 %shr, 255
  %conv32 = trunc i32 %and to i8
  store i8 %conv32, i8* %hash, align 1
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i8, i8* %hash, align 1
  %conv33 = zext i8 %39 to i32
  %call34 = call i32 @mbedtls_ssl_set_calc_verify_md(%struct.mbedtls_ssl_context* noundef %38, i32 noundef %conv33) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body
  br label %for.inc

if.end37:                                         ; preds = %for.body
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %41 = load i16*, i16** %sig_alg, align 8
  %42 = load i16, i16* %41, align 2
  %call38 = call i32 @mbedtls_ssl_sig_alg_is_supported(%struct.mbedtls_ssl_context* noundef %40, i16 noundef zeroext %42) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  br label %for.inc

if.end41:                                         ; preds = %if.end37
  %43 = load i16*, i16** %sig_alg, align 8
  %44 = load i16, i16* %43, align 2
  %conv42 = zext i16 %44 to i32
  %shr43 = ashr i32 %conv42, 8
  %and44 = and i32 %shr43, 255
  %conv45 = trunc i32 %and44 to i8
  %45 = load i8*, i8** %p, align 8
  %46 = load i64, i64* %sa_len, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %conv45, i8* %arrayidx46, align 1
  %47 = load i16*, i16** %sig_alg, align 8
  %48 = load i16, i16* %47, align 2
  %conv47 = zext i16 %48 to i32
  %and48 = and i32 %conv47, 255
  %conv49 = trunc i32 %and48 to i8
  %49 = load i8*, i8** %p, align 8
  %50 = load i64, i64* %sa_len, align 8
  %add50 = add i64 %50, 1
  %arrayidx51 = getelementptr inbounds i8, i8* %49, i64 %add50
  store i8 %conv49, i8* %arrayidx51, align 1
  %51 = load i64, i64* %sa_len, align 8
  %add52 = add i64 %51, 2
  store i64 %add52, i64* %sa_len, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %if.then40, %if.then36
  %52 = load i16*, i16** %sig_alg, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr, i16** %sig_alg, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %53 = load i64, i64* %sa_len, align 8
  %shr53 = lshr i64 %53, 8
  %and54 = and i64 %shr53, 255
  %conv55 = trunc i64 %and54 to i8
  %54 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %conv55, i8* %arrayidx56, align 1
  %55 = load i64, i64* %sa_len, align 8
  %and57 = and i64 %55, 255
  %conv58 = trunc i64 %and57 to i8
  %56 = load i8*, i8** %p, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 %conv58, i8* %arrayidx59, align 1
  %57 = load i64, i64* %sa_len, align 8
  %add60 = add i64 %57, 2
  store i64 %add60, i64* %sa_len, align 8
  %58 = load i64, i64* %sa_len, align 8
  %59 = load i8*, i8** %p, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %add.ptr61, i8** %p, align 8
  %60 = load i8*, i8** %p, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %add.ptr62, i8** %p, align 8
  store i16 0, i16* %total_dn_size, align 2
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf63 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %61, i32 0, i32 0
  %62 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf63, align 8
  %cert_req_ca_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %62, i32 0, i32 12
  %63 = load i8, i8* %cert_req_ca_list, align 2
  %conv64 = zext i8 %63 to i32
  %cmp65 = icmp eq i32 %conv64, 1
  br i1 %cmp65, label %if.then67, label %if.end133

if.then67:                                        ; preds = %for.end
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 16
  %65 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake68, align 8
  %dn_hints = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %65, i32 0, i32 49
  %66 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %dn_hints, align 8
  %cmp69 = icmp ne %struct.mbedtls_x509_crt* %66, null
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.then67
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 16
  %68 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake72, align 8
  %dn_hints73 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %68, i32 0, i32 49
  %69 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %dn_hints73, align 8
  store %struct.mbedtls_x509_crt* %69, %struct.mbedtls_x509_crt** %crt, align 8
  br label %if.end93

if.else74:                                        ; preds = %if.then67
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf75 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 0
  %71 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf75, align 8
  %dn_hints76 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %71, i32 0, i32 58
  %72 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %dn_hints76, align 8
  %cmp77 = icmp ne %struct.mbedtls_x509_crt* %72, null
  br i1 %cmp77, label %if.then79, label %if.else82

if.then79:                                        ; preds = %if.else74
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf80 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 0
  %74 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf80, align 8
  %dn_hints81 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %74, i32 0, i32 58
  %75 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %dn_hints81, align 8
  store %struct.mbedtls_x509_crt* %75, %struct.mbedtls_x509_crt** %crt, align 8
  br label %if.end92

if.else82:                                        ; preds = %if.else74
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 16
  %77 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake83, align 8
  %sni_ca_chain = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %77, i32 0, i32 26
  %78 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %sni_ca_chain, align 8
  %cmp84 = icmp ne %struct.mbedtls_x509_crt* %78, null
  br i1 %cmp84, label %if.then86, label %if.else89

if.then86:                                        ; preds = %if.else82
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake87 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %79, i32 0, i32 16
  %80 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake87, align 8
  %sni_ca_chain88 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %80, i32 0, i32 26
  %81 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %sni_ca_chain88, align 8
  store %struct.mbedtls_x509_crt* %81, %struct.mbedtls_x509_crt** %crt, align 8
  br label %if.end91

if.else89:                                        ; preds = %if.else82
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf90 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 0
  %83 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf90, align 8
  %ca_chain = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %83, i32 0, i32 36
  %84 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain, align 8
  store %struct.mbedtls_x509_crt* %84, %struct.mbedtls_x509_crt** %crt, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then86
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then79
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then71
  br label %while.cond

while.cond:                                       ; preds = %if.end107, %if.end93
  %85 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %cmp94 = icmp ne %struct.mbedtls_x509_crt* %85, null
  br i1 %cmp94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %86 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %86, i32 0, i32 3
  %87 = load i32, i32* %version, align 8
  %cmp96 = icmp ne i32 %87, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %88 = phi i1 [ false, %while.cond ], [ %cmp96, %land.rhs ]
  br i1 %88, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %89 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %subject_raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %89, i32 0, i32 7
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw, i32 0, i32 1
  %90 = load i64, i64* %len, align 8
  %conv98 = trunc i64 %90 to i16
  store i16 %conv98, i16* %dn_size, align 2
  %91 = load i8*, i8** %end, align 8
  %92 = load i8*, i8** %p, align 8
  %cmp99 = icmp ult i8* %91, %92
  br i1 %cmp99, label %if.then106, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %while.body
  %93 = load i8*, i8** %end, align 8
  %94 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %94 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %95 = load i16, i16* %dn_size, align 2
  %conv102 = zext i16 %95 to i64
  %add103 = add i64 2, %conv102
  %cmp104 = icmp ult i64 %sub.ptr.sub, %add103
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %lor.lhs.false101, %while.body
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %96, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2582, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.135, i64 0, i64 0)) #5
  br label %while.end

if.end107:                                        ; preds = %lor.lhs.false101
  %97 = load i16, i16* %dn_size, align 2
  %conv108 = zext i16 %97 to i32
  %shr109 = ashr i32 %conv108, 8
  %and110 = and i32 %shr109, 255
  %conv111 = trunc i32 %and110 to i8
  %98 = load i8*, i8** %p, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 %conv111, i8* %arrayidx112, align 1
  %99 = load i16, i16* %dn_size, align 2
  %conv113 = zext i16 %99 to i32
  %and114 = and i32 %conv113, 255
  %conv115 = trunc i32 %and114 to i8
  %100 = load i8*, i8** %p, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %100, i64 1
  store i8 %conv115, i8* %arrayidx116, align 1
  %101 = load i8*, i8** %p, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %add.ptr117, i8** %p, align 8
  %102 = load i8*, i8** %p, align 8
  %103 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %subject_raw118 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %103, i32 0, i32 7
  %p119 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw118, i32 0, i32 2
  %104 = load i8*, i8** %p119, align 8
  %105 = load i16, i16* %dn_size, align 2
  %conv120 = zext i16 %105 to i64
  %call121 = call i8* @memcpy(i8* noundef %102, i8* noundef %104, i64 noundef %conv120) #4
  %106 = load i16, i16* %dn_size, align 2
  %conv122 = zext i16 %106 to i32
  %107 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %conv122 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %107, i64 %idx.ext
  store i8* %add.ptr123, i8** %p, align 8
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %109 = load i8*, i8** %p, align 8
  %110 = load i16, i16* %dn_size, align 2
  %conv124 = zext i16 %110 to i32
  %idx.ext125 = sext i32 %conv124 to i64
  %idx.neg = sub i64 0, %idx.ext125
  %add.ptr126 = getelementptr inbounds i8, i8* %109, i64 %idx.neg
  %111 = load i16, i16* %dn_size, align 2
  %conv127 = zext i16 %111 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %108, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2591, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i64 0, i64 0), i8* noundef %add.ptr126, i64 noundef %conv127) #5
  %112 = load i16, i16* %dn_size, align 2
  %conv128 = zext i16 %112 to i32
  %add129 = add nsw i32 2, %conv128
  %113 = load i16, i16* %total_dn_size, align 2
  %conv130 = zext i16 %113 to i32
  %add131 = add nsw i32 %conv130, %add129
  %conv132 = trunc i32 %add131 to i16
  store i16 %conv132, i16* %total_dn_size, align 2
  %114 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %114, i32 0, i32 29
  %115 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %115, %struct.mbedtls_x509_crt** %crt, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %if.then106, %land.end
  br label %if.end133

if.end133:                                        ; preds = %while.end, %for.end
  %116 = load i8*, i8** %p, align 8
  %117 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast134 = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast135 = ptrtoint i8* %117 to i64
  %sub.ptr.sub136 = sub i64 %sub.ptr.lhs.cast134, %sub.ptr.rhs.cast135
  %118 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %118, i32 0, i32 52
  store i64 %sub.ptr.sub136, i64* %out_msglen, align 8
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %119, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %120 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg137 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %120, i32 0, i32 50
  %121 = load i8*, i8** %out_msg137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %121, i64 0
  store i8 13, i8* %arrayidx138, align 1
  %122 = load i16, i16* %total_dn_size, align 2
  %conv139 = zext i16 %122 to i32
  %shr140 = ashr i32 %conv139, 8
  %and141 = and i32 %shr140, 255
  %conv142 = trunc i32 %and141 to i8
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg143 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %123, i32 0, i32 50
  %124 = load i8*, i8** %out_msg143, align 8
  %125 = load i64, i64* %ct_len, align 8
  %add144 = add i64 4, %125
  %126 = load i64, i64* %sa_len, align 8
  %add145 = add i64 %add144, %126
  %arrayidx146 = getelementptr inbounds i8, i8* %124, i64 %add145
  store i8 %conv142, i8* %arrayidx146, align 1
  %127 = load i16, i16* %total_dn_size, align 2
  %conv147 = zext i16 %127 to i32
  %and148 = and i32 %conv147, 255
  %conv149 = trunc i32 %and148 to i8
  %128 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg150 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %128, i32 0, i32 50
  %129 = load i8*, i8** %out_msg150, align 8
  %130 = load i64, i64* %ct_len, align 8
  %add151 = add i64 4, %130
  %131 = load i64, i64* %sa_len, align 8
  %add152 = add i64 %add151, %131
  %add153 = add i64 %add152, 1
  %arrayidx154 = getelementptr inbounds i8, i8* %129, i64 %add153
  store i8 %conv149, i8* %arrayidx154, align 1
  %132 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call155 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %132) #5
  store i32 %call155, i32* %ret, align 4
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %133, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2605, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.137, i64 0, i64 0)) #5
  %134 = load i32, i32* %ret, align 4
  store i32 %134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end133, %if.then26, %if.then11
  %135 = load i32, i32* %retval, align 4
  ret i32 %135
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_server_hello_done(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3306, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 52
  store i64 4, i64* %out_msglen, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 50
  %4 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 14, i8* %arrayidx, align 1
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 1
  %6 = load i32, i32* %state, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %state, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 3
  %9 = load i8, i8* %transport, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %11) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3321, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0), i32 noundef %13) #5
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf6, align 8
  %transport7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 3
  %17 = load i8, i8* %transport7, align 1
  %conv8 = zext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %18) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3329, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i32 noundef %20) #5
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end5
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3334, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.139, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then4
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @mbedtls_ssl_parse_certificate(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_client_key_exchange(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3648, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.140, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3666, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.141, i64 0, i64 0), i32 noundef %6) #5
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 29
  %9 = load i8*, i8** %in_msg, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %10) #5
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call2
  store i8* %add.ptr, i8** %p, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 29
  %12 = load i8*, i8** %in_msg3, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 38
  %14 = load i64, i64* %in_hslen, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %add.ptr4, i8** %end, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 31
  %16 = load i32, i32* %in_msgtype, align 8
  %cmp5 = icmp ne i32 %16, 22
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3675, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 29
  %19 = load i8*, i8** %in_msg8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp9 = icmp ne i32 %conv, 16
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3681, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %22 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %22, i32 0, i32 4
  %23 = load i8, i8* %key_exchange, align 2
  %conv13 = zext i8 %23 to i32
  %cmp14 = icmp eq i32 %conv13, 2
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load i8*, i8** %end, align 8
  %call17 = call i32 @ssl_parse_client_dh_public(%struct.mbedtls_ssl_context* noundef %24, i8** noundef %p, i8* noundef %25) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3690, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.143, i64 0, i64 0), i32 noundef %27) #5
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %end, align 8
  %cmp22 = icmp ne i8* %29, %30
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3696, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 16
  %33 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake26, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %33, i32 0, i32 19
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 16
  %35 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake27, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %35, i32 0, i32 46
  %arraydecay = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 16
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake28, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 10
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 17
  %40 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 0
  %42 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf29, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %42, i32 0, i32 18
  %43 = load i8*, i8** %p_rng, align 8
  %call30 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm_ctx, i8* noundef %arraydecay, i64 noundef 1060, i64* noundef %pmslen, i32 (i8*, i8*, i64)* noundef %40, i8* noundef %43) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end25
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %45 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3706, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i64 0, i64 0), i32 noundef %45) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end25
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 16
  %48 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake35, align 8
  %dhm_ctx36 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %48, i32 0, i32 19
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx36, i32 0, i32 5
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %46, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3710, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i64 0, i64 0), %struct.mbedtls_mpi* noundef %K) #5
  br label %if.end202

if.else:                                          ; preds = %if.end12
  %49 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange37 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %49, i32 0, i32 4
  %50 = load i8, i8* %key_exchange37, align 2
  %conv38 = zext i8 %50 to i32
  %cmp39 = icmp eq i32 %conv38, 3
  br i1 %cmp39, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %51 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange41 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %51, i32 0, i32 4
  %52 = load i8, i8* %key_exchange41, align 2
  %conv42 = zext i8 %52 to i32
  %cmp43 = icmp eq i32 %conv42, 4
  br i1 %cmp43, label %if.then55, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %53 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange46 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %53, i32 0, i32 4
  %54 = load i8, i8* %key_exchange46, align 2
  %conv47 = zext i8 %54 to i32
  %cmp48 = icmp eq i32 %conv47, 9
  br i1 %cmp48, label %if.then55, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false45
  %55 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange51 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %55, i32 0, i32 4
  %56 = load i8, i8* %key_exchange51, align 2
  %conv52 = zext i8 %56 to i32
  %cmp53 = icmp eq i32 %conv52, 10
  br i1 %cmp53, label %if.then55, label %if.else82

if.then55:                                        ; preds = %lor.lhs.false50, %lor.lhs.false45, %lor.lhs.false, %if.else
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 16
  %58 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake56, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %58, i32 0, i32 20
  %59 = load i8*, i8** %p, align 8
  %60 = load i8*, i8** %end, align 8
  %61 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call57 = call i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, i8* noundef %59, i64 noundef %sub.ptr.sub) #5
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then55
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %63 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3782, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.147, i64 0, i64 0), i32 noundef %63) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then55
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 16
  %66 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake62, align 8
  %ecdh_ctx63 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %66, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3787, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx63, i32 noundef 1) #5
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake64 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 16
  %68 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake64, align 8
  %ecdh_ctx65 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %68, i32 0, i32 20
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 16
  %70 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake66, align 8
  %pmslen67 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %70, i32 0, i32 10
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 16
  %72 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake68, align 8
  %premaster69 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %72, i32 0, i32 46
  %arraydecay70 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster69, i64 0, i64 0
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf71 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 0
  %74 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf71, align 8
  %f_rng72 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %74, i32 0, i32 17
  %75 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng72, align 8
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 0
  %77 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf73, align 8
  %p_rng74 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %77, i32 0, i32 18
  %78 = load i8*, i8** %p_rng74, align 8
  %call75 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx65, i64* noundef %pmslen67, i8* noundef %arraydecay70, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef %75, i8* noundef %78) #5
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end61
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %80 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %79, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3795, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.148, i64 0, i64 0), i32 noundef %80) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.end61
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake80 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 16
  %83 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake80, align 8
  %ecdh_ctx81 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %83, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %81, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3800, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx81, i32 noundef 2) #5
  br label %if.end201

if.else82:                                        ; preds = %lor.lhs.false50
  %84 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange83 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %84, i32 0, i32 4
  %85 = load i8, i8* %key_exchange83, align 2
  %conv84 = zext i8 %85 to i32
  %cmp85 = icmp eq i32 %conv84, 5
  br i1 %cmp85, label %if.then87, label %if.else104

if.then87:                                        ; preds = %if.else82
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %87 = load i8*, i8** %end, align 8
  %call88 = call i32 @ssl_parse_client_psk_identity(%struct.mbedtls_ssl_context* noundef %86, i8** noundef %p, i8* noundef %87) #5
  store i32 %call88, i32* %ret, align 4
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %89 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %88, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3813, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i64 0, i64 0), i32 noundef %89) #5
  %90 = load i32, i32* %ret, align 4
  store i32 %90, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then87
  %91 = load i8*, i8** %p, align 8
  %92 = load i8*, i8** %end, align 8
  %cmp93 = icmp ne i8* %91, %92
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %93, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3819, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end92
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %95 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange97 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %95, i32 0, i32 4
  %96 = load i8, i8* %key_exchange97, align 2
  %conv98 = zext i8 %96 to i32
  %call99 = call i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %94, i32 noundef %conv98) #5
  store i32 %call99, i32* %ret, align 4
  %cmp100 = icmp ne i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end96
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %98 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3827, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i64 0, i64 0), i32 noundef %98) #5
  %99 = load i32, i32* %ret, align 4
  store i32 %99, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.end96
  br label %if.end200

if.else104:                                       ; preds = %if.else82
  %100 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange105 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %100, i32 0, i32 4
  %101 = load i8, i8* %key_exchange105, align 2
  %conv106 = zext i8 %101 to i32
  %cmp107 = icmp eq i32 %conv106, 7
  br i1 %cmp107, label %if.then109, label %if.else127

if.then109:                                       ; preds = %if.else104
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %103 = load i8*, i8** %end, align 8
  %call110 = call i32 @ssl_parse_client_psk_identity(%struct.mbedtls_ssl_context* noundef %102, i8** noundef %p, i8* noundef %103) #5
  store i32 %call110, i32* %ret, align 4
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then109
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %105 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %104, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3852, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i64 0, i64 0), i32 noundef %105) #5
  %106 = load i32, i32* %ret, align 4
  store i32 %106, i32* %retval, align 4
  br label %return

if.end114:                                        ; preds = %if.then109
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %108 = load i8*, i8** %p, align 8
  %109 = load i8*, i8** %end, align 8
  %call115 = call i32 @ssl_parse_encrypted_pms(%struct.mbedtls_ssl_context* noundef %107, i8* noundef %108, i8* noundef %109, i64 noundef 2) #5
  store i32 %call115, i32* %ret, align 4
  %cmp116 = icmp ne i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end114
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %111 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %110, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3858, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.151, i64 0, i64 0), i32 noundef %111) #5
  %112 = load i32, i32* %ret, align 4
  store i32 %112, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end114
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %114 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange120 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %114, i32 0, i32 4
  %115 = load i8, i8* %key_exchange120, align 2
  %conv121 = zext i8 %115 to i32
  %call122 = call i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %113, i32 noundef %conv121) #5
  store i32 %call122, i32* %ret, align 4
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end119
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %117 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %116, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3866, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i64 0, i64 0), i32 noundef %117) #5
  %118 = load i32, i32* %ret, align 4
  store i32 %118, i32* %retval, align 4
  br label %return

if.end126:                                        ; preds = %if.end119
  br label %if.end199

if.else127:                                       ; preds = %if.else104
  %119 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange128 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %119, i32 0, i32 4
  %120 = load i8, i8* %key_exchange128, align 2
  %conv129 = zext i8 %120 to i32
  %cmp130 = icmp eq i32 %conv129, 6
  br i1 %cmp130, label %if.then132, label %if.else154

if.then132:                                       ; preds = %if.else127
  %121 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %122 = load i8*, i8** %end, align 8
  %call133 = call i32 @ssl_parse_client_psk_identity(%struct.mbedtls_ssl_context* noundef %121, i8** noundef %p, i8* noundef %122) #5
  store i32 %call133, i32* %ret, align 4
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.then132
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %124 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %123, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3878, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i64 0, i64 0), i32 noundef %124) #5
  %125 = load i32, i32* %ret, align 4
  store i32 %125, i32* %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.then132
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %127 = load i8*, i8** %end, align 8
  %call138 = call i32 @ssl_parse_client_dh_public(%struct.mbedtls_ssl_context* noundef %126, i8** noundef %p, i8* noundef %127) #5
  store i32 %call138, i32* %ret, align 4
  %cmp139 = icmp ne i32 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end137
  %128 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %129 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %128, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3883, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.143, i64 0, i64 0), i32 noundef %129) #5
  %130 = load i32, i32* %ret, align 4
  store i32 %130, i32* %retval, align 4
  br label %return

if.end142:                                        ; preds = %if.end137
  %131 = load i8*, i8** %p, align 8
  %132 = load i8*, i8** %end, align 8
  %cmp143 = icmp ne i8* %131, %132
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end142
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %133, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3889, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end146:                                        ; preds = %if.end142
  %134 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %135 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange147 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %135, i32 0, i32 4
  %136 = load i8, i8* %key_exchange147, align 2
  %conv148 = zext i8 %136 to i32
  %call149 = call i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %134, i32 noundef %conv148) #5
  store i32 %call149, i32* %ret, align 4
  %cmp150 = icmp ne i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end146
  %137 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %138 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %137, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3914, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i64 0, i64 0), i32 noundef %138) #5
  %139 = load i32, i32* %ret, align 4
  store i32 %139, i32* %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.end146
  br label %if.end198

if.else154:                                       ; preds = %if.else127
  %140 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange155 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %140, i32 0, i32 4
  %141 = load i8, i8* %key_exchange155, align 2
  %conv156 = zext i8 %141 to i32
  %cmp157 = icmp eq i32 %conv156, 8
  br i1 %cmp157, label %if.then159, label %if.else184

if.then159:                                       ; preds = %if.else154
  %142 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %143 = load i8*, i8** %end, align 8
  %call160 = call i32 @ssl_parse_client_psk_identity(%struct.mbedtls_ssl_context* noundef %142, i8** noundef %p, i8* noundef %143) #5
  store i32 %call160, i32* %ret, align 4
  %cmp161 = icmp ne i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.then159
  %144 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %145 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %144, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4001, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i64 0, i64 0), i32 noundef %145) #5
  %146 = load i32, i32* %ret, align 4
  store i32 %146, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.then159
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake165 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %147, i32 0, i32 16
  %148 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake165, align 8
  %ecdh_ctx166 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %148, i32 0, i32 20
  %149 = load i8*, i8** %p, align 8
  %150 = load i8*, i8** %end, align 8
  %151 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast167 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %151 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %call170 = call i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx166, i8* noundef %149, i64 noundef %sub.ptr.sub169) #5
  store i32 %call170, i32* %ret, align 4
  %cmp171 = icmp ne i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end164
  %152 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %153 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %152, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4008, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.147, i64 0, i64 0), i32 noundef %153) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end174:                                        ; preds = %if.end164
  %154 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %155 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake175 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %155, i32 0, i32 16
  %156 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake175, align 8
  %ecdh_ctx176 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %156, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %154, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4013, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx176, i32 noundef 1) #5
  %157 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %158 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange177 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %158, i32 0, i32 4
  %159 = load i8, i8* %key_exchange177, align 2
  %conv178 = zext i8 %159 to i32
  %call179 = call i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %157, i32 noundef %conv178) #5
  store i32 %call179, i32* %ret, align 4
  %cmp180 = icmp ne i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.end174
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %161 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %160, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4018, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i64 0, i64 0), i32 noundef %161) #5
  %162 = load i32, i32* %ret, align 4
  store i32 %162, i32* %retval, align 4
  br label %return

if.end183:                                        ; preds = %if.end174
  br label %if.end197

if.else184:                                       ; preds = %if.else154
  %163 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange185 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %163, i32 0, i32 4
  %164 = load i8, i8* %key_exchange185, align 2
  %conv186 = zext i8 %164 to i32
  %cmp187 = icmp eq i32 %conv186, 1
  br i1 %cmp187, label %if.then189, label %if.else195

if.then189:                                       ; preds = %if.else184
  %165 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %166 = load i8*, i8** %p, align 8
  %167 = load i8*, i8** %end, align 8
  %call190 = call i32 @ssl_parse_encrypted_pms(%struct.mbedtls_ssl_context* noundef %165, i8* noundef %166, i8* noundef %167, i64 noundef 0) #5
  store i32 %call190, i32* %ret, align 4
  %cmp191 = icmp ne i32 %call190, 0
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.then189
  %168 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %169 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %168, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4030, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.152, i64 0, i64 0), i32 noundef %169) #5
  %170 = load i32, i32* %ret, align 4
  store i32 %170, i32* %retval, align 4
  br label %return

if.end194:                                        ; preds = %if.then189
  br label %if.end196

if.else195:                                       ; preds = %if.else184
  %171 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %171, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4059, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.end194
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.end183
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.end153
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.end126
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end103
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end79
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.end34
  %172 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call203 = call i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef %172) #5
  store i32 %call203, i32* %ret, align 4
  %cmp204 = icmp ne i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.end202
  %173 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %174 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %173, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4065, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i64 0, i64 0), i32 noundef %174) #5
  %175 = load i32, i32* %ret, align 4
  store i32 %175, i32* %retval, align 4
  br label %return

if.end207:                                        ; preds = %if.end202
  %176 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %176, i32 0, i32 1
  %177 = load i32, i32* %state, align 8
  %inc = add nsw i32 %177, 1
  store i32 %inc, i32* %state, align 8
  %178 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %178, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4071, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.153, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end207, %if.then206, %if.else195, %if.then193, %if.then182, %if.then173, %if.then163, %if.then152, %if.then145, %if.then141, %if.then136, %if.then125, %if.then118, %if.then113, %if.then102, %if.then95, %if.then91, %if.then78, %if.then60, %if.then33, %if.then24, %if.then20, %if.then11, %if.then6, %if.then
  %179 = load i32, i32* %retval, align 4
  ret i32 %179
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_verify(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %sig_len = alloca i64, align 8
  %hash = alloca [48 x i8], align 16
  %hash_start = alloca i8*, align 8
  %hashlen = alloca i64, align 8
  %pk_alg = alloca i32, align 4
  %md_alg = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %peer_pk = alloca %struct.mbedtls_pk_context*, align 8
  %dummy_hlen = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %hash, i64 0, i64 0
  store i8* %arraydecay, i8** %hash_start, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4110, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.159, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(%struct.mbedtls_ssl_ciphersuite_t* noundef %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4114, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0)) #5
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 15
  %9 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %9, i32 0, i32 9
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %10, null
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4122, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0)) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 1
  %13 = load i32, i32* %state3, align 8
  %inc4 = add nsw i32 %13, 1
  store i32 %inc4, i32* %state3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call6 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 0) #5
  store i32 %call6, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 0, %15
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4139, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.141, i64 0, i64 0), i32 noundef %17) #5
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 1
  %20 = load i32, i32* %state10, align 8
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %state10, align 8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 31
  %22 = load i32, i32* %in_msgtype, align 8
  %cmp12 = icmp ne i32 %22, 22
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 29
  %24 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %cmp13 = icmp ne i32 %conv, 15
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4149, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0)) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call17 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %27) #5
  store i64 %call17, i64* %i, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 15
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate18, align 8
  %peer_cert19 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 9
  %30 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert19, align 8
  %cmp20 = icmp eq %struct.mbedtls_x509_crt* %30, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 15
  %32 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate24, align 8
  %peer_cert25 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %32, i32 0, i32 9
  %33 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert25, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %33, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %peer_pk, align 8
  %34 = load i64, i64* %i, align 8
  %add = add i64 %34, 2
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 38
  %36 = load i64, i64* %in_hslen, align 8
  %cmp26 = icmp ugt i64 %add, %36
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4174, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 29
  %39 = load i8*, i8** %in_msg30, align 8
  %40 = load i64, i64* %i, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i8, i8* %arrayidx31, align 1
  %call32 = call i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %41) #5
  store i32 %call32, i32* %md_alg, align 4
  %42 = load i32, i32* %md_alg, align 4
  %cmp33 = icmp eq i32 %42, 0
  br i1 %cmp33, label %if.then41, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end29
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 29
  %45 = load i8*, i8** %in_msg36, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %47 to i32
  %call39 = call i32 @mbedtls_ssl_set_calc_verify_md(%struct.mbedtls_ssl_context* noundef %43, i32 noundef %conv38) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false35, %if.end29
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4186, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.162, i64 0, i64 0)) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false35
  %49 = load i32, i32* %md_alg, align 4
  %cmp43 = icmp eq i32 2, %49
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %50 = load i8*, i8** %hash_start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 16
  store i8* %add.ptr, i8** %hash_start, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  store i64 0, i64* %hashlen, align 8
  %51 = load i64, i64* %i, align 8
  %inc47 = add i64 %51, 1
  store i64 %inc47, i64* %i, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 29
  %53 = load i8*, i8** %in_msg48, align 8
  %54 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %53, i64 %54
  %55 = load i8, i8* %arrayidx49, align 1
  %call50 = call i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext %55) #5
  store i32 %call50, i32* %pk_alg, align 4
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %56, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4207, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.162, i64 0, i64 0)) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end46
  %57 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %58 = load i32, i32* %pk_alg, align 4
  %call55 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %57, i32 noundef %58) #5
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end54
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %59, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4216, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.163, i64 0, i64 0)) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end54
  %60 = load i64, i64* %i, align 8
  %inc59 = add i64 %60, 1
  store i64 %inc59, i64* %i, align 8
  %61 = load i64, i64* %i, align 8
  %add60 = add i64 %61, 2
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 38
  %63 = load i64, i64* %in_hslen61, align 8
  %cmp62 = icmp ugt i64 %add60, %63
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end58
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4224, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end58
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 29
  %66 = load i8*, i8** %in_msg66, align 8
  %67 = load i64, i64* %i, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %66, i64 %67
  %68 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %68 to i32
  %shl = shl i32 %conv68, 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg69 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 29
  %70 = load i8*, i8** %in_msg69, align 8
  %71 = load i64, i64* %i, align 8
  %add70 = add i64 %71, 1
  %arrayidx71 = getelementptr inbounds i8, i8* %70, i64 %add70
  %72 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %72 to i32
  %or = or i32 %shl, %conv72
  %conv73 = sext i32 %or to i64
  store i64 %conv73, i64* %sig_len, align 8
  %73 = load i64, i64* %i, align 8
  %add74 = add i64 %73, 2
  store i64 %add74, i64* %i, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %sig_len, align 8
  %add75 = add i64 %74, %75
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 38
  %77 = load i64, i64* %in_hslen76, align 8
  %cmp77 = icmp ne i64 %add75, %77
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end65
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %78, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4233, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end65
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake81 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %79, i32 0, i32 16
  %80 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake81, align 8
  %calc_verify = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %80, i32 0, i32 13
  %81 = load void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify, align 8
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay82 = getelementptr inbounds [48 x i8], [48 x i8]* %hash, i64 0, i64 0
  call void %81(%struct.mbedtls_ssl_context* noundef %82, i8* noundef %arraydecay82, i64* noundef %dummy_hlen) #5
  %83 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %peer_pk, align 8
  %84 = load i32, i32* %md_alg, align 4
  %85 = load i8*, i8** %hash_start, align 8
  %86 = load i64, i64* %hashlen, align 8
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %87, i32 0, i32 29
  %88 = load i8*, i8** %in_msg83, align 8
  %89 = load i64, i64* %i, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %88, i64 %89
  %90 = load i64, i64* %sig_len, align 8
  %call85 = call i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef %83, i32 noundef %84, i8* noundef %85, i64 noundef %86, i8* noundef %add.ptr84, i64 noundef %90) #5
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end80
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %92 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %91, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4247, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.164, i64 0, i64 0), i32 noundef %92) #5
  %93 = load i32, i32* %ret, align 4
  store i32 %93, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end80
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_handshake_status(%struct.mbedtls_ssl_context* noundef %94) #5
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %95, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4253, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i64 0, i64 0)) #5
  %96 = load i32, i32* %ret, align 4
  store i32 %96, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end89, %if.then88, %if.then79, %if.then64, %if.then57, %if.then53, %if.then41, %if.then28, %if.then22, %if.then15, %if.then8, %if.then2, %if.then
  %97 = load i32, i32* %retval, align 4
  ret i32 %97
}

declare dso_local i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_parse_finished(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_new_session_ticket(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %tlen = alloca i64, align 8
  %lifetime = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4267, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.166, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 50
  %3 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 4, i8* %arrayidx, align 1
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_ticket_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 31
  %6 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)** %f_ticket_write, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %p_ticket = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 33
  %9 = load i8*, i8** %p_ticket, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 15
  %11 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 50
  %13 = load i8*, i8** %out_msg2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 10
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 50
  %15 = load i8*, i8** %out_msg3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %15, i64 16384
  %call = call i32 %6(i8* noundef %9, %struct.mbedtls_ssl_session* noundef %11, i8* noundef %add.ptr, i8* noundef %add.ptr4, i64* noundef %tlen, i32* noundef %lifetime) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4289, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.167, i64 0, i64 0), i32 noundef %17) #5
  store i64 0, i64* %tlen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %18, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 50
  %20 = load i8*, i8** %out_msg5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %20, i64 4
  store i8 %conv, i8* %arrayidx6, align 1
  %21 = load i32, i32* %lifetime, align 4
  %shr7 = lshr i32 %21, 16
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 50
  %23 = load i8*, i8** %out_msg10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 5
  store i8 %conv9, i8* %arrayidx11, align 1
  %24 = load i32, i32* %lifetime, align 4
  %shr12 = lshr i32 %24, 8
  %and13 = and i32 %shr12, 255
  %conv14 = trunc i32 %and13 to i8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 50
  %26 = load i8*, i8** %out_msg15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 6
  store i8 %conv14, i8* %arrayidx16, align 1
  %27 = load i32, i32* %lifetime, align 4
  %and17 = and i32 %27, 255
  %conv18 = trunc i32 %and17 to i8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 50
  %29 = load i8*, i8** %out_msg19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %29, i64 7
  store i8 %conv18, i8* %arrayidx20, align 1
  %30 = load i64, i64* %tlen, align 8
  %shr21 = lshr i64 %30, 8
  %and22 = and i64 %shr21, 255
  %conv23 = trunc i64 %and22 to i8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 50
  %32 = load i8*, i8** %out_msg24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 8
  store i8 %conv23, i8* %arrayidx25, align 1
  %33 = load i64, i64* %tlen, align 8
  %and26 = and i64 %33, 255
  %conv27 = trunc i64 %and26 to i8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 50
  %35 = load i8*, i8** %out_msg28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 9
  store i8 %conv27, i8* %arrayidx29, align 1
  %36 = load i64, i64* %tlen, align 8
  %add = add i64 10, %36
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 52
  store i64 %add, i64* %out_msglen, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 16
  %39 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %39, i32 0, i32 4
  store i8 0, i8* %new_session_ticket, align 4
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call30 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %40) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %42 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4305, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0), i32 noundef %42) #5
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 4309, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.168, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare dso_local i32 @mbedtls_ssl_write_change_cipher_spec(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_write_finished(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_handshake_wrapup(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_preference_order(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %order) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %order.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %respect_cli_pref = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 13
  store i8 %conv, i8* %respect_cli_pref, align 1
  ret void
}

declare dso_local i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef, i64 noundef) #2

declare dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_ssl_in_hdr_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 13, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i64 5, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

declare dso_local i32 @mbedtls_ssl_dtls_replay_check(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_dtls_replay_update(%struct.mbedtls_ssl_context* noundef) #2

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

declare dso_local zeroext i16 @mbedtls_ssl_read_version(i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_parse_server_name_ext(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef) #2

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
  %add = add i64 1, %4
  %cmp1 = icmp ne i64 %2, %add
  br i1 %cmp1, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 61
  %8 = load i64, i64* %verify_data_len2, align 8
  %cmp3 = icmp ne i64 %conv, %8
  br i1 %cmp3, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %peer_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 63
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %peer_verify_data, i64 0, i64 0
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 61
  %12 = load i64, i64* %verify_data_len6, align 8
  %call = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr, i8* noundef %arraydecay, i64 noundef %12) #5
  %cmp7 = icmp ne i32 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0)) #5
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call10 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %14, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  br label %if.end21

if.else:                                          ; preds = %entry
  %15 = load i64, i64* %len.addr, align 8
  %cmp11 = icmp ne i64 %15, 1
  br i1 %cmp11, label %if.then18, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %16 = load i8*, i8** %buf.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false13, %if.else
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i64 0, i64 0)) #5
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call19 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %19, i8 noundef zeroext 2, i8 noundef zeroext 40) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false13
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 60
  store i32 1, i32* %secure_renegotiation, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then18, %if.then9
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @mbedtls_ssl_parse_sig_alg_ext(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_supported_groups_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %list_size = alloca i64, align 8
  %our_size = alloca i64, align 8
  %p = alloca i8*, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %curves = alloca %struct.mbedtls_ecp_curve_info**, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 8
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %or = or i32 %shl, %conv2
  %conv3 = sext i32 %or to i64
  store i64 %conv3, i64* %list_size, align 8
  %7 = load i64, i64* %list_size, align 8
  %add = add i64 %7, 2
  %8 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp ne i64 %add, %8
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, i64* %list_size, align 8
  %rem = urem i64 %9, 2
  %cmp6 = icmp ne i64 %rem, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %11, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %curves11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 21
  %14 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves11, align 8
  %cmp12 = icmp ne %struct.mbedtls_ecp_curve_info** %14, null
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %16, i8 noundef zeroext 2, i8 noundef zeroext 47) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %17 = load i64, i64* %list_size, align 8
  %div = udiv i64 %17, 2
  %add17 = add i64 %div, 1
  store i64 %add17, i64* %our_size, align 8
  %18 = load i64, i64* %our_size, align 8
  %cmp18 = icmp ugt i64 %18, 14
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i64 14, i64* %our_size, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
  %19 = load i64, i64* %our_size, align 8
  %call22 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 8) #4
  %20 = bitcast i8* %call22 to %struct.mbedtls_ecp_curve_info**
  store %struct.mbedtls_ecp_curve_info** %20, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %cmp23 = icmp eq %struct.mbedtls_ecp_curve_info** %20, null
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call26 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %21, i8 noundef zeroext 2, i8 noundef zeroext 80) #5
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end21
  %22 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 16
  %24 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake28, align 8
  %curves29 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %24, i32 0, i32 21
  store %struct.mbedtls_ecp_curve_info** %22, %struct.mbedtls_ecp_curve_info*** %curves29, align 8
  %25 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %if.end27
  %26 = load i64, i64* %list_size, align 8
  %cmp30 = icmp ugt i64 %26, 0
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i64, i64* %our_size, align 8
  %cmp32 = icmp ugt i64 %27, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i8*, i8** %p, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %30 to i32
  %shl36 = shl i32 %conv35, 8
  %31 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %32 to i32
  %or39 = or i32 %shl36, %conv38
  %conv40 = trunc i32 %or39 to i16
  %call41 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext %conv40) #5
  store %struct.mbedtls_ecp_curve_info* %call41, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %33 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp42 = icmp ne %struct.mbedtls_ecp_curve_info* %33, null
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %while.body
  %34 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %35 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %35, i32 1
  store %struct.mbedtls_ecp_curve_info** %incdec.ptr, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  store %struct.mbedtls_ecp_curve_info* %34, %struct.mbedtls_ecp_curve_info** %35, align 8
  %36 = load i64, i64* %our_size, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %our_size, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %while.body
  %37 = load i64, i64* %list_size, align 8
  %sub = sub i64 %37, 2
  store i64 %sub, i64* %list_size, align 8
  %38 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %add.ptr46, i8** %p, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then25, %if.then14, %if.then8, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_supported_point_formats(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
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
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
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
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv20) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false12
  %21 = load i64, i64* %list_size, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %list_size, align 8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
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
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ne i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp sge i32 %conv, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 47) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 0
  store i8 %6, i8* %mfl_code, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
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
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 7
  %6 = load i8, i8* %encrypt_then_mac, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %encrypt_then_mac4 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 14
  store i32 1, i32* %encrypt_then_mac4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
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
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 8
  %6 = load i8, i8* %extended_ms, align 2
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %extended_ms4 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 6
  store i8 1, i8* %extended_ms4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
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
  %ret = alloca i32, align 4
  %session = alloca %struct.mbedtls_ssl_session, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef %session) #5
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_ticket_parse = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 32
  %2 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)** %f_ticket_parse, align 8
  %cmp = icmp eq i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %f_ticket_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 31
  %5 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)** %f_ticket_write, align 8
  %cmp2 = icmp eq i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 4
  store i8 1, i8* %new_session_ticket, align 4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %9 = load i64, i64* %len.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i64 noundef %9) #5
  %10 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 2
  %12 = load i32, i32* %renego_status, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf9, align 8
  %f_ticket_parse10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 32
  %16 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)** %f_ticket_parse10, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf11, align 8
  %p_ticket = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 33
  %19 = load i8*, i8** %p_ticket, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64, i64* %len.addr, align 8
  %call = call i32 %16(i8* noundef %19, %struct.mbedtls_ssl_session* noundef %session, i8* noundef %20, i64 noundef %21) #5
  store i32 %call, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %session) #5
  %22 = load i32, i32* %ret, align 4
  %cmp14 = icmp eq i32 %22, -29056
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.end20

if.else:                                          ; preds = %if.then13
  %24 = load i32, i32* %ret, align 4
  %cmp16 = icmp eq i32 %24, -28032
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.end19

if.else18:                                        ; preds = %if.else
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0), i32 noundef %27) #5
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then15
  store i32 0, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 15
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 6
  %30 = load i64, i64* %id_len, align 8
  %id_len22 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %session, i32 0, i32 6
  store i64 %30, i64* %id_len22, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %session, i32 0, i32 7
  %31 = bitcast [32 x i8]* %id to i8*
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 15
  %33 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate23, align 8
  %id24 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %33, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id24, i64 0, i64 0
  %id_len25 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %session, i32 0, i32 6
  %34 = load i64, i64* %id_len25, align 8
  %call26 = call i8* @memcpy(i8* noundef %31, i8* noundef %arraydecay, i64 noundef %34) #4
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 15
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate27, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %36) #5
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 15
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate28, align 8
  %39 = bitcast %struct.mbedtls_ssl_session* %38 to i8*
  %40 = bitcast %struct.mbedtls_ssl_session* %session to i8*
  %call29 = call i8* @memcpy(i8* noundef %39, i8* noundef %40, i64 noundef 152) #4
  %41 = bitcast %struct.mbedtls_ssl_session* %session to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %41, i64 noundef 152) #5
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i64 0, i64 0)) #5
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 16
  %44 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake30, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %44, i32 0, i32 0
  store i8 1, i8* %resume, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 16
  %46 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %new_session_ticket32 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %46, i32 0, i32 4
  store i8 0, i8* %new_session_ticket32, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.end20, %if.then7, %if.then4, %if.then
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

declare dso_local i32 @mbedtls_ssl_parse_alpn_ext(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_ciphersuite_match(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %suite_id, %struct.mbedtls_ssl_ciphersuite_t** noundef %ciphersuite_info) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %suite_id.addr = alloca i32, align 4
  %ciphersuite_info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t**, align 8
  %suite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %sig_type = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %suite_id, i32* %suite_id.addr, align 4
  store %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, %struct.mbedtls_ssl_ciphersuite_t*** %ciphersuite_info.addr, align 8
  %0 = load i32, i32* %suite_id.addr, align 4
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %0) #5
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 813, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load i32, i32* %suite_id.addr, align 4
  %5 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 818, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i64 0, i64 0), i32 noundef %4, i8* noundef %6) #5
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %7, i32 0, i32 6
  %8 = load i16, i16* %min_tls_version, align 4
  %conv = zext i16 %8 to i32
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 4
  %10 = load i32, i32* %tls_version, align 4
  %cmp1 = icmp ugt i32 %conv, %10
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %11, i32 0, i32 7
  %12 = load i16, i16* %max_tls_version, align 2
  %conv3 = zext i16 %12 to i32
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 4
  %14 = load i32, i32* %tls_version4, align 4
  %cmp5 = icmp ult i32 %conv3, %14
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 823, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %16 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %call9 = call i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef %16) #5
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 16
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %curves = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 21
  %19 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %cmp10 = icmp eq %struct.mbedtls_ecp_curve_info** %19, null
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 16
  %21 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake13, align 8
  %curves14 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %21, i32 0, i32 21
  %22 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves14, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %22, i64 0
  %23 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %arrayidx, align 8
  %cmp15 = icmp eq %struct.mbedtls_ecp_curve_info* %23, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false12, %land.lhs.true
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false12, %if.end8
  %25 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %call19 = call i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef %25) #5
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end26

land.lhs.true21:                                  ; preds = %if.end18
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %call22 = call i32 @ssl_conf_has_psk_or_cb(%struct.mbedtls_ssl_config* noundef %27) #5
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true21
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 855, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true21, %if.end18
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %call27 = call i32 @ssl_pick_cert(%struct.mbedtls_ssl_context* noundef %29, %struct.mbedtls_ssl_ciphersuite_t* noundef %30) #5
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 871, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %32 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %call32 = call i32 @mbedtls_ssl_get_ciphersuite_sig_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %32) #5
  store i32 %call32, i32* %sig_type, align 4
  %33 = load i32, i32* %sig_type, align 4
  %cmp33 = icmp ne i32 %33, 0
  br i1 %cmp33, label %land.lhs.true35, label %if.end42

land.lhs.true35:                                  ; preds = %if.end31
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %35 = load i32, i32* %sig_type, align 4
  %call36 = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %35) #5
  %conv37 = zext i8 %call36 to i32
  %call38 = call i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(%struct.mbedtls_ssl_context* noundef %34, i32 noundef %conv37) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true35
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %37 = load i32, i32* %sig_type, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %36, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.70, i64 0, i64 0), i32 noundef %37) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true35, %if.end31
  %38 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info, align 8
  %39 = load %struct.mbedtls_ssl_ciphersuite_t**, %struct.mbedtls_ssl_ciphersuite_t*** %ciphersuite_info.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %38, %struct.mbedtls_ssl_ciphersuite_t** %39, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then41, %if.then30, %if.then25, %if.then17, %if.then7, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_sig_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

declare dso_local zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef) #2

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext) #2

declare dso_local void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef) #2

declare dso_local void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_conf_has_psk_or_cb(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 26
  %1 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk, align 8
  %cmp = icmp ne i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 47
  %3 = load i64, i64* %psk_identity_len, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 46
  %5 = load i8*, i8** %psk_identity, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 44
  %7 = load i8*, i8** %psk, align 8
  %cmp5 = icmp ne i8* %7, null
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 45
  %9 = load i64, i64* %psk_len, align 8
  %cmp6 = icmp ne i64 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_pick_cert(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_ciphersuite_t* noundef %ciphersuite_info) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ciphersuite_info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %cur = alloca %struct.mbedtls_ssl_key_cert*, align 8
  %list = alloca %struct.mbedtls_ssl_key_cert*, align 8
  %pk_alg = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %ciphersuite_info, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %call = call i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %0) #5
  store i32 %call, i32* %pk_alg, align 4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_key_cert = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 25
  %3 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %sni_key_cert, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_key_cert* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %sni_key_cert2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 25
  %6 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %sni_key_cert2, align 8
  store %struct.mbedtls_ssl_key_cert* %6, %struct.mbedtls_ssl_key_cert** %list, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %key_cert = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 35
  %9 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  store %struct.mbedtls_ssl_key_cert* %9, %struct.mbedtls_ssl_key_cert** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %pk_alg, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.71, i64 0, i64 0)) #5
  %12 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %list, align 8
  %cmp6 = icmp eq %struct.mbedtls_ssl_key_cert* %12, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i64 0, i64 0)) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %14 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %list, align 8
  store %struct.mbedtls_ssl_key_cert* %14, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %15 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cmp9 = icmp ne %struct.mbedtls_ssl_key_cert* %15, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %flags, align 4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cert = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert, align 8
  call void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.73, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %18) #5
  %19 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cert10 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %19, i32 0, i32 0
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert10, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %20, i32 0, i32 13
  %21 = load i32, i32* %pk_alg, align 4
  %call11 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %pk, i32 noundef %21) #5
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0)) #5
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %23 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cert14 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert14, align 8
  %25 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %call15 = call i32 @mbedtls_ssl_check_cert_usage(%struct.mbedtls_x509_crt* noundef %24, %struct.mbedtls_ssl_ciphersuite_t* noundef %25, i32 noundef 1, i32* noundef %flags) #5
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.75, i64 0, i64 0)) #5
  br label %for.inc

if.end18:                                         ; preds = %if.end13
  %27 = load i32, i32* %pk_alg, align 4
  %cmp19 = icmp eq i32 %27, 4
  br i1 %cmp19, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end18
  %28 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cert20 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %28, i32 0, i32 0
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert20, align 8
  %pk21 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %29, i32 0, i32 13
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 16
  %31 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake22, align 8
  %curves = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %31, i32 0, i32 21
  %32 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %call23 = call i32 @ssl_check_key_curve(%struct.mbedtls_pk_context* noundef %pk21, %struct.mbedtls_ecp_curve_info** noundef %32) #5
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 774, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i64 0, i64 0)) #5
  br label %for.inc

if.end26:                                         ; preds = %land.lhs.true, %if.end18
  br label %for.end

for.inc:                                          ; preds = %if.then25, %if.then17, %if.then12
  %34 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %34, i32 0, i32 2
  %35 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %next, align 8
  store %struct.mbedtls_ssl_key_cert* %35, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.end26, %for.cond
  %36 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cmp27 = icmp ne %struct.mbedtls_ssl_key_cert* %36, null
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %for.end
  %37 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 16
  %39 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake29, align 8
  %key_cert30 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %39, i32 0, i32 24
  store %struct.mbedtls_ssl_key_cert* %37, %struct.mbedtls_ssl_key_cert** %key_cert30, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 16
  %42 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %key_cert32 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %42, i32 0, i32 24
  %43 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert32, align 8
  %cert33 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %43, i32 0, i32 0
  %44 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert33, align 8
  call void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef %40, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 788, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.77, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %44) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then28, %if.then7, %if.then4
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare dso_local i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #2

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_check_cert_usage(%struct.mbedtls_x509_crt* noundef, %struct.mbedtls_ssl_ciphersuite_t* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_key_curve(%struct.mbedtls_pk_context* noundef %pk, %struct.mbedtls_ecp_curve_info** noundef %curves) #0 {
entry:
  %retval = alloca i32, align 4
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %curves.addr = alloca %struct.mbedtls_ecp_curve_info**, align 8
  %crv = alloca %struct.mbedtls_ecp_curve_info**, align 8
  %grp_id = alloca i32, align 4
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  store %struct.mbedtls_ecp_curve_info** %curves, %struct.mbedtls_ecp_curve_info*** %curves.addr, align 8
  %0 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves.addr, align 8
  store %struct.mbedtls_ecp_curve_info** %0, %struct.mbedtls_ecp_curve_info*** %crv, align 8
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %2 = bitcast %struct.mbedtls_pk_context* %1 to { %struct.mbedtls_pk_info_t*, i8* }*
  %3 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %2, i32 0, i32 0
  %4 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %3, align 8
  %5 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %2, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %call = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %4, i8* %6) #5
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %call, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %7 = load i32, i32* %id, align 8
  store i32 %7, i32* %grp_id, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %8 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %crv, align 8
  %9 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %8, align 8
  %cmp = icmp ne %struct.mbedtls_ecp_curve_info* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %crv, align 8
  %11 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %10, align 8
  %grp_id1 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %11, i32 0, i32 0
  %12 = load i32, i32* %grp_id1, align 8
  %13 = load i32, i32* %grp_id, align 4
  %cmp2 = icmp eq i32 %12, %13
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %crv, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %14, i32 1
  store %struct.mbedtls_ecp_curve_info** %incdec.ptr, %struct.mbedtls_ecp_curve_info*** %crv, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
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

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_hello_verify_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %cookie_len_byte = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 50
  %1 = load i8*, i8** %out_msg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  store i8* %add.ptr, i8** %p, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2091, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i64 0, i64 0)) #5
  %3 = load i8*, i8** %p, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 3
  %6 = load i8, i8* %transport, align 1
  %conv = zext i8 %6 to i32
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 4
  %8 = load i32, i32* %tls_version, align 4
  call void @mbedtls_ssl_write_version(i8* noundef %3, i32 noundef %conv, i32 noundef %8) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i8*, i8** %p, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i64 0, i64 0), i8* noundef %10, i64 noundef 2) #5
  %11 = load i8*, i8** %p, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr1, i8** %p, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %f_cookie_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 28
  %14 = load i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write, align 8
  %cmp = icmp eq i32 (i8*, i8**, i8*, i8*, i64)* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2109, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8* %16, i8** %cookie_len_byte, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf4, align 8
  %f_cookie_write5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 28
  %19 = load i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write5, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf6, align 8
  %p_cookie = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %21, i32 0, i32 30
  %22 = load i8*, i8** %p_cookie, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 45
  %24 = load i8*, i8** %out_buf, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %24, i64 16717
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 58
  %26 = load i8*, i8** %cli_id, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 59
  %28 = load i64, i64* %cli_id_len, align 8
  %call = call i32 %19(i8* noundef %22, i8** noundef %p, i8* noundef %add.ptr7, i8* noundef %26, i64 noundef %28) #5
  store i32 %call, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2120, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i64 0, i64 0), i32 noundef %30) #5
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %32 = load i8*, i8** %p, align 8
  %33 = load i8*, i8** %cookie_len_byte, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %33, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i8
  %34 = load i8*, i8** %cookie_len_byte, align 8
  store i8 %conv13, i8* %34, align 1
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load i8*, i8** %cookie_len_byte, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8*, i8** %cookie_len_byte, align 8
  %38 = load i8, i8* %37, align 1
  %conv15 = zext i8 %38 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2126, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* noundef %add.ptr14, i64 noundef %conv15) #5
  %39 = load i8*, i8** %p, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 50
  %41 = load i8*, i8** %out_msg16, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %41 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 52
  store i64 %sub.ptr.sub19, i64* %out_msglen, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 50
  %45 = load i8*, i8** %out_msg20, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 0
  store i8 3, i8* %arrayidx, align 1
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 1
  store i32 18, i32* %state, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %47) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end11
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %49 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2136, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0), i32 noundef %49) #5
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end11
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 0
  %52 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf26, align 8
  %transport27 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %52, i32 0, i32 3
  %53 = load i8, i8* %transport27, align 1
  %conv28 = zext i8 %53 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end25
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call31 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %54) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %56 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2144, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i64 0, i64 0), i32 noundef %56) #5
  %57 = load i32, i32* %ret, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true, %if.end25
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %58, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2149, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then24, %if.then10, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

declare dso_local void @mbedtls_ssl_write_version(i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_handle_id_based_session_resumption(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %session_tmp = alloca %struct.mbedtls_ssl_session, align 8
  %session = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 15
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  store %struct.mbedtls_ssl_session* %1, %struct.mbedtls_ssl_session** %session, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 0
  %4 = load i8, i8* %resume, align 8
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %5, i32 0, i32 6
  %6 = load i64, i64* %id_len, align 8
  %cmp2 = icmp eq i64 %6, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_get_cache = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 19
  %9 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_get_cache, align 8
  %cmp6 = icmp eq i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %9, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %return

if.end9:                                          ; preds = %if.end5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 2
  %11 = load i32, i32* %renego_status, align 4
  %cmp10 = icmp ne i32 %11, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %return

if.end13:                                         ; preds = %if.end9
  call void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef %session_tmp) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf14, align 8
  %f_get_cache15 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 19
  %14 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_get_cache15, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf16, align 8
  %p_cache = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 21
  %17 = load i8*, i8** %p_cache, align 8
  %18 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %18, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %id_len17 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %19, i32 0, i32 6
  %20 = load i64, i64* %id_len17, align 8
  %call = call i32 %14(i8* noundef %17, i8* noundef %arraydecay, i64 noundef %20, %struct.mbedtls_ssl_session* noundef %session_tmp) #5
  store i32 %call, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %21, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end13
  br label %exit

if.end21:                                         ; preds = %if.end13
  %22 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %22, i32 0, i32 4
  %23 = load i32, i32* %ciphersuite, align 8
  %ciphersuite22 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %session_tmp, i32 0, i32 4
  %24 = load i32, i32* %ciphersuite22, align 8
  %cmp23 = icmp ne i32 %23, %24
  br i1 %cmp23, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %25 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %25, i32 0, i32 5
  %26 = load i32, i32* %compression, align 4
  %compression25 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %session_tmp, i32 0, i32 5
  %27 = load i32, i32* %compression25, align 4
  %cmp26 = icmp ne i32 %26, %27
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false, %if.end21
  br label %exit

if.end29:                                         ; preds = %lor.lhs.false
  %28 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %28) #5
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %30 = bitcast %struct.mbedtls_ssl_session* %29 to i8*
  %31 = bitcast %struct.mbedtls_ssl_session* %session_tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 152, i1 false)
  %32 = bitcast %struct.mbedtls_ssl_session* %session_tmp to i8*
  %call30 = call i8* @memset(i8* noundef %32, i32 noundef 0, i64 noundef 152) #4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2195, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.102, i64 0, i64 0)) #5
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 16
  %35 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %resume32 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %35, i32 0, i32 0
  store i8 1, i8* %resume32, align 8
  br label %exit

exit:                                             ; preds = %if.end29, %if.then28, %if.then20
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %session_tmp) #5
  br label %return

return:                                           ; preds = %exit, %if.then12, %if.then8, %if.then4, %if.then
  ret void
}

declare dso_local i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_renegotiation_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 60
  %2 = load i32, i32* %secure_renegotiation, align 8
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %3, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1884, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.103, i64 0, i64 0)) #5
  %5 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 -1, i8* %arrayidx, align 1
  %6 = load i8*, i8** %p, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 1, i8* %arrayidx1, align 1
  %7 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 2
  %9 = load i32, i32* %renego_status, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 61
  %12 = load i64, i64* %verify_data_len, align 8
  %mul = mul i64 %12, 2
  %add = add i64 %mul, 1
  %and = and i64 %add, 255
  %conv = trunc i64 %and to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 61
  %15 = load i64, i64* %verify_data_len5, align 8
  %mul6 = mul i64 %15, 2
  %and7 = and i64 %mul6, 255
  %conv8 = trunc i64 %and7 to i8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  store i8 %conv8, i8* %16, align 1
  %17 = load i8*, i8** %p, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %peer_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 63
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %peer_verify_data, i64 0, i64 0
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 61
  %20 = load i64, i64* %verify_data_len10, align 8
  %call = call i8* @memcpy(i8* noundef %17, i8* noundef %arraydecay, i64 noundef %20) #4
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 61
  %22 = load i64, i64* %verify_data_len11, align 8
  %23 = load i8*, i8** %p, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr12, i8** %p, align 8
  %24 = load i8*, i8** %p, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %own_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 62
  %arraydecay13 = getelementptr inbounds [12 x i8], [12 x i8]* %own_verify_data, i64 0, i64 0
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 61
  %27 = load i64, i64* %verify_data_len14, align 8
  %call15 = call i8* @memcpy(i8* noundef %24, i8* noundef %arraydecay13, i64 noundef %27) #4
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 61
  %29 = load i64, i64* %verify_data_len16, align 8
  %30 = load i8*, i8** %p, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %add.ptr17, i8** %p, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 1, i8* %32, align 1
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 0, i8* %33, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then3
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %36, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_max_fragment_length_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 15
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %2, i32 0, i32 0
  %3 = load i8, i8* %mfl_code, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1925, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i64 0, i64 0)) #5
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 1, i8* %arrayidx2, align 1
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 1, i8* %10, align 1
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 15
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate4, align 8
  %mfl_code5 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %12, i32 0, i32 0
  %13 = load i8, i8* %mfl_code5, align 8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i64*, i64** %olen.addr, align 8
  store i64 5, i64* %15, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_encrypt_then_mac_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %suite = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ssl_mode = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* null, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 15
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %2, i32 0, i32 4
  %3 = load i32, i32* %ciphersuite, align 8
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %3) #5
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 15
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate1, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %6, i32 0, i32 14
  store i32 0, i32* %encrypt_then_mac, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate2, align 8
  %encrypt_then_mac3 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 14
  %9 = load i32, i32* %encrypt_then_mac3, align 4
  %10 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite, align 8
  %call4 = call i32 @mbedtls_ssl_get_mode_from_ciphersuite(i32 noundef %9, %struct.mbedtls_ssl_ciphersuite_t* noundef %10) #5
  store i32 %call4, i32* %ssl_mode, align 4
  %11 = load i32, i32* %ssl_mode, align 4
  %cmp5 = icmp ne i32 %11, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 15
  %13 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate7, align 8
  %encrypt_then_mac8 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %13, i32 0, i32 14
  store i32 0, i32* %encrypt_then_mac8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 15
  %15 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate10, align 8
  %encrypt_then_mac11 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %15, i32 0, i32 14
  %16 = load i32, i32* %encrypt_then_mac11, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  %17 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %17, align 8
  br label %return

if.end14:                                         ; preds = %if.end9
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1809, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.105, i64 0, i64 0)) #5
  %19 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx, align 1
  %20 = load i8*, i8** %p, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 22, i8* %arrayidx15, align 1
  %21 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 0, i8* %23, align 1
  %24 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %24, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_extended_ms_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 6
  %3 = load i8, i8* %extended_ms, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1835, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.106, i64 0, i64 0)) #5
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 23, i8* %arrayidx2, align 1
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %11, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_session_ticket_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %new_session_ticket = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 4
  %3 = load i8, i8* %new_session_ticket, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1860, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.107, i64 0, i64 0)) #5
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 35, i8* %arrayidx2, align 1
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load i64*, i64** %olen.addr, align 8
  store i64 4, i64* %11, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_write_supported_point_formats_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64* noundef %olen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cli_exts = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 1
  %4 = load i8, i8* %cli_exts, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %5, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1955, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.108, i64 0, i64 0)) #5
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  %8 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 11, i8* %arrayidx2, align 1
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 2, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  store i8 1, i8* %12, align 1
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr5, i8** %p, align 8
  store i8 0, i8* %13, align 1
  %14 = load i64*, i64** %olen.addr, align 8
  store i64 6, i64* %14, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local i32 @mbedtls_ssl_write_alpn_ext(%struct.mbedtls_ssl_context* noundef, i8* noundef, i8* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i32 noundef 1) #5
  ret i32 %call
}

declare dso_local i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_get_mode_from_ciphersuite(i32 noundef, %struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_no_pfs(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
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
define internal i32 @mbedtls_ssl_ciphersuite_uses_ecdh(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
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
define internal i32 @ssl_get_ecdh_params_from_cert(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %private_key = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %0) #5
  store %struct.mbedtls_pk_context* %call, %struct.mbedtls_pk_context** %private_key, align 8
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %private_key, align 8
  %cmp = icmp eq %struct.mbedtls_pk_context* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2717, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.115, i64 0, i64 0)) #5
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %private_key, align 8
  %call1 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %3, i32 noundef 2) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2723, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.116, i64 0, i64 0)) #5
  store i32 -27904, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 20
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %7) #5
  %8 = bitcast %struct.mbedtls_pk_context* %call4 to { %struct.mbedtls_pk_info_t*, i8* }*
  %9 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 0
  %10 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %9, align 8
  %11 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %8, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %call5 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %10, i8* %12) #5
  %call6 = call i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, %struct.mbedtls_ecp_keypair* noundef %call5, i32 noundef 0) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %14 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2731, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i64 0, i64 0), i32 noundef %14) #5
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_prepare_server_key_exchange(%struct.mbedtls_ssl_context* noundef %ssl, i64* noundef %signature_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %signature_len.addr = alloca i64*, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %dig_signed = alloca i8*, align 8
  %out_buf_len = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %curve = alloca %struct.mbedtls_ecp_curve_info**, align 8
  %group_list = alloca i16*, align 8
  %ret65 = alloca i32, align 4
  %len66 = alloca i64, align 8
  %dig_signed_len = alloca i64, align 8
  %hashlen = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  %ret138 = alloca i32, align 4
  %sig_alg = alloca i32, align 4
  %sig_hash = alloca i32, align 4
  %md_alg = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64* %signature_len, i64** %signature_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  store i8* null, i8** %dig_signed, align 8
  %3 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 50
  %5 = load i8*, i8** %out_msg, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 45
  %7 = load i8*, i8** %out_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 16717, %sub.ptr.sub
  store i64 %sub, i64* %out_buf_len, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 52
  store i64 4, i64* %out_msglen, align 8
  %9 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %9, i32 0, i32 4
  %10 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange3 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %11, i32 0, i32 4
  %12 = load i8, i8* %key_exchange3, align 2
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 50
  %14 = load i8*, i8** %out_msg7, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 52
  %16 = load i64, i64* %out_msglen8, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %out_msglen8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 0, i8* %arrayidx, align 1
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 50
  %18 = load i8*, i8** %out_msg9, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 52
  %20 = load i64, i64* %out_msglen10, align 8
  %inc11 = add i64 %20, 1
  store i64 %inc11, i64* %out_msglen10, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %21 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_uses_dhe(%struct.mbedtls_ssl_ciphersuite_t* noundef %21) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end60

if.then13:                                        ; preds = %if.end
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 0
  %23 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %dhm_P = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %23, i32 0, i32 42
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %dhm_P, i32 0, i32 2
  %24 = load i64*, i64** %p, align 8
  %cmp14 = icmp eq i64* %24, null
  br i1 %cmp14, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.then13
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf17, align 8
  %dhm_G = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 43
  %p18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %dhm_G, i32 0, i32 2
  %27 = load i64*, i64** %p18, align 8
  %cmp19 = icmp eq i64* %27, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %if.then13
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2855, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false16
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 16
  %30 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake23, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %30, i32 0, i32 19
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf24, align 8
  %dhm_P25 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %32, i32 0, i32 42
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 0
  %34 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf26, align 8
  %dhm_G27 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %34, i32 0, i32 43
  %call28 = call i32 @mbedtls_dhm_set_group(%struct.mbedtls_dhm_context* noundef %dhm_ctx, %struct.mbedtls_mpi* noundef %dhm_P25, %struct.mbedtls_mpi* noundef %dhm_G27) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end22
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2872, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i64 0, i64 0), i32 noundef %36) #5
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end22
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 16
  %39 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake33, align 8
  %dhm_ctx34 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %39, i32 0, i32 19
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 16
  %41 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake35, align 8
  %dhm_ctx36 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %41, i32 0, i32 19
  %call37 = call i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef %dhm_ctx36) #5
  %conv38 = trunc i64 %call37 to i32
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 50
  %43 = load i8*, i8** %out_msg39, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 52
  %45 = load i64, i64* %out_msglen40, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %45
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 0
  %47 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf41, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %47, i32 0, i32 17
  %48 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 0
  %50 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf42, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %50, i32 0, i32 18
  %51 = load i8*, i8** %p_rng, align 8
  %call43 = call i32 @mbedtls_dhm_make_params(%struct.mbedtls_dhm_context* noundef %dhm_ctx34, i32 noundef %conv38, i8* noundef %add.ptr, i64* noundef %len, i32 (i8*, i8*, i64)* noundef %48, i8* noundef %51) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end32
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %53 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2882, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i64 0, i64 0), i32 noundef %53) #5
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end32
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 50
  %56 = load i8*, i8** %out_msg48, align 8
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 52
  %58 = load i64, i64* %out_msglen49, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %add.ptr50, i8** %dig_signed, align 8
  %59 = load i64, i64* %len, align 8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen51 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 52
  %61 = load i64, i64* %out_msglen51, align 8
  %add = add i64 %61, %59
  store i64 %add, i64* %out_msglen51, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 16
  %64 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake52, align 8
  %dhm_ctx53 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %64, i32 0, i32 19
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx53, i32 0, i32 2
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2892, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0), %struct.mbedtls_mpi* noundef %X) #5
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake54 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 16
  %67 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake54, align 8
  %dhm_ctx55 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %67, i32 0, i32 19
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx55, i32 0, i32 0
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %65, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2893, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P) #5
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 16
  %70 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake56, align 8
  %dhm_ctx57 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %70, i32 0, i32 19
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx57, i32 0, i32 1
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %68, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2894, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0), %struct.mbedtls_mpi* noundef %G) #5
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake58 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 16
  %73 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake58, align 8
  %dhm_ctx59 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %73, i32 0, i32 19
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx59, i32 0, i32 3
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %71, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2895, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), %struct.mbedtls_mpi* noundef %GX) #5
  br label %if.end60

if.end60:                                         ; preds = %if.end47, %if.end
  %74 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call61 = call i32 @mbedtls_ssl_ciphersuite_uses_ecdhe(%struct.mbedtls_ssl_ciphersuite_t* noundef %74) #5
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end124

if.then63:                                        ; preds = %if.end60
  store %struct.mbedtls_ecp_curve_info** null, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call64 = call i8* @mbedtls_ssl_get_groups(%struct.mbedtls_ssl_context* noundef %75) #5
  %76 = bitcast i8* %call64 to i16*
  store i16* %76, i16** %group_list, align 8
  store i32 -110, i32* %ret65, align 4
  store i64 0, i64* %len66, align 8
  %77 = load i16*, i16** %group_list, align 8
  %cmp67 = icmp eq i16* %77, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then63
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.then63
  br label %for.cond

for.cond:                                         ; preds = %for.inc85, %if.end70
  %78 = load i16*, i16** %group_list, align 8
  %79 = load i16, i16* %78, align 2
  %conv71 = zext i16 %79 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake74 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 16
  %81 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake74, align 8
  %curves = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %81, i32 0, i32 21
  %82 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  store %struct.mbedtls_ecp_curve_info** %82, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc, %for.body
  %83 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %84 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %83, align 8
  %cmp76 = icmp ne %struct.mbedtls_ecp_curve_info* %84, null
  br i1 %cmp76, label %for.body78, label %for.end

for.body78:                                       ; preds = %for.cond75
  %85 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %86 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %85, align 8
  %tls_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %86, i32 0, i32 1
  %87 = load i16, i16* %tls_id, align 4
  %conv79 = zext i16 %87 to i32
  %88 = load i16*, i16** %group_list, align 8
  %89 = load i16, i16* %88, align 2
  %conv80 = zext i16 %89 to i32
  %cmp81 = icmp eq i32 %conv79, %conv80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body78
  br label %curve_matching_done

if.end84:                                         ; preds = %for.body78
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %90 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %90, i32 1
  store %struct.mbedtls_ecp_curve_info** %incdec.ptr, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  br label %for.cond75, !llvm.loop !17

for.end:                                          ; preds = %for.cond75
  br label %for.inc85

for.inc85:                                        ; preds = %for.end
  %91 = load i16*, i16** %group_list, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %91, i32 1
  store i16* %incdec.ptr86, i16** %group_list, align 8
  br label %for.cond, !llvm.loop !18

for.end87:                                        ; preds = %for.cond
  br label %curve_matching_done

curve_matching_done:                              ; preds = %for.end87, %if.then83
  %92 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %cmp88 = icmp eq %struct.mbedtls_ecp_curve_info** %92, null
  br i1 %cmp88, label %if.then93, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %curve_matching_done
  %93 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %94 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %93, align 8
  %cmp91 = icmp eq %struct.mbedtls_ecp_curve_info* %94, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false90, %curve_matching_done
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %95, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2929, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.125, i64 0, i64 0)) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %lor.lhs.false90
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %97 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %98 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %97, align 8
  %name = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %98, i32 0, i32 3
  %99 = load i8*, i8** %name, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %96, i32 noundef 2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 2933, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.126, i64 0, i64 0), i8* noundef %99) #5
  %100 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake95 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %100, i32 0, i32 16
  %101 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake95, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %101, i32 0, i32 20
  %102 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curve, align 8
  %103 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %102, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %103, i32 0, i32 0
  %104 = load i32, i32* %grp_id, align 8
  %call96 = call i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, i32 noundef %104) #5
  store i32 %call96, i32* %ret65, align 4
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end94
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %106 = load i32, i32* %ret65, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3023, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.127, i64 0, i64 0), i32 noundef %106) #5
  %107 = load i32, i32* %ret65, align 4
  store i32 %107, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end94
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake101 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %108, i32 0, i32 16
  %109 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake101, align 8
  %ecdh_ctx102 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %109, i32 0, i32 20
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg103 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 50
  %111 = load i8*, i8** %out_msg103, align 8
  %112 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen104 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %112, i32 0, i32 52
  %113 = load i64, i64* %out_msglen104, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %111, i64 %113
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen106 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %114, i32 0, i32 52
  %115 = load i64, i64* %out_msglen106, align 8
  %sub107 = sub i64 16384, %115
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf108 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %116, i32 0, i32 0
  %117 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf108, align 8
  %f_rng109 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %117, i32 0, i32 17
  %118 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng109, align 8
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf110 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %119, i32 0, i32 0
  %120 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf110, align 8
  %p_rng111 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %120, i32 0, i32 18
  %121 = load i8*, i8** %p_rng111, align 8
  %call112 = call i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx102, i64* noundef %len66, i8* noundef %add.ptr105, i64 noundef %sub107, i32 (i8*, i8*, i64)* noundef %118, i8* noundef %121) #5
  store i32 %call112, i32* %ret65, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end100
  %122 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %123 = load i32, i32* %ret65, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %122, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3033, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i64 0, i64 0), i32 noundef %123) #5
  %124 = load i32, i32* %ret65, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end100
  %125 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %126, i32 0, i32 16
  %127 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake117, align 8
  %ecdh_ctx118 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %127, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %125, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3038, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx118, i32 noundef 0) #5
  %128 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg119 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %128, i32 0, i32 50
  %129 = load i8*, i8** %out_msg119, align 8
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen120 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %130, i32 0, i32 52
  %131 = load i64, i64* %out_msglen120, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8* %add.ptr121, i8** %dig_signed, align 8
  %132 = load i64, i64* %len66, align 8
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen122 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %133, i32 0, i32 52
  %134 = load i64, i64* %out_msglen122, align 8
  %add123 = add i64 %134, %132
  store i64 %add123, i64* %out_msglen122, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.end116, %if.end60
  %135 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call125 = call i32 @mbedtls_ssl_ciphersuite_uses_server_signature(%struct.mbedtls_ssl_ciphersuite_t* noundef %135) #5
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.end195

if.then127:                                       ; preds = %if.end124
  %136 = load i8*, i8** %dig_signed, align 8
  %cmp128 = icmp eq i8* %136, null
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then127
  %137 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %137, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3060, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.then127
  %138 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg132 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %138, i32 0, i32 50
  %139 = load i8*, i8** %out_msg132, align 8
  %140 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen133 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %140, i32 0, i32 52
  %141 = load i64, i64* %out_msglen133, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %139, i64 %141
  %142 = load i8*, i8** %dig_signed, align 8
  %sub.ptr.lhs.cast135 = ptrtoint i8* %add.ptr134 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %142 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  store i64 %sub.ptr.sub137, i64* %dig_signed_len, align 8
  store i64 0, i64* %hashlen, align 8
  store i32 -110, i32* %ret138, align 4
  %143 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call139 = call i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %143) #5
  store i32 %call139, i32* %sig_alg, align 4
  %144 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %145 = load i32, i32* %sig_alg, align 4
  %call140 = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %145) #5
  %conv141 = zext i8 %call140 to i32
  %call142 = call i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(%struct.mbedtls_ssl_context* noundef %144, i32 noundef %conv141) #5
  store i32 %call142, i32* %sig_hash, align 4
  %146 = load i32, i32* %sig_hash, align 4
  %conv143 = trunc i32 %146 to i8
  %call144 = call i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %conv143) #5
  store i32 %call144, i32* %md_alg, align 4
  %147 = load i32, i32* %sig_alg, align 4
  %cmp145 = icmp eq i32 %147, 0
  br i1 %cmp145, label %if.then150, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end131
  %148 = load i32, i32* %md_alg, align 4
  %cmp148 = icmp eq i32 %148, 0
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %lor.lhs.false147, %if.end131
  %149 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %149, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3092, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end151:                                        ; preds = %lor.lhs.false147
  %150 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %151 = load i32, i32* %md_alg, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %150, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3098, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.129, i64 0, i64 0), i32 noundef %151) #5
  %152 = load i32, i32* %md_alg, align 4
  %cmp152 = icmp ne i32 %152, 0
  br i1 %cmp152, label %if.then154, label %if.else

if.then154:                                       ; preds = %if.end151
  %153 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %154 = load i8*, i8** %dig_signed, align 8
  %155 = load i64, i64* %dig_signed_len, align 8
  %156 = load i32, i32* %md_alg, align 4
  %call155 = call i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(%struct.mbedtls_ssl_context* noundef %153, i8* noundef %arraydecay, i64* noundef %hashlen, i8* noundef %154, i64 noundef %155, i32 noundef %156) #5
  store i32 %call155, i32* %ret138, align 4
  %157 = load i32, i32* %ret138, align 4
  %cmp156 = icmp ne i32 %157, 0
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.then154
  %158 = load i32, i32* %ret138, align 4
  store i32 %158, i32* %retval, align 4
  br label %return

if.end159:                                        ; preds = %if.then154
  br label %if.end160

if.else:                                          ; preds = %if.end151
  %159 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %159, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3114, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.end159
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay161 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %161 = load i64, i64* %hashlen, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %160, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3118, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i64 0, i64 0), i8* noundef %arraydecay161, i64 noundef %161) #5
  %162 = load i32, i32* %md_alg, align 4
  %call162 = call zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef %162) #5
  %163 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg163 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %163, i32 0, i32 50
  %164 = load i8*, i8** %out_msg163, align 8
  %165 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen164 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %165, i32 0, i32 52
  %166 = load i64, i64* %out_msglen164, align 8
  %inc165 = add i64 %166, 1
  store i64 %inc165, i64* %out_msglen164, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8 %call162, i8* %arrayidx166, align 1
  %167 = load i32, i32* %sig_alg, align 4
  %call167 = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %167) #5
  %168 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg168 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %168, i32 0, i32 50
  %169 = load i8*, i8** %out_msg168, align 8
  %170 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen169 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %170, i32 0, i32 52
  %171 = load i64, i64* %out_msglen169, align 8
  %inc170 = add i64 %171, 1
  store i64 %inc170, i64* %out_msglen169, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 %call167, i8* %arrayidx171, align 1
  %172 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call172 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %172) #5
  %cmp173 = icmp eq %struct.mbedtls_pk_context* %call172, null
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end160
  %173 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %173, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3168, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i64 0, i64 0)) #5
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end176:                                        ; preds = %if.end160
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call177 = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %174) #5
  %175 = load i32, i32* %md_alg, align 4
  %arraydecay178 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %176 = load i64, i64* %hashlen, align 8
  %177 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg179 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %177, i32 0, i32 50
  %178 = load i8*, i8** %out_msg179, align 8
  %179 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen180 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %179, i32 0, i32 52
  %180 = load i64, i64* %out_msglen180, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %178, i64 %180
  %add.ptr182 = getelementptr inbounds i8, i8* %add.ptr181, i64 2
  %181 = load i64, i64* %out_buf_len, align 8
  %182 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen183 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %182, i32 0, i32 52
  %183 = load i64, i64* %out_msglen183, align 8
  %sub184 = sub i64 %181, %183
  %sub185 = sub i64 %sub184, 2
  %184 = load i64*, i64** %signature_len.addr, align 8
  %185 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf186 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %185, i32 0, i32 0
  %186 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf186, align 8
  %f_rng187 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %186, i32 0, i32 17
  %187 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng187, align 8
  %188 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf188 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %188, i32 0, i32 0
  %189 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf188, align 8
  %p_rng189 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %189, i32 0, i32 18
  %190 = load i8*, i8** %p_rng189, align 8
  %call190 = call i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %call177, i32 noundef %175, i8* noundef %arraydecay178, i64 noundef %176, i8* noundef %add.ptr182, i64 noundef %sub185, i64* noundef %184, i32 (i8*, i8*, i64)* noundef %187, i8* noundef %190) #5
  store i32 %call190, i32* %ret138, align 4
  %cmp191 = icmp ne i32 %call190, 0
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end176
  %191 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %192 = load i32, i32* %ret138, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %191, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3185, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i64 0, i64 0), i32 noundef %192) #5
  %193 = load i32, i32* %ret138, align 4
  store i32 %193, i32* %retval, align 4
  br label %return

if.end194:                                        ; preds = %if.end176
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end124
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end195, %if.then193, %if.then175, %if.else, %if.then158, %if.then150, %if.then130, %if.then115, %if.then99, %if.then93, %if.then69, %if.then46, %if.then31, %if.then21
  %194 = load i32, i32* %retval, align 4
  ret i32 %194
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

declare dso_local i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef, %struct.mbedtls_ecp_keypair* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_uses_dhe(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
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
    i32 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare dso_local i32 @mbedtls_dhm_set_group(%struct.mbedtls_dhm_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_dhm_make_params(%struct.mbedtls_dhm_context* noundef, i32 noundef, i8* noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i64 @mbedtls_dhm_get_len(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_uses_ecdhe(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
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
define internal i8* @mbedtls_ssl_get_groups(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
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
  %group_list = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 17
  %4 = load i16*, i16** %group_list, align 8
  %cmp2 = icmp ne i16* %4, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %group_list4 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 17
  %7 = load i16*, i16** %group_list4, align 8
  %8 = bitcast i16* %7 to i8*
  store i8* %8, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %group_list5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 41
  %11 = load i16*, i16** %group_list5, align 8
  %12 = bitcast i16* %11 to i8*
  store i8* %12, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %retval, align 8
  ret i8* %13
}

declare dso_local i32 @mbedtls_ecdh_setup(%struct.mbedtls_ecdh_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ecdh_make_params(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.mbedtls_ecdh_context* noundef, i32 noundef) #2

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

declare dso_local i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext) #2

declare dso_local i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef) #2

declare dso_local i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

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

declare dso_local i32 @mbedtls_ssl_set_calc_verify_md(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_sig_alg_is_supported(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %sig_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %sig_alg.addr = alloca i16, align 2
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i16 %sig_alg, i16* %sig_alg.addr, align 2
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 4
  %1 = load i32, i32* %tls_version, align 4
  %cmp = icmp eq i32 %1, 771
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %sig_alg.addr, align 2
  %call = call i32 @mbedtls_ssl_tls12_sig_alg_is_supported(i16 noundef zeroext %2) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load i16, i16* %sig_alg.addr, align 2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_tls12_sig_alg_is_supported(i16 noundef zeroext %sig_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %sig_alg.addr = alloca i16, align 2
  %hash = alloca i8, align 1
  %sig = alloca i8, align 1
  store i16 %sig_alg, i16* %sig_alg.addr, align 2
  %0 = load i16, i16* %sig_alg.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %hash, align 1
  %1 = load i16, i16* %sig_alg.addr, align 2
  %conv2 = zext i16 %1 to i32
  %and3 = and i32 %conv2, 255
  %conv4 = trunc i32 %and3 to i8
  store i8 %conv4, i8* %sig, align 1
  %2 = load i8, i8* %hash, align 1
  %conv5 = zext i8 %2 to i32
  switch i32 %conv5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
    i32 5, label %sw.bb9
    i32 6, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  %3 = load i8, i8* %sig, align 1
  %conv11 = zext i8 %3 to i32
  switch i32 %conv11, label %sw.default14 [
    i32 1, label %sw.bb12
    i32 3, label %sw.bb13
  ]

sw.bb12:                                          ; preds = %sw.epilog
  br label %sw.epilog15

sw.bb13:                                          ; preds = %sw.epilog
  br label %sw.epilog15

sw.default14:                                     ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog15:                                      ; preds = %sw.bb13, %sw.bb12
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog15, %sw.default14, %sw.default
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_client_dh_public(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3353, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shl = shl i32 %conv, 8
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %9 to i32
  %or = or i32 %shl, %conv2
  %conv3 = sext i32 %or to i64
  store i64 %conv3, i64* %n, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr4, i8** %10, align 8
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* %n, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %end.addr, align 8
  %cmp6 = icmp ugt i8* %add.ptr5, %15
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3362, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 16
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 19
  %19 = load i8**, i8*** %p.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %n, align 8
  %call = call i32 @mbedtls_dhm_read_public(%struct.mbedtls_dhm_context* noundef %dhm_ctx, i8* noundef %20, i64 noundef %21) #5
  store i32 %call, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %23 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3368, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i64 0, i64 0), i32 noundef %23) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %24 = load i64, i64* %n, align 8
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %26, i64 %24
  store i8* %add.ptr14, i8** %25, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 16
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake15, align 8
  %dhm_ctx16 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %29, i32 0, i32 19
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx16, i32 0, i32 4
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %27, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3374, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i64 0, i64 0), %struct.mbedtls_mpi* noundef %GY) #5
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdh_read_public(%struct.mbedtls_ecdh_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_client_psk_identity(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %p, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i16, align 2
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %call = call i32 @ssl_conf_has_psk_or_cb(%struct.mbedtls_ssl_config* noundef %1) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3587, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i64 0, i64 0)) #5
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3596, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %shl = shl i32 %conv, 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %or = or i32 %shl, %conv5
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %n, align 2
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %13, align 8
  %15 = load i16, i16* %n, align 2
  %conv7 = zext i16 %15 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %16 = load i16, i16* %n, align 2
  %conv10 = zext i16 %16 to i64
  %17 = load i8*, i8** %end.addr, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %19 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %cmp14 = icmp sgt i64 %conv10, %sub.ptr.sub13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end3
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3605, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 0
  %22 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf18, align 8
  %f_psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %22, i32 0, i32 26
  %23 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk, align 8
  %cmp19 = icmp ne i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %23, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end17
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf22, align 8
  %f_psk23 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %25, i32 0, i32 26
  %26 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk23, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 0
  %28 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf24, align 8
  %p_psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %28, i32 0, i32 27
  %29 = load i8*, i8** %p_psk, align 8
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %31 = load i8**, i8*** %p.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i16, i16* %n, align 2
  %conv25 = zext i16 %33 to i64
  %call26 = call i32 %26(i8* noundef %29, %struct.mbedtls_ssl_context* noundef %30, i8* noundef %32, i64 noundef %conv25) #5
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then21
  store i32 -27776, i32* %ret, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then21
  br label %if.end43

if.else:                                          ; preds = %if.end17
  %34 = load i16, i16* %n, align 2
  %conv31 = zext i16 %34 to i64
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 0
  %36 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf32, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %36, i32 0, i32 47
  %37 = load i64, i64* %psk_identity_len, align 8
  %cmp33 = icmp ne i64 %conv31, %37
  br i1 %cmp33, label %if.then41, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.else
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf36, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 46
  %40 = load i8*, i8** %psk_identity, align 8
  %41 = load i8**, i8*** %p.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i16, i16* %n, align 2
  %conv37 = zext i16 %43 to i64
  %call38 = call i32 @mbedtls_ct_memcmp(i8* noundef %40, i8* noundef %42, i64 noundef %conv37) #5
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false35, %if.else
  store i32 -27776, i32* %ret, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end30
  %44 = load i32, i32* %ret, align 4
  %cmp44 = icmp eq i32 %44, -27776
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end43
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %46 = load i8**, i8*** %p.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i16, i16* %n, align 2
  %conv47 = zext i16 %48 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %45, i32 noundef 3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3627, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i64 0, i64 0), i8* noundef %47, i64 noundef %conv47) #5
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call48 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %49, i8 noundef zeroext 2, i8 noundef zeroext 115) #5
  store i32 -27776, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end43
  %50 = load i16, i16* %n, align 2
  %conv50 = zext i16 %50 to i32
  %51 = load i8**, i8*** %p.addr, align 8
  %52 = load i8*, i8** %51, align 8
  %idx.ext = sext i32 %conv50 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr51, i8** %51, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then46, %if.then16, %if.then2, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

declare dso_local i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_encrypted_pms(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %p, i8* noundef %end, i64 noundef %pms_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %pms_offset.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pms = alloca i8*, align 8
  %ver = alloca [2 x i8], align 1
  %fake_pms = alloca [48 x i8], align 16
  %peer_pms = alloca [48 x i8], align 16
  %mask = alloca i8, align 1
  %i = alloca i64, align 8
  %peer_pmslen = alloca i64, align 8
  %diff = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 %pms_offset, i64* %pms_offset.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 46
  %arraydecay = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  %2 = load i64, i64* %pms_offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %2
  store i8* %add.ptr, i8** %pms, align 8
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 1
  store i8 -1, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 0
  store i8 -1, i8* %arrayidx1, align 16
  store i64 0, i64* %peer_pmslen, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %arraydecay2 = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 0
  %call = call i32 @ssl_decrypt_encrypted_pms(%struct.mbedtls_ssl_context* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %arraydecay2, i64* noundef %peer_pmslen, i64 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %arraydecay3 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 0
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 3
  %8 = load i8, i8* %transport, align 1
  %conv = zext i8 %8 to i32
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 15
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %10, i32 0, i32 2
  %11 = load i32, i32* %tls_version, align 4
  call void @mbedtls_ssl_write_version(i8* noundef %arraydecay3, i32 noundef %conv, i32 noundef %11) #5
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %diff, align 4
  %13 = load i64, i64* %peer_pmslen, align 8
  %xor = xor i64 %13, 48
  %14 = load i32, i32* %diff, align 4
  %conv4 = zext i32 %14 to i64
  %or = or i64 %conv4, %xor
  %conv5 = trunc i64 %or to i32
  store i32 %conv5, i32* %diff, align 4
  %arrayidx6 = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 0
  %15 = load i8, i8* %arrayidx6, align 16
  %conv7 = zext i8 %15 to i32
  %arrayidx8 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 0
  %16 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  %xor10 = xor i32 %conv7, %conv9
  %17 = load i32, i32* %diff, align 4
  %or11 = or i32 %17, %xor10
  store i32 %or11, i32* %diff, align 4
  %arrayidx12 = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 1
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %arrayidx14 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 1
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %xor16 = xor i32 %conv13, %conv15
  %20 = load i32, i32* %diff, align 4
  %or17 = or i32 %20, %xor16
  store i32 %or17, i32* %diff, align 4
  %21 = load i32, i32* %diff, align 4
  %call18 = call i32 @mbedtls_ct_uint_mask(i32 noundef %21) #5
  %conv19 = trunc i32 %call18 to i8
  store i8 %conv19, i8* %mask, align 1
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 0
  %23 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf20, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %23, i32 0, i32 17
  %24 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf21, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 18
  %27 = load i8*, i8** %p_rng, align 8
  %arraydecay22 = getelementptr inbounds [48 x i8], [48 x i8]* %fake_pms, i64 0, i64 0
  %call23 = call i32 %24(i8* noundef %27, i8* noundef %arraydecay22, i64 noundef 48) #5
  store i32 %call23, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %30 = load i64, i64* %pms_offset.addr, align 8
  %cmp25 = icmp ult i64 1060, %30
  br i1 %cmp25, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i64, i64* %pms_offset.addr, align 8
  %sub = sub i64 1060, %31
  %cmp27 = icmp ult i64 %sub, 48
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false, %if.end
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %32, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3562, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %lor.lhs.false
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 10
  store i64 48, i64* %pmslen, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 16
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake32, align 8
  %pmslen33 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 10
  %38 = load i64, i64* %pmslen33, align 8
  %cmp34 = icmp ult i64 %35, %38
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8, i8* %mask, align 1
  %conv36 = zext i8 %39 to i32
  %40 = load i64, i64* %i, align 8
  %arrayidx37 = getelementptr inbounds [48 x i8], [48 x i8]* %fake_pms, i64 0, i64 %40
  %41 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %41 to i32
  %and = and i32 %conv36, %conv38
  %42 = load i8, i8* %mask, align 1
  %conv39 = zext i8 %42 to i32
  %neg = xor i32 %conv39, -1
  %43 = load i64, i64* %i, align 8
  %arrayidx40 = getelementptr inbounds [48 x i8], [48 x i8]* %peer_pms, i64 0, i64 %43
  %44 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %44 to i32
  %and42 = and i32 %neg, %conv41
  %or43 = or i32 %and, %and42
  %conv44 = trunc i32 %or43 to i8
  %45 = load i8*, i8** %pms, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %conv44, i8* %arrayidx45, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i64, i64* %i, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then29, %if.then
  %48 = load i32, i32* %retval, align 4
  ret i32 %48
}

declare dso_local i32 @mbedtls_dhm_read_public(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_decrypt_encrypted_pms(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %p, i8* noundef %end, i8* noundef %peer_pms, i64* noundef %peer_pmslen, i64 noundef %peer_pmssize) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %peer_pms.addr = alloca i8*, align 8
  %peer_pmslen.addr = alloca i64*, align 8
  %peer_pmssize.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %private_key = alloca %struct.mbedtls_pk_context*, align 8
  %public_key = alloca %struct.mbedtls_pk_context*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %peer_pms, i8** %peer_pms.addr, align 8
  store i64* %peer_pmslen, i64** %peer_pmslen.addr, align 8
  store i64 %peer_pmssize, i64* %peer_pmssize.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call %struct.mbedtls_pk_context* @mbedtls_ssl_own_key(%struct.mbedtls_ssl_context* noundef %0) #5
  store %struct.mbedtls_pk_context* %call, %struct.mbedtls_pk_context** %private_key, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %1) #5
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %call1, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %public_key, align 8
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %public_key, align 8
  %call2 = call i64 @mbedtls_pk_get_len(%struct.mbedtls_pk_context* noundef %2) #5
  store i64 %call2, i64* %len, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3431, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i64, i64* %len, align 8
  %shr = lshr i64 %8, 8
  %and = and i64 %shr, 255
  %conv3 = trunc i64 %and to i8
  %conv4 = zext i8 %conv3 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %p.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = zext i8 %10 to i32
  %11 = load i64, i64* %len, align 8
  %and9 = and i64 %11, 255
  %conv10 = trunc i64 %and9 to i8
  %conv11 = zext i8 %conv10 to i32
  %cmp12 = icmp ne i32 %conv8, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3437, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %p.addr, align 8
  %14 = load i64, i64* %len, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %end.addr, align 8
  %cmp17 = icmp ne i8* %add.ptr16, %15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3443, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.142, i64 0, i64 0)) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %17 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %private_key, align 8
  %call21 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %17, i32 noundef 1) #5
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 3479, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.158, i64 0, i64 0)) #5
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %19 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %private_key, align 8
  %20 = load i8*, i8** %p.addr, align 8
  %21 = load i64, i64* %len, align 8
  %22 = load i8*, i8** %peer_pms.addr, align 8
  %23 = load i64*, i64** %peer_pmslen.addr, align 8
  %24 = load i64, i64* %peer_pmssize.addr, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 17
  %27 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 0
  %29 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf24, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %29, i32 0, i32 18
  %30 = load i8*, i8** %p_rng, align 8
  %call25 = call i32 @mbedtls_pk_decrypt(%struct.mbedtls_pk_context* noundef %19, i8* noundef %20, i64 noundef %21, i8* noundef %22, i64* noundef %23, i64 noundef %24, i32 (i8*, i8*, i64)* noundef %27, i8* noundef %30) #5
  store i32 %call25, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then19, %if.then14, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local i32 @mbedtls_ct_uint_mask(i32 noundef) #2

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
define internal i64 @mbedtls_pk_get_len(%struct.mbedtls_pk_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %ctx, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %ctx.addr, align 8
  %call = call i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %0) #5
  %add = add i64 %call, 7
  %div = udiv i64 %add, 8
  ret i64 %div
}

declare dso_local i32 @mbedtls_pk_decrypt(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext) #2

declare dso_local i32 @mbedtls_pk_verify(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_update_handshake_status(%struct.mbedtls_ssl_context* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
