; ModuleID = 'ssl_msg.c'
source_filename = "ssl_msg.c"
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
%struct.mbedtls_record = type { [8 x i8], i8, [2 x i8], i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"ssl_msg.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"set_timer to %d ms\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"timer expired\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"=> mbedtls_ssl_check_record\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"record buffer\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ssl_parse_record_header\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_decrypt_buf\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"<= mbedtls_ssl_check_record\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"=> encrypt buf\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"no transform provided to encrypt_buf\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"bad record structure provided to encrypt_buf\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"before encrypt: output payload\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Record content %zu too large, maximum %zu\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Buffer provided for encrypted record not large enough\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"computed mac\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"mbedtls_md_hmac_xxx\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"IV used (internal)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"IV used (transmitted)\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"additional data used for AEAD\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"before encrypt: msglen = %zu, including 0 bytes of padding\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"mbedtls_cipher_auth_encrypt_ext\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"after encrypt: tag\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"No PRNG provided to encrypt_record routine\00", align 1
@.str.23 = private unnamed_addr constant [81 x i8] c"before encrypt: msglen = %zu, including %zu bytes of IV and %zu bytes of padding\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"mbedtls_cipher_crypt\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"using encrypt then mac\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"MAC'd meta-data\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"HMAC calculation failed\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"<= encrypt buf\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"=> decrypt buf\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"bad record structure provided to decrypt_buf\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"msglen (%zu ) < explicit_iv_len (%zu) \00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"msglen (%zu) < taglen (%zu) \00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"IV used\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"TAG used\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"mbedtls_cipher_auth_decrypt_ext\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"msglen (%zu) < max( ivlen(%zu), maclen (%zu) + 1 ) ( + expl IV )\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"message  mac\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"expected mac\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"message mac does not match\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"mbedtls_hmac_xxx\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"msglen (%zu) %% ivlen (%zu) != 0\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"mbedtls_ct_hmac\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"<= decrypt buf\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"=> fetch input\00", align 1
@.str.46 = private unnamed_addr constant [60 x i8] c"Bad usage of mbedtls_ssl_set_bio() or mbedtls_ssl_set_bio()\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"requesting more data than fits\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"next record in same datagram, offset: %zu\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"in_left: %zu, nb_want: %zu\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"<= fetch input\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"timer has expired\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"f_recv_timeout: %lu ms\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"ssl->f_recv(_timeout)\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"handshake timeout\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"mbedtls_ssl_resend\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"mbedtls_ssl_resend_hello_request\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"f_recv returned %d bytes but only %zu were requested\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"=> flush output\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"<= flush output\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"message length: %zu, out_left: %zu\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"ssl->f_send\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"f_send returned %d bytes but only %zu bytes were sent\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"=> mbedtls_ssl_resend\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"<= mbedtls_ssl_resend\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"=> mbedtls_ssl_flight_transmit\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"initialise flight transmission\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"swap epochs to send finished message\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"fragmenting handshake message (%u > %u)\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"handshake header\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_write_record\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"<= mbedtls_ssl_flight_transmit\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"=> write handshake message\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"Record too large: size %zu, maximum %zu\00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"DTLS handshake message too large: size %zu, maximum %zu\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"ssl_flight_append\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"ssl_write_record\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"<= write handshake message\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"=> write record\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"ssl_encrypt_buf\00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"output record: msgtype = %u, version = [%u:%u], msglen = %zu\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"output record sent to network\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"outgoing message counter would wrap\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"ssl_get_remaining_payload_in_datagram\00", align 1
@.str.85 = private unnamed_addr constant [45 x i8] c"Still %u bytes available in current datagram\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_flush_output\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"<= write record\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"handshake message too short: %zu\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"handshake message: msglen = %zu, type = %u, hslen = %zu\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"invalid handshake header\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"received future handshake message of sequence number %u (next %u)\00", align 1
@.str.92 = private unnamed_addr constant [74 x i8] c"received message from last flight, message_seq = %u, start_of_flight = %u\00", align 1
@.str.93 = private unnamed_addr constant [66 x i8] c"dropping out-of-sequence message: message_seq = %u, expected = %u\00", align 1
@.str.94 = private unnamed_addr constant [40 x i8] c"found fragmented DTLS handshake message\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"TLS handshake fragmentation not supported\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"=> read record\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"ssl_get_next_record\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_handle_message_type\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"reuse previously read message\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"<= read record\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"invalid CCS message, len: %zu\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"invalid CCS message, content: %02x\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"dropping ChangeCipherSpec outside handshake\00", align 1
@.str.104 = private unnamed_addr constant [50 x i8] c"received out-of-order ChangeCipherSpec - remember\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"invalid alert message, len: %zu\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"got an alert message, type: [%u:%u]\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"is a fatal alert message (msg %d)\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"is a close notify message\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"is a no renegotiation alert\00", align 1
@.str.110 = private unnamed_addr constant [36 x i8] c"dropping unexpected ApplicationData\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"=> send alert message\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"send alert level=%u message=%u\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"<= send alert message\00", align 1
@.str.114 = private unnamed_addr constant [28 x i8] c"=> write change cipher spec\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"<= write change cipher spec\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"=> parse change cipher spec\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"bad change cipher spec message\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"switching to new transform spec for inbound data\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"DTLS epoch would wrap\00", align 1
@.str.122 = private unnamed_addr constant [28 x i8] c"<= parse change cipher spec\00", align 1
@.str.123 = private unnamed_addr constant [51 x i8] c"ssl_check_pending: record held back for processing\00", align 1
@.str.124 = private unnamed_addr constant [56 x i8] c"ssl_check_pending: more records within current datagram\00", align 1
@.str.125 = private unnamed_addr constant [65 x i8] c"ssl_check_pending: more handshake messages within current record\00", align 1
@.str.126 = private unnamed_addr constant [62 x i8] c"ssl_check_pending: application data record is being processed\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"ssl_check_pending: nothing pending\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"=> read\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"ssl_check_ctr_renegotiate\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"mbedtls_ssl_handshake\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"ssl_handle_hs_message_post_handshake\00", align 1
@.str.132 = private unnamed_addr constant [51 x i8] c"renegotiation requested, but not honored by client\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"ignoring non-fatal non-closure alert\00", align 1
@.str.134 = private unnamed_addr constant [29 x i8] c"bad application data message\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"<= read\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"=> write\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"<= write\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"=> write close notify\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"mbedtls_ssl_send_alert_message\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"<= write close notify\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"mtu autoreduction to %d bytes\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"update timeout value to %lu millisecs\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"skip swap epochs\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"swap epochs\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"=> ssl_flight_append\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"message appended to flight\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"alloc %zu bytes failed\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"<= ssl_flight_append\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@.str.150 = private unnamed_addr constant [72 x i8] c"datagram of length %u too small to hold DTLS record header of length %u\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"unknown record type %u\00", align 1
@.str.152 = private unnamed_addr constant [46 x i8] c"TLS version mismatch: got %u, expected max %u\00", align 1
@.str.153 = private unnamed_addr constant [20 x i8] c"input record header\00", align 1
@.str.154 = private unnamed_addr constant [59 x i8] c"input record: msgtype = %u, version = [0x%x], msglen = %zu\00", align 1
@.str.155 = private unnamed_addr constant [75 x i8] c"Datagram of length %u too small to contain record of advertised length %u.\00", align 1
@.str.156 = private unnamed_addr constant [53 x i8] c"record from another epoch: expected %u, received %lu\00", align 1
@.str.157 = private unnamed_addr constant [30 x i8] c"Consider record for buffering\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"replayed record\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"=> ssl_load_buffered_messsage\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"CCS not seen in the current flight\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"Injecting buffered CCS message\00", align 1
@.str.162 = private unnamed_addr constant [52 x i8] c"Future message with sequence number %u %s buffered.\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"fully\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"partially\00", align 1
@.str.165 = private unnamed_addr constant [48 x i8] c"Next handshake message has been buffered - load\00", align 1
@.str.166 = private unnamed_addr constant [42 x i8] c"Buffered handshake message (incl. header)\00", align 1
@.str.167 = private unnamed_addr constant [58 x i8] c"Next handshake message %u not or only partially bufffered\00", align 1
@.str.168 = private unnamed_addr constant [29 x i8] c"<= ssl_load_buffered_message\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"=> ssl_buffer_message\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"Remember CCS message\00", align 1
@.str.171 = private unnamed_addr constant [75 x i8] c"Ignore future HS message with sequence number %u, buffering window %u - %u\00", align 1
@.str.172 = private unnamed_addr constant [57 x i8] c"Buffering HS message with sequence number %u, offset %u \00", align 1
@.str.173 = private unnamed_addr constant [120 x i8] c"Buffering of future message of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- ignore\0A\00", align 1
@.str.174 = private unnamed_addr constant [171 x i8] c"Buffering of future message of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- attempt to make space by freeing buffered future messages\0A\00", align 1
@.str.175 = private unnamed_addr constant [135 x i8] c"Reassembly of next message of size %zu (%zu with bitmap) would exceed the compile-time limit %zu (already %zu bytes buffered) -- fail\0A\00", align 1
@.str.176 = private unnamed_addr constant [42 x i8] c"initialize reassembly, total length = %zu\00", align 1
@.str.177 = private unnamed_addr constant [34 x i8] c"Fragment header mismatch - ignore\00", align 1
@.str.178 = private unnamed_addr constant [44 x i8] c"adding fragment, offset = %zu, length = %zu\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"message %scomplete\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"not yet \00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"<= ssl_buffer_message\00", align 1
@.str.183 = private unnamed_addr constant [61 x i8] c"Attempt to free buffered messages to have %u bytes available\00", align 1
@.str.184 = private unnamed_addr constant [57 x i8] c"Enough space available after freeing future epoch record\00", align 1
@.str.185 = private unnamed_addr constant [78 x i8] c"Free buffering slot %d to make space for reassembly of next handshake message\00", align 1
@.str.186 = private unnamed_addr constant [58 x i8] c"Enough space available after freeing buffered HS messages\00", align 1
@.str.187 = private unnamed_addr constant [28 x i8] c"remaining content in record\00", align 1
@.str.188 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_fetch_input\00", align 1
@.str.189 = private unnamed_addr constant [27 x i8] c"ssl_check_client_reconnect\00", align 1
@.str.190 = private unnamed_addr constant [38 x i8] c"discarding unexpected record (header)\00", align 1
@.str.191 = private unnamed_addr constant [35 x i8] c"discarding invalid record (header)\00", align 1
@.str.192 = private unnamed_addr constant [37 x i8] c"more than one record within datagram\00", align 1
@.str.193 = private unnamed_addr constant [30 x i8] c"too many records with bad MAC\00", align 1
@.str.194 = private unnamed_addr constant [32 x i8] c"discarding invalid record (mac)\00", align 1
@.str.195 = private unnamed_addr constant [28 x i8] c"=> ssl_load_buffered_record\00", align 1
@.str.196 = private unnamed_addr constant [40 x i8] c"Buffered record not from current epoch.\00", align 1
@.str.197 = private unnamed_addr constant [48 x i8] c"Found buffered record from current epoch - load\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"<= ssl_load_buffered_record\00", align 1
@.str.199 = private unnamed_addr constant [125 x i8] c"Buffering of future epoch record of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- ignore\0A\00", align 1
@.str.200 = private unnamed_addr constant [28 x i8] c"Buffer record from epoch %u\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"Buffered record\00", align 1
@.str.202 = private unnamed_addr constant [45 x i8] c"possible client reconnect from the same port\00", align 1
@.str.203 = private unnamed_addr constant [52 x i8] c"no cookie callbacks, can't check reconnect validity\00", align 1
@.str.204 = private unnamed_addr constant [37 x i8] c"mbedtls_ssl_check_dtls_clihlo_cookie\00", align 1
@.str.205 = private unnamed_addr constant [27 x i8] c"sending HelloVerifyRequest\00", align 1
@.str.206 = private unnamed_addr constant [35 x i8] c"cookie is valid, resetting context\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.208 = private unnamed_addr constant [24 x i8] c"check cookie: in_len=%u\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"cli_id\00", align 1
@.str.210 = private unnamed_addr constant [31 x i8] c"check cookie: record too short\00", align 1
@.str.211 = private unnamed_addr constant [37 x i8] c"check cookie: not a good ClientHello\00", align 1
@.str.212 = private unnamed_addr constant [40 x i8] c"    type=%u epoch=%u fragment_offset=%u\00", align 1
@.str.213 = private unnamed_addr constant [30 x i8] c"check cookie: sid_len=%u > %u\00", align 1
@.str.214 = private unnamed_addr constant [26 x i8] c"sid received from network\00", align 1
@.str.215 = private unnamed_addr constant [33 x i8] c"check cookie: cookie_len=%u > %u\00", align 1
@.str.216 = private unnamed_addr constant [29 x i8] c"cookie received from network\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"check cookie: valid\00", align 1
@.str.218 = private unnamed_addr constant [26 x i8] c"input record from network\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"ssl_decrypt_buf\00", align 1
@.str.220 = private unnamed_addr constant [42 x i8] c"record type after decrypt (before %d): %d\00", align 1
@.str.221 = private unnamed_addr constant [28 x i8] c"input payload after decrypt\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"invalid zero-length message type: %d\00", align 1
@.str.223 = private unnamed_addr constant [62 x i8] c"received four consecutive empty messages, possible DoS attack\00", align 1
@.str.224 = private unnamed_addr constant [36 x i8] c"incoming message counter would wrap\00", align 1
@.str.225 = private unnamed_addr constant [19 x i8] c"bad message length\00", align 1
@.str.226 = private unnamed_addr constant [42 x i8] c"record counter limit reached: renegotiate\00", align 1
@.str.227 = private unnamed_addr constant [38 x i8] c"handshake received (not HelloRequest)\00", align 1
@.str.228 = private unnamed_addr constant [37 x i8] c"handshake received (not ClientHello)\00", align 1
@.str.229 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_start_renegotiation\00", align 1
@.str.230 = private unnamed_addr constant [38 x i8] c"refusing renegotiation, sending alert\00", align 1
@.str.231 = private unnamed_addr constant [39 x i8] c"mbedtls_ssl_get_max_out_record_payload\00", align 1
@.str.232 = private unnamed_addr constant [73 x i8] c"fragment larger than the (negotiated) maximum fragment length: %zu > %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %millisecs) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %millisecs.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %millisecs, i32* %millisecs.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_set_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 22
  %1 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %f_set_timer, align 8
  %cmp = icmp eq void (i8*, i32, i32)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %millisecs.addr, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %3) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_set_timer1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 22
  %5 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %f_set_timer1, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 21
  %7 = load i8*, i8** %p_timer, align 8
  %8 = load i32, i32* %millisecs.addr, align 4
  %div = udiv i32 %8, 4
  %9 = load i32, i32* %millisecs.addr, align 4
  call void %5(i8* noundef %7, i32 noundef %div, i32 noundef %9) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_timer(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 23
  %1 = load i32 (i8*)*, i32 (i8*)** %f_get_timer, align 8
  %cmp = icmp eq i32 (i8*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 23
  %3 = load i32 (i8*)*, i32 (i8*)** %f_get_timer1, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 21
  %5 = load i8*, i8** %p_timer, align 8
  %call = call i32 %3(i8* noundef %5) #6
  %cmp2 = icmp eq i32 %call, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_record(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %rec = alloca %struct.mbedtls_record, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %buflen.addr, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2, i64 noundef %3) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 3
  %6 = load i8, i8* %transport, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -28800, i32* %ret, align 4
  br label %exit

if.else:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64, i64* %buflen.addr, align 8
  %call = call i32 @ssl_parse_record_header(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %8, i64 noundef %9, %struct.mbedtls_record* noundef %rec) #6
  store i32 %call, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef %12) #6
  br label %exit

if.end:                                           ; preds = %if.else
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 17
  %14 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %cmp5 = icmp ne %struct.mbedtls_ssl_transform* %14, null
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 17
  %17 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_in8, align 8
  %call9 = call i32 @mbedtls_ssl_decrypt_buf(%struct.mbedtls_ssl_context* noundef %15, %struct.mbedtls_ssl_transform* noundef %17, %struct.mbedtls_record* noundef %rec) #6
  store i32 %call9, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 noundef %20) #6
  br label %exit

if.end13:                                         ; preds = %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  br label %exit

exit:                                             ; preds = %if.end15, %if.then12, %if.then4, %if.then
  %21 = load i8*, i8** %buf.addr, align 8
  %22 = load i64, i64* %buflen.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %21, i64 noundef %22) #6
  %23 = load i32, i32* %ret, align 4
  %cmp16 = icmp eq i32 %23, -24576
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %exit
  %24 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %24, -25728
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %exit
  store i32 -26368, i32* %ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0)) #6
  %26 = load i32, i32* %ret, align 4
  ret i32 %26
}

declare dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_record_header(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len, %struct.mbedtls_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %tls_version = alloca i32, align 4
  %rec_hdr_type_offset = alloca i64, align 8
  %rec_hdr_type_len = alloca i64, align 8
  %rec_hdr_version_offset = alloca i64, align 8
  %rec_hdr_version_len = alloca i64, align 8
  %rec_hdr_ctr_len = alloca i64, align 8
  %rec_epoch = alloca i32, align 4
  %rec_hdr_ctr_offset = alloca i64, align 8
  %rec_hdr_len_offset = alloca i64, align 8
  %rec_hdr_len_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  store i64 0, i64* %rec_hdr_type_offset, align 8
  store i64 1, i64* %rec_hdr_type_len, align 8
  store i64 1, i64* %rec_hdr_version_offset, align 8
  store i64 2, i64* %rec_hdr_version_len, align 8
  store i64 8, i64* %rec_hdr_ctr_len, align 8
  store i64 3, i64* %rec_hdr_ctr_offset, align 8
  store i64 2, i64* %rec_hdr_len_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 3
  %2 = load i8, i8* %transport, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 11, i64* %rec_hdr_len_offset, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 3, i64* %rec_hdr_len_offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64, i64* %rec_hdr_len_offset, align 8
  %add = add i64 %4, 2
  %cmp2 = icmp ult i64 %3, %add
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %conv5 = trunc i64 %6 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3470, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.150, i64 0, i64 0), i32 noundef %conv5, i32 noundef 4) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %9, i32 0, i32 1
  store i8 %8, i8* %type, align 8
  %10 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type7 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %10, i32 0, i32 1
  %11 = load i8, i8* %type7, align 8
  %call = call i32 @ssl_check_record_type(i8 noundef zeroext %11) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type9 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %13, i32 0, i32 1
  %14 = load i8, i8* %type9, align 8
  %conv10 = zext i8 %14 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3525, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i64 0, i64 0), i32 noundef %conv10) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx12, align 1
  %17 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ver = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %17, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 0
  store i8 %16, i8* %arrayidx13, align 1
  %18 = load i8*, i8** %buf.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx14, align 1
  %20 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ver15 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %20, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [2 x i8], [2 x i8]* %ver15, i64 0, i64 1
  store i8 %19, i8* %arrayidx16, align 1
  %21 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 0
  %23 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf17, align 8
  %transport18 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %23, i32 0, i32 3
  %24 = load i8, i8* %transport18, align 1
  %conv19 = zext i8 %24 to i32
  %call20 = call zeroext i16 @mbedtls_ssl_read_version(i8* noundef %add.ptr, i32 noundef %conv19) #6
  %conv21 = zext i16 %call20 to i32
  store i32 %conv21, i32* %tls_version, align 4
  %25 = load i32, i32* %tls_version, align 4
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf22, align 8
  %max_tls_version = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %27, i32 0, i32 0
  %28 = load i32, i32* %max_tls_version, align 8
  %cmp23 = icmp ugt i32 %25, %28
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end11
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i32, i32* %tls_version, align 4
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf26, align 8
  %max_tls_version27 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %32, i32 0, i32 0
  %33 = load i32, i32* %max_tls_version27, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3542, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.152, i64 0, i64 0), i32 noundef %30, i32 noundef %33) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end11
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf29, align 8
  %transport30 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %35, i32 0, i32 3
  %36 = load i8, i8* %transport30, align 1
  %conv31 = zext i8 %36 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  br i1 %cmp32, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.end28
  %37 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %37, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr, i64 0, i64 0
  %38 = load i8*, i8** %buf.addr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %38, i64 3
  %call37 = call i8* @memcpy(i8* noundef %arrayidx35, i8* noundef %add.ptr36, i64 noundef 8) #7
  br label %if.end42

if.else38:                                        ; preds = %if.end28
  %39 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr39 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %39, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr39, i64 0, i64 0
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 25
  %41 = load i8*, i8** %in_ctr, align 8
  %call41 = call i8* @memcpy(i8* noundef %arrayidx40, i8* noundef %41, i64 noundef 8) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then34
  %42 = load i64, i64* %rec_hdr_len_offset, align 8
  %add43 = add i64 %42, 2
  %43 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %43, i32 0, i32 5
  store i64 %add43, i64* %data_offset, align 8
  %44 = load i8*, i8** %buf.addr, align 8
  %45 = load i64, i64* %rec_hdr_len_offset, align 8
  %add44 = add i64 %45, 0
  %arrayidx45 = getelementptr inbounds i8, i8* %44, i64 %add44
  %46 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %46 to i64
  %shl = shl i64 %conv46, 8
  %47 = load i8*, i8** %buf.addr, align 8
  %48 = load i64, i64* %rec_hdr_len_offset, align 8
  %add47 = add i64 %48, 1
  %arrayidx48 = getelementptr inbounds i8, i8* %47, i64 %add47
  %49 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %49 to i64
  %shl50 = shl i64 %conv49, 0
  %or = or i64 %shl, %shl50
  %50 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %50, i32 0, i32 6
  store i64 %or, i64* %data_len, align 8
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %52 = load i8*, i8** %buf.addr, align 8
  %53 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset51 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %53, i32 0, i32 5
  %54 = load i64, i64* %data_offset51, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %51, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3571, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.153, i64 0, i64 0), i8* noundef %52, i64 noundef %54) #6
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %56 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type52 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %56, i32 0, i32 1
  %57 = load i8, i8* %type52, align 8
  %conv53 = zext i8 %57 to i32
  %58 = load i32, i32* %tls_version, align 4
  %59 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len54 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %59, i32 0, i32 6
  %60 = load i64, i64* %data_len54, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3575, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv53, i32 noundef %58, i64 noundef %60) #6
  %61 = load i8*, i8** %buf.addr, align 8
  %62 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf55 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %62, i32 0, i32 3
  store i8* %61, i8** %buf55, align 8
  %63 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset56 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %63, i32 0, i32 5
  %64 = load i64, i64* %data_offset56, align 8
  %65 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len57 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %65, i32 0, i32 6
  %66 = load i64, i64* %data_len57, align 8
  %add58 = add i64 %64, %66
  %67 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %67, i32 0, i32 4
  store i64 %add58, i64* %buf_len, align 8
  %68 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len59 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %68, i32 0, i32 6
  %69 = load i64, i64* %data_len59, align 8
  %cmp60 = icmp eq i64 %69, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end42
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end42
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf64 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 0
  %71 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf64, align 8
  %transport65 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %71, i32 0, i32 3
  %72 = load i8, i8* %transport65, align 1
  %conv66 = zext i8 %72 to i32
  %cmp67 = icmp eq i32 %conv66, 1
  br i1 %cmp67, label %if.then69, label %if.end113

if.then69:                                        ; preds = %if.end63
  %73 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr70 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %73, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr70, i64 0, i64 0
  %74 = load i8, i8* %arrayidx71, align 8
  %conv72 = zext i8 %74 to i32
  %shl73 = shl i32 %conv72, 8
  %75 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr74 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %75, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr74, i64 0, i64 1
  %76 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %76 to i32
  %or77 = or i32 %shl73, %conv76
  store i32 %or77, i32* %rec_epoch, align 4
  %77 = load i64, i64* %len.addr, align 8
  %78 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset78 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %78, i32 0, i32 5
  %79 = load i64, i64* %data_offset78, align 8
  %80 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len79 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %80, i32 0, i32 6
  %81 = load i64, i64* %data_len79, align 8
  %add80 = add i64 %79, %81
  %cmp81 = icmp ult i64 %77, %add80
  br i1 %cmp81, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.then69
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %83 = load i64, i64* %len.addr, align 8
  %conv84 = trunc i64 %83 to i32
  %84 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset85 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %84, i32 0, i32 5
  %85 = load i64, i64* %data_offset85, align 8
  %86 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len86 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %86, i32 0, i32 6
  %87 = load i64, i64* %data_len86, align 8
  %add87 = add i64 %85, %87
  %conv88 = trunc i64 %add87 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %82, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3606, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.155, i64 0, i64 0), i32 noundef %conv84, i32 noundef %conv88) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then69
  %88 = load i32, i32* %rec_epoch, align 4
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %89, i32 0, i32 34
  %90 = load i16, i16* %in_epoch, align 8
  %conv90 = zext i16 %90 to i32
  %cmp91 = icmp ne i32 %88, %conv90
  br i1 %cmp91, label %if.then93, label %if.else104

if.then93:                                        ; preds = %if.end89
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch94 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %92, i32 0, i32 34
  %93 = load i16, i16* %in_epoch94, align 8
  %conv95 = zext i16 %93 to i32
  %94 = load i32, i32* %rec_epoch, align 4
  %conv96 = zext i32 %94 to i64
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %91, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3617, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv95, i64 noundef %conv96) #6
  %95 = load i32, i32* %rec_epoch, align 4
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch97 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 34
  %97 = load i16, i16* %in_epoch97, align 8
  %conv98 = zext i16 %97 to i32
  %add99 = add i32 %conv98, 1
  %cmp100 = icmp eq i32 %95, %add99
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then93
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %98, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3623, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.157, i64 0, i64 0)) #6
  store i32 -25728, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then93
  store i32 -26368, i32* %retval, align 4
  br label %return

if.else104:                                       ; preds = %if.end89
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %100 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr105 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %100, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr105, i64 0, i64 0
  %call107 = call i32 @mbedtls_ssl_dtls_record_replay_check(%struct.mbedtls_ssl_context* noundef %99, i8* noundef %arrayidx106) #6
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.else104
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %101, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3635, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.158, i64 0, i64 0)) #6
  store i32 -26368, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.else104
  br label %if.end112

if.end112:                                        ; preds = %if.end111
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end63
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end113, %if.then110, %if.end103, %if.then102, %if.then83, %if.then62, %if.then25, %if.then8, %if.then4
  %102 = load i32, i32* %retval, align 4
  ret i32 %102
}

declare dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_decrypt_buf(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_transform* noundef %transform, %struct.mbedtls_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %olen = alloca i64, align 8
  %ssl_mode = alloca i32, align 4
  %ret = alloca i32, align 4
  %auth_done = alloca i32, align 4
  %padlen = alloca i64, align 8
  %correct = alloca i64, align 8
  %data = alloca i8*, align 8
  %add_data = alloca [46 x i8], align 16
  %add_data_len = alloca i64, align 8
  %iv = alloca [12 x i8], align 1
  %dynamic_iv = alloca i8*, align 8
  %dynamic_iv_len = alloca i64, align 8
  %minlen = alloca i64, align 8
  %mac_expect = alloca [48 x i8], align 16
  %mask = alloca i64, align 8
  %mask181 = alloca i64, align 8
  %pad_count = alloca i64, align 8
  %check = alloca i8*, align 8
  %padding_idx = alloca i64, align 8
  %num_checks = alloca i64, align 8
  %start_idx = alloca i64, align 8
  %idx = alloca i64, align 8
  %mask202 = alloca i64, align 8
  %equal = alloca i64, align 8
  %mac_expect225 = alloca [48 x i8], align 16
  %mac_peer = alloca [48 x i8], align 16
  %max_len = alloca i64, align 8
  %min_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  store i32 0, i32* %auth_done, align 4
  store i64 0, i64* %padlen, align 8
  store i64 1, i64* %correct, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1144, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %cmp = icmp eq %struct.mbedtls_record* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %2, i32 0, i32 3
  %3 = load i8*, i8** %buf, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %4, i32 0, i32 4
  %5 = load i64, i64* %buf_len, align 8
  %6 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %6, i32 0, i32 5
  %7 = load i64, i64* %data_offset, align 8
  %cmp3 = icmp ult i64 %5, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %8 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len5 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %8, i32 0, i32 4
  %9 = load i64, i64* %buf_len5, align 8
  %10 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset6 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %10, i32 0, i32 5
  %11 = load i64, i64* %data_offset6, align 8
  %sub = sub i64 %9, %11
  %12 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %12, i32 0, i32 6
  %13 = load i64, i64* %data_len, align 8
  %cmp7 = icmp ult i64 %sub, %13
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1150, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %15 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf8 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %15, i32 0, i32 3
  %16 = load i8*, i8** %buf8, align 8
  %17 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset9 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %17, i32 0, i32 5
  %18 = load i64, i64* %data_offset9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %add.ptr, i8** %data, align 8
  %19 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %call = call i32 @mbedtls_ssl_get_mode_from_transform(%struct.mbedtls_ssl_transform* noundef %19) #6
  store i32 %call, i32* %ssl_mode, align 4
  %20 = load i32, i32* %ssl_mode, align 4
  %cmp10 = icmp eq i32 %20, 3
  br i1 %cmp10, label %if.then11, label %if.else64

if.then11:                                        ; preds = %if.end
  store i64 8, i64* %dynamic_iv_len, align 8
  %21 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %call12 = call i32 @ssl_transform_aead_dynamic_iv_is_explicit(%struct.mbedtls_ssl_transform* noundef %21) #6
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  %22 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len15 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %22, i32 0, i32 6
  %23 = load i64, i64* %data_len15, align 8
  %24 = load i64, i64* %dynamic_iv_len, align 8
  %cmp16 = icmp ult i64 %23, %24
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then14
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %26 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len18 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %26, i32 0, i32 6
  %27 = load i64, i64* %data_len18, align 8
  %28 = load i64, i64* %dynamic_iv_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1204, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i64 noundef %27, i64 noundef %28) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %29 = load i8*, i8** %data, align 8
  store i8* %29, i8** %dynamic_iv, align 8
  %30 = load i64, i64* %dynamic_iv_len, align 8
  %31 = load i8*, i8** %data, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %add.ptr20, i8** %data, align 8
  %32 = load i64, i64* %dynamic_iv_len, align 8
  %33 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset21 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %33, i32 0, i32 5
  %34 = load i64, i64* %data_offset21, align 8
  %add = add i64 %34, %32
  store i64 %add, i64* %data_offset21, align 8
  %35 = load i64, i64* %dynamic_iv_len, align 8
  %36 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len22 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %36, i32 0, i32 6
  %37 = load i64, i64* %data_len22, align 8
  %sub23 = sub i64 %37, %35
  store i64 %sub23, i64* %data_len22, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then11
  %38 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %38, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ctr, i64 0, i64 0
  store i8* %arraydecay, i8** %dynamic_iv, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end19
  %39 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len25 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %39, i32 0, i32 6
  %40 = load i64, i64* %data_len25, align 8
  %41 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %41, i32 0, i32 4
  %42 = load i64, i64* %taglen, align 8
  %cmp26 = icmp ult i64 %40, %42
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len28 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %44, i32 0, i32 6
  %45 = load i64, i64* %data_len28, align 8
  %46 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen29 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %46, i32 0, i32 4
  %47 = load i64, i64* %taglen29, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %43, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1224, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i64 noundef %45, i64 noundef %47) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %48 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen31 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %48, i32 0, i32 4
  %49 = load i64, i64* %taglen31, align 8
  %50 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len32 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %50, i32 0, i32 6
  %51 = load i64, i64* %data_len32, align 8
  %sub33 = sub i64 %51, %49
  store i64 %sub33, i64* %data_len32, align 8
  %arraydecay34 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %52 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %52, i32 0, i32 6
  %arraydecay35 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_dec, i64 0, i64 0
  %53 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %53, i32 0, i32 2
  %54 = load i64, i64* %fixed_ivlen, align 8
  %55 = load i8*, i8** %dynamic_iv, align 8
  %56 = load i64, i64* %dynamic_iv_len, align 8
  call void @ssl_build_record_nonce(i8* noundef %arraydecay34, i64 noundef 12, i8* noundef %arraydecay35, i64 noundef %54, i8* noundef %55, i64 noundef %56) #6
  %arraydecay36 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %57 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %58 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %58, i32 0, i32 10
  %59 = load i32, i32* %tls_version, align 4
  %60 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen37 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %60, i32 0, i32 4
  %61 = load i64, i64* %taglen37, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay36, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %57, i32 noundef %59, i64 noundef %61) #6
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay38 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %63 = load i64, i64* %add_data_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1246, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay38, i64 noundef %63) #6
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay39 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %65 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %65, i32 0, i32 1
  %66 = load i64, i64* %ivlen, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1254, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* noundef %arraydecay39, i64 noundef %66) #6
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %68 = load i8*, i8** %data, align 8
  %69 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len40 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %69, i32 0, i32 6
  %70 = load i64, i64* %data_len40, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %68, i64 %70
  %71 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen42 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %71, i32 0, i32 4
  %72 = load i64, i64* %taglen42, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %67, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* noundef %add.ptr41, i64 noundef %72) #6
  %73 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %73, i32 0, i32 12
  %arraydecay43 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %74 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen44 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %74, i32 0, i32 1
  %75 = load i64, i64* %ivlen44, align 8
  %arraydecay45 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %76 = load i64, i64* %add_data_len, align 8
  %77 = load i8*, i8** %data, align 8
  %78 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len46 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %78, i32 0, i32 6
  %79 = load i64, i64* %data_len46, align 8
  %80 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen47 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %80, i32 0, i32 4
  %81 = load i64, i64* %taglen47, align 8
  %add48 = add i64 %79, %81
  %82 = load i8*, i8** %data, align 8
  %83 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len49 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %83, i32 0, i32 4
  %84 = load i64, i64* %buf_len49, align 8
  %85 = load i8*, i8** %data, align 8
  %86 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf50 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %86, i32 0, i32 3
  %87 = load i8*, i8** %buf50, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %87 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub51 = sub i64 %84, %sub.ptr.sub
  %88 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen52 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %88, i32 0, i32 4
  %89 = load i64, i64* %taglen52, align 8
  %call53 = call i32 @mbedtls_cipher_auth_decrypt_ext(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec, i8* noundef %arraydecay43, i64 noundef %75, i8* noundef %arraydecay45, i64 noundef %76, i8* noundef %77, i64 noundef %add48, i8* noundef %82, i64 noundef %sub51, i64* noundef %olen, i64 noundef %89) #6
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.end30
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %91 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %90, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1284, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 noundef %91) #6
  %92 = load i32, i32* %ret, align 4
  %cmp56 = icmp eq i32 %92, -25344
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then55
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then55
  %93 = load i32, i32* %ret, align 4
  store i32 %93, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end30
  %94 = load i32, i32* %auth_done, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %auth_done, align 4
  %95 = load i64, i64* %olen, align 8
  %96 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len60 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %96, i32 0, i32 6
  %97 = load i64, i64* %data_len60, align 8
  %cmp61 = icmp ne i64 %95, %97
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %98, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1298, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end59
  br label %if.end221

if.else64:                                        ; preds = %if.end
  %99 = load i32, i32* %ssl_mode, align 4
  %cmp65 = icmp eq i32 %99, 1
  br i1 %cmp65, label %if.then68, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.else64
  %100 = load i32, i32* %ssl_mode, align 4
  %cmp67 = icmp eq i32 %100, 2
  br i1 %cmp67, label %if.then68, label %if.else219

if.then68:                                        ; preds = %lor.lhs.false66, %if.else64
  store i64 0, i64* %minlen, align 8
  %101 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen69 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %101, i32 0, i32 1
  %102 = load i64, i64* %ivlen69, align 8
  %103 = load i64, i64* %minlen, align 8
  %add70 = add i64 %103, %102
  store i64 %add70, i64* %minlen, align 8
  %104 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len71 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %104, i32 0, i32 6
  %105 = load i64, i64* %data_len71, align 8
  %106 = load i64, i64* %minlen, align 8
  %107 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen72 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %107, i32 0, i32 1
  %108 = load i64, i64* %ivlen72, align 8
  %add73 = add i64 %106, %108
  %cmp74 = icmp ult i64 %105, %add73
  br i1 %cmp74, label %if.then80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then68
  %109 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len76 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %109, i32 0, i32 6
  %110 = load i64, i64* %data_len76, align 8
  %111 = load i64, i64* %minlen, align 8
  %112 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %112, i32 0, i32 3
  %113 = load i64, i64* %maclen, align 8
  %add77 = add i64 %111, %113
  %add78 = add i64 %add77, 1
  %cmp79 = icmp ult i64 %110, %add78
  br i1 %cmp79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %lor.lhs.false75, %if.then68
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %115 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len81 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %115, i32 0, i32 6
  %116 = load i64, i64* %data_len81, align 8
  %117 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen82 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %117, i32 0, i32 1
  %118 = load i64, i64* %ivlen82, align 8
  %119 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen83 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %119, i32 0, i32 3
  %120 = load i64, i64* %maclen83, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %114, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1352, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.37, i64 0, i64 0), i64 noundef %116, i64 noundef %118, i64 noundef %120) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %lor.lhs.false75
  %121 = load i32, i32* %ssl_mode, align 4
  %cmp85 = icmp eq i32 %121, 2
  br i1 %cmp85, label %if.then86, label %if.end138

if.then86:                                        ; preds = %if.end84
  %122 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %122, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1368, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0)) #6
  %123 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen87 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %123, i32 0, i32 3
  %124 = load i64, i64* %maclen87, align 8
  %125 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len88 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %125, i32 0, i32 6
  %126 = load i64, i64* %data_len88, align 8
  %sub89 = sub i64 %126, %124
  store i64 %sub89, i64* %data_len88, align 8
  %arraydecay90 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %127 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %128 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version91 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %128, i32 0, i32 10
  %129 = load i32, i32* %tls_version91, align 4
  %130 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen92 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %130, i32 0, i32 4
  %131 = load i64, i64* %taglen92, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay90, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %127, i32 noundef %129, i64 noundef %131) #6
  %132 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay93 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %133 = load i64, i64* %add_data_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %132, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1387, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay93, i64 noundef %133) #6
  %134 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %134, i32 0, i32 8
  %arraydecay94 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %135 = load i64, i64* %add_data_len, align 8
  %call95 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_dec, i8* noundef %arraydecay94, i64 noundef %135) #6
  store i32 %call95, i32* %ret, align 4
  %136 = load i32, i32* %ret, align 4
  %cmp96 = icmp ne i32 %136, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then86
  br label %hmac_failed_etm_enabled

if.end98:                                         ; preds = %if.then86
  %137 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec99 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %137, i32 0, i32 8
  %138 = load i8*, i8** %data, align 8
  %139 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len100 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %139, i32 0, i32 6
  %140 = load i64, i64* %data_len100, align 8
  %call101 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_dec99, i8* noundef %138, i64 noundef %140) #6
  store i32 %call101, i32* %ret, align 4
  %141 = load i32, i32* %ret, align 4
  %cmp102 = icmp ne i32 %141, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end98
  br label %hmac_failed_etm_enabled

if.end104:                                        ; preds = %if.end98
  %142 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec105 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %142, i32 0, i32 8
  %arraydecay106 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect, i64 0, i64 0
  %call107 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx_dec105, i8* noundef %arraydecay106) #6
  store i32 %call107, i32* %ret, align 4
  %143 = load i32, i32* %ret, align 4
  %cmp108 = icmp ne i32 %143, 0
  br i1 %cmp108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end104
  br label %hmac_failed_etm_enabled

if.end110:                                        ; preds = %if.end104
  %144 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec111 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %144, i32 0, i32 8
  %call112 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx_dec111) #6
  store i32 %call112, i32* %ret, align 4
  %145 = load i32, i32* %ret, align 4
  %cmp113 = icmp ne i32 %145, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end110
  br label %hmac_failed_etm_enabled

if.end115:                                        ; preds = %if.end110
  %146 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %147 = load i8*, i8** %data, align 8
  %148 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len116 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %148, i32 0, i32 6
  %149 = load i64, i64* %data_len116, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %147, i64 %149
  %150 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen118 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %150, i32 0, i32 3
  %151 = load i64, i64* %maclen118, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %146, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1424, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* noundef %add.ptr117, i64 noundef %151) #6
  %152 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay119 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect, i64 0, i64 0
  %153 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen120 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %153, i32 0, i32 3
  %154 = load i64, i64* %maclen120, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %152, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1426, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* noundef %arraydecay119, i64 noundef %154) #6
  %155 = load i8*, i8** %data, align 8
  %156 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len121 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %156, i32 0, i32 6
  %157 = load i64, i64* %data_len121, align 8
  %add.ptr122 = getelementptr inbounds i8, i8* %155, i64 %157
  %arraydecay123 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect, i64 0, i64 0
  %158 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen124 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %158, i32 0, i32 3
  %159 = load i64, i64* %maclen124, align 8
  %call125 = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr122, i8* noundef %arraydecay123, i64 noundef %159) #6
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end115
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %160, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1432, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0)) #6
  store i32 -29056, i32* %ret, align 4
  br label %hmac_failed_etm_enabled

if.end128:                                        ; preds = %if.end115
  %161 = load i32, i32* %auth_done, align 4
  %inc129 = add nsw i32 %161, 1
  store i32 %inc129, i32* %auth_done, align 4
  br label %hmac_failed_etm_enabled

hmac_failed_etm_enabled:                          ; preds = %if.end128, %if.then127, %if.then114, %if.then109, %if.then103, %if.then97
  %arraydecay130 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect, i64 0, i64 0
  %162 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen131 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %162, i32 0, i32 3
  %163 = load i64, i64* %maclen131, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay130, i64 noundef %163) #6
  %164 = load i32, i32* %ret, align 4
  %cmp132 = icmp ne i32 %164, 0
  br i1 %cmp132, label %if.then133, label %if.end137

if.then133:                                       ; preds = %hmac_failed_etm_enabled
  %165 = load i32, i32* %ret, align 4
  %cmp134 = icmp ne i32 %165, -29056
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then133
  %166 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %167 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %166, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1451, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 noundef %167) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.then133
  %168 = load i32, i32* %ret, align 4
  store i32 %168, i32* %retval, align 4
  br label %return

if.end137:                                        ; preds = %hmac_failed_etm_enabled
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end84
  %169 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len139 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %169, i32 0, i32 6
  %170 = load i64, i64* %data_len139, align 8
  %171 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen140 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %171, i32 0, i32 1
  %172 = load i64, i64* %ivlen140, align 8
  %rem = urem i64 %170, %172
  %cmp141 = icmp ne i64 %rem, 0
  br i1 %cmp141, label %if.then142, label %if.end145

if.then142:                                       ; preds = %if.end138
  %173 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %174 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len143 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %174, i32 0, i32 6
  %175 = load i64, i64* %data_len143, align 8
  %176 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen144 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %176, i32 0, i32 1
  %177 = load i64, i64* %ivlen144, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %173, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1468, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), i64 noundef %175, i64 noundef %177) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end145:                                        ; preds = %if.end138
  %178 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_dec146 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %178, i32 0, i32 6
  %arraydecay147 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_dec146, i64 0, i64 0
  %179 = load i8*, i8** %data, align 8
  %180 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen148 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %180, i32 0, i32 1
  %181 = load i64, i64* %ivlen148, align 8
  %call149 = call i8* @memcpy(i8* noundef %arraydecay147, i8* noundef %179, i64 noundef %181) #7
  %182 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen150 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %182, i32 0, i32 1
  %183 = load i64, i64* %ivlen150, align 8
  %184 = load i8*, i8** %data, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %add.ptr151, i8** %data, align 8
  %185 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen152 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %185, i32 0, i32 1
  %186 = load i64, i64* %ivlen152, align 8
  %187 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset153 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %187, i32 0, i32 5
  %188 = load i64, i64* %data_offset153, align 8
  %add154 = add i64 %188, %186
  store i64 %add154, i64* %data_offset153, align 8
  %189 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen155 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %189, i32 0, i32 1
  %190 = load i64, i64* %ivlen155, align 8
  %191 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len156 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %191, i32 0, i32 6
  %192 = load i64, i64* %data_len156, align 8
  %sub157 = sub i64 %192, %190
  store i64 %sub157, i64* %data_len156, align 8
  %193 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec158 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %193, i32 0, i32 12
  %194 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_dec159 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %194, i32 0, i32 6
  %arraydecay160 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_dec159, i64 0, i64 0
  %195 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen161 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %195, i32 0, i32 1
  %196 = load i64, i64* %ivlen161, align 8
  %197 = load i8*, i8** %data, align 8
  %198 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len162 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %198, i32 0, i32 6
  %199 = load i64, i64* %data_len162, align 8
  %200 = load i8*, i8** %data, align 8
  %call163 = call i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec158, i8* noundef %arraydecay160, i64 noundef %196, i8* noundef %197, i64 noundef %199, i8* noundef %200, i64* noundef %olen) #6
  store i32 %call163, i32* %ret, align 4
  %cmp164 = icmp ne i32 %call163, 0
  br i1 %cmp164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end145
  %201 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %202 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %201, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1535, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %202) #6
  %203 = load i32, i32* %ret, align 4
  store i32 %203, i32* %retval, align 4
  br label %return

if.end166:                                        ; preds = %if.end145
  %204 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len167 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %204, i32 0, i32 6
  %205 = load i64, i64* %data_len167, align 8
  %206 = load i64, i64* %olen, align 8
  %cmp168 = icmp ne i64 %205, %206
  br i1 %cmp168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end166
  %207 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %207, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1543, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end170:                                        ; preds = %if.end166
  %208 = load i8*, i8** %data, align 8
  %209 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len171 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %209, i32 0, i32 6
  %210 = load i64, i64* %data_len171, align 8
  %sub172 = sub i64 %210, 1
  %arrayidx = getelementptr inbounds i8, i8* %208, i64 %sub172
  %211 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %211 to i64
  store i64 %conv, i64* %padlen, align 8
  %212 = load i32, i32* %auth_done, align 4
  %cmp173 = icmp eq i32 %212, 1
  br i1 %cmp173, label %if.then175, label %if.else180

if.then175:                                       ; preds = %if.end170
  %213 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len176 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %213, i32 0, i32 6
  %214 = load i64, i64* %data_len176, align 8
  %215 = load i64, i64* %padlen, align 8
  %add177 = add i64 %215, 1
  %call178 = call i64 @mbedtls_ct_size_mask_ge(i64 noundef %214, i64 noundef %add177) #6
  store i64 %call178, i64* %mask, align 8
  %216 = load i64, i64* %mask, align 8
  %217 = load i64, i64* %correct, align 8
  %and = and i64 %217, %216
  store i64 %and, i64* %correct, align 8
  %218 = load i64, i64* %mask, align 8
  %219 = load i64, i64* %padlen, align 8
  %and179 = and i64 %219, %218
  store i64 %and179, i64* %padlen, align 8
  br label %if.end189

if.else180:                                       ; preds = %if.end170
  %220 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len182 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %220, i32 0, i32 6
  %221 = load i64, i64* %data_len182, align 8
  %222 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen183 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %222, i32 0, i32 3
  %223 = load i64, i64* %maclen183, align 8
  %224 = load i64, i64* %padlen, align 8
  %add184 = add i64 %223, %224
  %add185 = add i64 %add184, 1
  %call186 = call i64 @mbedtls_ct_size_mask_ge(i64 noundef %221, i64 noundef %add185) #6
  store i64 %call186, i64* %mask181, align 8
  %225 = load i64, i64* %mask181, align 8
  %226 = load i64, i64* %correct, align 8
  %and187 = and i64 %226, %225
  store i64 %and187, i64* %correct, align 8
  %227 = load i64, i64* %mask181, align 8
  %228 = load i64, i64* %padlen, align 8
  %and188 = and i64 %228, %227
  store i64 %and188, i64* %padlen, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.else180, %if.then175
  %229 = load i64, i64* %padlen, align 8
  %inc190 = add i64 %229, 1
  store i64 %inc190, i64* %padlen, align 8
  store i64 0, i64* %pad_count, align 8
  %230 = load i8*, i8** %data, align 8
  store i8* %230, i8** %check, align 8
  %231 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len191 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %231, i32 0, i32 6
  %232 = load i64, i64* %data_len191, align 8
  %233 = load i64, i64* %padlen, align 8
  %sub192 = sub i64 %232, %233
  store i64 %sub192, i64* %padding_idx, align 8
  %234 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len193 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %234, i32 0, i32 6
  %235 = load i64, i64* %data_len193, align 8
  %cmp194 = icmp ule i64 %235, 256
  br i1 %cmp194, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end189
  %236 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len196 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %236, i32 0, i32 6
  %237 = load i64, i64* %data_len196, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end189
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %237, %cond.true ], [ 256, %cond.false ]
  store i64 %cond, i64* %num_checks, align 8
  %238 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len197 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %238, i32 0, i32 6
  %239 = load i64, i64* %data_len197, align 8
  %240 = load i64, i64* %num_checks, align 8
  %sub198 = sub i64 %239, %240
  store i64 %sub198, i64* %start_idx, align 8
  %241 = load i64, i64* %start_idx, align 8
  store i64 %241, i64* %idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %242 = load i64, i64* %idx, align 8
  %243 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len199 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %243, i32 0, i32 6
  %244 = load i64, i64* %data_len199, align 8
  %cmp200 = icmp ult i64 %242, %244
  br i1 %cmp200, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %245 = load i64, i64* %idx, align 8
  %246 = load i64, i64* %padding_idx, align 8
  %call203 = call i64 @mbedtls_ct_size_mask_ge(i64 noundef %245, i64 noundef %246) #6
  store i64 %call203, i64* %mask202, align 8
  %247 = load i8*, i8** %check, align 8
  %248 = load i64, i64* %idx, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %247, i64 %248
  %249 = load volatile i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %249 to i64
  %250 = load i64, i64* %padlen, align 8
  %sub206 = sub i64 %250, 1
  %call207 = call i32 @mbedtls_ct_size_bool_eq(i64 noundef %conv205, i64 noundef %sub206) #6
  %conv208 = zext i32 %call207 to i64
  store i64 %conv208, i64* %equal, align 8
  %251 = load i64, i64* %mask202, align 8
  %252 = load i64, i64* %equal, align 8
  %and209 = and i64 %251, %252
  %253 = load i64, i64* %pad_count, align 8
  %add210 = add i64 %253, %and209
  store i64 %add210, i64* %pad_count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %254 = load i64, i64* %idx, align 8
  %inc211 = add i64 %254, 1
  store i64 %inc211, i64* %idx, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %255 = load i64, i64* %pad_count, align 8
  %256 = load i64, i64* %padlen, align 8
  %call212 = call i32 @mbedtls_ct_size_bool_eq(i64 noundef %255, i64 noundef %256) #6
  %conv213 = zext i32 %call212 to i64
  %257 = load i64, i64* %correct, align 8
  %and214 = and i64 %257, %conv213
  store i64 %and214, i64* %correct, align 8
  %258 = load i64, i64* %correct, align 8
  %call215 = call i64 @mbedtls_ct_size_mask(i64 noundef %258) #6
  %259 = load i64, i64* %padlen, align 8
  %and216 = and i64 %259, %call215
  store i64 %and216, i64* %padlen, align 8
  %260 = load i64, i64* %padlen, align 8
  %261 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len217 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %261, i32 0, i32 6
  %262 = load i64, i64* %data_len217, align 8
  %sub218 = sub i64 %262, %260
  store i64 %sub218, i64* %data_len217, align 8
  br label %if.end220

if.else219:                                       ; preds = %lor.lhs.false66
  %263 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %263, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1633, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end220:                                        ; preds = %for.end
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.end63
  %264 = load i32, i32* %auth_done, align 4
  %cmp222 = icmp eq i32 %264, 0
  br i1 %cmp222, label %if.then224, label %if.end270

if.then224:                                       ; preds = %if.end221
  %265 = bitcast [48 x i8]* %mac_expect225 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %265, i8 0, i64 48, i1 false)
  %266 = bitcast [48 x i8]* %mac_peer to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %266, i8 0, i64 48, i1 false)
  %267 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen226 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %267, i32 0, i32 3
  %268 = load i64, i64* %maclen226, align 8
  %269 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len227 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %269, i32 0, i32 6
  %270 = load i64, i64* %data_len227, align 8
  %sub228 = sub i64 %270, %268
  store i64 %sub228, i64* %data_len227, align 8
  %arraydecay229 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %271 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %272 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version230 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %272, i32 0, i32 10
  %273 = load i32, i32* %tls_version230, align 4
  %274 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen231 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %274, i32 0, i32 4
  %275 = load i64, i64* %taglen231, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay229, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %271, i32 noundef %273, i64 noundef %275) #6
  %276 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len232 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %276, i32 0, i32 6
  %277 = load i64, i64* %data_len232, align 8
  %278 = load i64, i64* %padlen, align 8
  %add233 = add i64 %277, %278
  store i64 %add233, i64* %max_len, align 8
  %279 = load i64, i64* %max_len, align 8
  %cmp234 = icmp ugt i64 %279, 256
  br i1 %cmp234, label %cond.true236, label %cond.false238

cond.true236:                                     ; preds = %if.then224
  %280 = load i64, i64* %max_len, align 8
  %sub237 = sub i64 %280, 256
  br label %cond.end239

cond.false238:                                    ; preds = %if.then224
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false238, %cond.true236
  %cond240 = phi i64 [ %sub237, %cond.true236 ], [ 0, %cond.false238 ]
  store i64 %cond240, i64* %min_len, align 8
  %281 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec241 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %281, i32 0, i32 8
  %arraydecay242 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %282 = load i64, i64* %add_data_len, align 8
  %283 = load i8*, i8** %data, align 8
  %284 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len243 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %284, i32 0, i32 6
  %285 = load i64, i64* %data_len243, align 8
  %286 = load i64, i64* %min_len, align 8
  %287 = load i64, i64* %max_len, align 8
  %arraydecay244 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect225, i64 0, i64 0
  %call245 = call i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* noundef %md_ctx_dec241, i8* noundef %arraydecay242, i64 noundef %282, i8* noundef %283, i64 noundef %285, i64 noundef %286, i64 noundef %287, i8* noundef %arraydecay244) #6
  store i32 %call245, i32* %ret, align 4
  %288 = load i32, i32* %ret, align 4
  %cmp246 = icmp ne i32 %288, 0
  br i1 %cmp246, label %if.then248, label %if.end249

if.then248:                                       ; preds = %cond.end239
  %289 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %290 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %289, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1698, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 noundef %290) #6
  br label %hmac_failed_etm_disabled

if.end249:                                        ; preds = %cond.end239
  %arraydecay250 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_peer, i64 0, i64 0
  %291 = load i8*, i8** %data, align 8
  %292 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len251 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %292, i32 0, i32 6
  %293 = load i64, i64* %data_len251, align 8
  %294 = load i64, i64* %min_len, align 8
  %295 = load i64, i64* %max_len, align 8
  %296 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen252 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %296, i32 0, i32 3
  %297 = load i64, i64* %maclen252, align 8
  call void @mbedtls_ct_memcpy_offset(i8* noundef %arraydecay250, i8* noundef %291, i64 noundef %293, i64 noundef %294, i64 noundef %295, i64 noundef %297) #6
  %arraydecay253 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_peer, i64 0, i64 0
  %arraydecay254 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect225, i64 0, i64 0
  %298 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen255 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %298, i32 0, i32 3
  %299 = load i64, i64* %maclen255, align 8
  %call256 = call i32 @mbedtls_ct_memcmp(i8* noundef %arraydecay253, i8* noundef %arraydecay254, i64 noundef %299) #6
  %cmp257 = icmp ne i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.end249
  store i64 0, i64* %correct, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.end249
  %300 = load i32, i32* %auth_done, align 4
  %inc261 = add nsw i32 %300, 1
  store i32 %inc261, i32* %auth_done, align 4
  br label %hmac_failed_etm_disabled

hmac_failed_etm_disabled:                         ; preds = %if.end260, %if.then248
  %arraydecay262 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_peer, i64 0, i64 0
  %301 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen263 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %301, i32 0, i32 3
  %302 = load i64, i64* %maclen263, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay262, i64 noundef %302) #6
  %arraydecay264 = getelementptr inbounds [48 x i8], [48 x i8]* %mac_expect225, i64 0, i64 0
  %303 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen265 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %303, i32 0, i32 3
  %304 = load i64, i64* %maclen265, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay264, i64 noundef %304) #6
  %305 = load i32, i32* %ret, align 4
  %cmp266 = icmp ne i32 %305, 0
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %hmac_failed_etm_disabled
  %306 = load i32, i32* %ret, align 4
  store i32 %306, i32* %retval, align 4
  br label %return

if.end269:                                        ; preds = %hmac_failed_etm_disabled
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.end221
  %307 = load i64, i64* %correct, align 8
  %cmp271 = icmp eq i64 %307, 0
  br i1 %cmp271, label %if.then273, label %if.end274

if.then273:                                       ; preds = %if.end270
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end274:                                        ; preds = %if.end270
  %308 = load i32, i32* %auth_done, align 4
  %cmp275 = icmp ne i32 %308, 1
  br i1 %cmp275, label %if.then277, label %if.end278

if.then277:                                       ; preds = %if.end274
  %309 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %309, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1740, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end278:                                        ; preds = %if.end274
  %310 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %310, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1766, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end278, %if.then277, %if.then273, %if.then268, %if.else219, %if.then169, %if.then165, %if.then142, %if.end136, %if.then80, %if.then62, %if.end58, %if.then57, %if.then27, %if.then17, %if.then
  %311 = load i32, i32* %retval, align 4
  ret i32 %311
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_encrypt_buf(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_transform* noundef %transform, %struct.mbedtls_record* noundef %rec, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ssl_mode = alloca i32, align 4
  %auth_done = alloca i32, align 4
  %data = alloca i8*, align 8
  %add_data = alloca [46 x i8], align 16
  %add_data_len = alloca i64, align 8
  %post_avail = alloca i64, align 8
  %mac = alloca [48 x i8], align 16
  %ret = alloca i32, align 4
  %iv = alloca [12 x i8], align 1
  %dynamic_iv = alloca i8*, align 8
  %dynamic_iv_len = alloca i64, align 8
  %dynamic_iv_is_explicit = alloca i32, align 4
  %ret79 = alloca i32, align 4
  %ret132 = alloca i32, align 4
  %padlen = alloca i64, align 8
  %i = alloca i64, align 8
  %olen = alloca i64, align 8
  %mac210 = alloca [48 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %auth_done, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_transform* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_record* %3, null
  br i1 %cmp1, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %4, i32 0, i32 3
  %5 = load i8*, i8** %buf, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then9, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %6, i32 0, i32 4
  %7 = load i64, i64* %buf_len, align 8
  %8 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %8, i32 0, i32 5
  %9 = load i64, i64* %data_offset, align 8
  %cmp4 = icmp ult i64 %7, %9
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %10 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len6 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %10, i32 0, i32 4
  %11 = load i64, i64* %buf_len6, align 8
  %12 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset7 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %12, i32 0, i32 5
  %13 = load i64, i64* %data_offset7, align 8
  %sub = sub i64 %11, %13
  %14 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %14, i32 0, i32 6
  %15 = load i64, i64* %data_len, align 8
  %cmp8 = icmp ult i64 %sub, %15
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 575, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false5
  %17 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %call = call i32 @mbedtls_ssl_get_mode_from_transform(%struct.mbedtls_ssl_transform* noundef %17) #6
  store i32 %call, i32* %ssl_mode, align 4
  %18 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf11 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %18, i32 0, i32 3
  %19 = load i8*, i8** %buf11, align 8
  %20 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset12 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %20, i32 0, i32 5
  %21 = load i64, i64* %data_offset12, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %add.ptr, i8** %data, align 8
  %22 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len13 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %22, i32 0, i32 4
  %23 = load i64, i64* %buf_len13, align 8
  %24 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len14 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %24, i32 0, i32 6
  %25 = load i64, i64* %data_len14, align 8
  %26 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset15 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %26, i32 0, i32 5
  %27 = load i64, i64* %data_offset15, align 8
  %add = add i64 %25, %27
  %sub16 = sub i64 %23, %add
  store i64 %sub16, i64* %post_avail, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load i8*, i8** %data, align 8
  %30 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len17 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %30, i32 0, i32 6
  %31 = load i64, i64* %data_len17, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* noundef %29, i64 noundef %31) #6
  %32 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len18 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %32, i32 0, i32 6
  %33 = load i64, i64* %data_len18, align 8
  %cmp19 = icmp ugt i64 %33, 16384
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end10
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %35 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len21 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %35, i32 0, i32 6
  %36 = load i64, i64* %data_len21, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %34, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 noundef %36, i64 noundef 16384) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end10
  %37 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len23 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %37, i32 0, i32 4
  %38 = load i64, i64* %buf_len23, align 8
  %39 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len24 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %39, i32 0, i32 6
  %40 = load i64, i64* %data_len24, align 8
  %41 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset25 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %41, i32 0, i32 5
  %42 = load i64, i64* %data_offset25, align 8
  %add26 = add i64 %40, %42
  %sub27 = sub i64 %38, %add26
  store i64 %sub27, i64* %post_avail, align 8
  %43 = load i32, i32* %ssl_mode, align 4
  %cmp28 = icmp eq i32 %43, 0
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end22
  %44 = load i32, i32* %ssl_mode, align 4
  %cmp30 = icmp eq i32 %44, 1
  br i1 %cmp30, label %if.then31, label %if.end75

if.then31:                                        ; preds = %lor.lhs.false29, %if.end22
  %45 = load i64, i64* %post_avail, align 8
  %46 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %46, i32 0, i32 3
  %47 = load i64, i64* %maclen, align 8
  %cmp32 = icmp ult i64 %45, %47
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then31
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 670, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then31
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %49 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %50 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %50, i32 0, i32 10
  %51 = load i32, i32* %tls_version, align 4
  %52 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %52, i32 0, i32 4
  %53 = load i64, i64* %taglen, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %49, i32 noundef %51, i64 noundef %53) #6
  %54 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %54, i32 0, i32 7
  %arraydecay35 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %55 = load i64, i64* %add_data_len, align 8
  %call36 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_enc, i8* noundef %arraydecay35, i64 noundef %55) #6
  store i32 %call36, i32* %ret, align 4
  %56 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %56, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %hmac_failed_etm_disabled

if.end39:                                         ; preds = %if.end34
  %57 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc40 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %57, i32 0, i32 7
  %58 = load i8*, i8** %data, align 8
  %59 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len41 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %59, i32 0, i32 6
  %60 = load i64, i64* %data_len41, align 8
  %call42 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_enc40, i8* noundef %58, i64 noundef %60) #6
  store i32 %call42, i32* %ret, align 4
  %61 = load i32, i32* %ret, align 4
  %cmp43 = icmp ne i32 %61, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  br label %hmac_failed_etm_disabled

if.end45:                                         ; preds = %if.end39
  %62 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc46 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %62, i32 0, i32 7
  %arraydecay47 = getelementptr inbounds [48 x i8], [48 x i8]* %mac, i64 0, i64 0
  %call48 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx_enc46, i8* noundef %arraydecay47) #6
  store i32 %call48, i32* %ret, align 4
  %63 = load i32, i32* %ret, align 4
  %cmp49 = icmp ne i32 %63, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end45
  br label %hmac_failed_etm_disabled

if.end51:                                         ; preds = %if.end45
  %64 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc52 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %64, i32 0, i32 7
  %call53 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx_enc52) #6
  store i32 %call53, i32* %ret, align 4
  %65 = load i32, i32* %ret, align 4
  %cmp54 = icmp ne i32 %65, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  br label %hmac_failed_etm_disabled

if.end56:                                         ; preds = %if.end51
  %66 = load i8*, i8** %data, align 8
  %67 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len57 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %67, i32 0, i32 6
  %68 = load i64, i64* %data_len57, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %66, i64 %68
  %arraydecay59 = getelementptr inbounds [48 x i8], [48 x i8]* %mac, i64 0, i64 0
  %69 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen60 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %69, i32 0, i32 3
  %70 = load i64, i64* %maclen60, align 8
  %call61 = call i8* @memcpy(i8* noundef %add.ptr58, i8* noundef %arraydecay59, i64 noundef %70) #7
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %72 = load i8*, i8** %data, align 8
  %73 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len62 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %73, i32 0, i32 6
  %74 = load i64, i64* %data_len62, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %72, i64 %74
  %75 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen64 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %75, i32 0, i32 3
  %76 = load i64, i64* %maclen64, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %71, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %add.ptr63, i64 noundef %76) #6
  %77 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen65 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %77, i32 0, i32 3
  %78 = load i64, i64* %maclen65, align 8
  %79 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len66 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %79, i32 0, i32 6
  %80 = load i64, i64* %data_len66, align 8
  %add67 = add i64 %80, %78
  store i64 %add67, i64* %data_len66, align 8
  %81 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen68 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %81, i32 0, i32 3
  %82 = load i64, i64* %maclen68, align 8
  %83 = load i64, i64* %post_avail, align 8
  %sub69 = sub i64 %83, %82
  store i64 %sub69, i64* %post_avail, align 8
  %84 = load i32, i32* %auth_done, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %auth_done, align 4
  br label %hmac_failed_etm_disabled

hmac_failed_etm_disabled:                         ; preds = %if.end56, %if.then55, %if.then50, %if.then44, %if.then38
  %arraydecay70 = getelementptr inbounds [48 x i8], [48 x i8]* %mac, i64 0, i64 0
  %85 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen71 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %85, i32 0, i32 3
  %86 = load i64, i64* %maclen71, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay70, i64 noundef %86) #6
  %87 = load i32, i32* %ret, align 4
  %cmp72 = icmp ne i32 %87, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %hmac_failed_etm_disabled
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %89 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %88, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 740, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %89) #6
  %90 = load i32, i32* %ret, align 4
  store i32 %90, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %hmac_failed_etm_disabled
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %lor.lhs.false29
  %91 = load i32, i32* %ssl_mode, align 4
  %cmp76 = icmp eq i32 %91, 3
  br i1 %cmp76, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end75
  %92 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %call78 = call i32 @ssl_transform_aead_dynamic_iv_is_explicit(%struct.mbedtls_ssl_transform* noundef %92) #6
  store i32 %call78, i32* %dynamic_iv_is_explicit, align 4
  store i32 -110, i32* %ret79, align 4
  %93 = load i64, i64* %post_avail, align 8
  %94 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen80 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %94, i32 0, i32 4
  %95 = load i64, i64* %taglen80, align 8
  %cmp81 = icmp ult i64 %93, %95
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then77
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %96, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.then77
  %97 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %97, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr, i64 0, i64 0
  store i8* %arraydecay84, i8** %dynamic_iv, align 8
  store i64 8, i64* %dynamic_iv_len, align 8
  %arraydecay85 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %98 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %98, i32 0, i32 5
  %arraydecay86 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc, i64 0, i64 0
  %99 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %99, i32 0, i32 2
  %100 = load i64, i64* %fixed_ivlen, align 8
  %101 = load i8*, i8** %dynamic_iv, align 8
  %102 = load i64, i64* %dynamic_iv_len, align 8
  call void @ssl_build_record_nonce(i8* noundef %arraydecay85, i64 noundef 12, i8* noundef %arraydecay86, i64 noundef %100, i8* noundef %101, i64 noundef %102) #6
  %arraydecay87 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %103 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %104 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version88 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %104, i32 0, i32 10
  %105 = load i32, i32* %tls_version88, align 4
  %106 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen89 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %106, i32 0, i32 4
  %107 = load i64, i64* %taglen89, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay87, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %103, i32 noundef %105, i64 noundef %107) #6
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay90 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %109 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %109, i32 0, i32 1
  %110 = load i64, i64* %ivlen, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %108, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay90, i64 noundef %110) #6
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %112 = load i8*, i8** %dynamic_iv, align 8
  %113 = load i32, i32* %dynamic_iv_is_explicit, align 4
  %tobool = icmp ne i32 %113, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end83
  %114 = load i64, i64* %dynamic_iv_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %114, %cond.true ], [ 0, %cond.false ]
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %111, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 817, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* noundef %112, i64 noundef %cond) #6
  %115 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay91 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %116 = load i64, i64* %add_data_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %115, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 819, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay91, i64 noundef %116) #6
  %117 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %118 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len92 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %118, i32 0, i32 6
  %119 = load i64, i64* %data_len92, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %117, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 822, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i64 noundef %119) #6
  %120 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %120, i32 0, i32 11
  %arraydecay93 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  %121 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen94 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %121, i32 0, i32 1
  %122 = load i64, i64* %ivlen94, align 8
  %arraydecay95 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %123 = load i64, i64* %add_data_len, align 8
  %124 = load i8*, i8** %data, align 8
  %125 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len96 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %125, i32 0, i32 6
  %126 = load i64, i64* %data_len96, align 8
  %127 = load i8*, i8** %data, align 8
  %128 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len97 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %128, i32 0, i32 4
  %129 = load i64, i64* %buf_len97, align 8
  %130 = load i8*, i8** %data, align 8
  %131 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf98 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %131, i32 0, i32 3
  %132 = load i8*, i8** %buf98, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %132 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub99 = sub i64 %129, %sub.ptr.sub
  %133 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len100 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %133, i32 0, i32 6
  %134 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen101 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %134, i32 0, i32 4
  %135 = load i64, i64* %taglen101, align 8
  %call102 = call i32 @mbedtls_cipher_auth_encrypt_ext(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc, i8* noundef %arraydecay93, i64 noundef %122, i8* noundef %arraydecay95, i64 noundef %123, i8* noundef %124, i64 noundef %126, i8* noundef %127, i64 noundef %sub99, i64* noundef %data_len100, i64 noundef %135) #6
  store i32 %call102, i32* %ret79, align 4
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %cond.end
  %136 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %137 = load i32, i32* %ret79, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %136, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 noundef %137) #6
  %138 = load i32, i32* %ret79, align 4
  store i32 %138, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %cond.end
  %139 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %140 = load i8*, i8** %data, align 8
  %141 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len106 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %141, i32 0, i32 6
  %142 = load i64, i64* %data_len106, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %140, i64 %142
  %143 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen108 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %143, i32 0, i32 4
  %144 = load i64, i64* %taglen108, align 8
  %idx.neg = sub i64 0, %144
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr107, i64 %idx.neg
  %145 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen110 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %145, i32 0, i32 4
  %146 = load i64, i64* %taglen110, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %139, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* noundef %add.ptr109, i64 noundef %146) #6
  %147 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen111 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %147, i32 0, i32 4
  %148 = load i64, i64* %taglen111, align 8
  %149 = load i64, i64* %post_avail, align 8
  %sub112 = sub i64 %149, %148
  store i64 %sub112, i64* %post_avail, align 8
  %150 = load i32, i32* %dynamic_iv_is_explicit, align 4
  %cmp113 = icmp ne i32 %150, 0
  br i1 %cmp113, label %if.then114, label %if.end126

if.then114:                                       ; preds = %if.end105
  %151 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset115 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %151, i32 0, i32 5
  %152 = load i64, i64* %data_offset115, align 8
  %153 = load i64, i64* %dynamic_iv_len, align 8
  %cmp116 = icmp ult i64 %152, %153
  br i1 %cmp116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.then114
  %154 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %154, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 869, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.then114
  %155 = load i8*, i8** %data, align 8
  %156 = load i64, i64* %dynamic_iv_len, align 8
  %idx.neg119 = sub i64 0, %156
  %add.ptr120 = getelementptr inbounds i8, i8* %155, i64 %idx.neg119
  %157 = load i8*, i8** %dynamic_iv, align 8
  %158 = load i64, i64* %dynamic_iv_len, align 8
  %call121 = call i8* @memcpy(i8* noundef %add.ptr120, i8* noundef %157, i64 noundef %158) #7
  %159 = load i64, i64* %dynamic_iv_len, align 8
  %160 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset122 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %160, i32 0, i32 5
  %161 = load i64, i64* %data_offset122, align 8
  %sub123 = sub i64 %161, %159
  store i64 %sub123, i64* %data_offset122, align 8
  %162 = load i64, i64* %dynamic_iv_len, align 8
  %163 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len124 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %163, i32 0, i32 6
  %164 = load i64, i64* %data_len124, align 8
  %add125 = add i64 %164, %162
  store i64 %add125, i64* %data_len124, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.end118, %if.end105
  %165 = load i32, i32* %auth_done, align 4
  %inc127 = add nsw i32 %165, 1
  store i32 %inc127, i32* %auth_done, align 4
  br label %if.end267

if.else:                                          ; preds = %if.end75
  %166 = load i32, i32* %ssl_mode, align 4
  %cmp128 = icmp eq i32 %166, 1
  br i1 %cmp128, label %if.then131, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %if.else
  %167 = load i32, i32* %ssl_mode, align 4
  %cmp130 = icmp eq i32 %167, 2
  br i1 %cmp130, label %if.then131, label %if.else265

if.then131:                                       ; preds = %lor.lhs.false129, %if.else
  store i32 -110, i32* %ret132, align 4
  %168 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen133 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %168, i32 0, i32 1
  %169 = load i64, i64* %ivlen133, align 8
  %170 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len134 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %170, i32 0, i32 6
  %171 = load i64, i64* %data_len134, align 8
  %add135 = add i64 %171, 1
  %172 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen136 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %172, i32 0, i32 1
  %173 = load i64, i64* %ivlen136, align 8
  %rem = urem i64 %add135, %173
  %sub137 = sub i64 %169, %rem
  store i64 %sub137, i64* %padlen, align 8
  %174 = load i64, i64* %padlen, align 8
  %175 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen138 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %175, i32 0, i32 1
  %176 = load i64, i64* %ivlen138, align 8
  %cmp139 = icmp eq i64 %174, %176
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.then131
  store i64 0, i64* %padlen, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.then131
  %177 = load i64, i64* %post_avail, align 8
  %178 = load i64, i64* %padlen, align 8
  %add142 = add i64 %178, 1
  %cmp143 = icmp ult i64 %177, %add142
  br i1 %cmp143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end141
  %179 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %179, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 904, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end145:                                        ; preds = %if.end141
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end145
  %180 = load i64, i64* %i, align 8
  %181 = load i64, i64* %padlen, align 8
  %cmp146 = icmp ule i64 %180, %181
  br i1 %cmp146, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %182 = load i64, i64* %padlen, align 8
  %conv = trunc i64 %182 to i8
  %183 = load i8*, i8** %data, align 8
  %184 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len147 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %184, i32 0, i32 6
  %185 = load i64, i64* %data_len147, align 8
  %186 = load i64, i64* %i, align 8
  %add148 = add i64 %185, %186
  %arrayidx = getelementptr inbounds i8, i8* %183, i64 %add148
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %187 = load i64, i64* %i, align 8
  %inc149 = add i64 %187, 1
  store i64 %inc149, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %188 = load i64, i64* %padlen, align 8
  %add150 = add i64 %188, 1
  %189 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len151 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %189, i32 0, i32 6
  %190 = load i64, i64* %data_len151, align 8
  %add152 = add i64 %190, %add150
  store i64 %add152, i64* %data_len151, align 8
  %191 = load i64, i64* %padlen, align 8
  %add153 = add i64 %191, 1
  %192 = load i64, i64* %post_avail, align 8
  %sub154 = sub i64 %192, %add153
  store i64 %sub154, i64* %post_avail, align 8
  %193 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp155 = icmp eq i32 (i8*, i8*, i64)* %193, null
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %for.end
  %194 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %194, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 921, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end158:                                        ; preds = %for.end
  %195 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset159 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %195, i32 0, i32 5
  %196 = load i64, i64* %data_offset159, align 8
  %197 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen160 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %197, i32 0, i32 1
  %198 = load i64, i64* %ivlen160, align 8
  %cmp161 = icmp ult i64 %196, %198
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end158
  %199 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %199, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 927, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end158
  %200 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %201 = load i8*, i8** %p_rng.addr, align 8
  %202 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc165 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %202, i32 0, i32 5
  %arraydecay166 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc165, i64 0, i64 0
  %203 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen167 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %203, i32 0, i32 1
  %204 = load i64, i64* %ivlen167, align 8
  %call168 = call i32 %200(i8* noundef %201, i8* noundef %arraydecay166, i64 noundef %204) #6
  store i32 %call168, i32* %ret132, align 4
  %205 = load i32, i32* %ret132, align 4
  %cmp169 = icmp ne i32 %205, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end164
  %206 = load i32, i32* %ret132, align 4
  store i32 %206, i32* %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.end164
  %207 = load i8*, i8** %data, align 8
  %208 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen173 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %208, i32 0, i32 1
  %209 = load i64, i64* %ivlen173, align 8
  %idx.neg174 = sub i64 0, %209
  %add.ptr175 = getelementptr inbounds i8, i8* %207, i64 %idx.neg174
  %210 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc176 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %210, i32 0, i32 5
  %arraydecay177 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc176, i64 0, i64 0
  %211 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen178 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %211, i32 0, i32 1
  %212 = load i64, i64* %ivlen178, align 8
  %call179 = call i8* @memcpy(i8* noundef %add.ptr175, i8* noundef %arraydecay177, i64 noundef %212) #7
  %213 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %214 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len180 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %214, i32 0, i32 6
  %215 = load i64, i64* %data_len180, align 8
  %216 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen181 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %216, i32 0, i32 1
  %217 = load i64, i64* %ivlen181, align 8
  %218 = load i64, i64* %padlen, align 8
  %add182 = add i64 %218, 1
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %213, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 945, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.23, i64 0, i64 0), i64 noundef %215, i64 noundef %217, i64 noundef %add182) #6
  %219 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc183 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %219, i32 0, i32 11
  %220 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %iv_enc184 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %220, i32 0, i32 5
  %arraydecay185 = getelementptr inbounds [16 x i8], [16 x i8]* %iv_enc184, i64 0, i64 0
  %221 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen186 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %221, i32 0, i32 1
  %222 = load i64, i64* %ivlen186, align 8
  %223 = load i8*, i8** %data, align 8
  %224 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len187 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %224, i32 0, i32 6
  %225 = load i64, i64* %data_len187, align 8
  %226 = load i8*, i8** %data, align 8
  %call188 = call i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc183, i8* noundef %arraydecay185, i64 noundef %222, i8* noundef %223, i64 noundef %225, i8* noundef %226, i64* noundef %olen) #6
  store i32 %call188, i32* %ret132, align 4
  %cmp189 = icmp ne i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end172
  %227 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %228 = load i32, i32* %ret132, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %227, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1000, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %228) #6
  %229 = load i32, i32* %ret132, align 4
  store i32 %229, i32* %retval, align 4
  br label %return

if.end192:                                        ; preds = %if.end172
  %230 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len193 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %230, i32 0, i32 6
  %231 = load i64, i64* %data_len193, align 8
  %232 = load i64, i64* %olen, align 8
  %cmp194 = icmp ne i64 %231, %232
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end192
  %233 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %233, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1007, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end197:                                        ; preds = %if.end192
  %234 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen198 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %234, i32 0, i32 1
  %235 = load i64, i64* %ivlen198, align 8
  %236 = load i8*, i8** %data, align 8
  %idx.neg199 = sub i64 0, %235
  %add.ptr200 = getelementptr inbounds i8, i8* %236, i64 %idx.neg199
  store i8* %add.ptr200, i8** %data, align 8
  %237 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen201 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %237, i32 0, i32 1
  %238 = load i64, i64* %ivlen201, align 8
  %239 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset202 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %239, i32 0, i32 5
  %240 = load i64, i64* %data_offset202, align 8
  %sub203 = sub i64 %240, %238
  store i64 %sub203, i64* %data_offset202, align 8
  %241 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen204 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %241, i32 0, i32 1
  %242 = load i64, i64* %ivlen204, align 8
  %243 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len205 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %243, i32 0, i32 6
  %244 = load i64, i64* %data_len205, align 8
  %add206 = add i64 %244, %242
  store i64 %add206, i64* %data_len205, align 8
  %245 = load i32, i32* %auth_done, align 4
  %cmp207 = icmp eq i32 %245, 0
  br i1 %cmp207, label %if.then209, label %if.end264

if.then209:                                       ; preds = %if.end197
  %246 = load i64, i64* %post_avail, align 8
  %247 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen211 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %247, i32 0, i32 3
  %248 = load i64, i64* %maclen211, align 8
  %cmp212 = icmp ult i64 %246, %248
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %if.then209
  %249 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %249, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1035, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0)) #6
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end215:                                        ; preds = %if.then209
  %arraydecay216 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %250 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %251 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %tls_version217 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %251, i32 0, i32 10
  %252 = load i32, i32* %tls_version217, align 4
  %253 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %taglen218 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %253, i32 0, i32 4
  %254 = load i64, i64* %taglen218, align 8
  call void @ssl_extract_add_data_from_record(i8* noundef %arraydecay216, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %250, i32 noundef %252, i64 noundef %254) #6
  %255 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %255, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1043, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0)) #6
  %256 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %arraydecay219 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %257 = load i64, i64* %add_data_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %256, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1045, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay219, i64 noundef %257) #6
  %258 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc220 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %258, i32 0, i32 7
  %arraydecay221 = getelementptr inbounds [46 x i8], [46 x i8]* %add_data, i64 0, i64 0
  %259 = load i64, i64* %add_data_len, align 8
  %call222 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_enc220, i8* noundef %arraydecay221, i64 noundef %259) #6
  store i32 %call222, i32* %ret132, align 4
  %260 = load i32, i32* %ret132, align 4
  %cmp223 = icmp ne i32 %260, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end215
  br label %hmac_failed_etm_enabled

if.end226:                                        ; preds = %if.end215
  %261 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc227 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %261, i32 0, i32 7
  %262 = load i8*, i8** %data, align 8
  %263 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len228 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %263, i32 0, i32 6
  %264 = load i64, i64* %data_len228, align 8
  %call229 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %md_ctx_enc227, i8* noundef %262, i64 noundef %264) #6
  store i32 %call229, i32* %ret132, align 4
  %265 = load i32, i32* %ret132, align 4
  %cmp230 = icmp ne i32 %265, 0
  br i1 %cmp230, label %if.then232, label %if.end233

if.then232:                                       ; preds = %if.end226
  br label %hmac_failed_etm_enabled

if.end233:                                        ; preds = %if.end226
  %266 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc234 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %266, i32 0, i32 7
  %arraydecay235 = getelementptr inbounds [48 x i8], [48 x i8]* %mac210, i64 0, i64 0
  %call236 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %md_ctx_enc234, i8* noundef %arraydecay235) #6
  store i32 %call236, i32* %ret132, align 4
  %267 = load i32, i32* %ret132, align 4
  %cmp237 = icmp ne i32 %267, 0
  br i1 %cmp237, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end233
  br label %hmac_failed_etm_enabled

if.end240:                                        ; preds = %if.end233
  %268 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc241 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %268, i32 0, i32 7
  %call242 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %md_ctx_enc241) #6
  store i32 %call242, i32* %ret132, align 4
  %269 = load i32, i32* %ret132, align 4
  %cmp243 = icmp ne i32 %269, 0
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.end240
  br label %hmac_failed_etm_enabled

if.end246:                                        ; preds = %if.end240
  %270 = load i8*, i8** %data, align 8
  %271 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len247 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %271, i32 0, i32 6
  %272 = load i64, i64* %data_len247, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %270, i64 %272
  %arraydecay249 = getelementptr inbounds [48 x i8], [48 x i8]* %mac210, i64 0, i64 0
  %273 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen250 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %273, i32 0, i32 3
  %274 = load i64, i64* %maclen250, align 8
  %call251 = call i8* @memcpy(i8* noundef %add.ptr248, i8* noundef %arraydecay249, i64 noundef %274) #7
  %275 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen252 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %275, i32 0, i32 3
  %276 = load i64, i64* %maclen252, align 8
  %277 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len253 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %277, i32 0, i32 6
  %278 = load i64, i64* %data_len253, align 8
  %add254 = add i64 %278, %276
  store i64 %add254, i64* %data_len253, align 8
  %279 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen255 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %279, i32 0, i32 3
  %280 = load i64, i64* %maclen255, align 8
  %281 = load i64, i64* %post_avail, align 8
  %sub256 = sub i64 %281, %280
  store i64 %sub256, i64* %post_avail, align 8
  %282 = load i32, i32* %auth_done, align 4
  %inc257 = add nsw i32 %282, 1
  store i32 %inc257, i32* %auth_done, align 4
  br label %hmac_failed_etm_enabled

hmac_failed_etm_enabled:                          ; preds = %if.end246, %if.then245, %if.then239, %if.then232, %if.then225
  %arraydecay258 = getelementptr inbounds [48 x i8], [48 x i8]* %mac210, i64 0, i64 0
  %283 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %maclen259 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %283, i32 0, i32 3
  %284 = load i64, i64* %maclen259, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay258, i64 noundef %284) #6
  %285 = load i32, i32* %ret132, align 4
  %cmp260 = icmp ne i32 %285, 0
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %hmac_failed_etm_enabled
  %286 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %287 = load i32, i32* %ret132, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %286, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1098, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 noundef %287) #6
  %288 = load i32, i32* %ret132, align 4
  store i32 %288, i32* %retval, align 4
  br label %return

if.end263:                                        ; preds = %hmac_failed_etm_enabled
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end197
  br label %if.end266

if.else265:                                       ; preds = %lor.lhs.false129
  %289 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %289, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end266:                                        ; preds = %if.end264
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end126
  %290 = load i32, i32* %auth_done, align 4
  %cmp268 = icmp ne i32 %290, 1
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %if.end267
  %291 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %291, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1114, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end271:                                        ; preds = %if.end267
  %292 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %292, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1118, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end271, %if.then270, %if.else265, %if.then262, %if.then214, %if.then196, %if.then191, %if.then171, %if.then163, %if.then157, %if.then144, %if.then117, %if.then104, %if.then82, %if.then73, %if.then33, %if.then20, %if.then9, %if.then
  %293 = load i32, i32* %retval, align 4
  ret i32 %293
}

declare dso_local i32 @mbedtls_ssl_get_mode_from_transform(%struct.mbedtls_ssl_transform* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_extract_add_data_from_record(i8* noundef %add_data, i64* noundef %add_data_len, %struct.mbedtls_record* noundef %rec, i32 noundef %tls_version, i64 noundef %taglen) #0 {
entry:
  %add_data.addr = alloca i8*, align 8
  %add_data_len.addr = alloca i64*, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %tls_version.addr = alloca i32, align 4
  %taglen.addr = alloca i64, align 8
  %cur = alloca i8*, align 8
  %ad_len_field = alloca i64, align 8
  store i8* %add_data, i8** %add_data.addr, align 8
  store i64* %add_data_len, i64** %add_data_len.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  store i32 %tls_version, i32* %tls_version.addr, align 4
  store i64 %taglen, i64* %taglen.addr, align 8
  %0 = load i8*, i8** %add_data.addr, align 8
  store i8* %0, i8** %cur, align 8
  %1 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %1, i32 0, i32 6
  %2 = load i64, i64* %data_len, align 8
  store i64 %2, i64* %ad_len_field, align 8
  %3 = load i32, i32* %tls_version.addr, align 4
  %4 = load i64, i64* %taglen.addr, align 8
  %5 = load i8*, i8** %cur, align 8
  %6 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ctr, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef %arraydecay, i64 noundef 8) #7
  %7 = load i8*, i8** %cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %add.ptr, i8** %cur, align 8
  %8 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %8, i32 0, i32 1
  %9 = load i8, i8* %type, align 8
  %10 = load i8*, i8** %cur, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8
  %12 = load i8*, i8** %cur, align 8
  %13 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %ver = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %13, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 0
  %call2 = call i8* @memcpy(i8* noundef %12, i8* noundef %arraydecay1, i64 noundef 2) #7
  %14 = load i8*, i8** %cur, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr3, i8** %cur, align 8
  %15 = load i64, i64* %ad_len_field, align 8
  %shr = lshr i64 %15, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %16 = load i8*, i8** %cur, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %17 = load i64, i64* %ad_len_field, align 8
  %and4 = and i64 %17, 255
  %conv5 = trunc i64 %and4 to i8
  %18 = load i8*, i8** %cur, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv5, i8* %arrayidx6, align 1
  %19 = load i8*, i8** %cur, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr7, i8** %cur, align 8
  %20 = load i8*, i8** %cur, align 8
  %21 = load i8*, i8** %add_data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = load i64*, i64** %add_data_len.addr, align 8
  store i64 %sub.ptr.sub, i64* %22, align 8
  ret void
}

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_transform_aead_dynamic_iv_is_explicit(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %0, i32 0, i32 1
  %1 = load i64, i64* %ivlen, align 8
  %2 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %2, i32 0, i32 2
  %3 = load i64, i64* %fixed_ivlen, align 8
  %cmp = icmp ne i64 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_build_record_nonce(i8* noundef %dst_iv, i64 noundef %dst_iv_len, i8* noundef %fixed_iv, i64 noundef %fixed_iv_len, i8* noundef %dynamic_iv, i64 noundef %dynamic_iv_len) #0 {
entry:
  %dst_iv.addr = alloca i8*, align 8
  %dst_iv_len.addr = alloca i64, align 8
  %fixed_iv.addr = alloca i8*, align 8
  %fixed_iv_len.addr = alloca i64, align 8
  %dynamic_iv.addr = alloca i8*, align 8
  %dynamic_iv_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %dst_iv, i8** %dst_iv.addr, align 8
  store i64 %dst_iv_len, i64* %dst_iv_len.addr, align 8
  store i8* %fixed_iv, i8** %fixed_iv.addr, align 8
  store i64 %fixed_iv_len, i64* %fixed_iv_len.addr, align 8
  store i8* %dynamic_iv, i8** %dynamic_iv.addr, align 8
  store i64 %dynamic_iv_len, i64* %dynamic_iv_len.addr, align 8
  %0 = load i8*, i8** %dst_iv.addr, align 8
  %1 = load i64, i64* %dst_iv_len.addr, align 8
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %1) #7
  %2 = load i8*, i8** %dst_iv.addr, align 8
  %3 = load i8*, i8** %fixed_iv.addr, align 8
  %4 = load i64, i64* %fixed_iv_len.addr, align 8
  %call1 = call i8* @memcpy(i8* noundef %2, i8* noundef %3, i64 noundef %4) #7
  %5 = load i64, i64* %dst_iv_len.addr, align 8
  %6 = load i64, i64* %dynamic_iv_len.addr, align 8
  %sub = sub i64 %5, %6
  %7 = load i8*, i8** %dst_iv.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %sub
  store i8* %add.ptr, i8** %dst_iv.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %dynamic_iv_len.addr, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %dynamic_iv.addr, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i8*, i8** %dst_iv.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %15 to i32
  %xor = xor i32 %conv3, %conv
  %conv4 = trunc i32 %xor to i8
  store i8 %conv4, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @mbedtls_cipher_auth_encrypt_ext(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_cipher_auth_decrypt_ext(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @mbedtls_ct_size_mask_ge(i64 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ct_size_bool_eq(i64 noundef, i64 noundef) #1

declare dso_local i64 @mbedtls_ct_size_mask(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef, i8* noundef) #1

declare dso_local void @mbedtls_ct_memcpy_offset(i8* noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef %ssl, i64 noundef %nb_want) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %nb_want.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %in_buf_len = alloca i64, align 8
  %timeout = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 %nb_want, i64* %nb_want.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 16717, i64* %in_buf_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1800, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 9
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_recv, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 10
  %4 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout, align 8
  %cmp1 = icmp eq i32 (i8*, i8*, i64, i32)* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1805, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.46, i64 0, i64 0)) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %nb_want.addr, align 8
  %7 = load i64, i64* %in_buf_len, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 26
  %9 = load i8*, i8** %in_hdr, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 24
  %11 = load i8*, i8** %in_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %7, %sub.ptr.sub
  %cmp2 = icmp ugt i64 %6, %sub
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %12, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1811, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0)) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 3
  %15 = load i8, i8* %transport, align 1
  %conv = zext i8 %15 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %if.then7, label %if.else118

if.then7:                                         ; preds = %if.end4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 35
  %17 = load i64, i64* %next_record_offset, align 8
  %cmp8 = icmp ne i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end30

if.then10:                                        ; preds = %if.then7
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 33
  %19 = load i64, i64* %in_left, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 35
  %21 = load i64, i64* %next_record_offset11, align 8
  %cmp12 = icmp ult i64 %19, %21
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1834, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 35
  %24 = load i64, i64* %next_record_offset16, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 33
  %26 = load i64, i64* %in_left17, align 8
  %sub18 = sub i64 %26, %24
  store i64 %sub18, i64* %in_left17, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 33
  %28 = load i64, i64* %in_left19, align 8
  %cmp20 = icmp ne i64 %28, 0
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end15
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 35
  %31 = load i64, i64* %next_record_offset23, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1844, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0), i64 noundef %31) #6
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 26
  %33 = load i8*, i8** %in_hdr24, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 26
  %35 = load i8*, i8** %in_hdr25, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 35
  %37 = load i64, i64* %next_record_offset26, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %37
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 33
  %39 = load i64, i64* %in_left27, align 8
  %call = call i8* @memmove(i8* noundef %33, i8* noundef %add.ptr, i64 noundef %39) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end15
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 35
  store i64 0, i64* %next_record_offset29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.then7
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 33
  %43 = load i64, i64* %in_left31, align 8
  %44 = load i64, i64* %nb_want.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1855, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i64 noundef %43, i64 noundef %44) #6
  %45 = load i64, i64* %nb_want.addr, align 8
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 33
  %47 = load i64, i64* %in_left32, align 8
  %cmp33 = icmp ule i64 %45, %47
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1862, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end30
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left37 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 33
  %50 = load i64, i64* %in_left37, align 8
  %cmp38 = icmp ne i64 %50, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %51, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1873, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call42 = call i32 @mbedtls_ssl_check_timer(%struct.mbedtls_ssl_context* noundef %52) #6
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end41
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1884, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0)) #6
  store i32 -26624, i32* %ret, align 4
  br label %if.end77

if.else:                                          ; preds = %if.end41
  %54 = load i64, i64* %in_buf_len, align 8
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 26
  %56 = load i8*, i8** %in_hdr46, align 8
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 24
  %58 = load i8*, i8** %in_buf47, align 8
  %sub.ptr.lhs.cast48 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast49 = ptrtoint i8* %58 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %sub51 = sub i64 %54, %sub.ptr.sub50
  store i64 %sub51, i64* %len, align 8
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call52 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %59) #6
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 16
  %61 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_timeout = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %61, i32 0, i32 33
  %62 = load i32, i32* %retransmit_timeout, align 4
  store i32 %62, i32* %timeout, align 4
  br label %if.end58

if.else56:                                        ; preds = %if.else
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 0
  %64 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf57, align 8
  %read_timeout = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %64, i32 0, i32 49
  %65 = load i32, i32* %read_timeout, align 8
  store i32 %65, i32* %timeout, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then55
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %67 = load i32, i32* %timeout, align 4
  %conv59 = zext i32 %67 to i64
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %66, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1896, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i64 noundef %conv59) #6
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 10
  %69 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout60, align 8
  %cmp61 = icmp ne i32 (i8*, i8*, i64, i32)* %69, null
  br i1 %cmp61, label %if.then63, label %if.else67

if.then63:                                        ; preds = %if.end58
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout64 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 10
  %71 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout64, align 8
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 11
  %73 = load i8*, i8** %p_bio, align 8
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr65 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %74, i32 0, i32 26
  %75 = load i8*, i8** %in_hdr65, align 8
  %76 = load i64, i64* %len, align 8
  %77 = load i32, i32* %timeout, align 4
  %call66 = call i32 %71(i8* noundef %73, i8* noundef %75, i64 noundef %76, i32 noundef %77) #6
  store i32 %call66, i32* %ret, align 4
  br label %if.end72

if.else67:                                        ; preds = %if.end58
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %78, i32 0, i32 9
  %79 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_recv68, align 8
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio69 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 11
  %81 = load i8*, i8** %p_bio69, align 8
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr70 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 26
  %83 = load i8*, i8** %in_hdr70, align 8
  %84 = load i64, i64* %len, align 8
  %call71 = call i32 %79(i8* noundef %81, i8* noundef %83, i64 noundef %84) #6
  store i32 %call71, i32* %ret, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then63
  %85 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %86 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %85, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1904, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 noundef %86) #6
  %87 = load i32, i32* %ret, align 4
  %cmp73 = icmp eq i32 %87, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 -29312, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end72
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then45
  %88 = load i32, i32* %ret, align 4
  %cmp78 = icmp eq i32 %88, -26624
  br i1 %cmp78, label %if.then80, label %if.end111

if.then80:                                        ; preds = %if.end77
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %89, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1912, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0)) #6
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %90, i32 noundef 0) #6
  %91 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call81 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %91) #6
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else95

if.then84:                                        ; preds = %if.then80
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call85 = call i32 @ssl_double_retransmit_timeout(%struct.mbedtls_ssl_context* noundef %92) #6
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %93, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1919, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0)) #6
  store i32 -26624, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then84
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call90 = call i32 @mbedtls_ssl_resend(%struct.mbedtls_ssl_context* noundef %94) #6
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end89
  %95 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %96 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %95, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1925, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i32 noundef %96) #6
  %97 = load i32, i32* %ret, align 4
  store i32 %97, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.end89
  store i32 -26880, i32* %retval, align 4
  br label %return

if.else95:                                        ; preds = %if.then80
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf96 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %98, i32 0, i32 0
  %99 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf96, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %99, i32 0, i32 2
  %100 = load i8, i8* %endpoint, align 8
  %conv97 = zext i8 %100 to i32
  %cmp98 = icmp eq i32 %conv97, 1
  br i1 %cmp98, label %land.lhs.true100, label %if.end109

land.lhs.true100:                                 ; preds = %if.else95
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %101, i32 0, i32 2
  %102 = load i32, i32* %renego_status, align 4
  %cmp101 = icmp eq i32 %102, 3
  br i1 %cmp101, label %if.then103, label %if.end109

if.then103:                                       ; preds = %land.lhs.true100
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call104 = call i32 @mbedtls_ssl_resend_hello_request(%struct.mbedtls_ssl_context* noundef %103) #6
  store i32 %call104, i32* %ret, align 4
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.then103
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %105 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %104, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1938, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 noundef %105) #6
  %106 = load i32, i32* %ret, align 4
  store i32 %106, i32* %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.then103
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end109:                                        ; preds = %land.lhs.true100, %if.else95
  br label %if.end110

if.end110:                                        ; preds = %if.end109
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end77
  %107 = load i32, i32* %ret, align 4
  %cmp112 = icmp slt i32 %107, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end111
  %108 = load i32, i32* %ret, align 4
  store i32 %108, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end111
  %109 = load i32, i32* %ret, align 4
  %conv116 = sext i32 %109 to i64
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 33
  store i64 %conv116, i64* %in_left117, align 8
  br label %if.end167

if.else118:                                       ; preds = %if.end4
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %112 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left119 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %112, i32 0, i32 33
  %113 = load i64, i64* %in_left119, align 8
  %114 = load i64, i64* %nb_want.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %111, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1957, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i64 noundef %113, i64 noundef %114) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end164, %if.else118
  %115 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left120 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %115, i32 0, i32 33
  %116 = load i64, i64* %in_left120, align 8
  %117 = load i64, i64* %nb_want.addr, align 8
  %cmp121 = icmp ult i64 %116, %117
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %118 = load i64, i64* %nb_want.addr, align 8
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left123 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %119, i32 0, i32 33
  %120 = load i64, i64* %in_left123, align 8
  %sub124 = sub i64 %118, %120
  store i64 %sub124, i64* %len, align 8
  %121 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call125 = call i32 @mbedtls_ssl_check_timer(%struct.mbedtls_ssl_context* noundef %121) #6
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.else129

if.then128:                                       ; preds = %while.body
  store i32 -26624, i32* %ret, align 4
  br label %if.end150

if.else129:                                       ; preds = %while.body
  %122 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout130 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %122, i32 0, i32 10
  %123 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout130, align 8
  %cmp131 = icmp ne i32 (i8*, i8*, i64, i32)* %123, null
  br i1 %cmp131, label %if.then133, label %if.else142

if.then133:                                       ; preds = %if.else129
  %124 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv_timeout134 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %124, i32 0, i32 10
  %125 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %f_recv_timeout134, align 8
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio135 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %126, i32 0, i32 11
  %127 = load i8*, i8** %p_bio135, align 8
  %128 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr136 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %128, i32 0, i32 26
  %129 = load i8*, i8** %in_hdr136, align 8
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left137 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %130, i32 0, i32 33
  %131 = load i64, i64* %in_left137, align 8
  %add.ptr138 = getelementptr inbounds i8, i8* %129, i64 %131
  %132 = load i64, i64* %len, align 8
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf139 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %133, i32 0, i32 0
  %134 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf139, align 8
  %read_timeout140 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %134, i32 0, i32 49
  %135 = load i32, i32* %read_timeout140, align 8
  %call141 = call i32 %125(i8* noundef %127, i8* noundef %add.ptr138, i64 noundef %132, i32 noundef %135) #6
  store i32 %call141, i32* %ret, align 4
  br label %if.end149

if.else142:                                       ; preds = %if.else129
  %136 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_recv143 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %136, i32 0, i32 9
  %137 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_recv143, align 8
  %138 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio144 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %138, i32 0, i32 11
  %139 = load i8*, i8** %p_bio144, align 8
  %140 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr145 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %140, i32 0, i32 26
  %141 = load i8*, i8** %in_hdr145, align 8
  %142 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left146 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %142, i32 0, i32 33
  %143 = load i64, i64* %in_left146, align 8
  %add.ptr147 = getelementptr inbounds i8, i8* %141, i64 %143
  %144 = load i64, i64* %len, align 8
  %call148 = call i32 %137(i8* noundef %139, i8* noundef %add.ptr147, i64 noundef %144) #6
  store i32 %call148, i32* %ret, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else142, %if.then133
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then128
  %145 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %146 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left151 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %146, i32 0, i32 33
  %147 = load i64, i64* %in_left151, align 8
  %148 = load i64, i64* %nb_want.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %145, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1982, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i64 noundef %147, i64 noundef %148) #6
  %149 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %150 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %149, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1983, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 noundef %150) #6
  %151 = load i32, i32* %ret, align 4
  %cmp152 = icmp eq i32 %151, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end150
  store i32 -29312, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.end150
  %152 = load i32, i32* %ret, align 4
  %cmp156 = icmp slt i32 %152, 0
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end155
  %153 = load i32, i32* %ret, align 4
  store i32 %153, i32* %retval, align 4
  br label %return

if.end159:                                        ; preds = %if.end155
  %154 = load i32, i32* %ret, align 4
  %conv160 = sext i32 %154 to i64
  %155 = load i64, i64* %len, align 8
  %cmp161 = icmp ugt i64 %conv160, %155
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end159
  %156 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %157 = load i32, i32* %ret, align 4
  %158 = load i64, i64* %len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %156, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1995, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i64 0, i64 0), i32 noundef %157, i64 noundef %158) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end159
  %159 = load i32, i32* %ret, align 4
  %conv165 = sext i32 %159 to i64
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left166 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %160, i32 0, i32 33
  %161 = load i64, i64* %in_left166, align 8
  %add = add i64 %161, %conv165
  store i64 %add, i64* %in_left166, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end167

if.end167:                                        ; preds = %while.end, %if.end115
  %162 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %162, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2003, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end167, %if.then163, %if.then158, %if.then154, %if.then114, %if.end108, %if.then107, %if.end94, %if.then93, %if.then88, %if.then75, %if.then40, %if.then35, %if.then14, %if.then3, %if.then
  %163 = load i32, i32* %retval, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #2

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
define internal i32 @ssl_double_retransmit_timeout(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %new_timeout = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_timeout = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 33
  %2 = load i32, i32* %retransmit_timeout, align 4
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %hs_timeout_max = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 51
  %5 = load i32, i32* %hs_timeout_max, align 8
  %cmp = icmp uge i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %retransmit_timeout2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 33
  %8 = load i32, i32* %retransmit_timeout2, align 4
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %hs_timeout_min = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 50
  %11 = load i32, i32* %hs_timeout_min, align 4
  %cmp4 = icmp ne i32 %8, %11
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %mtu = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 40
  store i16 508, i16* %mtu, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 16
  %16 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake7, align 8
  %mtu8 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %16, i32 0, i32 40
  %17 = load i16, i16* %mtu8, align 8
  %conv = zext i16 %17 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0), i32 noundef %conv) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 16
  %19 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %retransmit_timeout11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %19, i32 0, i32 33
  %20 = load i32, i32* %retransmit_timeout11, align 4
  %mul = mul i32 2, %20
  store i32 %mul, i32* %new_timeout, align 4
  %21 = load i32, i32* %new_timeout, align 4
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 16
  %23 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake12, align 8
  %retransmit_timeout13 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %23, i32 0, i32 33
  %24 = load i32, i32* %retransmit_timeout13, align 4
  %cmp14 = icmp ult i32 %21, %24
  br i1 %cmp14, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %25 = load i32, i32* %new_timeout, align 4
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf16, align 8
  %hs_timeout_max17 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %27, i32 0, i32 51
  %28 = load i32, i32* %hs_timeout_max17, align 8
  %cmp18 = icmp ugt i32 %25, %28
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %lor.lhs.false, %if.end9
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 0
  %30 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf21, align 8
  %hs_timeout_max22 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %30, i32 0, i32 51
  %31 = load i32, i32* %hs_timeout_max22, align 8
  store i32 %31, i32* %new_timeout, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %lor.lhs.false
  %32 = load i32, i32* %new_timeout, align 4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake24, align 8
  %retransmit_timeout25 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 33
  store i32 %32, i32* %retransmit_timeout25, align 4
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 16
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake26, align 8
  %retransmit_timeout27 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 33
  %38 = load i32, i32* %retransmit_timeout27, align 4
  %conv28 = zext i32 %38 to i64
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.142, i64 0, i64 0), i64 noundef %conv28) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_resend(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2187, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %1) #6
  store i32 %call, i32* %ret, align 4
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2191, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #6
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_ssl_resend_hello_request(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2016, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_send = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_send, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2021, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.46, i64 0, i64 0)) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 53
  %5 = load i64, i64* %out_left, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2028, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end3
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 53
  %8 = load i64, i64* %out_left4, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_out_hdr_len(%struct.mbedtls_ssl_context* noundef %10) #6
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 52
  %12 = load i64, i64* %out_msglen, align 8
  %add = add i64 %call, %12
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 53
  %14 = load i64, i64* %out_left6, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2036, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i64 0, i64 0), i64 noundef %add, i64 noundef %14) #6
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 47
  %16 = load i8*, i8** %out_hdr, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 53
  %18 = load i64, i64* %out_left7, align 8
  %idx.neg = sub i64 0, %18
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr, i8** %buf, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_send8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 8
  %20 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_send8, align 8
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 11
  %22 = load i8*, i8** %p_bio, align 8
  %23 = load i8*, i8** %buf, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 53
  %25 = load i64, i64* %out_left9, align 8
  %call10 = call i32 %20(i8* noundef %22, i8* noundef %23, i64 noundef %25) #6
  store i32 %call10, i32* %ret, align 4
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2041, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef %27) #6
  %28 = load i32, i32* %ret, align 4
  %cmp11 = icmp sle i32 %28, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %while.body
  %30 = load i32, i32* %ret, align 4
  %conv = sext i32 %30 to i64
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 53
  %32 = load i64, i64* %out_left14, align 8
  %cmp15 = icmp ugt i64 %conv, %32
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load i32, i32* %ret, align 4
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 53
  %36 = load i64, i64* %out_left18, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2050, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.63, i64 0, i64 0), i32 noundef %34, i64 noundef %36) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  %37 = load i32, i32* %ret, align 4
  %conv20 = sext i32 %37 to i64
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 53
  %39 = load i64, i64* %out_left21, align 8
  %sub = sub i64 %39, %conv20
  store i64 %sub, i64* %out_left21, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 0
  %41 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %41, i32 0, i32 3
  %42 = load i8, i8* %transport, align 1
  %conv22 = zext i8 %42 to i32
  %cmp23 = icmp eq i32 %conv22, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.end
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 45
  %44 = load i8*, i8** %out_buf, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr26 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 47
  store i8* %44, i8** %out_hdr26, align 8
  br label %if.end30

if.else:                                          ; preds = %while.end
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 45
  %47 = load i8*, i8** %out_buf27, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %47, i64 8
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 47
  store i8* %add.ptr28, i8** %out_hdr29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 18
  %51 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %49, %struct.mbedtls_ssl_transform* noundef %51) #6
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2069, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then17, %if.then12, %if.then2, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_ssl_out_hdr_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 49
  %1 = load i8*, i8** %out_iv, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 47
  %3 = load i8*, i8** %out_hdr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 3
  %2 = load i8, i8* %transport, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 47
  %4 = load i8*, i8** %out_hdr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 46
  store i8* %add.ptr, i8** %out_ctr, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 46
  %7 = load i8*, i8** %out_ctr2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 48
  store i8* %add.ptr3, i8** %out_len, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 48
  %10 = load i8*, i8** %out_len4, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 49
  store i8* %add.ptr5, i8** %out_iv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 47
  %13 = load i8*, i8** %out_hdr6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 48
  store i8* %add.ptr7, i8** %out_len8, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 47
  %16 = load i8*, i8** %out_hdr9, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 49
  store i8* %add.ptr10, i8** %out_iv11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 49
  %19 = load i8*, i8** %out_iv12, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 50
  store i8* %19, i8** %out_msg, align 8
  %21 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cmp13 = icmp ne %struct.mbedtls_ssl_transform* %21, null
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %22 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %call = call i64 @ssl_transform_get_explicit_iv_len(%struct.mbedtls_ssl_transform* noundef %22) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 50
  %24 = load i8*, i8** %out_msg16, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %24, i64 %call
  store i8* %add.ptr17, i8** %out_msg16, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_flight_free(%struct.mbedtls_ssl_flight_item* noundef %flight) #0 {
entry:
  %flight.addr = alloca %struct.mbedtls_ssl_flight_item*, align 8
  %cur = alloca %struct.mbedtls_ssl_flight_item*, align 8
  %next = alloca %struct.mbedtls_ssl_flight_item*, align 8
  store %struct.mbedtls_ssl_flight_item* %flight, %struct.mbedtls_ssl_flight_item** %flight.addr, align 8
  %0 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight.addr, align 8
  store %struct.mbedtls_ssl_flight_item* %0, %struct.mbedtls_ssl_flight_item** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_flight_item* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next1 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %2, i32 0, i32 3
  %3 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next1, align 8
  store %struct.mbedtls_ssl_flight_item* %3, %struct.mbedtls_ssl_flight_item** %next, align 8
  %4 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %4, i32 0, i32 0
  %5 = load i8*, i8** %p, align 8
  call void @free(i8* noundef %5) #7
  %6 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %7 = bitcast %struct.mbedtls_ssl_flight_item* %6 to i8*
  call void @free(i8* noundef %7) #7
  %8 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next, align 8
  store %struct.mbedtls_ssl_flight_item* %8, %struct.mbedtls_ssl_flight_item** %cur, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %max_frag_len = alloca i64, align 8
  %cur = alloca %struct.mbedtls_ssl_flight_item*, align 8
  %is_finished = alloca i32, align 4
  %force_flush = alloca i32, align 4
  %p71 = alloca i8*, align 8
  %hs_len = alloca i64, align 8
  %frag_off = alloca i64, align 8
  %rem_len = alloca i64, align 8
  %cur_hs_frag_len = alloca i64, align 8
  %max_hs_frag_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2206, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 16
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 7
  %3 = load i8, i8* %retransmit_state, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2210, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0)) #6
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %flight = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 34
  %7 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 16
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %cur_msg = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 35
  store %struct.mbedtls_ssl_flight_item* %7, %struct.mbedtls_ssl_flight_item** %cur_msg, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %flight5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 34
  %12 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight5, align 8
  %p = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %12, i32 0, i32 0
  %13 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 12
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 16
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %cur_msg_p = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %15, i32 0, i32 36
  store i8* %add.ptr, i8** %cur_msg_p, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_swap_epochs(%struct.mbedtls_ssl_context* noundef %16) #6
  store i32 %call, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 16
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %retransmit_state11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 7
  store i8 1, i8* %retransmit_state11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end184, %if.end98, %if.end60, %if.end12
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake13, align 8
  %cur_msg14 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 35
  %23 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur_msg14, align 8
  %cmp15 = icmp ne %struct.mbedtls_ssl_flight_item* %23, null
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 16
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake17, align 8
  %cur_msg18 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 35
  %26 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur_msg18, align 8
  store %struct.mbedtls_ssl_flight_item* %26, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %27 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %type = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %27, i32 0, i32 2
  %28 = load i8, i8* %type, align 8
  %conv19 = zext i8 %28 to i32
  %cmp20 = icmp eq i32 %conv19, 22
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.body
  %29 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %29, i32 0, i32 0
  %30 = load i8*, i8** %p22, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %31 to i32
  %cmp24 = icmp eq i32 %conv23, 20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %32 = phi i1 [ false, %while.body ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %is_finished, align 4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %disable_datagram_packing = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 44
  %34 = load i8, i8* %disable_datagram_packing, align 8
  %conv26 = zext i8 %34 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  %35 = zext i1 %cmp27 to i64
  %cond = select i1 %cmp27, i32 1, i32 0
  store i32 %cond, i32* %force_flush, align 4
  %36 = load i32, i32* %is_finished, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %land.end
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake29 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 16
  %38 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake29, align 8
  %cur_msg_p30 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %38, i32 0, i32 36
  %39 = load i8*, i8** %cur_msg_p30, align 8
  %40 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p31 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %40, i32 0, i32 0
  %41 = load i8*, i8** %p31, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %41, i64 12
  %cmp33 = icmp eq i8* %39, %add.ptr32
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %land.lhs.true
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2238, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0)) #6
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call36 = call i32 @ssl_swap_epochs(%struct.mbedtls_ssl_context* noundef %43) #6
  store i32 %call36, i32* %ret, align 4
  %44 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %44, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then35
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %land.end
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call42 = call i32 @ssl_get_remaining_payload_in_datagram(%struct.mbedtls_ssl_context* noundef %46) #6
  store i32 %call42, i32* %ret, align 4
  %47 = load i32, i32* %ret, align 4
  %cmp43 = icmp slt i32 %47, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end41
  %49 = load i32, i32* %ret, align 4
  %conv47 = sext i32 %49 to i64
  store i64 %conv47, i64* %max_frag_len, align 8
  %50 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %type48 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %50, i32 0, i32 2
  %51 = load i8, i8* %type48, align 8
  %conv49 = zext i8 %51 to i32
  %cmp50 = icmp eq i32 %conv49, 20
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end46
  %52 = load i64, i64* %max_frag_len, align 8
  %cmp53 = icmp eq i64 %52, 0
  br i1 %cmp53, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.then52
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call56 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %53) #6
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then55
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then55
  br label %while.cond, !llvm.loop !11

if.end61:                                         ; preds = %if.then52
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 50
  %56 = load i8*, i8** %out_msg, align 8
  %57 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p62 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %57, i32 0, i32 0
  %58 = load i8*, i8** %p62, align 8
  %59 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %len = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %59, i32 0, i32 1
  %60 = load i64, i64* %len, align 8
  %call63 = call i8* @memcpy(i8* noundef %56, i8* noundef %58, i64 noundef %60) #7
  %61 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %len64 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %61, i32 0, i32 1
  %62 = load i64, i64* %len64, align 8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 52
  store i64 %62, i64* %out_msglen, align 8
  %64 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %type65 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %64, i32 0, i32 2
  %65 = load i8, i8* %type65, align 8
  %conv66 = zext i8 %65 to i32
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 51
  store i32 %conv66, i32* %out_msgtype, align 8
  %67 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %len67 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %67, i32 0, i32 1
  %68 = load i64, i64* %len67, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake68 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 16
  %70 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake68, align 8
  %cur_msg_p69 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %70, i32 0, i32 36
  %71 = load i8*, i8** %cur_msg_p69, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %71, i64 %68
  store i8* %add.ptr70, i8** %cur_msg_p69, align 8
  br label %if.end153

if.else:                                          ; preds = %if.end46
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake72 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 16
  %73 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake72, align 8
  %cur_msg_p73 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %73, i32 0, i32 36
  %74 = load i8*, i8** %cur_msg_p73, align 8
  store i8* %74, i8** %p71, align 8
  %75 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %len74 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %75, i32 0, i32 1
  %76 = load i64, i64* %len74, align 8
  %sub = sub i64 %76, 12
  store i64 %sub, i64* %hs_len, align 8
  %77 = load i8*, i8** %p71, align 8
  %78 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p75 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %78, i32 0, i32 0
  %79 = load i8*, i8** %p75, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %79, i64 12
  %sub.ptr.lhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr76 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %frag_off, align 8
  %80 = load i64, i64* %hs_len, align 8
  %81 = load i64, i64* %frag_off, align 8
  %sub77 = sub i64 %80, %81
  store i64 %sub77, i64* %rem_len, align 8
  %82 = load i64, i64* %max_frag_len, align 8
  %cmp78 = icmp ult i64 %82, 12
  br i1 %cmp78, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %83 = load i64, i64* %max_frag_len, align 8
  %cmp80 = icmp eq i64 %83, 12
  br i1 %cmp80, label %land.lhs.true82, label %if.end99

land.lhs.true82:                                  ; preds = %lor.lhs.false
  %84 = load i64, i64* %hs_len, align 8
  %cmp83 = icmp ne i64 %84, 0
  br i1 %cmp83, label %if.then85, label %if.end99

if.then85:                                        ; preds = %land.lhs.true82, %if.else
  %85 = load i32, i32* %is_finished, align 4
  %tobool86 = icmp ne i32 %85, 0
  br i1 %tobool86, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.then85
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call88 = call i32 @ssl_swap_epochs(%struct.mbedtls_ssl_context* noundef %86) #6
  store i32 %call88, i32* %ret, align 4
  %87 = load i32, i32* %ret, align 4
  %cmp89 = icmp ne i32 %87, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  %88 = load i32, i32* %ret, align 4
  store i32 %88, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then87
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then85
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call94 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %89) #6
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end93
  %90 = load i32, i32* %ret, align 4
  store i32 %90, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.end93
  br label %while.cond, !llvm.loop !11

if.end99:                                         ; preds = %land.lhs.true82, %lor.lhs.false
  %91 = load i64, i64* %max_frag_len, align 8
  %sub100 = sub i64 %91, 12
  store i64 %sub100, i64* %max_hs_frag_len, align 8
  %92 = load i64, i64* %rem_len, align 8
  %93 = load i64, i64* %max_hs_frag_len, align 8
  %cmp101 = icmp ugt i64 %92, %93
  br i1 %cmp101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end99
  %94 = load i64, i64* %max_hs_frag_len, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end99
  %95 = load i64, i64* %rem_len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond103 = phi i64 [ %94, %cond.true ], [ %95, %cond.false ]
  store i64 %cond103, i64* %cur_hs_frag_len, align 8
  %96 = load i64, i64* %frag_off, align 8
  %cmp104 = icmp eq i64 %96, 0
  br i1 %cmp104, label %land.lhs.true106, label %if.end112

land.lhs.true106:                                 ; preds = %cond.end
  %97 = load i64, i64* %cur_hs_frag_len, align 8
  %98 = load i64, i64* %hs_len, align 8
  %cmp107 = icmp ne i64 %97, %98
  br i1 %cmp107, label %if.then109, label %if.end112

if.then109:                                       ; preds = %land.lhs.true106
  %99 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %100 = load i64, i64* %cur_hs_frag_len, align 8
  %conv110 = trunc i64 %100 to i32
  %101 = load i64, i64* %max_hs_frag_len, align 8
  %conv111 = trunc i64 %101 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %99, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2298, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv110, i32 noundef %conv111) #6
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %land.lhs.true106, %cond.end
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg113 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %102, i32 0, i32 50
  %103 = load i8*, i8** %out_msg113, align 8
  %104 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p114 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %104, i32 0, i32 0
  %105 = load i8*, i8** %p114, align 8
  %call115 = call i8* @memcpy(i8* noundef %103, i8* noundef %105, i64 noundef 6) #7
  %106 = load i64, i64* %frag_off, align 8
  %shr = lshr i64 %106, 16
  %and = and i64 %shr, 255
  %conv116 = trunc i64 %and to i8
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %107, i32 0, i32 50
  %108 = load i8*, i8** %out_msg117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %108, i64 6
  store i8 %conv116, i8* %arrayidx118, align 1
  %109 = load i64, i64* %frag_off, align 8
  %shr119 = lshr i64 %109, 8
  %and120 = and i64 %shr119, 255
  %conv121 = trunc i64 %and120 to i8
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg122 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 50
  %111 = load i8*, i8** %out_msg122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %111, i64 7
  store i8 %conv121, i8* %arrayidx123, align 1
  %112 = load i64, i64* %frag_off, align 8
  %and124 = and i64 %112, 255
  %conv125 = trunc i64 %and124 to i8
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg126 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %113, i32 0, i32 50
  %114 = load i8*, i8** %out_msg126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %114, i64 8
  store i8 %conv125, i8* %arrayidx127, align 1
  %115 = load i64, i64* %cur_hs_frag_len, align 8
  %shr128 = lshr i64 %115, 16
  %and129 = and i64 %shr128, 255
  %conv130 = trunc i64 %and129 to i8
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg131 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %116, i32 0, i32 50
  %117 = load i8*, i8** %out_msg131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %117, i64 9
  store i8 %conv130, i8* %arrayidx132, align 1
  %118 = load i64, i64* %cur_hs_frag_len, align 8
  %shr133 = lshr i64 %118, 8
  %and134 = and i64 %shr133, 255
  %conv135 = trunc i64 %and134 to i8
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg136 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %119, i32 0, i32 50
  %120 = load i8*, i8** %out_msg136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %120, i64 10
  store i8 %conv135, i8* %arrayidx137, align 1
  %121 = load i64, i64* %cur_hs_frag_len, align 8
  %and138 = and i64 %121, 255
  %conv139 = trunc i64 %and138 to i8
  %122 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg140 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %122, i32 0, i32 50
  %123 = load i8*, i8** %out_msg140, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %123, i64 11
  store i8 %conv139, i8* %arrayidx141, align 1
  %124 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %125 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg142 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %125, i32 0, i32 50
  %126 = load i8*, i8** %out_msg142, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %124, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2314, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i8* noundef %126, i64 noundef 12) #6
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg143 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %127, i32 0, i32 50
  %128 = load i8*, i8** %out_msg143, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %128, i64 12
  %129 = load i8*, i8** %p71, align 8
  %130 = load i64, i64* %cur_hs_frag_len, align 8
  %call145 = call i8* @memcpy(i8* noundef %add.ptr144, i8* noundef %129, i64 noundef %130) #7
  %131 = load i64, i64* %cur_hs_frag_len, align 8
  %add = add i64 %131, 12
  %132 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen146 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %132, i32 0, i32 52
  store i64 %add, i64* %out_msglen146, align 8
  %133 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %type147 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %133, i32 0, i32 2
  %134 = load i8, i8* %type147, align 8
  %conv148 = zext i8 %134 to i32
  %135 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype149 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %135, i32 0, i32 51
  store i32 %conv148, i32* %out_msgtype149, align 8
  %136 = load i64, i64* %cur_hs_frag_len, align 8
  %137 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake150 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %137, i32 0, i32 16
  %138 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake150, align 8
  %cur_msg_p151 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %138, i32 0, i32 36
  %139 = load i8*, i8** %cur_msg_p151, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %139, i64 %136
  store i8* %add.ptr152, i8** %cur_msg_p151, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.end112, %if.end61
  %140 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake154 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %140, i32 0, i32 16
  %141 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake154, align 8
  %cur_msg_p155 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %141, i32 0, i32 36
  %142 = load i8*, i8** %cur_msg_p155, align 8
  %143 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %p156 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %143, i32 0, i32 0
  %144 = load i8*, i8** %p156, align 8
  %145 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %len157 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %145, i32 0, i32 1
  %146 = load i64, i64* %len157, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %144, i64 %146
  %cmp159 = icmp uge i8* %142, %add.ptr158
  br i1 %cmp159, label %if.then161, label %if.end179

if.then161:                                       ; preds = %if.end153
  %147 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %147, i32 0, i32 3
  %148 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next, align 8
  %cmp162 = icmp ne %struct.mbedtls_ssl_flight_item* %148, null
  br i1 %cmp162, label %if.then164, label %if.else173

if.then164:                                       ; preds = %if.then161
  %149 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next165 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %149, i32 0, i32 3
  %150 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next165, align 8
  %151 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake166 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %151, i32 0, i32 16
  %152 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake166, align 8
  %cur_msg167 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %152, i32 0, i32 35
  store %struct.mbedtls_ssl_flight_item* %150, %struct.mbedtls_ssl_flight_item** %cur_msg167, align 8
  %153 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next168 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %153, i32 0, i32 3
  %154 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next168, align 8
  %p169 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %154, i32 0, i32 0
  %155 = load i8*, i8** %p169, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %155, i64 12
  %156 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake171 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %156, i32 0, i32 16
  %157 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake171, align 8
  %cur_msg_p172 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %157, i32 0, i32 36
  store i8* %add.ptr170, i8** %cur_msg_p172, align 8
  br label %if.end178

if.else173:                                       ; preds = %if.then161
  %158 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake174 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %158, i32 0, i32 16
  %159 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake174, align 8
  %cur_msg175 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %159, i32 0, i32 35
  store %struct.mbedtls_ssl_flight_item* null, %struct.mbedtls_ssl_flight_item** %cur_msg175, align 8
  %160 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake176 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %160, i32 0, i32 16
  %161 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake176, align 8
  %cur_msg_p177 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %161, i32 0, i32 36
  store i8* null, i8** %cur_msg_p177, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.else173, %if.then164
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end153
  %162 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %163 = load i32, i32* %force_flush, align 4
  %call180 = call i32 @mbedtls_ssl_write_record(%struct.mbedtls_ssl_context* noundef %162, i32 noundef %163) #6
  store i32 %call180, i32* %ret, align 4
  %cmp181 = icmp ne i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end179
  %164 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %165 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %164, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2343, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0), i32 noundef %165) #6
  %166 = load i32, i32* %ret, align 4
  store i32 %166, i32* %retval, align 4
  br label %return

if.end184:                                        ; preds = %if.end179
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %167 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call185 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %167) #6
  store i32 %call185, i32* %ret, align 4
  %cmp186 = icmp ne i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %while.end
  %168 = load i32, i32* %ret, align 4
  store i32 %168, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %while.end
  %169 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call190 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %169) #6
  %cmp191 = icmp eq i32 %call190, 1
  br i1 %cmp191, label %if.then193, label %if.else196

if.then193:                                       ; preds = %if.end189
  %170 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake194 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %170, i32 0, i32 16
  %171 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake194, align 8
  %retransmit_state195 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %171, i32 0, i32 7
  store i8 3, i8* %retransmit_state195, align 1
  br label %if.end200

if.else196:                                       ; preds = %if.end189
  %172 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake197 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %172, i32 0, i32 16
  %173 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake197, align 8
  %retransmit_state198 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %173, i32 0, i32 7
  store i8 2, i8* %retransmit_state198, align 1
  %174 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %175 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake199 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %175, i32 0, i32 16
  %176 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake199, align 8
  %retransmit_timeout = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %176, i32 0, i32 33
  %177 = load i32, i32* %retransmit_timeout, align 4
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %174, i32 noundef %177) #6
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then193
  %178 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %178, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2360, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end200, %if.then188, %if.then183, %if.then97, %if.then91, %if.then59, %if.then45, %if.then39, %if.then9
  %179 = load i32, i32* %retval, align 4
  ret i32 %179
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_swap_epochs(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %tmp_transform = alloca %struct.mbedtls_ssl_transform*, align 8
  %tmp_out_ctr = alloca [8 x i8], align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 18
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %alt_transform_out = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 38
  %4 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %alt_transform_out, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_transform* %1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2156, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.143, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2160, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i64 0, i64 0)) #6
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 18
  %8 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out1, align 8
  store %struct.mbedtls_ssl_transform* %8, %struct.mbedtls_ssl_transform** %tmp_transform, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %alt_transform_out3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 38
  %11 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %alt_transform_out3, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 18
  store %struct.mbedtls_ssl_transform* %11, %struct.mbedtls_ssl_transform** %transform_out4, align 8
  %13 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %tmp_transform, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 16
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %alt_transform_out6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %15, i32 0, i32 38
  store %struct.mbedtls_ssl_transform* %13, %struct.mbedtls_ssl_transform** %alt_transform_out6, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmp_out_ctr, i64 0, i64 0
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 54
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %arraydecay7, i64 noundef 8) #7
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 54
  %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr8, i64 0, i64 0
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 16
  %19 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %alt_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %19, i32 0, i32 39
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %alt_out_ctr, i64 0, i64 0
  %call12 = call i8* @memcpy(i8* noundef %arraydecay9, i8* noundef %arraydecay11, i64 noundef 8) #7
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 16
  %21 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake13, align 8
  %alt_out_ctr14 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %21, i32 0, i32 39
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %alt_out_ctr14, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp_out_ctr, i64 0, i64 0
  %call17 = call i8* @memcpy(i8* noundef %arraydecay15, i8* noundef %arraydecay16, i64 noundef 8) #7
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 18
  %24 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out18, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %22, %struct.mbedtls_ssl_transform* noundef %24) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_remaining_payload_in_datagram(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %remaining = alloca i64, align 8
  %expansion = alloca i64, align 8
  %max_len = alloca i64, align 8
  %mfl = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 16384, i64* %max_len, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_get_output_max_frag_len(%struct.mbedtls_ssl_context* noundef %0) #6
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
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 53
  %6 = load i64, i64* %out_left, align 8
  %cmp1 = icmp ule i64 %4, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 53
  %8 = load i64, i64* %out_left4, align 8
  %9 = load i64, i64* %max_len, align 8
  %sub = sub i64 %9, %8
  store i64 %sub, i64* %max_len, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @ssl_get_remaining_space_in_datagram(%struct.mbedtls_ssl_context* noundef %10) #6
  store i32 %call5, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end3
  %13 = load i32, i32* %ret, align 4
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %remaining, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call9 = call i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef %14) #6
  store i32 %call9, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %17 = load i32, i32* %ret, align 4
  %conv14 = sext i32 %17 to i64
  store i64 %conv14, i64* %expansion, align 8
  %18 = load i64, i64* %remaining, align 8
  %19 = load i64, i64* %expansion, align 8
  %cmp15 = icmp ule i64 %18, %19
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %20 = load i64, i64* %expansion, align 8
  %21 = load i64, i64* %remaining, align 8
  %sub19 = sub i64 %21, %20
  store i64 %sub19, i64* %remaining, align 8
  %22 = load i64, i64* %remaining, align 8
  %23 = load i64, i64* %max_len, align 8
  %cmp20 = icmp uge i64 %22, %23
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  %24 = load i64, i64* %max_len, align 8
  store i64 %24, i64* %remaining, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %25 = load i64, i64* %remaining, align 8
  %conv24 = trunc i64 %25 to i32
  store i32 %conv24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then17, %if.then12, %if.then7, %if.then2
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_record(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %force_flush) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %force_flush.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %done = alloca i32, align 4
  %len = alloca i64, align 8
  %flush = alloca i32, align 4
  %i = alloca i32, align 4
  %protected_record_size = alloca i64, align 8
  %out_buf_len = alloca i64, align 8
  %tls_ver = alloca i32, align 4
  %rec = alloca %struct.mbedtls_record, align 8
  %remaining = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %force_flush, i32* %force_flush.addr, align 4
  store i32 0, i32* %done, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 52
  %1 = load i64, i64* %out_msglen, align 8
  store i64 %1, i64* %len, align 8
  %2 = load i32, i32* %force_flush.addr, align 4
  store i32 %2, i32* %flush, align 4
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2633, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0)) #6
  %4 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end105, label %if.then

if.then:                                          ; preds = %entry
  store i64 16717, i64* %out_buf_len, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 4
  %6 = load i32, i32* %tls_version, align 4
  store i32 %6, i32* %tls_ver, align 4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 47
  %8 = load i8*, i8** %out_hdr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %10, i32 0, i32 3
  %11 = load i8, i8* %transport, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %tls_ver, align 4
  call void @mbedtls_ssl_write_version(i8* noundef %add.ptr, i32 noundef %conv, i32 noundef %12) #6
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 46
  %14 = load i8*, i8** %out_ctr, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 54
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call = call i8* @memcpy(i8* noundef %14, i8* noundef %arraydecay, i64 noundef 8) #7
  %16 = load i64, i64* %len, align 8
  %shr = lshr i64 %16, 8
  %and = and i64 %shr, 255
  %conv1 = trunc i64 %and to i8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 48
  %18 = load i8*, i8** %out_len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %19 = load i64, i64* %len, align 8
  %and2 = and i64 %19, 255
  %conv3 = trunc i64 %and2 to i8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 48
  %21 = load i8*, i8** %out_len4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv3, i8* %arrayidx5, align 1
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 18
  %23 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_transform* %23, null
  br i1 %cmp, label %if.then7, label %if.end50

if.then7:                                         ; preds = %if.then
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 49
  %25 = load i8*, i8** %out_iv, align 8
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 3
  store i8* %25, i8** %buf, align 8
  %26 = load i64, i64* %out_buf_len, align 8
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_iv8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 49
  %28 = load i8*, i8** %out_iv8, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 45
  %30 = load i8*, i8** %out_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %26, %sub.ptr.sub
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 4
  store i64 %sub, i64* %buf_len, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 52
  %32 = load i64, i64* %out_msglen9, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  store i64 %32, i64* %data_len, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 50
  %34 = load i8*, i8** %out_msg, align 8
  %buf10 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 3
  %35 = load i8*, i8** %buf10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %35 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 5
  store i64 %sub.ptr.sub13, i64* %data_offset, align 8
  %ctr = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %ctr, i64 0, i64 0
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 46
  %37 = load i8*, i8** %out_ctr15, align 8
  %call16 = call i8* @memcpy(i8* noundef %arrayidx14, i8* noundef %37, i64 noundef 8) #7
  %ver = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [2 x i8], [2 x i8]* %ver, i64 0, i64 0
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf18, align 8
  %transport19 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 3
  %40 = load i8, i8* %transport19, align 1
  %conv20 = zext i8 %40 to i32
  %41 = load i32, i32* %tls_ver, align 4
  call void @mbedtls_ssl_write_version(i8* noundef %arraydecay17, i32 noundef %conv20, i32 noundef %41) #6
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 51
  %43 = load i32, i32* %out_msgtype, align 8
  %conv21 = trunc i32 %43 to i8
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 1
  store i8 %conv21, i8* %type, align 8
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out22 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 18
  %46 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out22, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf23 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 0
  %48 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf23, align 8
  %f_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %48, i32 0, i32 17
  %49 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng, align 8
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 0
  %51 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf24, align 8
  %p_rng = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %51, i32 0, i32 18
  %52 = load i8*, i8** %p_rng, align 8
  %call25 = call i32 @mbedtls_ssl_encrypt_buf(%struct.mbedtls_ssl_context* noundef %44, %struct.mbedtls_ssl_transform* noundef %46, %struct.mbedtls_record* noundef %rec, i32 (i8*, i8*, i64)* noundef %49, i8* noundef %52) #6
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then7
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %54 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2680, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0), i32 noundef %54) #6
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %data_offset29 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 5
  %56 = load i64, i64* %data_offset29, align 8
  %cmp30 = icmp ne i64 %56, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %57, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2686, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end
  %type34 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 1
  %58 = load i8, i8* %type34, align 8
  %conv35 = zext i8 %58 to i32
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype36 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 51
  store i32 %conv35, i32* %out_msgtype36, align 8
  %data_len37 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %60 = load i64, i64* %data_len37, align 8
  store i64 %60, i64* %len, align 8
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %61, i32 0, i32 52
  store i64 %60, i64* %out_msglen38, align 8
  %data_len39 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %62 = load i64, i64* %data_len39, align 8
  %shr40 = lshr i64 %62, 8
  %and41 = and i64 %shr40, 255
  %conv42 = trunc i64 %and41 to i8
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len43 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %63, i32 0, i32 48
  %64 = load i8*, i8** %out_len43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %conv42, i8* %arrayidx44, align 1
  %data_len45 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %65 = load i64, i64* %data_len45, align 8
  %and46 = and i64 %65, 255
  %conv47 = trunc i64 %and46 to i8
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_len48 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 48
  %67 = load i8*, i8** %out_len48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %conv47, i8* %arrayidx49, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.end33, %if.then
  %68 = load i64, i64* %len, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call51 = call i64 @mbedtls_ssl_out_hdr_len(%struct.mbedtls_ssl_context* noundef %69) #6
  %add = add i64 %68, %call51
  store i64 %add, i64* %protected_record_size, align 8
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 0
  %71 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf52, align 8
  %transport53 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %71, i32 0, i32 3
  %72 = load i8, i8* %transport53, align 1
  %conv54 = zext i8 %72 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.end50
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call58 = call i32 @ssl_get_remaining_space_in_datagram(%struct.mbedtls_ssl_context* noundef %73) #6
  store i32 %call58, i32* %ret, align 4
  %74 = load i32, i32* %ret, align 4
  %cmp59 = icmp slt i32 %74, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then57
  %75 = load i32, i32* %ret, align 4
  store i32 %75, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then57
  %76 = load i64, i64* %protected_record_size, align 8
  %77 = load i32, i32* %ret, align 4
  %conv63 = sext i32 %77 to i64
  %cmp64 = icmp ugt i64 %76, %conv63
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end62
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end50
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype69 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %78, i32 0, i32 51
  %79 = load i32, i32* %out_msgtype69, align 8
  %conv70 = trunc i32 %79 to i8
  %80 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr71 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %80, i32 0, i32 47
  %81 = load i8*, i8** %out_hdr71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 %conv70, i8* %arrayidx72, align 1
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %83 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %83, i32 0, i32 47
  %84 = load i8*, i8** %out_hdr73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %84, i64 0
  %85 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %85 to i32
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %86, i32 0, i32 47
  %87 = load i8*, i8** %out_hdr76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %88 to i32
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %89, i32 0, i32 47
  %90 = load i8*, i8** %out_hdr79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %91 to i32
  %92 = load i64, i64* %len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %82, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2724, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv75, i32 noundef %conv78, i32 noundef %conv81, i64 noundef %92) #6
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr82 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %94, i32 0, i32 47
  %95 = load i8*, i8** %out_hdr82, align 8
  %96 = load i64, i64* %protected_record_size, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %93, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2727, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i64 0, i64 0), i8* noundef %95, i64 noundef %96) #6
  %97 = load i64, i64* %protected_record_size, align 8
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %98, i32 0, i32 53
  %99 = load i64, i64* %out_left, align 8
  %add83 = add i64 %99, %97
  store i64 %add83, i64* %out_left, align 8
  %100 = load i64, i64* %protected_record_size, align 8
  %101 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr84 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %101, i32 0, i32 47
  %102 = load i8*, i8** %out_hdr84, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %102, i64 %100
  store i8* %add.ptr85, i8** %out_hdr84, align 8
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out86 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %104, i32 0, i32 18
  %105 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out86, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %103, %struct.mbedtls_ssl_transform* noundef %105) #6
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end68
  %106 = load i32, i32* %i, align 4
  %conv87 = zext i32 %106 to i64
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call88 = call i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %107) #6
  %cmp89 = icmp ugt i64 %conv87, %call88
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr91 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %108, i32 0, i32 54
  %109 = load i32, i32* %i, align 4
  %sub92 = sub i32 %109, 1
  %idxprom = zext i32 %sub92 to i64
  %arrayidx93 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr91, i64 0, i64 %idxprom
  %110 = load i8, i8* %arrayidx93, align 1
  %inc = add i8 %110, 1
  store i8 %inc, i8* %arrayidx93, align 1
  %conv94 = zext i8 %inc to i32
  %cmp95 = icmp ne i32 %conv94, 0
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %for.body
  br label %for.end

if.end98:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end98
  %111 = load i32, i32* %i, align 4
  %dec = add i32 %111, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then97, %for.cond
  %112 = load i32, i32* %i, align 4
  %conv99 = zext i32 %112 to i64
  %113 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call100 = call i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %113) #6
  %cmp101 = icmp eq i64 %conv99, %call100
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %for.end
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %114, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2740, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.83, i64 0, i64 0)) #6
  store i32 -27520, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %for.end
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %entry
  %115 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf106 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %115, i32 0, i32 0
  %116 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf106, align 8
  %transport107 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %116, i32 0, i32 3
  %117 = load i8, i8* %transport107, align 1
  %conv108 = zext i8 %117 to i32
  %cmp109 = icmp eq i32 %conv108, 1
  br i1 %cmp109, label %land.lhs.true, label %if.end125

land.lhs.true:                                    ; preds = %if.end105
  %118 = load i32, i32* %flush, align 4
  %cmp111 = icmp eq i32 %118, 0
  br i1 %cmp111, label %if.then113, label %if.end125

if.then113:                                       ; preds = %land.lhs.true
  %119 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call114 = call i32 @ssl_get_remaining_payload_in_datagram(%struct.mbedtls_ssl_context* noundef %119) #6
  store i32 %call114, i32* %ret, align 4
  %120 = load i32, i32* %ret, align 4
  %cmp115 = icmp slt i32 %120, 0
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.then113
  %121 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %122 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %121, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2754, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i32 noundef %122) #6
  %123 = load i32, i32* %ret, align 4
  store i32 %123, i32* %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.then113
  %124 = load i32, i32* %ret, align 4
  %conv119 = sext i32 %124 to i64
  store i64 %conv119, i64* %remaining, align 8
  %125 = load i64, i64* %remaining, align 8
  %cmp120 = icmp eq i64 %125, 0
  br i1 %cmp120, label %if.then122, label %if.else

if.then122:                                       ; preds = %if.end118
  store i32 1, i32* %flush, align 4
  br label %if.end124

if.else:                                          ; preds = %if.end118
  %126 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %127 = load i64, i64* %remaining, align 8
  %conv123 = trunc i64 %127 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %126, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2765, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv123) #6
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then122
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %land.lhs.true, %if.end105
  %128 = load i32, i32* %flush, align 4
  %cmp126 = icmp eq i32 %128, 1
  br i1 %cmp126, label %land.lhs.true128, label %if.end133

land.lhs.true128:                                 ; preds = %if.end125
  %129 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call129 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %129) #6
  store i32 %call129, i32* %ret, align 4
  %cmp130 = icmp ne i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %land.lhs.true128
  %130 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %131 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %130, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2773, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i64 0, i64 0), i32 noundef %131) #6
  %132 = load i32, i32* %ret, align 4
  store i32 %132, i32* %retval, align 4
  br label %return

if.end133:                                        ; preds = %land.lhs.true128, %if.end125
  %133 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %133, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2777, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end133, %if.then132, %if.then117, %if.then103, %if.then66, %if.then61, %if.then32, %if.then28
  %134 = load i32, i32* %retval, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_recv_flight_completed(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %flight = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %1, i32 0, i32 34
  %2 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight, align 8
  call void @mbedtls_ssl_flight_free(%struct.mbedtls_ssl_flight_item* noundef %2) #6
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %flight2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 34
  store %struct.mbedtls_ssl_flight_item* null, %struct.mbedtls_ssl_flight_item** %flight2, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 16
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %cur_msg = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 35
  store %struct.mbedtls_ssl_flight_item* null, %struct.mbedtls_ssl_flight_item** %cur_msg, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 16
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 32
  %9 = load i32, i32* %in_msg_seq, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %in_flight_start_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 37
  store i32 %9, i32* %in_flight_start_seq, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 28
  %seen_ccs = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 1
  store i8 0, i8* %seen_ccs, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_buffering_free(%struct.mbedtls_ssl_context* noundef %14) #6
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %15, i32 noundef 0) #6
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 31
  %17 = load i32, i32* %in_msgtype, align 8
  %cmp = icmp eq i32 %17, 22
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 29
  %19 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp7 = icmp eq i32 %conv, 20
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 16
  %22 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake9, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %22, i32 0, i32 7
  store i8 3, i8* %retransmit_state, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 16
  %24 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %retransmit_state11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %24, i32 0, i32 7
  store i8 0, i8* %retransmit_state11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_buffering_free(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %offset = alloca i32, align 4
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_free_buffered_record(%struct.mbedtls_ssl_context* noundef %3) #6
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %offset, align 4
  %cmp1 = icmp ult i32 %4, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i32, i32* %offset, align 4
  %conv = trunc i32 %6 to i8
  call void @ssl_buffering_free_slot(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext %conv) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %offset, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_send_flight_completed(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_reset_retransmit_timeout(%struct.mbedtls_ssl_context* noundef %0) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 16
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_timeout = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 33
  %4 = load i32, i32* %retransmit_timeout, align 4
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %1, i32 noundef %4) #6
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 31
  %6 = load i32, i32* %in_msgtype, align 8
  %cmp = icmp eq i32 %6, 22
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 29
  %8 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 20
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 16
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake3, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 7
  store i8 3, i8* %retransmit_state, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 16
  %13 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake4, align 8
  %retransmit_state5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %13, i32 0, i32 7
  store i8 2, i8* %retransmit_state5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_reset_retransmit_timeout(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %hs_timeout_min = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 50
  %2 = load i32, i32* %hs_timeout_min, align 4
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 16
  %4 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %retransmit_timeout = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %4, i32 0, i32 33
  store i32 %2, i32* %retransmit_timeout, align 4
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 16
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake1, align 8
  %retransmit_timeout2 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 33
  %8 = load i32, i32* %retransmit_timeout2, align 4
  %conv = zext i32 %8 to i64
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.142, i64 0, i64 0), i64 noundef %conv) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_start_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %hs_type, i8** noundef %buf, i64* noundef %buf_len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs_type.addr = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %buf_len.addr = alloca i64*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %hs_type, i32* %hs_type.addr, align 4
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %buf_len, i64** %buf_len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 50
  %1 = load i8*, i8** %out_msg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %2 = load i8**, i8*** %buf.addr, align 8
  store i8* %add.ptr, i8** %2, align 8
  %3 = load i64*, i64** %buf_len.addr, align 8
  store i64 16380, i64* %3, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 51
  store i32 22, i32* %out_msgtype, align 8
  %5 = load i32, i32* %hs_type.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 50
  %7 = load i8*, i8** %out_msg1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %update_checksum, i32 noundef %force_flush) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %update_checksum.addr = alloca i32, align 4
  %force_flush.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %hs_len = alloca i64, align 8
  %hs_type = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %update_checksum, i32* %update_checksum.addr, align 4
  store i32 %force_flush, i32* %force_flush.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 52
  %1 = load i64, i64* %out_msglen, align 8
  %sub = sub i64 %1, 4
  store i64 %sub, i64* %hs_len, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 50
  %3 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %hs_type, align 1
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2466, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0)) #6
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 51
  %7 = load i32, i32* %out_msgtype, align 8
  %cmp = icmp ne i32 %7, 22
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 51
  %9 = load i32, i32* %out_msgtype1, align 8
  %cmp2 = icmp ne i32 %9, 20
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2474, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 51
  %12 = load i32, i32* %out_msgtype3, align 8
  %cmp4 = icmp eq i32 %12, 22
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true8

land.lhs.true5:                                   ; preds = %if.end
  %13 = load i8, i8* %hs_type, align 1
  %conv = zext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5, %if.end
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 16
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp9 = icmp eq %struct.mbedtls_ssl_handshake_params* %15, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 3
  %19 = load i8, i8* %transport, align 1
  %conv13 = zext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %land.lhs.true16, label %if.end26

land.lhs.true16:                                  ; preds = %if.end12
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 16
  %21 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake17, align 8
  %cmp18 = icmp ne %struct.mbedtls_ssl_handshake_params* %21, null
  br i1 %cmp18, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 16
  %23 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake21, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %23, i32 0, i32 7
  %24 = load i8, i8* %retransmit_state, align 1
  %conv22 = zext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv22, 1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true20
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %25, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2493, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true20, %land.lhs.true16, %if.end12
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 52
  %27 = load i64, i64* %out_msglen27, align 8
  %cmp28 = icmp ugt i64 %27, 16384
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 52
  %30 = load i64, i64* %out_msglen31, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2512, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.74, i64 0, i64 0), i64 noundef %30, i64 noundef 16384) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 51
  %32 = load i32, i32* %out_msgtype33, align 8
  %cmp34 = icmp eq i32 %32, 22
  br i1 %cmp34, label %if.then36, label %if.end109

if.then36:                                        ; preds = %if.end32
  %33 = load i64, i64* %hs_len, align 8
  %shr = lshr i64 %33, 16
  %and = and i64 %shr, 255
  %conv37 = trunc i64 %and to i8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 50
  %35 = load i8*, i8** %out_msg38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %conv37, i8* %arrayidx39, align 1
  %36 = load i64, i64* %hs_len, align 8
  %shr40 = lshr i64 %36, 8
  %and41 = and i64 %shr40, 255
  %conv42 = trunc i64 %and41 to i8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg43 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 50
  %38 = load i8*, i8** %out_msg43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 %conv42, i8* %arrayidx44, align 1
  %39 = load i64, i64* %hs_len, align 8
  %and45 = and i64 %39, 255
  %conv46 = trunc i64 %and45 to i8
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 50
  %41 = load i8*, i8** %out_msg47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 %conv46, i8* %arrayidx48, align 1
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 0
  %43 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf49, align 8
  %transport50 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %43, i32 0, i32 3
  %44 = load i8, i8* %transport50, align 1
  %conv51 = zext i8 %44 to i32
  %cmp52 = icmp eq i32 %conv51, 1
  br i1 %cmp52, label %if.then54, label %if.end96

if.then54:                                        ; preds = %if.then36
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 52
  %46 = load i64, i64* %out_msglen55, align 8
  %sub56 = sub i64 16384, %46
  %cmp57 = icmp ult i64 %sub56, 8
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then54
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %48 = load i64, i64* %hs_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2541, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 noundef %48, i64 noundef 16372) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then54
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg61 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 50
  %50 = load i8*, i8** %out_msg61, align 8
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 12
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 50
  %52 = load i8*, i8** %out_msg62, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %52, i64 4
  %53 = load i64, i64* %hs_len, align 8
  %call = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %add.ptr63, i64 noundef %53) #7
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen64 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 52
  %55 = load i64, i64* %out_msglen64, align 8
  %add = add i64 %55, 8
  store i64 %add, i64* %out_msglen64, align 8
  %56 = load i8, i8* %hs_type, align 1
  %conv65 = zext i8 %56 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end60
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake69 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 16
  %58 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake69, align 8
  %out_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %58, i32 0, i32 31
  %59 = load i32, i32* %out_msg_seq, align 4
  %shr70 = lshr i32 %59, 8
  %and71 = and i32 %shr70, 255
  %conv72 = trunc i32 %and71 to i8
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 50
  %61 = load i8*, i8** %out_msg73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %61, i64 4
  store i8 %conv72, i8* %arrayidx74, align 1
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake75 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 16
  %63 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake75, align 8
  %out_msg_seq76 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %63, i32 0, i32 31
  %64 = load i32, i32* %out_msg_seq76, align 4
  %and77 = and i32 %64, 255
  %conv78 = trunc i32 %and77 to i8
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %65, i32 0, i32 50
  %66 = load i8*, i8** %out_msg79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %66, i64 5
  store i8 %conv78, i8* %arrayidx80, align 1
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake81 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 16
  %68 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake81, align 8
  %out_msg_seq82 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %68, i32 0, i32 31
  %69 = load i32, i32* %out_msg_seq82, align 4
  %inc = add i32 %69, 1
  store i32 %inc, i32* %out_msg_seq82, align 4
  br label %if.end87

if.else:                                          ; preds = %if.end60
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 50
  %71 = load i8*, i8** %out_msg83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %71, i64 4
  store i8 0, i8* %arrayidx84, align 1
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg85 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 50
  %73 = load i8*, i8** %out_msg85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %73, i64 5
  store i8 0, i8* %arrayidx86, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then68
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg88 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %74, i32 0, i32 50
  %75 = load i8*, i8** %out_msg88, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %75, i64 6
  %call90 = call i8* @memset(i8* noundef %add.ptr89, i32 noundef 0, i64 noundef 3) #7
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg91 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 50
  %77 = load i8*, i8** %out_msg91, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %77, i64 9
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg93 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %78, i32 0, i32 50
  %79 = load i8*, i8** %out_msg93, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %79, i64 1
  %call95 = call i8* @memcpy(i8* noundef %add.ptr92, i8* noundef %add.ptr94, i64 noundef 3) #7
  br label %if.end96

if.end96:                                         ; preds = %if.end87, %if.then36
  %80 = load i8, i8* %hs_type, align 1
  %conv97 = zext i8 %80 to i32
  %cmp98 = icmp ne i32 %conv97, 0
  br i1 %cmp98, label %land.lhs.true100, label %if.end108

land.lhs.true100:                                 ; preds = %if.end96
  %81 = load i32, i32* %update_checksum.addr, align 4
  %cmp101 = icmp ne i32 %81, 0
  br i1 %cmp101, label %if.then103, label %if.end108

if.then103:                                       ; preds = %land.lhs.true100
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake104 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 16
  %83 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake104, align 8
  %update_checksum105 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %83, i32 0, i32 12
  %84 = load void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum105, align 8
  %85 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %86 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg106 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %86, i32 0, i32 50
  %87 = load i8*, i8** %out_msg106, align 8
  %88 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %88, i32 0, i32 52
  %89 = load i64, i64* %out_msglen107, align 8
  call void %84(%struct.mbedtls_ssl_context* noundef %85, i8* noundef %87, i64 noundef %89) #6
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %land.lhs.true100, %if.end96
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end32
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf110 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %90, i32 0, i32 0
  %91 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf110, align 8
  %transport111 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %91, i32 0, i32 3
  %92 = load i8, i8* %transport111, align 1
  %conv112 = zext i8 %92 to i32
  %cmp113 = icmp eq i32 %conv112, 1
  br i1 %cmp113, label %land.lhs.true115, label %if.else129

land.lhs.true115:                                 ; preds = %if.end109
  %93 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype116 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %93, i32 0, i32 51
  %94 = load i32, i32* %out_msgtype116, align 8
  %cmp117 = icmp eq i32 %94, 22
  br i1 %cmp117, label %land.lhs.true119, label %if.then123

land.lhs.true119:                                 ; preds = %land.lhs.true115
  %95 = load i8, i8* %hs_type, align 1
  %conv120 = zext i8 %95 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %if.else129, label %if.then123

if.then123:                                       ; preds = %land.lhs.true119, %land.lhs.true115
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call124 = call i32 @ssl_flight_append(%struct.mbedtls_ssl_context* noundef %96) #6
  store i32 %call124, i32* %ret, align 4
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.then123
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %98 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2580, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i32 noundef %98) #6
  %99 = load i32, i32* %ret, align 4
  store i32 %99, i32* %retval, align 4
  br label %return

if.end128:                                        ; preds = %if.then123
  br label %if.end135

if.else129:                                       ; preds = %land.lhs.true119, %if.end109
  %100 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %101 = load i32, i32* %force_flush.addr, align 4
  %call130 = call i32 @mbedtls_ssl_write_record(%struct.mbedtls_ssl_context* noundef %100, i32 noundef %101) #6
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else129
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %103 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %102, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2589, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i32 noundef %103) #6
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %if.else129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end128
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2594, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end135, %if.then133, %if.then127, %if.then59, %if.then30, %if.then25, %if.then11, %if.then
  %106 = load i32, i32* %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_flight_append(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %msg = alloca %struct.mbedtls_ssl_flight_item*, align 8
  %cur = alloca %struct.mbedtls_ssl_flight_item*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2085, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 50
  %3 = load i8*, i8** %out_msg, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 52
  %5 = load i64, i64* %out_msglen, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2087, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i64 0, i64 0), i8* noundef %3, i64 noundef %5) #6
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #7
  %6 = bitcast i8* %call to %struct.mbedtls_ssl_flight_item*
  store %struct.mbedtls_ssl_flight_item* %6, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_flight_item* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2093, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.147, i64 0, i64 0), i64 noundef 32) #6
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 52
  %9 = load i64, i64* %out_msglen1, align 8
  %call2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %9) #7
  %10 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %p = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %10, i32 0, i32 0
  store i8* %call2, i8** %p, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 52
  %13 = load i64, i64* %out_msglen5, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2100, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.147, i64 0, i64 0), i64 noundef %13) #6
  %14 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %15 = bitcast %struct.mbedtls_ssl_flight_item* %14 to i8*
  call void @free(i8* noundef %15) #7
  store i32 -32512, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %16, i32 0, i32 0
  %17 = load i8*, i8** %p7, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 50
  %19 = load i8*, i8** %out_msg8, align 8
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 52
  %21 = load i64, i64* %out_msglen9, align 8
  %call10 = call i8* @memcpy(i8* noundef %17, i8* noundef %19, i64 noundef %21) #7
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 52
  %23 = load i64, i64* %out_msglen11, align 8
  %24 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %len = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %24, i32 0, i32 1
  store i64 %23, i64* %len, align 8
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 51
  %26 = load i32, i32* %out_msgtype, align 8
  %conv = trunc i32 %26 to i8
  %27 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %type = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %27, i32 0, i32 2
  store i8 %conv, i8* %type, align 8
  %28 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %28, i32 0, i32 3
  store %struct.mbedtls_ssl_flight_item* null, %struct.mbedtls_ssl_flight_item** %next, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 16
  %30 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %flight = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %30, i32 0, i32 34
  %31 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight, align 8
  %cmp12 = icmp eq %struct.mbedtls_ssl_flight_item* %31, null
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end6
  %32 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 16
  %34 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake15, align 8
  %flight16 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %34, i32 0, i32 34
  store %struct.mbedtls_ssl_flight_item* %32, %struct.mbedtls_ssl_flight_item** %flight16, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end6
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 16
  %36 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake17, align 8
  %flight18 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %36, i32 0, i32 34
  %37 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %flight18, align 8
  store %struct.mbedtls_ssl_flight_item* %37, %struct.mbedtls_ssl_flight_item** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %38 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next19 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %38, i32 0, i32 3
  %39 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next19, align 8
  %cmp20 = icmp ne %struct.mbedtls_ssl_flight_item* %39, null
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next22 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %40, i32 0, i32 3
  %41 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %next22, align 8
  store %struct.mbedtls_ssl_flight_item* %41, %struct.mbedtls_ssl_flight_item** %cur, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %42 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %msg, align 8
  %43 = load %struct.mbedtls_ssl_flight_item*, %struct.mbedtls_ssl_flight_item** %cur, align 8
  %next23 = getelementptr inbounds %struct.mbedtls_ssl_flight_item, %struct.mbedtls_ssl_flight_item* %43, i32 0, i32 3
  store %struct.mbedtls_ssl_flight_item* %42, %struct.mbedtls_ssl_flight_item** %next23, align 8
  br label %if.end24

if.end24:                                         ; preds = %while.end, %if.then14
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2122, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then4, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_finish_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl, i64 noundef %buf_len, i64 noundef %msg_len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf_len.addr = alloca i64, align 8
  %msg_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %msg_with_header_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64 %msg_len, i64* %msg_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %buf_len.addr, align 8
  %1 = load i64, i64* %msg_len.addr, align 8
  %add = add i64 %1, 4
  store i64 %add, i64* %msg_with_header_len, align 8
  %2 = load i64, i64* %msg_with_header_len, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 52
  store i64 %2, i64* %out_msglen, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 0, i32 noundef 0) #6
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_write_version(i8* noundef %version, i32 noundef %transport, i32 noundef %tls_version) #0 {
entry:
  %version.addr = alloca i8*, align 8
  %transport.addr = alloca i32, align 4
  %tls_version.addr = alloca i32, align 4
  store i8* %version, i8** %version.addr, align 8
  store i32 %transport, i32* %transport.addr, align 4
  store i32 %tls_version, i32* %tls_version.addr, align 4
  %0 = load i32, i32* %transport.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %tls_version.addr, align 4
  %2 = load i32, i32* %tls_version.addr, align 4
  %cmp1 = icmp eq i32 %2, 770
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 514, i32 513
  %sub = sub i32 %1, %cond
  %neg = xor i32 %sub, -1
  store i32 %neg, i32* %tls_version.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %tls_version.addr, align 4
  %shr = lshr i32 %4, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %5 = load i8*, i8** %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i32, i32* %tls_version.addr, align 4
  %and2 = and i32 %6, 255
  %conv3 = trunc i32 %and2 to i8
  %7 = load i8*, i8** %version.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_remaining_space_in_datagram(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %bytes_written = alloca i64, align 8
  %mtu = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 53
  %1 = load i64, i64* %out_left, align 8
  store i64 %1, i64* %bytes_written, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @ssl_get_maximum_datagram_size(%struct.mbedtls_ssl_context* noundef %2) #6
  store i64 %call, i64* %mtu, align 8
  %3 = load i64, i64* %bytes_written, align 8
  %4 = load i64, i64* %mtu, align 8
  %cmp = icmp ugt i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %mtu, align 8
  %6 = load i64, i64* %bytes_written, align 8
  %sub = sub i64 %5, %6
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
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
  store i64 2, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_prepare_handshake_record(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %recv_msg_seq = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 32
  %1 = load i64, i64* %in_msglen, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %2) #6
  %cmp = icmp ult i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 32
  %5 = load i64, i64* %in_msglen1, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2922, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i64 0, i64 0), i64 noundef %5) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %6) #6
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @ssl_get_hs_total_len(%struct.mbedtls_ssl_context* noundef %7) #6
  %conv = zext i32 %call3 to i64
  %add = add i64 %call2, %conv
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 38
  store i64 %add, i64* %in_hslen, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 32
  %11 = load i64, i64* %in_msglen4, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 29
  %13 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %14 to i32
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 38
  %16 = load i64, i64* %in_hslen6, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2930, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.89, i64 0, i64 0), i64 noundef %11, i32 noundef %conv5, i64 noundef %16) #6
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 0
  %18 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %18, i32 0, i32 3
  %19 = load i8, i8* %transport, align 1
  %conv7 = zext i8 %19 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.else75

if.then10:                                        ; preds = %if.end
  store i32 -110, i32* %ret, align 4
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 29
  %21 = load i8*, i8** %in_msg11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 4
  %22 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %22 to i32
  %shl = shl i32 %conv13, 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 29
  %24 = load i8*, i8** %in_msg14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %24, i64 5
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %25 to i32
  %or = or i32 %shl, %conv16
  store i32 %or, i32* %recv_msg_seq, align 4
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call17 = call i32 @ssl_check_hs_header(%struct.mbedtls_ssl_context* noundef %26) #6
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then10
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %27, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2940, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0)) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then10
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 16
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp22 = icmp ne %struct.mbedtls_ssl_handshake_params* %29, null
  br i1 %cmp22, label %land.lhs.true, label %if.end69

land.lhs.true:                                    ; preds = %if.end21
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call24 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %30) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %land.lhs.true27, label %lor.lhs.false

land.lhs.true27:                                  ; preds = %land.lhs.true
  %31 = load i32, i32* %recv_msg_seq, align 4
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake28 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 16
  %33 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake28, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %33, i32 0, i32 32
  %34 = load i32, i32* %in_msg_seq, align 8
  %cmp29 = icmp ne i32 %31, %34
  br i1 %cmp29, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27, %land.lhs.true
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call31 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %35) #6
  %cmp32 = icmp eq i32 %call31, 1
  br i1 %cmp32, label %land.lhs.true34, label %if.end69

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 29
  %37 = load i8*, i8** %in_msg35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %38 to i32
  %cmp38 = icmp ne i32 %conv37, 1
  br i1 %cmp38, label %if.then40, label %if.end69

if.then40:                                        ; preds = %land.lhs.true34, %land.lhs.true27
  %39 = load i32, i32* %recv_msg_seq, align 4
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 16
  %41 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake41, align 8
  %in_msg_seq42 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %41, i32 0, i32 32
  %42 = load i32, i32* %in_msg_seq42, align 8
  %cmp43 = icmp ugt i32 %39, %42
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.then40
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load i32, i32* %recv_msg_seq, align 4
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 16
  %46 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake46, align 8
  %in_msg_seq47 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %46, i32 0, i32 32
  %47 = load i32, i32* %in_msg_seq47, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %43, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2954, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.91, i64 0, i64 0), i32 noundef %44, i32 noundef %47) #6
  store i32 -25728, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then40
  %48 = load i32, i32* %recv_msg_seq, align 4
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake49 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 16
  %50 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake49, align 8
  %in_flight_start_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %50, i32 0, i32 37
  %51 = load i32, i32* %in_flight_start_seq, align 8
  %sub = sub i32 %51, 1
  %cmp50 = icmp eq i32 %48, %sub
  br i1 %cmp50, label %land.lhs.true52, label %if.else

land.lhs.true52:                                  ; preds = %if.end48
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg53 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %52, i32 0, i32 29
  %53 = load i8*, i8** %in_msg53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %54 to i32
  %cmp56 = icmp ne i32 %conv55, 3
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %land.lhs.true52
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %56 = load i32, i32* %recv_msg_seq, align 4
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake59 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 16
  %58 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake59, align 8
  %in_flight_start_seq60 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %58, i32 0, i32 37
  %59 = load i32, i32* %in_flight_start_seq60, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %55, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2967, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.92, i64 0, i64 0), i32 noundef %56, i32 noundef %59) #6
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call61 = call i32 @mbedtls_ssl_resend(%struct.mbedtls_ssl_context* noundef %60) #6
  store i32 %call61, i32* %ret, align 4
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then58
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %62 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %61, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2971, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i32 noundef %62) #6
  %63 = load i32, i32* %ret, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.then58
  br label %if.end68

if.else:                                          ; preds = %land.lhs.true52, %if.end48
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %65 = load i32, i32* %recv_msg_seq, align 4
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 16
  %67 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake66, align 8
  %in_msg_seq67 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %67, i32 0, i32 32
  %68 = load i32, i32* %in_msg_seq67, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2980, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.93, i64 0, i64 0), i32 noundef %65, i32 noundef %68) #6
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.end65
  store i32 -25984, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %land.lhs.true34, %lor.lhs.false, %if.end21
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call70 = call i32 @ssl_hs_is_proper_fragment(%struct.mbedtls_ssl_context* noundef %69) #6
  %cmp71 = icmp eq i32 %call70, 1
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %70, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 2993, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.94, i64 0, i64 0)) #6
  store i32 -25728, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end69
  br label %if.end82

if.else75:                                        ; preds = %if.end
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %71, i32 0, i32 32
  %72 = load i64, i64* %in_msglen76, align 8
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen77 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 38
  %74 = load i64, i64* %in_hslen77, align 8
  %cmp78 = icmp ult i64 %72, %74
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.else75
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3002, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.95, i64 0, i64 0)) #6
  store i32 -28800, i32* %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.else75
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end74
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end82, %if.then80, %if.then73, %if.end68, %if.then64, %if.then45, %if.then20, %if.then
  %76 = load i32, i32* %retval, align 4
  ret i32 %76
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_hs_total_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 29
  %1 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 29
  %4 = load i8*, i8** %in_msg1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl i32 %conv3, 8
  %or = or i32 %shl, %shl4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 29
  %7 = load i8*, i8** %in_msg5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %or, %conv7
  ret i32 %or8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_hs_header(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %msg_len = alloca i32, align 4
  %frag_off = alloca i32, align 4
  %frag_len = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_get_hs_total_len(%struct.mbedtls_ssl_context* noundef %0) #6
  store i32 %call, i32* %msg_len, align 4
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i32 @ssl_get_hs_frag_off(%struct.mbedtls_ssl_context* noundef %1) #6
  store i32 %call1, i32* %frag_off, align 4
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call2 = call i32 @ssl_get_hs_frag_len(%struct.mbedtls_ssl_context* noundef %2) #6
  store i32 %call2, i32* %frag_len, align 4
  %3 = load i32, i32* %frag_off, align 4
  %4 = load i32, i32* %msg_len, align 4
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %frag_len, align 4
  %6 = load i32, i32* %msg_len, align 4
  %7 = load i32, i32* %frag_off, align 4
  %sub = sub i32 %6, %7
  %cmp3 = icmp ugt i32 %5, %sub
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i32, i32* %frag_len, align 4
  %add = add i32 %8, 12
  %conv = zext i32 %add to i64
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 32
  %10 = load i64, i64* %in_msglen, align 8
  %cmp6 = icmp ugt i64 %conv, %10
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_hs_is_proper_fragment(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 32
  %1 = load i64, i64* %in_msglen, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 38
  %3 = load i64, i64* %in_hslen, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 29
  %5 = load i8*, i8** %in_msg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 6
  %call = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), i64 noundef 3) #8
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 29
  %7 = load i8*, i8** %in_msg3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 9
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 29
  %9 = load i8*, i8** %in_msg5, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 1
  %call7 = call i32 @memcmp(i8* noundef %add.ptr4, i8* noundef %add.ptr6, i64 noundef 3) #8
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_update_handshake_status(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %offset = alloca i32, align 4
  %hs_buf = alloca %struct.mbedtls_ssl_hs_buffer*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %2) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp1 = icmp ne %struct.mbedtls_ssl_handshake_params* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 16
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake2, align 8
  %update_checksum = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 12
  %6 = load void (%struct.mbedtls_ssl_context*, i8*, i64)*, void (%struct.mbedtls_ssl_context*, i8*, i64)** %update_checksum, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 29
  %9 = load i8*, i8** %in_msg, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 38
  %11 = load i64, i64* %in_hslen, align 8
  call void %6(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %9, i64 noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %13, i32 0, i32 3
  %14 = load i8, i8* %transport, align 1
  %conv = zext i8 %14 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true5, label %if.end15

land.lhs.true5:                                   ; preds = %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 16
  %16 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake6, align 8
  %cmp7 = icmp ne %struct.mbedtls_ssl_handshake_params* %16, null
  br i1 %cmp7, label %if.then9, label %if.end15

if.then9:                                         ; preds = %land.lhs.true5
  %17 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %17, i32 0, i32 32
  %18 = load i32, i32* %in_msg_seq, align 8
  %inc = add i32 %18, 1
  store i32 %inc, i32* %in_msg_seq, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_buffering_free_slot(%struct.mbedtls_ssl_context* noundef %19, i8 noundef zeroext 0) #6
  store i32 0, i32* %offset, align 4
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 28
  %hs10 = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x %struct.mbedtls_ssl_hs_buffer], [4 x %struct.mbedtls_ssl_hs_buffer]* %hs10, i64 0, i64 0
  store %struct.mbedtls_ssl_hs_buffer* %arrayidx, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %21 = load i32, i32* %offset, align 4
  %add = add i32 %21, 1
  %cmp11 = icmp ult i32 %add, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %23 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %add.ptr = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %23, i64 1
  %24 = bitcast %struct.mbedtls_ssl_hs_buffer* %22 to i8*
  %25 = bitcast %struct.mbedtls_ssl_hs_buffer* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %offset, align 4
  %inc13 = add i32 %26, 1
  store i32 %inc13, i32* %offset, align 4
  %27 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %27, i32 1
  store %struct.mbedtls_ssl_hs_buffer* %incdec.ptr, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %28 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %29 = bitcast %struct.mbedtls_ssl_hs_buffer* %28 to i8*
  %call14 = call i8* @memset(i8* noundef %29, i32 noundef 0, i64 noundef 24) #7
  br label %if.end15

if.end15:                                         ; preds = %for.end, %land.lhs.true5, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_buffering_free_slot(%struct.mbedtls_ssl_context* noundef %ssl, i8 noundef zeroext %slot) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %slot.addr = alloca i8, align 1
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %hs_buf = alloca %struct.mbedtls_ssl_hs_buffer*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8 %slot, i8* %slot.addr, align 1
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %2, i32 0, i32 28
  %hs1 = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 2
  %3 = load i8, i8* %slot.addr, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.mbedtls_ssl_hs_buffer], [4 x %struct.mbedtls_ssl_hs_buffer]* %hs1, i64 0, i64 %idxprom
  store %struct.mbedtls_ssl_hs_buffer* %arrayidx, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %4 = load i8, i8* %slot.addr, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %6 = bitcast %struct.mbedtls_ssl_hs_buffer* %5 to i8*
  %bf.load = load i8, i8* %6, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp3 = icmp eq i32 %bf.cast, 1
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %7, i32 0, i32 2
  %8 = load i64, i64* %data_len, align 8
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 28
  %total_bytes_buffered = getelementptr inbounds %struct.anon, %struct.anon* %buffering6, i32 0, i32 0
  %10 = load i64, i64* %total_bytes_buffered, align 8
  %sub = sub i64 %10, %8
  store i64 %sub, i64* %total_bytes_buffered, align 8
  %11 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %11, i32 0, i32 1
  %12 = load i8*, i8** %data, align 8
  %13 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data_len7 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %13, i32 0, i32 2
  %14 = load i64, i64* %data_len7, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %12, i64 noundef %14) #6
  %15 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data8 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %15, i32 0, i32 1
  %16 = load i8*, i8** %data8, align 8
  call void @free(i8* noundef %16) #7
  %17 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %18 = bitcast %struct.mbedtls_ssl_hs_buffer* %17 to i8*
  %call = call i8* @memset(i8* noundef %18, i32 noundef 0, i64 noundef 24) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then5, %if.end
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_dtls_replay_reset(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 36
  store i64 0, i64* %in_window_top, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 37
  store i64 0, i64* %in_window, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_dtls_replay_check(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %rec_seqnum = alloca i64, align 8
  %bit = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 25
  %1 = load i8*, i8** %in_ctr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  %call = call i64 @ssl_load_six_bytes(i8* noundef %add.ptr) #6
  store i64 %call, i64* %rec_seqnum, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %anti_replay = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 9
  %4 = load i8, i8* %anti_replay, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %rec_seqnum, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 36
  %7 = load i64, i64* %in_window_top, align 8
  %cmp2 = icmp ugt i64 %5, %7
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 36
  %9 = load i64, i64* %in_window_top6, align 8
  %10 = load i64, i64* %rec_seqnum, align 8
  %sub = sub i64 %9, %10
  store i64 %sub, i64* %bit, align 8
  %11 = load i64, i64* %bit, align 8
  %cmp7 = icmp uge i64 %11, 64
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 37
  %13 = load i64, i64* %in_window, align 8
  %14 = load i64, i64* %bit, align 8
  %shl = shl i64 1, %14
  %and = and i64 %13, %shl
  %cmp11 = icmp ne i64 %and, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then9, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_load_six_bytes(i8* noundef %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 40
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 32
  %or = or i64 %shl, %shl3
  %4 = load i8*, i8** %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 24
  %or7 = or i64 %or, %shl6
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %shl10 = shl i64 %conv9, 16
  %or11 = or i64 %or7, %shl10
  %8 = load i8*, i8** %buf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i64
  %shl14 = shl i64 %conv13, 8
  %or15 = or i64 %or11, %shl14
  %10 = load i8*, i8** %buf.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %11 to i64
  %or18 = or i64 %or15, %conv17
  ret i64 %or18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_dtls_replay_update(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %rec_seqnum = alloca i64, align 8
  %shift = alloca i64, align 8
  %bit = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 25
  %1 = load i8*, i8** %in_ctr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  %call = call i64 @ssl_load_six_bytes(i8* noundef %add.ptr) #6
  store i64 %call, i64* %rec_seqnum, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %anti_replay = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 9
  %4 = load i8, i8* %anti_replay, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end23

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %rec_seqnum, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 36
  %7 = load i64, i64* %in_window_top, align 8
  %cmp2 = icmp ugt i64 %5, %7
  br i1 %cmp2, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.end
  %8 = load i64, i64* %rec_seqnum, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 36
  %10 = load i64, i64* %in_window_top5, align 8
  %sub = sub i64 %8, %10
  store i64 %sub, i64* %shift, align 8
  %11 = load i64, i64* %shift, align 8
  %cmp6 = icmp uge i64 %11, 64
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 37
  store i64 1, i64* %in_window, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %13 = load i64, i64* %shift, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 37
  %15 = load i64, i64* %in_window9, align 8
  %shl = shl i64 %15, %13
  store i64 %shl, i64* %in_window9, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 37
  %17 = load i64, i64* %in_window10, align 8
  %or = or i64 %17, 1
  store i64 %or, i64* %in_window10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %18 = load i64, i64* %rec_seqnum, align 8
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 36
  store i64 %18, i64* %in_window_top12, align 8
  br label %if.end23

if.else13:                                        ; preds = %if.end
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window_top14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 36
  %21 = load i64, i64* %in_window_top14, align 8
  %22 = load i64, i64* %rec_seqnum, align 8
  %sub15 = sub i64 %21, %22
  store i64 %sub15, i64* %bit, align 8
  %23 = load i64, i64* %bit, align 8
  %cmp16 = icmp ult i64 %23, 64
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.else13
  %24 = load i64, i64* %bit, align 8
  %shl19 = shl i64 1, %24
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_window20 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 37
  %26 = load i64, i64* %in_window20, align 8
  %or21 = or i64 %26, %shl19
  store i64 %or21, i64* %in_window20, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else13
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.end22, %if.end11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %update_hs_digest) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %update_hs_digest.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %have_buffered = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %update_hs_digest, i32* %update_hs_digest.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3842, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 40
  %2 = load i32, i32* %keep_current_message, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_consume_current_message(%struct.mbedtls_ssl_context* noundef %3) #6
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @ssl_record_is_in_progress(%struct.mbedtls_ssl_context* noundef %6) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end31

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %have_buffered, align 4
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 3
  %9 = load i8, i8* %transport, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.then5
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @ssl_next_record_is_in_datagram(%struct.mbedtls_ssl_context* noundef %10) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call12 = call i32 @ssl_load_buffered_message(%struct.mbedtls_ssl_context* noundef %11) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  store i32 1, i32* %have_buffered, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.then5
  %12 = load i32, i32* %have_buffered, align 4
  %cmp18 = icmp eq i32 %12, 0
  br i1 %cmp18, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.end17
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i32 @ssl_get_next_record(%struct.mbedtls_ssl_context* noundef %13) #6
  store i32 %call21, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp22 = icmp eq i32 %14, -25984
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  br label %do.cond

if.end25:                                         ; preds = %if.then20
  %15 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3875, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i64 0, i64 0), i32 noundef %17) #6
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end17
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call32 = call i32 @mbedtls_ssl_handle_message_type(%struct.mbedtls_ssl_context* noundef %19) #6
  store i32 %call32, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp33 = icmp eq i32 %20, -25728
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end31
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call36 = call i32 @ssl_buffer_message(%struct.mbedtls_ssl_context* noundef %21) #6
  store i32 %call36, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %22, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then35
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then35
  store i32 -25984, i32* %ret, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end31
  br label %do.cond

do.cond:                                          ; preds = %if.end41, %if.then24
  %24 = load i32, i32* %ret, align 4
  %cmp42 = icmp eq i32 -26240, %24
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %25 = load i32, i32* %ret, align 4
  %cmp44 = icmp eq i32 -25984, %25
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %26 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %26, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %lor.end
  %27 = load i32, i32* %ret, align 4
  %cmp46 = icmp ne i32 0, %27
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.end
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %29 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3900, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i64 0, i64 0), i32 noundef %29) #6
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %do.end
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 31
  %32 = load i32, i32* %in_msgtype, align 8
  %cmp50 = icmp eq i32 %32, 22
  br i1 %cmp50, label %land.lhs.true52, label %if.end56

land.lhs.true52:                                  ; preds = %if.end49
  %33 = load i32, i32* %update_hs_digest.addr, align 4
  %cmp53 = icmp eq i32 %33, 1
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true52
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_handshake_status(%struct.mbedtls_ssl_context* noundef %34) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true52, %if.end49
  br label %if.end58

if.else:                                          ; preds = %entry
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3912, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i64 0, i64 0)) #6
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %36, i32 0, i32 40
  store i32 0, i32* %keep_current_message57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end56
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3916, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then48, %if.then39, %if.then28, %if.then2
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_consume_current_message(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 38
  %1 = load i64, i64* %in_hslen, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 30
  %3 = load i8*, i8** %in_offt, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4310, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 38
  %6 = load i64, i64* %in_hslen3, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 32
  %8 = load i64, i64* %in_msglen, align 8
  %cmp4 = icmp ult i64 %6, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 38
  %10 = load i64, i64* %in_hslen6, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 32
  %12 = load i64, i64* %in_msglen7, align 8
  %sub = sub i64 %12, %10
  store i64 %sub, i64* %in_msglen7, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 29
  %14 = load i8*, i8** %in_msg, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 29
  %16 = load i8*, i8** %in_msg8, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 38
  %18 = load i64, i64* %in_hslen9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %18
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %19, i32 0, i32 32
  %20 = load i64, i64* %in_msglen10, align 8
  %call = call i8* @memmove(i8* noundef %14, i8* noundef %add.ptr, i64 noundef %20) #7
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 29
  %23 = load i8*, i8** %in_msg11, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 32
  %25 = load i64, i64* %in_msglen12, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4342, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.187, i64 0, i64 0), i8* noundef %23, i64 noundef %25) #6
  br label %if.end14

if.else:                                          ; preds = %if.end
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 32
  store i64 0, i64* %in_msglen13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 38
  store i64 0, i64* %in_hslen15, align 8
  br label %if.end23

if.else16:                                        ; preds = %entry
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt17 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 30
  %29 = load i8*, i8** %in_offt17, align 8
  %cmp18 = icmp ne i8* %29, null
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else16
  store i32 0, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %if.else16
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen21 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 32
  store i64 0, i64* %in_msglen21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end14
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then19, %if.then2
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_record_is_in_progress(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 32
  %1 = load i64, i64* %in_msglen, align 8
  %cmp = icmp ugt i64 %1, 0
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
define internal i32 @ssl_next_record_is_in_datagram(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 33
  %1 = load i64, i64* %in_left, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 35
  %3 = load i64, i64* %next_record_offset, align 8
  %cmp = icmp ugt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_load_buffered_message(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %hs_buf = alloca %struct.mbedtls_ssl_hs_buffer*, align 8
  %ret = alloca i32, align 4
  %offset = alloca i32, align 4
  %msg_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  store i32 0, i32* %ret, align 4
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3941, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.159, i64 0, i64 0)) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 1
  %5 = load i32, i32* %state, align 8
  %cmp1 = icmp eq i32 %5, 10
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 1
  %7 = load i32, i32* %state2, align 8
  %cmp3 = icmp eq i32 %7, 12
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 28
  %seen_ccs = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 1
  %9 = load i8, i8* %seen_ccs, align 8
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then4
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3950, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i64 0, i64 0)) #6
  store i32 -1, i32* %ret, align 4
  br label %exit

if.end6:                                          ; preds = %if.then4
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3955, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i64 0, i64 0)) #6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 31
  store i32 20, i32* %in_msgtype, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 32
  store i64 1, i64* %in_msglen, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 29
  %15 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  store i8 1, i8* %arrayidx, align 1
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 33
  store i64 0, i64* %in_left, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 35
  store i64 0, i64* %next_record_offset, align 8
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering7 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 28
  %seen_ccs8 = getelementptr inbounds %struct.anon, %struct.anon* %buffering7, i32 0, i32 1
  store i8 0, i8* %seen_ccs8, align 8
  br label %exit

if.end9:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %19 = load i32, i32* %offset, align 4
  %cmp10 = icmp ult i32 %19, 4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %20, i32 0, i32 28
  %hs12 = getelementptr inbounds %struct.anon, %struct.anon* %buffering11, i32 0, i32 2
  %21 = load i32, i32* %offset, align 4
  %idxprom = zext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [4 x %struct.mbedtls_ssl_hs_buffer], [4 x %struct.mbedtls_ssl_hs_buffer]* %hs12, i64 0, i64 %idxprom
  store %struct.mbedtls_ssl_hs_buffer* %arrayidx13, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %22 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %23 = bitcast %struct.mbedtls_ssl_hs_buffer* %22 to i8*
  %bf.load = load i8, i8* %23, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp14 = icmp eq i32 %bf.cast, 1
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.body
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %25, i32 0, i32 32
  %26 = load i32, i32* %in_msg_seq, align 8
  %27 = load i32, i32* %offset, align 4
  %add = add i32 %26, %27
  %28 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %29 = bitcast %struct.mbedtls_ssl_hs_buffer* %28 to i8*
  %bf.load16 = load i8, i8* %29, align 8
  %bf.lshr = lshr i8 %bf.load16, 2
  %bf.clear17 = and i8 %bf.lshr, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %tobool19 = icmp ne i32 %bf.cast18, 0
  %30 = zext i1 %tobool19 to i64
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.164, i64 0, i64 0)
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3979, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.162, i64 0, i64 0), i32 noundef %add, i8* noundef %cond) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %31 = load i32, i32* %offset, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %32 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering21 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %32, i32 0, i32 28
  %hs22 = getelementptr inbounds %struct.anon, %struct.anon* %buffering21, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [4 x %struct.mbedtls_ssl_hs_buffer], [4 x %struct.mbedtls_ssl_hs_buffer]* %hs22, i64 0, i64 0
  store %struct.mbedtls_ssl_hs_buffer* %arrayidx23, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %33 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %34 = bitcast %struct.mbedtls_ssl_hs_buffer* %33 to i8*
  %bf.load24 = load i8, i8* %34, align 8
  %bf.clear25 = and i8 %bf.load24, 1
  %bf.cast26 = zext i8 %bf.clear25 to i32
  %cmp27 = icmp eq i32 %bf.cast26, 1
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %35 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %36 = bitcast %struct.mbedtls_ssl_hs_buffer* %35 to i8*
  %bf.load28 = load i8, i8* %36, align 8
  %bf.lshr29 = lshr i8 %bf.load28, 2
  %bf.clear30 = and i8 %bf.lshr29, 1
  %bf.cast31 = zext i8 %bf.clear30 to i32
  %cmp32 = icmp eq i32 %bf.cast31, 1
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %land.lhs.true
  %37 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %37, i32 0, i32 1
  %38 = load i8*, i8** %data, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx34, align 1
  %conv = zext i8 %39 to i32
  %shl = shl i32 %conv, 16
  %40 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data35 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %40, i32 0, i32 1
  %41 = load i8*, i8** %data35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %42 to i32
  %shl38 = shl i32 %conv37, 8
  %or = or i32 %shl, %shl38
  %43 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data39 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %43, i32 0, i32 1
  %44 = load i8*, i8** %data39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %45 to i32
  %or42 = or i32 %or, %conv41
  %conv43 = sext i32 %or42 to i64
  store i64 %conv43, i64* %msg_len, align 8
  %46 = load i64, i64* %msg_len, align 8
  %add44 = add i64 %46, 12
  %cmp45 = icmp ugt i64 %add44, 16384
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then33
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3999, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then33
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4003, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.165, i64 0, i64 0)) #6
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %50 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data49 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %50, i32 0, i32 1
  %51 = load i8*, i8** %data49, align 8
  %52 = load i64, i64* %msg_len, align 8
  %add50 = add i64 %52, 12
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %49, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4005, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.166, i64 0, i64 0), i8* noundef %51, i64 noundef %add50) #6
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype51 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 31
  store i32 22, i32* %in_msgtype51, align 8
  %54 = load i64, i64* %msg_len, align 8
  %add52 = add i64 %54, 12
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 38
  store i64 %add52, i64* %in_hslen, align 8
  %56 = load i64, i64* %msg_len, align 8
  %add53 = add i64 %56, 12
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen54 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 32
  store i64 %add53, i64* %in_msglen54, align 8
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %58, i32 0, i32 29
  %59 = load i8*, i8** %in_msg55, align 8
  %60 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data56 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %60, i32 0, i32 1
  %61 = load i8*, i8** %data56, align 8
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 38
  %63 = load i64, i64* %in_hslen57, align 8
  %call = call i8* @memcpy(i8* noundef %59, i8* noundef %61, i64 noundef %63) #7
  store i32 0, i32* %ret, align 4
  br label %exit

if.else:                                          ; preds = %land.lhs.true, %for.end
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %65 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %in_msg_seq58 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %65, i32 0, i32 32
  %66 = load i32, i32* %in_msg_seq58, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %64, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4018, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.167, i64 0, i64 0), i32 noundef %66) #6
  br label %if.end59

if.end59:                                         ; preds = %if.else
  store i32 -1, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end59, %if.end48, %if.end6, %if.then5
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %67, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4025, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.168, i64 0, i64 0)) #6
  %68 = load i32, i32* %ret, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then47, %if.then
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_next_record(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %rec = alloca %struct.mbedtls_record, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_load_buffered_record(%struct.mbedtls_ssl_context* noundef %0) #6
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i64 @mbedtls_ssl_in_hdr_len(%struct.mbedtls_ssl_context* noundef %4) #6
  %call2 = call i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef %3, i64 noundef %call1) #6
  store i32 %call2, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %7 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4533, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.188, i64 0, i64 0), i32 noundef %7) #6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 26
  %11 = load i8*, i8** %in_hdr, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 33
  %13 = load i64, i64* %in_left, align 8
  %call6 = call i32 @ssl_parse_record_header(%struct.mbedtls_ssl_context* noundef %9, i8* noundef %11, i64 noundef %13, %struct.mbedtls_record* noundef %rec) #6
  store i32 %call6, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %14, 0
  br i1 %cmp7, label %if.then8, label %if.end34

if.then8:                                         ; preds = %if.end5
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 0
  %16 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %16, i32 0, i32 3
  %17 = load i8, i8* %transport, align 1
  %conv = zext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv, 1
  br i1 %cmp9, label %if.then11, label %if.else33

if.then11:                                        ; preds = %if.then8
  %18 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %18, -25728
  br i1 %cmp12, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.then11
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call15 = call i32 @ssl_buffer_future_record(%struct.mbedtls_ssl_context* noundef %19, %struct.mbedtls_record* noundef %rec) #6
  store i32 %call15, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp16 = icmp ne i32 %20, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  store i32 -26368, i32* %ret, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then11
  %22 = load i32, i32* %ret, align 4
  %cmp21 = icmp eq i32 %22, -26368
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_in_pointers(%struct.mbedtls_ssl_context* noundef %23) #6
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 1
  %24 = load i8, i8* %type, align 8
  %conv24 = zext i8 %24 to i32
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 31
  store i32 %conv24, i32* %in_msgtype, align 8
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 27
  %27 = load i8*, i8** %in_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 29
  store i8* %add.ptr, i8** %in_msg, align 8
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 28
  store i8* %add.ptr, i8** %in_iv, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %30 = load i64, i64* %data_len, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 32
  store i64 %30, i64* %in_msglen, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call25 = call i32 @ssl_check_client_reconnect(%struct.mbedtls_ssl_context* noundef %32) #6
  store i32 %call25, i32* %ret, align 4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4570, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.189, i64 0, i64 0), i32 noundef %34) #6
  %35 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %35, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then23
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then23
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 4
  %37 = load i64, i64* %buf_len, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 35
  store i64 %37, i64* %next_record_offset, align 8
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %39, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4579, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.190, i64 0, i64 0)) #6
  br label %if.end32

if.else:                                          ; preds = %if.end20
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset30 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 35
  store i64 0, i64* %next_record_offset30, align 8
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left31 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %41, i32 0, i32 33
  store i64 0, i64* %in_left31, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %42, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4588, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.191, i64 0, i64 0)) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end29
  store i32 -25984, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %if.then8
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end5
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf35 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %44, i32 0, i32 0
  %45 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf35, align 8
  %transport36 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %45, i32 0, i32 3
  %46 = load i8, i8* %transport36, align 1
  %conv37 = zext i8 %46 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then40, label %if.else49

if.then40:                                        ; preds = %if.end34
  %buf_len41 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 4
  %47 = load i64, i64* %buf_len41, align 8
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 35
  store i64 %47, i64* %next_record_offset42, align 8
  %49 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset43 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %49, i32 0, i32 35
  %50 = load i64, i64* %next_record_offset43, align 8
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left44 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 33
  %52 = load i64, i64* %in_left44, align 8
  %cmp45 = icmp ult i64 %50, %52
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then40
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %53, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4608, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.192, i64 0, i64 0)) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then40
  br label %if.end57

if.else49:                                        ; preds = %if.end34
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %buf_len50 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 4
  %55 = load i64, i64* %buf_len50, align 8
  %call51 = call i32 @mbedtls_ssl_fetch_input(%struct.mbedtls_ssl_context* noundef %54, i64 noundef %55) #6
  store i32 %call51, i32* %ret, align 4
  %56 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %56, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else49
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %58 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %57, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4620, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.188, i64 0, i64 0), i32 noundef %58) #6
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.else49
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 33
  store i64 0, i64* %in_left56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %if.end48
  %61 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call58 = call i32 @ssl_prepare_record_content(%struct.mbedtls_ssl_context* noundef %61, %struct.mbedtls_record* noundef %rec) #6
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end101

if.then61:                                        ; preds = %if.end57
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf62 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 0
  %63 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf62, align 8
  %transport63 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %63, i32 0, i32 3
  %64 = load i8, i8* %transport63, align 1
  %conv64 = zext i8 %64 to i32
  %cmp65 = icmp eq i32 %conv64, 1
  br i1 %cmp65, label %if.then67, label %if.else95

if.then67:                                        ; preds = %if.then61
  %65 = load i32, i32* %ret, align 4
  %cmp68 = icmp eq i32 %65, -29056
  br i1 %cmp68, label %if.then70, label %if.end94

if.then70:                                        ; preds = %if.then67
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %66, i32 0, i32 1
  %67 = load i32, i32* %state, align 8
  %cmp71 = icmp eq i32 %67, 11
  br i1 %cmp71, label %if.then76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then70
  %68 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %68, i32 0, i32 1
  %69 = load i32, i32* %state73, align 8
  %cmp74 = icmp eq i32 %69, 13
  br i1 %cmp74, label %if.then76, label %if.end82

if.then76:                                        ; preds = %lor.lhs.false, %if.then70
  %70 = load i32, i32* %ret, align 4
  %cmp77 = icmp eq i32 %70, -29056
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.then76
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call80 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %71, i8 noundef zeroext 2, i8 noundef zeroext 20) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.then76
  %72 = load i32, i32* %ret, align 4
  store i32 %72, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %lor.lhs.false
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf83 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 0
  %74 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf83, align 8
  %badmac_limit = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %74, i32 0, i32 54
  %75 = load i32, i32* %badmac_limit, align 8
  %cmp84 = icmp ne i32 %75, 0
  br i1 %cmp84, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %if.end82
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %badmac_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 5
  %77 = load i32, i32* %badmac_seen, align 8
  %inc = add i32 %77, 1
  store i32 %inc, i32* %badmac_seen, align 8
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf86 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %78, i32 0, i32 0
  %79 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf86, align 8
  %badmac_limit87 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %79, i32 0, i32 54
  %80 = load i32, i32* %badmac_limit87, align 8
  %cmp88 = icmp uge i32 %inc, %80
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %land.lhs.true
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %81, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4659, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.193, i64 0, i64 0)) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end91:                                         ; preds = %land.lhs.true, %if.end82
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset92 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %82, i32 0, i32 35
  store i64 0, i64* %next_record_offset92, align 8
  %83 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left93 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %83, i32 0, i32 33
  store i64 0, i64* %in_left93, align 8
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %84, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4669, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.194, i64 0, i64 0)) #6
  store i32 -25984, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then67
  %85 = load i32, i32* %ret, align 4
  store i32 %85, i32* %retval, align 4
  br label %return

if.else95:                                        ; preds = %if.then61
  %86 = load i32, i32* %ret, align 4
  %cmp96 = icmp eq i32 %86, -29056
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.else95
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call99 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %87, i8 noundef zeroext 2, i8 noundef zeroext 20) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.else95
  %88 = load i32, i32* %ret, align 4
  store i32 %88, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %if.end57
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_in_pointers(%struct.mbedtls_ssl_context* noundef %89) #6
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len102 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %90, i32 0, i32 27
  %91 = load i8*, i8** %in_len102, align 8
  %add.ptr103 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv104 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %92, i32 0, i32 28
  store i8* %add.ptr103, i8** %in_iv104, align 8
  %type105 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 1
  %93 = load i8, i8* %type105, align 8
  %conv106 = zext i8 %93 to i32
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %94, i32 0, i32 31
  store i32 %conv106, i32* %in_msgtype107, align 8
  %type108 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 1
  %95 = load i8, i8* %type108, align 8
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr109 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 26
  %97 = load i8*, i8** %in_hdr109, align 8
  %arrayidx = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %95, i8* %arrayidx, align 1
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 3
  %98 = load i8*, i8** %buf, align 8
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 5
  %99 = load i64, i64* %data_offset, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %98, i64 %99
  %100 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg111 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %100, i32 0, i32 29
  store i8* %add.ptr110, i8** %in_msg111, align 8
  %data_len112 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %101 = load i64, i64* %data_len112, align 8
  %102 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen113 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %102, i32 0, i32 32
  store i64 %101, i64* %in_msglen113, align 8
  %data_len114 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %103 = load i64, i64* %data_len114, align 8
  %shr = lshr i64 %103, 8
  %and = and i64 %shr, 255
  %conv115 = trunc i64 %and to i8
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len116 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %104, i32 0, i32 27
  %105 = load i8*, i8** %in_len116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %conv115, i8* %arrayidx117, align 1
  %data_len118 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %rec, i32 0, i32 6
  %106 = load i64, i64* %data_len118, align 8
  %and119 = and i64 %106, 255
  %conv120 = trunc i64 %and119 to i8
  %107 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len121 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %107, i32 0, i32 27
  %108 = load i8*, i8** %in_len121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %conv120, i8* %arrayidx122, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end101, %if.end100, %if.end94, %if.end91, %if.then90, %if.end81, %if.then54, %if.else33, %if.end32, %if.then28, %if.then18, %if.then4, %if.then
  %109 = load i32, i32* %retval, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handle_message_type(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 31
  %1 = load i32, i32* %in_msgtype, align 8
  %cmp = icmp eq i32 %1, 22
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_prepare_handshake_record(%struct.mbedtls_ssl_context* noundef %2) #6
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 31
  %5 = load i32, i32* %in_msgtype4, align 8
  %cmp5 = icmp eq i32 %5, 20
  br i1 %cmp5, label %if.then6, label %if.end33

if.then6:                                         ; preds = %if.end3
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 32
  %7 = load i64, i64* %in_msglen, align 8
  %cmp7 = icmp ne i64 %7, 1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 32
  %10 = load i64, i64* %in_msglen9, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4736, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0), i64 noundef %10) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 29
  %12 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv, 1
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 29
  %16 = load i8*, i8** %in_msg14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4743, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv16) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 0
  %19 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %19, i32 0, i32 3
  %20 = load i8, i8* %transport, align 1
  %conv18 = zext i8 %20 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end17
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 1
  %22 = load i32, i32* %state, align 8
  %cmp21 = icmp ne i32 %22, 10
  br i1 %cmp21, label %land.lhs.true23, label %if.end32

land.lhs.true23:                                  ; preds = %land.lhs.true
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state24 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 1
  %24 = load i32, i32* %state24, align 8
  %cmp25 = icmp ne i32 %24, 12
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %land.lhs.true23
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %25, i32 0, i32 16
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp28 = icmp eq %struct.mbedtls_ssl_handshake_params* %26, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %27, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4754, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.103, i64 0, i64 0)) #6
  store i32 -26368, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4758, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.104, i64 0, i64 0)) #6
  store i32 -25728, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true23, %land.lhs.true, %if.end17
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end3
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype34 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 31
  %30 = load i32, i32* %in_msgtype34, align 8
  %cmp35 = icmp eq i32 %30, 21
  br i1 %cmp35, label %if.then37, label %if.end86

if.then37:                                        ; preds = %if.end33
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen38 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 32
  %32 = load i64, i64* %in_msglen38, align 8
  %cmp39 = icmp ne i64 %32, 2
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then37
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen42 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 32
  %35 = load i64, i64* %in_msglen42, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4787, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.105, i64 0, i64 0), i64 noundef %35) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then37
  %36 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg44 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 29
  %38 = load i8*, i8** %in_msg44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %39 to i32
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg47 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 29
  %41 = load i8*, i8** %in_msg47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %42 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %36, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4792, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i64 0, i64 0), i32 noundef %conv46, i32 noundef %conv49) #6
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg50 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %43, i32 0, i32 29
  %44 = load i8*, i8** %in_msg50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %45 to i32
  %cmp53 = icmp eq i32 %conv52, 2
  br i1 %cmp53, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.end43
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg56 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %47, i32 0, i32 29
  %48 = load i8*, i8** %in_msg56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %46, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4800, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv58) #6
  store i32 -30592, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end43
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg60 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %50, i32 0, i32 29
  %51 = load i8*, i8** %in_msg60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %52 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %land.lhs.true65, label %if.end72

land.lhs.true65:                                  ; preds = %if.end59
  %53 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg66 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %53, i32 0, i32 29
  %54 = load i8*, i8** %in_msg66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %55 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true65
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %56, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4807, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.108, i64 0, i64 0)) #6
  store i32 -30848, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %land.lhs.true65, %if.end59
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %57, i32 0, i32 29
  %58 = load i8*, i8** %in_msg73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %59 to i32
  %cmp76 = icmp eq i32 %conv75, 1
  br i1 %cmp76, label %land.lhs.true78, label %if.end85

land.lhs.true78:                                  ; preds = %if.end72
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg79 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %60, i32 0, i32 29
  %61 = load i8*, i8** %in_msg79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %62 to i32
  %cmp82 = icmp eq i32 %conv81, 100
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %land.lhs.true78
  %63 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %63, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4815, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %land.lhs.true78, %if.end72
  store i32 -26240, i32* %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end33
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf87 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 0
  %65 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf87, align 8
  %transport88 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %65, i32 0, i32 3
  %66 = load i8, i8* %transport88, align 1
  %conv89 = zext i8 %66 to i32
  %cmp90 = icmp eq i32 %conv89, 1
  br i1 %cmp90, label %if.then92, label %if.end118

if.then92:                                        ; preds = %if.end86
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype93 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 31
  %68 = load i32, i32* %in_msgtype93, align 8
  %cmp94 = icmp eq i32 %68, 23
  br i1 %cmp94, label %land.lhs.true96, label %if.end108

land.lhs.true96:                                  ; preds = %if.then92
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call97 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %69) #6
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %land.lhs.true100, label %if.end108

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 2
  %71 = load i32, i32* %renego_status, align 4
  %cmp101 = icmp eq i32 %71, 1
  br i1 %cmp101, label %land.lhs.true103, label %if.then107

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state104 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %72, i32 0, i32 1
  %73 = load i32, i32* %state104, align 8
  %cmp105 = icmp eq i32 %73, 2
  br i1 %cmp105, label %if.end108, label %if.then107

if.then107:                                       ; preds = %land.lhs.true103, %land.lhs.true100
  %74 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %74, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4837, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.110, i64 0, i64 0)) #6
  store i32 -26240, i32* %retval, align 4
  br label %return

if.end108:                                        ; preds = %land.lhs.true103, %land.lhs.true96, %if.then92
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake109 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %75, i32 0, i32 16
  %76 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake109, align 8
  %cmp110 = icmp ne %struct.mbedtls_ssl_handshake_params* %76, null
  br i1 %cmp110, label %land.lhs.true112, label %if.end117

land.lhs.true112:                                 ; preds = %if.end108
  %77 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call113 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %77) #6
  %cmp114 = icmp eq i32 %call113, 1
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %land.lhs.true112
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_handshake_wrapup_free_hs_transform(%struct.mbedtls_ssl_context* noundef %78) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %land.lhs.true112, %if.end108
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end86
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end118, %if.then107, %if.end85, %if.then84, %if.then71, %if.then55, %if.then41, %if.end31, %if.then30, %if.then13, %if.then8, %if.then2
  %79 = load i32, i32* %retval, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_buffer_message(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %recv_msg_seq_offset = alloca i32, align 4
  %recv_msg_seq = alloca i32, align 4
  %hs_buf = alloca %struct.mbedtls_ssl_hs_buffer*, align 8
  %msg_len = alloca i64, align 8
  %reassembly_buf_sz = alloca i64, align 8
  %frag_len = alloca i64, align 8
  %frag_off = alloca i64, align 8
  %msg = alloca i8*, align 8
  %bitmask = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4081, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.169, i64 0, i64 0)) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 31
  %5 = load i32, i32* %in_msgtype, align 8
  switch i32 %5, label %sw.default [
    i32 20, label %sw.bb
    i32 22, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4086, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.170, i64 0, i64 0)) #6
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 28
  %seen_ccs = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 1
  store i8 1, i8* %seen_ccs, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 29
  %9 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 %conv, 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 29
  %12 = load i8*, i8** %in_msg2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 5
  %13 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  %or = or i32 %shl, %conv4
  store i32 %or, i32* %recv_msg_seq, align 4
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 38
  %15 = load i64, i64* %in_hslen, align 8
  %sub = sub i64 %15, 12
  store i64 %sub, i64* %msg_len, align 8
  %16 = load i32, i32* %recv_msg_seq, align 4
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 16
  %18 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake5, align 8
  %in_msg_seq = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %18, i32 0, i32 32
  %19 = load i32, i32* %in_msg_seq, align 8
  %cmp6 = icmp ult i32 %16, %19
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb1
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4102, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %sw.bb1
  %21 = load i32, i32* %recv_msg_seq, align 4
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 16
  %23 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake10, align 8
  %in_msg_seq11 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %23, i32 0, i32 32
  %24 = load i32, i32* %in_msg_seq11, align 8
  %sub12 = sub i32 %21, %24
  store i32 %sub12, i32* %recv_msg_seq_offset, align 4
  %25 = load i32, i32* %recv_msg_seq_offset, align 4
  %cmp13 = icmp uge i32 %25, 4
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end9
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %recv_msg_seq, align 4
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake16 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 16
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake16, align 8
  %in_msg_seq17 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %29, i32 0, i32 32
  %30 = load i32, i32* %in_msg_seq17, align 8
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake18 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 16
  %32 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake18, align 8
  %in_msg_seq19 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %32, i32 0, i32 32
  %33 = load i32, i32* %in_msg_seq19, align 8
  %add = add i32 %33, 4
  %sub20 = sub i32 %add, 1
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4114, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.171, i64 0, i64 0), i32 noundef %27, i32 noundef %30, i32 noundef %sub20) #6
  br label %exit

if.end21:                                         ; preds = %if.end9
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %35 = load i32, i32* %recv_msg_seq, align 4
  %36 = load i32, i32* %recv_msg_seq_offset, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %34, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4120, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.172, i64 0, i64 0), i32 noundef %35, i32 noundef %36) #6
  %37 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering22 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %37, i32 0, i32 28
  %hs23 = getelementptr inbounds %struct.anon, %struct.anon* %buffering22, i32 0, i32 2
  %38 = load i32, i32* %recv_msg_seq_offset, align 4
  %idxprom = zext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds [4 x %struct.mbedtls_ssl_hs_buffer], [4 x %struct.mbedtls_ssl_hs_buffer]* %hs23, i64 0, i64 %idxprom
  store %struct.mbedtls_ssl_hs_buffer* %arrayidx24, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %39 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %40 = bitcast %struct.mbedtls_ssl_hs_buffer* %39 to i8*
  %bf.load = load i8, i8* %40, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.else88, label %if.then25

if.then25:                                        ; preds = %if.end21
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_hs_is_proper_fragment(%struct.mbedtls_ssl_context* noundef %41) #6
  %cmp26 = icmp eq i32 %call, 1
  %conv27 = zext i1 %cmp26 to i32
  %42 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %43 = bitcast %struct.mbedtls_ssl_hs_buffer* %42 to i8*
  %44 = trunc i32 %conv27 to i8
  %bf.load28 = load i8, i8* %43, align 8
  %bf.value = and i8 %44, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear29 = and i8 %bf.load28, -3
  %bf.set = or i8 %bf.clear29, %bf.shl
  store i8 %bf.set, i8* %43, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %45 = load i64, i64* %msg_len, align 8
  %add30 = add i64 %45, 12
  %cmp31 = icmp ugt i64 %add30, 16384
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then25
  br label %exit

if.end34:                                         ; preds = %if.then25
  %46 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering35 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %46, i32 0, i32 28
  %total_bytes_buffered = getelementptr inbounds %struct.anon, %struct.anon* %buffering35, i32 0, i32 0
  %47 = load i64, i64* %total_bytes_buffered, align 8
  %cmp36 = icmp ugt i64 %47, 32768
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %48, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4147, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %49 = load i64, i64* %msg_len, align 8
  %50 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %51 = bitcast %struct.mbedtls_ssl_hs_buffer* %50 to i8*
  %bf.load40 = load i8, i8* %51, align 8
  %bf.lshr = lshr i8 %bf.load40, 1
  %bf.clear41 = and i8 %bf.lshr, 1
  %bf.cast42 = zext i8 %bf.clear41 to i32
  %call43 = call i64 @ssl_get_reassembly_buffer_size(i64 noundef %49, i32 noundef %bf.cast42) #6
  store i64 %call43, i64* %reassembly_buf_sz, align 8
  %52 = load i64, i64* %reassembly_buf_sz, align 8
  %53 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering44 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %53, i32 0, i32 28
  %total_bytes_buffered45 = getelementptr inbounds %struct.anon, %struct.anon* %buffering44, i32 0, i32 0
  %54 = load i64, i64* %total_bytes_buffered45, align 8
  %sub46 = sub i64 32768, %54
  %cmp47 = icmp ugt i64 %52, %sub46
  br i1 %cmp47, label %if.then49, label %if.end65

if.then49:                                        ; preds = %if.end39
  %55 = load i32, i32* %recv_msg_seq_offset, align 4
  %cmp50 = icmp ugt i32 %55, 0
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then49
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %57 = load i64, i64* %msg_len, align 8
  %58 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering53 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %58, i32 0, i32 28
  %total_bytes_buffered54 = getelementptr inbounds %struct.anon, %struct.anon* %buffering53, i32 0, i32 0
  %59 = load i64, i64* %total_bytes_buffered54, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %56, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4166, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.173, i64 0, i64 0), i64 noundef %57, i64 noundef 32768, i64 noundef %59) #6
  br label %exit

if.else:                                          ; preds = %if.then49
  %60 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %61 = load i64, i64* %msg_len, align 8
  %62 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering55 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %62, i32 0, i32 28
  %total_bytes_buffered56 = getelementptr inbounds %struct.anon, %struct.anon* %buffering55, i32 0, i32 0
  %63 = load i64, i64* %total_bytes_buffered56, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %60, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4176, i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.174, i64 0, i64 0), i64 noundef %61, i64 noundef 32768, i64 noundef %63) #6
  br label %if.end57

if.end57:                                         ; preds = %if.else
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %65 = load i64, i64* %reassembly_buf_sz, align 8
  %call58 = call i32 @ssl_buffer_make_space(%struct.mbedtls_ssl_context* noundef %64, i64 noundef %65) #6
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end57
  %66 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %67 = load i64, i64* %msg_len, align 8
  %68 = load i64, i64* %reassembly_buf_sz, align 8
  %69 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering62 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %69, i32 0, i32 28
  %total_bytes_buffered63 = getelementptr inbounds %struct.anon, %struct.anon* %buffering62, i32 0, i32 0
  %70 = load i64, i64* %total_bytes_buffered63, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %66, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4189, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.175, i64 0, i64 0), i64 noundef %67, i64 noundef %68, i64 noundef 32768, i64 noundef %70) #6
  store i32 -27136, i32* %ret, align 4
  br label %exit

if.end64:                                         ; preds = %if.end57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end39
  %71 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %72 = load i64, i64* %msg_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %71, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4196, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.176, i64 0, i64 0), i64 noundef %72) #6
  %73 = load i64, i64* %reassembly_buf_sz, align 8
  %call66 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %73) #7
  %74 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %74, i32 0, i32 1
  store i8* %call66, i8** %data, align 8
  %75 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data67 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %75, i32 0, i32 1
  %76 = load i8*, i8** %data67, align 8
  %cmp68 = icmp eq i8* %76, null
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  store i32 -32512, i32* %ret, align 4
  br label %exit

if.end71:                                         ; preds = %if.end65
  %77 = load i64, i64* %reassembly_buf_sz, align 8
  %78 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %78, i32 0, i32 2
  store i64 %77, i64* %data_len, align 8
  %79 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data72 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %79, i32 0, i32 1
  %80 = load i8*, i8** %data72, align 8
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg73 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %81, i32 0, i32 29
  %82 = load i8*, i8** %in_msg73, align 8
  %call74 = call i8* @memcpy(i8* noundef %80, i8* noundef %82, i64 noundef 6) #7
  %83 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data75 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %83, i32 0, i32 1
  %84 = load i8*, i8** %data75, align 8
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 6
  %call76 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef 3) #7
  %85 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data77 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %85, i32 0, i32 1
  %86 = load i8*, i8** %data77, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %86, i64 9
  %87 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data79 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %87, i32 0, i32 1
  %88 = load i8*, i8** %data79, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %88, i64 1
  %call81 = call i8* @memcpy(i8* noundef %add.ptr78, i8* noundef %add.ptr80, i64 noundef 3) #7
  %89 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %90 = bitcast %struct.mbedtls_ssl_hs_buffer* %89 to i8*
  %bf.load82 = load i8, i8* %90, align 8
  %bf.clear83 = and i8 %bf.load82, -2
  %bf.set84 = or i8 %bf.clear83, 1
  store i8 %bf.set84, i8* %90, align 8
  %91 = load i64, i64* %reassembly_buf_sz, align 8
  %92 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering85 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %92, i32 0, i32 28
  %total_bytes_buffered86 = getelementptr inbounds %struct.anon, %struct.anon* %buffering85, i32 0, i32 0
  %93 = load i64, i64* %total_bytes_buffered86, align 8
  %add87 = add i64 %93, %91
  store i64 %add87, i64* %total_bytes_buffered86, align 8
  br label %if.end96

if.else88:                                        ; preds = %if.end21
  %94 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data89 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %94, i32 0, i32 1
  %95 = load i8*, i8** %data89, align 8
  %96 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg90 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %96, i32 0, i32 29
  %97 = load i8*, i8** %in_msg90, align 8
  %call91 = call i32 @memcmp(i8* noundef %95, i8* noundef %97, i64 noundef 4) #8
  %cmp92 = icmp ne i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.else88
  %98 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %98, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4221, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.177, i64 0, i64 0)) #6
  br label %exit

if.end95:                                         ; preds = %if.else88
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end71
  %99 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %100 = bitcast %struct.mbedtls_ssl_hs_buffer* %99 to i8*
  %bf.load97 = load i8, i8* %100, align 8
  %bf.lshr98 = lshr i8 %bf.load97, 2
  %bf.clear99 = and i8 %bf.lshr98, 1
  %bf.cast100 = zext i8 %bf.clear99 to i32
  %tobool101 = icmp ne i32 %bf.cast100, 0
  br i1 %tobool101, label %if.end139, label %if.then102

if.then102:                                       ; preds = %if.end96
  %101 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %data103 = getelementptr inbounds %struct.mbedtls_ssl_hs_buffer, %struct.mbedtls_ssl_hs_buffer* %101, i32 0, i32 1
  %102 = load i8*, i8** %data103, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %102, i64 12
  store i8* %add.ptr104, i8** %msg, align 8
  %103 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call105 = call i32 @ssl_get_hs_frag_off(%struct.mbedtls_ssl_context* noundef %103) #6
  %conv106 = zext i32 %call105 to i64
  store i64 %conv106, i64* %frag_off, align 8
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call107 = call i32 @ssl_get_hs_frag_len(%struct.mbedtls_ssl_context* noundef %104) #6
  %conv108 = zext i32 %call107 to i64
  store i64 %conv108, i64* %frag_len, align 8
  %105 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %106 = load i64, i64* %frag_off, align 8
  %107 = load i64, i64* %frag_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %105, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4243, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.178, i64 0, i64 0), i64 noundef %106, i64 noundef %107) #6
  %108 = load i8*, i8** %msg, align 8
  %109 = load i64, i64* %frag_off, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %108, i64 %109
  %110 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg110 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %110, i32 0, i32 29
  %111 = load i8*, i8** %in_msg110, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %111, i64 12
  %112 = load i64, i64* %frag_len, align 8
  %call112 = call i8* @memcpy(i8* noundef %add.ptr109, i8* noundef %add.ptr111, i64 noundef %112) #7
  %113 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %114 = bitcast %struct.mbedtls_ssl_hs_buffer* %113 to i8*
  %bf.load113 = load i8, i8* %114, align 8
  %bf.lshr114 = lshr i8 %bf.load113, 1
  %bf.clear115 = and i8 %bf.lshr114, 1
  %bf.cast116 = zext i8 %bf.clear115 to i32
  %tobool117 = icmp ne i32 %bf.cast116, 0
  br i1 %tobool117, label %if.then118, label %if.else129

if.then118:                                       ; preds = %if.then102
  %115 = load i8*, i8** %msg, align 8
  %116 = load i64, i64* %msg_len, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %add.ptr119, i8** %bitmask, align 8
  %117 = load i8*, i8** %bitmask, align 8
  %118 = load i64, i64* %frag_off, align 8
  %119 = load i64, i64* %frag_len, align 8
  call void @ssl_bitmask_set(i8* noundef %117, i64 noundef %118, i64 noundef %119) #6
  %120 = load i8*, i8** %bitmask, align 8
  %121 = load i64, i64* %msg_len, align 8
  %call120 = call i32 @ssl_bitmask_check(i8* noundef %120, i64 noundef %121) #6
  %cmp121 = icmp eq i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %122 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %123 = bitcast %struct.mbedtls_ssl_hs_buffer* %122 to i8*
  %124 = trunc i32 %conv122 to i8
  %bf.load123 = load i8, i8* %123, align 8
  %bf.value124 = and i8 %124, 1
  %bf.shl125 = shl i8 %bf.value124, 2
  %bf.clear126 = and i8 %bf.load123, -5
  %bf.set127 = or i8 %bf.clear126, %bf.shl125
  store i8 %bf.set127, i8* %123, align 8
  %bf.result.cast128 = zext i8 %bf.value124 to i32
  br label %if.end133

if.else129:                                       ; preds = %if.then102
  %125 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %126 = bitcast %struct.mbedtls_ssl_hs_buffer* %125 to i8*
  %bf.load130 = load i8, i8* %126, align 8
  %bf.clear131 = and i8 %bf.load130, -5
  %bf.set132 = or i8 %bf.clear131, 4
  store i8 %bf.set132, i8* %126, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else129, %if.then118
  %127 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %128 = load %struct.mbedtls_ssl_hs_buffer*, %struct.mbedtls_ssl_hs_buffer** %hs_buf, align 8
  %129 = bitcast %struct.mbedtls_ssl_hs_buffer* %128 to i8*
  %bf.load134 = load i8, i8* %129, align 8
  %bf.lshr135 = lshr i8 %bf.load134, 2
  %bf.clear136 = and i8 %bf.lshr135, 1
  %bf.cast137 = zext i8 %bf.clear136 to i32
  %tobool138 = icmp ne i32 %bf.cast137, 0
  %130 = zext i1 %tobool138 to i64
  %cond = select i1 %tobool138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i64 0, i64 0)
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %127, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4259, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.179, i64 0, i64 0), i8* noundef %cond) #6
  br label %if.end139

if.end139:                                        ; preds = %if.end133, %if.end96
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end139, %sw.bb
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then94, %if.then70, %if.then61, %if.then52, %if.then33, %if.then15
  %131 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %131, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4272, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.182, i64 0, i64 0)) #6
  %132 = load i32, i32* %ret, align 4
  store i32 %132, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then38, %if.then8, %if.then
  %133 = load i32, i32* %retval, align 4
  ret i32 %133
}

declare dso_local void @mbedtls_ssl_handshake_wrapup_free_hs_transform(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_send_fatal_handshake_failure(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 40) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %ssl, i8 noundef zeroext %level, i8 noundef zeroext %message) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i8, align 1
  %message.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8 %level, i8* %level.addr, align 1
  store i8 %message, i8* %message.addr, align 1
  store i32 -110, i32* %ret, align 4
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
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 53
  %4 = load i64, i64* %out_left, align 8
  %cmp2 = icmp ne i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %5) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4871, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i64 0, i64 0)) #6
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load i8, i8* %level.addr, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* %message.addr, align 1
  %conv5 = zext i8 %9 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4872, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.112, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv5) #6
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 51
  store i32 21, i32* %out_msgtype, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 52
  store i64 2, i64* %out_msglen, align 8
  %12 = load i8, i8* %level.addr, align 1
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 50
  %14 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %12, i8* %arrayidx, align 1
  %15 = load i8, i8* %message.addr, align 1
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 50
  %17 = load i8*, i8** %out_msg6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %15, i8* %arrayidx7, align 1
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @mbedtls_ssl_write_record(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1) #6
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4881, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0), i32 noundef %20) #6
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end4
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4884, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4893, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.114, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 51
  store i32 20, i32* %out_msgtype, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 52
  store i64 1, i64* %out_msglen, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 50
  %4 = load i8*, i8** %out_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 1, i8* %arrayidx, align 1
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 1
  %6 = load i32, i32* %state, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %state, align 8
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %7) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %9 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4903, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.115, i64 0, i64 0), i32 noundef %9) #6
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4907, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.116, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_write_handshake_msg(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_write_handshake_msg_ext(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 1, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4916, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %1, i32 noundef 1) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4920, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.118, i64 0, i64 0), i32 noundef %3) #6
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 31
  %6 = load i32, i32* %in_msgtype, align 8
  %cmp1 = icmp ne i32 %6, 20
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %7, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4926, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i64 0, i64 0)) #6
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call3 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 10) #6
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4939, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.120, i64 0, i64 0)) #6
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 20
  %11 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_negotiate, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 17
  store %struct.mbedtls_ssl_transform* %11, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_negotiate = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 15
  %14 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session_negotiate, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %session_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 12
  store %struct.mbedtls_ssl_session* %14, %struct.mbedtls_ssl_session** %session_in, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %17, i32 0, i32 3
  %18 = load i8, i8* %transport, align 1
  %conv = zext i8 %18 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_dtls_replay_reset(%struct.mbedtls_ssl_context* noundef %19) #6
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 34
  %21 = load i16, i16* %in_epoch, align 8
  %inc = add i16 %21, 1
  store i16 %inc, i16* %in_epoch, align 8
  %conv8 = zext i16 %inc to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4953, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i64 0, i64 0)) #6
  store i32 -27520, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then7
  br label %if.end14

if.else:                                          ; preds = %if.end4
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 25
  %24 = load i8*, i8** %in_ctr, align 8
  %call13 = call i8* @memset(i8* noundef %24, i32 noundef 0, i64 noundef 8) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end12
  %25 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_in_pointers(%struct.mbedtls_ssl_context* noundef %25) #6
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 1
  %27 = load i32, i32* %state, align 8
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %state, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4967, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.122, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then11, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_update_in_pointers(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
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
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 26
  %4 = load i8*, i8** %in_hdr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 25
  store i8* %add.ptr, i8** %in_ctr, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 25
  %7 = load i8*, i8** %in_ctr2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 27
  store i8* %add.ptr3, i8** %in_len, align 8
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 27
  %10 = load i8*, i8** %in_len4, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 28
  store i8* %add.ptr5, i8** %in_iv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 26
  %13 = load i8*, i8** %in_hdr6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 -8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr8 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 25
  store i8* %add.ptr7, i8** %in_ctr8, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 26
  %16 = load i8*, i8** %in_hdr9, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_len11 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 27
  store i8* %add.ptr10, i8** %in_len11, align 8
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 26
  %19 = load i8*, i8** %in_hdr12, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i64 5
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv14 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 28
  store i8* %add.ptr13, i8** %in_iv14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_iv15 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %21, i32 0, i32 28
  %22 = load i8*, i8** %in_iv15, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 29
  store i8* %22, i8** %in_msg, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_transform_get_explicit_iv_len(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %0, i32 0, i32 1
  %1 = load i64, i64* %ivlen, align 8
  %2 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %fixed_ivlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %2, i32 0, i32 2
  %3 = load i64, i64* %fixed_ivlen, align 8
  %sub = sub i64 %1, %3
  ret i64 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_reset_in_out_pointers(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
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
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 45
  %4 = load i8*, i8** %out_buf, align 8
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %5, i32 0, i32 47
  store i8* %4, i8** %out_hdr, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 24
  %7 = load i8*, i8** %in_buf, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 26
  store i8* %7, i8** %in_hdr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 45
  %10 = load i8*, i8** %out_buf2, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 46
  store i8* %10, i8** %out_ctr, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 45
  %13 = load i8*, i8** %out_buf3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_hdr4 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 47
  store i8* %add.ptr, i8** %out_hdr4, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 24
  %16 = load i8*, i8** %in_buf5, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 26
  store i8* %add.ptr6, i8** %in_hdr7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_out_pointers(%struct.mbedtls_ssl_context* noundef %18, %struct.mbedtls_ssl_transform* noundef null) #6
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_update_in_pointers(%struct.mbedtls_ssl_context* noundef %19) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ssl_get_bytes_avail(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 30
  %1 = load i8*, i8** %in_offt, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 32
  %3 = load i64, i64* %in_msglen, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_check_pending(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 40
  %1 = load i32, i32* %keep_current_message, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5113, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.123, i64 0, i64 0)) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 3
  %5 = load i8, i8* %transport, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 33
  %7 = load i64, i64* %in_left, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 35
  %9 = load i64, i64* %next_record_offset, align 8
  %cmp3 = icmp ugt i64 %7, %9
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5125, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.124, i64 0, i64 0)) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 38
  %12 = load i64, i64* %in_hslen, align 8
  %cmp7 = icmp ugt i64 %12, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.end14

land.lhs.true9:                                   ; preds = %if.end6
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen10 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 38
  %14 = load i64, i64* %in_hslen10, align 8
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 32
  %16 = load i64, i64* %in_msglen, align 8
  %cmp11 = icmp ult i64 %14, %16
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true9
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5136, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.125, i64 0, i64 0)) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true9, %if.end6
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %18, i32 0, i32 30
  %19 = load i8*, i8** %in_offt, align 8
  %cmp15 = icmp ne i8* %19, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5145, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.126, i64 0, i64 0)) #6
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5155, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.127, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then13, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_record_expansion(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform_expansion = alloca i64, align 8
  %transform = alloca %struct.mbedtls_ssl_transform*, align 8
  %block_size = alloca i32, align 4
  %out_hdr_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 0, i64* %transform_expansion, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 18
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_out, align 8
  store %struct.mbedtls_ssl_transform* %1, %struct.mbedtls_ssl_transform** %transform, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_out_hdr_len(%struct.mbedtls_ssl_context* noundef %2) #6
  store i64 %call, i64* %out_hdr_len, align 8
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_transform* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %out_hdr_len, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %5, i32 0, i32 11
  %call1 = call i32 @mbedtls_cipher_get_cipher_mode(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc) #6
  switch i32 %call1, label %sw.default [
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 11, label %sw.bb
    i32 7, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %6 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %minlen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %6, i32 0, i32 0
  %7 = load i64, i64* %minlen, align 8
  store i64 %7, i64* %transform_expansion, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %cipher_ctx_enc3 = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %8, i32 0, i32 11
  %call4 = call i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc3) #6
  store i32 %call4, i32* %block_size, align 4
  %9 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform, align 8
  %maclen = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %9, i32 0, i32 3
  %10 = load i64, i64* %maclen, align 8
  %11 = load i64, i64* %transform_expansion, align 8
  %add = add i64 %11, %10
  store i64 %add, i64* %transform_expansion, align 8
  %12 = load i32, i32* %block_size, align 4
  %conv5 = zext i32 %12 to i64
  %13 = load i64, i64* %transform_expansion, align 8
  %add6 = add i64 %13, %conv5
  store i64 %add6, i64* %transform_expansion, align 8
  %14 = load i32, i32* %block_size, align 4
  %conv7 = zext i32 %14 to i64
  %15 = load i64, i64* %transform_expansion, align 8
  %add8 = add i64 %15, %conv7
  store i64 %add8, i64* %transform_expansion, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5243, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %17 = load i64, i64* %out_hdr_len, align 8
  %18 = load i64, i64* %transform_expansion, align 8
  %add9 = add i64 %17, %18
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
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
define internal i32 @mbedtls_cipher_get_block_size(%struct.mbedtls_cipher_context_t* noundef %ctx) #0 {
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
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %3, i32 0, i32 6
  %4 = load i32, i32* %block_size, align 8
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
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
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5407, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0)) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf2, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 3
  %6 = load i8, i8* %transport, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end23

if.then5:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %7) #6
  store i32 %call, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 16
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  %cmp10 = icmp ne %struct.mbedtls_ssl_handshake_params* %10, null
  br i1 %cmp10, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end9
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake12 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 16
  %12 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake12, align 8
  %retransmit_state = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %12, i32 0, i32 7
  %13 = load i8, i8* %retransmit_state, align 1
  %conv13 = zext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.then16, label %if.end22

if.then16:                                        ; preds = %land.lhs.true
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call17 = call i32 @mbedtls_ssl_flight_transmit(%struct.mbedtls_ssl_context* noundef %14) #6
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %if.end9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call24 = call i32 @ssl_check_ctr_renegotiate(%struct.mbedtls_ssl_context* noundef %16) #6
  store i32 %call24, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp25 = icmp ne i32 %17, -27392
  br i1 %cmp25, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %if.end23
  %18 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %18, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5441, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.129, i64 0, i64 0), i32 noundef %20) #6
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true27, %if.end23
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call32 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %22) #6
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end44

if.then35:                                        ; preds = %if.end31
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call36 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %23) #6
  store i32 %call36, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp37 = icmp ne i32 %24, -27392
  br i1 %cmp37, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.then35
  %25 = load i32, i32* %ret, align 4
  %cmp40 = icmp ne i32 %25, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true39
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %27 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5452, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.130, i64 0, i64 0), i32 noundef %27) #6
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %land.lhs.true39, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end31
  br label %while.cond

while.cond:                                       ; preds = %if.end137, %if.end90, %if.end44
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %29, i32 0, i32 30
  %30 = load i8*, i8** %in_offt, align 8
  %cmp45 = icmp eq i8* %30, null
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 23
  %32 = load i32 (i8*)*, i32 (i8*)** %f_get_timer, align 8
  %cmp47 = icmp ne i32 (i8*)* %32, null
  br i1 %cmp47, label %land.lhs.true49, label %if.end56

land.lhs.true49:                                  ; preds = %while.body
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_get_timer50 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 23
  %34 = load i32 (i8*)*, i32 (i8*)** %f_get_timer50, align 8
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_timer = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %35, i32 0, i32 21
  %36 = load i8*, i8** %p_timer, align 8
  %call51 = call i32 %34(i8* noundef %36) #6
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %land.lhs.true49
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf55 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 0
  %39 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf55, align 8
  %read_timeout = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %39, i32 0, i32 49
  %40 = load i32, i32* %read_timeout, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %37, i32 noundef %40) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.lhs.true49, %while.body
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call57 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 1) #6
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end56
  %42 = load i32, i32* %ret, align 4
  %cmp61 = icmp eq i32 %42, -29312
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then60
  store i32 0, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.then60
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %43, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5472, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.118, i64 0, i64 0), i32 noundef %44) #6
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end56
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 32
  %47 = load i64, i64* %in_msglen, align 8
  %cmp66 = icmp eq i64 %47, 0
  br i1 %cmp66, label %land.lhs.true68, label %if.end81

land.lhs.true68:                                  ; preds = %if.end65
  %48 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %48, i32 0, i32 31
  %49 = load i32, i32* %in_msgtype, align 8
  %cmp69 = icmp eq i32 %49, 23
  br i1 %cmp69, label %if.then71, label %if.end81

if.then71:                                        ; preds = %land.lhs.true68
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call72 = call i32 @mbedtls_ssl_read_record(%struct.mbedtls_ssl_context* noundef %50, i32 noundef 1) #6
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.then71
  %51 = load i32, i32* %ret, align 4
  %cmp76 = icmp eq i32 %51, -29312
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then75
  store i32 0, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then75
  %52 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %53 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %52, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5487, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.118, i64 0, i64 0), i32 noundef %53) #6
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.then71
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %land.lhs.true68, %if.end65
  %55 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype82 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %55, i32 0, i32 31
  %56 = load i32, i32* %in_msgtype82, align 8
  %cmp83 = icmp eq i32 %56, 22
  br i1 %cmp83, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end81
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call86 = call i32 @ssl_handle_hs_message_post_handshake(%struct.mbedtls_ssl_context* noundef %57) #6
  store i32 %call86, i32* %ret, align 4
  %58 = load i32, i32* %ret, align 4
  %cmp87 = icmp ne i32 %58, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then85
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %60 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %59, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5498, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.131, i64 0, i64 0), i32 noundef %60) #6
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.then85
  br label %while.cond, !llvm.loop !18

if.else:                                          ; preds = %if.end81
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %62, i32 0, i32 2
  %63 = load i32, i32* %renego_status, align 4
  %cmp91 = icmp eq i32 %63, 3
  br i1 %cmp91, label %if.then93, label %if.end105

if.then93:                                        ; preds = %if.else
  %64 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf94 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %64, i32 0, i32 0
  %65 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf94, align 8
  %renego_max_records = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %65, i32 0, i32 52
  %66 = load i32, i32* %renego_max_records, align 4
  %cmp95 = icmp sge i32 %66, 0
  br i1 %cmp95, label %if.then97, label %if.end104

if.then97:                                        ; preds = %if.then93
  %67 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_records_seen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %67, i32 0, i32 3
  %68 = load i32, i32* %renego_records_seen, align 8
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %renego_records_seen, align 8
  %69 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf98 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %69, i32 0, i32 0
  %70 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf98, align 8
  %renego_max_records99 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %70, i32 0, i32 52
  %71 = load i32, i32* %renego_max_records99, align 4
  %cmp100 = icmp sgt i32 %inc, %71
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then97
  %72 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %72, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5533, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.132, i64 0, i64 0)) #6
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then97
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then93
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.else
  br label %if.end106

if.end106:                                        ; preds = %if.end105
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype107 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 31
  %74 = load i32, i32* %in_msgtype107, align 8
  %cmp108 = icmp eq i32 %74, 21
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end106
  %75 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %75, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5543, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i64 0, i64 0)) #6
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end106
  %76 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype112 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %76, i32 0, i32 31
  %77 = load i32, i32* %in_msgtype112, align 8
  %cmp113 = icmp ne i32 %77, 23
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end111
  %78 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %78, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5549, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.134, i64 0, i64 0)) #6
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end111
  %79 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %79, i32 0, i32 29
  %80 = load i8*, i8** %in_msg, align 8
  %81 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt117 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %81, i32 0, i32 30
  store i8* %80, i8** %in_offt117, align 8
  %82 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call118 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %82) #6
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end116
  %83 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_set_timer(%struct.mbedtls_ssl_context* noundef %83, i32 noundef 0) #6
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end116
  %84 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf123 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %84, i32 0, i32 0
  %85 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf123, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %85, i32 0, i32 2
  %86 = load i8, i8* %endpoint, align 8
  %conv124 = zext i8 %86 to i32
  %cmp125 = icmp eq i32 %conv124, 1
  br i1 %cmp125, label %land.lhs.true127, label %if.end137

land.lhs.true127:                                 ; preds = %if.end122
  %87 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status128 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %87, i32 0, i32 2
  %88 = load i32, i32* %renego_status128, align 4
  %cmp129 = icmp eq i32 %88, 3
  br i1 %cmp129, label %if.then131, label %if.end137

if.then131:                                       ; preds = %land.lhs.true127
  %89 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call132 = call i32 @mbedtls_ssl_resend_hello_request(%struct.mbedtls_ssl_context* noundef %89) #6
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then131
  %90 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %91 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %90, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5571, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 noundef %91) #6
  %92 = load i32, i32* %ret, align 4
  store i32 %92, i32* %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.then131
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %land.lhs.true127, %if.end122
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %93 = load i64, i64* %len.addr, align 8
  %94 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen138 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %94, i32 0, i32 32
  %95 = load i64, i64* %in_msglen138, align 8
  %cmp139 = icmp ult i64 %93, %95
  br i1 %cmp139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %96 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %97 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen141 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %97, i32 0, i32 32
  %98 = load i64, i64* %in_msglen141, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %96, %cond.true ], [ %98, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %99 = load i8*, i8** %buf.addr, align 8
  %100 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt142 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %100, i32 0, i32 30
  %101 = load i8*, i8** %in_offt142, align 8
  %102 = load i64, i64* %n, align 8
  %call143 = call i8* @memcpy(i8* noundef %99, i8* noundef %101, i64 noundef %102) #7
  %103 = load i64, i64* %n, align 8
  %104 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen144 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %104, i32 0, i32 32
  %105 = load i64, i64* %in_msglen144, align 8
  %sub = sub i64 %105, %103
  store i64 %sub, i64* %in_msglen144, align 8
  %106 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt145 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %106, i32 0, i32 30
  %107 = load i8*, i8** %in_offt145, align 8
  %108 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %107, i64 noundef %108) #6
  %109 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msglen146 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %109, i32 0, i32 32
  %110 = load i64, i64* %in_msglen146, align 8
  %cmp147 = icmp eq i64 %110, 0
  br i1 %cmp147, label %if.then149, label %if.else151

if.then149:                                       ; preds = %cond.end
  %111 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt150 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %111, i32 0, i32 30
  store i8* null, i8** %in_offt150, align 8
  %112 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %keep_current_message = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %112, i32 0, i32 40
  store i32 0, i32* %keep_current_message, align 4
  br label %if.end153

if.else151:                                       ; preds = %cond.end
  %113 = load i64, i64* %n, align 8
  %114 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_offt152 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %114, i32 0, i32 30
  %115 = load i8*, i8** %in_offt152, align 8
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 %113
  store i8* %add.ptr, i8** %in_offt152, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.else151, %if.then149
  %116 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %116, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5601, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i64 0, i64 0)) #6
  %117 = load i64, i64* %n, align 8
  %conv154 = trunc i64 %117 to i32
  store i32 %conv154, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end153, %if.then135, %if.then115, %if.then110, %if.then102, %if.then89, %if.end79, %if.then78, %if.end64, %if.then63, %if.then42, %if.then30, %if.then20, %if.then8, %if.then
  %118 = load i32, i32* %retval, align 4
  ret i32 %118
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_ctr_renegotiate(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ep_len = alloca i64, align 8
  %in_ctr_cmp = alloca i32, align 4
  %out_ctr_cmp = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %0) #6
  store i64 %call, i64* %ep_len, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call1 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %1) #6
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 2
  %3 = load i32, i32* %renego_status, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %disable_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %5, i32 0, i32 10
  %6 = load i8, i8* %disable_renegotiation, align 8
  %conv = zext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 25
  %8 = load i8*, i8** %in_ctr, align 8
  %9 = load i64, i64* %ep_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf6, align 8
  %renego_period = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 53
  %12 = load i64, i64* %ep_len, align 8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period, i64 0, i64 %12
  %13 = load i64, i64* %ep_len, align 8
  %sub = sub i64 8, %13
  %call7 = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef %arrayidx, i64 noundef %sub) #8
  store i32 %call7, i32* %in_ctr_cmp, align 4
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 54
  %15 = load i64, i64* %ep_len, align 8
  %arrayidx8 = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 %15
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf9 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 0
  %17 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf9, align 8
  %renego_period10 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %17, i32 0, i32 53
  %18 = load i64, i64* %ep_len, align 8
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %renego_period10, i64 0, i64 %18
  %19 = load i64, i64* %ep_len, align 8
  %sub12 = sub i64 8, %19
  %call13 = call i32 @memcmp(i8* noundef %arrayidx8, i8* noundef %arrayidx11, i64 noundef %sub12) #8
  store i32 %call13, i32* %out_ctr_cmp, align 4
  %20 = load i32, i32* %in_ctr_cmp, align 4
  %cmp14 = icmp sle i32 %20, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %21 = load i32, i32* %out_ctr_cmp, align 4
  %cmp16 = icmp sle i32 %21, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %land.lhs.true, %if.end
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5286, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.226, i64 0, i64 0)) #6
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call20 = call i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef %23) #6
  store i32 %call20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_handle_hs_message_post_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 2
  %2 = load i8, i8* %endpoint, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 29
  %4 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hslen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 38
  %7 = load i64, i64* %in_hslen, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_hs_hdr_len(%struct.mbedtls_ssl_context* noundef %8) #6
  %cmp5 = icmp ne i64 %7, %call
  br i1 %cmp5, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5316, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.227, i64 0, i64 0)) #6
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf7 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf7, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %11, i32 0, i32 3
  %12 = load i8, i8* %transport, align 1
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false, %entry
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf13 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf13, align 8
  %endpoint14 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %14, i32 0, i32 2
  %15 = load i8, i8* %endpoint14, align 8
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %land.lhs.true18, label %if.end32

land.lhs.true18:                                  ; preds = %if.end12
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 29
  %17 = load i8*, i8** %in_msg19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %cmp22 = icmp ne i32 %conv21, 1
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %land.lhs.true18
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5333, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.228, i64 0, i64 0)) #6
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf25 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %20, i32 0, i32 0
  %21 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf25, align 8
  %transport26 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %21, i32 0, i32 3
  %22 = load i8, i8* %transport26, align 1
  %conv27 = zext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then24
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then24
  store i32 -30464, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true18, %if.end12
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf33 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf33, align 8
  %disable_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %24, i32 0, i32 10
  %25 = load i8, i8* %disable_renegotiation, align 8
  %conv34 = zext i8 %25 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.else, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end32
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %secure_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 60
  %27 = load i32, i32* %secure_renegotiation, align 8
  %cmp38 = icmp eq i32 %27, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.then45

land.lhs.true40:                                  ; preds = %lor.lhs.false37
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf41 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 0
  %29 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf41, align 8
  %allow_legacy_renegotiation = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %29, i32 0, i32 5
  %30 = load i8, i8* %allow_legacy_renegotiation, align 1
  %conv42 = zext i8 %30 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.else, label %if.then45

if.then45:                                        ; preds = %land.lhs.true40, %lor.lhs.false37
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf46 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf46, align 8
  %transport47 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %32, i32 0, i32 3
  %33 = load i8, i8* %transport47, align 1
  %conv48 = zext i8 %33 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %if.then45
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf52 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %34, i32 0, i32 0
  %35 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf52, align 8
  %endpoint53 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %35, i32 0, i32 2
  %36 = load i8, i8* %endpoint53, align 8
  %conv54 = zext i8 %36 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true51
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %renego_status = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %37, i32 0, i32 2
  store i32 3, i32* %renego_status, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true51, %if.then45
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call59 = call i32 @mbedtls_ssl_start_renegotiation(%struct.mbedtls_ssl_context* noundef %38) #6
  store i32 %call59, i32* %ret, align 4
  %39 = load i32, i32* %ret, align 4
  %cmp60 = icmp ne i32 %39, -27392
  br i1 %cmp60, label %land.lhs.true62, label %if.end66

land.lhs.true62:                                  ; preds = %if.end58
  %40 = load i32, i32* %ret, align 4
  %cmp63 = icmp ne i32 %40, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true62
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %42 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %41, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5370, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.229, i64 0, i64 0), i32 noundef %42) #6
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %land.lhs.true62, %if.end58
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true40, %if.end32
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5381, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.230, i64 0, i64 0)) #6
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call67 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %45, i8 noundef zeroext 1, i8 noundef zeroext 100) #6
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.else
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end66
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then70, %if.then65, %if.end31, %if.then30, %if.end, %if.then11
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5689, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i64 0, i64 0)) #6
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_check_ctr_renegotiate(%struct.mbedtls_ssl_context* noundef %4) #6
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %6 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5697, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.129, i64 0, i64 0), i32 noundef %6) #6
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call5 = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %8) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call8 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %9) #6
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5706, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.130, i64 0, i64 0), i32 noundef %11) #6
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i64, i64* %len.addr, align 8
  %call13 = call i32 @ssl_write_real(%struct.mbedtls_ssl_context* noundef %13, i8* noundef %14, i64 noundef %15) #6
  store i32 %call13, i32* %ret, align 4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5713, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i64 0, i64 0)) #6
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_real(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %max_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef %0) #6
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %max_len, align 8
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %4 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5627, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.231, i64 0, i64 0), i32 noundef %4) #6
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i64, i64* %max_len, align 8
  %cmp2 = icmp ugt i64 %6, %7
  br i1 %cmp2, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %9, i32 0, i32 3
  %10 = load i8, i8* %transport, align 1
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %13 = load i64, i64* %max_len, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5639, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.232, i64 0, i64 0), i64 noundef %12, i64 noundef %13) #6
  store i32 -28928, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then4
  %14 = load i64, i64* %max_len, align 8
  store i64 %14, i64* %len.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 53
  %16 = load i64, i64* %out_left, align 8
  %cmp11 = icmp ne i64 %16, 0
  br i1 %cmp11, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.end10
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call14 = call i32 @mbedtls_ssl_flush_output(%struct.mbedtls_ssl_context* noundef %17) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5657, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i64 0, i64 0), i32 noundef %19) #6
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  br label %if.end26

if.else19:                                        ; preds = %if.end10
  %21 = load i64, i64* %len.addr, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msglen = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 52
  store i64 %21, i64* %out_msglen, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 51
  store i32 23, i32* %out_msgtype, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 50
  %25 = load i8*, i8** %out_msg, align 8
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load i64, i64* %len.addr, align 8
  %call20 = call i8* @memcpy(i8* noundef %25, i8* noundef %26, i64 noundef %27) #7
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call21 = call i32 @mbedtls_ssl_write_record(%struct.mbedtls_ssl_context* noundef %28, i32 noundef 1) #6
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else19
  %29 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %30 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5674, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0), i32 noundef %30) #6
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end18
  %32 = load i64, i64* %len.addr, align 8
  %conv27 = trunc i64 %32 to i32
  store i32 %conv27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then24, %if.then17, %if.then8, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5728, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0)) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %4) #6
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call4 = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %7 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5736, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i64 0, i64 0), i32 noundef %7) #6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 5741, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.140, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_transform_free(%struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_transform* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %1, i32 0, i32 11
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_enc) #6
  %2 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %cipher_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %2, i32 0, i32 12
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx_dec) #6
  %3 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_enc = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %3, i32 0, i32 7
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx_enc) #6
  %4 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %md_ctx_dec = getelementptr inbounds %struct.mbedtls_ssl_transform, %struct.mbedtls_ssl_transform* %4, i32 0, i32 8
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx_dec) #6
  %5 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %6 = bitcast %struct.mbedtls_ssl_transform* %5 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %6, i64 noundef 384) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_inbound_transform(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 17
  store %struct.mbedtls_ssl_transform* %0, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 25
  %3 = load i8*, i8** %in_ctr, align 8
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 8) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_set_outbound_transform(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_transform* noundef %transform) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %transform.addr = alloca %struct.mbedtls_ssl_transform*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_ssl_transform* %transform, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %0 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform.addr, align 8
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_out = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 18
  store %struct.mbedtls_ssl_transform* %0, %struct.mbedtls_ssl_transform** %transform_out, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cur_out_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 54
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %cur_out_ctr, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 8) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_free_buffered_record(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end12

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %3, i32 0, i32 28
  %future_record = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 3
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering3 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 28
  %future_record4 = getelementptr inbounds %struct.anon, %struct.anon* %buffering3, i32 0, i32 3
  %len = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record4, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %7 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %7, i32 0, i32 28
  %total_bytes_buffered = getelementptr inbounds %struct.anon, %struct.anon* %buffering5, i32 0, i32 0
  %8 = load i64, i64* %total_bytes_buffered, align 8
  %sub = sub i64 %8, %6
  store i64 %sub, i64* %total_bytes_buffered, align 8
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 28
  %future_record7 = getelementptr inbounds %struct.anon, %struct.anon* %buffering6, i32 0, i32 3
  %data8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record7, i32 0, i32 0
  %10 = load i8*, i8** %data8, align 8
  call void @free(i8* noundef %10) #7
  %11 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering9 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %11, i32 0, i32 28
  %future_record10 = getelementptr inbounds %struct.anon, %struct.anon* %buffering9, i32 0, i32 3
  %data11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record10, i32 0, i32 0
  store i8* null, i8** %data11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @mbedtls_ssl_read_version(i8* noundef %version, i32 noundef %transport) #0 {
entry:
  %version.addr = alloca i8*, align 8
  %transport.addr = alloca i32, align 4
  %tls_version = alloca i16, align 2
  store i8* %version, i8** %version.addr, align 8
  store i32 %transport, i32* %transport.addr, align 4
  %0 = load i8*, i8** %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %version.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i16
  %conv4 = zext i16 %conv3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %tls_version, align 2
  %4 = load i32, i32* %transport.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i16, i16* %tls_version, align 2
  %conv7 = zext i16 %5 to i32
  %6 = load i16, i16* %tls_version, align 2
  %conv8 = zext i16 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 65279
  %7 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 514, i32 513
  %sub = sub nsw i32 %conv7, %cond
  %neg = xor i32 %sub, -1
  %conv11 = trunc i32 %neg to i16
  store i16 %conv11, i16* %tls_version, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i16, i16* %tls_version, align 2
  ret i16 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handle_pending_alert(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %send_alert = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 41
  %1 = load i8, i8* %send_alert, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alert_type = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 42
  %4 = load i8, i8* %alert_type, align 1
  %call = call i32 @mbedtls_ssl_send_alert_message(%struct.mbedtls_ssl_context* noundef %2, i8 noundef zeroext 2, i8 noundef zeroext %4) #6
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %5, -26752
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %send_alert5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 41
  store i8 0, i8* %send_alert5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %7 = load i32, i32* %ret, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alert_reason = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %9, i32 0, i32 43
  %10 = load i32, i32* %alert_reason, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_pend_fatal_alert(%struct.mbedtls_ssl_context* noundef %ssl, i8 noundef zeroext %alert_type, i32 noundef %alert_reason) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %alert_type.addr = alloca i8, align 1
  %alert_reason.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8 %alert_type, i8* %alert_type.addr, align 1
  store i32 %alert_reason, i32* %alert_reason.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %send_alert = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 41
  store i8 1, i8* %send_alert, align 8
  %1 = load i8, i8* %alert_type.addr, align 1
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alert_type1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 42
  store i8 %1, i8* %alert_type1, align 1
  %3 = load i32, i32* %alert_reason.addr, align 4
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %alert_reason2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %4, i32 0, i32 43
  store i32 %3, i32* %alert_reason2, align 4
  ret void
}

declare dso_local i64 @mbedtls_ssl_get_output_max_frag_len(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_get_maximum_datagram_size(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i64, align 8
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %mtu = alloca i64, align 8
  %out_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i64 @mbedtls_ssl_get_current_mtu(%struct.mbedtls_ssl_context* noundef %0) #6
  store i64 %call, i64* %mtu, align 8
  store i64 16717, i64* %out_buf_len, align 8
  %1 = load i64, i64* %mtu, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %mtu, align 8
  %3 = load i64, i64* %out_buf_len, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, i64* %mtu, align 8
  store i64 %4, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %out_buf_len, align 8
  store i64 %5, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8
  ret i64 %6
}

declare dso_local i64 @mbedtls_ssl_get_current_mtu(%struct.mbedtls_ssl_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_hs_frag_off(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 29
  %1 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 6
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 29
  %4 = load i8*, i8** %in_msg1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 7
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl i32 %conv3, 8
  %or = or i32 %shl, %shl4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 29
  %7 = load i8*, i8** %in_msg5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 8
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %or, %conv7
  ret i32 %or8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_get_hs_frag_len(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 29
  %1 = load i8*, i8** %in_msg, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 9
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 29
  %4 = load i8*, i8** %in_msg1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 10
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl i32 %conv3, 8
  %or = or i32 %shl, %shl4
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msg5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 29
  %7 = load i8*, i8** %in_msg5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 11
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %or, %conv7
  ret i32 %or8
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_record_type(i8 noundef zeroext %record_type) #0 {
entry:
  %retval = alloca i32, align 4
  %record_type.addr = alloca i8, align 1
  store i8 %record_type, i8* %record_type.addr, align 1
  %0 = load i8, i8* %record_type.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 22
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %record_type.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 21
  br i1 %cmp3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load i8, i8* %record_type.addr, align 1
  %conv6 = zext i8 %2 to i32
  %cmp7 = icmp ne i32 %conv6, 20
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load i8, i8* %record_type.addr, align 1
  %conv10 = zext i8 %3 to i32
  %cmp11 = icmp ne i32 %conv10, 23
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true9
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_dtls_record_replay_check(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %record_in_ctr) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %record_in_ctr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %original_in_ctr = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %record_in_ctr, i8** %record_in_ctr.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 25
  %1 = load i8*, i8** %in_ctr, align 8
  store i8* %1, i8** %original_in_ctr, align 8
  %2 = load i8*, i8** %record_in_ctr.addr, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 25
  store i8* %2, i8** %in_ctr1, align 8
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_dtls_replay_check(%struct.mbedtls_ssl_context* noundef %4) #6
  store i32 %call, i32* %ret, align 4
  %5 = load i8*, i8** %original_in_ctr, align 8
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr2 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 25
  store i8* %5, i8** %in_ctr2, align 8
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ssl_get_reassembly_buffer_size(i64 noundef %msg_len, i32 noundef %add_bitmap) #0 {
entry:
  %msg_len.addr = alloca i64, align 8
  %add_bitmap.addr = alloca i32, align 4
  %alloc_len = alloca i64, align 8
  store i64 %msg_len, i64* %msg_len.addr, align 8
  store i32 %add_bitmap, i32* %add_bitmap.addr, align 4
  store i64 12, i64* %alloc_len, align 8
  %0 = load i64, i64* %msg_len.addr, align 8
  %1 = load i64, i64* %alloc_len, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %alloc_len, align 8
  %2 = load i32, i32* %add_bitmap.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %msg_len.addr, align 8
  %div = udiv i64 %3, 8
  %4 = load i64, i64* %msg_len.addr, align 8
  %rem = urem i64 %4, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add2 = add i64 %div, %conv1
  %5 = load i64, i64* %alloc_len, align 8
  %add3 = add i64 %5, %add2
  store i64 %add3, i64* %alloc_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %alloc_len, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_buffer_make_space(%struct.mbedtls_ssl_context* noundef %ssl, i64 noundef %desired) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %desired.addr = alloca i64, align 8
  %offset = alloca i32, align 4
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i64 %desired, i64* %desired.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i64, i64* %desired.addr, align 8
  %conv = trunc i64 %3 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4036, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.183, i64 0, i64 0), i32 noundef %conv) #6
  %4 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_free_buffered_record(%struct.mbedtls_ssl_context* noundef %4) #6
  %5 = load i64, i64* %desired.addr, align 8
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 28
  %total_bytes_buffered = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 0
  %7 = load i64, i64* %total_bytes_buffered, align 8
  %sub = sub i64 32768, %7
  %cmp = icmp ule i64 %5, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %8, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4045, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.184, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 3, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %offset, align 4
  %cmp2 = icmp sge i32 %9, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load i32, i32* %offset, align 4
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %10, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4056, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.185, i64 0, i64 0), i32 noundef %11) #6
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %offset, align 4
  %conv4 = trunc i32 %13 to i8
  call void @ssl_buffering_free_slot(%struct.mbedtls_ssl_context* noundef %12, i8 noundef zeroext %conv4) #6
  %14 = load i64, i64* %desired.addr, align 8
  %15 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering5 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %15, i32 0, i32 28
  %total_bytes_buffered6 = getelementptr inbounds %struct.anon, %struct.anon* %buffering5, i32 0, i32 0
  %16 = load i64, i64* %total_bytes_buffered6, align 8
  %sub7 = sub i64 32768, %16
  %cmp8 = icmp ule i64 %14, %sub7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %17, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4064, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.186, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %18 = load i32, i32* %offset, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %offset, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_bitmask_set(i8* noundef %mask, i64 noundef %offset, i64 noundef %len) #0 {
entry:
  %mask.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %start_bits = alloca i32, align 4
  %end_bits = alloca i32, align 4
  %first_byte_idx = alloca i64, align 8
  %last_byte_idx = alloca i64, align 8
  store i8* %mask, i8** %mask.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %offset.addr, align 8
  %rem = urem i64 %0, 8
  %sub = sub i64 8, %rem
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %start_bits, align 4
  %1 = load i32, i32* %start_bits, align 4
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %offset.addr, align 8
  %div = udiv i64 %2, 8
  store i64 %div, i64* %first_byte_idx, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i32, i32* %start_bits, align 4
  %conv2 = zext i32 %4 to i64
  %cmp3 = icmp ule i64 %3, %conv2
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i64, i64* %len.addr, align 8
  %cmp6 = icmp ne i64 %5, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %start_bits, align 4
  %conv8 = zext i32 %6 to i64
  %7 = load i64, i64* %len.addr, align 8
  %sub9 = sub i64 %conv8, %7
  %sh_prom = trunc i64 %sub9 to i32
  %shl = shl i32 1, %sh_prom
  %8 = load i8*, i8** %mask.addr, align 8
  %9 = load i64, i64* %first_byte_idx, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %10 to i32
  %or = or i32 %conv10, %shl
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %len.addr, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %len.addr, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %start_bits, align 4
  %conv12 = zext i32 %12 to i64
  %13 = load i64, i64* %offset.addr, align 8
  %add = add i64 %13, %conv12
  store i64 %add, i64* %offset.addr, align 8
  %14 = load i32, i32* %start_bits, align 4
  %conv13 = zext i32 %14 to i64
  %15 = load i64, i64* %len.addr, align 8
  %sub14 = sub i64 %15, %conv13
  store i64 %sub14, i64* %len.addr, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %if.end
  %16 = load i32, i32* %start_bits, align 4
  %cmp16 = icmp ne i32 %16, 0
  br i1 %cmp16, label %for.body18, label %for.end27

for.body18:                                       ; preds = %for.cond15
  %17 = load i32, i32* %start_bits, align 4
  %sub19 = sub i32 %17, 1
  %shl20 = shl i32 1, %sub19
  %18 = load i8*, i8** %mask.addr, align 8
  %19 = load i64, i64* %first_byte_idx, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %20 to i32
  %or23 = or i32 %conv22, %shl20
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, i8* %arrayidx21, align 1
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %21 = load i32, i32* %start_bits, align 4
  %dec26 = add i32 %21, -1
  store i32 %dec26, i32* %start_bits, align 4
  br label %for.cond15, !llvm.loop !21

for.end27:                                        ; preds = %for.cond15
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %entry
  %22 = load i64, i64* %len.addr, align 8
  %rem29 = urem i64 %22, 8
  %conv30 = trunc i64 %rem29 to i32
  store i32 %conv30, i32* %end_bits, align 4
  %23 = load i32, i32* %end_bits, align 4
  %cmp31 = icmp ne i32 %23, 0
  br i1 %cmp31, label %if.then33, label %if.end51

if.then33:                                        ; preds = %if.end28
  %24 = load i64, i64* %offset.addr, align 8
  %25 = load i64, i64* %len.addr, align 8
  %add34 = add i64 %24, %25
  %div35 = udiv i64 %add34, 8
  store i64 %div35, i64* %last_byte_idx, align 8
  %26 = load i32, i32* %end_bits, align 4
  %conv36 = zext i32 %26 to i64
  %27 = load i64, i64* %len.addr, align 8
  %sub37 = sub i64 %27, %conv36
  store i64 %sub37, i64* %len.addr, align 8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc48, %if.then33
  %28 = load i32, i32* %end_bits, align 4
  %cmp39 = icmp ne i32 %28, 0
  br i1 %cmp39, label %for.body41, label %for.end50

for.body41:                                       ; preds = %for.cond38
  %29 = load i32, i32* %end_bits, align 4
  %sub42 = sub i32 8, %29
  %shl43 = shl i32 1, %sub42
  %30 = load i8*, i8** %mask.addr, align 8
  %31 = load i64, i64* %last_byte_idx, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 %31
  %32 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %32 to i32
  %or46 = or i32 %conv45, %shl43
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %arrayidx44, align 1
  br label %for.inc48

for.inc48:                                        ; preds = %for.body41
  %33 = load i32, i32* %end_bits, align 4
  %dec49 = add i32 %33, -1
  store i32 %dec49, i32* %end_bits, align 4
  br label %for.cond38, !llvm.loop !22

for.end50:                                        ; preds = %for.cond38
  br label %if.end51

if.end51:                                         ; preds = %for.end50, %if.end28
  %34 = load i8*, i8** %mask.addr, align 8
  %35 = load i64, i64* %offset.addr, align 8
  %div52 = udiv i64 %35, 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %div52
  %36 = load i64, i64* %len.addr, align 8
  %div53 = udiv i64 %36, 8
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 255, i64 noundef %div53) #7
  br label %return

return:                                           ; preds = %if.end51, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_bitmask_check(i8* noundef %mask, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %mask, i8** %mask.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %1, 8
  %cmp = icmp ult i64 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %mask.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %len.addr, align 8
  %rem = urem i64 %7, 8
  %cmp4 = icmp ult i64 %6, %rem
  br i1 %cmp4, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond3
  %8 = load i8*, i8** %mask.addr, align 8
  %9 = load i64, i64* %len.addr, align 8
  %div7 = udiv i64 %9, 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %div7
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %11 = load i64, i64* %i, align 8
  %sub = sub i64 7, %11
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv9, %shl
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body6
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %12 = load i64, i64* %i, align 8
  %inc15 = add i64 %12, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond3, !llvm.loop !24

for.end16:                                        ; preds = %for.cond3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end16, %if.then12, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_load_buffered_record(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  %rec = alloca i8*, align 8
  %rec_len = alloca i64, align 8
  %rec_epoch = alloca i32, align 4
  %in_buf_len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  store i64 16717, i64* %in_buf_len, align 8
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %3, i32 0, i32 3
  %4 = load i8, i8* %transport, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp2 = icmp eq %struct.mbedtls_ssl_handshake_params* %5, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %6, i32 0, i32 28
  %future_record = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 3
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %rec, align 8
  %8 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering6 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %8, i32 0, i32 28
  %future_record7 = getelementptr inbounds %struct.anon, %struct.anon* %buffering6, i32 0, i32 3
  %len = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record7, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  store i64 %9, i64* %rec_len, align 8
  %10 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering8 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %10, i32 0, i32 28
  %future_record9 = getelementptr inbounds %struct.anon, %struct.anon* %buffering8, i32 0, i32 3
  %epoch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record9, i32 0, i32 2
  %11 = load i32, i32* %epoch, align 8
  store i32 %11, i32* %rec_epoch, align 4
  %12 = load i8*, i8** %rec, align 8
  %cmp10 = icmp eq i8* %12, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end5
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @ssl_next_record_is_in_datagram(%struct.mbedtls_ssl_context* noundef %13) #6
  %cmp14 = icmp eq i32 %call, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4422, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.195, i64 0, i64 0)) #6
  %15 = load i32, i32* %rec_epoch, align 4
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 34
  %17 = load i16, i16* %in_epoch, align 8
  %conv18 = zext i16 %17 to i32
  %cmp19 = icmp ne i32 %15, %conv18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4426, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.196, i64 0, i64 0)) #6
  br label %exit

if.end22:                                         ; preds = %if.end17
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4430, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.197, i64 0, i64 0)) #6
  %20 = load i64, i64* %rec_len, align 8
  %21 = load i64, i64* %in_buf_len, align 8
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %22, i32 0, i32 26
  %23 = load i8*, i8** %in_hdr, align 8
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 24
  %25 = load i8*, i8** %in_buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %21, %sub.ptr.sub
  %cmp23 = icmp ugt i64 %20, %sub
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %26, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4435, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #6
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %27 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_hdr27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %27, i32 0, i32 26
  %28 = load i8*, i8** %in_hdr27, align 8
  %29 = load i8*, i8** %rec, align 8
  %30 = load i64, i64* %rec_len, align 8
  %call28 = call i8* @memcpy(i8* noundef %28, i8* noundef %29, i64 noundef %30) #7
  %31 = load i64, i64* %rec_len, align 8
  %32 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %32, i32 0, i32 33
  store i64 %31, i64* %in_left, align 8
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %next_record_offset = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 35
  store i64 0, i64* %next_record_offset, align 8
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @ssl_free_buffered_record(%struct.mbedtls_ssl_context* noundef %34) #6
  br label %exit

exit:                                             ; preds = %if.end26, %if.then21
  %35 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %35, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4446, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then25, %if.then16, %if.then12, %if.then4, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_buffer_future_record(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %hs = alloca %struct.mbedtls_ssl_handshake_params*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %handshake = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 16
  %1 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %handshake, align 8
  store %struct.mbedtls_ssl_handshake_params* %1, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %2 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_handshake_params* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %3, i32 0, i32 1
  %4 = load i8, i8* %type, align 8
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 22
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %5, i32 0, i32 28
  %future_record = getelementptr inbounds %struct.anon, %struct.anon* %buffering, i32 0, i32 3
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %cmp5 = icmp ne i8* %6, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %7, i32 0, i32 4
  %8 = load i64, i64* %buf_len, align 8
  %9 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering9 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %9, i32 0, i32 28
  %total_bytes_buffered = getelementptr inbounds %struct.anon, %struct.anon* %buffering9, i32 0, i32 0
  %10 = load i64, i64* %total_bytes_buffered, align 8
  %sub = sub i64 32768, %10
  %cmp10 = icmp ugt i64 %8, %sub
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %12 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len13 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %12, i32 0, i32 4
  %13 = load i64, i64* %buf_len13, align 8
  %14 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering14 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %14, i32 0, i32 28
  %total_bytes_buffered15 = getelementptr inbounds %struct.anon, %struct.anon* %buffering14, i32 0, i32 0
  %15 = load i64, i64* %total_bytes_buffered15, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4478, i8* noundef getelementptr inbounds ([125 x i8], [125 x i8]* @.str.199, i64 0, i64 0), i64 noundef %13, i64 noundef 32768, i64 noundef %15) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %17, i32 0, i32 34
  %18 = load i16, i16* %in_epoch, align 8
  %conv17 = zext i16 %18 to i32
  %add = add i32 %conv17, 1
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %16, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4484, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.200, i64 0, i64 0), i32 noundef %add) #6
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %20 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %20, i32 0, i32 3
  %21 = load i8*, i8** %buf, align 8
  %22 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len18 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %22, i32 0, i32 4
  %23 = load i64, i64* %buf_len18, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %19, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 4485, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.201, i64 0, i64 0), i8* noundef %21, i64 noundef %23) #6
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_epoch19 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %24, i32 0, i32 34
  %25 = load i16, i16* %in_epoch19, align 8
  %conv20 = zext i16 %25 to i32
  %add21 = add nsw i32 %conv20, 1
  %26 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering22 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %26, i32 0, i32 28
  %future_record23 = getelementptr inbounds %struct.anon, %struct.anon* %buffering22, i32 0, i32 3
  %epoch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record23, i32 0, i32 2
  store i32 %add21, i32* %epoch, align 8
  %27 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len24 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %27, i32 0, i32 4
  %28 = load i64, i64* %buf_len24, align 8
  %29 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering25 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %29, i32 0, i32 28
  %future_record26 = getelementptr inbounds %struct.anon, %struct.anon* %buffering25, i32 0, i32 3
  %len = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record26, i32 0, i32 1
  store i64 %28, i64* %len, align 8
  %30 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering27 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %30, i32 0, i32 28
  %future_record28 = getelementptr inbounds %struct.anon, %struct.anon* %buffering27, i32 0, i32 3
  %len29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record28, i32 0, i32 1
  %31 = load i64, i64* %len29, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %31) #7
  %32 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering30 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %32, i32 0, i32 28
  %future_record31 = getelementptr inbounds %struct.anon, %struct.anon* %buffering30, i32 0, i32 3
  %data32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record31, i32 0, i32 0
  store i8* %call, i8** %data32, align 8
  %33 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering33 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %33, i32 0, i32 28
  %future_record34 = getelementptr inbounds %struct.anon, %struct.anon* %buffering33, i32 0, i32 3
  %data35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record34, i32 0, i32 0
  %34 = load i8*, i8** %data35, align 8
  %cmp36 = icmp eq i8* %34, null
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end16
  %35 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering40 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %35, i32 0, i32 28
  %future_record41 = getelementptr inbounds %struct.anon, %struct.anon* %buffering40, i32 0, i32 3
  %data42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %future_record41, i32 0, i32 0
  %36 = load i8*, i8** %data42, align 8
  %37 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf43 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %37, i32 0, i32 3
  %38 = load i8*, i8** %buf43, align 8
  %39 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len44 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %39, i32 0, i32 4
  %40 = load i64, i64* %buf_len44, align 8
  %call45 = call i8* @memcpy(i8* noundef %36, i8* noundef %38, i64 noundef %40) #7
  %41 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len46 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %41, i32 0, i32 4
  %42 = load i64, i64* %buf_len46, align 8
  %43 = load %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_handshake_params** %hs, align 8
  %buffering47 = getelementptr inbounds %struct.mbedtls_ssl_handshake_params, %struct.mbedtls_ssl_handshake_params* %43, i32 0, i32 28
  %total_bytes_buffered48 = getelementptr inbounds %struct.anon, %struct.anon* %buffering47, i32 0, i32 0
  %44 = load i64, i64* %total_bytes_buffered48, align 8
  %add49 = add i64 %44, %42
  store i64 %add49, i64* %total_bytes_buffered48, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then38, %if.then12, %if.then7, %if.then3, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_client_reconnect(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %rec_epoch = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 25
  %1 = load i8*, i8** %in_ctr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 25
  %4 = load i8*, i8** %in_ctr1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %or = or i32 %shl, %conv3
  store i32 %or, i32* %rec_epoch, align 4
  %6 = load i32, i32* %rec_epoch, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %7, i32 0, i32 0
  %8 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %endpoint = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %8, i32 0, i32 2
  %9 = load i8, i8* %endpoint, align 8
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call = call i32 @mbedtls_ssl_is_handshake_over(%struct.mbedtls_ssl_context* noundef %10) #6
  %cmp9 = icmp eq i32 %call, 1
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 31
  %12 = load i32, i32* %in_msgtype, align 8
  %cmp12 = icmp eq i32 %12, 22
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %13, i32 0, i32 33
  %14 = load i64, i64* %in_left, align 8
  %cmp15 = icmp ugt i64 %14, 13
  br i1 %cmp15, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %15, i32 0, i32 24
  %16 = load i8*, i8** %in_buf, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 13
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true17
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3666, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.202, i64 0, i64 0)) #6
  %19 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call22 = call i32 @ssl_handle_possible_reconnect(%struct.mbedtls_ssl_context* noundef %19) #6
  store i32 %call22, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true17, %land.lhs.true14, %land.lhs.true11, %land.lhs.true8, %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_prepare_record_content(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %rec.addr = alloca %struct.mbedtls_record*, align 8
  %ret = alloca i32, align 4
  %done = alloca i32, align 4
  %old_msg_type = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store %struct.mbedtls_record* %rec, %struct.mbedtls_record** %rec.addr, align 8
  store i32 0, i32* %done, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %1, i32 0, i32 3
  %2 = load i8*, i8** %buf, align 8
  %3 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %3, i32 0, i32 4
  %4 = load i64, i64* %buf_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3684, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.218, i64 0, i64 0), i8* noundef %2, i64 noundef %4) #6
  %5 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %6, i32 0, i32 17
  %7 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_in, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_transform* %7, null
  br i1 %cmp, label %if.then, label %if.end56

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %8, i32 0, i32 1
  %9 = load i8, i8* %type, align 8
  store i8 %9, i8* %old_msg_type, align 1
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %11 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %transform_in1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %11, i32 0, i32 17
  %12 = load %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform** %transform_in1, align 8
  %13 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %call = call i32 @mbedtls_ssl_decrypt_buf(%struct.mbedtls_ssl_context* noundef %10, %struct.mbedtls_ssl_transform* noundef %12, %struct.mbedtls_record* noundef %13) #6
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %15 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3707, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.219, i64 0, i64 0), i32 noundef %15) #6
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i8, i8* %old_msg_type, align 1
  %conv = zext i8 %17 to i32
  %18 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type4 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %18, i32 0, i32 1
  %19 = load i8, i8* %type4, align 8
  %conv5 = zext i8 %19 to i32
  %cmp6 = icmp ne i32 %conv, %conv5
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %20 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %21 = load i8, i8* %old_msg_type, align 1
  %conv9 = zext i8 %21 to i32
  %22 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type10 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %22, i32 0, i32 1
  %23 = load i8, i8* %type10, align 8
  %conv11 = zext i8 %23 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %20, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3725, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.220, i64 0, i64 0), i32 noundef %conv9, i32 noundef %conv11) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  %24 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %25 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %buf13 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %25, i32 0, i32 3
  %26 = load i8*, i8** %buf13, align 8
  %27 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_offset = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %27, i32 0, i32 5
  %28 = load i64, i64* %data_offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %28
  %29 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %29, i32 0, i32 6
  %30 = load i64, i64* %data_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %24, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3729, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.221, i64 0, i64 0), i8* noundef %add.ptr, i64 noundef %30) #6
  %31 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len14 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %31, i32 0, i32 6
  %32 = load i64, i64* %data_len14, align 8
  %cmp15 = icmp eq i64 %32, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %tls_version = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %33, i32 0, i32 4
  %34 = load i32, i32* %tls_version, align 4
  %cmp18 = icmp eq i32 %34, 771
  br i1 %cmp18, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %if.then17
  %35 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %type21 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %35, i32 0, i32 1
  %36 = load i8, i8* %type21, align 8
  %conv22 = zext i8 %36 to i32
  %cmp23 = icmp ne i32 %conv22, 23
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true20
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_msgtype = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %38, i32 0, i32 31
  %39 = load i32, i32* %in_msgtype, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3753, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.222, i64 0, i64 0), i32 noundef %39) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true20, %if.then17
  %40 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %nb_zero = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %40, i32 0, i32 39
  %41 = load i32, i32* %nb_zero, align 8
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %nb_zero, align 8
  %42 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %nb_zero27 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %42, i32 0, i32 39
  %43 = load i32, i32* %nb_zero27, align 8
  %cmp28 = icmp sgt i32 %43, 3
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  %44 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %44, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3767, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.223, i64 0, i64 0)) #6
  store i32 -29056, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  br label %if.end33

if.else:                                          ; preds = %if.end12
  %45 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %nb_zero32 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %45, i32 0, i32 39
  store i32 0, i32* %nb_zero32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end31
  %46 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %46, i32 0, i32 0
  %47 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %transport = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %47, i32 0, i32 3
  %48 = load i8, i8* %transport, align 1
  %conv34 = zext i8 %48 to i32
  %cmp35 = icmp eq i32 %conv34, 1
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end33
  br label %if.end55

if.else38:                                        ; preds = %if.end33
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else38
  %49 = load i32, i32* %i, align 4
  %conv39 = zext i32 %49 to i64
  %50 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call40 = call i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %50) #6
  %cmp41 = icmp ugt i64 %conv39, %call40
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_ctr = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 25
  %52 = load i8*, i8** %in_ctr, align 8
  %53 = load i32, i32* %i, align 4
  %sub = sub i32 %53, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %idxprom
  %54 = load i8, i8* %arrayidx, align 1
  %inc43 = add i8 %54, 1
  store i8 %inc43, i8* %arrayidx, align 1
  %conv44 = zext i8 %inc43 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body
  br label %for.end

if.end48:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %55 = load i32, i32* %i, align 4
  %dec = add i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then47, %for.cond
  %56 = load i32, i32* %i, align 4
  %conv49 = zext i32 %56 to i64
  %57 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call50 = call i64 @mbedtls_ssl_ep_len(%struct.mbedtls_ssl_context* noundef %57) #6
  %cmp51 = icmp eq i64 %conv49, %call50
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %for.end
  %58 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %58, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3796, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.224, i64 0, i64 0)) #6
  store i32 -27520, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %for.end
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then37
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %land.lhs.true, %entry
  %59 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf57 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %59, i32 0, i32 0
  %60 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf57, align 8
  %transport58 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %60, i32 0, i32 3
  %61 = load i8, i8* %transport58, align 1
  %conv59 = zext i8 %61 to i32
  %cmp60 = icmp eq i32 %conv59, 1
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end56
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void @mbedtls_ssl_dtls_replay_update(%struct.mbedtls_ssl_context* noundef %62) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end56
  %63 = load %struct.mbedtls_record*, %struct.mbedtls_record** %rec.addr, align 8
  %data_len64 = getelementptr inbounds %struct.mbedtls_record, %struct.mbedtls_record* %63, i32 0, i32 6
  %64 = load i64, i64* %data_len64, align 8
  %cmp65 = icmp ugt i64 %64, 16384
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  %65 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %65, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3814, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.225, i64 0, i64 0)) #6
  store i32 -29184, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end63
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.then67, %if.then53, %if.then30, %if.then25, %if.then3
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_handle_possible_reconnect(%struct.mbedtls_ssl_context* noundef %ssl) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %send_ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_cookie_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 28
  %2 = load i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write, align 8
  %cmp = icmp eq i32 (i8*, i8**, i8*, i8*, i64)* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %f_cookie_check = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 29
  %5 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check, align 8
  %cmp2 = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3343, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.203, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %8, i32 0, i32 58
  %9 = load i8*, i8** %cli_id, align 8
  %10 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cli_id_len = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %10, i32 0, i32 59
  %11 = load i64, i64* %cli_id_len, align 8
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %12, i32 0, i32 24
  %13 = load i8*, i8** %in_buf, align 8
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %in_left = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %14, i32 0, i32 33
  %15 = load i64, i64* %in_left, align 8
  %16 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %16, i32 0, i32 45
  %17 = load i8*, i8** %out_buf, align 8
  %call = call i32 @mbedtls_ssl_check_dtls_clihlo_cookie(%struct.mbedtls_ssl_context* noundef %7, i8* noundef %9, i64 noundef %11, i8* noundef %13, i64 noundef %15, i8* noundef %17, i64 noundef 16384, i64* noundef %len) #6
  store i32 %call, i32* %ret, align 4
  %18 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %19 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %18, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3353, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.204, i64 0, i64 0), i32 noundef %19) #6
  %20 = load i32, i32* %ret, align 4
  %cmp3 = icmp eq i32 %20, -27264
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3358, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.205, i64 0, i64 0)) #6
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf5 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %23, i32 0, i32 45
  %24 = load i8*, i8** %out_buf5, align 8
  %25 = load i64, i64* %len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3360, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i64 0, i64 0), i8* noundef %24, i64 noundef %25) #6
  %26 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %f_send = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %26, i32 0, i32 8
  %27 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_send, align 8
  %28 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %p_bio = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %28, i32 0, i32 11
  %29 = load i8*, i8** %p_bio, align 8
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %out_buf6 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %30, i32 0, i32 45
  %31 = load i8*, i8** %out_buf6, align 8
  %32 = load i64, i64* %len, align 8
  %call7 = call i32 %27(i8* noundef %29, i8* noundef %31, i64 noundef %32) #6
  store i32 %call7, i32* %send_ret, align 4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load i32, i32* %send_ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %33, i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3365, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef %34) #6
  %35 = load i32, i32* %send_ret, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %36 = load i32, i32* %ret, align 4
  %cmp9 = icmp eq i32 %36, 0
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end8
  %37 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3373, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.206, i64 0, i64 0)) #6
  %38 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %call11 = call i32 @mbedtls_ssl_session_reset_int(%struct.mbedtls_ssl_context* noundef %38, i32 noundef 1) #6
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  %39 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %40 = load i32, i32* %ret, align 4
  call void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %39, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3376, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i64 0, i64 0), i32 noundef %40) #6
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  store i32 -26496, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end8
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.end14, %if.then13, %if.then4, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_check_dtls_clihlo_cookie(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %cli_id, i64 noundef %cli_id_len, i8* noundef %in, i64 noundef %in_len, i8* noundef %obuf, i64 noundef %buf_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  %in.addr = alloca i8*, align 8
  %in_len.addr = alloca i64, align 8
  %obuf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %sid_len = alloca i64, align 8
  %cookie_len = alloca i64, align 8
  %epoch = alloca i64, align 8
  %fragment_offset = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i64 %in_len, i64* %in_len.addr, align 8
  store i8* %obuf, i8** %obuf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %1 = load i64, i64* %in_len.addr, align 8
  %conv = trunc i64 %1 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %0, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3208, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i64 0, i64 0), i32 noundef %conv) #6
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i8*, i8** %cli_id.addr, align 8
  %4 = load i64, i64* %cli_id_len.addr, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %2, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3209, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.209, i64 0, i64 0), i8* noundef %3, i64 noundef %4) #6
  %5 = load i64, i64* %in_len.addr, align 8
  %cmp = icmp ult i64 %5, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %6, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3212, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.210, i64 0, i64 0)) #6
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %8 to i16
  %conv3 = zext i16 %conv2 to i32
  %shl = shl i32 %conv3, 8
  %9 = load i8*, i8** %in.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %10 to i16
  %conv6 = zext i16 %conv5 to i32
  %or = or i32 %shl, %conv6
  %conv7 = sext i32 %or to i64
  store i64 %conv7, i64* %epoch, align 8
  %11 = load i8*, i8** %in.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 19
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %shl10 = shl i32 %conv9, 16
  %13 = load i8*, i8** %in.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 20
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %shl13 = shl i32 %conv12, 8
  %or14 = or i32 %shl10, %shl13
  %15 = load i8*, i8** %in.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 21
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %or17 = or i32 %or14, %conv16
  %conv18 = zext i32 %or17 to i64
  store i64 %conv18, i64* %fragment_offset, align 8
  %17 = load i8*, i8** %in.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp ne i32 %conv20, 22
  br i1 %cmp21, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i64, i64* %epoch, align 8
  %cmp23 = icmp ne i64 %19, 0
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %20 = load i64, i64* %fragment_offset, align 8
  %cmp26 = icmp ne i64 %20, 0
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %if.end
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %21, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3222, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.211, i64 0, i64 0)) #6
  %22 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %23 = load i8*, i8** %in.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %24 to i32
  %25 = load i64, i64* %epoch, align 8
  %conv31 = trunc i64 %25 to i32
  %26 = load i64, i64* %fragment_offset, align 8
  %conv32 = trunc i64 %26 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %22, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3225, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.212, i64 0, i64 0), i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv32) #6
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %lor.lhs.false25
  %27 = load i8*, i8** %in.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 59
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %28 to i64
  store i64 %conv35, i64* %sid_len, align 8
  %29 = load i64, i64* %sid_len, align 8
  %add = add i64 60, %29
  %add36 = add i64 %add, 1
  %30 = load i64, i64* %in_len.addr, align 8
  %cmp37 = icmp ugt i64 %add36, %30
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end33
  %31 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %32 = load i64, i64* %sid_len, align 8
  %conv40 = trunc i64 %32 to i32
  %33 = load i64, i64* %in_len.addr, align 8
  %conv41 = trunc i64 %33 to i32
  %sub = sub i32 %conv41, 61
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %31, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3234, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv40, i32 noundef %sub) #6
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end33
  %34 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %35 = load i8*, i8** %in.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 60
  %36 = load i64, i64* %sid_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %34, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3238, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.214, i64 0, i64 0), i8* noundef %add.ptr, i64 noundef %36) #6
  %37 = load i8*, i8** %in.addr, align 8
  %38 = load i64, i64* %sid_len, align 8
  %add43 = add i64 60, %38
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i64 %add43
  %39 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %39 to i64
  store i64 %conv45, i64* %cookie_len, align 8
  %40 = load i64, i64* %sid_len, align 8
  %add46 = add i64 60, %40
  %add47 = add i64 %add46, 1
  %41 = load i64, i64* %cookie_len, align 8
  %add48 = add i64 %add47, %41
  %42 = load i64, i64* %in_len.addr, align 8
  %cmp49 = icmp ugt i64 %add48, %42
  br i1 %cmp49, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end42
  %43 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %44 = load i64, i64* %cookie_len, align 8
  %conv52 = trunc i64 %44 to i32
  %45 = load i64, i64* %in_len.addr, align 8
  %46 = load i64, i64* %sid_len, align 8
  %sub53 = sub i64 %45, %46
  %sub54 = sub i64 %sub53, 61
  %conv55 = trunc i64 %sub54 to i32
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %43, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3245, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.215, i64 0, i64 0), i32 noundef %conv52, i32 noundef %conv55) #6
  store i32 -29440, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end42
  %47 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %48 = load i8*, i8** %in.addr, align 8
  %49 = load i64, i64* %sid_len, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %48, i64 %49
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr57, i64 61
  %50 = load i64, i64* %cookie_len, align 8
  call void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %47, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3250, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.216, i64 0, i64 0), i8* noundef %add.ptr58, i64 noundef %50) #6
  %51 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %51, i32 0, i32 0
  %52 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_cookie_check = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %52, i32 0, i32 29
  %53 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %f_cookie_check, align 8
  %54 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf59 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %54, i32 0, i32 0
  %55 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf59, align 8
  %p_cookie = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %55, i32 0, i32 30
  %56 = load i8*, i8** %p_cookie, align 8
  %57 = load i8*, i8** %in.addr, align 8
  %58 = load i64, i64* %sid_len, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %57, i64 %58
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 61
  %59 = load i64, i64* %cookie_len, align 8
  %60 = load i8*, i8** %cli_id.addr, align 8
  %61 = load i64, i64* %cli_id_len.addr, align 8
  %call = call i32 %53(i8* noundef %56, i8* noundef %add.ptr61, i64 noundef %59, i8* noundef %60, i64 noundef %61) #6
  %cmp62 = icmp eq i32 %call, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end56
  %62 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  call void (%struct.mbedtls_ssl_context*, i32, i8*, i32, i8*, ...) @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %62, i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 3255, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.217, i64 0, i64 0)) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end56
  %63 = load i64, i64* %buf_len.addr, align 8
  %cmp66 = icmp ult i64 %63, 28
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end65
  %64 = load i8*, i8** %obuf.addr, align 8
  %65 = load i8*, i8** %in.addr, align 8
  %call70 = call i8* @memcpy(i8* noundef %64, i8* noundef %65, i64 noundef 25) #7
  %66 = load i8*, i8** %obuf.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %66, i64 13
  store i8 3, i8* %arrayidx71, align 1
  %67 = load i8*, i8** %obuf.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %67, i64 25
  store i8 -2, i8* %arrayidx72, align 1
  %68 = load i8*, i8** %obuf.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %68, i64 26
  store i8 -1, i8* %arrayidx73, align 1
  %69 = load i8*, i8** %obuf.addr, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %69, i64 28
  store i8* %add.ptr74, i8** %p, align 8
  %70 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf75 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %70, i32 0, i32 0
  %71 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf75, align 8
  %f_cookie_write = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %71, i32 0, i32 28
  %72 = load i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8**, i8*, i8*, i64)** %f_cookie_write, align 8
  %73 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf76 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %73, i32 0, i32 0
  %74 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf76, align 8
  %p_cookie77 = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %74, i32 0, i32 30
  %75 = load i8*, i8** %p_cookie77, align 8
  %76 = load i8*, i8** %obuf.addr, align 8
  %77 = load i64, i64* %buf_len.addr, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %76, i64 %77
  %78 = load i8*, i8** %cli_id.addr, align 8
  %79 = load i64, i64* %cli_id_len.addr, align 8
  %call79 = call i32 %72(i8* noundef %75, i8** noundef %p, i8* noundef %add.ptr78, i8* noundef %78, i64 noundef %79) #6
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end69
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end69
  %80 = load i8*, i8** %p, align 8
  %81 = load i8*, i8** %obuf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %82 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %82, align 8
  %83 = load i64*, i64** %olen.addr, align 8
  %84 = load i64, i64* %83, align 8
  %sub84 = sub i64 %84, 28
  %conv85 = trunc i64 %sub84 to i8
  %85 = load i8*, i8** %obuf.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %85, i64 27
  store i8 %conv85, i8* %arrayidx86, align 1
  %86 = load i64*, i64** %olen.addr, align 8
  %87 = load i64, i64* %86, align 8
  %sub87 = sub i64 %87, 25
  %shr = lshr i64 %sub87, 16
  %and = and i64 %shr, 255
  %conv88 = trunc i64 %and to i8
  %88 = load i8*, i8** %obuf.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %88, i64 22
  store i8 %conv88, i8* %arrayidx89, align 1
  %89 = load i8*, i8** %obuf.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %89, i64 14
  store i8 %conv88, i8* %arrayidx90, align 1
  %90 = load i64*, i64** %olen.addr, align 8
  %91 = load i64, i64* %90, align 8
  %sub91 = sub i64 %91, 25
  %shr92 = lshr i64 %sub91, 8
  %and93 = and i64 %shr92, 255
  %conv94 = trunc i64 %and93 to i8
  %92 = load i8*, i8** %obuf.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %92, i64 23
  store i8 %conv94, i8* %arrayidx95, align 1
  %93 = load i8*, i8** %obuf.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %93, i64 15
  store i8 %conv94, i8* %arrayidx96, align 1
  %94 = load i64*, i64** %olen.addr, align 8
  %95 = load i64, i64* %94, align 8
  %sub97 = sub i64 %95, 25
  %and98 = and i64 %sub97, 255
  %conv99 = trunc i64 %and98 to i8
  %96 = load i8*, i8** %obuf.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %96, i64 24
  store i8 %conv99, i8* %arrayidx100, align 1
  %97 = load i8*, i8** %obuf.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %97, i64 16
  store i8 %conv99, i8* %arrayidx101, align 1
  %98 = load i64*, i64** %olen.addr, align 8
  %99 = load i64, i64* %98, align 8
  %sub102 = sub i64 %99, 13
  %shr103 = lshr i64 %sub102, 8
  %and104 = and i64 %shr103, 255
  %conv105 = trunc i64 %and104 to i8
  %100 = load i8*, i8** %obuf.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %100, i64 11
  store i8 %conv105, i8* %arrayidx106, align 1
  %101 = load i64*, i64** %olen.addr, align 8
  %102 = load i64, i64* %101, align 8
  %sub107 = sub i64 %102, 13
  %and108 = and i64 %sub107, 255
  %conv109 = trunc i64 %and108 to i8
  %103 = load i8*, i8** %obuf.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %103, i64 12
  store i8 %conv109, i8* %arrayidx110, align 1
  store i32 -27264, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then82, %if.then68, %if.then64, %if.then51, %if.then39, %if.then28, %if.then
  %104 = load i32, i32* %retval, align 4
  ret i32 %104
}

declare dso_local i32 @mbedtls_ssl_session_reset_int(%struct.mbedtls_ssl_context* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_renegotiate(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_start_renegotiation(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_get_max_out_record_payload(%struct.mbedtls_ssl_context* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
