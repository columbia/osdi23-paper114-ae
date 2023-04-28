; ModuleID = 'ssl_tls.c'
source_filename = "ssl_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_ssl_key_cert = type { %struct.mbedtls_x509_crt*, %struct.mbedtls_pk_context*, %struct.mbedtls_ssl_key_cert* }
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ssl_handshake_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i64, %struct.mbedtls_ssl_ciphersuite_t*, void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i32)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, [20 x i16], i16*, i16*, %struct.mbedtls_dhm_context, %struct.mbedtls_ecdh_context, %struct.mbedtls_ecp_curve_info**, i8*, i64, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, %struct.anon, i8*, i8, i32, i32, i32, %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item*, i8*, i32, %struct.mbedtls_ssl_transform*, [8 x i8], i16, %struct.mbedtls_sha256_context, %struct.mbedtls_sha512_context, i8, %union.anon.1, [64 x i8], [1060 x i8], i8*, i64, %struct.mbedtls_x509_crt* }
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
%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

@.str = private unnamed_addr constant [10 x i8] c"ssl_tls.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"alloc(%zu bytes) failed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unknown (DTLS)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MTU too low for record expansion\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"client state: %s\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"You must use mbedtls_ssl_set_timer_cb() for DTLS\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"=> handshake\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"<= handshake\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"=> renegotiate\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"mbedtls_ssl_handshake\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"<= renegotiate\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_start_renegotiation\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Initial handshake isn't over\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Handshake isn't completed\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Serialised structures aren't ready\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"There is pending incoming data\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"There is pending outgoing data\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Only DTLS is supported\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Only version 1.2 supported\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Only AEAD ciphersuites supported\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Renegotiation must not be enabled\00", align 1
@ssl_serialized_context_header = internal global [8 x i8] c"\03\02\00\00?\00\00\0E", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"saved context\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"=> free\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"<= free\00", align 1
@ssl_preset_suiteb_sig_algs = internal global [5 x i16] [i16 1027, i16 1283, i16 2052, i16 1025, i16 0], align 2
@.str.29 = private unnamed_addr constant [51 x i8] c"ssl_preset_suiteb_sig_algs has duplicated entries\0A\00", align 1
@ssl_preset_default_sig_algs = internal global [10 x i16] [i16 1027, i16 1283, i16 1539, i16 1537, i16 1281, i16 1025, i16 2054, i16 2053, i16 2052, i16 0], align 16
@.str.30 = private unnamed_addr constant [52 x i8] c"ssl_preset_default_sig_algs has duplicated entries\0A\00", align 1
@ssl_tls12_preset_suiteb_sig_algs = internal global [5 x i16] [i16 1027, i16 1025, i16 1283, i16 1281, i16 0], align 2
@.str.31 = private unnamed_addr constant [57 x i8] c"ssl_tls12_preset_suiteb_sig_algs has duplicated entries\0A\00", align 1
@ssl_tls12_preset_default_sig_algs = internal global [7 x i16] [i16 1539, i16 1537, i16 1283, i16 1281, i16 1027, i16 1025, i16 0], align 2
@.str.32 = private unnamed_addr constant [58 x i8] c"ssl_tls12_preset_default_sig_algs has duplicated entries\0A\00", align 1
@__const.mbedtls_ssl_config_defaults.dhm_p = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AC\AAh\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@__const.mbedtls_ssl_config_defaults.dhm_g = private unnamed_addr constant [1 x i8] c"\02", align 1
@ssl_preset_suiteb_ciphersuites = internal global [3 x i32] [i32 49195, i32 49196, i32 0], align 4
@mbedtls_x509_crt_profile_suiteb = external dso_local constant %struct.mbedtls_x509_crt_profile, align 4
@ssl_preset_suiteb_groups = internal global [3 x i16] [i16 23, i16 24, i16 0], align 2
@mbedtls_x509_crt_profile_default = external dso_local constant %struct.mbedtls_x509_crt_profile, align 4
@ssl_preset_default_groups = internal global [9 x i16] [i16 29, i16 23, i16 24, i16 30, i16 25, i16 26, i16 27, i16 28, i16 0], align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\01\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\02\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"missing input data in %s\00", align 1
@__func__.mbedtls_ssl_parse_sig_alg_ext = private unnamed_addr constant [30 x i8] c"mbedtls_ssl_parse_sig_alg_ext\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"received signature algorithm: 0x%x %s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"valid signature algorithm: %s\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Signature algorithms extension length misaligned\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"no signature algorithm in common\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"=> derive keys\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"ssl_set_handshake_prfs\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"ssl_compute_master\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"ssl_tls12_populate_transform\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"<= derive keys\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_calc_secret\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"DHM: K \00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_calc_secret\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"no longer retransmitting hello request\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"=> write certificate\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"<= skip write certificate\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"own certificate\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"certificate too large, %zu > %zu\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"<= write certificate\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"=> parse certificate\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"<= skip parse certificate\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"<= parse certificate\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"=> handshake wrapup: final free\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"<= handshake wrapup: final free\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"=> handshake wrapup\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"cache did not store session\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"skip freeing handshake and transform\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"<= handshake wrapup\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"=> write finished\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"switching to new transform spec for outbound data\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"DTLS epoch would wrap\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"mbedtls_ssl_flight_transmit\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"<= write finished\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"=> parse finished\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"bad finished message\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"<= parse finished\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c"Perform mbedtls-based computation of digest of ServerKeyExchange\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"mbedtls_md_setup\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"mbedtls_md_starts\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"mbedtls_md_update\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"mbedtls_md_finish\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"adding signature_algorithms extension\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"got signature scheme [%x] %s\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"sent signature scheme [%x] %s\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"No signature algorithms defined.\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"parse ServerName extension\00", align 1
@__func__.mbedtls_ssl_parse_server_name_ext = private unnamed_addr constant [34 x i8] c"mbedtls_ssl_parse_server_name_ext\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"ssl_sni_wrapper\00", align 1
@__func__.mbedtls_ssl_parse_alpn_ext = private unnamed_addr constant [27 x i8] c"mbedtls_ssl_parse_alpn_ext\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"server side, adding alpn extension\00", align 1
@.str.85 = private unnamed_addr constant [37 x i8] c"The SSL configuration is tls12 only.\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"The SSL configuration is invalid.\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"alloc() of ssl sub-contexts failed\00", align 1
@ssl_serialized_session_header = internal global [5 x i8] c"\03\02\00\00?", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"=> write hello request\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"<= write hello request\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"context to load\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c" entry(%04x,%zu) is duplicated at %zu\0A\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"mbedtls_sha512_finish\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"mbedtls_sha256_finish\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"=> calc  finished tls sha384\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"finished sha512 state\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"calc finished result\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"<= calc  finished\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"=> calc  finished tls sha256\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"finished sha2 state\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"master secret\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"no premaster (session resumed)\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"extended master secret\00", align 1
@.str.105 = private unnamed_addr constant [40 x i8] c"session hash for extended master secret\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"premaster secret\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"=> calc verify sha256\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"calculated verify result\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"<= calc verify\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"=> calc verify sha384\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"peer has no certificate\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"bad certificate message\00", align 1
@.str.115 = private unnamed_addr constant [56 x i8] c"Check that peer CRT hasn't changed during renegotiation\00", align 1
@.str.116 = private unnamed_addr constant [37 x i8] c"new server cert during renegotiation\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c" mbedtls_x509_crt_parse_der\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"peer certificate\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Use context-specific verification callback\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"Use configuration-specific verification callback\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"x509_verify_cert\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"bad certificate (EC key curve)\00", align 1
@.str.123 = private unnamed_addr constant [35 x i8] c"bad certificate (usage extensions)\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"got no CA chain\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"! Certificate verification flags %08x\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"Certificate verification flags clear\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"ciphersuite info for %d not found\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"cipher info for %u not found\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"mbedtls_md info for %u not found\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"ciphersuite = %s\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"random bytes\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"key block\00", align 1
@.str.134 = private unnamed_addr constant [46 x i8] c"keylen: %u, minlen: %u, ivlen: %u, maclen: %u\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"mbedtls_cipher_setup\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"mbedtls_cipher_setkey\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"mbedtls_cipher_set_padding_mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_session_copy(%struct.mbedtls_ssl_session* noundef %dst, %struct.mbedtls_ssl_session* noundef %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %src.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_session* %dst, %struct.mbedtls_ssl_session** %dst.addr, align 8
  store %struct.mbedtls_ssl_session* %src, %struct.mbedtls_ssl_session** %src.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %0) #5
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %2 = bitcast %struct.mbedtls_ssl_session* %1 to i8*
  %3 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %4 = bitcast %struct.mbedtls_ssl_session* %3 to i8*
  %call = call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef 152) #6
  %5 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %5, i32 0, i32 11
  store i8* null, i8** %ticket, align 8
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %6, i32 0, i32 9
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp = icmp ne %struct.mbedtls_x509_crt* %7, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  store i32 -110, i32* %ret, align 4
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #6
  %8 = bitcast i8* %call1 to %struct.mbedtls_x509_crt*
  %9 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert2 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %9, i32 0, i32 9
  store %struct.mbedtls_x509_crt* %8, %struct.mbedtls_x509_crt** %peer_cert2, align 8
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert3 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %10, i32 0, i32 9
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert3, align 8
  %cmp4 = icmp eq %struct.mbedtls_x509_crt* %11, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert6 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %12, i32 0, i32 9
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert6, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %13) #5
  %14 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert7 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %14, i32 0, i32 9
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert7, align 8
  %16 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %peer_cert8 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %16, i32 0, i32 9
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert8, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %17, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  %18 = load i8*, i8** %p, align 8
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %peer_cert9 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %19, i32 0, i32 9
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert9, align 8
  %raw10 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %20, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw10, i32 0, i32 1
  %21 = load i64, i64* %len, align 8
  %call11 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %15, i8* noundef %18, i64 noundef %21) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %22 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert14 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %22, i32 0, i32 9
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert14, align 8
  %24 = bitcast %struct.mbedtls_x509_crt* %23 to i8*
  call void @free(i8* noundef %24) #6
  %25 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %peer_cert15 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %25, i32 0, i32 9
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %peer_cert15, align 8
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %27 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %ticket18 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %27, i32 0, i32 11
  %28 = load i8*, i8** %ticket18, align 8
  %cmp19 = icmp ne i8* %28, null
  br i1 %cmp19, label %if.then20, label %if.end31

if.then20:                                        ; preds = %if.end17
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %ticket_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 12
  %30 = load i64, i64* %ticket_len, align 8
  %call21 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %30) #6
  %31 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %ticket22 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %31, i32 0, i32 11
  store i8* %call21, i8** %ticket22, align 8
  %32 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %ticket23 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %32, i32 0, i32 11
  %33 = load i8*, i8** %ticket23, align 8
  %cmp24 = icmp eq i8* %33, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then20
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then20
  %34 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %ticket27 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %34, i32 0, i32 11
  %35 = load i8*, i8** %ticket27, align 8
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %ticket28 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %36, i32 0, i32 11
  %37 = load i8*, i8** %ticket28, align 8
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %src.addr, align 8
  %ticket_len29 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %38, i32 0, i32 12
  %39 = load i64, i64* %ticket_len29, align 8
  %call30 = call i8* @memcpy(i8* noundef %35, i8* noundef %37, i64 noundef %39) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end17
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then25, %if.then13, %if.then5
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_session* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  call void @ssl_clear_peer_cert(%struct.mbedtls_ssl_session* noundef %1) #5
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %2, i32 0, i32 11
  %3 = load i8*, i8** %ticket, align 8
  call void @free(i8* noundef %3) #6
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %5 = bitcast %struct.mbedtls_ssl_session* %4 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef 152) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #2

declare dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_tls_prf(i32 noundef %prf, i8* noundef %secret, i64 noundef %slen, i8* noundef %label, i8* noundef %random, i64 noundef %rlen, i8* noundef %dstbuf, i64 noundef %dlen) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca i32, align 4
  %secret.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %label.addr = alloca i8*, align 8
  %random.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %dstbuf.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  %tls_prf = alloca i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, align 8
  store i32 %prf, i32* %prf.addr, align 4
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %random, i8** %random.addr, align 8
  store i64 %rlen, i64* %rlen.addr, align 8
  store i8* %dstbuf, i8** %dstbuf.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* null, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %0 = load i32, i32* %prf.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha384, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha256, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -28800, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %2 = load i8*, i8** %secret.addr, align 8
  %3 = load i64, i64* %slen.addr, align 8
  %4 = load i8*, i8** %label.addr, align 8
  %5 = load i8*, i8** %random.addr, align 8
  %6 = load i64, i64* %rlen.addr, align 8
  %7 = load i8*, i8** %dstbuf.addr, align 8
  %8 = load i64, i64* %dlen.addr, align 8
  %call = call i32 %1(i8* noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef %5, i64 noundef %6, i8* noundef %7, i64 noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_prf_sha384(i8* noundef %secret, i64 noundef %slen, i8* noundef %label, i8* noundef %random, i64 noundef %rlen, i8* noundef %dstbuf, i64 noundef %dlen) #0 {
entry:
  %secret.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %label.addr = alloca i8*, align 8
  %random.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %dstbuf.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %random, i8** %random.addr, align 8
  store i64 %rlen, i64* %rlen.addr, align 8
  store i8* %dstbuf, i8** %dstbuf.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  %0 = load i8*, i8** %secret.addr, align 8
  %1 = load i64, i64* %slen.addr, align 8
  %2 = load i8*, i8** %label.addr, align 8
  %3 = load i8*, i8** %random.addr, align 8
  %4 = load i64, i64* %rlen.addr, align 8
  %5 = load i8*, i8** %dstbuf.addr, align 8
  %6 = load i64, i64* %dlen.addr, align 8
  %call = call i32 @tls_prf_generic(i32 noundef 5, i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_prf_sha256(i8* noundef %secret, i64 noundef %slen, i8* noundef %label, i8* noundef %random, i64 noundef %rlen, i8* noundef %dstbuf, i64 noundef %dlen) #0 {
entry:
  %secret.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %label.addr = alloca i8*, align 8
  %random.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %dstbuf.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %random, i8** %random.addr, align 8
  store i64 %rlen, i64* %rlen.addr, align 8
  store i8* %dstbuf, i8** %dstbuf.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  %0 = load i8*, i8** %secret.addr, align 8
  %1 = load i64, i64* %slen.addr, align 8
  %2 = load i8*, i8** %label.addr, align 8
  %3 = load i8*, i8** %random.addr, align 8
  %4 = load i64, i64* %rlen.addr, align 8
  %5 = load i8*, i8** %dstbuf.addr, align 8
  %6 = load i64, i64* %dlen.addr, align 8
  %call = call i32 @tls_prf_generic(i32 noundef 4, i8* noundef %0, i64 noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_optimize_checksum(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_ciphersuite_t* noundef %ciphersuite_info) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ciphersuite_info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %ciphersuite_info, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %1, i32 0, i32 3
  %2 = load i8, i8* %mac, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 12
  store void (%struct.mbedtls_ssl_context*, i8*, i64)* @ssl_update_checksum_sha384, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info.addr, align 8
  %mac2 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %5, i32 0, i32 3
  %6 = load i8, i8* %mac2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 5
  br i1 %cmp4, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake7, align 8
  %update_checksum8 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 12
  store void (%struct.mbedtls_ssl_context*, i8*, i64)* @ssl_update_checksum_sha256, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum8, align 8
  br label %if.end

if.else9:                                         ; preds = %if.else
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %if.end10

if.end:                                           ; preds = %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_update_checksum_sha384(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 42
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %fin_sha512, i8* noundef %2, i64 noundef %3) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_update_checksum_sha256(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 41
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %fin_sha256, i8* noundef %2, i64 noundef %3) #5
  ret void
}

declare dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_add_hs_msg_to_checksum(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %hs_type, i8* noundef %msg, i64 noundef %msg_len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs_type.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %msg_len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %hs_type, i32* %hs_type.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  store i64 %msg_len, i64* %msg_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load i32, i32* %hs_type.addr, align 4
  %2 = load i64, i64* %msg_len.addr, align 8
  call void @mbedtls_ssl_add_hs_hdr_to_checksum(%struct.mbedtls_ssl_context* noundef %0, i32 noundef %1, i64 noundef %2) #5
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 12
  %5 = load void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %7 = load i8*, i8** %msg.addr, align 8
  %8 = load i64, i64* %msg_len.addr, align 8
  call void %5(%struct.mbedtls_ssl_context* noundef %6, i8* noundef %7, i64 noundef %8) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ssl_add_hs_hdr_to_checksum(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %hs_type, i64 noundef %total_hs_len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs_type.addr = alloca i32, align 4
  %total_hs_len.addr = alloca i64, align 8
  %hs_hdr = alloca [4 x i8], align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %hs_type, i32* %hs_type.addr, align 4
  store i64 %total_hs_len, i64* %total_hs_len.addr, align 8
  %0 = load i32, i32* %hs_type.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %hs_hdr, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %1 = load i64, i64* %total_hs_len.addr, align 8
  %shr = lshr i64 %1, 16
  %and1 = and i64 %shr, 255
  %conv2 = trunc i64 %and1 to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %hs_hdr, i64 0, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %2 = load i64, i64* %total_hs_len.addr, align 8
  %shr4 = lshr i64 %2, 8
  %and5 = and i64 %shr4, 255
  %conv6 = trunc i64 %and5 to i8
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %hs_hdr, i64 0, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1
  %3 = load i64, i64* %total_hs_len.addr, align 8
  %and8 = and i64 %3, 255
  %conv9 = trunc i64 %and8 to i8
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %hs_hdr, i64 0, i64 3
  store i8 %conv9, i8* %arrayidx10, align 1
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 12
  %6 = load void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %hs_hdr, i64 0, i64 0
  call void %6(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %arraydecay, i64 noundef 4) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_reset_checksum(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 41
  %call = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %fin_sha256, i32 noundef 0) #5
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 42
  %call2 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %fin_sha512, i32 noundef 1) #5
  ret void
}

declare dso_local i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_transform_init(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_transform* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 384) #6
  %2 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %2, i32 0, i32 11
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc) #5
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %3, i32 0, i32 12
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec) #5
  %4 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %4, i32 0, i32 7
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx_enc) #5
  %5 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %5, i32 0, i32 8
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx_dec) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #2

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_session* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 152) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 504) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %ret = alloca i32, align 4
  %in_buf_len = alloca i64, align 8
  %out_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 16717, i64* %in_buf_len, align 8
  store i64 16717, i64* %out_buf_len, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  store %struct.mbedtls_ssl_config* %0, %struct.mbedtls_ssl_config** %conf1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_conf_check(%struct.mbedtls_ssl_context* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 45
  store i8* null, i8** %out_buf, align 8
  %5 = load i64, i64* %in_buf_len, align 8
  %call2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #6
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 24
  store i8* %call2, i8** %in_buf, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 24
  %8 = load i8*, i8** %in_buf3, align 8
  %cmp4 = icmp eq i8* %8, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i64, i64* %in_buf_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 noundef %10) #5
  store i32 -32512, i32* %ret, align 4
  br label %error

if.end6:                                          ; preds = %if.end
  %11 = load i64, i64* %out_buf_len, align 8
  %call7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %11) #6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 45
  store i8* %call7, i8** %out_buf8, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 45
  %14 = load i8*, i8** %out_buf9, align 8
  %cmp10 = icmp eq i8* %14, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %16 = load i64, i64* %out_buf_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1037, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 noundef %16) #5
  store i32 -32512, i32* %ret, align 4
  br label %error

if.end12:                                         ; preds = %if.end6
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_reset_in_out_pointers(%struct.mbedtls_ssl_context* noundef %17) #5
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call13 = call i32 @ssl_handshake_init(%struct.mbedtls_ssl_context* noundef %18) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %error

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

error:                                            ; preds = %if.then15, %if.then11, %if.then5
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 24
  %20 = load i8*, i8** %in_buf17, align 8
  call void @free(i8* noundef %20) #6
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 45
  %22 = load i8*, i8** %out_buf18, align 8
  call void @free(i8* noundef %22) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 0
  store %struct.mbedtls_ssl_config* null, %struct.mbedtls_ssl_config** %conf19, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 24
  store i8* null, i8** %in_buf20, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 45
  store i8* null, i8** %out_buf21, align 8
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 26
  store i8* null, i8** %in_hdr, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 25
  store i8* null, i8** %in_ctr, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 27
  store i8* null, i8** %in_len, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 28
  store i8* null, i8** %in_iv, align 8
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 29
  store i8* null, i8** %in_msg, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 47
  store i8* null, i8** %out_hdr, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 46
  store i8* null, i8** %out_ctr, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 48
  store i8* null, i8** %out_len, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 49
  store i8* null, i8** %out_iv, align 8
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 50
  store i8* null, i8** %out_msg, align 8
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %error, %if.end16, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_conf_check(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_conf_version_check(%struct.mbedtls_ssl_context* noundef %0) #5
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local void @mbedtls_ssl_reset_in_out_pointers(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_handshake_init(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %length = alloca i64, align 8
  %curve_list61 = alloca i32*, align 8
  %group_list = alloca i16*, align 8
  %i = alloca i64, align 8
  %info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %md = alloca i32*, align 8
  %sig_hashes106 = alloca i32*, align 8
  %sig_algs_len = alloca i64, align 8
  %p = alloca i16*, align 8
  %hash = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 20
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_transform* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 20
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate1, align 8
  call void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 15
  %5 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %tobool2 = icmp ne %struct.mbedtls_ssl_session* %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 15
  %7 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate4, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %tobool6 = icmp ne %struct.mbedtls_ssl_handshake_params* %9, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_free(%struct.mbedtls_ssl_context* noundef %10) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 20
  %12 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate9, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_transform* %12, null
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 384) #6
  %13 = bitcast i8* %call to %struct.mbedtls_ssl_transform*
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 20
  store %struct.mbedtls_ssl_transform* %13, %struct.mbedtls_ssl_transform** %transform_negotiate11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 15
  %16 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate13, align 8
  %cmp14 = icmp eq %struct.mbedtls_ssl_session* %16, null
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %call16 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 152) #6
  %17 = bitcast i8* %call16 to %struct.mbedtls_ssl_session*
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 15
  store %struct.mbedtls_ssl_session* %17, %struct.mbedtls_ssl_session** %session_negotiate17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 16
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake19, align 8
  %cmp20 = icmp eq %struct.mbedtls_ssl_handshake_params* %20, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %call22 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 2648) #6
  %21 = bitcast i8* %call22 to %struct.mbedtls_ssl_handshake_params*
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 16
  store %struct.mbedtls_ssl_handshake_params* %21, %struct.mbedtls_ssl_handshake_params** %handshake23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 16
  %24 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake25, align 8
  %cmp26 = icmp eq %struct.mbedtls_ssl_handshake_params* %24, null
  br i1 %cmp26, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 20
  %26 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate27, align 8
  %cmp28 = icmp eq %struct.mbedtls_ssl_transform* %26, null
  br i1 %cmp28, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 15
  %28 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate30, align 8
  %cmp31 = icmp eq %struct.mbedtls_ssl_session* %28, null
  br i1 %cmp31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %if.end24
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0)) #5
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 16
  %31 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake33, align 8
  %32 = bitcast %struct.mbedtls_ssl_handshake_params* %31 to i8*
  call void @free(i8* noundef %32) #6
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 20
  %34 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate34, align 8
  %35 = bitcast %struct.mbedtls_ssl_transform* %34 to i8*
  call void @free(i8* noundef %35) #6
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 15
  %37 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate35, align 8
  %38 = bitcast %struct.mbedtls_ssl_session* %37 to i8*
  call void @free(i8* noundef %38) #6
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 16
  store %struct.mbedtls_ssl_handshake_params* null, %struct.mbedtls_ssl_handshake_params** %handshake36, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate37 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 20
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform_negotiate37, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 15
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session_negotiate38, align 8
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %lor.lhs.false29
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 15
  %43 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate40, align 8
  call void @mbedtls_ssl_session_init(%struct.mbedtls_ssl_session* noundef %43) #5
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 20
  %45 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate41, align 8
  call void @mbedtls_ssl_transform_init(%struct.mbedtls_ssl_transform* noundef %45) #5
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 16
  %47 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake42, align 8
  call void @ssl_handshake_params_init(%struct.mbedtls_ssl_handshake_params* noundef %47) #5
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 0
  %49 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %49, i32 0, i32 3
  %50 = load i8, i8* %transport, align 1
  %conv = zext i8 %50 to i32
  %cmp43 = icmp eq i32 %conv, 1
  br i1 %cmp43, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end39
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 18
  %52 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 16
  %54 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake46, align 8
  %alt_transform_out = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %54, i32 0, i32 38
  store %struct.mbedtls_ssl_transform* %52, %struct.mbedtls_ssl_transform** %alt_transform_out, align 8
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 0
  %56 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf47, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %56, i32 0, i32 2
  %57 = load i8, i8* %endpoint, align 8
  %conv48 = zext i8 %57 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then45
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 16
  %59 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake52, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %59, i32 0, i32 7
  store i8 0, i8* %retransmit_state, align 1
  br label %if.end55

if.else:                                          ; preds = %if.then45
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake53 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 16
  %61 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake53, align 8
  %retransmit_state54 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %61, i32 0, i32 7
  store i8 2, i8* %retransmit_state54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then51
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 0) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end39
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 0
  %64 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf57, align 8
  %curve_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %64, i32 0, i32 40
  %65 = load i32*, i32** %curve_list, align 8
  %cmp58 = icmp ne i32* %65, null
  br i1 %cmp58, label %if.then60, label %if.else91

if.then60:                                        ; preds = %if.end56
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 0
  %67 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf62, align 8
  %curve_list63 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %67, i32 0, i32 40
  %68 = load i32*, i32** %curve_list63, align 8
  store i32* %68, i32** %curve_list61, align 8
  store i64 0, i64* %length, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then60
  %69 = load i32*, i32** %curve_list61, align 8
  %70 = load i64, i64* %length, align 8
  %arrayidx = getelementptr inbounds i32, i32* %69, i64 %70
  %71 = load i32, i32* %arrayidx, align 4
  %cmp64 = icmp ne i32 %71, 0
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %72 = load i64, i64* %length, align 8
  %cmp66 = icmp ult i64 %72, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %73 = phi i1 [ false, %for.cond ], [ %cmp66, %land.rhs ]
  br i1 %73, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i64, i64* %length, align 8
  %inc = add i64 %74, 1
  store i64 %inc, i64* %length, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %75 = load i64, i64* %length, align 8
  %add = add i64 %75, 1
  %call68 = call noalias i8* @calloc(i64 noundef %add, i64 noundef 2) #6
  %76 = bitcast i8* %call68 to i16*
  store i16* %76, i16** %group_list, align 8
  %77 = load i16*, i16** %group_list, align 8
  %cmp69 = icmp eq i16* %77, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc84, %if.end72
  %78 = load i64, i64* %i, align 8
  %79 = load i64, i64* %length, align 8
  %cmp74 = icmp ult i64 %78, %79
  br i1 %cmp74, label %for.body76, label %for.end86

for.body76:                                       ; preds = %for.cond73
  %80 = load i32*, i32** %curve_list61, align 8
  %81 = load i64, i64* %i, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %80, i64 %81
  %82 = load i32, i32* %arrayidx77, align 4
  %call78 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %82) #5
  store %struct.mbedtls_ecp_curve_info* %call78, %struct.mbedtls_ecp_curve_info** %info, align 8
  %83 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %info, align 8
  %cmp79 = icmp eq %struct.mbedtls_ecp_curve_info* %83, null
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.body76
  %84 = load i16*, i16** %group_list, align 8
  %85 = bitcast i16* %84 to i8*
  call void @free(i8* noundef %85) #6
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %for.body76
  %86 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %info, align 8
  %tls_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %86, i32 0, i32 1
  %87 = load i16, i16* %tls_id, align 4
  %88 = load i16*, i16** %group_list, align 8
  %89 = load i64, i64* %i, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %88, i64 %89
  store i16 %87, i16* %arrayidx83, align 2
  br label %for.inc84

for.inc84:                                        ; preds = %if.end82
  %90 = load i64, i64* %i, align 8
  %inc85 = add i64 %90, 1
  store i64 %inc85, i64* %i, align 8
  br label %for.cond73, !llvm.loop !6

for.end86:                                        ; preds = %for.cond73
  %91 = load i16*, i16** %group_list, align 8
  %92 = load i64, i64* %length, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %91, i64 %92
  store i16 0, i16* %arrayidx87, align 2
  %93 = load i16*, i16** %group_list, align 8
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake88 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %94, i32 0, i32 16
  %95 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake88, align 8
  %group_list89 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %95, i32 0, i32 17
  store i16* %93, i16** %group_list89, align 8
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake90 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 16
  %97 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake90, align 8
  %group_list_heap_allocated = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %97, i32 0, i32 8
  store i8 1, i8* %group_list_heap_allocated, align 2
  br label %if.end98

if.else91:                                        ; preds = %if.end56
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf92 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %98, i32 0, i32 0
  %99 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf92, align 8
  %group_list93 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %99, i32 0, i32 41
  %100 = load i16*, i16** %group_list93, align 8
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake94 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %101, i32 0, i32 16
  %102 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake94, align 8
  %group_list95 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %102, i32 0, i32 17
  store i16* %100, i16** %group_list95, align 8
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake96 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %103, i32 0, i32 16
  %104 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake96, align 8
  %group_list_heap_allocated97 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %104, i32 0, i32 8
  store i8 0, i8* %group_list_heap_allocated97, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.else91, %for.end86
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf99 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %105, i32 0, i32 0
  %106 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf99, align 8
  %call100 = call i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %106) #5
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %land.lhs.true, label %if.else164

land.lhs.true:                                    ; preds = %if.end98
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf102 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %107, i32 0, i32 0
  %108 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf102, align 8
  %sig_hashes = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %108, i32 0, i32 38
  %109 = load i32*, i32** %sig_hashes, align 8
  %cmp103 = icmp ne i32* %109, null
  br i1 %cmp103, label %if.then105, label %if.else164

if.then105:                                       ; preds = %land.lhs.true
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 0
  %111 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf107, align 8
  %sig_hashes108 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %111, i32 0, i32 38
  %112 = load i32*, i32** %sig_hashes108, align 8
  store i32* %112, i32** %sig_hashes106, align 8
  store i64 0, i64* %sig_algs_len, align 8
  %113 = load i32*, i32** %sig_hashes106, align 8
  store i32* %113, i32** %md, align 8
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc125, %if.then105
  %114 = load i32*, i32** %md, align 8
  %115 = load i32, i32* %114, align 4
  %cmp110 = icmp ne i32 %115, 0
  br i1 %cmp110, label %for.body112, label %for.end126

for.body112:                                      ; preds = %for.cond109
  %116 = load i32*, i32** %md, align 8
  %117 = load i32, i32* %116, align 4
  %call113 = call zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef %117) #5
  %conv114 = zext i8 %call113 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %for.body112
  br label %for.inc125

if.end118:                                        ; preds = %for.body112
  %118 = load i64, i64* %sig_algs_len, align 8
  %add119 = add i64 %118, 2
  store i64 %add119, i64* %sig_algs_len, align 8
  %119 = load i64, i64* %sig_algs_len, align 8
  %add120 = add i64 %119, 2
  store i64 %add120, i64* %sig_algs_len, align 8
  %120 = load i64, i64* %sig_algs_len, align 8
  %cmp121 = icmp ugt i64 %120, 65534
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end118
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end118
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124, %if.then117
  %121 = load i32*, i32** %md, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %incdec.ptr, i32** %md, align 8
  br label %for.cond109, !llvm.loop !7

for.end126:                                       ; preds = %for.cond109
  %122 = load i64, i64* %sig_algs_len, align 8
  %cmp127 = icmp ult i64 %122, 2
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %for.end126
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %for.end126
  %123 = load i64, i64* %sig_algs_len, align 8
  %add131 = add i64 %123, 2
  %call132 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add131) #6
  %124 = bitcast i8* %call132 to i16*
  %125 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake133 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %125, i32 0, i32 16
  %126 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake133, align 8
  %sig_algs = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %126, i32 0, i32 18
  store i16* %124, i16** %sig_algs, align 8
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake134 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %127, i32 0, i32 16
  %128 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake134, align 8
  %sig_algs135 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %128, i32 0, i32 18
  %129 = load i16*, i16** %sig_algs135, align 8
  %cmp136 = icmp eq i16* %129, null
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end130
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end139:                                        ; preds = %if.end130
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake140 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %130, i32 0, i32 16
  %131 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake140, align 8
  %sig_algs141 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %131, i32 0, i32 18
  %132 = load i16*, i16** %sig_algs141, align 8
  store i16* %132, i16** %p, align 8
  %133 = load i32*, i32** %sig_hashes106, align 8
  store i32* %133, i32** %md, align 8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc160, %if.end139
  %134 = load i32*, i32** %md, align 8
  %135 = load i32, i32* %134, align 4
  %cmp143 = icmp ne i32 %135, 0
  br i1 %cmp143, label %for.body145, label %for.end162

for.body145:                                      ; preds = %for.cond142
  %136 = load i32*, i32** %md, align 8
  %137 = load i32, i32* %136, align 4
  %call146 = call zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef %137) #5
  store i8 %call146, i8* %hash, align 1
  %138 = load i8, i8* %hash, align 1
  %conv147 = zext i8 %138 to i32
  %cmp148 = icmp eq i32 %conv147, 0
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %for.body145
  br label %for.inc160

if.end151:                                        ; preds = %for.body145
  %139 = load i8, i8* %hash, align 1
  %conv152 = zext i8 %139 to i32
  %shl = shl i32 %conv152, 8
  %or = or i32 %shl, 3
  %conv153 = trunc i32 %or to i16
  %140 = load i16*, i16** %p, align 8
  store i16 %conv153, i16* %140, align 2
  %141 = load i16*, i16** %p, align 8
  %incdec.ptr154 = getelementptr inbounds i16, i16* %141, i32 1
  store i16* %incdec.ptr154, i16** %p, align 8
  %142 = load i8, i8* %hash, align 1
  %conv155 = zext i8 %142 to i32
  %shl156 = shl i32 %conv155, 8
  %or157 = or i32 %shl156, 1
  %conv158 = trunc i32 %or157 to i16
  %143 = load i16*, i16** %p, align 8
  store i16 %conv158, i16* %143, align 2
  %144 = load i16*, i16** %p, align 8
  %incdec.ptr159 = getelementptr inbounds i16, i16* %144, i32 1
  store i16* %incdec.ptr159, i16** %p, align 8
  br label %for.inc160

for.inc160:                                       ; preds = %if.end151, %if.then150
  %145 = load i32*, i32** %md, align 8
  %incdec.ptr161 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr161, i32** %md, align 8
  br label %for.cond142, !llvm.loop !8

for.end162:                                       ; preds = %for.cond142
  %146 = load i16*, i16** %p, align 8
  store i16 0, i16* %146, align 2
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake163 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %147, i32 0, i32 16
  %148 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake163, align 8
  %sig_algs_heap_allocated = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %148, i32 0, i32 9
  store i8 1, i8* %sig_algs_heap_allocated, align 1
  br label %if.end167

if.else164:                                       ; preds = %land.lhs.true, %if.end98
  %149 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake165 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %149, i32 0, i32 16
  %150 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake165, align 8
  %sig_algs_heap_allocated166 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %150, i32 0, i32 9
  store i8 0, i8* %sig_algs_heap_allocated166, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.else164, %for.end162
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end167, %if.then138, %if.then129, %if.then123, %if.then81, %if.then71, %if.then32
  %151 = load i32, i32* %retval, align 4
  ret i32 %151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_session_reset_msg_layer(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %partial) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %partial.addr = alloca i32, align 4
  %in_buf_len = alloca i64, align 8
  %out_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %partial, i32* %partial.addr, align 4
  store i64 16717, i64* %in_buf_len, align 8
  store i64 16717, i64* %out_buf_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 0) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_reset_in_out_pointers(%struct.mbedtls_ssl_context* noundef %1) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 30
  store i8* null, i8** %in_offt, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %nb_zero = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 39
  store i32 0, i32* %nb_zero, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 31
  store i32 0, i32* %in_msgtype, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 32
  store i64 0, i64* %in_msglen, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 38
  store i64 0, i64* %in_hslen, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 40
  store i32 0, i32* %keep_current_message, align 4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 17
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 35
  store i64 0, i64* %next_record_offset, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 34
  store i16 0, i16* %in_epoch, align 8
  %11 = load i32, i32* %partial.addr, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 33
  store i64 0, i64* %in_left, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 24
  %14 = load i8*, i8** %in_buf, align 8
  %15 = load i64, i64* %in_buf_len, align 8
  %call = call i8* @memset(i8* noundef %14, i32 noundef 0, i64 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %send_alert = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 41
  store i8 0, i8* %send_alert, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 51
  store i32 0, i32* %out_msgtype, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 52
  store i64 0, i64* %out_msglen, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 53
  store i64 0, i64* %out_left, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 45
  %21 = load i8*, i8** %out_buf, align 8
  %22 = load i64, i64* %out_buf_len, align 8
  %call1 = call i8* @memset(i8* noundef %21, i32 noundef 0, i64 noundef %22) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 54
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 8) #6
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 18
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_dtls_replay_reset(%struct.mbedtls_ssl_context* noundef %25) #5
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 19
  %27 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_transform* %27, null
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 19
  %29 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform4, align 8
  call void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %29) #5
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 19
  %31 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform5, align 8
  %32 = bitcast %struct.mbedtls_ssl_transform* %31 to i8*
  call void @free(i8* noundef %32) #6
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 19
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  ret void
}

declare dso_local void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

declare dso_local void @mbedtls_ssl_dtls_replay_reset(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_session_reset_int(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %partial) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %partial.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %partial, i32* %partial.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 1
  store i32 0, i32* %state, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load i32, i32* %partial.addr, align 4
  call void @mbedtls_ssl_session_reset_msg_layer(%struct.mbedtls_ssl_context* noundef %1, i32 noundef %2) #5
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 2
  store i32 0, i32* %renego_status, align 4
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 3
  store i32 0, i32* %renego_records_seen, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 61
  store i64 0, i64* %verify_data_len, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %own_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 62
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %own_verify_data, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 12) #6
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %peer_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 63
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %peer_verify_data, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 12) #6
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 60
  store i32 0, i32* %secure_renegotiation, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 12
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session_in, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 13
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session_out, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 14
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_session* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 14
  %14 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session3, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %14) #5
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 14
  %16 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session4, align 8
  %17 = bitcast %struct.mbedtls_ssl_session* %16 to i8*
  call void @free(i8* noundef %17) #6
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 14
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 57
  store i8* null, i8** %alpn_chosen, align 8
  %20 = load i32, i32* %partial.addr, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 58
  %22 = load i8*, i8** %cli_id, align 8
  call void @free(i8* noundef %22) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 58
  store i8* null, i8** %cli_id7, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 59
  store i64 0, i64* %cli_id_len, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @ssl_handshake_init(%struct.mbedtls_ssl_context* noundef %25) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_session_reset_int(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_endpoint(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %endpoint) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %endpoint, i32* %endpoint.addr, align 4
  %0 = load i32, i32* %endpoint.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %endpoint1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  store i8 %conv, i8* %endpoint1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_transport(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %transport) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %transport.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %transport, i32* %transport.addr, align 4
  %0 = load i32, i32* %transport.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %transport1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 3
  store i8 %conv, i8* %transport1, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_dtls_anti_replay(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %mode) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %mode.addr = alloca i8, align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8 %mode, i8* %mode.addr, align 1
  %0 = load i8, i8* %mode.addr, align 1
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %anti_replay = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 9
  store i8 %0, i8* %anti_replay, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_dtls_badmac_limit(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %limit) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %limit.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load i32, i32* %limit.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %badmac_limit = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 54
  store i32 %0, i32* %badmac_limit, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_datagram_packing(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %allow_packing) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %allow_packing.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %allow_packing, i32* %allow_packing.addr, align 4
  %0 = load i32, i32* %allow_packing.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %disable_datagram_packing = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 44
  store i8 %conv, i8* %disable_datagram_packing, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_handshake_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %min, i32 noundef %max) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %min.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %hs_timeout_min = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 50
  store i32 %0, i32* %hs_timeout_min, align 4
  %2 = load i32, i32* %max.addr, align 4
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %hs_timeout_max = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 51
  store i32 %2, i32* %hs_timeout_max, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %authmode) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %authmode.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %authmode, i32* %authmode.addr, align 4
  %0 = load i32, i32* %authmode.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %authmode1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 4
  store i8 %conv, i8* %authmode1, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_verify(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  %0 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_vrfy1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 24
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %0, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy1, align 8
  %2 = load i8*, i8** %p_vrfy.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_vrfy2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 25
  store i8* %2, i8** %p_vrfy2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_rng1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 17
  store i32 (i8*, i8*, i64)* %0, i32 (i8*, i8*, i64)** %f_rng1, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_rng2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 18
  store i8* %2, i8** %p_rng2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_dbg(%struct.mbedtls_ssl_config* noundef %conf, void (i8*, i32, i8*, i32, i8*)* noundef %f_dbg, i8* noundef %p_dbg) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_dbg.addr = alloca void (i8*, i32, i8*, i32, i8*)*, align 8
  %p_dbg.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store void (i8*, i32, i8*, i32, i8*)* %f_dbg, void (i8*, i32, i8*, i32, i8*)** %f_dbg.addr, align 8
  store i8* %p_dbg, i8** %p_dbg.addr, align 8
  %0 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_dbg1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 15
  store void (i8*, i32, i8*, i32, i8*)* %0, void (i8*, i32, i8*, i32, i8*)** %f_dbg1, align 8
  %2 = load i8*, i8** %p_dbg.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_dbg2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 16
  store i8* %2, i8** %p_dbg2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %p_bio, i32 (i8*, i8*, i64)* noundef %f_send, i32 (i8*, i8*, i64)* noundef %f_recv, i32 (i8*, i8*, i64, i32)* noundef %f_recv_timeout) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p_bio.addr = alloca i8*, align 8
  %f_send.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %f_recv.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %f_recv_timeout.addr = alloca i32 (i8*, i8*, i64, i32)*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %p_bio, i8** %p_bio.addr, align 8
  store i32 (i8*, i8*, i64)* %f_send, i32 (i8*, i8*, i64)** %f_send.addr, align 8
  store i32 (i8*, i8*, i64)* %f_recv, i32 (i8*, i8*, i64)** %f_recv.addr, align 8
  store i32 (i8*, i8*, i64, i32)* %f_recv_timeout, i32 (i8*, i8*, i64, i32)** %f_recv_timeout.addr, align 8
  %0 = load i8*, i8** %p_bio.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 11
  store i8* %0, i8** %p_bio1, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_send.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_send2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 8
  store i32 (i8*, i8*, i64)* %2, i32 (i8*, i8*, i64)** %f_send2, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_recv.addr, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 9
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %f_recv3, align 8
  %6 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout.addr, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 10
  store i32 (i8*, i8*, i64, i32)* %6, i32 (i8*, i8*, i64, i32)** %f_recv_timeout4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_mtu(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %mtu) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %mtu.addr = alloca i16, align 2
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i16 %mtu, i16* %mtu.addr, align 2
  %0 = load i16, i16* %mtu.addr, align 2
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 55
  store i16 %0, i16* %mtu1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_read_timeout(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %timeout) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %timeout.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %timeout, i32* %timeout.addr, align 4
  %0 = load i32, i32* %timeout.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %read_timeout = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 49
  store i32 %0, i32* %read_timeout, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_timer_cb(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %p_timer, void (i8*, i32, i32)* noundef %f_set_timer, i32 (i8*)* noundef %f_get_timer) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %p_timer.addr = alloca i8*, align 8
  %f_set_timer.addr = alloca void (i8*, i32, i32)*, align 8
  %f_get_timer.addr = alloca i32 (i8*)*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %p_timer, i8** %p_timer.addr, align 8
  store void (i8*, i32, i32)* %f_set_timer, void (i8*, i32, i32)** %f_set_timer.addr, align 8
  store i32 (i8*)* %f_get_timer, i32 (i8*)** %f_get_timer.addr, align 8
  %0 = load i8*, i8** %p_timer.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_timer1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 21
  store i8* %0, i8** %p_timer1, align 8
  %2 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %f_set_timer.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_set_timer2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 22
  store void (i8*, i32, i32)* %2, void (i8*, i32, i32)** %f_set_timer2, align 8
  %4 = load i32 (i8*)*, i32 (i8*)** %f_get_timer.addr, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 23
  store i32 (i8*)* %4, i32 (i8*)** %f_get_timer3, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 0) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_session_cache(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %p_cache, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef %f_get_cache, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* noundef %f_set_cache) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %p_cache.addr = alloca i8*, align 8
  %f_get_cache.addr = alloca i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, align 8
  %f_set_cache.addr = alloca i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8* %p_cache, i8** %p_cache.addr, align 8
  store i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %f_get_cache, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_get_cache.addr, align 8
  store i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %f_set_cache, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_set_cache.addr, align 8
  %0 = load i8*, i8** %p_cache.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_cache1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 21
  store i8* %0, i8** %p_cache1, align 8
  %2 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_get_cache.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_get_cache2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 19
  store i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %2, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_get_cache2, align 8
  %4 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_set_cache.addr, align 8
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_set_cache3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 20
  store i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %4, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_set_cache3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_session(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_session* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 15
  %3 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %cmp3 = icmp eq %struct.mbedtls_ssl_session* %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 2
  %6 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 0
  %9 = load i8, i8* %resume, align 8
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 15
  %11 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate12, align 8
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %call = call i32 @mbedtls_ssl_session_copy(%struct.mbedtls_ssl_session* noundef %11, %struct.mbedtls_ssl_session* noundef %12) #5
  store i32 %call, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 16
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake17, align 8
  %resume18 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %15, i32 0, i32 0
  store i8 1, i8* %resume18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then10, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_ciphersuites(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef %ciphersuites) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %ciphersuites.addr = alloca i32*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32* %ciphersuites, i32** %ciphersuites.addr, align 8
  %0 = load i32*, i32** %ciphersuites.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %ciphersuite_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 14
  store i32* %0, i32** %ciphersuite_list, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_cert_profile(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt_profile* noundef %profile) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %0 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %cert_profile = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 34
  store %struct.mbedtls_x509_crt_profile* %0, %struct.mbedtls_x509_crt_profile** %cert_profile, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %own_cert, %struct.mbedtls_pk_context* noundef %pk_key) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %own_cert.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %pk_key.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store %struct.mbedtls_x509_crt* %own_cert, %struct.mbedtls_x509_crt** %own_cert.addr, align 8
  store %struct.mbedtls_pk_context* %pk_key, %struct.mbedtls_pk_context** %pk_key.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %key_cert = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 35
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %own_cert.addr, align 8
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk_key.addr, align 8
  %call = call i32 @ssl_append_key_cert(%struct.mbedtls_ssl_key_cert** noundef %key_cert, %struct.mbedtls_x509_crt* noundef %1, %struct.mbedtls_pk_context* noundef %2) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_append_key_cert(%struct.mbedtls_ssl_key_cert** noundef %head, %struct.mbedtls_x509_crt* noundef %cert, %struct.mbedtls_pk_context* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.mbedtls_ssl_key_cert**, align 8
  %cert.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %new_cert = alloca %struct.mbedtls_ssl_key_cert*, align 8
  %cur = alloca %struct.mbedtls_ssl_key_cert*, align 8
  store %struct.mbedtls_ssl_key_cert** %head, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  store %struct.mbedtls_x509_crt* %cert, %struct.mbedtls_x509_crt** %cert.addr, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_key_cert**, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  %2 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %1, align 8
  call void @ssl_key_cert_free(%struct.mbedtls_ssl_key_cert* noundef %2) #5
  %3 = load %struct.mbedtls_ssl_key_cert**, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  store %struct.mbedtls_ssl_key_cert* null, %struct.mbedtls_ssl_key_cert** %3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #6
  %4 = bitcast i8* %call to %struct.mbedtls_ssl_key_cert*
  store %struct.mbedtls_ssl_key_cert* %4, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %5 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_key_cert* %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert.addr, align 8
  %7 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %cert4 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %7, i32 0, i32 0
  store %struct.mbedtls_x509_crt* %6, %struct.mbedtls_x509_crt** %cert4, align 8
  %8 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %9 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %key5 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %9, i32 0, i32 1
  store %struct.mbedtls_pk_context* %8, %struct.mbedtls_pk_context** %key5, align 8
  %10 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %10, i32 0, i32 2
  store %struct.mbedtls_ssl_key_cert* null, %struct.mbedtls_ssl_key_cert** %next, align 8
  %11 = load %struct.mbedtls_ssl_key_cert**, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  %12 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %11, align 8
  %cmp6 = icmp eq %struct.mbedtls_ssl_key_cert* %12, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %13 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %14 = load %struct.mbedtls_ssl_key_cert**, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  store %struct.mbedtls_ssl_key_cert* %13, %struct.mbedtls_ssl_key_cert** %14, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end3
  %15 = load %struct.mbedtls_ssl_key_cert**, %struct.mbedtls_ssl_key_cert*** %head.addr, align 8
  %16 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %15, align 8
  store %struct.mbedtls_ssl_key_cert* %16, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %17 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %next8 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %17, i32 0, i32 2
  %18 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %next8, align 8
  %cmp9 = icmp ne %struct.mbedtls_ssl_key_cert* %18, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %next10 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %19, i32 0, i32 2
  %20 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %next10, align 8
  store %struct.mbedtls_ssl_key_cert* %20, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %21 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %new_cert, align 8
  %22 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %next11 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %22, i32 0, i32 2
  store %struct.mbedtls_ssl_key_cert* %21, %struct.mbedtls_ssl_key_cert** %next11, align 8
  br label %if.end12

if.end12:                                         ; preds = %while.end, %if.then7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %ca_chain, %struct.mbedtls_x509_crl* noundef %ca_crl) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %ca_chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store %struct.mbedtls_x509_crt* %ca_chain, %struct.mbedtls_x509_crt** %ca_chain.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %ca_chain1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 36
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %ca_chain1, align 8
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %ca_crl2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 37
  store %struct.mbedtls_x509_crl* %2, %struct.mbedtls_x509_crl** %ca_crl2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_get_hs_sni(%struct.mbedtls_ssl_context* noundef %ssl, i64* noundef %name_len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %name_len.addr = alloca i64*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64* %name_len, i64** %name_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_name_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 48
  %2 = load i64, i64* %sni_name_len, align 8
  %3 = load i64*, i64** %name_len.addr, align 8
  store i64 %2, i64* %3, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %sni_name = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 47
  %6 = load i8*, i8** %sni_name, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_hs_own_cert(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_x509_crt* noundef %own_cert, %struct.mbedtls_pk_context* noundef %pk_key) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %own_cert.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %pk_key.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_x509_crt* %own_cert, %struct.mbedtls_x509_crt** %own_cert.addr, align 8
  store %struct.mbedtls_pk_context* %pk_key, %struct.mbedtls_pk_context** %pk_key.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_key_cert = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 25
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %own_cert.addr, align 8
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk_key.addr, align 8
  %call = call i32 @ssl_append_key_cert(%struct.mbedtls_ssl_key_cert** noundef %sni_key_cert, %struct.mbedtls_x509_crt* noundef %2, %struct.mbedtls_pk_context* noundef %3) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_hs_ca_chain(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_x509_crt* noundef %ca_chain, %struct.mbedtls_x509_crl* noundef %ca_crl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ca_chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_x509_crt* %ca_chain, %struct.mbedtls_x509_crt** %ca_chain.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_ca_chain = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 26
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %sni_ca_chain, align 8
  %3 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %sni_ca_crl = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 27
  store %struct.mbedtls_x509_crl* %3, %struct.mbedtls_x509_crl** %sni_ca_crl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_hs_dn_hints(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %dn_hints = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 49
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %dn_hints, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_hs_authmode(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %authmode) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %authmode.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %authmode, i32* %authmode.addr, align 4
  %0 = load i32, i32* %authmode.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_authmode = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 2
  store i8 %conv, i8* %sni_authmode, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_verify(%struct.mbedtls_ssl_context* noundef %ssl, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  %0 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_vrfy1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 6
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %0, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy1, align 8
  %2 = load i8*, i8** %p_vrfy.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_vrfy2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 7
  store i8* %2, i8** %p_vrfy2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %psk, i64 noundef %psk_len, i8* noundef %psk_identity, i64 noundef %psk_identity_len) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %psk.addr = alloca i8*, align 8
  %psk_len.addr = alloca i64, align 8
  %psk_identity.addr = alloca i8*, align 8
  %psk_identity_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8* %psk, i8** %psk.addr, align 8
  store i64 %psk_len, i64* %psk_len.addr, align 8
  store i8* %psk_identity, i8** %psk_identity.addr, align 8
  store i64 %psk_identity_len, i64* %psk_identity_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %call = call i32 @ssl_conf_psk_is_configured(%struct.mbedtls_ssl_config* noundef %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %psk.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load i64, i64* %psk_len.addr, align 8
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end2
  %3 = load i64, i64* %psk_len.addr, align 8
  %cmp6 = icmp ugt i64 %3, 32
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %4 = load i64, i64* %psk_len.addr, align 8
  %call9 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %4) #6
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 44
  store i8* %call9, i8** %psk10, align 8
  %cmp11 = icmp eq i8* %call9, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %6 = load i64, i64* %psk_len.addr, align 8
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len14 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 45
  store i64 %6, i64* %psk_len14, align 8
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk15 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 44
  %9 = load i8*, i8** %psk15, align 8
  %10 = load i8*, i8** %psk.addr, align 8
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len16 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 45
  %12 = load i64, i64* %psk_len16, align 8
  %call17 = call i8* @memcpy(i8* noundef %9, i8* noundef %10, i64 noundef %12) #6
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %14 = load i8*, i8** %psk_identity.addr, align 8
  %15 = load i64, i64* %psk_identity_len.addr, align 8
  %call18 = call i32 @ssl_conf_set_psk_identity(%struct.mbedtls_ssl_config* noundef %13, i8* noundef %14, i64 noundef %15) #5
  store i32 %call18, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %16, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end13
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  call void @ssl_conf_remove_psk(%struct.mbedtls_ssl_config* noundef %17) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end13
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then12, %if.then7, %if.then4, %if.then1, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_conf_psk_is_configured(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 44
  %1 = load i8*, i8** %psk, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_conf_set_psk_identity(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %psk_identity, i64 noundef %psk_identity_len) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %psk_identity.addr = alloca i8*, align 8
  %psk_identity_len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8* %psk_identity, i8** %psk_identity.addr, align 8
  store i64 %psk_identity_len, i64* %psk_identity_len.addr, align 8
  %0 = load i8*, i8** %psk_identity.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %psk_identity_len.addr, align 8
  %shr = lshr i64 %1, 16
  %cmp1 = icmp ne i64 %shr, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %psk_identity_len.addr, align 8
  %cmp3 = icmp ugt i64 %2, 16384
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i64, i64* %psk_identity_len.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %3) #6
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity4 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 46
  store i8* %call, i8** %psk_identity4, align 8
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 46
  %6 = load i8*, i8** %psk_identity5, align 8
  %cmp6 = icmp eq i8* %6, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %7 = load i64, i64* %psk_identity_len.addr, align 8
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len9 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 47
  store i64 %7, i64* %psk_identity_len9, align 8
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 46
  %10 = load i8*, i8** %psk_identity10, align 8
  %11 = load i8*, i8** %psk_identity.addr, align 8
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len11 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 47
  %13 = load i64, i64* %psk_identity_len11, align 8
  %call12 = call i8* @memcpy(i8* noundef %10, i8* noundef %11, i64 noundef %13) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_conf_remove_psk(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 44
  %1 = load i8*, i8** %psk, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 44
  %3 = load i8*, i8** %psk1, align 8
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 45
  %5 = load i64, i64* %psk_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef %5) #5
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 44
  %7 = load i8*, i8** %psk2, align 8
  call void @free(i8* noundef %7) #6
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 44
  store i8* null, i8** %psk3, align 8
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len4 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 45
  store i64 0, i64* %psk_len4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 46
  %11 = load i8*, i8** %psk_identity, align 8
  %cmp5 = icmp ne i8* %11, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 46
  %13 = load i8*, i8** %psk_identity7, align 8
  call void @free(i8* noundef %13) #6
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity8 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 46
  store i8* null, i8** %psk_identity8, align 8
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 47
  store i64 0, i64* %psk_identity_len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_hs_psk(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %psk, i64 noundef %psk_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %psk.addr = alloca i8*, align 8
  %psk_len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %psk, i8** %psk.addr, align 8
  store i64 %psk_len, i64* %psk_len.addr, align 8
  %0 = load i8*, i8** %psk.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %psk_len.addr, align 8
  %cmp2 = icmp ugt i64 %3, 32
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_remove_psk(%struct.mbedtls_ssl_context* noundef %4) #5
  %5 = load i64, i64* %psk_len.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #6
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %psk6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 22
  store i8* %call, i8** %psk6, align 8
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %8 = load i64, i64* %psk_len.addr, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %psk_len11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 23
  store i64 %8, i64* %psk_len11, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 16
  %12 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake12, align 8
  %psk13 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %12, i32 0, i32 22
  %13 = load i8*, i8** %psk13, align 8
  %14 = load i8*, i8** %psk.addr, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 16
  %16 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake14, align 8
  %psk_len15 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %16, i32 0, i32 23
  %17 = load i64, i64* %psk_len15, align 8
  %call16 = call i8* @memcpy(i8* noundef %13, i8* noundef %14, i64 noundef %17) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_remove_psk(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 22
  %2 = load i8*, i8** %psk, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %psk2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 22
  %5 = load i8*, i8** %psk2, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 23
  %8 = load i64, i64* %psk_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %8) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %psk5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 22
  %11 = load i8*, i8** %psk5, align 8
  call void @free(i8* noundef %11) #6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %psk_len7 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 23
  store i64 0, i64* %psk_len7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_psk_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef %f_psk, i8* noundef %p_psk) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_psk.addr = alloca i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, align 8
  %p_psk.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %f_psk, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk.addr, align 8
  store i8* %p_psk, i8** %p_psk.addr, align 8
  %0 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_psk1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 26
  store i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %0, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_psk1, align 8
  %2 = load i8*, i8** %p_psk.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_psk2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 27
  store i8* %2, i8** %p_psk2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_mode_from_transform(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  %base_mode = alloca i32, align 4
  %encrypt_then_mac = alloca i32, align 4
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %0, i32 0, i32 11
  %call = call i32 @mbedtls_cipher_get_cipher_mode(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc) #5
  %call1 = call i32 @mbedtls_ssl_get_base_mode(i32 noundef %call) #5
  store i32 %call1, i32* %base_mode, align 4
  store i32 0, i32* %encrypt_then_mac, align 4
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %encrypt_then_mac2 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %1, i32 0, i32 9
  %2 = load i32, i32* %encrypt_then_mac2, align 8
  store i32 %2, i32* %encrypt_then_mac, align 4
  %3 = load i32, i32* %base_mode, align 4
  %4 = load i32, i32* %encrypt_then_mac, align 4
  %call3 = call i32 @mbedtls_ssl_get_actual_mode(i32 noundef %3, i32 noundef %4) #5
  ret i32 %call3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_get_base_mode(i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 6
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4
  %cmp2 = icmp eq i32 %2, 8
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 11
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i32 3, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_get_cipher_mode(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_cipher_context_t*, align 8
  store %struct.mbedtls_cipher_context_t* %ctx, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.mbedtls_cipher_context_t*, %struct.mbedtls_cipher_context_t** %ctx.addr, align 8
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, %struct.mbedtls_cipher_context_t* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info1, align 8
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 1
  %4 = load i32, i32* %mode, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_get_actual_mode(i32 noundef %base_mode, i32 noundef %encrypt_then_mac) #0 {
entry:
  %retval = alloca i32, align 4
  %base_mode.addr = alloca i32, align 4
  %encrypt_then_mac.addr = alloca i32, align 4
  store i32 %base_mode, i32* %base_mode.addr, align 4
  store i32 %encrypt_then_mac, i32* %encrypt_then_mac.addr, align 4
  %0 = load i32, i32* %encrypt_then_mac.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %base_mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %base_mode.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_mode_from_ciphersuite(i32 noundef %encrypt_then_mac, %struct.mbedtls_ssl_ciphersuite_t* noundef %suite) #0 {
entry:
  %encrypt_then_mac.addr = alloca i32, align 4
  %suite.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %base_mode = alloca i32, align 4
  %cipher = alloca %struct.mbedtls_cipher_info_t*, align 8
  store i32 %encrypt_then_mac, i32* %encrypt_then_mac.addr, align 4
  store %struct.mbedtls_ssl_ciphersuite_t* %suite, %struct.mbedtls_ssl_ciphersuite_t** %suite.addr, align 8
  store i32 0, i32* %base_mode, align 4
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite.addr, align 8
  %cipher1 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 2
  %1 = load i8, i8* %cipher1, align 8
  %conv = zext i8 %1 to i32
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %conv) #5
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher, align 8
  %cmp = icmp ne %struct.mbedtls_cipher_info_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher, align 8
  %call3 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %3) #5
  %call4 = call i32 @mbedtls_ssl_get_base_mode(i32 noundef %call3) #5
  store i32 %call4, i32* %base_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %base_mode, align 4
  %5 = load i32, i32* %encrypt_then_mac.addr, align 4
  %call5 = call i32 @mbedtls_ssl_get_actual_mode(i32 noundef %4, i32 noundef %5) #5
  ret i32 %call5
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
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
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_dh_param_bin(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %dhm_P, i64 noundef %P_len, i8* noundef %dhm_G, i64 noundef %G_len) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %dhm_P.addr = alloca i8*, align 8
  %P_len.addr = alloca i64, align 8
  %dhm_G.addr = alloca i8*, align 8
  %G_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8* %dhm_P, i8** %dhm_P.addr, align 8
  store i64 %P_len, i64* %P_len.addr, align 8
  store i8* %dhm_G, i8** %dhm_G.addr, align 8
  store i64 %G_len, i64* %G_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 42
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_P1) #5
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 43
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_G2) #5
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 42
  %3 = load i8*, i8** %dhm_P.addr, align 8
  %4 = load i64, i64* %P_len.addr, align 8
  %call = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %dhm_P3, i8* noundef %3, i64 noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G4 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 43
  %6 = load i8*, i8** %dhm_G.addr, align 8
  %7 = load i64, i64* %G_len.addr, align 8
  %call5 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %dhm_G4, i8* noundef %6, i64 noundef %7) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 42
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_P7) #5
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G8 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 43
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_G8) #5
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_dh_param_ctx(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_dhm_context* noundef %dhm_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %dhm_ctx.addr = alloca %struct.mbedtls_dhm_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store %struct.mbedtls_dhm_context* %dhm_ctx, %struct.mbedtls_dhm_context** %dhm_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 42
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_P) #5
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 43
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_G) #5
  %2 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm_ctx.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 42
  %call = call i32 @mbedtls_dhm_get_value(%struct.mbedtls_dhm_context* noundef %2, i32 noundef 0, %struct.mbedtls_mpi* noundef %dhm_P1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mbedtls_dhm_context*, %struct.mbedtls_dhm_context** %dhm_ctx.addr, align 8
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 43
  %call3 = call i32 @mbedtls_dhm_get_value(%struct.mbedtls_dhm_context* noundef %4, i32 noundef 1, %struct.mbedtls_mpi* noundef %dhm_G2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 42
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_P5) #5
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G6 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 43
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_G6) #5
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_dhm_get_value(%struct.mbedtls_dhm_context* noundef, i32 noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_dhm_min_bitlen(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %bitlen) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %bitlen.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %bitlen, i32* %bitlen.addr, align 4
  %0 = load i32, i32* %bitlen.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_min_bitlen = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 55
  store i32 %0, i32* %dhm_min_bitlen, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_sig_hashes(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef %hashes) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %hashes.addr = alloca i32*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32* %hashes, i32** %hashes.addr, align 8
  %0 = load i32*, i32** %hashes.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_hashes = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 38
  store i32* %0, i32** %sig_hashes, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_sig_algs(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef %sig_algs) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %sig_algs.addr = alloca i16*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i16* %sig_algs, i16** %sig_algs.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_hashes = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 38
  store i32* null, i32** %sig_hashes, align 8
  %1 = load i16*, i16** %sig_algs.addr, align 8
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_algs1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 39
  store i16* %1, i16** %sig_algs1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_curves(%struct.mbedtls_ssl_config* noundef %conf, i32* noundef %curve_list) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %curve_list.addr = alloca i32*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32* %curve_list, i32** %curve_list.addr, align 8
  %0 = load i32*, i32** %curve_list.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %curve_list1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 40
  store i32* %0, i32** %curve_list1, align 8
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %group_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 41
  store i16* null, i16** %group_list, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_groups(%struct.mbedtls_ssl_config* noundef %conf, i16* noundef %group_list) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %group_list.addr = alloca i16*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i16* %group_list, i16** %group_list.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %curve_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 40
  store i32* null, i32** %curve_list, align 8
  %1 = load i16*, i16** %group_list.addr, align 8
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %group_list1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 41
  store i16* %1, i16** %group_list1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %hostname) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hostname.addr = alloca i8*, align 8
  %hostname_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %hostname, i8** %hostname.addr, align 8
  store i64 0, i64* %hostname_len, align 8
  %0 = load i8*, i8** %hostname.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %hostname.addr, align 8
  %call = call i64 @strlen(i8* noundef %1) #7
  store i64 %call, i64* %hostname_len, align 8
  %2 = load i64, i64* %hostname_len, align 8
  %cmp1 = icmp ugt i64 %2, 255
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 56
  %4 = load i8*, i8** %hostname4, align 8
  %cmp5 = icmp ne i8* %4, null
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end3
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 56
  %6 = load i8*, i8** %hostname7, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 56
  %8 = load i8*, i8** %hostname8, align 8
  %call9 = call i64 @strlen(i8* noundef %8) #7
  call void @mbedtls_platform_zeroize(i8* noundef %6, i64 noundef %call9) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 56
  %10 = load i8*, i8** %hostname10, align 8
  call void @free(i8* noundef %10) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end3
  %11 = load i8*, i8** %hostname.addr, align 8
  %cmp12 = icmp eq i8* %11, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 56
  store i8* null, i8** %hostname14, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end11
  %13 = load i64, i64* %hostname_len, align 8
  %add = add i64 %13, 1
  %call15 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add) #6
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 56
  store i8* %call15, i8** %hostname16, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 56
  %16 = load i8*, i8** %hostname17, align 8
  %cmp18 = icmp eq i8* %16, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 56
  %18 = load i8*, i8** %hostname21, align 8
  %19 = load i8*, i8** %hostname.addr, align 8
  %20 = load i64, i64* %hostname_len, align 8
  %call22 = call i8* @memcpy(i8* noundef %18, i8* noundef %19, i64 noundef %20) #6
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 56
  %22 = load i8*, i8** %hostname23, align 8
  %23 = load i64, i64* %hostname_len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %arrayidx, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %if.then13
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then19, %if.then2
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_sni(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* noundef %f_sni, i8* noundef %p_sni) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_sni.addr = alloca i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, align 8
  %p_sni.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %f_sni, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_sni.addr, align 8
  store i8* %p_sni, i8** %p_sni.addr, align 8
  %0 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_sni.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_sni1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 22
  store i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %0, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_sni1, align 8
  %2 = load i8*, i8** %p_sni.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_sni2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 23
  store i8* %2, i8** %p_sni2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef %conf, i8** noundef %protos) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %protos.addr = alloca i8**, align 8
  %cur_len = alloca i64, align 8
  %tot_len = alloca i64, align 8
  %p = alloca i8**, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8** %protos, i8*** %protos.addr, align 8
  store i64 0, i64* %tot_len, align 8
  %0 = load i8**, i8*** %protos.addr, align 8
  store i8** %0, i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %p, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %p, align 8
  %4 = load i8*, i8** %3, align 8
  %call = call i64 @strlen(i8* noundef %4) #7
  store i64 %call, i64* %cur_len, align 8
  %5 = load i64, i64* %cur_len, align 8
  %6 = load i64, i64* %tot_len, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %tot_len, align 8
  %7 = load i64, i64* %cur_len, align 8
  %cmp1 = icmp eq i64 %7, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i64, i64* %cur_len, align 8
  %cmp2 = icmp ugt i64 %8, 255
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load i64, i64* %tot_len, align 8
  %cmp4 = icmp ugt i64 %9, 65535
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** %protos.addr, align 8
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %alpn_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 48
  store i8** %11, i8*** %alpn_list, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_get_alpn_protocol(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 57
  %1 = load i8*, i8** %alpn_chosen, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_max_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %major, i32 noundef %minor) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %major.addr = alloca i32, align 4
  %minor.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %major, i32* %major.addr, align 4
  store i32 %minor, i32* %minor.addr, align 4
  %0 = load i32, i32* %major.addr, align 4
  %shl = shl i32 %0, 8
  %1 = load i32, i32* %minor.addr, align 4
  %or = or i32 %shl, %1
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 0
  store i32 %or, i32* %max_tls_version, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_min_version(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %major, i32 noundef %minor) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %major.addr = alloca i32, align 4
  %minor.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %major, i32* %major.addr, align 4
  store i32 %minor, i32* %minor.addr, align 4
  %0 = load i32, i32* %major.addr, align 4
  %shl = shl i32 %0, 8
  %1 = load i32, i32* %minor.addr, align 4
  %or = or i32 %shl, %1
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 1
  store i32 %or, i32* %min_tls_version, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_cert_req_ca_list(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %cert_req_ca_list) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %cert_req_ca_list.addr = alloca i8, align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8 %cert_req_ca_list, i8* %cert_req_ca_list.addr, align 1
  %0 = load i8, i8* %cert_req_ca_list.addr, align 1
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %cert_req_ca_list1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 12
  store i8 %0, i8* %cert_req_ca_list1, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %etm) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %etm.addr = alloca i8, align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8 %etm, i8* %etm.addr, align 1
  %0 = load i8, i8* %etm.addr, align 1
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 7
  store i8 %0, i8* %encrypt_then_mac, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %ems) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %ems.addr = alloca i8, align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8 %ems, i8* %ems.addr, align 1
  %0 = load i8, i8* %ems.addr, align 1
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 8
  store i8 %0, i8* %extended_ms, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_conf_max_frag_len(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef zeroext %mfl_code) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %mfl_code.addr = alloca i8, align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8 %mfl_code, i8* %mfl_code.addr, align 1
  %0 = load i8, i8* %mfl_code.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %mfl_code.addr, align 1
  %conv2 = zext i8 %1 to i32
  %call = call i32 @ssl_mfl_code_to_length(i32 noundef %conv2) #5
  %cmp3 = icmp ugt i32 %call, 16384
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, i8* %mfl_code.addr, align 1
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %mfl_code5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 6
  store i8 %2, i8* %mfl_code5, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_mfl_code_to_length(i32 noundef %mfl) #0 {
entry:
  %retval = alloca i32, align 4
  %mfl.addr = alloca i32, align 4
  store i32 %mfl, i32* %mfl.addr, align 4
  %0 = load i32, i32* %mfl.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 16384, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 512, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 1024, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 2048, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 4096, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 16384, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_legacy_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %allow_legacy) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %allow_legacy.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %allow_legacy, i32* %allow_legacy.addr, align 4
  %0 = load i32, i32* %allow_legacy.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %allow_legacy_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 5
  store i8 %conv, i8* %allow_legacy_renegotiation, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %renegotiation) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %renegotiation.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %renegotiation, i32* %renegotiation.addr, align 4
  %0 = load i32, i32* %renegotiation.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %disable_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 10
  store i8 %conv, i8* %disable_renegotiation, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_renegotiation_enforced(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %max_records) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %max_records.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %max_records, i32* %max_records.addr, align 4
  %0 = load i32, i32* %max_records.addr, align 4
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %renego_max_records = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 52
  store i32 %0, i32* %renego_max_records, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_renegotiation_period(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef %period) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %period.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i8* %period, i8** %period.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %renego_period = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 53
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 0
  %1 = load i8*, i8** %period.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %1, i64 noundef 8) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_session_tickets(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %use_tickets) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %use_tickets.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %use_tickets, i32* %use_tickets.addr, align 4
  %0 = load i32, i32* %use_tickets.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %session_tickets = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 11
  store i8 %conv, i8* %session_tickets, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_conf_session_tickets_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* noundef %f_ticket_write, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* noundef %f_ticket_parse, i8* noundef %p_ticket) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %f_ticket_write.addr = alloca i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, align 8
  %f_ticket_parse.addr = alloca i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, align 8
  %p_ticket.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* %f_ticket_write, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)** %f_ticket_write.addr, align 8
  store i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* %f_ticket_parse, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)** %f_ticket_parse.addr, align 8
  store i8* %p_ticket, i8** %p_ticket.addr, align 8
  %0 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)** %f_ticket_write.addr, align 8
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_ticket_write1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 31
  store i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* %0, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)** %f_ticket_write1, align 8
  %2 = load i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)** %f_ticket_parse.addr, align 8
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_ticket_parse2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 32
  store i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* %2, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)** %f_ticket_parse2, align 8
  %4 = load i8*, i8** %p_ticket.addr, align 8
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %p_ticket3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 33
  store i8* %4, i8** %p_ticket3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_export_keys_cb(%struct.mbedtls_ssl_context* noundef %ssl, void (i8*, i32, i8*, i64, i8*, i8*, i32)* noundef %f_export_keys, i8* noundef %p_export_keys) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %f_export_keys.addr = alloca void (i8*, i32, i8*, i64, i8*, i8*, i32)*, align 8
  %p_export_keys.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store void (i8*, i32, i8*, i64, i8*, i8*, i32)* %f_export_keys, void (i8*, i32, i8*, i64, i8*, i8*, i32)** %f_export_keys.addr, align 8
  store i8* %p_export_keys, i8** %p_export_keys.addr, align 8
  %0 = load void (i8*, i32, i8*, i64, i8*, i8*, i32)*, void (i8*, i32, i8*, i64, i8*, i8*, i32)** %f_export_keys.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_export_keys1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 64
  store void (i8*, i32, i8*, i64, i8*, i8*, i32)* %0, void (i8*, i32, i8*, i64, i8*, i8*, i32)** %f_export_keys1, align 8
  %2 = load i8*, i8** %p_export_keys.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_export_keys2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 65
  store i8* %2, i8** %p_export_keys2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_verify_result(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 14
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_session* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 14
  %3 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session1, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %3, i32 0, i32 10
  %4 = load i32, i32* %verify_result, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 15
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %cmp2 = icmp ne %struct.mbedtls_ssl_session* %6, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate4, align 8
  %verify_result5 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 10
  %9 = load i32, i32* %verify_result5, align 8
  store i32 %9, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_ciphersuite_id_from_ssl(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 14
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_session* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 14
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session2, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %4, i32 0, i32 4
  %5 = load i32, i32* %ciphersuite, align 8
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_get_ciphersuite(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 14
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_session* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 14
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session2, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %4, i32 0, i32 4
  %5 = load i32, i32* %ciphersuite, align 8
  %call = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %5) #5
  store i8* %call, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

declare dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_get_version(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i8*, align 8
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
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 4
  %4 = load i32, i32* %tls_version, align 4
  switch i32 %4, label %sw.default [
    i32 771, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.then
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 4
  %6 = load i32, i32* %tls_version2, align 4
  switch i32 %6, label %sw.default5 [
    i32 771, label %sw.bb3
    i32 772, label %sw.bb4
  ]

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default5:                                      ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default5, %sw.bb4, %sw.bb3, %sw.default, %sw.bb
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ssl_get_input_max_frag_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i64, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %max_len = alloca i64, align 8
  %read_mfl = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 16384, i64* %max_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  %2 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 1
  %4 = load i32, i32* %state, align 8
  %cmp2 = icmp sge i32 %4, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf4, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 6
  %7 = load i8, i8* %mfl_code, align 4
  %conv5 = zext i8 %7 to i32
  %call = call i32 @ssl_mfl_code_to_length(i32 noundef %conv5) #5
  %conv6 = zext i32 %call to i64
  store i64 %conv6, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 13
  %9 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_out, align 8
  %cmp7 = icmp ne %struct.mbedtls_ssl_session* %9, null
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 13
  %11 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_out10, align 8
  %mfl_code11 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %11, i32 0, i32 0
  %12 = load i8, i8* %mfl_code11, align 8
  %conv12 = zext i8 %12 to i32
  %call13 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv12) #5
  %conv14 = zext i32 %call13 to i64
  store i64 %conv14, i64* %read_mfl, align 8
  %13 = load i64, i64* %read_mfl, align 8
  %14 = load i64, i64* %max_len, align 8
  %cmp15 = icmp ult i64 %13, %14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then9
  %15 = load i64, i64* %read_mfl, align 8
  store i64 %15, i64* %max_len, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then9
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 15
  %17 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %cmp20 = icmp ne %struct.mbedtls_ssl_session* %17, null
  br i1 %cmp20, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end19
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 15
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate23, align 8
  %mfl_code24 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %19, i32 0, i32 0
  %20 = load i8, i8* %mfl_code24, align 8
  %conv25 = zext i8 %20 to i32
  %call26 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv25) #5
  %conv27 = zext i32 %call26 to i64
  store i64 %conv27, i64* %read_mfl, align 8
  %21 = load i64, i64* %read_mfl, align 8
  %22 = load i64, i64* %max_len, align 8
  %cmp28 = icmp ult i64 %21, %22
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then22
  %23 = load i64, i64* %read_mfl, align 8
  store i64 %23, i64* %max_len, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end19
  %24 = load i64, i64* %max_len, align 8
  store i64 %24, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end32, %if.then
  %25 = load i64, i64* %retval, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ssl_get_output_max_frag_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %max_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 6
  %2 = load i8, i8* %mfl_code, align 4
  %conv = zext i8 %2 to i32
  %call = call i32 @ssl_mfl_code_to_length(i32 noundef %conv) #5
  %conv1 = zext i32 %call to i64
  store i64 %conv1, i64* %max_len, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 13
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_out, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_session* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 13
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_out3, align 8
  %mfl_code4 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %6, i32 0, i32 0
  %7 = load i8, i8* %mfl_code4, align 8
  %conv5 = zext i8 %7 to i32
  %call6 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv5) #5
  %conv7 = zext i32 %call6 to i64
  %8 = load i64, i64* %max_len, align 8
  %cmp8 = icmp ult i64 %conv7, %8
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 13
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_out10, align 8
  %mfl_code11 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %10, i32 0, i32 0
  %11 = load i8, i8* %mfl_code11, align 8
  %conv12 = zext i8 %11 to i32
  %call13 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv12) #5
  %conv14 = zext i32 %call13 to i64
  store i64 %conv14, i64* %max_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 15
  %13 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %cmp15 = icmp ne %struct.mbedtls_ssl_session* %13, null
  br i1 %cmp15, label %land.lhs.true17, label %if.end31

land.lhs.true17:                                  ; preds = %if.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 15
  %15 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate18, align 8
  %mfl_code19 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %15, i32 0, i32 0
  %16 = load i8, i8* %mfl_code19, align 8
  %conv20 = zext i8 %16 to i32
  %call21 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv20) #5
  %conv22 = zext i32 %call21 to i64
  %17 = load i64, i64* %max_len, align 8
  %cmp23 = icmp ult i64 %conv22, %17
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %land.lhs.true17
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 15
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate26, align 8
  %mfl_code27 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %19, i32 0, i32 0
  %20 = load i8, i8* %mfl_code27, align 8
  %conv28 = zext i8 %20 to i32
  %call29 = call i32 @ssl_mfl_code_to_length(i32 noundef %conv28) #5
  %conv30 = zext i32 %call29 to i64
  store i64 %conv30, i64* %max_len, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %land.lhs.true17, %if.end
  %21 = load i64, i64* %max_len, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ssl_get_current_mtu(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i64, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  %2 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 1
  %4 = load i32, i32* %state, align 8
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 1
  %6 = load i32, i32* %state4, align 8
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp7 = icmp eq %struct.mbedtls_ssl_handshake_params* %8, null
  br i1 %cmp7, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %mtu = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 40
  %11 = load i16, i16* %mtu, align 8
  %conv11 = zext i16 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %lor.lhs.false9, %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 55
  %13 = load i16, i16* %mtu15, align 8
  %conv16 = zext i16 %13 to i64
  store i64 %conv16, i64* %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false9
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 55
  %15 = load i16, i16* %mtu18, align 8
  %conv19 = zext i16 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end17
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 16
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake23, align 8
  %mtu24 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 40
  %18 = load i16, i16* %mtu24, align 8
  %conv25 = zext i16 %18 to i64
  store i64 %conv25, i64* %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.end17
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 55
  %20 = load i16, i16* %mtu27, align 8
  %conv28 = zext i16 %20 to i32
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake29, align 8
  %mtu30 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 40
  %23 = load i16, i16* %mtu30, align 8
  %conv31 = zext i16 %23 to i32
  %cmp32 = icmp slt i32 %conv28, %conv31
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end26
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 55
  %25 = load i16, i16* %mtu34, align 8
  %conv35 = zext i16 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end26
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 16
  %27 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake36, align 8
  %mtu37 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %27, i32 0, i32 40
  %28 = load i16, i16* %mtu37, align 8
  %conv38 = zext i16 %28 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv35, %cond.true ], [ %conv38, %cond.false ]
  %conv39 = sext i32 %cond to i64
  store i64 %conv39, i64* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then22, %if.then14, %if.then
  %29 = load i64, i64* %retval, align 8
  ret i64 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %max_len = alloca i64, align 8
  %mfl = alloca i64, align 8
  %mtu = alloca i64, align 8
  %ret = alloca i32, align 4
  %overhead = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 16384, i64* %max_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_get_output_max_frag_len(%struct.mbedtls_ssl_context* noundef %0) #5
  store i64 %call, i64* %mfl, align 8
  %1 = load i64, i64* %max_len, align 8
  %2 = load i64, i64* %mfl, align 8
  %cmp = icmp ugt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %mfl, align 8
  store i64 %3, i64* %max_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i64 @mbedtls_ssl_get_current_mtu(%struct.mbedtls_ssl_context* noundef %4) #5
  %cmp2 = icmp ne i64 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call i64 @mbedtls_ssl_get_current_mtu(%struct.mbedtls_ssl_context* noundef %5) #5
  store i64 %call4, i64* %mtu, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef %6) #5
  store i32 %call5, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %conv = sext i32 %7 to i64
  store i64 %conv, i64* %overhead, align 8
  %8 = load i32, i32* %ret, align 4
  %cmp6 = icmp slt i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then3
  %10 = load i64, i64* %mtu, align 8
  %11 = load i64, i64* %overhead, align 8
  %cmp10 = icmp ule i64 %10, %11
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2615, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #5
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %13 = load i64, i64* %max_len, align 8
  %14 = load i64, i64* %mtu, align 8
  %15 = load i64, i64* %overhead, align 8
  %sub = sub i64 %14, %15
  %cmp14 = icmp ugt i64 %13, %sub
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %16 = load i64, i64* %mtu, align 8
  %17 = load i64, i64* %overhead, align 8
  %sub17 = sub i64 %16, %17
  store i64 %sub17, i64* %max_len, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %18 = load i64, i64* %max_len, align 8
  %conv20 = trunc i64 %18 to i32
  store i32 %conv20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then12, %if.then8
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_max_in_record_payload(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %max_len = alloca i64, align 8
  %mfl = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 16384, i64* %max_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_get_input_max_frag_len(%struct.mbedtls_ssl_context* noundef %0) #5
  store i64 %call, i64* %mfl, align 8
  %1 = load i64, i64* %max_len, align 8
  %2 = load i64, i64* %mfl, align 8
  %cmp = icmp ugt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %mfl, align 8
  store i64 %3, i64* %max_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %max_len, align 8
  %conv = trunc i64 %4 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_x509_crt* @mbedtls_ssl_get_peer_cert(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca %struct.mbedtls_x509_crt*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 14
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_session* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 14
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session2, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %4, i32 0, i32 9
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  store %struct.mbedtls_x509_crt* %5, %struct.mbedtls_x509_crt** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %retval, align 8
  ret %struct.mbedtls_x509_crt* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_session(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_session* noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %dst.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_session* %dst, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_session* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 14
  %3 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp3 = icmp eq %struct.mbedtls_ssl_session* %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 2
  %6 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 14
  %8 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session7, align 8
  %exported = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %8, i32 0, i32 1
  %9 = load i8, i8* %exported, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %dst.addr, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 14
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session13, align 8
  %call = call i32 @mbedtls_ssl_session_copy(%struct.mbedtls_ssl_session* noundef %10, %struct.mbedtls_ssl_session* noundef %12) #5
  store i32 %call, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 14
  %16 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session18, align 8
  %exported19 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %16, i32 0, i32 1
  store i8 1, i8* %exported19, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then11, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %session, i8* noundef %buf, i64 noundef %buf_len, i64* noundef %olen) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %buf_len.addr, align 8
  %3 = load i64*, i64** %olen.addr, align 8
  %call = call i32 @ssl_session_save(%struct.mbedtls_ssl_session* noundef %0, i8 noundef zeroext 0, i8* noundef %1, i64 noundef %2, i64* noundef %3) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_session_save(%struct.mbedtls_ssl_session* noundef %session, i8 noundef zeroext %omit_header, i8* noundef %buf, i64 noundef %buf_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %omit_header.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %used = alloca i64, align 8
  %remaining_len = alloca i64, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8 %omit_header, i8* %omit_header.addr, align 1
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %used, align 8
  %1 = load i8, i8* %omit_header.addr, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %used, align 8
  %add = add i64 %2, 5
  store i64 %add, i64* %used, align 8
  %3 = load i64, i64* %used, align 8
  %4 = load i64, i64* %buf_len.addr, align 8
  %cmp = icmp ule i64 %3, %4
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load i8*, i8** %p, align 8
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @ssl_serialized_session_header, i64 0, i64 0), i64 noundef 5) #6
  %6 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 5
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %7 = load i64, i64* %used, align 8
  %add3 = add i64 %7, 1
  store i64 %add3, i64* %used, align 8
  %8 = load i64, i64* %used, align 8
  %9 = load i64, i64* %buf_len.addr, align 8
  %cmp4 = icmp ule i64 %8, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %10, i32 0, i32 2
  %11 = load i32, i32* %tls_version, align 4
  %and = and i32 %11, 255
  %conv = trunc i32 %and to i8
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %12, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %13 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %tls_version7 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %13, i32 0, i32 2
  %14 = load i32, i32* %tls_version7, align 4
  switch i32 %14, label %sw.default [
    i32 771, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end6
  %15 = load i64, i64* %used, align 8
  %16 = load i64, i64* %buf_len.addr, align 8
  %cmp8 = icmp ule i64 %15, %16
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %17 = load i64, i64* %buf_len.addr, align 8
  %18 = load i64, i64* %used, align 8
  %sub = sub i64 %17, %18
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %remaining_len, align 8
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %20 = load i8*, i8** %p, align 8
  %21 = load i64, i64* %remaining_len, align 8
  %call10 = call i64 @ssl_session_save_tls12(%struct.mbedtls_ssl_session* noundef %19, i8* noundef %20, i64 noundef %21) #5
  %22 = load i64, i64* %used, align 8
  %add11 = add i64 %22, %call10
  store i64 %add11, i64* %used, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  store i32 -28800, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %cond.end
  %23 = load i64, i64* %used, align 8
  %24 = load i64*, i64** %olen.addr, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %used, align 8
  %26 = load i64, i64* %buf_len.addr, align 8
  %cmp12 = icmp ugt i64 %25, %26
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.epilog
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %sw.default
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef %session, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @ssl_session_load(%struct.mbedtls_ssl_session* noundef %0, i8 noundef zeroext 0, i8* noundef %1, i64 noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %ret, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_session_load(%struct.mbedtls_ssl_session* noundef %session, i8 noundef zeroext %omit_header, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %omit_header.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %remaining_len = alloca i64, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8 %omit_header, i8* %omit_header.addr, align 1
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  %3 = load i8, i8* %omit_header.addr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %end, align 8
  %5 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ult i64 %sub.ptr.sub, 5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** %p, align 8
  %call = call i32 @memcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @ssl_serialized_session_header, i64 0, i64 0), i64 noundef 5) #7
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -24320, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 5
  store i8* %add.ptr5, i8** %p, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end4, %entry
  %8 = load i8*, i8** %end, align 8
  %9 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %9 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %cmp10 = icmp ugt i64 1, %sub.ptr.sub9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %or = or i32 768, %conv
  %12 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %12, i32 0, i32 2
  store i32 %or, i32* %tls_version, align 4
  %13 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %tls_version13 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %13, i32 0, i32 2
  %14 = load i32, i32* %tls_version13, align 4
  switch i32 %14, label %sw.default [
    i32 771, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end12
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %16 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  store i64 %sub.ptr.sub16, i64* %remaining_len, align 8
  %17 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %18 = load i8*, i8** %p, align 8
  %19 = load i64, i64* %remaining_len, align 8
  %call17 = call i32 @ssl_session_load_tls12(%struct.mbedtls_ssl_session* noundef %17, i8* noundef %18, i64 noundef %19) #5
  store i32 %call17, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end12
  store i32 -28928, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then11, %if.then3, %if.then1
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handshake_step(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp3 = icmp eq %struct.mbedtls_ssl_handshake_params* %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %5) #5
  %cmp5 = icmp eq i32 %call, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call6 = call i32 @ssl_prepare_handshake_step(%struct.mbedtls_ssl_context* noundef %6) #5
  store i32 %call6, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call10 = call i32 @mbedtls_ssl_handle_pending_alert(%struct.mbedtls_ssl_context* noundef %9) #5
  store i32 %call10, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf14, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 2
  %13 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv, 0
  br i1 %cmp15, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end13
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 1
  %16 = load i32, i32* %state, align 8
  %call18 = call i8* @mbedtls_ssl_states_str(i32 noundef %16) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3006, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call18) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 1
  %18 = load i32, i32* %state19, align 8
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then17
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 1
  store i32 1, i32* %state20, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then17
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call22 = call i32 @mbedtls_ssl_write_client_hello(%struct.mbedtls_ssl_context* noundef %20) #5
  store i32 %call22, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then17
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call23 = call i32 @mbedtls_ssl_handshake_client_step(%struct.mbedtls_ssl_context* noundef %21) #5
  store i32 %call23, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb
  br label %if.end24

if.end24:                                         ; preds = %sw.epilog, %if.end13
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 0
  %23 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf25, align 8
  %endpoint26 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %23, i32 0, i32 2
  %24 = load i8, i8* %endpoint26, align 8
  %conv27 = zext i8 %24 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end24
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 0
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf31, align 8
  %call32 = call i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %26) #5
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then30
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call34 = call i32 @mbedtls_ssl_handshake_server_step(%struct.mbedtls_ssl_context* noundef %27) #5
  store i32 %call34, i32* %ret, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end24
  %28 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %28, 0
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end36
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %send_alert = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 41
  %30 = load i8, i8* %send_alert, align 8
  %tobool40 = icmp ne i8 %30, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then39
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call42 = call i32 @mbedtls_ssl_handle_pending_alert(%struct.mbedtls_ssl_context* noundef %31) #5
  store i32 %call42, i32* %ret, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end36
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then41, %if.then12
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then8, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 1
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 16
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_prepare_handshake_step(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %0) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 3
  %4 = load i8, i8* %transport, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 7
  %7 = load i8, i8* %retransmit_state, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %if.then6, label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call7 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %8) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %land.lhs.true, %if.end
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_ssl_handle_pending_alert(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i8* @mbedtls_ssl_states_str(i32 noundef) #2

declare dso_local i32 @mbedtls_ssl_write_client_hello(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_handshake_client_step(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 1
  %1 = load i32, i32* %min_tls_version, align 4
  %cmp = icmp eq i32 %1, 771
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 0
  %3 = load i32, i32* %max_tls_version, align 8
  %cmp1 = icmp eq i32 %3, 771
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare dso_local i32 @mbedtls_ssl_handshake_server_step(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 3
  %5 = load i8, i8* %transport, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_set_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 22
  %7 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %f_set_timer, align 8
  %cmp5 = icmp eq void (i8*, i32, i32)* %7, null
  br i1 %cmp5, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 23
  %9 = load i32 (i8*)*, i32 (i8*)** %f_get_timer, align 8
  %cmp8 = icmp eq i32 (i8*)* %9, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3080, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false7, %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3085, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end11
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %12) #5
  %cmp12 = icmp eq i32 %call, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i32 @mbedtls_ssl_handshake_step(%struct.mbedtls_ssl_context* noundef %13) #5
  store i32 %call14, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.body
  br label %while.end

if.end18:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then17, %while.cond
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3096, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #5
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_start_renegotiation(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3142, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_handshake_init(%struct.mbedtls_ssl_context* noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 3
  %5 = load i8, i8* %transport, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 2
  %7 = load i32, i32* %renego_status, align 4
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %if.then5, label %if.end13

if.then5:                                         ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf6, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 2
  %10 = load i8, i8* %endpoint, align 8
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then5
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 16
  %12 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %out_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %12, i32 0, i32 31
  store i32 1, i32* %out_msg_seq, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then5
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 16
  %14 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake11, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %14, i32 0, i32 32
  store i32 1, i32* %in_msg_seq, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 1
  store i32 0, i32* %state, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 2
  store i32 1, i32* %renego_status14, align 4
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %17) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3165, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef %19) #5
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3169, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 2
  %5 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %6) #5
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 2
  store i32 3, i32* %renego_status, align 4
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 53
  %9 = load i64, i64* %out_left, align 8
  %cmp10 = icmp ne i64 %9, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call13 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %10) #5
  store i32 %call13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call i32 @ssl_write_hello_request(%struct.mbedtls_ssl_context* noundef %11) #5
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 2
  %13 = load i32, i32* %renego_status17, align 4
  %cmp18 = icmp ne i32 %13, 1
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %14) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then20
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call26 = call i32 @mbedtls_ssl_start_renegotiation(%struct.mbedtls_ssl_context* noundef %15) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3214, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 noundef %17) #5
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end25
  br label %if.end36

if.else:                                          ; preds = %if.end16
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call31 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %19) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %21 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3222, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef %21) #5
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end30
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then34, %if.then29, %if.then24, %if.end14, %if.then12, %if.then8, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_hello_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3111, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i64 0, i64 0)) #5
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
  store i8 0, i8* %arrayidx, align 1
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %5) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %7 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3119, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 noundef %7) #5
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3123, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_handshake_free(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %handshake = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %group_list_heap_allocated = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 8
  %5 = load i8, i8* %group_list_heap_allocated, align 2
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %group_list = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 17
  %7 = load i16*, i16** %group_list, align 8
  %8 = bitcast i16* %7 to i8*
  call void @free(i8* noundef %8) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %group_list5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 17
  store i16* null, i16** %group_list5, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %sig_algs_heap_allocated = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 9
  %12 = load i8, i8* %sig_algs_heap_allocated, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sig_algs = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 18
  %14 = load i16*, i16** %sig_algs, align 8
  %15 = bitcast i16* %14 to i8*
  call void @free(i8* noundef %15) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4
  %16 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sig_algs10 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %16, i32 0, i32 18
  store i16* null, i16** %sig_algs10, align 8
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 41
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %fin_sha256) #5
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 42
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %fin_sha512) #5
  %19 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %19, i32 0, i32 19
  call void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef %dhm_ctx) #5
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 20
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx) #5
  %21 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %curves = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %21, i32 0, i32 21
  %22 = load %struct.mbedtls_ecp_curve_info**, %struct.mbedtls_ecp_curve_info*** %curves, align 8
  %23 = bitcast %struct.mbedtls_ecp_curve_info** %22 to i8*
  call void @free(i8* noundef %23) #6
  %24 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %24, i32 0, i32 22
  %25 = load i8*, i8** %psk, align 8
  %cmp11 = icmp ne i8* %25, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk13 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 22
  %27 = load i8*, i8** %psk13, align 8
  %28 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %28, i32 0, i32 23
  %29 = load i64, i64* %psk_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %27, i64 noundef %29) #5
  %30 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk14 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %30, i32 0, i32 22
  %31 = load i8*, i8** %psk14, align 8
  call void @free(i8* noundef %31) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9
  %32 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_key_cert = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %32, i32 0, i32 25
  %33 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %sni_key_cert, align 8
  call void @ssl_key_cert_free(%struct.mbedtls_ssl_key_cert* noundef %33) #5
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cookie = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 29
  %35 = load i8*, i8** %cookie, align 8
  call void @free(i8* noundef %35) #6
  %36 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %flight = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %36, i32 0, i32 34
  %37 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight, align 8
  call void @mbedtls_ssl_flight_free(%struct.mbedtls_ssl_flight_item* noundef %37) #5
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_buffering_free(%struct.mbedtls_ssl_context* noundef %38) #5
  %39 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %40 = bitcast %struct.mbedtls_ssl_handshake_params* %39 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %40, i64 noundef 2648) #5
  br label %return

return:                                           ; preds = %if.end15, %if.then
  ret void
}

declare dso_local void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef) #2

declare dso_local void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef) #2

declare dso_local void @mbedtls_dhm_free(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_key_cert_free(%struct.mbedtls_ssl_key_cert* noundef %key_cert) #0 {
entry:
  %key_cert.addr = alloca %struct.mbedtls_ssl_key_cert*, align 8
  %cur = alloca %struct.mbedtls_ssl_key_cert*, align 8
  %next = alloca %struct.mbedtls_ssl_key_cert*, align 8
  store %struct.mbedtls_ssl_key_cert* %key_cert, %struct.mbedtls_ssl_key_cert** %key_cert.addr, align 8
  %0 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert.addr, align 8
  store %struct.mbedtls_ssl_key_cert* %0, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_key_cert* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %next1 = getelementptr inbounds %struct.mbedtls_ssl_key_cert, %struct.mbedtls_ssl_key_cert* %2, i32 0, i32 2
  %3 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %next1, align 8
  store %struct.mbedtls_ssl_key_cert* %3, %struct.mbedtls_ssl_key_cert** %next, align 8
  %4 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %cur, align 8
  %5 = bitcast %struct.mbedtls_ssl_key_cert* %4 to i8*
  call void @free(i8* noundef %5) #6
  %6 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %next, align 8
  store %struct.mbedtls_ssl_key_cert* %6, %struct.mbedtls_ssl_key_cert** %cur, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local void @mbedtls_ssl_flight_free(%struct.mbedtls_ssl_flight_item* noundef) #2

declare dso_local void @mbedtls_ssl_buffering_free(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_clear_peer_cert(%struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  %0 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %0, i32 0, i32 9
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp = icmp ne %struct.mbedtls_x509_crt* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert1 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %2, i32 0, i32 9
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert1, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %3) #5
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert2 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %4, i32 0, i32 9
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert2, align 8
  %6 = bitcast %struct.mbedtls_x509_crt* %5 to i8*
  call void @free(i8* noundef %6) #6
  %7 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert3 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %7, i32 0, i32 9
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %peer_cert3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_context_save(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %buf_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %used = alloca i64, align 8
  %session_len = alloca i64, align 8
  %ret = alloca i32, align 4
  %alpn_len = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %used, align 8
  store i32 0, i32* %ret, align 4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %1) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3510, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp1 = icmp ne %struct.mbedtls_ssl_handshake_params* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3515, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 19
  %7 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %cmp4 = icmp eq %struct.mbedtls_ssl_transform* %7, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 14
  %9 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp5 = icmp eq %struct.mbedtls_ssl_session* %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3521, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @mbedtls_ssl_check_pending(%struct.mbedtls_ssl_context* noundef %11) #5
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3527, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 53
  %14 = load i64, i64* %out_left, align 8
  %cmp12 = icmp ne i64 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3532, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end11
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %17, i32 0, i32 3
  %18 = load i8, i8* %transport, align 1
  %conv = zext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv, 1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3538, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 4
  %21 = load i32, i32* %tls_version, align 4
  %cmp19 = icmp ne i32 %21, 771
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3544, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 19
  %24 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform23, align 8
  %call24 = call i32 @mbedtls_ssl_transform_uses_aead(%struct.mbedtls_ssl_transform* noundef %24) #5
  %cmp25 = icmp ne i32 %call24, 1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3550, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf29, align 8
  %disable_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %27, i32 0, i32 10
  %28 = load i8, i8* %disable_renegotiation, align 8
  %conv30 = zext i8 %28 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3557, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end28
  %30 = load i64, i64* %used, align 8
  %add = add i64 %30, 8
  store i64 %add, i64* %used, align 8
  %31 = load i64, i64* %used, align 8
  %32 = load i64, i64* %buf_len.addr, align 8
  %cmp35 = icmp ule i64 %31, %32
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %33 = load i8*, i8** %p, align 8
  %call38 = call i8* @memcpy(i8* noundef %33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ssl_serialized_context_header, i64 0, i64 0), i64 noundef 8) #6
  %34 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 8
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 14
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session40, align 8
  %call41 = call i32 @ssl_session_save(%struct.mbedtls_ssl_session* noundef %36, i8 noundef zeroext 1, i8* noundef null, i64 noundef 0, i64* noundef %session_len) #5
  store i32 %call41, i32* %ret, align 4
  %37 = load i32, i32* %ret, align 4
  %cmp42 = icmp ne i32 %37, -27136
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end39
  %39 = load i64, i64* %session_len, align 8
  %add46 = add i64 4, %39
  %40 = load i64, i64* %used, align 8
  %add47 = add i64 %40, %add46
  store i64 %add47, i64* %used, align 8
  %41 = load i64, i64* %used, align 8
  %42 = load i64, i64* %buf_len.addr, align 8
  %cmp48 = icmp ule i64 %41, %42
  br i1 %cmp48, label %if.then50, label %if.end71

if.then50:                                        ; preds = %if.end45
  %43 = load i64, i64* %session_len, align 8
  %shr = lshr i64 %43, 24
  %and = and i64 %shr, 255
  %conv51 = trunc i64 %and to i8
  %44 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %conv51, i8* %arrayidx, align 1
  %45 = load i64, i64* %session_len, align 8
  %shr52 = lshr i64 %45, 16
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %46 = load i8*, i8** %p, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %conv54, i8* %arrayidx55, align 1
  %47 = load i64, i64* %session_len, align 8
  %shr56 = lshr i64 %47, 8
  %and57 = and i64 %shr56, 255
  %conv58 = trunc i64 %and57 to i8
  %48 = load i8*, i8** %p, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv58, i8* %arrayidx59, align 1
  %49 = load i64, i64* %session_len, align 8
  %and60 = and i64 %49, 255
  %conv61 = trunc i64 %and60 to i8
  %50 = load i8*, i8** %p, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %50, i64 3
  store i8 %conv61, i8* %arrayidx62, align 1
  %51 = load i8*, i8** %p, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr63, i8** %p, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session64 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 14
  %53 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session64, align 8
  %54 = load i8*, i8** %p, align 8
  %55 = load i64, i64* %session_len, align 8
  %call65 = call i32 @ssl_session_save(%struct.mbedtls_ssl_session* noundef %53, i8 noundef zeroext 1, i8* noundef %54, i64 noundef %55, i64* noundef %session_len) #5
  store i32 %call65, i32* %ret, align 4
  %56 = load i32, i32* %ret, align 4
  %cmp66 = icmp ne i32 %56, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then50
  %57 = load i32, i32* %ret, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.then50
  %58 = load i64, i64* %session_len, align 8
  %59 = load i8*, i8** %p, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %add.ptr70, i8** %p, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end45
  %60 = load i64, i64* %used, align 8
  %add72 = add i64 %60, 64
  store i64 %add72, i64* %used, align 8
  %61 = load i64, i64* %used, align 8
  %62 = load i64, i64* %buf_len.addr, align 8
  %cmp73 = icmp ule i64 %61, %62
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %63 = load i8*, i8** %p, align 8
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 19
  %65 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform76, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %65, i32 0, i32 13
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %call77 = call i8* @memcpy(i8* noundef %63, i8* noundef %arraydecay, i64 noundef 64) #6
  %66 = load i8*, i8** %p, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %66, i64 64
  store i8* %add.ptr78, i8** %p, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71
  %67 = load i64, i64* %used, align 8
  %add80 = add i64 %67, 4
  store i64 %add80, i64* %used, align 8
  %68 = load i64, i64* %used, align 8
  %69 = load i64, i64* %buf_len.addr, align 8
  %cmp81 = icmp ule i64 %68, %69
  br i1 %cmp81, label %if.then83, label %if.end103

if.then83:                                        ; preds = %if.end79
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 5
  %71 = load i32, i32* %badmac_seen, align 8
  %shr84 = lshr i32 %71, 24
  %and85 = and i32 %shr84, 255
  %conv86 = trunc i32 %and85 to i8
  %72 = load i8*, i8** %p, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %conv86, i8* %arrayidx87, align 1
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen88 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 5
  %74 = load i32, i32* %badmac_seen88, align 8
  %shr89 = lshr i32 %74, 16
  %and90 = and i32 %shr89, 255
  %conv91 = trunc i32 %and90 to i8
  %75 = load i8*, i8** %p, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %conv91, i8* %arrayidx92, align 1
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen93 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 5
  %77 = load i32, i32* %badmac_seen93, align 8
  %shr94 = lshr i32 %77, 8
  %and95 = and i32 %shr94, 255
  %conv96 = trunc i32 %and95 to i8
  %78 = load i8*, i8** %p, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 %conv96, i8* %arrayidx97, align 1
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen98 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %79, i32 0, i32 5
  %80 = load i32, i32* %badmac_seen98, align 8
  %and99 = and i32 %80, 255
  %conv100 = trunc i32 %and99 to i8
  %81 = load i8*, i8** %p, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %81, i64 3
  store i8 %conv100, i8* %arrayidx101, align 1
  %82 = load i8*, i8** %p, align 8
  %add.ptr102 = getelementptr inbounds i8, i8* %82, i64 4
  store i8* %add.ptr102, i8** %p, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then83, %if.end79
  %83 = load i64, i64* %used, align 8
  %add104 = add i64 %83, 16
  store i64 %add104, i64* %used, align 8
  %84 = load i64, i64* %used, align 8
  %85 = load i64, i64* %buf_len.addr, align 8
  %cmp105 = icmp ule i64 %84, %85
  br i1 %cmp105, label %if.then107, label %if.end186

if.then107:                                       ; preds = %if.end103
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %86, i32 0, i32 36
  %87 = load i64, i64* %in_window_top, align 8
  %shr108 = lshr i64 %87, 56
  %and109 = and i64 %shr108, 255
  %conv110 = trunc i64 %and109 to i8
  %88 = load i8*, i8** %p, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 %conv110, i8* %arrayidx111, align 1
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top112 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %89, i32 0, i32 36
  %90 = load i64, i64* %in_window_top112, align 8
  %shr113 = lshr i64 %90, 48
  %and114 = and i64 %shr113, 255
  %conv115 = trunc i64 %and114 to i8
  %91 = load i8*, i8** %p, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %conv115, i8* %arrayidx116, align 1
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %92, i32 0, i32 36
  %93 = load i64, i64* %in_window_top117, align 8
  %shr118 = lshr i64 %93, 40
  %and119 = and i64 %shr118, 255
  %conv120 = trunc i64 %and119 to i8
  %94 = load i8*, i8** %p, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %94, i64 2
  store i8 %conv120, i8* %arrayidx121, align 1
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top122 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %95, i32 0, i32 36
  %96 = load i64, i64* %in_window_top122, align 8
  %shr123 = lshr i64 %96, 32
  %and124 = and i64 %shr123, 255
  %conv125 = trunc i64 %and124 to i8
  %97 = load i8*, i8** %p, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %97, i64 3
  store i8 %conv125, i8* %arrayidx126, align 1
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top127 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %98, i32 0, i32 36
  %99 = load i64, i64* %in_window_top127, align 8
  %shr128 = lshr i64 %99, 24
  %and129 = and i64 %shr128, 255
  %conv130 = trunc i64 %and129 to i8
  %100 = load i8*, i8** %p, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %100, i64 4
  store i8 %conv130, i8* %arrayidx131, align 1
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top132 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %101, i32 0, i32 36
  %102 = load i64, i64* %in_window_top132, align 8
  %shr133 = lshr i64 %102, 16
  %and134 = and i64 %shr133, 255
  %conv135 = trunc i64 %and134 to i8
  %103 = load i8*, i8** %p, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %103, i64 5
  store i8 %conv135, i8* %arrayidx136, align 1
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top137 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %104, i32 0, i32 36
  %105 = load i64, i64* %in_window_top137, align 8
  %shr138 = lshr i64 %105, 8
  %and139 = and i64 %shr138, 255
  %conv140 = trunc i64 %and139 to i8
  %106 = load i8*, i8** %p, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %106, i64 6
  store i8 %conv140, i8* %arrayidx141, align 1
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top142 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %107, i32 0, i32 36
  %108 = load i64, i64* %in_window_top142, align 8
  %and143 = and i64 %108, 255
  %conv144 = trunc i64 %and143 to i8
  %109 = load i8*, i8** %p, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %109, i64 7
  store i8 %conv144, i8* %arrayidx145, align 1
  %110 = load i8*, i8** %p, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %110, i64 8
  store i8* %add.ptr146, i8** %p, align 8
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %111, i32 0, i32 37
  %112 = load i64, i64* %in_window, align 8
  %shr147 = lshr i64 %112, 56
  %and148 = and i64 %shr147, 255
  %conv149 = trunc i64 %and148 to i8
  %113 = load i8*, i8** %p, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %conv149, i8* %arrayidx150, align 1
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window151 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %114, i32 0, i32 37
  %115 = load i64, i64* %in_window151, align 8
  %shr152 = lshr i64 %115, 48
  %and153 = and i64 %shr152, 255
  %conv154 = trunc i64 %and153 to i8
  %116 = load i8*, i8** %p, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %conv154, i8* %arrayidx155, align 1
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window156 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %117, i32 0, i32 37
  %118 = load i64, i64* %in_window156, align 8
  %shr157 = lshr i64 %118, 40
  %and158 = and i64 %shr157, 255
  %conv159 = trunc i64 %and158 to i8
  %119 = load i8*, i8** %p, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %119, i64 2
  store i8 %conv159, i8* %arrayidx160, align 1
  %120 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window161 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %120, i32 0, i32 37
  %121 = load i64, i64* %in_window161, align 8
  %shr162 = lshr i64 %121, 32
  %and163 = and i64 %shr162, 255
  %conv164 = trunc i64 %and163 to i8
  %122 = load i8*, i8** %p, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %122, i64 3
  store i8 %conv164, i8* %arrayidx165, align 1
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window166 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %123, i32 0, i32 37
  %124 = load i64, i64* %in_window166, align 8
  %shr167 = lshr i64 %124, 24
  %and168 = and i64 %shr167, 255
  %conv169 = trunc i64 %and168 to i8
  %125 = load i8*, i8** %p, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %125, i64 4
  store i8 %conv169, i8* %arrayidx170, align 1
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window171 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %126, i32 0, i32 37
  %127 = load i64, i64* %in_window171, align 8
  %shr172 = lshr i64 %127, 16
  %and173 = and i64 %shr172, 255
  %conv174 = trunc i64 %and173 to i8
  %128 = load i8*, i8** %p, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %128, i64 5
  store i8 %conv174, i8* %arrayidx175, align 1
  %129 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window176 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %129, i32 0, i32 37
  %130 = load i64, i64* %in_window176, align 8
  %shr177 = lshr i64 %130, 8
  %and178 = and i64 %shr177, 255
  %conv179 = trunc i64 %and178 to i8
  %131 = load i8*, i8** %p, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %131, i64 6
  store i8 %conv179, i8* %arrayidx180, align 1
  %132 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window181 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %132, i32 0, i32 37
  %133 = load i64, i64* %in_window181, align 8
  %and182 = and i64 %133, 255
  %conv183 = trunc i64 %and182 to i8
  %134 = load i8*, i8** %p, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %134, i64 7
  store i8 %conv183, i8* %arrayidx184, align 1
  %135 = load i8*, i8** %p, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %135, i64 8
  store i8* %add.ptr185, i8** %p, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then107, %if.end103
  %136 = load i64, i64* %used, align 8
  %add187 = add i64 %136, 1
  store i64 %add187, i64* %used, align 8
  %137 = load i64, i64* %used, align 8
  %138 = load i64, i64* %buf_len.addr, align 8
  %cmp188 = icmp ule i64 %137, %138
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end186
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %disable_datagram_packing = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %139, i32 0, i32 44
  %140 = load i8, i8* %disable_datagram_packing, align 8
  %141 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %140, i8* %141, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end186
  %142 = load i64, i64* %used, align 8
  %add192 = add i64 %142, 8
  store i64 %add192, i64* %used, align 8
  %143 = load i64, i64* %used, align 8
  %144 = load i64, i64* %buf_len.addr, align 8
  %cmp193 = icmp ule i64 %143, %144
  br i1 %cmp193, label %if.then195, label %if.end199

if.then195:                                       ; preds = %if.end191
  %145 = load i8*, i8** %p, align 8
  %146 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %146, i32 0, i32 54
  %arraydecay196 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call197 = call i8* @memcpy(i8* noundef %145, i8* noundef %arraydecay196, i64 noundef 8) #6
  %147 = load i8*, i8** %p, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %147, i64 8
  store i8* %add.ptr198, i8** %p, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %if.end191
  %148 = load i64, i64* %used, align 8
  %add200 = add i64 %148, 2
  store i64 %add200, i64* %used, align 8
  %149 = load i64, i64* %used, align 8
  %150 = load i64, i64* %buf_len.addr, align 8
  %cmp201 = icmp ule i64 %149, %150
  br i1 %cmp201, label %if.then203, label %if.end215

if.then203:                                       ; preds = %if.end199
  %151 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %151, i32 0, i32 55
  %152 = load i16, i16* %mtu, align 8
  %conv204 = zext i16 %152 to i32
  %shr205 = ashr i32 %conv204, 8
  %and206 = and i32 %shr205, 255
  %conv207 = trunc i32 %and206 to i8
  %153 = load i8*, i8** %p, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %153, i64 0
  store i8 %conv207, i8* %arrayidx208, align 1
  %154 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu209 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %154, i32 0, i32 55
  %155 = load i16, i16* %mtu209, align 8
  %conv210 = zext i16 %155 to i32
  %and211 = and i32 %conv210, 255
  %conv212 = trunc i32 %and211 to i8
  %156 = load i8*, i8** %p, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 %conv212, i8* %arrayidx213, align 1
  %157 = load i8*, i8** %p, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %157, i64 2
  store i8* %add.ptr214, i8** %p, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.then203, %if.end199
  %158 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %158, i32 0, i32 57
  %159 = load i8*, i8** %alpn_chosen, align 8
  %tobool = icmp ne i8* %159, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end215
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen216 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %160, i32 0, i32 57
  %161 = load i8*, i8** %alpn_chosen216, align 8
  %call217 = call i64 @strlen(i8* noundef %161) #7
  %conv218 = trunc i64 %call217 to i8
  %conv219 = zext i8 %conv218 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end215
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv219, %cond.true ], [ 0, %cond.false ]
  %conv220 = trunc i32 %cond to i8
  store i8 %conv220, i8* %alpn_len, align 1
  %162 = load i8, i8* %alpn_len, align 1
  %conv221 = zext i8 %162 to i32
  %add222 = add nsw i32 1, %conv221
  %conv223 = sext i32 %add222 to i64
  %163 = load i64, i64* %used, align 8
  %add224 = add i64 %163, %conv223
  store i64 %add224, i64* %used, align 8
  %164 = load i64, i64* %used, align 8
  %165 = load i64, i64* %buf_len.addr, align 8
  %cmp225 = icmp ule i64 %164, %165
  br i1 %cmp225, label %if.then227, label %if.end239

if.then227:                                       ; preds = %cond.end
  %166 = load i8, i8* %alpn_len, align 1
  %167 = load i8*, i8** %p, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr228, i8** %p, align 8
  store i8 %166, i8* %167, align 1
  %168 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen229 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %168, i32 0, i32 57
  %169 = load i8*, i8** %alpn_chosen229, align 8
  %cmp230 = icmp ne i8* %169, null
  br i1 %cmp230, label %if.then232, label %if.end238

if.then232:                                       ; preds = %if.then227
  %170 = load i8*, i8** %p, align 8
  %171 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen233 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %171, i32 0, i32 57
  %172 = load i8*, i8** %alpn_chosen233, align 8
  %173 = load i8, i8* %alpn_len, align 1
  %conv234 = zext i8 %173 to i64
  %call235 = call i8* @memcpy(i8* noundef %170, i8* noundef %172, i64 noundef %conv234) #6
  %174 = load i8, i8* %alpn_len, align 1
  %conv236 = zext i8 %174 to i32
  %175 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %conv236 to i64
  %add.ptr237 = getelementptr inbounds i8, i8* %175, i64 %idx.ext
  store i8* %add.ptr237, i8** %p, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.then232, %if.then227
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %cond.end
  %176 = load i64, i64* %used, align 8
  %177 = load i64*, i64** %olen.addr, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* %used, align 8
  %179 = load i64, i64* %buf_len.addr, align 8
  %cmp240 = icmp ugt i64 %178, %179
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.end239
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end243:                                        ; preds = %if.end239
  %180 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %181 = load i8*, i8** %buf.addr, align 8
  %182 = load i64, i64* %used, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %180, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3694, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef %181, i64 noundef %182) #5
  %183 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call244 = call i32 @mbedtls_ssl_session_reset_int(%struct.mbedtls_ssl_context* noundef %183, i32 noundef 0) #5
  store i32 %call244, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end243, %if.then242, %if.then68, %if.then44, %if.then33, %if.then27, %if.then21, %if.then17, %if.then13, %if.then10, %if.then6, %if.then2, %if.then
  %184 = load i32, i32* %retval, align 4
  ret i32 %184
}

declare dso_local i32 @mbedtls_ssl_check_pending(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_transform_uses_aead(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %0, i32 0, i32 3
  %1 = load i64, i64* %maclen, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %2, i32 0, i32 4
  %3 = load i64, i64* %taglen, align 8
  %cmp1 = icmp ne i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_context_load(%struct.mbedtls_ssl_context* noundef %context, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %context.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %context, %struct.mbedtls_ssl_context** %context.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %context.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @ssl_context_load(%struct.mbedtls_ssl_context* noundef %0, i8* noundef %1, i64 noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %context.addr, align 8
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %ret, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_context_load(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %session_len = alloca i64, align 8
  %ret = alloca i32, align 4
  %alpn_len = alloca i8, align 1
  %cur = alloca i8**, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  store i32 -110, i32* %ret, align 4
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 1
  %4 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 14
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %cmp1 = icmp ne %struct.mbedtls_ssl_session* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 3
  %9 = load i8, i8* %transport, align 1
  %conv = zext i8 %9 to i32
  %cmp2 = icmp ne i32 %conv, 1
  br i1 %cmp2, label %if.then17, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf5, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 0
  %12 = load i32, i32* %max_tls_version, align 8
  %cmp6 = icmp ult i32 %12, 771
  br i1 %cmp6, label %if.then17, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf9, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 1
  %15 = load i32, i32* %min_tls_version, align 4
  %cmp10 = icmp ugt i32 %15, 771
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf13, align 8
  %disable_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %17, i32 0, i32 10
  %18 = load i8, i8* %disable_renegotiation, align 8
  %conv14 = zext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false4, %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false12
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64, i64* %len.addr, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3742, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i64 0, i64 0), i8* noundef %20, i64 noundef %21) #5
  %22 = load i8*, i8** %end, align 8
  %23 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp19 = icmp ult i64 %sub.ptr.sub, 8
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  %24 = load i8*, i8** %p, align 8
  %call = call i32 @memcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ssl_serialized_context_header, i64 0, i64 0), i64 noundef 8) #7
  %cmp23 = icmp ne i32 %call, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 -24320, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %25 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %25, i64 8
  store i8* %add.ptr27, i8** %p, align 8
  %26 = load i8*, i8** %end, align 8
  %27 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %27 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %cmp31 = icmp ult i64 %sub.ptr.sub30, 4
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end26
  %28 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  %conv35 = zext i8 %29 to i64
  %shl = shl i64 %conv35, 24
  %30 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %31 to i64
  %shl38 = shl i64 %conv37, 16
  %or = or i64 %shl, %shl38
  %32 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %33 to i64
  %shl41 = shl i64 %conv40, 8
  %or42 = or i64 %or, %shl41
  %34 = load i8*, i8** %p, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %35 to i64
  %or45 = or i64 %or42, %conv44
  store i64 %or45, i64* %session_len, align 8
  %36 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr46, i8** %p, align 8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 15
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 14
  store %struct.mbedtls_ssl_session* %38, %struct.mbedtls_ssl_session** %session47, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 14
  %41 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session48, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 12
  store %struct.mbedtls_ssl_session* %41, %struct.mbedtls_ssl_session** %session_in, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 14
  %44 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session49, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 13
  store %struct.mbedtls_ssl_session* %44, %struct.mbedtls_ssl_session** %session_out, align 8
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate50 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 15
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session_negotiate50, align 8
  %47 = load i8*, i8** %end, align 8
  %48 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast51 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %48 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %49 = load i64, i64* %session_len, align 8
  %cmp54 = icmp ult i64 %sub.ptr.sub53, %49
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end34
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.end34
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session58 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 14
  %51 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session58, align 8
  %52 = load i8*, i8** %p, align 8
  %53 = load i64, i64* %session_len, align 8
  %call59 = call i32 @ssl_session_load(%struct.mbedtls_ssl_session* noundef %51, i8 noundef zeroext 1, i8* noundef %52, i64 noundef %53) #5
  store i32 %call59, i32* %ret, align 4
  %54 = load i32, i32* %ret, align 4
  %cmp60 = icmp ne i32 %54, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session63 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 14
  %56 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session63, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %56) #5
  %57 = load i32, i32* %ret, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end57
  %58 = load i64, i64* %session_len, align 8
  %59 = load i8*, i8** %p, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %add.ptr65, i8** %p, align 8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 20
  %61 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 19
  store %struct.mbedtls_ssl_transform* %61, %struct.mbedtls_ssl_transform** %transform, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 19
  %64 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform66, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 17
  store %struct.mbedtls_ssl_transform* %64, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform67 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 19
  %67 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform67, align 8
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 18
  store %struct.mbedtls_ssl_transform* %67, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 20
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform_negotiate68, align 8
  %70 = load i8*, i8** %end, align 8
  %71 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast69 = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %71 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %cmp72 = icmp ult i64 %sub.ptr.sub71, 64
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end64
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.end64
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 19
  %73 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform76, align 8
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session77 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %74, i32 0, i32 14
  %75 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session77, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %75, i32 0, i32 4
  %76 = load i32, i32* %ciphersuite, align 8
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session78 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %77, i32 0, i32 14
  %78 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session78, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %78, i32 0, i32 8
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %79, i32 0, i32 14
  %80 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session79, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %80, i32 0, i32 14
  %81 = load i32, i32* %encrypt_then_mac, align 4
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session80 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 14
  %83 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session80, align 8
  %ciphersuite81 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %83, i32 0, i32 4
  %84 = load i32, i32* %ciphersuite81, align 8
  %call82 = call i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @ssl_tls12prf_from_cs(i32 noundef %84) #5
  %85 = load i8*, i8** %p, align 8
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %86, i32 0, i32 0
  %87 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf83, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %87, i32 0, i32 2
  %88 = load i8, i8* %endpoint, align 8
  %conv84 = zext i8 %88 to i32
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call85 = call i32 @ssl_tls12_populate_transform(%struct.mbedtls_ssl_transform* noundef %73, i32 noundef %76, i8* noundef %arraydecay, i32 noundef %81, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* noundef %call82, i8* noundef %85, i32 noundef 771, i32 noundef %conv84, %struct.mbedtls_ssl_context* noundef %89) #5
  store i32 %call85, i32* %ret, align 4
  %90 = load i32, i32* %ret, align 4
  %cmp86 = icmp ne i32 %90, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end75
  %91 = load i32, i32* %ret, align 4
  store i32 %91, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end75
  %92 = load i8*, i8** %p, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %92, i64 64
  store i8* %add.ptr90, i8** %p, align 8
  %93 = load i8*, i8** %end, align 8
  %94 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast91 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %94 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %cmp94 = icmp ult i64 %sub.ptr.sub93, 4
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end89
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end89
  %95 = load i8*, i8** %p, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %95, i64 0
  %96 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %96 to i32
  %shl100 = shl i32 %conv99, 24
  %97 = load i8*, i8** %p, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %98 to i32
  %shl103 = shl i32 %conv102, 16
  %or104 = or i32 %shl100, %shl103
  %99 = load i8*, i8** %p, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %99, i64 2
  %100 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %100 to i32
  %shl107 = shl i32 %conv106, 8
  %or108 = or i32 %or104, %shl107
  %101 = load i8*, i8** %p, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %101, i64 3
  %102 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %102 to i32
  %or111 = or i32 %or108, %conv110
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %103, i32 0, i32 5
  store i32 %or111, i32* %badmac_seen, align 8
  %104 = load i8*, i8** %p, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %add.ptr112, i8** %p, align 8
  %105 = load i8*, i8** %end, align 8
  %106 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast113 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast114 = ptrtoint i8* %106 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %cmp116 = icmp ult i64 %sub.ptr.sub115, 16
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end97
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end97
  %107 = load i8*, i8** %p, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %108 to i64
  %shl122 = shl i64 %conv121, 56
  %109 = load i8*, i8** %p, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %110 to i64
  %shl125 = shl i64 %conv124, 48
  %or126 = or i64 %shl122, %shl125
  %111 = load i8*, i8** %p, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %111, i64 2
  %112 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %112 to i64
  %shl129 = shl i64 %conv128, 40
  %or130 = or i64 %or126, %shl129
  %113 = load i8*, i8** %p, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %113, i64 3
  %114 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %114 to i64
  %shl133 = shl i64 %conv132, 32
  %or134 = or i64 %or130, %shl133
  %115 = load i8*, i8** %p, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %115, i64 4
  %116 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %116 to i64
  %shl137 = shl i64 %conv136, 24
  %or138 = or i64 %or134, %shl137
  %117 = load i8*, i8** %p, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %117, i64 5
  %118 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %118 to i64
  %shl141 = shl i64 %conv140, 16
  %or142 = or i64 %or138, %shl141
  %119 = load i8*, i8** %p, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %119, i64 6
  %120 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %120 to i64
  %shl145 = shl i64 %conv144, 8
  %or146 = or i64 %or142, %shl145
  %121 = load i8*, i8** %p, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %121, i64 7
  %122 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %122 to i64
  %or149 = or i64 %or146, %conv148
  %123 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %123, i32 0, i32 36
  store i64 %or149, i64* %in_window_top, align 8
  %124 = load i8*, i8** %p, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %124, i64 8
  store i8* %add.ptr150, i8** %p, align 8
  %125 = load i8*, i8** %p, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %125, i64 0
  %126 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %126 to i64
  %shl153 = shl i64 %conv152, 56
  %127 = load i8*, i8** %p, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %128 to i64
  %shl156 = shl i64 %conv155, 48
  %or157 = or i64 %shl153, %shl156
  %129 = load i8*, i8** %p, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %129, i64 2
  %130 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %130 to i64
  %shl160 = shl i64 %conv159, 40
  %or161 = or i64 %or157, %shl160
  %131 = load i8*, i8** %p, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %131, i64 3
  %132 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %132 to i64
  %shl164 = shl i64 %conv163, 32
  %or165 = or i64 %or161, %shl164
  %133 = load i8*, i8** %p, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %133, i64 4
  %134 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %134 to i64
  %shl168 = shl i64 %conv167, 24
  %or169 = or i64 %or165, %shl168
  %135 = load i8*, i8** %p, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %135, i64 5
  %136 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %136 to i64
  %shl172 = shl i64 %conv171, 16
  %or173 = or i64 %or169, %shl172
  %137 = load i8*, i8** %p, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %137, i64 6
  %138 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %138 to i64
  %shl176 = shl i64 %conv175, 8
  %or177 = or i64 %or173, %shl176
  %139 = load i8*, i8** %p, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %139, i64 7
  %140 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %140 to i64
  %or180 = or i64 %or177, %conv179
  %141 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %141, i32 0, i32 37
  store i64 %or180, i64* %in_window, align 8
  %142 = load i8*, i8** %p, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %142, i64 8
  store i8* %add.ptr181, i8** %p, align 8
  %143 = load i8*, i8** %end, align 8
  %144 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast182 = ptrtoint i8* %143 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %144 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast183
  %cmp185 = icmp ult i64 %sub.ptr.sub184, 1
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.end119
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end188:                                        ; preds = %if.end119
  %145 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %146 = load i8, i8* %145, align 1
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %disable_datagram_packing = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %147, i32 0, i32 44
  store i8 %146, i8* %disable_datagram_packing, align 8
  %148 = load i8*, i8** %end, align 8
  %149 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast189 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast190 = ptrtoint i8* %149 to i64
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %cmp192 = icmp ult i64 %sub.ptr.sub191, 8
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end188
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end195:                                        ; preds = %if.end188
  %150 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %150, i32 0, i32 54
  %arraydecay196 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %151 = load i8*, i8** %p, align 8
  %call197 = call i8* @memcpy(i8* noundef %arraydecay196, i8* noundef %151, i64 noundef 8) #6
  %152 = load i8*, i8** %p, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %152, i64 8
  store i8* %add.ptr198, i8** %p, align 8
  %153 = load i8*, i8** %end, align 8
  %154 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast199 = ptrtoint i8* %153 to i64
  %sub.ptr.rhs.cast200 = ptrtoint i8* %154 to i64
  %sub.ptr.sub201 = sub i64 %sub.ptr.lhs.cast199, %sub.ptr.rhs.cast200
  %cmp202 = icmp ult i64 %sub.ptr.sub201, 2
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end195
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end205:                                        ; preds = %if.end195
  %155 = load i8*, i8** %p, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %156 to i32
  %shl208 = shl i32 %conv207, 8
  %157 = load i8*, i8** %p, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %158 to i32
  %or211 = or i32 %shl208, %conv210
  %conv212 = trunc i32 %or211 to i16
  %159 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %mtu = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %159, i32 0, i32 55
  store i16 %conv212, i16* %mtu, align 8
  %160 = load i8*, i8** %p, align 8
  %add.ptr213 = getelementptr inbounds i8, i8* %160, i64 2
  store i8* %add.ptr213, i8** %p, align 8
  %161 = load i8*, i8** %end, align 8
  %162 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast214 = ptrtoint i8* %161 to i64
  %sub.ptr.rhs.cast215 = ptrtoint i8* %162 to i64
  %sub.ptr.sub216 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast215
  %cmp217 = icmp ult i64 %sub.ptr.sub216, 1
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end205
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end220:                                        ; preds = %if.end205
  %163 = load i8*, i8** %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr221, i8** %p, align 8
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* %alpn_len, align 1
  %165 = load i8, i8* %alpn_len, align 1
  %conv222 = zext i8 %165 to i32
  %cmp223 = icmp ne i32 %conv222, 0
  br i1 %cmp223, label %land.lhs.true, label %if.end245

land.lhs.true:                                    ; preds = %if.end220
  %166 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf225 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %166, i32 0, i32 0
  %167 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf225, align 8
  %alpn_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %167, i32 0, i32 48
  %168 = load i8**, i8*** %alpn_list, align 8
  %cmp226 = icmp ne i8** %168, null
  br i1 %cmp226, label %if.then228, label %if.end245

if.then228:                                       ; preds = %land.lhs.true
  %169 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf229 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %169, i32 0, i32 0
  %170 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf229, align 8
  %alpn_list230 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %170, i32 0, i32 48
  %171 = load i8**, i8*** %alpn_list230, align 8
  store i8** %171, i8*** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then228
  %172 = load i8**, i8*** %cur, align 8
  %173 = load i8*, i8** %172, align 8
  %cmp231 = icmp ne i8* %173, null
  br i1 %cmp231, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %174 = load i8**, i8*** %cur, align 8
  %175 = load i8*, i8** %174, align 8
  %call233 = call i64 @strlen(i8* noundef %175) #7
  %176 = load i8, i8* %alpn_len, align 1
  %conv234 = zext i8 %176 to i64
  %cmp235 = icmp eq i64 %call233, %conv234
  br i1 %cmp235, label %land.lhs.true237, label %if.end243

land.lhs.true237:                                 ; preds = %for.body
  %177 = load i8*, i8** %p, align 8
  %178 = load i8**, i8*** %cur, align 8
  %179 = bitcast i8** %178 to i8*
  %180 = load i8, i8* %alpn_len, align 1
  %conv238 = zext i8 %180 to i64
  %call239 = call i32 @memcmp(i8* noundef %177, i8* noundef %179, i64 noundef %conv238) #7
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %land.lhs.true237
  %181 = load i8**, i8*** %cur, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %183, i32 0, i32 57
  store i8* %182, i8** %alpn_chosen, align 8
  br label %for.end

if.end243:                                        ; preds = %land.lhs.true237, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end243
  %184 = load i8**, i8*** %cur, align 8
  %incdec.ptr244 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %incdec.ptr244, i8*** %cur, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then242, %for.cond
  br label %if.end245

if.end245:                                        ; preds = %for.end, %land.lhs.true, %if.end220
  %185 = load i8, i8* %alpn_len, align 1
  %conv246 = zext i8 %185 to i32
  %cmp247 = icmp ne i32 %conv246, 0
  br i1 %cmp247, label %land.lhs.true249, label %if.end254

land.lhs.true249:                                 ; preds = %if.end245
  %186 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen250 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %186, i32 0, i32 57
  %187 = load i8*, i8** %alpn_chosen250, align 8
  %cmp251 = icmp eq i8* %187, null
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %land.lhs.true249
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end254:                                        ; preds = %land.lhs.true249, %if.end245
  %188 = load i8, i8* %alpn_len, align 1
  %conv255 = zext i8 %188 to i32
  %189 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %conv255 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %189, i64 %idx.ext
  store i8* %add.ptr256, i8** %p, align 8
  %190 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state257 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %190, i32 0, i32 1
  store i32 16, i32* %state257, align 8
  %191 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %191, i32 0, i32 4
  store i32 771, i32* %tls_version, align 4
  %192 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %193 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform258 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %193, i32 0, i32 19
  %194 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform258, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %192, %struct.mbedtls_ssl_transform* noundef %194) #5
  %195 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %195, i32 0, i32 34
  store i16 1, i16* %in_epoch, align 8
  %196 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %196, i32 0, i32 16
  %197 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp259 = icmp ne %struct.mbedtls_ssl_handshake_params* %197, null
  br i1 %cmp259, label %if.then261, label %if.end264

if.then261:                                       ; preds = %if.end254
  %198 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_free(%struct.mbedtls_ssl_context* noundef %198) #5
  %199 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake262 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %199, i32 0, i32 16
  %200 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake262, align 8
  %201 = bitcast %struct.mbedtls_ssl_handshake_params* %200 to i8*
  call void @free(i8* noundef %201) #6
  %202 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake263 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %202, i32 0, i32 16
  store %struct.mbedtls_ssl_handshake_params* null, %struct.mbedtls_ssl_handshake_params** %handshake263, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then261, %if.end254
  %203 = load i8*, i8** %p, align 8
  %204 = load i8*, i8** %end, align 8
  %cmp265 = icmp ne i8* %203, %204
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end264
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end268:                                        ; preds = %if.end264
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end268, %if.then267, %if.then253, %if.then219, %if.then204, %if.then194, %if.then187, %if.then118, %if.then96, %if.then88, %if.then74, %if.then62, %if.then56, %if.then33, %if.then25, %if.then21, %if.then17, %if.then
  %205 = load i32, i32* %retval, align 4
  ret i32 %205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %out_buf_len = alloca i64, align 8
  %in_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3991, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 45
  %3 = load i8*, i8** %out_buf, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  store i64 16717, i64* %out_buf_len, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 45
  %5 = load i8*, i8** %out_buf3, align 8
  %6 = load i64, i64* %out_buf_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 45
  %8 = load i8*, i8** %out_buf4, align 8
  call void @free(i8* noundef %8) #6
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 45
  store i8* null, i8** %out_buf5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 24
  %11 = load i8*, i8** %in_buf, align 8
  %cmp7 = icmp ne i8* %11, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  store i64 16717, i64* %in_buf_len, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 24
  %13 = load i8*, i8** %in_buf9, align 8
  %14 = load i64, i64* %in_buf_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %13, i64 noundef %14) #5
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 24
  %16 = load i8*, i8** %in_buf10, align 8
  call void @free(i8* noundef %16) #6
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 24
  store i8* null, i8** %in_buf11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 19
  %19 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_transform* %19, null
  br i1 %tobool, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end12
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 19
  %21 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform14, align 8
  call void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %21) #5
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 19
  %23 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform15, align 8
  %24 = bitcast %struct.mbedtls_ssl_transform* %23 to i8*
  call void @free(i8* noundef %24) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end12
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 16
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %tobool17 = icmp ne %struct.mbedtls_ssl_handshake_params* %26, null
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end16
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_free(%struct.mbedtls_ssl_context* noundef %27) #5
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 20
  %29 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  call void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %29) #5
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 15
  %31 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %31) #5
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 16
  %33 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake19, align 8
  %34 = bitcast %struct.mbedtls_ssl_handshake_params* %33 to i8*
  call void @free(i8* noundef %34) #6
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 20
  %36 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate20, align 8
  %37 = bitcast %struct.mbedtls_ssl_transform* %36 to i8*
  call void @free(i8* noundef %37) #6
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 15
  %39 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate21, align 8
  %40 = bitcast %struct.mbedtls_ssl_session* %39 to i8*
  call void @free(i8* noundef %40) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 14
  %42 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %tobool23 = icmp ne %struct.mbedtls_ssl_session* %42, null
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end22
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 14
  %44 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session25, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %44) #5
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 14
  %46 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session26, align 8
  %47 = bitcast %struct.mbedtls_ssl_session* %46 to i8*
  call void @free(i8* noundef %47) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 56
  %49 = load i8*, i8** %hostname, align 8
  %cmp28 = icmp ne i8* %49, null
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end27
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 56
  %51 = load i8*, i8** %hostname30, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 56
  %53 = load i8*, i8** %hostname31, align 8
  %call = call i64 @strlen(i8* noundef %53) #7
  call void @mbedtls_platform_zeroize(i8* noundef %51, i64 noundef %call) #5
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 56
  %55 = load i8*, i8** %hostname32, align 8
  call void @free(i8* noundef %55) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %56, i32 0, i32 58
  %57 = load i8*, i8** %cli_id, align 8
  call void @free(i8* noundef %57) #6
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %58, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4059, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #5
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %60 = bitcast %struct.mbedtls_ssl_context* %59 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %60, i64 noundef 504) #5
  br label %return

return:                                           ; preds = %if.end33, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_config* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 392) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %endpoint, i32 noundef %transport, i32 noundef %preset) #0 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  %endpoint.addr = alloca i32, align 4
  %transport.addr = alloca i32, align 4
  %preset.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %dhm_p = alloca [256 x i8], align 16
  %dhm_g = alloca [1 x i8], align 1
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  store i32 %endpoint, i32* %endpoint.addr, align 4
  store i32 %transport, i32* %transport.addr, align 4
  store i32 %preset, i32* %preset.addr, align 4
  store i32 -110, i32* %ret, align 4
  %call = call i32 @ssl_check_no_sig_alg_duplication(i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @ssl_preset_suiteb_sig_algs, i64 0, i64 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0)) #5
  store i32 -110, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @ssl_check_no_sig_alg_duplication(i16* noundef getelementptr inbounds ([10 x i16], [10 x i16]* @ssl_preset_default_sig_algs, i64 0, i64 0)) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0)) #5
  store i32 -110, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @ssl_check_no_sig_alg_duplication(i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @ssl_tls12_preset_suiteb_sig_algs, i64 0, i64 0)) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0)) #5
  store i32 -110, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @ssl_check_no_sig_alg_duplication(i16* noundef getelementptr inbounds ([7 x i16], [7 x i16]* @ssl_tls12_preset_default_sig_algs, i64 0, i64 0)) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i64 0, i64 0)) #5
  store i32 -110, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %1 = load i32, i32* %endpoint.addr, align 4
  call void @mbedtls_ssl_conf_endpoint(%struct.mbedtls_ssl_config* noundef %0, i32 noundef %1) #5
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %3 = load i32, i32* %transport.addr, align 4
  call void @mbedtls_ssl_conf_transport(%struct.mbedtls_ssl_config* noundef %2, i32 noundef %3) #5
  %4 = load i32, i32* %endpoint.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end16
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %authmode = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 4
  store i8 2, i8* %authmode, align 2
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %session_tickets = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 11
  store i8 1, i8* %session_tickets, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end16
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 7
  store i8 1, i8* %encrypt_then_mac, align 1
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 8
  store i8 1, i8* %extended_ms, align 2
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_cookie_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 28
  store i32 (i8*, i8**, i8*, i8*, i64)* @ssl_cookie_write_dummy, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write, align 8
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %f_cookie_check = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 29
  store i32 (i8*, i8*, i64, i8*, i64)* @ssl_cookie_check_dummy, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check, align 8
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %anti_replay = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 9
  store i8 1, i8* %anti_replay, align 1
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %cert_req_ca_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 12
  store i8 1, i8* %cert_req_ca_list, align 2
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %respect_cli_pref = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 13
  store i8 0, i8* %respect_cli_pref, align 1
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %hs_timeout_min = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 50
  store i32 1000, i32* %hs_timeout_min, align 4
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %hs_timeout_max = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 51
  store i32 60000, i32* %hs_timeout_max, align 8
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %renego_max_records = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 52
  store i32 16, i32* %renego_max_records, align 4
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %renego_period = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %17, i32 0, i32 53
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 0
  %call19 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 2) #6
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %renego_period20 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 53
  %arraydecay21 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period20, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay21, i64 2
  %call22 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 255, i64 noundef 6) #6
  %19 = load i32, i32* %endpoint.addr, align 4
  %cmp23 = icmp eq i32 %19, 1
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end18
  %20 = bitcast [256 x i8]* %dhm_p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @__const.mbedtls_ssl_config_defaults.dhm_p, i32 0, i32 0), i64 256, i1 false)
  %21 = bitcast [1 x i8]* %dhm_g to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @__const.mbedtls_ssl_config_defaults.dhm_g, i32 0, i32 0), i64 1, i1 false)
  %22 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %dhm_p, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [1 x i8], [1 x i8]* %dhm_g, i64 0, i64 0
  %call27 = call i32 @mbedtls_ssl_conf_dh_param_bin(%struct.mbedtls_ssl_config* noundef %22, i8* noundef %arraydecay25, i64 noundef 256, i8* noundef %arraydecay26, i64 noundef 1) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then24
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end18
  %24 = load i32, i32* %transport.addr, align 4
  %cmp32 = icmp eq i32 %24, 1
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %25 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %25, i32 0, i32 1
  store i32 771, i32* %min_tls_version, align 4
  %26 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %26, i32 0, i32 0
  store i32 771, i32* %max_tls_version, align 8
  br label %if.end36

if.else:                                          ; preds = %if.end31
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %min_tls_version34 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %27, i32 0, i32 1
  store i32 771, i32* %min_tls_version34, align 4
  %28 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %max_tls_version35 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %28, i32 0, i32 0
  store i32 771, i32* %max_tls_version35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %29 = load i32, i32* %preset.addr, align 4
  switch i32 %29, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end36
  %30 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %ciphersuite_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %30, i32 0, i32 14
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ssl_preset_suiteb_ciphersuites, i64 0, i64 0), i32** %ciphersuite_list, align 8
  %31 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %cert_profile = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %31, i32 0, i32 34
  store %struct.mbedtls_x509_crt_profile* @mbedtls_x509_crt_profile_suiteb, %struct.mbedtls_x509_crt_profile** %cert_profile, align 8
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %call37 = call i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %32) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %sw.bb
  %33 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_algs = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %33, i32 0, i32 39
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @ssl_tls12_preset_suiteb_sig_algs, i64 0, i64 0), i16** %sig_algs, align 8
  br label %if.end42

if.else40:                                        ; preds = %sw.bb
  %34 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_algs41 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %34, i32 0, i32 39
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @ssl_preset_suiteb_sig_algs, i64 0, i64 0), i16** %sig_algs41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %35 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %curve_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %35, i32 0, i32 40
  store i32* null, i32** %curve_list, align 8
  %36 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %group_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %36, i32 0, i32 41
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @ssl_preset_suiteb_groups, i64 0, i64 0), i16** %group_list, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  %call43 = call i32* @mbedtls_ssl_list_ciphersuites() #5
  %37 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %ciphersuite_list44 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %37, i32 0, i32 14
  store i32* %call43, i32** %ciphersuite_list44, align 8
  %38 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %cert_profile45 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %38, i32 0, i32 34
  store %struct.mbedtls_x509_crt_profile* @mbedtls_x509_crt_profile_default, %struct.mbedtls_x509_crt_profile** %cert_profile45, align 8
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %call46 = call i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %39) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %sw.default
  %40 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_algs49 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %40, i32 0, i32 39
  store i16* getelementptr inbounds ([7 x i16], [7 x i16]* @ssl_tls12_preset_default_sig_algs, i64 0, i64 0), i16** %sig_algs49, align 8
  br label %if.end52

if.else50:                                        ; preds = %sw.default
  %41 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %sig_algs51 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %41, i32 0, i32 39
  store i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ssl_preset_default_sig_algs, i64 0, i64 0), i16** %sig_algs51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  %42 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %curve_list53 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %42, i32 0, i32 40
  store i32* null, i32** %curve_list53, align 8
  %43 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %group_list54 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %43, i32 0, i32 41
  store i16* getelementptr inbounds ([9 x i16], [9 x i16]* @ssl_preset_default_groups, i64 0, i64 0), i16** %group_list54, align 8
  %44 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_min_bitlen = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %44, i32 0, i32 55
  store i32 1024, i32* %dhm_min_bitlen, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end52, %if.end42
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then29, %if.then14, %if.then9, %if.then4, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_no_sig_alg_duplication(i16* noundef %sig_algs) #0 {
entry:
  %sig_algs.addr = alloca i16*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ret = alloca i32, align 4
  store i16* %sig_algs, i16** %sig_algs.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i16*, i16** %sig_algs.addr, align 8
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %1
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i64, i64* %j, align 8
  %4 = load i64, i64* %i, align 8
  %cmp3 = icmp ult i64 %3, %4
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %5 = load i16*, i16** %sig_algs.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 %6
  %7 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16*, i16** %sig_algs.addr, align 8
  %9 = load i64, i64* %j, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %8, i64 %9
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %10 to i32
  %cmp10 = icmp ne i32 %conv7, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %for.inc

if.end:                                           ; preds = %for.body5
  %11 = load i16*, i16** %sig_algs.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %11, i64 %12
  %13 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %13 to i32
  %14 = load i64, i64* %j, align 8
  %15 = load i64, i64* %i, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv13, i64 noundef %14, i64 noundef %15) #5
  store i32 -1, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %16 = load i64, i64* %j, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %inc15 = add i64 %17, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end16:                                        ; preds = %for.cond
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cookie_write_dummy(i8* noundef %ctx, i8** noundef %p, i8* noundef %end, i8* noundef %cli_id, i64 noundef %cli_id_len) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %3 = load i8*, i8** %cli_id.addr, align 8
  %4 = load i64, i64* %cli_id_len.addr, align 8
  ret i32 -28800
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cookie_check_dummy(i8* noundef %ctx, i8* noundef %cookie, i64 noundef %cookie_len, i8* noundef %cli_id, i64 noundef %cli_id_len) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %cookie.addr = alloca i8*, align 8
  %cookie_len.addr = alloca i64, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %cookie, i8** %cookie.addr, align 8
  store i64 %cookie_len, i64* %cookie_len.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = load i8*, i8** %cookie.addr, align 8
  %2 = load i64, i64* %cookie_len.addr, align 8
  %3 = load i8*, i8** %cli_id.addr, align 8
  %4 = load i64, i64* %cli_id_len.addr, align 8
  ret i32 -28800
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32* @mbedtls_ssl_list_ciphersuites() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #0 {
entry:
  %conf.addr = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_config* %conf, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %0 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_P = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %0, i32 0, i32 42
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_P) #5
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %dhm_G = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 43
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %dhm_G) #5
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 44
  %3 = load i8*, i8** %psk, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk1 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 44
  %5 = load i8*, i8** %psk1, align 8
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 45
  %7 = load i64, i64* %psk_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %7) #5
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk2 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 44
  %9 = load i8*, i8** %psk2, align 8
  call void @free(i8* noundef %9) #6
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk3 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 44
  store i8* null, i8** %psk3, align 8
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_len4 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 45
  store i64 0, i64* %psk_len4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %12, i32 0, i32 46
  %13 = load i8*, i8** %psk_identity, align 8
  %cmp5 = icmp ne i8* %13, null
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 46
  %15 = load i8*, i8** %psk_identity7, align 8
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 47
  %17 = load i64, i64* %psk_identity_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %15, i64 noundef %17) #5
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity8 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 46
  %19 = load i8*, i8** %psk_identity8, align 8
  call void @free(i8* noundef %19) #6
  %20 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity9 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %20, i32 0, i32 46
  store i8* null, i8** %psk_identity9, align 8
  %21 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %psk_identity_len10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %21, i32 0, i32 47
  store i64 0, i64* %psk_identity_len10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  %22 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %key_cert = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %22, i32 0, i32 35
  %23 = load %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_ssl_key_cert** %key_cert, align 8
  call void @ssl_key_cert_free(%struct.mbedtls_ssl_key_cert* noundef %23) #5
  %24 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf.addr, align 8
  %25 = bitcast %struct.mbedtls_ssl_config* %24 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %25, i64 noundef 392) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mbedtls_ssl_sig_from_pk(%struct.mbedtls_pk_context* noundef %pk) #0 {
entry:
  %retval = alloca i8, align 1
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %call = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %0, i32 noundef 1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %call1 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %1, i32 noundef 4) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 3, i8* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %2 = load i8, i8* %retval, align 1
  ret i8 %2
}

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %type) #0 {
entry:
  %retval = alloca i8, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry, %entry
  store i8 3, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i8, i8* %retval, align 1
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i8, align 1
  store i8 %sig, i8* %sig.addr, align 1
  %0 = load i8, i8* %sig.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %hash) #0 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca i8, align 1
  store i8 %hash, i8* %hash.addr, align 1
  %0 = load i8, i8* %hash.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 6, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef %md) #0 {
entry:
  %retval = alloca i8, align 1
  %md.addr = alloca i32, align 4
  store i32 %md, i32* %md.addr, align 4
  %0 = load i32, i32* %md.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8 2, i8* %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8 3, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8 4, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8 5, i8* %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8 6, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, i8* %retval, align 1
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_curve_tls_id(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %tls_id) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %tls_id.addr = alloca i16, align 2
  %group_list = alloca i16*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i16 %tls_id, i16* %tls_id.addr, align 2
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i8* @mbedtls_ssl_get_groups(%struct.mbedtls_ssl_context* noundef %0) #5
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %group_list, align 8
  %2 = load i16*, i16** %group_list, align 8
  %cmp = icmp eq i16* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i16*, i16** %group_list, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %group_list, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = zext i16 %6 to i32
  %7 = load i16, i16* %tls_id.addr, align 2
  %conv4 = zext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %8 = load i16*, i16** %group_list, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr, i16** %group_list, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_curve(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %grp_id) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %grp_id.addr = alloca i32, align 4
  %tls_id = alloca i16, align 2
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  %0 = load i32, i32* %grp_id.addr, align 4
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %0) #5
  %tls_id1 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %call, i32 0, i32 1
  %1 = load i16, i16* %tls_id1, align 4
  store i16 %1, i16* %tls_id, align 2
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i16, i16* %tls_id, align 2
  %call2 = call i32 @mbedtls_ssl_check_curve_tls_id(%struct.mbedtls_ssl_context* noundef %2, i16 noundef zeroext %3) #5
  ret i32 %call2
}

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_cert_usage(%struct.mbedtls_x509_crt* noundef %cert, %struct.mbedtls_ssl_ciphersuite_t* noundef %ciphersuite, i32 noundef %cert_endpoint, i32* noundef %flags) #0 {
entry:
  %cert.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ciphersuite.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %cert_endpoint.addr = alloca i32, align 4
  %flags.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %usage = alloca i32, align 4
  %ext_oid = alloca i8*, align 8
  %ext_len = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %cert, %struct.mbedtls_x509_crt** %cert.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %ciphersuite, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite.addr, align 8
  store i32 %cert_endpoint, i32* %cert_endpoint.addr, align 4
  store i32* %flags, i32** %flags.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %usage, align 4
  %0 = load i32, i32* %cert_endpoint.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %1, i32 0, i32 4
  %2 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 7, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 4, label %sw.bb1
    i32 9, label %sw.bb2
    i32 10, label %sw.bb2
    i32 0, label %sw.bb3
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 8, label %sw.bb3
    i32 11, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  store i32 32, i32* %usage, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then, %if.then, %if.then
  store i32 128, i32* %usage, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then, %if.then
  store i32 8, i32* %usage, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then
  store i32 0, i32* %usage, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 128, i32* %usage, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert.addr, align 8
  %4 = load i32, i32* %usage, align 4
  %call = call i32 @mbedtls_x509_crt_check_key_usage(%struct.mbedtls_x509_crt* noundef %3, i32 noundef %4) #5
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32, i32* %5, align 4
  %or = or i32 %6, 2048
  store i32 %or, i32* %5, align 4
  store i32 -1, i32* %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %7 = load i32, i32* %cert_endpoint.addr, align 4
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %ext_oid, align 8
  store i64 8, i64* %ext_len, align 8
  br label %if.end12

if.else11:                                        ; preds = %if.end7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %ext_oid, align 8
  store i64 8, i64* %ext_len, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %8 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert.addr, align 8
  %9 = load i8*, i8** %ext_oid, align 8
  %10 = load i64, i64* %ext_len, align 8
  %call13 = call i32 @mbedtls_x509_crt_check_extended_key_usage(%struct.mbedtls_x509_crt* noundef %8, i8* noundef %9, i64 noundef %10) #5
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %11 = load i32*, i32** %flags.addr, align 8
  %12 = load i32, i32* %11, align 4
  %or17 = or i32 %12, 4096
  store i32 %or17, i32* %11, align 4
  store i32 -1, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %13 = load i32, i32* %ret, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_x509_crt_check_key_usage(%struct.mbedtls_x509_crt* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_x509_crt_check_extended_key_usage(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_handshake_transcript(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %md, i8* noundef %dst, i64 noundef %dst_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %md.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %md, i32* %md.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dst_len, i64* %dst_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i32, i32* %md.addr, align 4
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load i8*, i8** %dst.addr, align 8
  %3 = load i64, i64* %dst_len.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  %call = call i32 @ssl_get_handshake_transcript_sha384(%struct.mbedtls_ssl_context* noundef %1, i8* noundef %2, i64 noundef %3, i64* noundef %4) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  %7 = load i64, i64* %dst_len.addr, align 8
  %8 = load i64*, i64** %olen.addr, align 8
  %call2 = call i32 @ssl_get_handshake_transcript_sha256(%struct.mbedtls_ssl_context* noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %8) #5
  store i32 %call2, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 -27648, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_handshake_transcript_sha384(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %dst, i64 noundef %dst_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %dst.addr = alloca i8*, align 8
  %dst_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %sha512 = alloca %struct.mbedtls_sha512_context, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dst_len, i64* %dst_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i64, i64* %dst_len.addr, align 8
  %cmp = icmp ult i64 %0, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %sha512) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 42
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %sha512, %struct.mbedtls_sha512_context* noundef %fin_sha512) #5
  %3 = load i8*, i8** %dst.addr, align 8
  %call = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %sha512, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4834, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i64 0, i64 0), i32 noundef %5) #5
  br label %exit

if.end3:                                          ; preds = %if.end
  %6 = load i64*, i64** %olen.addr, align 8
  store i64 48, i64* %6, align 8
  br label %exit

exit:                                             ; preds = %if.end3, %if.then2
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %sha512) #5
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_handshake_transcript_sha256(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %dst, i64 noundef %dst_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %dst.addr = alloca i8*, align 8
  %dst_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %sha256 = alloca %struct.mbedtls_sha256_context, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dst_len, i64* %dst_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load i64, i64* %dst_len.addr, align 8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %sha256) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 41
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %sha256, %struct.mbedtls_sha256_context* noundef %fin_sha256) #5
  %3 = load i8*, i8** %dst.addr, align 8
  %call = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %sha256, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %5 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4865, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i64 0, i64 0), i32 noundef %5) #5
  br label %exit

if.end3:                                          ; preds = %if.end
  %6 = load i64*, i64** %olen.addr, align 8
  store i64 32, i64* %6, align 8
  br label %exit

exit:                                             ; preds = %if.end3, %if.then2
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %sha256) #5
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_sig_alg_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %supported_sig_algs_len = alloca i64, align 8
  %supported_sig_algs_end = alloca i8*, align 8
  %sig_alg = alloca i16, align 2
  %common_idx = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %supported_sig_algs_len, align 8
  store i32 0, i32* %common_idx, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %1, i8* noundef %2, i64 noundef 2) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4956, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.mbedtls_ssl_parse_sig_alg_ext, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %4, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %7 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i16
  %conv4 = zext i16 %conv3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = sext i32 %or to i64
  store i64 %conv5, i64* %supported_sig_algs_len, align 8
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr, i8** %p, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %received_sig_algs = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 16
  %arraydecay = getelementptr inbounds [20 x i16], [20 x i16]* %received_sig_algs, i64 0, i64 0
  %12 = bitcast i16* %arraydecay to i8*
  %call6 = call i8* @memset(i8* noundef %12, i32 noundef 0, i64 noundef 40) #6
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load i64, i64* %supported_sig_algs_len, align 8
  %call8 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %13, i8* noundef %14, i64 noundef %15) #5
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body7
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4963, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.mbedtls_ssl_parse_sig_alg_ext, i64 0, i64 0)) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %17, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %do.body7
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  %18 = load i8*, i8** %p, align 8
  %19 = load i64, i64* %supported_sig_algs_len, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr14, i8** %supported_sig_algs_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.then42, %do.end13
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %supported_sig_algs_end, align 8
  %cmp15 = icmp ult i8* %20, %21
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body17

do.body17:                                        ; preds = %while.body
  %22 = load i8*, i8** %p, align 8
  %23 = load i8*, i8** %supported_sig_algs_end, align 8
  %call18 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %22, i8* noundef %23, i64 noundef 2) #5
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body17
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4967, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.mbedtls_ssl_parse_sig_alg_ext, i64 0, i64 0)) #5
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %25, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %26 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %27 to i16
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 8
  %28 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %29 to i16
  %conv30 = zext i16 %conv29 to i32
  %or31 = or i32 %shl27, %conv30
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* %sig_alg, align 2
  %30 = load i8*, i8** %p, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr33, i8** %p, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %32 = load i16, i16* %sig_alg, align 2
  %conv34 = zext i16 %32 to i32
  %33 = load i16, i16* %sig_alg, align 2
  %call35 = call i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext %33) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4972, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv34, i8* noundef %call35) #5
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 4
  %35 = load i32, i32* %tls_version, align 4
  %cmp36 = icmp eq i32 %35, 771
  br i1 %cmp36, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %do.end23
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %37 = load i16, i16* %sig_alg, align 2
  %call38 = call i32 @mbedtls_ssl_sig_alg_is_supported(%struct.mbedtls_ssl_context* noundef %36, i16 noundef zeroext %37) #5
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %land.lhs.true39, label %if.then42

land.lhs.true39:                                  ; preds = %land.lhs.true
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i16, i16* %sig_alg, align 2
  %call40 = call i32 @mbedtls_ssl_sig_alg_is_offered(%struct.mbedtls_ssl_context* noundef %38, i16 noundef zeroext %39) #5
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %land.lhs.true39, %land.lhs.true
  br label %while.cond, !llvm.loop !17

if.end43:                                         ; preds = %land.lhs.true39, %do.end23
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %41 = load i16, i16* %sig_alg, align 2
  %call44 = call i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext %41) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %40, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4983, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call44) #5
  %42 = load i32, i32* %common_idx, align 4
  %add = add i32 %42, 1
  %cmp45 = icmp ult i32 %add, 20
  br i1 %cmp45, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end43
  %43 = load i16, i16* %sig_alg, align 2
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 16
  %45 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake48, align 8
  %received_sig_algs49 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %45, i32 0, i32 16
  %46 = load i32, i32* %common_idx, align 4
  %idxprom = zext i32 %46 to i64
  %arrayidx50 = getelementptr inbounds [20 x i16], [20 x i16]* %received_sig_algs49, i64 0, i64 %idxprom
  store i16 %43, i16* %arrayidx50, align 2
  %47 = load i32, i32* %common_idx, align 4
  %add51 = add i32 %47, 1
  store i32 %add51, i32* %common_idx, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end43
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %48 = load i8*, i8** %p, align 8
  %49 = load i8*, i8** %end.addr, align 8
  %cmp53 = icmp ne i8* %48, %49
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %while.end
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %50, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4995, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0)) #5
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %51, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %while.end
  %52 = load i32, i32* %common_idx, align 4
  %cmp57 = icmp eq i32 %52, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5003, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0)) #5
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %54, i8 noundef zeroext 40, i32 noundef -28160) #5
  store i32 -28160, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 16
  %56 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake61, align 8
  %received_sig_algs62 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %56, i32 0, i32 16
  %57 = load i32, i32* %common_idx, align 4
  %idxprom63 = zext i32 %57 to i64
  %arrayidx64 = getelementptr inbounds [20 x i16], [20 x i16]* %received_sig_algs62, i64 0, i64 %idxprom63
  store i16 0, i16* %arrayidx64, align 2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.then59, %if.then55, %if.then21, %if.then11, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

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

declare dso_local void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext) #2

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
define internal i32 @mbedtls_ssl_sig_alg_is_offered(%struct.mbedtls_ssl_context* noundef %ssl, i16 noundef zeroext %proposed_sig_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %proposed_sig_alg.addr = alloca i16, align 2
  %sig_alg = alloca i16*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i16 %proposed_sig_alg, i16* %proposed_sig_alg.addr, align 2
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i8* @mbedtls_ssl_get_sig_algs(%struct.mbedtls_ssl_context* noundef %0) #5
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
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_derive_keys(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %tmp = alloca [64 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5488, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %6 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %6, i32 0, i32 3
  %7 = load i8, i8* %mac, align 1
  %conv = zext i8 %7 to i32
  %call = call i32 @ssl_set_handshake_prfs(%struct.mbedtls_ssl_handshake_params* noundef %5, i32 noundef %conv) #5
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5495, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 noundef %10) #5
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 15
  %15 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %15, i32 0, i32 8
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @ssl_compute_master(%struct.mbedtls_ssl_handshake_params* noundef %13, i8* noundef %arraydecay, %struct.mbedtls_ssl_context* noundef %16) #5
  store i32 %call5, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %17, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5505, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i32 noundef %19) #5
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake11, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 45
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %call13 = call i8* @memcpy(i8* noundef %arraydecay10, i8* noundef %arraydecay12, i64 noundef 64) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 16
  %24 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake14, align 8
  %randbytes15 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %24, i32 0, i32 45
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes15, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i64 32
  %call18 = call i8* @memcpy(i8* noundef %arraydecay16, i8* noundef %add.ptr, i64 noundef 32) #6
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 16
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake19, align 8
  %randbytes20 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 45
  %arraydecay21 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes20, i64 0, i64 0
  %add.ptr22 = getelementptr inbounds i8, i8* %arraydecay21, i64 32
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  %call24 = call i8* @memcpy(i8* noundef %add.ptr22, i8* noundef %arraydecay23, i64 noundef 32) #6
  %arraydecay25 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay25, i64 noundef 64) #5
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 20
  %28 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 15
  %30 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate26, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %30, i32 0, i32 4
  %31 = load i32, i32* %ciphersuite, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 15
  %33 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate27, align 8
  %master28 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %33, i32 0, i32 8
  %arraydecay29 = getelementptr inbounds [48 x i8], [48 x i8]* %master28, i64 0, i64 0
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 15
  %35 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate30, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %35, i32 0, i32 14
  %36 = load i32, i32* %encrypt_then_mac, align 4
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 16
  %38 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %tls_prf = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %38, i32 0, i32 15
  %39 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 16
  %41 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake32, align 8
  %randbytes33 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %41, i32 0, i32 45
  %arraydecay34 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes33, i64 0, i64 0
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 4
  %43 = load i32, i32* %tls_version, align 4
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 0
  %45 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %45, i32 0, i32 2
  %46 = load i8, i8* %endpoint, align 8
  %conv35 = zext i8 %46 to i32
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call36 = call i32 @ssl_tls12_populate_transform(%struct.mbedtls_ssl_transform* noundef %28, i32 noundef %31, i8* noundef %arraydecay29, i32 noundef %36, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* noundef %39, i8* noundef %arraydecay34, i32 noundef %43, i32 noundef %conv35, %struct.mbedtls_ssl_context* noundef %47) #5
  store i32 %call36, i32* %ret, align 4
  %48 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %48, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end9
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %50 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %49, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5534, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0), i32 noundef %50) #5
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end9
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 16
  %53 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake41, align 8
  %randbytes42 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %53, i32 0, i32 45
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes42, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay43, i64 noundef 64) #5
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %54, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5542, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then39, %if.then8, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_set_handshake_prfs(%struct.mbedtls_ssl_handshake_params* noundef %handshake, i32 noundef %hash) #0 {
entry:
  %handshake.addr = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %hash.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_handshake_params* %handshake, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load i32, i32* %hash.addr, align 4
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %tls_prf = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 15
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha384, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %calc_verify = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 13
  store void (%struct.mbedtls_ssl_context*, i8*, i64*)* @ssl_calc_verify_tls_sha384, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify, align 8
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %calc_finished = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 14
  store void (%struct.mbedtls_ssl_context*, i8*, i32)* @ssl_calc_finished_tls_sha384, void (%struct.mbedtls_ssl_context*, i8*, i32)** %calc_finished, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %hash.addr, align 4
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %tls_prf1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 15
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha256, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf1, align 8
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %calc_verify2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 13
  store void (%struct.mbedtls_ssl_context*, i8*, i64*)* @ssl_calc_verify_tls_sha256, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify2, align 8
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %calc_finished3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 14
  store void (%struct.mbedtls_ssl_context*, i8*, i32)* @ssl_calc_finished_tls_sha256, void (%struct.mbedtls_ssl_context*, i8*, i32)** %calc_finished3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_compute_master(%struct.mbedtls_ssl_handshake_params* noundef %handshake, i8* noundef %master, %struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %handshake.addr = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %master.addr = alloca i8*, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %master_secret_len = alloca i64, align 8
  %session_hash = alloca [48 x i8], align 16
  %lbl = alloca i8*, align 8
  %seed = alloca i8*, align 8
  %seed_len = alloca i64, align 8
  store %struct.mbedtls_ssl_handshake_params* %handshake, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  store i8* %master, i8** %master.addr, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 48, i64* %master_secret_len, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0), i8** %lbl, align 8
  %0 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %0, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  store i8* %arraydecay, i8** %seed, align 8
  store i64 64, i64* %seed_len, align 8
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 0
  %2 = load i8, i8* %resume, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5372, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %extended_ms = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 6
  %5 = load i8, i8* %extended_ms, align 4
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i64 0, i64 0), i8** %lbl, align 8
  %arraydecay6 = getelementptr inbounds [48 x i8], [48 x i8]* %session_hash, i64 0, i64 0
  store i8* %arraydecay6, i8** %seed, align 8
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %calc_verify = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 13
  %7 = load void (%struct.mbedtls_ssl_context*, i8*, i64*)*, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay7 = getelementptr inbounds [48 x i8], [48 x i8]* %session_hash, i64 0, i64 0
  call void %7(%struct.mbedtls_ssl_context* noundef %8, i8* noundef %arraydecay7, i64* noundef %seed_len) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay8 = getelementptr inbounds [48 x i8], [48 x i8]* %session_hash, i64 0, i64 0
  %10 = load i64, i64* %seed_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5384, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.105, i64 0, i64 0), i8* noundef %arraydecay8, i64 noundef %10) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %tls_prf = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 15
  %12 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 46
  %arraydecay10 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  %14 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %14, i32 0, i32 10
  %15 = load i64, i64* %pmslen, align 8
  %16 = load i8*, i8** %lbl, align 8
  %17 = load i8*, i8** %seed, align 8
  %18 = load i64, i64* %seed_len, align 8
  %19 = load i8*, i8** %master.addr, align 8
  %call = call i32 %12(i8* noundef %arraydecay10, i64 noundef %15, i8* noundef %16, i8* noundef %17, i64 noundef %18, i8* noundef %19, i64 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %20, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5467, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0), i32 noundef %22) #5
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %premaster15 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 46
  %arraydecay16 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster15, i64 0, i64 0
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %pmslen17 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 10
  %27 = load i64, i64* %pmslen17, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5473, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i64 0, i64 0), i8* noundef %arraydecay16, i64 noundef %27) #5
  %28 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %premaster18 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %28, i32 0, i32 46
  %arraydecay19 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster18, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay19, i64 noundef 1060) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_tls12_populate_transform(%struct.mbedtls_ssl_transform* noundef %transform, i32 noundef %ciphersuite, i8* noundef %master, i32 noundef %encrypt_then_mac, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* noundef %tls_prf, i8* noundef %randbytes, i32 noundef %tls_version, i32 noundef %endpoint, %struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  %ciphersuite.addr = alloca i32, align 4
  %master.addr = alloca i8*, align 8
  %encrypt_then_mac.addr = alloca i32, align 4
  %tls_prf.addr = alloca i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, align 8
  %randbytes.addr = alloca i8*, align 8
  %tls_version.addr = alloca i32, align 4
  %endpoint.addr = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %keyblk = alloca [256 x i8], align 16
  %key1 = alloca i8*, align 8
  %key2 = alloca i8*, align 8
  %mac_enc = alloca i8*, align 8
  %mac_dec = alloca i8*, align 8
  %mac_key_len = alloca i64, align 8
  %iv_copy_len = alloca i64, align 8
  %keylen = alloca i64, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ssl_mode = alloca i32, align 4
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %explicit_ivlen = alloca i64, align 8
  %block_size = alloca i64, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  store i32 %ciphersuite, i32* %ciphersuite.addr, align 4
  store i8* %master, i8** %master.addr, align 8
  store i32 %encrypt_then_mac, i32* %encrypt_then_mac.addr, align 4
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* %tls_prf, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  store i8* %randbytes, i8** %randbytes.addr, align 8
  store i32 %tls_version, i32* %tls_version.addr, align 4
  store i32 %endpoint, i32* %endpoint.addr, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %mac_key_len, align 8
  %0 = load i32, i32* %encrypt_then_mac.addr, align 4
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %encrypt_then_mac1 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %1, i32 0, i32 9
  store i32 %0, i32* %encrypt_then_mac1, align 8
  %2 = load i32, i32* %tls_version.addr, align 4
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version2 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %3, i32 0, i32 10
  store i32 %2, i32* %tls_version2, align 4
  %4 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %randbytes3 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %4, i32 0, i32 13
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes3, i64 0, i64 0
  %5 = load i8*, i8** %randbytes.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %5, i64 noundef 64) #6
  %6 = load i32, i32* %ciphersuite.addr, align 4
  %call4 = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %6) #5
  store %struct.mbedtls_ssl_ciphersuite_t* %call4, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %9 = load i32, i32* %ciphersuite.addr, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7202, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.127, i64 0, i64 0), i32 noundef %9) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %encrypt_then_mac.addr, align 4
  %11 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call5 = call i32 @mbedtls_ssl_get_mode_from_ciphersuite(i32 noundef %10, %struct.mbedtls_ssl_ciphersuite_t* noundef %11) #5
  store i32 %call5, i32* %ssl_mode, align 4
  %12 = load i32, i32* %ssl_mode, align 4
  %cmp6 = icmp eq i32 %12, 3
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %flags = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %13, i32 0, i32 5
  %14 = load i8, i8* %flags, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  %15 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 8, i32 16
  %conv8 = sext i32 %cond to i64
  %16 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %16, i32 0, i32 4
  store i64 %conv8, i64* %taglen, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %17 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cipher = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %17, i32 0, i32 2
  %18 = load i8, i8* %cipher, align 8
  %conv10 = zext i8 %18 to i32
  %call11 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %conv10) #5
  store %struct.mbedtls_cipher_info_t* %call11, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %19 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp12 = icmp eq %struct.mbedtls_cipher_info_t* %19, null
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %21 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %cipher15 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %21, i32 0, i32 2
  %22 = load i8, i8* %cipher15, align 8
  %conv16 = zext i8 %22 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7232, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.128, i64 0, i64 0), i32 noundef %conv16) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %23 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %23, i32 0, i32 3
  %24 = load i8, i8* %mac, align 1
  %conv18 = zext i8 %24 to i32
  %call19 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %conv18) #5
  store %struct.mbedtls_md_info_t* %call19, %struct.mbedtls_md_info_t** %md_info, align 8
  %25 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp20 = icmp eq %struct.mbedtls_md_info_t* %25, null
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %mac23 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %27, i32 0, i32 3
  %28 = load i8, i8* %mac23, align 1
  %conv24 = zext i8 %28 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7250, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i64 0, i64 0), i32 noundef %conv24) #5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end17
  %29 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %30 = load i8*, i8** %master.addr, align 8
  %31 = load i8*, i8** %randbytes.addr, align 8
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %call27 = call i32 %29(i8* noundef %30, i64 noundef 48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i64 0, i64 0), i8* noundef %31, i64 noundef 64, i8* noundef %arraydecay26, i64 noundef 256) #5
  store i32 %call27, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %32, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7281, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0), i32 noundef %34) #5
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end25
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %37 = load i32, i32* %ciphersuite.addr, align 4
  %call32 = call i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %37) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %36, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7286, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i64 0, i64 0), i8* noundef %call32) #5
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %39 = load i8*, i8** %master.addr, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7287, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i64 0, i64 0), i8* noundef %39, i64 noundef 48) #5
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %41 = load i8*, i8** %randbytes.addr, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %40, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7288, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i64 0, i64 0), i8* noundef %41, i64 noundef 64) #5
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7289, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i8* noundef %arraydecay33, i64 noundef 256) #5
  %43 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call34 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %43) #5
  %div = udiv i64 %call34, 8
  store i64 %div, i64* %keylen, align 8
  %44 = load i32, i32* %ssl_mode, align 4
  %cmp35 = icmp eq i32 %44, 3
  br i1 %cmp35, label %if.then37, label %if.else47

if.then37:                                        ; preds = %if.end31
  %45 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %45, i32 0, i32 3
  store i64 0, i64* %maclen, align 8
  store i64 0, i64* %mac_key_len, align 8
  %46 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %46, i32 0, i32 1
  store i64 12, i64* %ivlen, align 8
  %47 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call38 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %47) #5
  %cmp39 = icmp eq i32 %call38, 11
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then37
  %48 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %48, i32 0, i32 2
  store i64 12, i64* %fixed_ivlen, align 8
  br label %if.end43

if.else:                                          ; preds = %if.then37
  %49 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen42 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %49, i32 0, i32 2
  store i64 4, i64* %fixed_ivlen42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then41
  %50 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen44 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %50, i32 0, i32 1
  %51 = load i64, i64* %ivlen44, align 8
  %52 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen45 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %52, i32 0, i32 2
  %53 = load i64, i64* %fixed_ivlen45, align 8
  %sub = sub i64 %51, %53
  store i64 %sub, i64* %explicit_ivlen, align 8
  %54 = load i64, i64* %explicit_ivlen, align 8
  %55 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen46 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %55, i32 0, i32 4
  %56 = load i64, i64* %taglen46, align 8
  %add = add i64 %54, %56
  %57 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %57, i32 0, i32 0
  store i64 %add, i64* %minlen, align 8
  br label %if.end102

if.else47:                                        ; preds = %if.end31
  %58 = load i32, i32* %ssl_mode, align 4
  %cmp48 = icmp eq i32 %58, 0
  br i1 %cmp48, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else47
  %59 = load i32, i32* %ssl_mode, align 4
  %cmp50 = icmp eq i32 %59, 1
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %60 = load i32, i32* %ssl_mode, align 4
  %cmp53 = icmp eq i32 %60, 2
  br i1 %cmp53, label %if.then55, label %if.else100

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false, %if.else47
  %61 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %block_size56 = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %61, i32 0, i32 6
  %62 = load i32, i32* %block_size56, align 8
  %conv57 = zext i32 %62 to i64
  store i64 %conv57, i64* %block_size, align 8
  %63 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %63, i32 0, i32 7
  %64 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call58 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx_enc, %struct.mbedtls_md_info_t* noundef %64, i32 noundef 1) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then55
  %65 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %65, i32 0, i32 8
  %66 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call62 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx_dec, %struct.mbedtls_md_info_t* noundef %66, i32 noundef 1) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false61, %if.then55
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %68 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %67, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7354, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i32 noundef %68) #5
  br label %end

if.end66:                                         ; preds = %lor.lhs.false61
  %69 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call67 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %69) #5
  %conv68 = zext i8 %call67 to i64
  store i64 %conv68, i64* %mac_key_len, align 8
  %70 = load i64, i64* %mac_key_len, align 8
  %71 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen69 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %71, i32 0, i32 3
  store i64 %70, i64* %maclen69, align 8
  %72 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %72, i32 0, i32 4
  %73 = load i32, i32* %iv_size, align 8
  %conv70 = zext i32 %73 to i64
  %74 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen71 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %74, i32 0, i32 1
  store i64 %conv70, i64* %ivlen71, align 8
  %75 = load i32, i32* %ssl_mode, align 4
  %cmp72 = icmp eq i32 %75, 0
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %if.end66
  %76 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen75 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %76, i32 0, i32 3
  %77 = load i64, i64* %maclen75, align 8
  %78 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen76 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %78, i32 0, i32 0
  store i64 %77, i64* %minlen76, align 8
  br label %if.end99

if.else77:                                        ; preds = %if.end66
  %79 = load i32, i32* %ssl_mode, align 4
  %cmp78 = icmp eq i32 %79, 2
  br i1 %cmp78, label %if.then80, label %if.else84

if.then80:                                        ; preds = %if.else77
  %80 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen81 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %80, i32 0, i32 3
  %81 = load i64, i64* %maclen81, align 8
  %82 = load i64, i64* %block_size, align 8
  %add82 = add i64 %81, %82
  %83 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen83 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %83, i32 0, i32 0
  store i64 %add82, i64* %minlen83, align 8
  br label %if.end90

if.else84:                                        ; preds = %if.else77
  %84 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen85 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %84, i32 0, i32 3
  %85 = load i64, i64* %maclen85, align 8
  %86 = load i64, i64* %block_size, align 8
  %add86 = add i64 %85, %86
  %87 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen87 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %87, i32 0, i32 3
  %88 = load i64, i64* %maclen87, align 8
  %89 = load i64, i64* %block_size, align 8
  %rem = urem i64 %88, %89
  %sub88 = sub i64 %add86, %rem
  %90 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen89 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %90, i32 0, i32 0
  store i64 %sub88, i64* %minlen89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then80
  %91 = load i32, i32* %tls_version.addr, align 4
  %cmp91 = icmp eq i32 %91, 771
  br i1 %cmp91, label %if.then93, label %if.else97

if.then93:                                        ; preds = %if.end90
  %92 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen94 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %92, i32 0, i32 1
  %93 = load i64, i64* %ivlen94, align 8
  %94 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen95 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %94, i32 0, i32 0
  %95 = load i64, i64* %minlen95, align 8
  %add96 = add i64 %95, %93
  store i64 %add96, i64* %minlen95, align 8
  br label %if.end98

if.else97:                                        ; preds = %if.end90
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %96, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7401, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 -27648, i32* %ret, align 4
  br label %end

if.end98:                                         ; preds = %if.then93
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then74
  br label %if.end101

if.else100:                                       ; preds = %lor.lhs.false52
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7410, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %if.end99
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end43
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %99 = load i64, i64* %keylen, align 8
  %conv103 = trunc i64 %99 to i32
  %100 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %minlen104 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %100, i32 0, i32 0
  %101 = load i64, i64* %minlen104, align 8
  %conv105 = trunc i64 %101 to i32
  %102 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen106 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %102, i32 0, i32 1
  %103 = load i64, i64* %ivlen106, align 8
  %conv107 = trunc i64 %103 to i32
  %104 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen108 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %104, i32 0, i32 3
  %105 = load i64, i64* %maclen108, align 8
  %conv109 = trunc i64 %105 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %98, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7418, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.134, i64 0, i64 0), i32 noundef %conv103, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109) #5
  %106 = load i32, i32* %endpoint.addr, align 4
  %cmp110 = icmp eq i32 %106, 0
  br i1 %cmp110, label %if.then112, label %if.else133

if.then112:                                       ; preds = %if.end102
  %arraydecay113 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %107 = load i64, i64* %mac_key_len, align 8
  %mul = mul i64 %107, 2
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay113, i64 %mul
  store i8* %add.ptr, i8** %key1, align 8
  %arraydecay114 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %108 = load i64, i64* %mac_key_len, align 8
  %mul115 = mul i64 %108, 2
  %add.ptr116 = getelementptr inbounds i8, i8* %arraydecay114, i64 %mul115
  %109 = load i64, i64* %keylen, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr116, i64 %109
  store i8* %add.ptr117, i8** %key2, align 8
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  store i8* %arraydecay118, i8** %mac_enc, align 8
  %arraydecay119 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %110 = load i64, i64* %mac_key_len, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %arraydecay119, i64 %110
  store i8* %add.ptr120, i8** %mac_dec, align 8
  %111 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen121 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %111, i32 0, i32 2
  %112 = load i64, i64* %fixed_ivlen121, align 8
  %tobool122 = icmp ne i64 %112, 0
  br i1 %tobool122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then112
  %113 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen123 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %113, i32 0, i32 2
  %114 = load i64, i64* %fixed_ivlen123, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then112
  %115 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen124 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %115, i32 0, i32 1
  %116 = load i64, i64* %ivlen124, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond125 = phi i64 [ %114, %cond.true ], [ %116, %cond.false ]
  store i64 %cond125, i64* %iv_copy_len, align 8
  %117 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %117, i32 0, i32 5
  %arraydecay126 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc, i64 0, i64 0
  %118 = load i8*, i8** %key2, align 8
  %119 = load i64, i64* %keylen, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %118, i64 %119
  %120 = load i64, i64* %iv_copy_len, align 8
  %call128 = call i8* @memcpy(i8* noundef %arraydecay126, i8* noundef %add.ptr127, i64 noundef %120) #6
  %121 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %121, i32 0, i32 6
  %arraydecay129 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_dec, i64 0, i64 0
  %122 = load i8*, i8** %key2, align 8
  %123 = load i64, i64* %keylen, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %122, i64 %123
  %124 = load i64, i64* %iv_copy_len, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %add.ptr130, i64 %124
  %125 = load i64, i64* %iv_copy_len, align 8
  %call132 = call i8* @memcpy(i8* noundef %arraydecay129, i8* noundef %add.ptr131, i64 noundef %125) #6
  br label %if.end166

if.else133:                                       ; preds = %if.end102
  %126 = load i32, i32* %endpoint.addr, align 4
  %cmp134 = icmp eq i32 %126, 1
  br i1 %cmp134, label %if.then136, label %if.else164

if.then136:                                       ; preds = %if.else133
  %arraydecay137 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %127 = load i64, i64* %mac_key_len, align 8
  %mul138 = mul i64 %127, 2
  %add.ptr139 = getelementptr inbounds i8, i8* %arraydecay137, i64 %mul138
  %128 = load i64, i64* %keylen, align 8
  %add.ptr140 = getelementptr inbounds i8, i8* %add.ptr139, i64 %128
  store i8* %add.ptr140, i8** %key1, align 8
  %arraydecay141 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %129 = load i64, i64* %mac_key_len, align 8
  %mul142 = mul i64 %129, 2
  %add.ptr143 = getelementptr inbounds i8, i8* %arraydecay141, i64 %mul142
  store i8* %add.ptr143, i8** %key2, align 8
  %arraydecay144 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  %130 = load i64, i64* %mac_key_len, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %arraydecay144, i64 %130
  store i8* %add.ptr145, i8** %mac_enc, align 8
  %arraydecay146 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  store i8* %arraydecay146, i8** %mac_dec, align 8
  %131 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen147 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %131, i32 0, i32 2
  %132 = load i64, i64* %fixed_ivlen147, align 8
  %tobool148 = icmp ne i64 %132, 0
  br i1 %tobool148, label %cond.true149, label %cond.false151

cond.true149:                                     ; preds = %if.then136
  %133 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen150 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %133, i32 0, i32 2
  %134 = load i64, i64* %fixed_ivlen150, align 8
  br label %cond.end153

cond.false151:                                    ; preds = %if.then136
  %135 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen152 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %135, i32 0, i32 1
  %136 = load i64, i64* %ivlen152, align 8
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true149
  %cond154 = phi i64 [ %134, %cond.true149 ], [ %136, %cond.false151 ]
  store i64 %cond154, i64* %iv_copy_len, align 8
  %137 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_dec155 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %137, i32 0, i32 6
  %arraydecay156 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_dec155, i64 0, i64 0
  %138 = load i8*, i8** %key1, align 8
  %139 = load i64, i64* %keylen, align 8
  %add.ptr157 = getelementptr inbounds i8, i8* %138, i64 %139
  %140 = load i64, i64* %iv_copy_len, align 8
  %call158 = call i8* @memcpy(i8* noundef %arraydecay156, i8* noundef %add.ptr157, i64 noundef %140) #6
  %141 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc159 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %141, i32 0, i32 5
  %arraydecay160 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc159, i64 0, i64 0
  %142 = load i8*, i8** %key1, align 8
  %143 = load i64, i64* %keylen, align 8
  %add.ptr161 = getelementptr inbounds i8, i8* %142, i64 %143
  %144 = load i64, i64* %iv_copy_len, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %add.ptr161, i64 %144
  %145 = load i64, i64* %iv_copy_len, align 8
  %call163 = call i8* @memcpy(i8* noundef %arraydecay160, i8* noundef %add.ptr162, i64 noundef %145) #6
  br label %if.end165

if.else164:                                       ; preds = %if.else133
  %146 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %146, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7458, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 -27648, i32* %ret, align 4
  br label %end

if.end165:                                        ; preds = %cond.end153
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %cond.end
  %147 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp167 = icmp ne %struct.mbedtls_ssl_context* %147, null
  br i1 %cmp167, label %land.lhs.true, label %if.end175

land.lhs.true:                                    ; preds = %if.end166
  %148 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_export_keys = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %148, i32 0, i32 64
  %149 = load void (i8*, i32, i8*, i64, i8*, i8*, i32)*, void (i8*, i32, i8*, i64, i8*, i8*, i32)** %f_export_keys, align 8
  %cmp169 = icmp ne void (i8*, i32, i8*, i64, i8*, i8*, i32)* %149, null
  br i1 %cmp169, label %if.then171, label %if.end175

if.then171:                                       ; preds = %land.lhs.true
  %150 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_export_keys172 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %150, i32 0, i32 64
  %151 = load void (i8*, i32, i8*, i64, i8*, i8*, i32)*, void (i8*, i32, i8*, i64, i8*, i8*, i32)** %f_export_keys172, align 8
  %152 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_export_keys = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %152, i32 0, i32 65
  %153 = load i8*, i8** %p_export_keys, align 8
  %154 = load i8*, i8** %master.addr, align 8
  %155 = load i8*, i8** %randbytes.addr, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %155, i64 32
  %156 = load i8*, i8** %randbytes.addr, align 8
  %157 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %call174 = call i32 @tls_prf_get_type(i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* noundef %157) #5
  call void %151(i8* noundef %153, i32 noundef 0, i8* noundef %154, i64 noundef 48, i8* noundef %add.ptr173, i8* noundef %156, i32 noundef %call174) #5
  br label %if.end175

if.end175:                                        ; preds = %if.then171, %land.lhs.true, %if.end166
  %158 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %158, i32 0, i32 11
  %159 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call176 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc, %struct.mbedtls_cipher_info_t* noundef %159) #5
  store i32 %call176, i32* %ret, align 4
  %cmp177 = icmp ne i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end175
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %161 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %160, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7509, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i64 0, i64 0), i32 noundef %161) #5
  br label %end

if.end180:                                        ; preds = %if.end175
  %162 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %162, i32 0, i32 12
  %163 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call181 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec, %struct.mbedtls_cipher_info_t* noundef %163) #5
  store i32 %call181, i32* %ret, align 4
  %cmp182 = icmp ne i32 %call181, 0
  br i1 %cmp182, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end180
  %164 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %165 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %164, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7516, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i64 0, i64 0), i32 noundef %165) #5
  br label %end

if.end185:                                        ; preds = %if.end180
  %166 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc186 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %166, i32 0, i32 11
  %167 = load i8*, i8** %key1, align 8
  %168 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call187 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %168) #5
  %conv188 = trunc i64 %call187 to i32
  %call189 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc186, i8* noundef %167, i32 noundef %conv188, i32 noundef 1) #5
  store i32 %call189, i32* %ret, align 4
  %cmp190 = icmp ne i32 %call189, 0
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end185
  %169 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %170 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %169, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7524, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.136, i64 0, i64 0), i32 noundef %170) #5
  br label %end

if.end193:                                        ; preds = %if.end185
  %171 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec194 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %171, i32 0, i32 12
  %172 = load i8*, i8** %key2, align 8
  %173 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call195 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %173) #5
  %conv196 = trunc i64 %call195 to i32
  %call197 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec194, i8* noundef %172, i32 noundef %conv196, i32 noundef 0) #5
  store i32 %call197, i32* %ret, align 4
  %cmp198 = icmp ne i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end193
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %175 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %174, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7532, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.136, i64 0, i64 0), i32 noundef %175) #5
  br label %end

if.end201:                                        ; preds = %if.end193
  %176 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call202 = call i32 @mbedtls_cipher_info_get_mode(%struct.mbedtls_cipher_info_t* noundef %176) #5
  %cmp203 = icmp eq i32 %call202, 2
  br i1 %cmp203, label %if.then205, label %if.end218

if.then205:                                       ; preds = %if.end201
  %177 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc206 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %177, i32 0, i32 11
  %call207 = call i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc206, i32 noundef 4) #5
  store i32 %call207, i32* %ret, align 4
  %cmp208 = icmp ne i32 %call207, 0
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.then205
  %178 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %179 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %178, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7542, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i64 0, i64 0), i32 noundef %179) #5
  br label %end

if.end211:                                        ; preds = %if.then205
  %180 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec212 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %180, i32 0, i32 12
  %call213 = call i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec212, i32 noundef 4) #5
  store i32 %call213, i32* %ret, align 4
  %cmp214 = icmp ne i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end211
  %181 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %182 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %181, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7549, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i64 0, i64 0), i32 noundef %182) #5
  br label %end

if.end217:                                        ; preds = %if.end211
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.end201
  %183 = load i64, i64* %mac_key_len, align 8
  %cmp219 = icmp ne i64 %183, 0
  br i1 %cmp219, label %if.then221, label %if.end234

if.then221:                                       ; preds = %if.end218
  %184 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc222 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %184, i32 0, i32 7
  %185 = load i8*, i8** %mac_enc, align 8
  %186 = load i64, i64* %mac_key_len, align 8
  %call223 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx_enc222, i8* noundef %185, i64 noundef %186) #5
  store i32 %call223, i32* %ret, align 4
  %187 = load i32, i32* %ret, align 4
  %cmp224 = icmp ne i32 %187, 0
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.then221
  br label %end

if.end227:                                        ; preds = %if.then221
  %188 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec228 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %188, i32 0, i32 8
  %189 = load i8*, i8** %mac_dec, align 8
  %190 = load i64, i64* %mac_key_len, align 8
  %call229 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx_dec228, i8* noundef %189, i64 noundef %190) #5
  store i32 %call229, i32* %ret, align 4
  %191 = load i32, i32* %ret, align 4
  %cmp230 = icmp ne i32 %191, 0
  br i1 %cmp230, label %if.then232, label %if.end233

if.then232:                                       ; preds = %if.end227
  br label %end

if.end233:                                        ; preds = %if.end227
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end218
  %192 = load i8*, i8** %mac_dec, align 8
  %193 = load i8*, i8** %mac_enc, align 8
  br label %end

end:                                              ; preds = %if.end234, %if.then232, %if.then226, %if.then216, %if.then210, %if.then200, %if.then192, %if.then184, %if.then179, %if.else164, %if.else97, %if.then65
  %arraydecay235 = getelementptr inbounds [256 x i8], [256 x i8]* %keyblk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay235, i64 noundef 256) #5
  %194 = load i32, i32* %ret, align 4
  store i32 %194, i32* %retval, align 4
  br label %return

return:                                           ; preds = %end, %if.else100, %if.then30, %if.then22, %if.then14, %if.then
  %195 = load i32, i32* %retval, align 4
  ret i32 %195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_set_calc_verify_md(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %md) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %md.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %md, i32* %md.addr, align 4
  %0 = load i32, i32* %md.addr, align 4
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %calc_verify = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 13
  store void (%struct.mbedtls_ssl_context*, i8*, i64*)* @ssl_calc_verify_tls_sha384, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %calc_verify3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 13
  store void (%struct.mbedtls_ssl_context*, i8*, i64*)* @ssl_calc_verify_tls_sha256, void (%struct.mbedtls_ssl_context*, i8*, i64*)** %calc_verify3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_verify_tls_sha384(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %hash, i64* noundef %hlen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64*, align 8
  %sha512 = alloca %struct.mbedtls_sha512_context, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64* %hlen, i64** %hlen.addr, align 8
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %sha512) #5
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5650, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 42
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %sha512, %struct.mbedtls_sha512_context* noundef %fin_sha512) #5
  %3 = load i8*, i8** %hash.addr, align 8
  %call = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %sha512, i8* noundef %3) #5
  %4 = load i64*, i64** %hlen.addr, align 8
  store i64 48, i64* %4, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %hash.addr, align 8
  %7 = load i64*, i64** %hlen.addr, align 8
  %8 = load i64, i64* %7, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5657, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i64 0, i64 0), i8* noundef %6, i64 noundef %8) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5658, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0)) #5
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %sha512) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_verify_tls_sha256(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %hash, i64* noundef %hlen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hash.addr = alloca i8*, align 8
  %hlen.addr = alloca i64*, align 8
  %sha256 = alloca %struct.mbedtls_sha256_context, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64* %hlen, i64** %hlen.addr, align 8
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %sha256) #5
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5601, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 41
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %sha256, %struct.mbedtls_sha256_context* noundef %fin_sha256) #5
  %3 = load i8*, i8** %hash.addr, align 8
  %call = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %sha256, i8* noundef %3) #5
  %4 = load i64*, i64** %hlen.addr, align 8
  store i64 32, i64* %4, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i8*, i8** %hash.addr, align 8
  %7 = load i64*, i64** %hlen.addr, align 8
  %8 = load i64, i64* %7, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5608, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i64 0, i64 0), i8* noundef %6, i64 noundef %8) #5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5609, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0)) #5
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %sha256) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_psk_derive_premaster(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %key_ex) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %key_ex.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %psk = alloca i8*, align 8
  %psk_len = alloca i64, align 8
  %psk_ret = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %ret66 = alloca i32, align 4
  %zlen = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %key_ex, i32* %key_ex.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %premaster = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 46
  %arraydecay = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1060
  store i8* %add.ptr, i8** %end, align 8
  store i8* null, i8** %psk, align 8
  store i64 0, i64* %psk_len, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_get_psk(%struct.mbedtls_ssl_context* noundef %3, i8** noundef %psk, i64* noundef %psk_len) #5
  store i32 %call, i32* %psk_ret, align 4
  %4 = load i32, i32* %psk_ret, align 4
  %cmp = icmp eq i32 %4, -30208
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %key_ex.addr, align 4
  %cmp1 = icmp ne i32 %5, 6
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5687, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %7 = load i32, i32* %key_ex.addr, align 4
  %cmp4 = icmp eq i32 %7, 5
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %8 = load i8*, i8** %end, align 8
  %9 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp6 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then5
  %10 = load i64, i64* %psk_len, align 8
  %shr = lshr i64 %10, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %11 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %12 = load i64, i64* %psk_len, align 8
  %and9 = and i64 %12, 255
  %conv10 = trunc i64 %and9 to i8
  %13 = load i8*, i8** %p, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %14 = load i8*, i8** %p, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr12, i8** %p, align 8
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %p, align 8
  %cmp13 = icmp ult i8* %15, %16
  br i1 %cmp13, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %17 = load i8*, i8** %end, align 8
  %18 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast15 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %18 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %19 = load i64, i64* %psk_len, align 8
  %cmp18 = icmp ult i64 %sub.ptr.sub17, %19
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %if.end8
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false
  %20 = load i8*, i8** %p, align 8
  %21 = load i64, i64* %psk_len, align 8
  %call22 = call i8* @memset(i8* noundef %20, i32 noundef 0, i64 noundef %21) #6
  %22 = load i64, i64* %psk_len, align 8
  %23 = load i8*, i8** %p, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr23, i8** %p, align 8
  br label %if.end97

if.else:                                          ; preds = %if.end3
  %24 = load i32, i32* %key_ex.addr, align 4
  %cmp24 = icmp eq i32 %24, 7
  br i1 %cmp24, label %if.then26, label %if.else36

if.then26:                                        ; preds = %if.else
  %25 = load i8*, i8** %end, align 8
  %26 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast27 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %26 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp slt i64 %sub.ptr.sub29, 2
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then26
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then26
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  store i8 48, i8* %28, align 1
  %29 = load i8*, i8** %p, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %29, i64 48
  store i8* %add.ptr35, i8** %p, align 8
  br label %if.end96

if.else36:                                        ; preds = %if.else
  %30 = load i32, i32* %key_ex.addr, align 4
  %cmp37 = icmp eq i32 %30, 6
  br i1 %cmp37, label %if.then39, label %if.else62

if.then39:                                        ; preds = %if.else36
  store i32 -110, i32* %ret, align 4
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 16
  %32 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake40, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %32, i32 0, i32 19
  %33 = load i8*, i8** %p, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %p, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %35, i64 2
  %sub.ptr.lhs.cast43 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i8* %add.ptr42 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 0
  %37 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %37, i32 0, i32 17
  %38 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 0
  %40 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf46, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %40, i32 0, i32 18
  %41 = load i8*, i8** %p_rng, align 8
  %call47 = call i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef %dhm_ctx, i8* noundef %add.ptr41, i64 noundef %sub.ptr.sub45, i64* noundef %len, i32 (i8*, i8*, i64)* noundef %38, i8* noundef %41) #5
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then39
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %43 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5743, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0), i32 noundef %43) #5
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.then39
  %45 = load i64, i64* %len, align 8
  %shr52 = lshr i64 %45, 8
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %46 = load i8*, i8** %p, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %conv54, i8* %arrayidx55, align 1
  %47 = load i64, i64* %len, align 8
  %and56 = and i64 %47, 255
  %conv57 = trunc i64 %and56 to i8
  %48 = load i8*, i8** %p, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv57, i8* %arrayidx58, align 1
  %49 = load i64, i64* %len, align 8
  %add = add i64 2, %49
  %50 = load i8*, i8** %p, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %50, i64 %add
  store i8* %add.ptr59, i8** %p, align 8
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 16
  %53 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake60, align 8
  %dhm_ctx61 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %53, i32 0, i32 19
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, %struct.mbedtls_dhm_context* %dhm_ctx61, i32 0, i32 5
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %51, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5749, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), %struct.mbedtls_mpi* noundef %K) #5
  br label %if.end95

if.else62:                                        ; preds = %if.else36
  %54 = load i32, i32* %key_ex.addr, align 4
  %cmp63 = icmp eq i32 %54, 8
  br i1 %cmp63, label %if.then65, label %if.else93

if.then65:                                        ; preds = %if.else62
  store i32 -110, i32* %ret66, align 4
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake67 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 16
  %56 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake67, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %56, i32 0, i32 20
  %57 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8*, i8** %end, align 8
  %59 = load i8*, i8** %p, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %59, i64 2
  %sub.ptr.lhs.cast70 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast71 = ptrtoint i8* %add.ptr69 to i64
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 0
  %61 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf73, align 8
  %f_rng74 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %61, i32 0, i32 17
  %62 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng74, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf75 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 0
  %64 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf75, align 8
  %p_rng76 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %64, i32 0, i32 18
  %65 = load i8*, i8** %p_rng76, align 8
  %call77 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx, i64* noundef %zlen, i8* noundef %add.ptr68, i64 noundef %sub.ptr.sub72, i32 (i8*, i8*, i64)* noundef %62, i8* noundef %65) #5
  store i32 %call77, i32* %ret66, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.then65
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %67 = load i32, i32* %ret66, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %66, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5763, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0), i32 noundef %67) #5
  %68 = load i32, i32* %ret66, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.then65
  %69 = load i64, i64* %zlen, align 8
  %shr82 = lshr i64 %69, 8
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %70 = load i8*, i8** %p, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %conv84, i8* %arrayidx85, align 1
  %71 = load i64, i64* %zlen, align 8
  %and86 = and i64 %71, 255
  %conv87 = trunc i64 %and86 to i8
  %72 = load i8*, i8** %p, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %conv87, i8* %arrayidx88, align 1
  %73 = load i64, i64* %zlen, align 8
  %add89 = add i64 2, %73
  %74 = load i8*, i8** %p, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %74, i64 %add89
  store i8* %add.ptr90, i8** %p, align 8
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake91 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 16
  %77 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake91, align 8
  %ecdh_ctx92 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %77, i32 0, i32 20
  call void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5771, %struct.mbedtls_ecdh_context* noundef %ecdh_ctx92, i32 noundef 2) #5
  br label %if.end94

if.else93:                                        ; preds = %if.else62
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %78, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5776, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.end81
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end51
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end33
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end21
  %79 = load i8*, i8** %end, align 8
  %80 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast98 = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast99 = ptrtoint i8* %80 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %cmp101 = icmp slt i64 %sub.ptr.sub100, 2
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end97
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end97
  %81 = load i64, i64* %psk_len, align 8
  %shr105 = lshr i64 %81, 8
  %and106 = and i64 %shr105, 255
  %conv107 = trunc i64 %and106 to i8
  %82 = load i8*, i8** %p, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %conv107, i8* %arrayidx108, align 1
  %83 = load i64, i64* %psk_len, align 8
  %and109 = and i64 %83, 255
  %conv110 = trunc i64 %and109 to i8
  %84 = load i8*, i8** %p, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %conv110, i8* %arrayidx111, align 1
  %85 = load i8*, i8** %p, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %add.ptr112, i8** %p, align 8
  %86 = load i8*, i8** %end, align 8
  %87 = load i8*, i8** %p, align 8
  %cmp113 = icmp ult i8* %86, %87
  br i1 %cmp113, label %if.then121, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.end104
  %88 = load i8*, i8** %end, align 8
  %89 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast116 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %89 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %90 = load i64, i64* %psk_len, align 8
  %cmp119 = icmp ult i64 %sub.ptr.sub118, %90
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %lor.lhs.false115, %if.end104
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %lor.lhs.false115
  %91 = load i8*, i8** %p, align 8
  %92 = load i8*, i8** %psk, align 8
  %93 = load i64, i64* %psk_len, align 8
  %call123 = call i8* @memcpy(i8* noundef %91, i8* noundef %92, i64 noundef %93) #6
  %94 = load i64, i64* %psk_len, align 8
  %95 = load i8*, i8** %p, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %add.ptr124, i8** %p, align 8
  %96 = load i8*, i8** %p, align 8
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake125 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %97, i32 0, i32 16
  %98 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake125, align 8
  %premaster126 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %98, i32 0, i32 46
  %arraydecay127 = getelementptr inbounds [1060 x i8], [1060 x i8]* %premaster126, i64 0, i64 0
  %sub.ptr.lhs.cast128 = ptrtoint i8* %96 to i64
  %sub.ptr.rhs.cast129 = ptrtoint i8* %arraydecay127 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake131 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %99, i32 0, i32 16
  %100 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake131, align 8
  %pmslen = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %100, i32 0, i32 10
  store i64 %sub.ptr.sub130, i64* %pmslen, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %if.then121, %if.then103, %if.else93, %if.then80, %if.then50, %if.then32, %if.then20, %if.then7, %if.then2
  %101 = load i32, i32* %retval, align 4
  ret i32 %101
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_get_psk(%struct.mbedtls_ssl_context* noundef %ssl, i8** noundef %psk, i64* noundef %psk_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %psk.addr = alloca i8**, align 8
  %psk_len.addr = alloca i64*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8** %psk, i8*** %psk.addr, align 8
  store i64* %psk_len, i64** %psk_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %psk1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 22
  %2 = load i8*, i8** %psk1, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %psk_len3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 23
  %5 = load i64, i64* %psk_len3, align 8
  %cmp4 = icmp ugt i64 %5, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %psk6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 22
  %8 = load i8*, i8** %psk6, align 8
  %9 = load i8**, i8*** %psk.addr, align 8
  store i8* %8, i8** %9, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake7, align 8
  %psk_len8 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 23
  %12 = load i64, i64* %psk_len8, align 8
  %13 = load i64*, i64** %psk_len.addr, align 8
  store i64 %12, i64* %13, align 8
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %psk9 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %15, i32 0, i32 44
  %16 = load i8*, i8** %psk9, align 8
  %cmp10 = icmp ne i8* %16, null
  br i1 %cmp10, label %land.lhs.true11, label %if.else20

land.lhs.true11:                                  ; preds = %if.else
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf12, align 8
  %psk_len13 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 45
  %19 = load i64, i64* %psk_len13, align 8
  %cmp14 = icmp ugt i64 %19, 0
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %land.lhs.true11
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf16, align 8
  %psk17 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %21, i32 0, i32 44
  %22 = load i8*, i8** %psk17, align 8
  %23 = load i8**, i8*** %psk.addr, align 8
  store i8* %22, i8** %23, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf18, align 8
  %psk_len19 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %25, i32 0, i32 45
  %26 = load i64, i64* %psk_len19, align 8
  %27 = load i64*, i64** %psk_len.addr, align 8
  store i64 %26, i64* %27, align 8
  br label %if.end

if.else20:                                        ; preds = %land.lhs.true11, %if.else
  %28 = load i8**, i8*** %psk.addr, align 8
  store i8* null, i8** %28, align 8
  %29 = load i64*, i64** %psk_len.addr, align 8
  store i64 0, i64* %29, align 8
  store i32 -30208, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.else20
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local i32 @mbedtls_dhm_calc_secret(%struct.mbedtls_dhm_context* noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.mbedtls_ecdh_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_resend_hello_request(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ratio = alloca i32, align 4
  %doublings = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %renego_max_records = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 52
  %2 = load i32, i32* %renego_max_records, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %hs_timeout_max = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 51
  %5 = load i32, i32* %hs_timeout_max, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %hs_timeout_min = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 50
  %8 = load i32, i32* %hs_timeout_min, align 4
  %div = udiv i32 %5, %8
  %add = add i32 %div, 1
  store i32 %add, i32* %ratio, align 4
  store i8 1, i8* %doublings, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i32, i32* %ratio, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8, i8* %doublings, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %doublings, align 1
  %11 = load i32, i32* %ratio, align 4
  %shr = lshr i32 %11, 1
  store i32 %shr, i32* %ratio, align 4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 3
  %13 = load i32, i32* %renego_records_seen, align 8
  %inc4 = add nsw i32 %13, 1
  store i32 %inc4, i32* %renego_records_seen, align 8
  %14 = load i8, i8* %doublings, align 1
  %conv = zext i8 %14 to i32
  %cmp5 = icmp sgt i32 %inc4, %conv
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %while.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5821, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_write_hello_request(%struct.mbedtls_ssl_context* noundef %16) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_certificate(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %crt = alloca %struct.mbedtls_x509_crt*, align 8
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -28800, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5883, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_uses_srv_cert(%struct.mbedtls_ssl_ciphersuite_t* noundef %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5887, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0)) #5
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 2
  %10 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 16
  %12 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %client_auth = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %12, i32 0, i32 43
  %13 = load i8, i8* %client_auth, align 8
  %conv5 = zext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then3
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5897, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0)) #5
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 1
  %16 = load i32, i32* %state9, align 8
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %state9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf13, align 8
  %endpoint14 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 2
  %19 = load i8, i8* %endpoint14, align 8
  %conv15 = zext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end12
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call19 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %20) #5
  %cmp20 = icmp eq %struct.mbedtls_x509_crt* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then18
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end12
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call25 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %22) #5
  call void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5915, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %call25) #5
  store i64 7, i64* %i, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call26 = call %struct.mbedtls_x509_crt* @mbedtls_ssl_own_cert(%struct.mbedtls_ssl_context* noundef %23) #5
  store %struct.mbedtls_x509_crt* %call26, %struct.mbedtls_x509_crt** %crt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end24
  %24 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %cmp27 = icmp ne %struct.mbedtls_x509_crt* %24, null
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %25, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  %26 = load i64, i64* %len, align 8
  store i64 %26, i64* %n, align 8
  %27 = load i64, i64* %n, align 8
  %28 = load i64, i64* %i, align 8
  %sub = sub i64 16381, %28
  %cmp29 = icmp ugt i64 %27, %sub
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %while.body
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i64, i64* %i, align 8
  %add = add i64 %30, 3
  %31 = load i64, i64* %n, align 8
  %add32 = add i64 %add, %31
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5936, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i64 noundef %add32, i64 noundef 16384) #5
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %32 = load i64, i64* %n, align 8
  %shr = lshr i64 %32, 16
  %and = and i64 %shr, 255
  %conv34 = trunc i64 %and to i8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 50
  %34 = load i8*, i8** %out_msg, align 8
  %35 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %conv34, i8* %arrayidx, align 1
  %36 = load i64, i64* %n, align 8
  %shr35 = lshr i64 %36, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 50
  %38 = load i8*, i8** %out_msg38, align 8
  %39 = load i64, i64* %i, align 8
  %add39 = add i64 %39, 1
  %arrayidx40 = getelementptr inbounds i8, i8* %38, i64 %add39
  store i8 %conv37, i8* %arrayidx40, align 1
  %40 = load i64, i64* %n, align 8
  %and41 = and i64 %40, 255
  %conv42 = trunc i64 %and41 to i8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg43 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 50
  %42 = load i8*, i8** %out_msg43, align 8
  %43 = load i64, i64* %i, align 8
  %add44 = add i64 %43, 2
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 %add44
  store i8 %conv42, i8* %arrayidx45, align 1
  %44 = load i64, i64* %i, align 8
  %add46 = add i64 %44, 3
  store i64 %add46, i64* %i, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 50
  %46 = load i8*, i8** %out_msg47, align 8
  %47 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %47
  %48 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %raw48 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %48, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw48, i32 0, i32 2
  %49 = load i8*, i8** %p, align 8
  %50 = load i64, i64* %n, align 8
  %call49 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %49, i64 noundef %50) #6
  %51 = load i64, i64* %n, align 8
  %52 = load i64, i64* %i, align 8
  %add50 = add i64 %52, %51
  store i64 %add50, i64* %i, align 8
  %53 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %53, i32 0, i32 29
  %54 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %54, %struct.mbedtls_x509_crt** %crt, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %55 = load i64, i64* %i, align 8
  %sub51 = sub i64 %55, 7
  %shr52 = lshr i64 %sub51, 16
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %56, i32 0, i32 50
  %57 = load i8*, i8** %out_msg55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %57, i64 4
  store i8 %conv54, i8* %arrayidx56, align 1
  %58 = load i64, i64* %i, align 8
  %sub57 = sub i64 %58, 7
  %shr58 = lshr i64 %sub57, 8
  %and59 = and i64 %shr58, 255
  %conv60 = trunc i64 %and59 to i8
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 50
  %60 = load i8*, i8** %out_msg61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %60, i64 5
  store i8 %conv60, i8* %arrayidx62, align 1
  %61 = load i64, i64* %i, align 8
  %sub63 = sub i64 %61, 7
  %and64 = and i64 %sub63, 255
  %conv65 = trunc i64 %and64 to i8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 50
  %63 = load i8*, i8** %out_msg66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %63, i64 6
  store i8 %conv65, i8* %arrayidx67, align 1
  %64 = load i64, i64* %i, align 8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 52
  store i64 %64, i64* %out_msglen, align 8
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 50
  %68 = load i8*, i8** %out_msg68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 11, i8* %arrayidx69, align 1
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state70 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 1
  %70 = load i32, i32* %state70, align 8
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, i32* %state70, align 8
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call72 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %71) #5
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %while.end
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %73 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %72, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5960, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 noundef %73) #5
  %74 = load i32, i32* %ret, align 4
  store i32 %74, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %while.end
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5964, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0)) #5
  %76 = load i32, i32* %ret, align 4
  store i32 %76, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then75, %if.then31, %if.then22, %if.then8, %if.then
  %77 = load i32, i32* %retval, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_ciphersuite_uses_srv_cert(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
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
    i32 7, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
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

declare dso_local void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i32 noundef 1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_certificate(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %crt_expected = alloca i32, align 4
  %authmode = alloca i32, align 4
  %rs_ctx = alloca i8*, align 8
  %chain = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_authmode = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 2
  %2 = load i8, i8* %sni_authmode, align 2
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %sni_authmode3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 2
  %5 = load i8, i8* %sni_authmode3, align 2
  %conv4 = zext i8 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %authmode5 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %7, i32 0, i32 4
  %8 = load i8, i8* %authmode5, align 2
  %conv6 = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv6, %cond.false ]
  store i32 %cond, i32* %authmode, align 4
  store i8* null, i8** %rs_ctx, align 8
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %chain, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6493, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0)) #5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load i32, i32* %authmode, align 4
  %call = call i32 @ssl_parse_certificate_coordinate(%struct.mbedtls_ssl_context* noundef %10, i32 noundef %11) #5
  store i32 %call, i32* %crt_expected, align 4
  %12 = load i32, i32* %crt_expected, align 4
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6498, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0)) #5
  br label %exit

if.end:                                           ; preds = %cond.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %16 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6516, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i32 noundef %16) #5
  br label %exit

if.end13:                                         ; preds = %if.end
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i32 @ssl_srv_check_client_no_crt_notification(%struct.mbedtls_ssl_context* noundef %17) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end13
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 15
  %19 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %19, i32 0, i32 10
  store i32 64, i32* %verify_result, align 8
  %20 = load i32, i32* %authmode, align 4
  %cmp18 = icmp ne i32 %20, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i32 -29824, i32* %ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  br label %exit

if.end22:                                         ; preds = %if.end13
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 15
  %22 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate23, align 8
  call void @ssl_clear_peer_cert(%struct.mbedtls_ssl_session* noundef %22) #5
  %call24 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #6
  %23 = bitcast i8* %call24 to %struct.mbedtls_x509_crt*
  store %struct.mbedtls_x509_crt* %23, %struct.mbedtls_x509_crt** %chain, align 8
  %24 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %cmp25 = icmp eq %struct.mbedtls_x509_crt* %24, null
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6540, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 noundef 616) #5
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call28 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %26, i8 noundef zeroext 2, i8 noundef zeroext 80) #5
  store i32 -32512, i32* %ret, align 4
  br label %exit

if.end29:                                         ; preds = %if.end22
  %27 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %27) #5
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %call30 = call i32 @ssl_parse_certificate_chain(%struct.mbedtls_ssl_context* noundef %28, %struct.mbedtls_x509_crt* noundef %29) #5
  store i32 %call30, i32* %ret, align 4
  %30 = load i32, i32* %ret, align 4
  %cmp31 = icmp ne i32 %30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  br label %exit

if.end34:                                         ; preds = %if.end29
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %32 = load i32, i32* %authmode, align 4
  %33 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %34 = load i8*, i8** %rs_ctx, align 8
  %call35 = call i32 @ssl_parse_certificate_verify(%struct.mbedtls_ssl_context* noundef %31, i32 noundef %32, %struct.mbedtls_x509_crt* noundef %33, i8* noundef %34) #5
  store i32 %call35, i32* %ret, align 4
  %35 = load i32, i32* %ret, align 4
  %cmp36 = icmp ne i32 %35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %exit

if.end39:                                         ; preds = %if.end34
  %36 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 15
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate40, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %38, i32 0, i32 9
  store %struct.mbedtls_x509_crt* %36, %struct.mbedtls_x509_crt** %peer_cert, align 8
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %chain, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %39, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6604, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0)) #5
  br label %exit

exit:                                             ; preds = %if.end39, %if.then38, %if.then33, %if.then27, %if.end21, %if.then12, %if.then
  %40 = load i32, i32* %ret, align 4
  %cmp41 = icmp eq i32 %40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %exit
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 1
  %42 = load i32, i32* %state, align 8
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %state, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %exit
  %43 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %cmp45 = icmp ne %struct.mbedtls_x509_crt* %43, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %44 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %44) #5
  %45 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain, align 8
  %46 = bitcast %struct.mbedtls_x509_crt* %45 to i8*
  call void @free(i8* noundef %46) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44
  %47 = load i32, i32* %ret, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_coordinate(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %authmode) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %authmode.addr = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %authmode, i32* %authmode.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %3 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_uses_srv_cert(%struct.mbedtls_ssl_ciphersuite_t* noundef %3) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 2
  %6 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %7, i32 0, i32 4
  %8 = load i8, i8* %key_exchange, align 2
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %9 = load i32, i32* %authmode.addr, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 15
  %11 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %11, i32 0, i32 10
  store i32 128, i32* %verify_result, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then7, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_srv_check_client_no_crt_notification(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  %2 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 38
  %4 = load i64, i64* %in_hslen, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %5) #5
  %add = add i64 3, %call
  %cmp2 = icmp eq i64 %4, %add
  br i1 %cmp2, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 31
  %7 = load i32, i32* %in_msgtype, align 8
  %cmp4 = icmp eq i32 %7, 22
  br i1 %cmp4, label %land.lhs.true6, label %if.end17

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 29
  %9 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 11
  br i1 %cmp8, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 29
  %12 = load i8*, i8** %in_msg11, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call12 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %13) #5
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call12
  %call13 = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0), i64 noundef 3) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true10
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6190, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.113, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_chain(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_x509_crt* noundef %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ret = alloca i32, align 4
  %crt_cnt = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %alert = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %crt_cnt, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 31
  %1 = load i32, i32* %in_msgtype, align 8
  %cmp = icmp ne i32 %1, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6036, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 10) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 29
  %5 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 11
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %7, i8 noundef zeroext 2, i8 noundef zeroext 10) #5
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 38
  %9 = load i64, i64* %in_hslen, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call6 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %10) #5
  %add = add i64 %call6, 3
  %add7 = add i64 %add, 3
  %cmp8 = icmp ult i64 %9, %add7
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6051, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %12, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end5
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call13 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %13) #5
  store i64 %call13, i64* %i, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 29
  %15 = load i8*, i8** %in_msg14, align 8
  %16 = load i64, i64* %i, align 8
  %add15 = add i64 %16, 1
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 %add15
  %17 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %shl = shl i32 %conv17, 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 29
  %19 = load i8*, i8** %in_msg18, align 8
  %20 = load i64, i64* %i, align 8
  %add19 = add i64 %20, 2
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %add19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %or = or i32 %shl, %conv21
  %conv22 = sext i32 %or to i64
  store i64 %conv22, i64* %n, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 29
  %23 = load i8*, i8** %in_msg23, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 38
  %27 = load i64, i64* %in_hslen28, align 8
  %28 = load i64, i64* %n, align 8
  %add29 = add i64 %28, 3
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call30 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %29) #5
  %add31 = add i64 %add29, %call30
  %cmp32 = icmp ne i64 %27, %add31
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %lor.lhs.false, %if.end12
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %30, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6067, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call35 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %31, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false
  %32 = load i64, i64* %i, align 8
  %add37 = add i64 %32, 3
  store i64 %add37, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end36
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 38
  %35 = load i64, i64* %in_hslen38, align 8
  %cmp39 = icmp ult i64 %33, %35
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i64, i64* %i, align 8
  %add41 = add i64 %36, 3
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 38
  %38 = load i64, i64* %in_hslen42, align 8
  %cmp43 = icmp ugt i64 %add41, %38
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %while.body
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %39, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6081, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call46 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %40, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %while.body
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 29
  %42 = load i8*, i8** %in_msg48, align 8
  %43 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %42, i64 %43
  %44 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %44 to i32
  %cmp51 = icmp ne i32 %conv50, 0
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end47
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %45, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6091, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call54 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %46, i8 noundef zeroext 2, i8 noundef zeroext 43) #5
  store i32 -31232, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end47
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 29
  %48 = load i8*, i8** %in_msg56, align 8
  %49 = load i64, i64* %i, align 8
  %add57 = add i64 %49, 1
  %arrayidx58 = getelementptr inbounds i8, i8* %48, i64 %add57
  %50 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %50 to i32
  %shl60 = shl i32 %conv59, 8
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 29
  %52 = load i8*, i8** %in_msg61, align 8
  %53 = load i64, i64* %i, align 8
  %add62 = add i64 %53, 2
  %arrayidx63 = getelementptr inbounds i8, i8* %52, i64 %add62
  %54 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %54 to i32
  %or65 = or i32 %shl60, %conv64
  %conv66 = zext i32 %or65 to i64
  store i64 %conv66, i64* %n, align 8
  %55 = load i64, i64* %i, align 8
  %add67 = add i64 %55, 3
  store i64 %add67, i64* %i, align 8
  %56 = load i64, i64* %n, align 8
  %cmp68 = icmp ult i64 %56, 128
  br i1 %cmp68, label %if.then75, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end55
  %57 = load i64, i64* %i, align 8
  %58 = load i64, i64* %n, align 8
  %add71 = add i64 %57, %58
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 38
  %60 = load i64, i64* %in_hslen72, align 8
  %cmp73 = icmp ugt i64 %add71, %60
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %lor.lhs.false70, %if.end55
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %61, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6105, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #5
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call76 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %62, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %lor.lhs.false70
  %63 = load i32, i32* %crt_cnt, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %crt_cnt, align 4
  %cmp78 = icmp eq i32 %63, 0
  br i1 %cmp78, label %land.lhs.true, label %if.end95

land.lhs.true:                                    ; preds = %if.end77
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 0
  %65 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %65, i32 0, i32 2
  %66 = load i8, i8* %endpoint, align 8
  %conv80 = zext i8 %66 to i32
  %cmp81 = icmp eq i32 %conv80, 0
  br i1 %cmp81, label %land.lhs.true83, label %if.end95

land.lhs.true83:                                  ; preds = %land.lhs.true
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 2
  %68 = load i32, i32* %renego_status, align 4
  %cmp84 = icmp eq i32 %68, 1
  br i1 %cmp84, label %if.then86, label %if.end95

if.then86:                                        ; preds = %land.lhs.true83
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %69, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6122, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.115, i64 0, i64 0)) #5
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg87 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 29
  %72 = load i8*, i8** %in_msg87, align 8
  %73 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %72, i64 %73
  %74 = load i64, i64* %n, align 8
  %call89 = call i32 @ssl_check_peer_crt_unchanged(%struct.mbedtls_ssl_context* noundef %70, i8* noundef %arrayidx88, i64 noundef %74) #5
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then86
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6127, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.116, i64 0, i64 0)) #5
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call93 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %76, i8 noundef zeroext 2, i8 noundef zeroext 49) #5
  store i32 -31232, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then86
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %77, i32 0, i32 14
  %78 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  call void @ssl_clear_peer_cert(%struct.mbedtls_ssl_session* noundef %78) #5
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %land.lhs.true83, %land.lhs.true, %if.end77
  %79 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg96 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 29
  %81 = load i8*, i8** %in_msg96, align 8
  %82 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %82
  %83 = load i64, i64* %n, align 8
  %call97 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %79, i8* noundef %add.ptr, i64 noundef %83) #5
  store i32 %call97, i32* %ret, align 4
  %84 = load i32, i32* %ret, align 4
  switch i32 %84, label %sw.default [
    i32 0, label %sw.bb
    i32 -9774, label %sw.bb
    i32 -10368, label %sw.bb98
    i32 -9600, label %sw.bb99
  ]

sw.bb:                                            ; preds = %if.end95, %if.end95
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end95
  store i8 80, i8* %alert, align 1
  br label %crt_parse_der_failed

sw.bb99:                                          ; preds = %if.end95
  store i8 43, i8* %alert, align 1
  br label %crt_parse_der_failed

sw.default:                                       ; preds = %if.end95
  store i8 42, i8* %alert, align 1
  br label %crt_parse_der_failed

crt_parse_der_failed:                             ; preds = %sw.default, %sw.bb99, %sw.bb98
  %85 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %86 = load i8, i8* %alert, align 1
  %call100 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %85, i8 noundef zeroext 2, i8 noundef zeroext %86) #5
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %88 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %87, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6167, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i64 0, i64 0), i32 noundef %88) #5
  %89 = load i32, i32* %ret, align 4
  store i32 %89, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %90 = load i64, i64* %n, align 8
  %91 = load i64, i64* %i, align 8
  %add101 = add i64 %91, %90
  store i64 %add101, i64* %i, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %93 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  call void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef %92, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6174, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %93) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %crt_parse_der_failed, %if.then92, %if.then75, %if.then53, %if.then45, %if.then34, %if.then10, %if.then3, %if.then
  %94 = load i32, i32* %retval, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_verify(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %authmode, %struct.mbedtls_x509_crt* noundef %chain, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %authmode.addr = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %have_ca_chain = alloca i32, align 4
  %f_vrfy = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy = alloca i8*, align 8
  %ca_chain = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl = alloca %struct.mbedtls_x509_crl*, align 8
  %pk = alloca %struct.mbedtls_pk_context*, align 8
  %alert = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %authmode, i32* %authmode.addr, align 4
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %ciphersuite_info1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 11
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info1, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %2, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  store i32 0, i32* %have_ca_chain, align 4
  %3 = load i32, i32* %authmode.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_vrfy2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 6
  %5 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy2, align 8
  %cmp3 = icmp ne i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %5, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6254, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.119, i64 0, i64 0)) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_vrfy5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 6
  %8 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy5, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %8, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_vrfy6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 7
  %10 = load i8*, i8** %p_vrfy6, align 8
  store i8* %10, i8** %p_vrfy, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6260, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.120, i64 0, i64 0)) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_vrfy7 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 24
  %14 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy7, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %14, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf8, align 8
  %p_vrfy9 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 25
  %17 = load i8*, i8** %p_vrfy9, align 8
  store i8* %17, i8** %p_vrfy, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 16
  %19 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake11, align 8
  %sni_ca_chain = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %19, i32 0, i32 26
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %sni_ca_chain, align 8
  %cmp12 = icmp ne %struct.mbedtls_x509_crt* %20, null
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end10
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake14, align 8
  %sni_ca_chain15 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 26
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %sni_ca_chain15, align 8
  store %struct.mbedtls_x509_crt* %23, %struct.mbedtls_x509_crt** %ca_chain, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 16
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake16, align 8
  %sni_ca_crl = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 27
  %26 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %sni_ca_crl, align 8
  store %struct.mbedtls_x509_crl* %26, %struct.mbedtls_x509_crl** %ca_crl, align 8
  br label %if.end22

if.else17:                                        ; preds = %if.end10
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 0
  %28 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf18, align 8
  %ca_chain19 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %28, i32 0, i32 36
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain19, align 8
  store %struct.mbedtls_x509_crt* %29, %struct.mbedtls_x509_crt** %ca_chain, align 8
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 0
  %31 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf20, align 8
  %ca_crl21 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %31, i32 0, i32 37
  %32 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl21, align 8
  store %struct.mbedtls_x509_crl* %32, %struct.mbedtls_x509_crl** %ca_crl, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then13
  %33 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain, align 8
  %cmp23 = icmp ne %struct.mbedtls_x509_crt* %33, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store i32 1, i32* %have_ca_chain, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %34 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca_chain, align 8
  %36 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl, align 8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 0
  %38 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf26, align 8
  %cert_profile = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %38, i32 0, i32 34
  %39 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %cert_profile, align 8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %hostname = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 56
  %41 = load i8*, i8** %hostname, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 15
  %43 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %43, i32 0, i32 10
  %44 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy, align 8
  %45 = load i8*, i8** %p_vrfy, align 8
  %46 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @mbedtls_x509_crt_verify_restartable(%struct.mbedtls_x509_crt* noundef %34, %struct.mbedtls_x509_crt* noundef %35, %struct.mbedtls_x509_crl* noundef %36, %struct.mbedtls_x509_crt_profile* noundef %39, i8* noundef %41, i32* noundef %verify_result, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %44, i8* noundef %45, i8* noundef %46) #5
  store i32 %call, i32* %ret, align 4
  %47 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %47, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %49 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6317, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i64 0, i64 0), i32 noundef %49) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %50 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %pk30 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %50, i32 0, i32 13
  store %struct.mbedtls_pk_context* %pk30, %struct.mbedtls_pk_context** %pk, align 8
  %51 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk, align 8
  %call31 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %51, i32 noundef 2) #5
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end29
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %53 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk, align 8
  %54 = bitcast %struct.mbedtls_pk_context* %53 to { %struct.mbedtls_pk_info_t*, i8* }*
  %55 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %54, i32 0, i32 0
  %56 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %55, align 8
  %57 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %54, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %call32 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %56, i8* %58) #5
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %call32, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %59 = load i32, i32* %id, align 8
  %call33 = call i32 @mbedtls_ssl_check_curve(%struct.mbedtls_ssl_context* noundef %52, i32 noundef %59) #5
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %land.lhs.true
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 15
  %61 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate36, align 8
  %verify_result37 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %61, i32 0, i32 10
  %62 = load i32, i32* %verify_result37, align 8
  %or = or i32 %62, 65536
  store i32 %or, i32* %verify_result37, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %63, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6341, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.122, i64 0, i64 0)) #5
  %64 = load i32, i32* %ret, align 4
  %cmp38 = icmp eq i32 %64, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then35
  store i32 -31232, i32* %ret, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %if.end29
  %65 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %66 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 0
  %68 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf42, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %68, i32 0, i32 2
  %69 = load i8, i8* %endpoint, align 8
  %tobool43 = icmp ne i8 %69, 0
  %lnot = xor i1 %tobool43, true
  %lnot.ext = zext i1 %lnot to i32
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate44 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 15
  %71 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate44, align 8
  %verify_result45 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %71, i32 0, i32 10
  %call46 = call i32 @mbedtls_ssl_check_cert_usage(%struct.mbedtls_x509_crt* noundef %65, %struct.mbedtls_ssl_ciphersuite_t* noundef %66, i32 noundef %lnot.ext, i32* noundef %verify_result45) #5
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end41
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %72, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6353, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.123, i64 0, i64 0)) #5
  %73 = load i32, i32* %ret, align 4
  %cmp49 = icmp eq i32 %73, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  store i32 -31232, i32* %ret, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end41
  %74 = load i32, i32* %authmode.addr, align 4
  %cmp53 = icmp eq i32 %74, 1
  br i1 %cmp53, label %land.lhs.true54, label %if.end58

land.lhs.true54:                                  ; preds = %if.end52
  %75 = load i32, i32* %ret, align 4
  %cmp55 = icmp eq i32 %75, -9984
  br i1 %cmp55, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true54
  %76 = load i32, i32* %ret, align 4
  %cmp56 = icmp eq i32 %76, -31232
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false, %land.lhs.true54
  store i32 0, i32* %ret, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %lor.lhs.false, %if.end52
  %77 = load i32, i32* %have_ca_chain, align 4
  %cmp59 = icmp eq i32 %77, 0
  br i1 %cmp59, label %land.lhs.true60, label %if.end63

land.lhs.true60:                                  ; preds = %if.end58
  %78 = load i32, i32* %authmode.addr, align 4
  %cmp61 = icmp eq i32 %78, 2
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true60
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %79, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6373, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i64 0, i64 0)) #5
  store i32 -30336, i32* %ret, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true60, %if.end58
  %80 = load i32, i32* %ret, align 4
  %cmp64 = icmp ne i32 %80, 0
  br i1 %cmp64, label %if.then65, label %if.end136

if.then65:                                        ; preds = %if.end63
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %81, i32 0, i32 15
  %82 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate66, align 8
  %verify_result67 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %82, i32 0, i32 10
  %83 = load i32, i32* %verify_result67, align 8
  %and = and i32 %83, 256
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.then65
  store i8 49, i8* %alert, align 1
  br label %if.end134

if.else70:                                        ; preds = %if.then65
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate71 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %84, i32 0, i32 15
  %85 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate71, align 8
  %verify_result72 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %85, i32 0, i32 10
  %86 = load i32, i32* %verify_result72, align 8
  %and73 = and i32 %86, 4
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else70
  store i8 42, i8* %alert, align 1
  br label %if.end133

if.else76:                                        ; preds = %if.else70
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate77 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %87, i32 0, i32 15
  %88 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate77, align 8
  %verify_result78 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %88, i32 0, i32 10
  %89 = load i32, i32* %verify_result78, align 8
  %and79 = and i32 %89, 2048
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else76
  store i8 43, i8* %alert, align 1
  br label %if.end132

if.else82:                                        ; preds = %if.else76
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %90, i32 0, i32 15
  %91 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate83, align 8
  %verify_result84 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %91, i32 0, i32 10
  %92 = load i32, i32* %verify_result84, align 8
  %and85 = and i32 %92, 4096
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.else82
  store i8 43, i8* %alert, align 1
  br label %if.end131

if.else88:                                        ; preds = %if.else82
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate89 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %93, i32 0, i32 15
  %94 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate89, align 8
  %verify_result90 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %94, i32 0, i32 10
  %95 = load i32, i32* %verify_result90, align 8
  %and91 = and i32 %95, 8192
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.else88
  store i8 43, i8* %alert, align 1
  br label %if.end130

if.else94:                                        ; preds = %if.else88
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate95 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 15
  %97 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate95, align 8
  %verify_result96 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %97, i32 0, i32 10
  %98 = load i32, i32* %verify_result96, align 8
  %and97 = and i32 %98, 32768
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else94
  store i8 43, i8* %alert, align 1
  br label %if.end129

if.else100:                                       ; preds = %if.else94
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate101 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %99, i32 0, i32 15
  %100 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate101, align 8
  %verify_result102 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %100, i32 0, i32 10
  %101 = load i32, i32* %verify_result102, align 8
  %and103 = and i32 %101, 65536
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.else100
  store i8 43, i8* %alert, align 1
  br label %if.end128

if.else106:                                       ; preds = %if.else100
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %102, i32 0, i32 15
  %103 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate107, align 8
  %verify_result108 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %103, i32 0, i32 10
  %104 = load i32, i32* %verify_result108, align 8
  %and109 = and i32 %104, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.else106
  store i8 45, i8* %alert, align 1
  br label %if.end127

if.else112:                                       ; preds = %if.else106
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate113 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %105, i32 0, i32 15
  %106 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate113, align 8
  %verify_result114 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %106, i32 0, i32 10
  %107 = load i32, i32* %verify_result114, align 8
  %and115 = and i32 %107, 2
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.else112
  store i8 44, i8* %alert, align 1
  br label %if.end126

if.else118:                                       ; preds = %if.else112
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate119 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %108, i32 0, i32 15
  %109 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate119, align 8
  %verify_result120 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %109, i32 0, i32 10
  %110 = load i32, i32* %verify_result120, align 8
  %and121 = and i32 %110, 8
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.else118
  store i8 48, i8* %alert, align 1
  br label %if.end125

if.else124:                                       ; preds = %if.else118
  store i8 46, i8* %alert, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.then123
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then117
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then111
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then105
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then99
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then93
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then87
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then81
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then75
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then69
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %112 = load i8, i8* %alert, align 1
  %call135 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %111, i8 noundef zeroext 2, i8 noundef zeroext %112) #5
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.end63
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate137 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %113, i32 0, i32 15
  %114 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate137, align 8
  %verify_result138 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %114, i32 0, i32 10
  %115 = load i32, i32* %verify_result138, align 8
  %cmp139 = icmp ne i32 %115, 0
  br i1 %cmp139, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.end136
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate141 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %117, i32 0, i32 15
  %118 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate141, align 8
  %verify_result142 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %118, i32 0, i32 10
  %119 = load i32, i32* %verify_result142, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %116, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6414, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i64 0, i64 0), i32 noundef %119) #5
  br label %if.end144

if.else143:                                       ; preds = %if.end136
  %120 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %120, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6418, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.126, i64 0, i64 0)) #5
  br label %if.end144

if.end144:                                        ; preds = %if.else143, %if.then140
  %121 = load i32, i32* %ret, align 4
  store i32 %121, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end144, %if.then
  %122 = load i32, i32* %retval, align 4
  ret i32 %122
}

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_handshake_wrapup_free_hs_transform(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6784, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_free(%struct.mbedtls_ssl_context* noundef %1) #5
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %4 = bitcast %struct.mbedtls_ssl_handshake_params* %3 to i8*
  call void @free(i8* noundef %4) #6
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  store %struct.mbedtls_ssl_handshake_params* null, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 19
  %7 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_transform* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 19
  %9 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform2, align 8
  call void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %9) #5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 19
  %11 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform3, align 8
  %12 = bitcast %struct.mbedtls_ssl_transform* %11 to i8*
  call void @free(i8* noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 20
  %14 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 19
  store %struct.mbedtls_ssl_transform* %14, %struct.mbedtls_ssl_transform** %transform4, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 20
  store %struct.mbedtls_ssl_transform* null, %struct.mbedtls_ssl_transform** %transform_negotiate5, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6804, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_handshake_wrapup(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %resume = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %resume1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 0
  %2 = load i8, i8* %resume1, align 8
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %resume, align 4
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6811, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0)) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 2
  %5 = load i32, i32* %renego_status, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 2
  store i32 2, i32* %renego_status3, align 4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 3
  store i32 0, i32* %renego_records_seen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 14
  %9 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_session* %9, null
  br i1 %tobool, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 14
  %11 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session5, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %11, i32 0, i32 14
  %12 = load i32, i32* %encrypt_then_mac, align 4
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 15
  %14 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %encrypt_then_mac6 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %14, i32 0, i32 14
  store i32 %12, i32* %encrypt_then_mac6, align 4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 14
  %16 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session7, align 8
  call void @mbedtls_ssl_session_free(%struct.mbedtls_ssl_session* noundef %16) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 14
  %18 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session8, align 8
  %19 = bitcast %struct.mbedtls_ssl_session* %18 to i8*
  call void @free(i8* noundef %19) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 15
  %21 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate10, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 14
  store %struct.mbedtls_ssl_session* %21, %struct.mbedtls_ssl_session** %session11, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 15
  store %struct.mbedtls_ssl_session* null, %struct.mbedtls_ssl_session** %session_negotiate12, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_set_cache = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %25, i32 0, i32 20
  %26 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_set_cache, align 8
  %cmp13 = icmp ne i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)* %26, null
  br i1 %cmp13, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end9
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 14
  %28 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session15, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %28, i32 0, i32 6
  %29 = load i64, i64* %id_len, align 8
  %cmp16 = icmp ne i64 %29, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end33

land.lhs.true18:                                  ; preds = %land.lhs.true
  %30 = load i32, i32* %resume, align 4
  %cmp19 = icmp eq i32 %30, 0
  br i1 %cmp19, label %if.then21, label %if.end33

if.then21:                                        ; preds = %land.lhs.true18
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf22, align 8
  %f_set_cache23 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %32, i32 0, i32 20
  %33 = load i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)** %f_set_cache23, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf24, align 8
  %p_cache = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %35, i32 0, i32 21
  %36 = load i8*, i8** %p_cache, align 8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 14
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session25, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %38, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 14
  %40 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session26, align 8
  %id_len27 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %40, i32 0, i32 6
  %41 = load i64, i64* %id_len27, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 14
  %43 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session28, align 8
  %call = call i32 %33(i8* noundef %36, i8* noundef %arraydecay, i64 noundef %41, %struct.mbedtls_ssl_session* noundef %43) #5
  %cmp29 = icmp ne i32 %call, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then21
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6849, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then21
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true18, %land.lhs.true, %if.end9
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 0
  %46 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf34, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %46, i32 0, i32 3
  %47 = load i8, i8* %transport, align 1
  %conv35 = zext i8 %47 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %land.lhs.true38, label %if.else

land.lhs.true38:                                  ; preds = %if.end33
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake39 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 16
  %49 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake39, align 8
  %flight = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %49, i32 0, i32 34
  %50 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight, align 8
  %cmp40 = icmp ne %struct.mbedtls_ssl_flight_item* %50, null
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true38
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %51, i32 noundef 0) #5
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6861, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true38, %if.end33
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_wrapup_free_hs_transform(%struct.mbedtls_ssl_context* noundef %53) #5
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then42
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 1
  %55 = load i32, i32* %state, align 8
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %state, align 8
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %56, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6869, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_finished(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %hash_len = alloca i32, align 4
  %i = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6876, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 20
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %1, %struct.mbedtls_ssl_transform* noundef %3) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %calc_finished = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 14
  %6 = load void (%struct.mbedtls_ssl_context*, i8*, i32)*, void (%struct.mbedtls_ssl_context*, i8*, i32)** %calc_finished, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 50
  %9 = load i8*, i8** %out_msg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 2
  %12 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %12 to i32
  call void %6(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %add.ptr, i32 noundef %conv) #5
  store i32 12, i32* %hash_len, align 4
  %13 = load i32, i32* %hash_len, align 4
  %conv1 = sext i32 %13 to i64
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 61
  store i64 %conv1, i64* %verify_data_len, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %own_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 62
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %own_verify_data, i64 0, i64 0
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 50
  %17 = load i8*, i8** %out_msg2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %17, i64 4
  %18 = load i32, i32* %hash_len, align 4
  %conv4 = sext i32 %18 to i64
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %add.ptr3, i64 noundef %conv4) #6
  %19 = load i32, i32* %hash_len, align 4
  %add = add nsw i32 4, %19
  %conv5 = sext i32 %add to i64
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 52
  store i64 %conv5, i64* %out_msglen, align 8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 50
  %23 = load i8*, i8** %out_msg6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  store i8 20, i8* %arrayidx, align 1
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 16
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake7, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 0
  %26 = load i8, i8* %resume, align 8
  %conv8 = zext i8 %26 to i32
  %cmp = icmp ne i32 %conv8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 0
  %28 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf10, align 8
  %endpoint11 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %28, i32 0, i32 2
  %29 = load i8, i8* %endpoint11, align 8
  %conv12 = zext i8 %29 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 1
  store i32 15, i32* %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf16, align 8
  %endpoint17 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %32, i32 0, i32 2
  %33 = load i8, i8* %endpoint17, align 8
  %conv18 = zext i8 %33 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 1
  store i32 10, i32* %state22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end
  br label %if.end25

if.else:                                          ; preds = %entry
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 1
  %36 = load i32, i32* %state24, align 8
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %state24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end23
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6921, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i64 0, i64 0)) #5
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf26, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 3
  %40 = load i8, i8* %transport, align 1
  %conv27 = zext i8 %40 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.else56

if.then30:                                        ; preds = %if.end25
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 18
  %42 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 16
  %44 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake31, align 8
  %alt_transform_out = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %44, i32 0, i32 38
  store %struct.mbedtls_ssl_transform* %42, %struct.mbedtls_ssl_transform** %alt_transform_out, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 16
  %46 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake32, align 8
  %alt_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %46, i32 0, i32 39
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %alt_out_ctr, i64 0, i64 0
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 54
  %arraydecay34 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call35 = call i8* @memcpy(i8* noundef %arraydecay33, i8* noundef %arraydecay34, i64 noundef 8) #6
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 54
  %arrayidx37 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr36, i64 0, i64 2
  %call38 = call i8* @memset(i8* noundef %arrayidx37, i32 noundef 0, i64 noundef 6) #6
  store i8 2, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then30
  %49 = load i8, i8* %i, align 1
  %conv39 = zext i8 %49 to i32
  %cmp40 = icmp sgt i32 %conv39, 0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 54
  %51 = load i8, i8* %i, align 1
  %conv43 = zext i8 %51 to i32
  %sub = sub nsw i32 %conv43, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx44 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr42, i64 0, i64 %idxprom
  %52 = load i8, i8* %arrayidx44, align 1
  %inc45 = add i8 %52, 1
  store i8 %inc45, i8* %arrayidx44, align 1
  %conv46 = zext i8 %inc45 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  br label %for.end

if.end50:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %53 = load i8, i8* %i, align 1
  %dec = add i8 %53, -1
  store i8 %dec, i8* %i, align 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then49, %for.cond
  %54 = load i8, i8* %i, align 1
  %conv51 = zext i8 %54 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6945, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0)) #5
  store i32 -27520, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %for.end
  br label %if.end60

if.else56:                                        ; preds = %if.end25
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %56, i32 0, i32 54
  %arraydecay58 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr57, i64 0, i64 0
  %call59 = call i8* @memset(i8* noundef %arraydecay58, i32 noundef 0, i64 noundef 8) #6
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.end55
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 20
  %58 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate61, align 8
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 18
  store %struct.mbedtls_ssl_transform* %58, %struct.mbedtls_ssl_transform** %transform_out62, align 8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 15
  %61 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 13
  store %struct.mbedtls_ssl_session* %61, %struct.mbedtls_ssl_session** %session_out, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf63 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 0
  %64 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf63, align 8
  %transport64 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %64, i32 0, i32 3
  %65 = load i8, i8* %transport64, align 1
  %conv65 = zext i8 %65 to i32
  %cmp66 = icmp eq i32 %conv65, 1
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end60
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef %66) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end60
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call70 = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %67) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %69 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %68, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6963, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 noundef %69) #5
  %70 = load i32, i32* %ret, align 4
  store i32 %70, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end69
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf75 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 0
  %72 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf75, align 8
  %transport76 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %72, i32 0, i32 3
  %73 = load i8, i8* %transport76, align 1
  %conv77 = zext i8 %73 to i32
  %cmp78 = icmp eq i32 %conv77, 1
  br i1 %cmp78, label %land.lhs.true, label %if.end84

land.lhs.true:                                    ; preds = %if.end74
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call80 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %74) #5
  store i32 %call80, i32* %ret, align 4
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %76 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6971, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i64 0, i64 0), i32 noundef %76) #5
  %77 = load i32, i32* %ret, align 4
  store i32 %77, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %land.lhs.true, %if.end74
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %78, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6976, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then83, %if.then73, %if.then54
  %79 = load i32, i32* %retval, align 4
  ret i32 %79
}

declare dso_local void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_transform* noundef) #2

declare dso_local void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef) #2

declare dso_local i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_finished(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %hash_len = alloca i32, align 4
  %buf = alloca [12 x i8], align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 12, i32* %hash_len, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6989, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0)) #5
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %calc_finished = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 14
  %3 = load void (%struct.mbedtls_ssl_context*, i8*, i32)*, void (%struct.mbedtls_ssl_context*, i8*, i32)** %calc_finished, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %6, i32 0, i32 2
  %7 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 1
  call void %3(%struct.mbedtls_ssl_context* noundef %4, i8* noundef %arraydecay, i32 noundef %xor) #5
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6995, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i32 noundef %10) #5
  br label %exit

if.end:                                           ; preds = %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 31
  %12 = load i32, i32* %in_msgtype, align 8
  %cmp2 = icmp ne i32 %12, 22
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %13, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7001, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0)) #5
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %14, i8 noundef zeroext 2, i8 noundef zeroext 10) #5
  store i32 -30464, i32* %ret, align 4
  br label %exit

if.end6:                                          ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 29
  %16 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %17 to i32
  %cmp8 = icmp ne i32 %conv7, 20
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %18, i8 noundef zeroext 2, i8 noundef zeroext 10) #5
  store i32 -30464, i32* %ret, align 4
  br label %exit

if.end12:                                         ; preds = %if.end6
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 38
  %20 = load i64, i64* %in_hslen, align 8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call13 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %21) #5
  %22 = load i32, i32* %hash_len, align 4
  %conv14 = zext i32 %22 to i64
  %add = add i64 %call13, %conv14
  %cmp15 = icmp ne i64 %20, %add
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %23, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7018, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0)) #5
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call18 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %24, i8 noundef zeroext 2, i8 noundef zeroext 50) #5
  store i32 -29440, i32* %ret, align 4
  br label %exit

if.end19:                                         ; preds = %if.end12
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 29
  %26 = load i8*, i8** %in_msg20, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %27) #5
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %call21
  %arraydecay22 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  %28 = load i32, i32* %hash_len, align 4
  %conv23 = zext i32 %28 to i64
  %call24 = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr, i8* noundef %arraydecay22, i64 noundef %conv23) #5
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end19
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7028, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0)) #5
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call28 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %30, i8 noundef zeroext 2, i8 noundef zeroext 51) #5
  store i32 -28160, i32* %ret, align 4
  br label %exit

if.end29:                                         ; preds = %if.end19
  %31 = load i32, i32* %hash_len, align 4
  %conv30 = zext i32 %31 to i64
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %verify_data_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 61
  store i64 %conv30, i64* %verify_data_len, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %peer_verify_data = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 63
  %arraydecay31 = getelementptr inbounds [12 x i8], [12 x i8]* %peer_verify_data, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  %34 = load i32, i32* %hash_len, align 4
  %conv33 = zext i32 %34 to i64
  %call34 = call i8* @memcpy(i8* noundef %arraydecay31, i8* noundef %arraydecay32, i64 noundef %conv33) #6
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 16
  %36 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake35, align 8
  %resume = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %36, i32 0, i32 0
  %37 = load i8, i8* %resume, align 8
  %conv36 = zext i8 %37 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end29
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf40 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf40, align 8
  %endpoint41 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 2
  %40 = load i8, i8* %endpoint41, align 8
  %conv42 = zext i8 %40 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then39
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 1
  store i32 10, i32* %state, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then39
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 0
  %43 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf47, align 8
  %endpoint48 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %43, i32 0, i32 2
  %44 = load i8, i8* %endpoint48, align 8
  %conv49 = zext i8 %44 to i32
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end46
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state53 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 1
  store i32 15, i32* %state53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end46
  br label %if.end56

if.else:                                          ; preds = %if.end29
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 1
  %47 = load i32, i32* %state55, align 8
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %state55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end54
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 0
  %49 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf57, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %49, i32 0, i32 3
  %50 = load i8, i8* %transport, align 1
  %conv58 = zext i8 %50 to i32
  %cmp59 = icmp eq i32 %conv58, 1
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end56
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef %51) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7059, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0)) #5
  br label %exit

exit:                                             ; preds = %if.end62, %if.then27, %if.then17, %if.then10, %if.then4, %if.then
  %arraydecay63 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  %53 = load i32, i32* %hash_len, align 4
  %conv64 = zext i32 %53 to i64
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay63, i64 noundef %conv64) #5
  %54 = load i32, i32* %ret, align 4
  ret i32 %54
}

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

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %hash, i64* noundef %hashlen, i8* noundef %data, i64 noundef %data_len, i32 noundef %md_alg) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hash.addr = alloca i8*, align 8
  %hashlen.addr = alloca i64*, align 8
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %md_alg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_md_context_t, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64* %hashlen, i64** %hashlen.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %0) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #5
  %conv = zext i8 %call1 to i64
  %2 = load i64*, i64** %hashlen.addr, align 8
  store i64 %conv, i64* %2, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7686, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i64 0, i64 0)) #5
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call2 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %ctx, %struct.mbedtls_md_info_t* noundef %4, i32 noundef 0) #5
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7699, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i32 noundef %6) #5
  br label %exit

if.end:                                           ; preds = %entry
  %call4 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %ctx) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7704, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i32 noundef %8) #5
  br label %exit

if.end8:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %randbytes = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 45
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %randbytes, i64 0, i64 0
  %call9 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %arraydecay, i64 noundef 64) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7709, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i32 noundef %12) #5
  br label %exit

if.end13:                                         ; preds = %if.end8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i64, i64* %data_len.addr, align 8
  %call14 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %13, i64 noundef %14) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %16 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7714, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i32 noundef %16) #5
  br label %exit

if.end18:                                         ; preds = %if.end13
  %17 = load i8*, i8** %hash.addr, align 8
  %call19 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %17) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 7719, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0), i32 noundef %19) #5
  br label %exit

if.end23:                                         ; preds = %if.end18
  br label %exit

exit:                                             ; preds = %if.end23, %if.then22, %if.then17, %if.then12, %if.then7, %if.then
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %ctx) #5
  %20 = load i32, i32* %ret, align 4
  %cmp24 = icmp ne i32 %20, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %exit
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call27 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %21, i8 noundef zeroext 2, i8 noundef zeroext 80) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %exit
  %22 = load i32, i32* %ret, align 4
  ret i32 %22
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef) #2

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #2

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %sig_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %sig_alg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %received_sig_algs = alloca i16*, align 8
  %hash_alg_received = alloca i32, align 4
  %sig_alg_received = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %sig_alg, i32* %sig_alg.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %received_sig_algs1 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 16
  %arraydecay = getelementptr inbounds [20 x i16], [20 x i16]* %received_sig_algs1, i64 0, i64 0
  store i16* %arraydecay, i16** %received_sig_algs, align 8
  %2 = load i32, i32* %sig_alg.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i16*, i16** %received_sig_algs, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i16*, i16** %received_sig_algs, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %8 to i32
  %shr = ashr i32 %conv6, 8
  store i32 %shr, i32* %hash_alg_received, align 4
  %9 = load i16*, i16** %received_sig_algs, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds i16, i16* %9, i64 %idxprom7
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %11 to i32
  %and = and i32 %conv9, 255
  store i32 %and, i32* %sig_alg_received, align 4
  %12 = load i32, i32* %sig_alg.addr, align 4
  %13 = load i32, i32* %sig_alg_received, align 4
  %cmp10 = icmp eq i32 %12, %13
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  %14 = load i32, i32* %hash_alg_received, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_validate_ciphersuite(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_ciphersuite_t* noundef %suite_info, i32 noundef %min_tls_version, i32 noundef %max_tls_version) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %suite_info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %min_tls_version.addr = alloca i32, align 4
  %max_tls_version.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %suite_info, %struct.mbedtls_ssl_ciphersuite_t** %suite_info.addr, align 8
  store i32 %min_tls_version, i32* %min_tls_version.addr, align 4
  store i32 %max_tls_version, i32* %max_tls_version.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info.addr, align 8
  %min_tls_version1 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %2, i32 0, i32 6
  %3 = load i16, i16* %min_tls_version1, align 4
  %conv = zext i16 %3 to i32
  %4 = load i32, i32* %max_tls_version.addr, align 4
  %cmp2 = icmp ugt i32 %conv, %4
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info.addr, align 8
  %max_tls_version4 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %5, i32 0, i32 7
  %6 = load i16, i16* %max_tls_version4, align 2
  %conv5 = zext i16 %6 to i32
  %7 = load i32, i32* %min_tls_version.addr, align 4
  %cmp6 = icmp ult i32 %conv5, %7
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %8 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %suite_info.addr, align 8
  %call = call i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef %8) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %call10 = call i32 @mbedtls_ssl_conf_has_static_psk(%struct.mbedtls_ssl_config* noundef %10) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then8, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef) #2

declare dso_local i32 @mbedtls_ssl_conf_has_static_psk(%struct.mbedtls_ssl_config* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_sig_alg_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %supported_sig_alg = alloca i8*, align 8
  %supported_sig_alg_len = alloca i64, align 8
  %sig_alg = alloca i16*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %supported_sig_alg_len, align 8
  %1 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8248, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i64 0, i64 0)) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %3, i8* noundef %4, i64 noundef 6) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 6
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  store i8* %6, i8** %supported_sig_alg, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i8* @mbedtls_ssl_get_sig_algs(%struct.mbedtls_ssl_context* noundef %7) #5
  %8 = bitcast i8* %call1 to i16*
  store i16* %8, i16** %sig_alg, align 8
  %9 = load i16*, i16** %sig_alg, align 8
  %cmp2 = icmp eq i16* %9, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  store i32 -24192, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %do.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %10 = load i16*, i16** %sig_alg, align 8
  %11 = load i16, i16* %10, align 2
  %conv = zext i16 %11 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i16*, i16** %sig_alg, align 8
  %14 = load i16, i16* %13, align 2
  %conv7 = zext i16 %14 to i32
  %15 = load i16*, i16** %sig_alg, align 8
  %16 = load i16, i16* %15, align 2
  %call8 = call i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext %16) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8270, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv7, i8* noundef %call8) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %18 = load i16*, i16** %sig_alg, align 8
  %19 = load i16, i16* %18, align 2
  %call9 = call i32 @mbedtls_ssl_sig_alg_is_supported(%struct.mbedtls_ssl_context* noundef %17, i16 noundef zeroext %19) #5
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.body
  br label %for.inc

if.end11:                                         ; preds = %for.body
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %end.addr, align 8
  %call13 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %20, i8* noundef %21, i64 noundef 2) #5
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body12
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %do.body12
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %22 = load i16*, i16** %sig_alg, align 8
  %23 = load i16, i16* %22, align 2
  %conv19 = zext i16 %23 to i32
  %shr = ashr i32 %conv19, 8
  %and = and i32 %shr, 255
  %conv20 = trunc i32 %and to i8
  %24 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %conv20, i8* %arrayidx, align 1
  %25 = load i16*, i16** %sig_alg, align 8
  %26 = load i16, i16* %25, align 2
  %conv21 = zext i16 %26 to i32
  %and22 = and i32 %conv21, 255
  %conv23 = trunc i32 %and22 to i8
  %27 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %conv23, i8* %arrayidx24, align 1
  %28 = load i8*, i8** %p, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr25, i8** %p, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i16*, i16** %sig_alg, align 8
  %31 = load i16, i16* %30, align 2
  %conv26 = zext i16 %31 to i32
  %32 = load i16*, i16** %sig_alg, align 8
  %33 = load i16, i16* %32, align 2
  %call27 = call i8* @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext %33) #5
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8278, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv26, i8* noundef %call27) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end18, %if.then10
  %34 = load i16*, i16** %sig_alg, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr, i16** %sig_alg, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %p, align 8
  %36 = load i8*, i8** %supported_sig_alg, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %supported_sig_alg_len, align 8
  %37 = load i64, i64* %supported_sig_alg_len, align 8
  %cmp28 = icmp eq i64 %37, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.end
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8285, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.81, i64 0, i64 0)) #5
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %for.end
  %39 = load i8*, i8** %buf.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %arrayidx32, align 1
  %40 = load i8*, i8** %buf.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 13, i8* %arrayidx33, align 1
  %41 = load i64, i64* %supported_sig_alg_len, align 8
  %add = add i64 %41, 2
  %shr34 = lshr i64 %add, 8
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %42 = load i8*, i8** %buf.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 %conv36, i8* %arrayidx37, align 1
  %43 = load i64, i64* %supported_sig_alg_len, align 8
  %add38 = add i64 %43, 2
  %and39 = and i64 %add38, 255
  %conv40 = trunc i64 %and39 to i8
  %44 = load i8*, i8** %buf.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 3
  store i8 %conv40, i8* %arrayidx41, align 1
  %45 = load i64, i64* %supported_sig_alg_len, align 8
  %shr42 = lshr i64 %45, 8
  %and43 = and i64 %shr42, 255
  %conv44 = trunc i64 %and43 to i8
  %46 = load i8*, i8** %buf.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %46, i64 4
  store i8 %conv44, i8* %arrayidx45, align 1
  %47 = load i64, i64* %supported_sig_alg_len, align 8
  %and46 = and i64 %47, 255
  %conv47 = trunc i64 %and46 to i8
  %48 = load i8*, i8** %buf.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %48, i64 5
  store i8 %conv47, i8* %arrayidx48, align 1
  %49 = load i8*, i8** %p, align 8
  %50 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast49 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %50 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %51 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub51, i64* %51, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then16, %if.then3, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
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
define dso_local i32 @mbedtls_ssl_parse_server_name_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %server_name_list_len = alloca i64, align 8
  %hostname_len = alloca i64, align 8
  %server_name_list_end = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8333, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0)) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %2, i8* noundef %3, i64 noundef 2) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8335, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.mbedtls_ssl_parse_server_name_ext, i64 0, i64 0)) #5
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %8 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i16
  %conv4 = zext i16 %conv3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = sext i32 %or to i64
  store i64 %conv5, i64* %server_name_list_len, align 8
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %13 = load i64, i64* %server_name_list_len, align 8
  %call7 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %11, i8* noundef %12, i64 noundef %13) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body6
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8339, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.mbedtls_ssl_parse_server_name_ext, i64 0, i64 0)) #5
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %15, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %16 = load i8*, i8** %p, align 8
  %17 = load i64, i64* %server_name_list_len, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %add.ptr13, i8** %server_name_list_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %do.end12
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %server_name_list_end, align 8
  %cmp14 = icmp ult i8* %18, %19
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body16

do.body16:                                        ; preds = %while.body
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %server_name_list_end, align 8
  %call17 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %20, i8* noundef %21, i64 noundef 3) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body16
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8343, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.mbedtls_ssl_parse_server_name_ext, i64 0, i64 0)) #5
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %23, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %do.body16
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  %24 = load i8*, i8** %p, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %25 to i16
  %conv25 = zext i16 %conv24 to i32
  %shl26 = shl i32 %conv25, 8
  %26 = load i8*, i8** %p, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %27 to i16
  %conv29 = zext i16 %conv28 to i32
  %or30 = or i32 %shl26, %conv29
  %conv31 = sext i32 %or30 to i64
  store i64 %conv31, i64* %hostname_len, align 8
  br label %do.body32

do.body32:                                        ; preds = %do.end22
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %server_name_list_end, align 8
  %30 = load i64, i64* %hostname_len, align 8
  %add = add i64 %30, 3
  %call33 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %28, i8* noundef %29, i64 noundef %add) #5
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body32
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8346, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.mbedtls_ssl_parse_server_name_ext, i64 0, i64 0)) #5
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %32, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %do.body32
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %33 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %34 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.end59

if.then43:                                        ; preds = %do.end38
  %35 = load i8*, i8** %p, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 16
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %sni_name = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 47
  store i8* %add.ptr44, i8** %sni_name, align 8
  %38 = load i64, i64* %hostname_len, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake45 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %39, i32 0, i32 16
  %40 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake45, align 8
  %sni_name_len = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %40, i32 0, i32 48
  store i64 %38, i64* %sni_name_len, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 0
  %42 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_sni = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %42, i32 0, i32 22
  %43 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_sni, align 8
  %cmp46 = icmp eq i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)* %43, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then43
  store i32 0, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then43
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf50 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 0
  %45 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf50, align 8
  %f_sni51 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %45, i32 0, i32 22
  %46 = load i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)** %f_sni51, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 0
  %48 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf52, align 8
  %p_sni = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %48, i32 0, i32 23
  %49 = load i8*, i8** %p_sni, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %51 = load i8*, i8** %p, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i64, i64* %hostname_len, align 8
  %call54 = call i32 %46(i8* noundef %49, %struct.mbedtls_ssl_context* noundef %50, i8* noundef %add.ptr53, i64 noundef %52) #5
  store i32 %call54, i32* %ret, align 4
  %53 = load i32, i32* %ret, align 4
  %cmp55 = icmp ne i32 %53, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end49
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %55 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %54, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8363, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0), i32 noundef %55) #5
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %56, i8 noundef zeroext 112, i32 noundef -30720) #5
  store i32 -30720, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end49
  store i32 0, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %do.end38
  %57 = load i64, i64* %hostname_len, align 8
  %add60 = add i64 %57, 3
  %58 = load i8*, i8** %p, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %58, i64 %add60
  store i8* %add.ptr61, i8** %p, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end58, %if.then57, %if.then48, %if.then36, %if.then20, %if.then10, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_alpn_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %protocol_name_list_len = alloca i64, align 8
  %protocol_name_list = alloca i8*, align 8
  %protocol_name_list_end = alloca i8*, align 8
  %protocol_name_len = alloca i64, align 8
  %alpn = alloca i8**, align 8
  %alpn_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %alpn_list = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %2, i32 0, i32 48
  %3 = load i8**, i8*** %alpn_list, align 8
  %cmp = icmp eq i8** %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %4, i8* noundef %5, i64 noundef 4) #5
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8408, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.mbedtls_ssl_parse_alpn_ext, i64 0, i64 0)) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %7, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %8 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i16
  %conv4 = zext i16 %conv to i32
  %shl = shl i32 %conv4, 8
  %10 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %11 to i16
  %conv7 = zext i16 %conv6 to i32
  %or = or i32 %shl, %conv7
  %conv8 = sext i32 %or to i64
  store i64 %conv8, i64* %protocol_name_list_len, align 8
  %12 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load i64, i64* %protocol_name_list_len, align 8
  %call10 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %13, i8* noundef %14, i64 noundef %15) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body9
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8412, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.mbedtls_ssl_parse_alpn_ext, i64 0, i64 0)) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %17, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %18 = load i8*, i8** %p, align 8
  store i8* %18, i8** %protocol_name_list, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i64, i64* %protocol_name_list_len, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %add.ptr16, i8** %protocol_name_list_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %do.end15
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %protocol_name_list_end, align 8
  %cmp17 = icmp ult i8* %21, %22
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv19 = zext i8 %24 to i64
  store i64 %conv19, i64* %protocol_name_len, align 8
  br label %do.body20

do.body20:                                        ; preds = %while.body
  %25 = load i8*, i8** %p, align 8
  %26 = load i8*, i8** %protocol_name_list_end, align 8
  %27 = load i64, i64* %protocol_name_len, align 8
  %call21 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %25, i8* noundef %26, i64 noundef %27) #5
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body20
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8421, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.mbedtls_ssl_parse_alpn_ext, i64 0, i64 0)) #5
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %29, i8 noundef zeroext 50, i32 noundef -29440) #5
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %do.body20
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  %30 = load i64, i64* %protocol_name_len, align 8
  %cmp27 = icmp eq i64 %30, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.end26
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %31, i8 noundef zeroext 47, i32 noundef -26112) #5
  store i32 -26112, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %do.end26
  %32 = load i64, i64* %protocol_name_len, align 8
  %33 = load i8*, i8** %p, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %add.ptr31, i8** %p, align 8
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf32, align 8
  %alpn_list33 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %35, i32 0, i32 48
  %36 = load i8**, i8*** %alpn_list33, align 8
  store i8** %36, i8*** %alpn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %37 = load i8**, i8*** %alpn, align 8
  %38 = load i8*, i8** %37, align 8
  %cmp34 = icmp ne i8* %38, null
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8**, i8*** %alpn, align 8
  %40 = load i8*, i8** %39, align 8
  %call36 = call i64 @strlen(i8* noundef %40) #7
  store i64 %call36, i64* %alpn_len, align 8
  %41 = load i8*, i8** %protocol_name_list, align 8
  store i8* %41, i8** %p, align 8
  br label %while.cond37

while.cond37:                                     ; preds = %if.end49, %for.body
  %42 = load i8*, i8** %p, align 8
  %43 = load i8*, i8** %protocol_name_list_end, align 8
  %cmp38 = icmp ult i8* %42, %43
  br i1 %cmp38, label %while.body40, label %while.end51

while.body40:                                     ; preds = %while.cond37
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8
  %45 = load i8, i8* %44, align 1
  %conv42 = zext i8 %45 to i64
  store i64 %conv42, i64* %protocol_name_len, align 8
  %46 = load i64, i64* %protocol_name_len, align 8
  %47 = load i64, i64* %alpn_len, align 8
  %cmp43 = icmp eq i64 %46, %47
  br i1 %cmp43, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %while.body40
  %48 = load i8*, i8** %p, align 8
  %49 = load i8**, i8*** %alpn, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %alpn_len, align 8
  %call45 = call i32 @memcmp(i8* noundef %48, i8* noundef %50, i64 noundef %51) #7
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  %52 = load i8**, i8*** %alpn, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 57
  store i8* %53, i8** %alpn_chosen, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %land.lhs.true, %while.body40
  %55 = load i64, i64* %protocol_name_len, align 8
  %56 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %add.ptr50, i8** %p, align 8
  br label %while.cond37, !llvm.loop !27

while.end51:                                      ; preds = %while.cond37
  br label %for.inc

for.inc:                                          ; preds = %while.end51
  %57 = load i8**, i8*** %alpn, align 8
  %incdec.ptr52 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %incdec.ptr52, i8*** %alpn, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %58, i8 noundef zeroext 120, i32 noundef -30080) #5
  store i32 -30080, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then48, %if.then29, %if.then24, %if.then13, %if.then2, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_alpn_ext(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i8* noundef %end, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %out_len.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %protocol_name_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64*, i64** %out_len.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 57
  %3 = load i8*, i8** %alpn_chosen, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 57
  %5 = load i8*, i8** %alpn_chosen1, align 8
  %call = call i64 @strlen(i8* noundef %5) #7
  store i64 %call, i64* %protocol_name_len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %8 = load i64, i64* %protocol_name_len, align 8
  %add = add i64 7, %8
  %call2 = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %6, i8* noundef %7, i64 noundef %add) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 8476, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.84, i64 0, i64 0)) #5
  %10 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 16, i8* %arrayidx6, align 1
  %12 = load i64, i64* %protocol_name_len, align 8
  %add7 = add i64 7, %12
  %13 = load i64*, i64** %out_len.addr, align 8
  store i64 %add7, i64* %13, align 8
  %14 = load i64, i64* %protocol_name_len, align 8
  %add8 = add i64 %14, 3
  %shr = lshr i64 %add8, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %15 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %conv, i8* %arrayidx9, align 1
  %16 = load i64, i64* %protocol_name_len, align 8
  %add10 = add i64 %16, 3
  %and11 = and i64 %add10, 255
  %conv12 = trunc i64 %and11 to i8
  %17 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %conv12, i8* %arrayidx13, align 1
  %18 = load i64, i64* %protocol_name_len, align 8
  %add14 = add i64 %18, 1
  %shr15 = lshr i64 %add14, 8
  %and16 = and i64 %shr15, 255
  %conv17 = trunc i64 %and16 to i8
  %19 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %conv17, i8* %arrayidx18, align 1
  %20 = load i64, i64* %protocol_name_len, align 8
  %add19 = add i64 %20, 1
  %and20 = and i64 %add19, 255
  %conv21 = trunc i64 %and20 to i8
  %21 = load i8*, i8** %p, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 5
  store i8 %conv21, i8* %arrayidx22, align 1
  %22 = load i64, i64* %protocol_name_len, align 8
  %and23 = and i64 %22, 255
  %conv24 = trunc i64 %and23 to i8
  %23 = load i8*, i8** %p, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 6
  store i8 %conv24, i8* %arrayidx25, align 1
  %24 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 7
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alpn_chosen26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 57
  %26 = load i8*, i8** %alpn_chosen26, align 8
  %27 = load i64, i64* %protocol_name_len, align 8
  %call27 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %26, i64 noundef %27) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_conf_version_check(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %conf = alloca %struct.mbedtls_ssl_config*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  store %struct.mbedtls_ssl_config* %1, %struct.mbedtls_ssl_config** %conf, align 8
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %call = call i32 @mbedtls_ssl_conf_is_tls12_only(%struct.mbedtls_ssl_config* noundef %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 954, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.85, i64 0, i64 0)) #5
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 980, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i64 0, i64 0)) #5
  store i32 -24192, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_handshake_params_init(%struct.mbedtls_ssl_handshake_params* noundef %handshake) #0 {
entry:
  %handshake.addr = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_handshake_params* %handshake, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %0 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_handshake_params* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 2648) #6
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 41
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %fin_sha256) #5
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %fin_sha2561 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 41
  %call2 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %fin_sha2561, i32 noundef 0) #5
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 42
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %fin_sha512) #5
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %fin_sha5123 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 42
  %call4 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %fin_sha5123, i32 noundef 1) #5
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 12
  store void (%struct.mbedtls_ssl_context*, i8*, i64)* @ssl_update_checksum_start, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %dhm_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 19
  call void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef %dhm_ctx) #5
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %ecdh_ctx = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 20
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ecdh_ctx) #5
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake.addr, align 8
  %sni_authmode = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 2
  store i8 3, i8* %sni_authmode, align 2
  ret void
}

declare dso_local void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef) #2

declare dso_local void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_update_checksum_start(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 41
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %fin_sha256, i8* noundef %2, i64 noundef %3) #5
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 42
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call2 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %fin_sha512, i8* noundef %6, i64 noundef %7) #5
  ret void
}

declare dso_local void @mbedtls_dhm_init(%struct.mbedtls_dhm_context* noundef) #2

declare dso_local void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_session_save_tls12(%struct.mbedtls_ssl_session* noundef %session, i8* noundef %buf, i64 noundef %buf_len) #0 {
entry:
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %used = alloca i64, align 8
  %start = alloca i64, align 8
  %cert_len = alloca i64, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %used, align 8
  %1 = load i64, i64* %used, align 8
  %add = add i64 %1, 8
  store i64 %add, i64* %used, align 8
  %2 = load i64, i64* %used, align 8
  %3 = load i64, i64* %buf_len.addr, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %start1 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %4, i32 0, i32 3
  %5 = load i64, i64* %start1, align 8
  store i64 %5, i64* %start, align 8
  %6 = load i64, i64* %start, align 8
  %shr = lshr i64 %6, 56
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %8 = load i64, i64* %start, align 8
  %shr2 = lshr i64 %8, 48
  %and3 = and i64 %shr2, 255
  %conv4 = trunc i64 %and3 to i8
  %9 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %10 = load i64, i64* %start, align 8
  %shr6 = lshr i64 %10, 40
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %11 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %conv8, i8* %arrayidx9, align 1
  %12 = load i64, i64* %start, align 8
  %shr10 = lshr i64 %12, 32
  %and11 = and i64 %shr10, 255
  %conv12 = trunc i64 %and11 to i8
  %13 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 %conv12, i8* %arrayidx13, align 1
  %14 = load i64, i64* %start, align 8
  %shr14 = lshr i64 %14, 24
  %and15 = and i64 %shr14, 255
  %conv16 = trunc i64 %and15 to i8
  %15 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 %conv16, i8* %arrayidx17, align 1
  %16 = load i64, i64* %start, align 8
  %shr18 = lshr i64 %16, 16
  %and19 = and i64 %shr18, 255
  %conv20 = trunc i64 %and19 to i8
  %17 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 5
  store i8 %conv20, i8* %arrayidx21, align 1
  %18 = load i64, i64* %start, align 8
  %shr22 = lshr i64 %18, 8
  %and23 = and i64 %shr22, 255
  %conv24 = trunc i64 %and23 to i8
  %19 = load i8*, i8** %p, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 6
  store i8 %conv24, i8* %arrayidx25, align 1
  %20 = load i64, i64* %start, align 8
  %and26 = and i64 %20, 255
  %conv27 = trunc i64 %and26 to i8
  %21 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 7
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load i64, i64* %used, align 8
  %add29 = add i64 %23, 88
  store i64 %add29, i64* %used, align 8
  %24 = load i64, i64* %used, align 8
  %25 = load i64, i64* %buf_len.addr, align 8
  %cmp30 = icmp ule i64 %24, %25
  br i1 %cmp30, label %if.then32, label %if.end70

if.then32:                                        ; preds = %if.end
  %26 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %26, i32 0, i32 4
  %27 = load i32, i32* %ciphersuite, align 8
  %shr33 = ashr i32 %27, 8
  %and34 = and i32 %shr33, 255
  %conv35 = trunc i32 %and34 to i8
  %28 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %conv35, i8* %arrayidx36, align 1
  %29 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ciphersuite37 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %29, i32 0, i32 4
  %30 = load i32, i32* %ciphersuite37, align 8
  %and38 = and i32 %30, 255
  %conv39 = trunc i32 %and38 to i8
  %31 = load i8*, i8** %p, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %conv39, i8* %arrayidx40, align 1
  %32 = load i8*, i8** %p, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr41, i8** %p, align 8
  %33 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %33, i32 0, i32 5
  %34 = load i32, i32* %compression, align 4
  %and42 = and i32 %34, 255
  %conv43 = trunc i32 %and42 to i8
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv43, i8* %35, align 1
  %36 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %36, i32 0, i32 6
  %37 = load i64, i64* %id_len, align 8
  %and44 = and i64 %37, 255
  %conv45 = trunc i64 %and44 to i8
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 %conv45, i8* %38, align 1
  %39 = load i8*, i8** %p, align 8
  %40 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %40, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %39, i8* noundef %arraydecay, i64 noundef 32) #6
  %41 = load i8*, i8** %p, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %41, i64 32
  store i8* %add.ptr47, i8** %p, align 8
  %42 = load i8*, i8** %p, align 8
  %43 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %43, i32 0, i32 8
  %arraydecay48 = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %call49 = call i8* @memcpy(i8* noundef %42, i8* noundef %arraydecay48, i64 noundef 48) #6
  %44 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %44, i64 48
  store i8* %add.ptr50, i8** %p, align 8
  %45 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %45, i32 0, i32 10
  %46 = load i32, i32* %verify_result, align 8
  %shr51 = lshr i32 %46, 24
  %and52 = and i32 %shr51, 255
  %conv53 = trunc i32 %and52 to i8
  %47 = load i8*, i8** %p, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %conv53, i8* %arrayidx54, align 1
  %48 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %verify_result55 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %48, i32 0, i32 10
  %49 = load i32, i32* %verify_result55, align 8
  %shr56 = lshr i32 %49, 16
  %and57 = and i32 %shr56, 255
  %conv58 = trunc i32 %and57 to i8
  %50 = load i8*, i8** %p, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %conv58, i8* %arrayidx59, align 1
  %51 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %verify_result60 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %51, i32 0, i32 10
  %52 = load i32, i32* %verify_result60, align 8
  %shr61 = lshr i32 %52, 8
  %and62 = and i32 %shr61, 255
  %conv63 = trunc i32 %and62 to i8
  %53 = load i8*, i8** %p, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %conv63, i8* %arrayidx64, align 1
  %54 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %verify_result65 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %54, i32 0, i32 10
  %55 = load i32, i32* %verify_result65, align 8
  %and66 = and i32 %55, 255
  %conv67 = trunc i32 %and66 to i8
  %56 = load i8*, i8** %p, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %56, i64 3
  store i8 %conv67, i8* %arrayidx68, align 1
  %57 = load i8*, i8** %p, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr69, i8** %p, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then32, %if.end
  %58 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %58, i32 0, i32 9
  %59 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %cmp71 = icmp eq %struct.mbedtls_x509_crt* %59, null
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end70
  store i64 0, i64* %cert_len, align 8
  br label %if.end75

if.else:                                          ; preds = %if.end70
  %60 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert74 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %60, i32 0, i32 9
  %61 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert74, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %61, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  %62 = load i64, i64* %len, align 8
  store i64 %62, i64* %cert_len, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then73
  %63 = load i64, i64* %cert_len, align 8
  %add76 = add i64 3, %63
  %64 = load i64, i64* %used, align 8
  %add77 = add i64 %64, %add76
  store i64 %add77, i64* %used, align 8
  %65 = load i64, i64* %used, align 8
  %66 = load i64, i64* %buf_len.addr, align 8
  %cmp78 = icmp ule i64 %65, %66
  br i1 %cmp78, label %if.then80, label %if.end102

if.then80:                                        ; preds = %if.end75
  %67 = load i64, i64* %cert_len, align 8
  %shr81 = lshr i64 %67, 16
  %and82 = and i64 %shr81, 255
  %conv83 = trunc i64 %and82 to i8
  %68 = load i8*, i8** %p, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr84, i8** %p, align 8
  store i8 %conv83, i8* %68, align 1
  %69 = load i64, i64* %cert_len, align 8
  %shr85 = lshr i64 %69, 8
  %and86 = and i64 %shr85, 255
  %conv87 = trunc i64 %and86 to i8
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr88, i8** %p, align 8
  store i8 %conv87, i8* %70, align 1
  %71 = load i64, i64* %cert_len, align 8
  %and89 = and i64 %71, 255
  %conv90 = trunc i64 %and89 to i8
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr91, i8** %p, align 8
  store i8 %conv90, i8* %72, align 1
  %73 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert92 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %73, i32 0, i32 9
  %74 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert92, align 8
  %cmp93 = icmp ne %struct.mbedtls_x509_crt* %74, null
  br i1 %cmp93, label %if.then95, label %if.end101

if.then95:                                        ; preds = %if.then80
  %75 = load i8*, i8** %p, align 8
  %76 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert96 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %76, i32 0, i32 9
  %77 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert96, align 8
  %raw97 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %77, i32 0, i32 1
  %p98 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw97, i32 0, i32 2
  %78 = load i8*, i8** %p98, align 8
  %79 = load i64, i64* %cert_len, align 8
  %call99 = call i8* @memcpy(i8* noundef %75, i8* noundef %78, i64 noundef %79) #6
  %80 = load i64, i64* %cert_len, align 8
  %81 = load i8*, i8** %p, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %add.ptr100, i8** %p, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %if.then80
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end75
  %82 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %82, i32 0, i32 12
  %83 = load i64, i64* %ticket_len, align 8
  %add103 = add i64 3, %83
  %add104 = add i64 %add103, 4
  %84 = load i64, i64* %used, align 8
  %add105 = add i64 %84, %add104
  store i64 %add105, i64* %used, align 8
  %85 = load i64, i64* %used, align 8
  %86 = load i64, i64* %buf_len.addr, align 8
  %cmp106 = icmp ule i64 %85, %86
  br i1 %cmp106, label %if.then108, label %if.end151

if.then108:                                       ; preds = %if.end102
  %87 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len109 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %87, i32 0, i32 12
  %88 = load i64, i64* %ticket_len109, align 8
  %shr110 = lshr i64 %88, 16
  %and111 = and i64 %shr110, 255
  %conv112 = trunc i64 %and111 to i8
  %89 = load i8*, i8** %p, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr113, i8** %p, align 8
  store i8 %conv112, i8* %89, align 1
  %90 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len114 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %90, i32 0, i32 12
  %91 = load i64, i64* %ticket_len114, align 8
  %shr115 = lshr i64 %91, 8
  %and116 = and i64 %shr115, 255
  %conv117 = trunc i64 %and116 to i8
  %92 = load i8*, i8** %p, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr118, i8** %p, align 8
  store i8 %conv117, i8* %92, align 1
  %93 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len119 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %93, i32 0, i32 12
  %94 = load i64, i64* %ticket_len119, align 8
  %and120 = and i64 %94, 255
  %conv121 = trunc i64 %and120 to i8
  %95 = load i8*, i8** %p, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr122, i8** %p, align 8
  store i8 %conv121, i8* %95, align 1
  %96 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %96, i32 0, i32 11
  %97 = load i8*, i8** %ticket, align 8
  %cmp123 = icmp ne i8* %97, null
  br i1 %cmp123, label %if.then125, label %if.end131

if.then125:                                       ; preds = %if.then108
  %98 = load i8*, i8** %p, align 8
  %99 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket126 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %99, i32 0, i32 11
  %100 = load i8*, i8** %ticket126, align 8
  %101 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len127 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %101, i32 0, i32 12
  %102 = load i64, i64* %ticket_len127, align 8
  %call128 = call i8* @memcpy(i8* noundef %98, i8* noundef %100, i64 noundef %102) #6
  %103 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len129 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %103, i32 0, i32 12
  %104 = load i64, i64* %ticket_len129, align 8
  %105 = load i8*, i8** %p, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %add.ptr130, i8** %p, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then125, %if.then108
  %106 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %106, i32 0, i32 13
  %107 = load i32, i32* %ticket_lifetime, align 8
  %shr132 = lshr i32 %107, 24
  %and133 = and i32 %shr132, 255
  %conv134 = trunc i32 %and133 to i8
  %108 = load i8*, i8** %p, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 %conv134, i8* %arrayidx135, align 1
  %109 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_lifetime136 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %109, i32 0, i32 13
  %110 = load i32, i32* %ticket_lifetime136, align 8
  %shr137 = lshr i32 %110, 16
  %and138 = and i32 %shr137, 255
  %conv139 = trunc i32 %and138 to i8
  %111 = load i8*, i8** %p, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %conv139, i8* %arrayidx140, align 1
  %112 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_lifetime141 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %112, i32 0, i32 13
  %113 = load i32, i32* %ticket_lifetime141, align 8
  %shr142 = lshr i32 %113, 8
  %and143 = and i32 %shr142, 255
  %conv144 = trunc i32 %and143 to i8
  %114 = load i8*, i8** %p, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %114, i64 2
  store i8 %conv144, i8* %arrayidx145, align 1
  %115 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_lifetime146 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %115, i32 0, i32 13
  %116 = load i32, i32* %ticket_lifetime146, align 8
  %and147 = and i32 %116, 255
  %conv148 = trunc i32 %and147 to i8
  %117 = load i8*, i8** %p, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %117, i64 3
  store i8 %conv148, i8* %arrayidx149, align 1
  %118 = load i8*, i8** %p, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %118, i64 4
  store i8* %add.ptr150, i8** %p, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.end131, %if.end102
  %119 = load i64, i64* %used, align 8
  %add152 = add i64 %119, 1
  store i64 %add152, i64* %used, align 8
  %120 = load i64, i64* %used, align 8
  %121 = load i64, i64* %buf_len.addr, align 8
  %cmp153 = icmp ule i64 %120, %121
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end151
  %122 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %122, i32 0, i32 0
  %123 = load i8, i8* %mfl_code, align 8
  %124 = load i8*, i8** %p, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr156, i8** %p, align 8
  store i8 %123, i8* %124, align 1
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end151
  %125 = load i64, i64* %used, align 8
  %add158 = add i64 %125, 1
  store i64 %add158, i64* %used, align 8
  %126 = load i64, i64* %used, align 8
  %127 = load i64, i64* %buf_len.addr, align 8
  %cmp159 = icmp ule i64 %126, %127
  br i1 %cmp159, label %if.then161, label %if.end165

if.then161:                                       ; preds = %if.end157
  %128 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %128, i32 0, i32 14
  %129 = load i32, i32* %encrypt_then_mac, align 4
  %and162 = and i32 %129, 255
  %conv163 = trunc i32 %and162 to i8
  %130 = load i8*, i8** %p, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr164, i8** %p, align 8
  store i8 %conv163, i8* %130, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.then161, %if.end157
  %131 = load i64, i64* %used, align 8
  ret i64 %131
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_session_load_tls12(%struct.mbedtls_ssl_session* noundef %session, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %cert_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  %3 = load i8*, i8** %end, align 8
  %4 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ugt i64 8, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %shl = shl i64 %conv, 56
  %7 = load i8*, i8** %p, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %8 to i64
  %shl3 = shl i64 %conv2, 48
  %or = or i64 %shl, %shl3
  %9 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %10 to i64
  %shl6 = shl i64 %conv5, 40
  %or7 = or i64 %or, %shl6
  %11 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %12 to i64
  %shl10 = shl i64 %conv9, 32
  %or11 = or i64 %or7, %shl10
  %13 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %14 to i64
  %shl14 = shl i64 %conv13, 24
  %or15 = or i64 %or11, %shl14
  %15 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i64
  %shl18 = shl i64 %conv17, 16
  %or19 = or i64 %or15, %shl18
  %17 = load i8*, i8** %p, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i64
  %shl22 = shl i64 %conv21, 8
  %or23 = or i64 %or19, %shl22
  %19 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i64
  %or26 = or i64 %or23, %conv25
  store i64 %or26, i64* %start, align 8
  %21 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %add.ptr27, i8** %p, align 8
  %22 = load i64, i64* %start, align 8
  %23 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %start28 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %23, i32 0, i32 3
  store i64 %22, i64* %start28, align 8
  %24 = load i8*, i8** %end, align 8
  %25 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %25 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %cmp32 = icmp ugt i64 88, %sub.ptr.sub31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end
  %26 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %shl38 = shl i32 %conv37, 8
  %28 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %29 to i32
  %or41 = or i32 %shl38, %conv40
  %30 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ciphersuite = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %30, i32 0, i32 4
  store i32 %or41, i32* %ciphersuite, align 8
  %31 = load i8*, i8** %p, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %add.ptr42, i8** %p, align 8
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv43 = zext i8 %33 to i32
  %34 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %compression = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %34, i32 0, i32 5
  store i32 %conv43, i32* %compression, align 4
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %conv45 = zext i8 %36 to i64
  %37 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %id_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %37, i32 0, i32 6
  store i64 %conv45, i64* %id_len, align 8
  %38 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %38, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %id, i64 0, i64 0
  %39 = load i8*, i8** %p, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %39, i64 noundef 32) #6
  %40 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %40, i64 32
  store i8* %add.ptr46, i8** %p, align 8
  %41 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %41, i32 0, i32 8
  %arraydecay47 = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %42 = load i8*, i8** %p, align 8
  %call48 = call i8* @memcpy(i8* noundef %arraydecay47, i8* noundef %42, i64 noundef 48) #6
  %43 = load i8*, i8** %p, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %43, i64 48
  store i8* %add.ptr49, i8** %p, align 8
  %44 = load i8*, i8** %p, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %45 to i32
  %shl52 = shl i32 %conv51, 24
  %46 = load i8*, i8** %p, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %47 to i32
  %shl55 = shl i32 %conv54, 16
  %or56 = or i32 %shl52, %shl55
  %48 = load i8*, i8** %p, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %shl59 = shl i32 %conv58, 8
  %or60 = or i32 %or56, %shl59
  %50 = load i8*, i8** %p, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %51 to i32
  %or63 = or i32 %or60, %conv62
  %52 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %verify_result = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %52, i32 0, i32 10
  store i32 %or63, i32* %verify_result, align 8
  %53 = load i8*, i8** %p, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %add.ptr64, i8** %p, align 8
  %54 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %54, i32 0, i32 9
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %peer_cert, align 8
  %55 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %55, i32 0, i32 11
  store i8* null, i8** %ticket, align 8
  %56 = load i8*, i8** %end, align 8
  %57 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast65 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %57 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %cmp68 = icmp ugt i64 3, %sub.ptr.sub67
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end35
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end35
  %58 = load i8*, i8** %p, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %59 to i32
  %shl74 = shl i32 %conv73, 16
  %60 = load i8*, i8** %p, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %61 to i32
  %shl77 = shl i32 %conv76, 8
  %or78 = or i32 %shl74, %shl77
  %62 = load i8*, i8** %p, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %63 to i32
  %or81 = or i32 %or78, %conv80
  %conv82 = sext i32 %or81 to i64
  store i64 %conv82, i64* %cert_len, align 8
  %64 = load i8*, i8** %p, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %add.ptr83, i8** %p, align 8
  %65 = load i64, i64* %cert_len, align 8
  %cmp84 = icmp ne i64 %65, 0
  br i1 %cmp84, label %if.then86, label %if.end112

if.then86:                                        ; preds = %if.end71
  store i32 -110, i32* %ret, align 4
  %66 = load i64, i64* %cert_len, align 8
  %67 = load i8*, i8** %end, align 8
  %68 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast87 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %68 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %cmp90 = icmp ugt i64 %66, %sub.ptr.sub89
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.then86
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.then86
  %call94 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #6
  %69 = bitcast i8* %call94 to %struct.mbedtls_x509_crt*
  %70 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert95 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %70, i32 0, i32 9
  store %struct.mbedtls_x509_crt* %69, %struct.mbedtls_x509_crt** %peer_cert95, align 8
  %71 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert96 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %71, i32 0, i32 9
  %72 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert96, align 8
  %cmp97 = icmp eq %struct.mbedtls_x509_crt* %72, null
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end93
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end93
  %73 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert101 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %73, i32 0, i32 9
  %74 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert101, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %74) #5
  %75 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert102 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %75, i32 0, i32 9
  %76 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert102, align 8
  %77 = load i8*, i8** %p, align 8
  %78 = load i64, i64* %cert_len, align 8
  %call103 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %76, i8* noundef %77, i64 noundef %78) #5
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end110

if.then106:                                       ; preds = %if.end100
  %79 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert107 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %79, i32 0, i32 9
  %80 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert107, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %80) #5
  %81 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert108 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %81, i32 0, i32 9
  %82 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert108, align 8
  %83 = bitcast %struct.mbedtls_x509_crt* %82 to i8*
  call void @free(i8* noundef %83) #6
  %84 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %peer_cert109 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %84, i32 0, i32 9
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %peer_cert109, align 8
  %85 = load i32, i32* %ret, align 4
  store i32 %85, i32* %retval, align 4
  br label %return

if.end110:                                        ; preds = %if.end100
  %86 = load i64, i64* %cert_len, align 8
  %87 = load i8*, i8** %p, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %add.ptr111, i8** %p, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %if.end71
  %88 = load i8*, i8** %end, align 8
  %89 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast113 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast114 = ptrtoint i8* %89 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %cmp116 = icmp ugt i64 3, %sub.ptr.sub115
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end112
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end112
  %90 = load i8*, i8** %p, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %91 to i32
  %shl122 = shl i32 %conv121, 16
  %92 = load i8*, i8** %p, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %93 to i32
  %shl125 = shl i32 %conv124, 8
  %or126 = or i32 %shl122, %shl125
  %94 = load i8*, i8** %p, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %95 to i32
  %or129 = or i32 %or126, %conv128
  %conv130 = sext i32 %or129 to i64
  %96 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %96, i32 0, i32 12
  store i64 %conv130, i64* %ticket_len, align 8
  %97 = load i8*, i8** %p, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %97, i64 3
  store i8* %add.ptr131, i8** %p, align 8
  %98 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len132 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %98, i32 0, i32 12
  %99 = load i64, i64* %ticket_len132, align 8
  %cmp133 = icmp ne i64 %99, 0
  br i1 %cmp133, label %if.then135, label %if.end157

if.then135:                                       ; preds = %if.end119
  %100 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len136 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %100, i32 0, i32 12
  %101 = load i64, i64* %ticket_len136, align 8
  %102 = load i8*, i8** %end, align 8
  %103 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast137 = ptrtoint i8* %102 to i64
  %sub.ptr.rhs.cast138 = ptrtoint i8* %103 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %cmp140 = icmp ugt i64 %101, %sub.ptr.sub139
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.then135
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end143:                                        ; preds = %if.then135
  %104 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len144 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %104, i32 0, i32 12
  %105 = load i64, i64* %ticket_len144, align 8
  %call145 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %105) #6
  %106 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket146 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %106, i32 0, i32 11
  store i8* %call145, i8** %ticket146, align 8
  %107 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket147 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %107, i32 0, i32 11
  %108 = load i8*, i8** %ticket147, align 8
  %cmp148 = icmp eq i8* %108, null
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.end143
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.end143
  %109 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket152 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %109, i32 0, i32 11
  %110 = load i8*, i8** %ticket152, align 8
  %111 = load i8*, i8** %p, align 8
  %112 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len153 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %112, i32 0, i32 12
  %113 = load i64, i64* %ticket_len153, align 8
  %call154 = call i8* @memcpy(i8* noundef %110, i8* noundef %111, i64 noundef %113) #6
  %114 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_len155 = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %114, i32 0, i32 12
  %115 = load i64, i64* %ticket_len155, align 8
  %116 = load i8*, i8** %p, align 8
  %add.ptr156 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %add.ptr156, i8** %p, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.end151, %if.end119
  %117 = load i8*, i8** %end, align 8
  %118 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast158 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %118 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %cmp161 = icmp ugt i64 4, %sub.ptr.sub160
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end157
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end157
  %119 = load i8*, i8** %p, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %119, i64 0
  %120 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %120 to i32
  %shl167 = shl i32 %conv166, 24
  %121 = load i8*, i8** %p, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %122 to i32
  %shl170 = shl i32 %conv169, 16
  %or171 = or i32 %shl167, %shl170
  %123 = load i8*, i8** %p, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %123, i64 2
  %124 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %124 to i32
  %shl174 = shl i32 %conv173, 8
  %or175 = or i32 %or171, %shl174
  %125 = load i8*, i8** %p, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %125, i64 3
  %126 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %126 to i32
  %or178 = or i32 %or175, %conv177
  %127 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %ticket_lifetime = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %127, i32 0, i32 13
  store i32 %or178, i32* %ticket_lifetime, align 8
  %128 = load i8*, i8** %p, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %128, i64 4
  store i8* %add.ptr179, i8** %p, align 8
  %129 = load i8*, i8** %end, align 8
  %130 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast180 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast181 = ptrtoint i8* %130 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %cmp183 = icmp ugt i64 1, %sub.ptr.sub182
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.end164
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end186:                                        ; preds = %if.end164
  %131 = load i8*, i8** %p, align 8
  %incdec.ptr187 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr187, i8** %p, align 8
  %132 = load i8, i8* %131, align 1
  %133 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %mfl_code = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %133, i32 0, i32 0
  store i8 %132, i8* %mfl_code, align 8
  %134 = load i8*, i8** %end, align 8
  %135 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast188 = ptrtoint i8* %134 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %135 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %cmp191 = icmp ugt i64 1, %sub.ptr.sub190
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end186
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end194:                                        ; preds = %if.end186
  %136 = load i8*, i8** %p, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr195, i8** %p, align 8
  %137 = load i8, i8* %136, align 1
  %conv196 = zext i8 %137 to i32
  %138 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %encrypt_then_mac = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %138, i32 0, i32 14
  store i32 %conv196, i32* %encrypt_then_mac, align 4
  %139 = load i8*, i8** %p, align 8
  %140 = load i8*, i8** %end, align 8
  %cmp197 = icmp ne i8* %139, %140
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end194
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.end194
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end200, %if.then199, %if.then193, %if.then185, %if.then163, %if.then150, %if.then142, %if.then118, %if.then106, %if.then99, %if.then92, %if.then70, %if.then34, %if.then
  %141 = load i32, i32* %retval, align 4
  ret i32 %141
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @ssl_tls12prf_from_cs(i32 noundef %ciphersuite_id) #0 {
entry:
  %retval = alloca i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, align 8
  %ciphersuite_id.addr = alloca i32, align 4
  %ciphersuite_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store i32 %ciphersuite_id, i32* %ciphersuite_id.addr, align 4
  %0 = load i32, i32* %ciphersuite_id.addr, align 4
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %0) #5
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %ciphersuite_info, align 8
  %mac = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %1, i32 0, i32 3
  %2 = load i8, i8* %mac, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha384, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_sha256, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %retval, align 8
  ret i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* %3
}

declare dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef) #2

declare dso_local void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef, %struct.mbedtls_sha512_context* noundef) #2

declare dso_local i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef, i8* noundef) #2

declare dso_local void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef, %struct.mbedtls_sha256_context* noundef) #2

declare dso_local i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef, i8* noundef) #2

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_prf_generic(i32 noundef %md_type, i8* noundef %secret, i64 noundef %slen, i8* noundef %label, i8* noundef %random, i64 noundef %rlen, i8* noundef %dstbuf, i64 noundef %dlen) #0 {
entry:
  %retval = alloca i32, align 4
  %md_type.addr = alloca i32, align 4
  %secret.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %label.addr = alloca i8*, align 8
  %random.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %dstbuf.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  %nb = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %md_len = alloca i64, align 8
  %tmp = alloca i8*, align 8
  %tmp_len = alloca i64, align 8
  %h_i = alloca [64 x i8], align 16
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %ret = alloca i32, align 4
  store i32 %md_type, i32* %md_type.addr, align 4
  store i8* %secret, i8** %secret.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %random, i8** %random.addr, align 8
  store i64 %rlen, i64* %rlen.addr, align 8
  store i8* %dstbuf, i8** %dstbuf.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  store i64 0, i64* %tmp_len, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %0 = load i32, i32* %md_type.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %0) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #5
  %conv = zext i8 %call1 to i64
  store i64 %conv, i64* %md_len, align 8
  %2 = load i64, i64* %md_len, align 8
  %3 = load i8*, i8** %label.addr, align 8
  %call2 = call i64 @strlen(i8* noundef %3) #7
  %add = add i64 %2, %call2
  %4 = load i64, i64* %rlen.addr, align 8
  %add3 = add i64 %add, %4
  store i64 %add3, i64* %tmp_len, align 8
  %5 = load i64, i64* %tmp_len, align 8
  %call4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #6
  store i8* %call4, i8** %tmp, align 8
  %6 = load i8*, i8** %tmp, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -32512, i32* %ret, align 4
  br label %exit

if.end8:                                          ; preds = %if.end
  %7 = load i8*, i8** %label.addr, align 8
  %call9 = call i64 @strlen(i8* noundef %7) #7
  store i64 %call9, i64* %nb, align 8
  %8 = load i8*, i8** %tmp, align 8
  %9 = load i64, i64* %md_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8*, i8** %label.addr, align 8
  %11 = load i64, i64* %nb, align 8
  %call10 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %10, i64 noundef %11) #6
  %12 = load i8*, i8** %tmp, align 8
  %13 = load i64, i64* %md_len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i64, i64* %nb, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 %14
  %15 = load i8*, i8** %random.addr, align 8
  %16 = load i64, i64* %rlen.addr, align 8
  %call13 = call i8* @memcpy(i8* noundef %add.ptr12, i8* noundef %15, i64 noundef %16) #6
  %17 = load i64, i64* %rlen.addr, align 8
  %18 = load i64, i64* %nb, align 8
  %add14 = add i64 %18, %17
  store i64 %add14, i64* %nb, align 8
  %19 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call15 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %19, i32 noundef 1) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end8
  br label %exit

if.end19:                                         ; preds = %if.end8
  %20 = load i8*, i8** %secret.addr, align 8
  %21 = load i64, i64* %slen.addr, align 8
  %call20 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %20, i64 noundef %21) #5
  store i32 %call20, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp21 = icmp ne i32 %22, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %exit

if.end24:                                         ; preds = %if.end19
  %23 = load i8*, i8** %tmp, align 8
  %24 = load i64, i64* %md_len, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i64, i64* %nb, align 8
  %call26 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %add.ptr25, i64 noundef %25) #5
  store i32 %call26, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  br label %exit

if.end30:                                         ; preds = %if.end24
  %27 = load i8*, i8** %tmp, align 8
  %call31 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %27) #5
  store i32 %call31, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %28, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  br label %exit

if.end35:                                         ; preds = %if.end30
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %if.end35
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %dlen.addr, align 8
  %cmp36 = icmp ult i64 %29, %30
  br i1 %cmp36, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  %call38 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call38, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp39 = icmp ne i32 %31, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.body
  br label %exit

if.end42:                                         ; preds = %for.body
  %32 = load i8*, i8** %tmp, align 8
  %33 = load i64, i64* %md_len, align 8
  %34 = load i64, i64* %nb, align 8
  %add43 = add i64 %33, %34
  %call44 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %32, i64 noundef %add43) #5
  store i32 %call44, i32* %ret, align 4
  %35 = load i32, i32* %ret, align 4
  %cmp45 = icmp ne i32 %35, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  br label %exit

if.end48:                                         ; preds = %if.end42
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %h_i, i64 0, i64 0
  %call49 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay) #5
  store i32 %call49, i32* %ret, align 4
  %36 = load i32, i32* %ret, align 4
  %cmp50 = icmp ne i32 %36, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  br label %exit

if.end53:                                         ; preds = %if.end48
  %call54 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call54, i32* %ret, align 4
  %37 = load i32, i32* %ret, align 4
  %cmp55 = icmp ne i32 %37, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  br label %exit

if.end58:                                         ; preds = %if.end53
  %38 = load i8*, i8** %tmp, align 8
  %39 = load i64, i64* %md_len, align 8
  %call59 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %38, i64 noundef %39) #5
  store i32 %call59, i32* %ret, align 4
  %40 = load i32, i32* %ret, align 4
  %cmp60 = icmp ne i32 %40, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  br label %exit

if.end63:                                         ; preds = %if.end58
  %41 = load i8*, i8** %tmp, align 8
  %call64 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %41) #5
  store i32 %call64, i32* %ret, align 4
  %42 = load i32, i32* %ret, align 4
  %cmp65 = icmp ne i32 %42, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  br label %exit

if.end68:                                         ; preds = %if.end63
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %md_len, align 8
  %add69 = add i64 %43, %44
  %45 = load i64, i64* %dlen.addr, align 8
  %cmp70 = icmp ugt i64 %add69, %45
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end68
  %46 = load i64, i64* %dlen.addr, align 8
  %47 = load i64, i64* %md_len, align 8
  %rem = urem i64 %46, %47
  br label %cond.end

cond.false:                                       ; preds = %if.end68
  %48 = load i64, i64* %md_len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %rem, %cond.true ], [ %48, %cond.false ]
  store i64 %cond, i64* %k, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc, %cond.end
  %49 = load i64, i64* %j, align 8
  %50 = load i64, i64* %k, align 8
  %cmp73 = icmp ult i64 %49, %50
  br i1 %cmp73, label %for.body75, label %for.end

for.body75:                                       ; preds = %for.cond72
  %51 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %h_i, i64 0, i64 %51
  %52 = load i8, i8* %arrayidx, align 1
  %53 = load i8*, i8** %dstbuf.addr, align 8
  %54 = load i64, i64* %i, align 8
  %55 = load i64, i64* %j, align 8
  %add76 = add i64 %54, %55
  %arrayidx77 = getelementptr inbounds i8, i8* %53, i64 %add76
  store i8 %52, i8* %arrayidx77, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body75
  %56 = load i64, i64* %j, align 8
  %inc = add i64 %56, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond72, !llvm.loop !29

for.end:                                          ; preds = %for.cond72
  br label %for.inc78

for.inc78:                                        ; preds = %for.end
  %57 = load i64, i64* %md_len, align 8
  %58 = load i64, i64* %i, align 8
  %add79 = add i64 %58, %57
  store i64 %add79, i64* %i, align 8
  br label %for.cond, !llvm.loop !30

for.end80:                                        ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end80, %if.then67, %if.then62, %if.then57, %if.then52, %if.then47, %if.then41, %if.then34, %if.then29, %if.then23, %if.then18, %if.then7
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %59 = load i8*, i8** %tmp, align 8
  %60 = load i64, i64* %tmp_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %59, i64 noundef %60) #5
  %arraydecay81 = getelementptr inbounds [64 x i8], [64 x i8]* %h_i, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay81, i64 noundef 64) #5
  %61 = load i8*, i8** %tmp, align 8
  call void @free(i8* noundef %61) #6
  %62 = load i32, i32* %ret, align 4
  store i32 %62, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %63 = load i32, i32* %retval, align 4
  ret i32 %63
}

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_finished_tls_sha384(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i32 noundef %from) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %from.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %sender = alloca i8*, align 8
  %padbuf = alloca [48 x i8], align 16
  %sha512 = alloca %struct.mbedtls_sha512_context, align 8
  %session = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 12, i32* %len, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 15
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  store %struct.mbedtls_ssl_session* %1, %struct.mbedtls_ssl_session** %session, align 8
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_session* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 14
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session1, align 8
  store %struct.mbedtls_ssl_session* %4, %struct.mbedtls_ssl_session** %session, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %from.addr, align 4
  %cmp = icmp eq i32 %5, 0
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0)
  store i8* %cond, i8** %sender, align 8
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %sha512) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6752, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0)) #5
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha512 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 42
  call void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %sha512, %struct.mbedtls_sha512_context* noundef %fin_sha512) #5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %sha512, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %state, i64 0, i64 0
  %11 = bitcast i64* %arraydecay to i8*
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6764, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.97, i64 0, i64 0), i8* noundef %11, i64 noundef 64) #5
  %arraydecay2 = getelementptr inbounds [48 x i8], [48 x i8]* %padbuf, i64 0, i64 0
  %call = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %sha512, i8* noundef %arraydecay2) #5
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %sha512) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %tls_prf = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 15
  %14 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %15 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %15, i32 0, i32 8
  %arraydecay4 = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %16 = load i8*, i8** %sender, align 8
  %arraydecay5 = getelementptr inbounds [48 x i8], [48 x i8]* %padbuf, i64 0, i64 0
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %len, align 4
  %conv = sext i32 %18 to i64
  %call6 = call i32 %14(i8* noundef %arraydecay4, i64 noundef 48, i8* noundef %16, i8* noundef %arraydecay5, i64 noundef 48, i8* noundef %17, i64 noundef %conv) #5
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i32, i32* %len, align 4
  %conv7 = sext i32 %21 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6774, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0), i8* noundef %20, i64 noundef %conv7) #5
  %arraydecay8 = getelementptr inbounds [48 x i8], [48 x i8]* %padbuf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay8, i64 noundef 48) #5
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6778, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_finished_tls_sha256(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i32 noundef %from) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %from.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %sender = alloca i8*, align 8
  %padbuf = alloca [32 x i8], align 16
  %sha256 = alloca %struct.mbedtls_sha256_context, align 4
  %session = alloca %struct.mbedtls_ssl_session*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 12, i32* %len, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 15
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  store %struct.mbedtls_ssl_session* %1, %struct.mbedtls_ssl_session** %session, align 8
  %2 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %tobool = icmp ne %struct.mbedtls_ssl_session* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 14
  %4 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session1, align 8
  store %struct.mbedtls_ssl_session* %4, %struct.mbedtls_ssl_session** %session, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %from.addr, align 4
  %cmp = icmp eq i32 %5, 0
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0)
  store i8* %cond, i8** %sender, align 8
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %sha256) #5
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6675, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i64 0, i64 0)) #5
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %fin_sha256 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 41
  call void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %sha256, %struct.mbedtls_sha256_context* noundef %fin_sha256) #5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %sha256, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %state, i64 0, i64 0
  %11 = bitcast i32* %arraydecay to i8*
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6687, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0), i8* noundef %11, i64 noundef 32) #5
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %padbuf, i64 0, i64 0
  %call = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %sha256, i8* noundef %arraydecay2) #5
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %sha256) #5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %tls_prf = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 15
  %14 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf, align 8
  %15 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %master = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %15, i32 0, i32 8
  %arraydecay4 = getelementptr inbounds [48 x i8], [48 x i8]* %master, i64 0, i64 0
  %16 = load i8*, i8** %sender, align 8
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %padbuf, i64 0, i64 0
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %len, align 4
  %conv = sext i32 %18 to i64
  %call6 = call i32 %14(i8* noundef %arraydecay4, i64 noundef 48, i8* noundef %16, i8* noundef %arraydecay5, i64 noundef 32, i8* noundef %17, i64 noundef %conv) #5
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i32, i32* %len, align 4
  %conv7 = sext i32 %21 to i64
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6697, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0), i8* noundef %20, i64 noundef %conv7) #5
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %padbuf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay8, i64 noundef 32) #5
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 6701, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_peer_crt_unchanged(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %crt_buf, i64 noundef %crt_buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %crt_buf.addr = alloca i8*, align 8
  %crt_buf_len.addr = alloca i64, align 8
  %peer_crt = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %crt_buf, i8** %crt_buf.addr, align 8
  store i64 %crt_buf_len, i64* %crt_buf_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 14
  %1 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session, align 8
  %peer_cert = getelementptr inbounds %struct.mbedtls_ssl_session, %struct.mbedtls_ssl_session* %1, i32 0, i32 9
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_cert, align 8
  store %struct.mbedtls_x509_crt* %2, %struct.mbedtls_x509_crt** %peer_crt, align 8
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_crt, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_crt, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %4, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %6 = load i64, i64* %crt_buf_len.addr, align 8
  %cmp1 = icmp ne i64 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_crt, align 8
  %raw4 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %7, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw4, i32 0, i32 2
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %crt_buf.addr, align 8
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %peer_crt, align 8
  %raw5 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %10, i32 0, i32 1
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw5, i32 0, i32 1
  %11 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %8, i8* noundef %9, i64 noundef %11) #7
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @mbedtls_x509_crt_verify_restartable(%struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef, %struct.mbedtls_x509_crt_profile* noundef, i8* noundef, i32* noundef, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef, i8* noundef, i8* noundef) #2

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
define internal i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 2
  %2 = load i32, i32* %key_bitlen, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_prf_get_type(i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* noundef %tls_prf) #0 {
entry:
  %retval = alloca i32, align 4
  %tls_prf.addr = alloca i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, align 8
  store i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* %tls_prf, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %0 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %1 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %cmp = icmp eq i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* %1, @tls_prf_sha384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32 (i8*, i64, i8*, i8*, i64, i8*, i64)*, i32 (i8*, i64, i8*, i8*, i64, i8*, i64)** %tls_prf.addr, align 8
  %cmp1 = icmp eq i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* %2, @tls_prf_sha256
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #2

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_cipher_set_padding_mode(%struct.mbedtls_cipher_context_t* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
