; ModuleID = 'ssl/t1_trce.c'
source_filename = "ssl/t1_trce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_trace_tbl = type { i32, i8* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, {}*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.ssl_mac_buf_st = type { i8*, i32 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon.2 = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.3, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.3 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type opaque
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i8*, i64 }
%struct.x509_st = type opaque
%struct.sigalg_lookup_st = type { i8*, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.evp_pkey_st = type opaque
%struct.dtls1_state_st = type { [255 x i8], i64, i32, i16, i16, i16, %struct.pqueue_st*, %struct.pqueue_st*, i64, i64, %struct.hm_header_st, %struct.hm_header_st, i32, %struct.timeval, i32, i32, i32 (%struct.ssl_st*, i32)* }
%struct.pqueue_st = type opaque
%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { %struct.evp_cipher_ctx_st*, %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.ssl_session_st*, i16 }
%struct.timeval = type { i64, i64 }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.dane_ctx_st = type { %struct.evp_md_st**, i8*, i8, i64 }
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }
%struct.stack_st_SSL_CIPHER = type opaque
%struct.comp_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.cert_st = type { %struct.cert_pkey_st*, %struct.evp_pkey_st*, %struct.dh_st* (%struct.ssl_st*, i32, i32)*, i32, i32, [9 x %struct.cert_pkey_st], i8*, i64, i16*, i64, i16*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.x509_store_st*, %struct.x509_store_st*, %struct.custom_ext_methods, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32, i8*, i8*, i32, i8* }
%struct.dh_st = type opaque
%struct.x509_store_st = type opaque
%struct.custom_ext_methods = type { %struct.custom_ext_method*, i64 }
%struct.custom_ext_method = type { i16, i32, i32, i32, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)*, i8*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i8* }
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.anon = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.x509_store_ctx_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.anon.4 = type { [26 x i8], void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i8*, i16, i32, %struct.anon.5, i32, i32, i64, i8*, i64, i8*, i64, i16*, i64, i16*, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32, i8, i32 }
%struct.anon.5 = type { %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i64 }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.CLIENTHELLO_MSG = type { i32, i32, [32 x i8], i64, [32 x i8], i64, [255 x i8], %struct.PACKET, i64, [255 x i8], %struct.PACKET, i64, %struct.raw_extension_st* }
%struct.PACKET = type { i8*, i64 }
%struct.raw_extension_st = type { %struct.PACKET, i32, i32, i32, i64 }
%struct.ct_policy_eval_ctx_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.0, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, {}*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.1, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ctlog_store_st = type opaque
%struct.engine_st = type opaque
%struct.anon.1 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
%struct.ssl_ctx_ext_secure_st = type { [32 x i8], [32 x i8] }
%struct.hmac_ctx_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.tls_group_info_st = type { i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, i8 }
%struct.stack_st_SRTP_PROTECTION_PROFILE = type opaque
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.bignum_st = type opaque
%struct.record_layer_st = type { %struct.ssl_st*, i32, i32, i64, i64, %struct.ssl3_buffer_st, [32 x %struct.ssl3_buffer_st], [32 x %struct.ssl3_record_st], i8*, i64, i64, [4 x i8], i64, i64, i64, i32, i64, i8*, [8 x i8], [8 x i8], i32, i32, %struct.dtls_record_layer_st* }
%struct.ssl3_buffer_st = type { i8*, i64, i64, i64, i64, i32 }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.X509_name_st = type opaque

@.str = private unnamed_addr constant [5 x i8] c"Sent\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" too short message\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c" Record\0AHeader:\0A  Version = %s (0x%x)\0A\00", align 1
@ssl_version_tbl = internal constant [8 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 768, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 769, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 770, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 771, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 772, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [42 x i8] c"  epoch=%d, sequence_number=%04x%04x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"  Content Type = %s (%d)\0A  Length = %d\00", align 1
@ssl_content_tbl = internal constant [4 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [31 x i8] c"  Inner Content Type = %s (%d)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Message length parse error!\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"    change_cipher_spec (1)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unknown value\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"    Illegal Alert Length\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"    Level=%s(%d), description=%s(%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"%s (len=%d): \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SSL 3.0\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"TLS 1.0\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"TLS 1.1\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"TLS 1.2\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"TLS 1.3\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"DTLS 1.0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"DTLS 1.2\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"DTLS 1.0 (bad)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ChangeCipherSpec\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Alert\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Handshake\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"ApplicationData\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"%s, Length=%d\0A\00", align 1
@ssl_handshake_tbl = internal constant [20 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0) }], align 16
@.str.29 = private unnamed_addr constant [56 x i8] c"message_seq=%d, fragment_offset=%d, fragment_length=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"verify_data\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"unexpected value\00", align 1
@ssl_key_update_tbl = internal constant [2 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.596, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.597, i32 0, i32 0) }], align 16
@.str.32 = private unnamed_addr constant [32 x i8] c"Unsupported, hex dump follows:\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"HelloRequest\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ClientHello\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ServerHello\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"HelloVerifyRequest\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"NewSessionTicket\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"EndOfEarlyData\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"EncryptedExtensions\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"ServerKeyExchange\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"CertificateRequest\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"ServerHelloDone\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"CertificateVerify\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"ClientKeyExchange\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Finished\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"CertificateUrl\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"CertificateStatus\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"SupplementalData\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"KeyUpdate\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"NextProto\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"MessageHash\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"client_version\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"cipher_suites (len=%d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"{0x%02X, 0x%02X} %s\0A\00", align 1
@ssl_ciphers_tbl = internal constant [342 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.72, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.75, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.77, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.80, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.89, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.93, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.94, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.103, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.106, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.108, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.111, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.113, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.114, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.115, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.118, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.119, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.124, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.126, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.127, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.128, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.129, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.134, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.135, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.136, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.137, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.138, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.139, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.140, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.141, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.142, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.143, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.144, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.145, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.146, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.147, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.148, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.149, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.150, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.151, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.152, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.153, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.154, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.156, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.157, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.159, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.161, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.162, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.164, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.165, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.166, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.168, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.169, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.170, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.171, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 161, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.172, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.173, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.174, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.175, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.176, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.177, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.178, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.179, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.180, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.181, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.182, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.183, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.184, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.185, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.186, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.187, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.188, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.189, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.190, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.191, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.192, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.193, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.194, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.195, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.196, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.197, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 187, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.198, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.199, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 189, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.200, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.201, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 191, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.202, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.203, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.204, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.205, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.206, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.207, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 197, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.208, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.209, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22016, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.211, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.212, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.213, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.214, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.215, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.216, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.217, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.218, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.219, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.220, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.221, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.222, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.223, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.224, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.225, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.226, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.227, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.228, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.229, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.230, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.231, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.232, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.233, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.234, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49177, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.235, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.236, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.237, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.238, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.239, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.240, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.241, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.242, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.243, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.244, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49187, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.245, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.246, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.247, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.248, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.249, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.250, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.251, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.252, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.253, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49196, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.254, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49197, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.255, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.256, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.257, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.258, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.259, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.260, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.261, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.262, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.263, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.264, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.265, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.266, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.267, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.268, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.269, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.270, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.271, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49214, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.272, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.273, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49216, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.274, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.275, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49218, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.276, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.277, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49220, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.278, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.279, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49222, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.280, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.281, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49224, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.282, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49225, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.283, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.284, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49227, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.285, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49228, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.286, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49229, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.287, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49230, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.288, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.289, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.290, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.291, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49234, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.292, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49235, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.293, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.294, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49237, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.295, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49238, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.296, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49239, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.297, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49240, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.298, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.299, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49242, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.300, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49243, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.301, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49244, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.302, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49245, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.303, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49246, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.304, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49247, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.305, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.306, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49249, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.307, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.308, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.309, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.310, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.311, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.312, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.313, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.314, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49257, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.315, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.316, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49259, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.317, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49260, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.318, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49261, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.319, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49262, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.320, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.321, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.322, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49265, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.323, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49266, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.324, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49267, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.325, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49268, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.326, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49269, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.327, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.328, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.329, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49272, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.330, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49273, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.331, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49274, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.332, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.333, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49276, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.334, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49277, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.335, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49278, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.336, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49279, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.337, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49280, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.338, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49281, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.339, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49282, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.340, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49283, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.341, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49284, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.342, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49285, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.343, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49286, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.344, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49287, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.345, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49288, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.346, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49289, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.347, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49290, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.348, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49291, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.349, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49292, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.350, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49293, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.351, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.352, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49295, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.353, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49296, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.354, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49297, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.355, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49298, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.356, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49299, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.357, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49300, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.358, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49301, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.359, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49302, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.360, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49303, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.361, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49304, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.362, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.363, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49306, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.364, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49307, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.365, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49308, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.366, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49309, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.367, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49310, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.368, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.369, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.370, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49313, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.371, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49314, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.372, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49315, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.373, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49316, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.374, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49317, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.375, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49318, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.376, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.377, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.378, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49321, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.379, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49322, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.380, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49323, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.381, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49324, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.382, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49325, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.383, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49326, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.384, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49327, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.385, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49410, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.386, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52392, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.387, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52393, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.388, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52394, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.389, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52395, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.390, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52396, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.391, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52397, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.392, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 52398, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.393, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4865, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.394, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4866, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.395, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4867, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.396, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4868, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.397, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4869, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.398, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.399, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.400, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65413, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.401, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65415, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.402, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49408, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.403, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49409, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.404, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49410, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.405, i32 0, i32 0) }], align 16
@.str.58 = private unnamed_addr constant [30 x i8] c"compression_methods (len=%d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"%s (0x%02X)\0A\00", align 1
@ssl_comp_tbl = internal constant [2 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.407, i32 0, i32 0) }], align 16
@.str.60 = private unnamed_addr constant [14 x i8] c"%s=0x%x (%s)\0A\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Random:\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"gmt_unix_time=0x%08X\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"random_bytes\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"TLS_NULL_WITH_NULL_NULL\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"TLS_RSA_WITH_NULL_MD5\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"TLS_RSA_WITH_NULL_SHA\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"TLS_RSA_EXPORT_WITH_RC4_40_MD5\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_RC4_128_MD5\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_RC4_128_SHA\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"TLS_RSA_EXPORT_WITH_RC2_CBC_40_MD5\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"TLS_RSA_WITH_IDEA_CBC_SHA\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"TLS_RSA_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_DES_CBC_SHA\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"TLS_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"TLS_DH_DSS_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"TLS_DH_DSS_WITH_DES_CBC_SHA\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"TLS_DH_RSA_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"TLS_DH_RSA_WITH_DES_CBC_SHA\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"TLS_DHE_DSS_WITH_DES_CBC_SHA\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"TLS_DHE_RSA_WITH_DES_CBC_SHA\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"TLS_DH_anon_EXPORT_WITH_RC4_40_MD5\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"TLS_DH_anon_WITH_RC4_128_MD5\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"TLS_DH_anon_WITH_DES_CBC_SHA\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"TLS_DH_anon_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"SSL_FORTEZZA_KEA_WITH_FORTEZZA_CBC_SHA\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"SSL_FORTEZZA_KEA_WITH_RC4_128_SHA\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"TLS_KRB5_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"TLS_KRB5_WITH_RC4_128_SHA\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"TLS_KRB5_WITH_IDEA_CBC_SHA\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"TLS_KRB5_WITH_DES_CBC_MD5\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"TLS_KRB5_WITH_3DES_EDE_CBC_MD5\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"TLS_KRB5_WITH_RC4_128_MD5\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"TLS_KRB5_WITH_IDEA_CBC_MD5\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"TLS_KRB5_EXPORT_WITH_RC4_40_SHA\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"TLS_KRB5_EXPORT_WITH_RC4_40_MD5\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"TLS_PSK_WITH_NULL_SHA\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"TLS_DH_DSS_WITH_AES_128_CBC_SHA\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"TLS_DH_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"TLS_DHE_DSS_WITH_AES_128_CBC_SHA\00", align 1
@.str.114 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"TLS_DH_anon_WITH_AES_128_CBC_SHA\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"TLS_DH_DSS_WITH_AES_256_CBC_SHA\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"TLS_DH_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"TLS_DHE_DSS_WITH_AES_256_CBC_SHA\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"TLS_DH_anon_WITH_AES_256_CBC_SHA\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_NULL_SHA256\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.124 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_256_CBC_SHA256\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"TLS_DH_DSS_WITH_AES_128_CBC_SHA256\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"TLS_DH_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_128_CBC_SHA256\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.130 = private unnamed_addr constant [37 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.135 = private unnamed_addr constant [35 x i8] c"TLS_DH_DSS_WITH_AES_256_CBC_SHA256\00", align 1
@.str.136 = private unnamed_addr constant [35 x i8] c"TLS_DH_RSA_WITH_AES_256_CBC_SHA256\00", align 1
@.str.137 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_256_CBC_SHA256\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_256_CBC_SHA256\00", align 1
@.str.139 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_128_CBC_SHA256\00", align 1
@.str.140 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_256_CBC_SHA256\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"TLS_GOSTR341001_WITH_28147_CNT_IMIT\00", align 1
@.str.142 = private unnamed_addr constant [36 x i8] c"TLS_GOSTR341001_WITH_NULL_GOSTR3411\00", align 1
@.str.143 = private unnamed_addr constant [34 x i8] c"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.144 = private unnamed_addr constant [37 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.146 = private unnamed_addr constant [38 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.148 = private unnamed_addr constant [38 x i8] c"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_RC4_128_SHA\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"TLS_PSK_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.151 = private unnamed_addr constant [29 x i8] c"TLS_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"TLS_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_RC4_128_SHA\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"TLS_DHE_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.156 = private unnamed_addr constant [33 x i8] c"TLS_DHE_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.157 = private unnamed_addr constant [29 x i8] c"TLS_RSA_PSK_WITH_RC4_128_SHA\00", align 1
@.str.158 = private unnamed_addr constant [34 x i8] c"TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.159 = private unnamed_addr constant [33 x i8] c"TLS_RSA_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.160 = private unnamed_addr constant [33 x i8] c"TLS_RSA_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"TLS_RSA_WITH_SEED_CBC_SHA\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"TLS_DH_DSS_WITH_SEED_CBC_SHA\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"TLS_DH_RSA_WITH_SEED_CBC_SHA\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"TLS_DHE_DSS_WITH_SEED_CBC_SHA\00", align 1
@.str.165 = private unnamed_addr constant [30 x i8] c"TLS_DHE_RSA_WITH_SEED_CBC_SHA\00", align 1
@.str.166 = private unnamed_addr constant [30 x i8] c"TLS_DH_anon_WITH_SEED_CBC_SHA\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.169 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.170 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.171 = private unnamed_addr constant [35 x i8] c"TLS_DH_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"TLS_DH_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.173 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_128_GCM_SHA256\00", align 1
@.str.174 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_256_GCM_SHA384\00", align 1
@.str.175 = private unnamed_addr constant [35 x i8] c"TLS_DH_DSS_WITH_AES_128_GCM_SHA256\00", align 1
@.str.176 = private unnamed_addr constant [35 x i8] c"TLS_DH_DSS_WITH_AES_256_GCM_SHA384\00", align 1
@.str.177 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_128_GCM_SHA256\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_256_GCM_SHA384\00", align 1
@.str.179 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.180 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.181 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.182 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.183 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.184 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.185 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.187 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_NULL_SHA256\00", align 1
@.str.188 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_NULL_SHA384\00", align 1
@.str.189 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.190 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.191 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA256\00", align 1
@.str.192 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA384\00", align 1
@.str.193 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.194 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA256\00", align 1
@.str.196 = private unnamed_addr constant [29 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA384\00", align 1
@.str.197 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.198 = private unnamed_addr constant [40 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.199 = private unnamed_addr constant [40 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.200 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.201 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.202 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.203 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.204 = private unnamed_addr constant [40 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.205 = private unnamed_addr constant [40 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.206 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.207 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.208 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.209 = private unnamed_addr constant [34 x i8] c"TLS_EMPTY_RENEGOTIATION_INFO_SCSV\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"TLS_FALLBACK_SCSV\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"TLS_ECDH_ECDSA_WITH_NULL_SHA\00", align 1
@.str.212 = private unnamed_addr constant [32 x i8] c"TLS_ECDH_ECDSA_WITH_RC4_128_SHA\00", align 1
@.str.213 = private unnamed_addr constant [37 x i8] c"TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.214 = private unnamed_addr constant [36 x i8] c"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.215 = private unnamed_addr constant [36 x i8] c"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.216 = private unnamed_addr constant [30 x i8] c"TLS_ECDHE_ECDSA_WITH_NULL_SHA\00", align 1
@.str.217 = private unnamed_addr constant [33 x i8] c"TLS_ECDHE_ECDSA_WITH_RC4_128_SHA\00", align 1
@.str.218 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.219 = private unnamed_addr constant [37 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.220 = private unnamed_addr constant [37 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.221 = private unnamed_addr constant [27 x i8] c"TLS_ECDH_RSA_WITH_NULL_SHA\00", align 1
@.str.222 = private unnamed_addr constant [30 x i8] c"TLS_ECDH_RSA_WITH_RC4_128_SHA\00", align 1
@.str.223 = private unnamed_addr constant [35 x i8] c"TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.224 = private unnamed_addr constant [34 x i8] c"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.225 = private unnamed_addr constant [34 x i8] c"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.226 = private unnamed_addr constant [28 x i8] c"TLS_ECDHE_RSA_WITH_NULL_SHA\00", align 1
@.str.227 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_RSA_WITH_RC4_128_SHA\00", align 1
@.str.228 = private unnamed_addr constant [36 x i8] c"TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.229 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.230 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.231 = private unnamed_addr constant [28 x i8] c"TLS_ECDH_anon_WITH_NULL_SHA\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"TLS_ECDH_anon_WITH_RC4_128_SHA\00", align 1
@.str.233 = private unnamed_addr constant [36 x i8] c"TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.234 = private unnamed_addr constant [35 x i8] c"TLS_ECDH_anon_WITH_AES_128_CBC_SHA\00", align 1
@.str.235 = private unnamed_addr constant [35 x i8] c"TLS_ECDH_anon_WITH_AES_256_CBC_SHA\00", align 1
@.str.236 = private unnamed_addr constant [34 x i8] c"TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.237 = private unnamed_addr constant [38 x i8] c"TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.238 = private unnamed_addr constant [38 x i8] c"TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.239 = private unnamed_addr constant [33 x i8] c"TLS_SRP_SHA_WITH_AES_128_CBC_SHA\00", align 1
@.str.240 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.241 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA\00", align 1
@.str.242 = private unnamed_addr constant [33 x i8] c"TLS_SRP_SHA_WITH_AES_256_CBC_SHA\00", align 1
@.str.243 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.244 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA\00", align 1
@.str.245 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.246 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.247 = private unnamed_addr constant [39 x i8] c"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.248 = private unnamed_addr constant [39 x i8] c"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.249 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.250 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.251 = private unnamed_addr constant [37 x i8] c"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.252 = private unnamed_addr constant [37 x i8] c"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.253 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.254 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.255 = private unnamed_addr constant [39 x i8] c"TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.256 = private unnamed_addr constant [39 x i8] c"TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.257 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.258 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.259 = private unnamed_addr constant [37 x i8] c"TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.260 = private unnamed_addr constant [37 x i8] c"TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.261 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_PSK_WITH_RC4_128_SHA\00", align 1
@.str.262 = private unnamed_addr constant [36 x i8] c"TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.263 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.264 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.265 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.266 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.267 = private unnamed_addr constant [28 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA\00", align 1
@.str.268 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA256\00", align 1
@.str.269 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA384\00", align 1
@.str.270 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.271 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.272 = private unnamed_addr constant [36 x i8] c"TLS_DH_DSS_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.273 = private unnamed_addr constant [36 x i8] c"TLS_DH_DSS_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.274 = private unnamed_addr constant [36 x i8] c"TLS_DH_RSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.275 = private unnamed_addr constant [36 x i8] c"TLS_DH_RSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.276 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.277 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.278 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.279 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.280 = private unnamed_addr constant [37 x i8] c"TLS_DH_anon_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.281 = private unnamed_addr constant [37 x i8] c"TLS_DH_anon_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.282 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.283 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.284 = private unnamed_addr constant [40 x i8] c"TLS_ECDH_ECDSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.285 = private unnamed_addr constant [40 x i8] c"TLS_ECDH_ECDSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.286 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.287 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.288 = private unnamed_addr constant [38 x i8] c"TLS_ECDH_RSA_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.289 = private unnamed_addr constant [38 x i8] c"TLS_ECDH_RSA_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.290 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.291 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.292 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.293 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.294 = private unnamed_addr constant [36 x i8] c"TLS_DH_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.295 = private unnamed_addr constant [36 x i8] c"TLS_DH_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.296 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.297 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.298 = private unnamed_addr constant [36 x i8] c"TLS_DH_DSS_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.299 = private unnamed_addr constant [36 x i8] c"TLS_DH_DSS_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.300 = private unnamed_addr constant [37 x i8] c"TLS_DH_anon_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.301 = private unnamed_addr constant [37 x i8] c"TLS_DH_anon_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.302 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.303 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.304 = private unnamed_addr constant [40 x i8] c"TLS_ECDH_ECDSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.305 = private unnamed_addr constant [40 x i8] c"TLS_ECDH_ECDSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.306 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.307 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.308 = private unnamed_addr constant [38 x i8] c"TLS_ECDH_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.309 = private unnamed_addr constant [38 x i8] c"TLS_ECDH_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.310 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.311 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.312 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.313 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.314 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.315 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.316 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.317 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.318 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.319 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.320 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.321 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.322 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_PSK_WITH_ARIA_128_CBC_SHA256\00", align 1
@.str.323 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_PSK_WITH_ARIA_256_CBC_SHA384\00", align 1
@.str.324 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.325 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.326 = private unnamed_addr constant [44 x i8] c"TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.327 = private unnamed_addr constant [44 x i8] c"TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.328 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.329 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.330 = private unnamed_addr constant [42 x i8] c"TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.331 = private unnamed_addr constant [42 x i8] c"TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.332 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.333 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.334 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.335 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.336 = private unnamed_addr constant [40 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.337 = private unnamed_addr constant [40 x i8] c"TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.338 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.339 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.340 = private unnamed_addr constant [40 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.341 = private unnamed_addr constant [40 x i8] c"TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.342 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.343 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.344 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.345 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.346 = private unnamed_addr constant [44 x i8] c"TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.347 = private unnamed_addr constant [44 x i8] c"TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.348 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.349 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.350 = private unnamed_addr constant [42 x i8] c"TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.351 = private unnamed_addr constant [42 x i8] c"TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.352 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.353 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.354 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.355 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.356 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256\00", align 1
@.str.357 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384\00", align 1
@.str.358 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.359 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.360 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.361 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.362 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.363 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.364 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.365 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.366 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_AES_128_CCM\00", align 1
@.str.367 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_AES_256_CCM\00", align 1
@.str.368 = private unnamed_addr constant [29 x i8] c"TLS_DHE_RSA_WITH_AES_128_CCM\00", align 1
@.str.369 = private unnamed_addr constant [29 x i8] c"TLS_DHE_RSA_WITH_AES_256_CCM\00", align 1
@.str.370 = private unnamed_addr constant [27 x i8] c"TLS_RSA_WITH_AES_128_CCM_8\00", align 1
@.str.371 = private unnamed_addr constant [27 x i8] c"TLS_RSA_WITH_AES_256_CCM_8\00", align 1
@.str.372 = private unnamed_addr constant [31 x i8] c"TLS_DHE_RSA_WITH_AES_128_CCM_8\00", align 1
@.str.373 = private unnamed_addr constant [31 x i8] c"TLS_DHE_RSA_WITH_AES_256_CCM_8\00", align 1
@.str.374 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_AES_128_CCM\00", align 1
@.str.375 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_AES_256_CCM\00", align 1
@.str.376 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_AES_128_CCM\00", align 1
@.str.377 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_AES_256_CCM\00", align 1
@.str.378 = private unnamed_addr constant [27 x i8] c"TLS_PSK_WITH_AES_128_CCM_8\00", align 1
@.str.379 = private unnamed_addr constant [27 x i8] c"TLS_PSK_WITH_AES_256_CCM_8\00", align 1
@.str.380 = private unnamed_addr constant [31 x i8] c"TLS_PSK_DHE_WITH_AES_128_CCM_8\00", align 1
@.str.381 = private unnamed_addr constant [31 x i8] c"TLS_PSK_DHE_WITH_AES_256_CCM_8\00", align 1
@.str.382 = private unnamed_addr constant [33 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CCM\00", align 1
@.str.383 = private unnamed_addr constant [33 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CCM\00", align 1
@.str.384 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8\00", align 1
@.str.385 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8\00", align 1
@.str.386 = private unnamed_addr constant [32 x i8] c"IANA-GOST2012-GOST8912-GOST8912\00", align 1
@.str.387 = private unnamed_addr constant [44 x i8] c"TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.388 = private unnamed_addr constant [46 x i8] c"TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.389 = private unnamed_addr constant [42 x i8] c"TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.390 = private unnamed_addr constant [38 x i8] c"TLS_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.391 = private unnamed_addr constant [44 x i8] c"TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.392 = private unnamed_addr constant [42 x i8] c"TLS_DHE_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.393 = private unnamed_addr constant [42 x i8] c"TLS_RSA_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.394 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.395 = private unnamed_addr constant [23 x i8] c"TLS_AES_256_GCM_SHA384\00", align 1
@.str.396 = private unnamed_addr constant [29 x i8] c"TLS_CHACHA20_POLY1305_SHA256\00", align 1
@.str.397 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_CCM_SHA256\00", align 1
@.str.398 = private unnamed_addr constant [25 x i8] c"TLS_AES_128_CCM_8_SHA256\00", align 1
@.str.399 = private unnamed_addr constant [30 x i8] c"SSL_RSA_FIPS_WITH_DES_CBC_SHA\00", align 1
@.str.400 = private unnamed_addr constant [35 x i8] c"SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA\00", align 1
@.str.401 = private unnamed_addr constant [34 x i8] c"LEGACY-GOST2012-GOST8912-GOST8912\00", align 1
@.str.402 = private unnamed_addr constant [21 x i8] c"GOST2012-NULL-GOST12\00", align 1
@.str.403 = private unnamed_addr constant [35 x i8] c"GOST2012-KUZNYECHIK-KUZNYECHIKOMAC\00", align 1
@.str.404 = private unnamed_addr constant [25 x i8] c"GOST2012-MAGMA-MAGMAOMAC\00", align 1
@.str.405 = private unnamed_addr constant [23 x i8] c"GOST2012-GOST8912-IANA\00", align 1
@.str.406 = private unnamed_addr constant [15 x i8] c"No Compression\00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"Zlib Compression\00", align 1
@.str.408 = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.409 = private unnamed_addr constant [34 x i8] c"cipher_suite {0x%02X, 0x%02X} %s\0A\00", align 1
@.str.410 = private unnamed_addr constant [33 x i8] c"compression_method: %s (0x%02X)\0A\00", align 1
@.str.411 = private unnamed_addr constant [25 x i8] c"KeyExchangeAlgorithm=%s\0A\00", align 1
@.str.412 = private unnamed_addr constant [18 x i8] c"psk_identity_hint\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"rsa_modulus\00", align 1
@.str.414 = private unnamed_addr constant [13 x i8] c"rsa_exponent\00", align 1
@.str.415 = private unnamed_addr constant [5 x i8] c"dh_p\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"dh_g\00", align 1
@.str.417 = private unnamed_addr constant [6 x i8] c"dh_Ys\00", align 1
@.str.418 = private unnamed_addr constant [16 x i8] c"explicit_prime\0A\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"explicit_char2\0A\00", align 1
@.str.420 = private unnamed_addr constant [22 x i8] c"named_curve: %s (%d)\0A\00", align 1
@ssl_groups_tbl = internal constant [44 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.433, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.434, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.435, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.436, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.437, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.439, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.440, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.441, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.442, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.443, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.444, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.445, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.446, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.447, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.448, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.449, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.450, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.451, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.452, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.453, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.454, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.455, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.456, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.457, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.458, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.459, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.460, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.461, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.462, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.463, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.464, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.465, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.466, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.467, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.468, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.469, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.470, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.472, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 259, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.473, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.474, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65281, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.475, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65282, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.476, i32 0, i32 0) }], align 16
@.str.421 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.422 = private unnamed_addr constant [33 x i8] c"UNKNOWN CURVE PARAMETER TYPE %d\0A\00", align 1
@.str.423 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.424 = private unnamed_addr constant [4 x i8] c"DHE\00", align 1
@.str.425 = private unnamed_addr constant [6 x i8] c"ECDHE\00", align 1
@.str.426 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"RSAPSK\00", align 1
@.str.428 = private unnamed_addr constant [7 x i8] c"DHEPSK\00", align 1
@.str.429 = private unnamed_addr constant [9 x i8] c"ECDHEPSK\00", align 1
@.str.430 = private unnamed_addr constant [4 x i8] c"SRP\00", align 1
@.str.431 = private unnamed_addr constant [5 x i8] c"GOST\00", align 1
@.str.432 = private unnamed_addr constant [7 x i8] c"GOST18\00", align 1
@.str.433 = private unnamed_addr constant [18 x i8] c"sect163k1 (K-163)\00", align 1
@.str.434 = private unnamed_addr constant [10 x i8] c"sect163r1\00", align 1
@.str.435 = private unnamed_addr constant [18 x i8] c"sect163r2 (B-163)\00", align 1
@.str.436 = private unnamed_addr constant [10 x i8] c"sect193r1\00", align 1
@.str.437 = private unnamed_addr constant [10 x i8] c"sect193r2\00", align 1
@.str.438 = private unnamed_addr constant [18 x i8] c"sect233k1 (K-233)\00", align 1
@.str.439 = private unnamed_addr constant [18 x i8] c"sect233r1 (B-233)\00", align 1
@.str.440 = private unnamed_addr constant [10 x i8] c"sect239k1\00", align 1
@.str.441 = private unnamed_addr constant [18 x i8] c"sect283k1 (K-283)\00", align 1
@.str.442 = private unnamed_addr constant [18 x i8] c"sect283r1 (B-283)\00", align 1
@.str.443 = private unnamed_addr constant [18 x i8] c"sect409k1 (K-409)\00", align 1
@.str.444 = private unnamed_addr constant [18 x i8] c"sect409r1 (B-409)\00", align 1
@.str.445 = private unnamed_addr constant [18 x i8] c"sect571k1 (K-571)\00", align 1
@.str.446 = private unnamed_addr constant [18 x i8] c"sect571r1 (B-571)\00", align 1
@.str.447 = private unnamed_addr constant [10 x i8] c"secp160k1\00", align 1
@.str.448 = private unnamed_addr constant [10 x i8] c"secp160r1\00", align 1
@.str.449 = private unnamed_addr constant [10 x i8] c"secp160r2\00", align 1
@.str.450 = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.451 = private unnamed_addr constant [18 x i8] c"secp192r1 (P-192)\00", align 1
@.str.452 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.453 = private unnamed_addr constant [18 x i8] c"secp224r1 (P-224)\00", align 1
@.str.454 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.455 = private unnamed_addr constant [18 x i8] c"secp256r1 (P-256)\00", align 1
@.str.456 = private unnamed_addr constant [18 x i8] c"secp384r1 (P-384)\00", align 1
@.str.457 = private unnamed_addr constant [18 x i8] c"secp521r1 (P-521)\00", align 1
@.str.458 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.459 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.460 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.461 = private unnamed_addr constant [12 x i8] c"ecdh_x25519\00", align 1
@.str.462 = private unnamed_addr constant [10 x i8] c"ecdh_x448\00", align 1
@.str.463 = private unnamed_addr constant [7 x i8] c"GC256A\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"GC256B\00", align 1
@.str.465 = private unnamed_addr constant [7 x i8] c"GC256C\00", align 1
@.str.466 = private unnamed_addr constant [7 x i8] c"GC256D\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"GC512A\00", align 1
@.str.468 = private unnamed_addr constant [7 x i8] c"GC512B\00", align 1
@.str.469 = private unnamed_addr constant [7 x i8] c"GC512C\00", align 1
@.str.470 = private unnamed_addr constant [10 x i8] c"ffdhe2048\00", align 1
@.str.471 = private unnamed_addr constant [10 x i8] c"ffdhe3072\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"ffdhe4096\00", align 1
@.str.473 = private unnamed_addr constant [10 x i8] c"ffdhe6144\00", align 1
@.str.474 = private unnamed_addr constant [10 x i8] c"ffdhe8192\00", align 1
@.str.475 = private unnamed_addr constant [32 x i8] c"arbitrary_explicit_prime_curves\00", align 1
@.str.476 = private unnamed_addr constant [32 x i8] c"arbitrary_explicit_char2_curves\00", align 1
@.str.477 = private unnamed_addr constant [13 x i8] c"psk_identity\00", align 1
@.str.478 = private unnamed_addr constant [25 x i8] c"EncryptedPreMasterSecret\00", align 1
@.str.479 = private unnamed_addr constant [6 x i8] c"dh_Yc\00", align 1
@.str.480 = private unnamed_addr constant [8 x i8] c"ecdh_Yc\00", align 1
@.str.481 = private unnamed_addr constant [21 x i8] c"GostKeyTransportBlob\00", align 1
@.str.482 = private unnamed_addr constant [29 x i8] c"GOST-wrapped PreMasterSecret\00", align 1
@.str.483 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.484 = private unnamed_addr constant [29 x i8] c"certificate_list, length=%d\0A\00", align 1
@.str.485 = private unnamed_addr constant [21 x i8] c"ASN.1Cert, length=%d\00", align 1
@.str.486 = private unnamed_addr constant [27 x i8] c"<UNPARSEABLE CERTIFICATE>\0A\00", align 1
@.str.487 = private unnamed_addr constant [21 x i8] c"\0A------details-----\0A\00", align 1
@.str.488 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@.str.489 = private unnamed_addr constant [38 x i8] c"<TRAILING GARBAGE AFTER CERTIFICATE>\0A\00", align 1
@.str.490 = private unnamed_addr constant [34 x i8] c"Signature Algorithm: %s (0x%04x)\0A\00", align 1
@ssl_sigalg_tbl = internal constant [28 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 1027, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.492, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.493, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1539, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.494, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 771, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.495, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2055, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.496, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2056, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.497, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 515, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.498, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2052, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.499, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2053, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.500, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2054, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.501, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2057, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.502, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2058, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.503, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2059, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.504, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1025, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.505, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.506, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1537, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.507, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 769, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.508, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 513, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.509, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1026, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.510, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.511, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1538, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.512, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 770, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.513, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 514, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.514, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.515, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.516, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 61166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.515, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 61423, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.516, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 60909, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.517, i32 0, i32 0) }], align 16
@.str.491 = private unnamed_addr constant [10 x i8] c"Signature\00", align 1
@.str.492 = private unnamed_addr constant [23 x i8] c"ecdsa_secp256r1_sha256\00", align 1
@.str.493 = private unnamed_addr constant [23 x i8] c"ecdsa_secp384r1_sha384\00", align 1
@.str.494 = private unnamed_addr constant [23 x i8] c"ecdsa_secp521r1_sha512\00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"ecdsa_sha224\00", align 1
@.str.496 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.497 = private unnamed_addr constant [6 x i8] c"ed448\00", align 1
@.str.498 = private unnamed_addr constant [11 x i8] c"ecdsa_sha1\00", align 1
@.str.499 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha256\00", align 1
@.str.500 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha384\00", align 1
@.str.501 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha512\00", align 1
@.str.502 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha256\00", align 1
@.str.503 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha384\00", align 1
@.str.504 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha512\00", align 1
@.str.505 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha256\00", align 1
@.str.506 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha384\00", align 1
@.str.507 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha512\00", align 1
@.str.508 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha224\00", align 1
@.str.509 = private unnamed_addr constant [15 x i8] c"rsa_pkcs1_sha1\00", align 1
@.str.510 = private unnamed_addr constant [11 x i8] c"dsa_sha256\00", align 1
@.str.511 = private unnamed_addr constant [11 x i8] c"dsa_sha384\00", align 1
@.str.512 = private unnamed_addr constant [11 x i8] c"dsa_sha512\00", align 1
@.str.513 = private unnamed_addr constant [11 x i8] c"dsa_sha224\00", align 1
@.str.514 = private unnamed_addr constant [9 x i8] c"dsa_sha1\00", align 1
@.str.515 = private unnamed_addr constant [13 x i8] c"gost2012_256\00", align 1
@.str.516 = private unnamed_addr constant [13 x i8] c"gost2012_512\00", align 1
@.str.517 = private unnamed_addr constant [16 x i8] c"gost2001_gost94\00", align 1
@.str.518 = private unnamed_addr constant [16 x i8] c"request_context\00", align 1
@.str.519 = private unnamed_addr constant [28 x i8] c"certificate_types (len=%d)\0A\00", align 1
@ssl_ctype_tbl = internal constant [12 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.526, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.527, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.528, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.529, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.530, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.531, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.532, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.533, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.534, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.535, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.536, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.537, i32 0, i32 0) }], align 16
@.str.520 = private unnamed_addr constant [31 x i8] c"signature_algorithms (len=%d)\0A\00", align 1
@.str.521 = private unnamed_addr constant [13 x i8] c"%s (0x%04x)\0A\00", align 1
@.str.522 = private unnamed_addr constant [34 x i8] c"certificate_authorities (len=%d)\0A\00", align 1
@.str.523 = private unnamed_addr constant [29 x i8] c"DistinguishedName (len=%d): \00", align 1
@.str.524 = private unnamed_addr constant [18 x i8] c"<UNPARSEABLE DN>\0A\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"request_extensions\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"rsa_sign\00", align 1
@.str.527 = private unnamed_addr constant [9 x i8] c"dss_sign\00", align 1
@.str.528 = private unnamed_addr constant [13 x i8] c"rsa_fixed_dh\00", align 1
@.str.529 = private unnamed_addr constant [13 x i8] c"dss_fixed_dh\00", align 1
@.str.530 = private unnamed_addr constant [17 x i8] c"rsa_ephemeral_dh\00", align 1
@.str.531 = private unnamed_addr constant [17 x i8] c"dss_ephemeral_dh\00", align 1
@.str.532 = private unnamed_addr constant [13 x i8] c"fortezza_dms\00", align 1
@.str.533 = private unnamed_addr constant [11 x i8] c"ecdsa_sign\00", align 1
@.str.534 = private unnamed_addr constant [15 x i8] c"rsa_fixed_ecdh\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"ecdsa_fixed_ecdh\00", align 1
@.str.536 = private unnamed_addr constant [13 x i8] c"gost_sign256\00", align 1
@.str.537 = private unnamed_addr constant [13 x i8] c"gost_sign512\00", align 1
@.str.538 = private unnamed_addr constant [11 x i8] c"No Ticket\0A\00", align 1
@.str.539 = private unnamed_addr constant [25 x i8] c"ticket_lifetime_hint=%u\0A\00", align 1
@.str.540 = private unnamed_addr constant [19 x i8] c"ticket_age_add=%u\0A\00", align 1
@.str.541 = private unnamed_addr constant [13 x i8] c"ticket_nonce\00", align 1
@.str.542 = private unnamed_addr constant [7 x i8] c"ticket\00", align 1
@.str.543 = private unnamed_addr constant [15 x i8] c"No extensions\0A\00", align 1
@.str.544 = private unnamed_addr constant [25 x i8] c"extensions, length = %d\0A\00", align 1
@.str.545 = private unnamed_addr constant [38 x i8] c"extensions, extype = %d, extlen = %d\0A\00", align 1
@.str.546 = private unnamed_addr constant [34 x i8] c"extension_type=%s(%d), length=%d\0A\00", align 1
@ssl_exts_tbl = internal constant [32 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.555, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.556, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.557, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.558, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.559, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.560, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.561, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.562, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.563, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.564, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.565, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.566, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.567, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.568, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.569, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.570, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.571, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.572, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.573, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.574, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.575, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.576, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.577, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.578, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.579, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.580, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.581, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.582, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.583, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 65281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.584, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 13172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.585, i32 0, i32 0) }], align 16
@ssl_mfl_tbl = internal constant [5 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.586, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.587, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.588, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.589, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.590, i32 0, i32 0) }], align 16
@ssl_point_tbl = internal constant [3 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.591, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.592, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.593, i32 0, i32 0) }], align 16
@.str.547 = private unnamed_addr constant [19 x i8] c"client_verify_data\00", align 1
@.str.548 = private unnamed_addr constant [19 x i8] c"server_verify_data\00", align 1
@.str.549 = private unnamed_addr constant [9 x i8] c"<EMPTY>\0A\00", align 1
@.str.550 = private unnamed_addr constant [21 x i8] c"NamedGroup: %s (%d)\0A\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"key_exchange: \00", align 1
@.str.552 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@ssl_psk_kex_modes_tbl = internal constant [2 x %struct.ssl_trace_tbl] [%struct.ssl_trace_tbl { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.594, i32 0, i32 0) }, %struct.ssl_trace_tbl { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.595, i32 0, i32 0) }], align 16
@.str.553 = private unnamed_addr constant [19 x i8] c"max_early_data=%u\0A\00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.555 = private unnamed_addr constant [20 x i8] c"max_fragment_length\00", align 1
@.str.556 = private unnamed_addr constant [23 x i8] c"client_certificate_url\00", align 1
@.str.557 = private unnamed_addr constant [16 x i8] c"trusted_ca_keys\00", align 1
@.str.558 = private unnamed_addr constant [15 x i8] c"truncated_hmac\00", align 1
@.str.559 = private unnamed_addr constant [15 x i8] c"status_request\00", align 1
@.str.560 = private unnamed_addr constant [13 x i8] c"user_mapping\00", align 1
@.str.561 = private unnamed_addr constant [13 x i8] c"client_authz\00", align 1
@.str.562 = private unnamed_addr constant [13 x i8] c"server_authz\00", align 1
@.str.563 = private unnamed_addr constant [10 x i8] c"cert_type\00", align 1
@.str.564 = private unnamed_addr constant [17 x i8] c"supported_groups\00", align 1
@.str.565 = private unnamed_addr constant [17 x i8] c"ec_point_formats\00", align 1
@.str.566 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@.str.567 = private unnamed_addr constant [21 x i8] c"signature_algorithms\00", align 1
@.str.568 = private unnamed_addr constant [9 x i8] c"use_srtp\00", align 1
@.str.569 = private unnamed_addr constant [39 x i8] c"application_layer_protocol_negotiation\00", align 1
@.str.570 = private unnamed_addr constant [30 x i8] c"signed_certificate_timestamps\00", align 1
@.str.571 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.572 = private unnamed_addr constant [17 x i8] c"encrypt_then_mac\00", align 1
@.str.573 = private unnamed_addr constant [23 x i8] c"extended_master_secret\00", align 1
@.str.574 = private unnamed_addr constant [15 x i8] c"session_ticket\00", align 1
@.str.575 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"early_data\00", align 1
@.str.577 = private unnamed_addr constant [19 x i8] c"supported_versions\00", align 1
@.str.578 = private unnamed_addr constant [11 x i8] c"cookie_ext\00", align 1
@.str.579 = private unnamed_addr constant [23 x i8] c"psk_key_exchange_modes\00", align 1
@.str.580 = private unnamed_addr constant [24 x i8] c"certificate_authorities\00", align 1
@.str.581 = private unnamed_addr constant [20 x i8] c"post_handshake_auth\00", align 1
@.str.582 = private unnamed_addr constant [26 x i8] c"signature_algorithms_cert\00", align 1
@.str.583 = private unnamed_addr constant [10 x i8] c"key_share\00", align 1
@.str.584 = private unnamed_addr constant [12 x i8] c"renegotiate\00", align 1
@.str.585 = private unnamed_addr constant [15 x i8] c"next_proto_neg\00", align 1
@.str.586 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.587 = private unnamed_addr constant [39 x i8] c"max_fragment_length := 2^9 (512 bytes)\00", align 1
@.str.588 = private unnamed_addr constant [41 x i8] c"max_fragment_length := 2^10 (1024 bytes)\00", align 1
@.str.589 = private unnamed_addr constant [41 x i8] c"max_fragment_length := 2^11 (2048 bytes)\00", align 1
@.str.590 = private unnamed_addr constant [41 x i8] c"max_fragment_length := 2^12 (4096 bytes)\00", align 1
@.str.591 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.592 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_prime\00", align 1
@.str.593 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_char2\00", align 1
@.str.594 = private unnamed_addr constant [7 x i8] c"psk_ke\00", align 1
@.str.595 = private unnamed_addr constant [11 x i8] c"psk_dhe_ke\00", align 1
@.str.596 = private unnamed_addr constant [21 x i8] c"update_not_requested\00", align 1
@.str.597 = private unnamed_addr constant [17 x i8] c"update_requested\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @SSL_trace(i32 noundef %write_p, i32 noundef %version, i32 noundef %content_type, i8* noundef %buf, i64 noundef %msglen, %struct.ssl_st* noundef %ssl, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %arg to %struct.bio_st*
  switch i32 %content_type, label %sw.epilog [
    i32 256, label %sw.bb
    i32 257, label %sw.bb57
    i32 22, label %sw.bb64
    i32 20, label %sw.bb73
    i32 21, label %sw.bb83
  ]

sw.bb:                                            ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %4 = or i32 %and, 5
  %5 = zext i32 %4 to i64
  %cmp = icmp ugt i64 %5, %msglen
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %tobool2.not = icmp eq i32 %write_p, 0
  %cond3 = select i1 %tobool2.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef %cond3) #5
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %0, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* noundef %buf, i64 noundef %msglen) #6
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv4 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %arrayidx5 = getelementptr inbounds i8, i8* %buf, i64 2
  %7 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = zext i8 %7 to i32
  %or = or i32 %shl, %conv6
  %tobool7.not = icmp eq i32 %write_p, 0
  %cond8 = select i1 %tobool7.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef %cond8) #5
  %call10 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([8 x %struct.ssl_trace_tbl], [8 x %struct.ssl_trace_tbl]* @ssl_version_tbl, i64 0, i64 0), i64 noundef 8) #6
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call10, i32 noundef %or) #5
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc13 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc13, align 8, !tbaa !22
  %enc_flags14 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 12
  %10 = load i32, i32* %enc_flags14, align 8, !tbaa !24
  %and15 = and i32 %10, 8
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end43, label %if.then17

if.then17:                                        ; preds = %if.end
  %arrayidx18 = getelementptr inbounds i8, i8* %buf, i64 3
  %11 = load i8, i8* %arrayidx18, align 1, !tbaa !26
  %conv19 = zext i8 %11 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %arrayidx21 = getelementptr inbounds i8, i8* %buf, i64 4
  %12 = load i8, i8* %arrayidx21, align 1, !tbaa !26
  %conv22 = zext i8 %12 to i32
  %or23 = or i32 %shl20, %conv22
  %arrayidx24 = getelementptr inbounds i8, i8* %buf, i64 5
  %13 = load i8, i8* %arrayidx24, align 1, !tbaa !26
  %conv25 = zext i8 %13 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %arrayidx27 = getelementptr inbounds i8, i8* %buf, i64 6
  %14 = load i8, i8* %arrayidx27, align 1, !tbaa !26
  %conv28 = zext i8 %14 to i32
  %or29 = or i32 %shl26, %conv28
  %arrayidx30 = getelementptr inbounds i8, i8* %buf, i64 7
  %15 = load i8, i8* %arrayidx30, align 1, !tbaa !26
  %conv31 = zext i8 %15 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %arrayidx33 = getelementptr inbounds i8, i8* %buf, i64 8
  %16 = load i8, i8* %arrayidx33, align 1, !tbaa !26
  %conv34 = zext i8 %16 to i32
  %or35 = or i32 %shl32, %conv34
  %arrayidx36 = getelementptr inbounds i8, i8* %buf, i64 9
  %17 = load i8, i8* %arrayidx36, align 1, !tbaa !26
  %conv37 = zext i8 %17 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %arrayidx39 = getelementptr inbounds i8, i8* %buf, i64 10
  %18 = load i8, i8* %arrayidx39, align 1, !tbaa !26
  %conv40 = zext i8 %18 to i32
  %or41 = or i32 %shl38, %conv40
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %or23, i32 noundef %or29, i32 noundef %or35, i32 noundef %or41) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then17, %if.end
  %19 = load i8, i8* %buf, align 1, !tbaa !26
  %conv45 = zext i8 %19 to i32
  %call46 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %conv45, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([4 x %struct.ssl_trace_tbl], [4 x %struct.ssl_trace_tbl]* @ssl_content_tbl, i64 0, i64 0), i64 noundef 4) #6
  %sub = add i64 %msglen, -2
  %arrayidx49 = getelementptr inbounds i8, i8* %buf, i64 %sub
  %20 = load i8, i8* %arrayidx49, align 1, !tbaa !26
  %conv50 = zext i8 %20 to i32
  %shl51 = shl nuw nsw i32 %conv50, 8
  %sub52 = add i64 %msglen, -1
  %arrayidx53 = getelementptr inbounds i8, i8* %buf, i64 %sub52
  %21 = load i8, i8* %arrayidx53, align 1, !tbaa !26
  %conv54 = zext i8 %21 to i32
  %or55 = or i32 %shl51, %conv54
  %call56 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call46, i32 noundef %conv45, i32 noundef %or55) #5
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  %22 = load i8, i8* %buf, align 1, !tbaa !26
  %conv59 = zext i8 %22 to i32
  %call60 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %conv59, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([4 x %struct.ssl_trace_tbl], [4 x %struct.ssl_trace_tbl]* @ssl_content_tbl, i64 0, i64 0), i64 noundef 4) #6
  %call63 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call60, i32 noundef %conv59) #5
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 7
  %23 = load i32, i32* %server, align 8, !tbaa !27
  %tobool65.not = icmp eq i32 %23, 0
  %tobool66.not = icmp eq i32 %write_p, 0
  %lnot.ext = zext i1 %tobool66.not to i32
  %cond67 = select i1 %tobool65.not, i32 %lnot.ext, i32 %write_p
  %call68 = tail call fastcc i32 @ssl_print_handshake(%struct.bio_st* noundef %0, %struct.ssl_st* noundef %ssl, i32 noundef %cond67, i8* noundef %buf, i64 noundef %msglen) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %sw.epilog

if.then70:                                        ; preds = %sw.bb64
  %call71 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %cmp74 = icmp eq i64 %msglen, 1
  br i1 %cmp74, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb73
  %24 = load i8, i8* %buf, align 1, !tbaa !26
  %cmp78 = icmp eq i8 %24, 1
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %land.lhs.true
  %call81 = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true, %sw.bb73
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %0, i32 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %buf, i64 noundef %msglen) #6
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  %cmp84.not = icmp eq i64 %msglen, 2
  br i1 %cmp84.not, label %if.else88, label %if.then86

if.then86:                                        ; preds = %sw.bb83
  %call87 = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %sw.epilog

if.else88:                                        ; preds = %sw.bb83
  %25 = load i8, i8* %buf, align 1, !tbaa !26
  %conv90 = zext i8 %25 to i32
  %shl91 = shl nuw nsw i32 %conv90, 8
  %call92 = tail call i8* @SSL_alert_type_string_long(i32 noundef %shl91) #5
  %26 = load i8, i8* %buf, align 1, !tbaa !26
  %conv94 = zext i8 %26 to i32
  %arrayidx95 = getelementptr inbounds i8, i8* %buf, i64 1
  %27 = load i8, i8* %arrayidx95, align 1, !tbaa !26
  %conv96 = zext i8 %27 to i32
  %call97 = tail call i8* @SSL_alert_desc_string_long(i32 noundef %conv96) #5
  %28 = load i8, i8* %arrayidx95, align 1, !tbaa !26
  %conv99 = zext i8 %28 to i32
  %call100 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call92, i32 noundef %conv94, i8* noundef %call97, i32 noundef %conv99) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end43, %if.then86, %if.else88, %if.then80, %if.else, %sw.bb64, %if.then70, %entry, %sw.bb57
  %call102 = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %indent, i8* noundef %name, i8* nocapture noundef readonly %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef 80) #5
  %conv = trunc i64 %msglen to i32
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %name, i32 noundef %conv) #5
  %cmp13.not = icmp eq i64 %msglen, 0
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %msg, i64 %i.014
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv3 = zext i8 %0 to i32
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv3) #5
  %inc = add nuw i64 %i.014, 1
  %exitcond.not = icmp eq i64 %inc, %msglen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !28

for.end:                                          ; preds = %for.body, %entry
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #5
  ret void
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @do_ssl_trace_str(i32 noundef %val, %struct.ssl_trace_tbl* nocapture noundef readonly %tbl, i64 noundef %ntbl) unnamed_addr #3 {
entry:
  %cmp7.not = icmp eq i64 %ntbl, 0
  br i1 %cmp7.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.09 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %tbl.addr.08 = phi %struct.ssl_trace_tbl* [ %incdec.ptr, %for.inc ], [ %tbl, %entry ]
  %num = getelementptr inbounds %struct.ssl_trace_tbl, %struct.ssl_trace_tbl* %tbl.addr.08, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !30
  %cmp1 = icmp eq i32 %0, %val
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.ssl_trace_tbl, %struct.ssl_trace_tbl* %tbl.addr.08, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.09, 1
  %incdec.ptr = getelementptr inbounds %struct.ssl_trace_tbl, %struct.ssl_trace_tbl* %tbl.addr.08, i64 1
  %exitcond.not = icmp eq i64 %inc, %ntbl
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !33

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %entry ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_handshake(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef %ssl, i32 noundef %server, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %cmp = icmp ult i64 %msglen, 4
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %msg, align 1, !tbaa !26
  %arrayidx1 = getelementptr inbounds i8, i8* %msg, i64 1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx2 = getelementptr inbounds i8, i8* %msg, i64 2
  %2 = load i8, i8* %arrayidx2, align 1, !tbaa !26
  %conv3 = zext i8 %2 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr inbounds i8, i8* %msg, i64 3
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = zext i8 %3 to i32
  %or7 = or i32 %or, %conv6
  %conv8 = zext i32 %or7 to i64
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 4, i32 noundef 80) #5
  %conv9 = zext i8 %0 to i32
  %call10 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %conv9, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([20 x %struct.ssl_trace_tbl], [20 x %struct.ssl_trace_tbl]* @ssl_handshake_tbl, i64 0, i64 0), i64 noundef 20) #6
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call10, i32 noundef %or7) #5
  %add.ptr = getelementptr inbounds i8, i8* %msg, i64 4
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %sub = add i64 %msglen, -4
  store i64 %sub, i64* %msglen.addr, align 8, !tbaa !35
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end48, label %if.then13

if.then13:                                        ; preds = %if.end
  %cmp14 = icmp ult i64 %sub, 8
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then13
  %call18 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 4, i32 noundef 80) #5
  %7 = load i8, i8* %add.ptr, align 1, !tbaa !26
  %conv20 = zext i8 %7 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx22 = getelementptr inbounds i8, i8* %msg, i64 5
  %8 = load i8, i8* %arrayidx22, align 1, !tbaa !26
  %conv23 = zext i8 %8 to i32
  %or24 = or i32 %shl21, %conv23
  %arrayidx25 = getelementptr inbounds i8, i8* %msg, i64 6
  %9 = load i8, i8* %arrayidx25, align 1, !tbaa !26
  %conv26 = zext i8 %9 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %arrayidx28 = getelementptr inbounds i8, i8* %msg, i64 7
  %10 = load i8, i8* %arrayidx28, align 1, !tbaa !26
  %conv29 = zext i8 %10 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %shl27
  %arrayidx32 = getelementptr inbounds i8, i8* %msg, i64 8
  %11 = load i8, i8* %arrayidx32, align 1, !tbaa !26
  %conv33 = zext i8 %11 to i32
  %or34 = or i32 %or31, %conv33
  %arrayidx35 = getelementptr inbounds i8, i8* %msg, i64 9
  %12 = load i8, i8* %arrayidx35, align 1, !tbaa !26
  %conv36 = zext i8 %12 to i32
  %shl37 = shl nuw nsw i32 %conv36, 16
  %arrayidx38 = getelementptr inbounds i8, i8* %msg, i64 10
  %13 = load i8, i8* %arrayidx38, align 1, !tbaa !26
  %conv39 = zext i8 %13 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %shl40, %shl37
  %arrayidx42 = getelementptr inbounds i8, i8* %msg, i64 11
  %14 = load i8, i8* %arrayidx42, align 1, !tbaa !26
  %conv43 = zext i8 %14 to i32
  %or44 = or i32 %or41, %conv43
  %call45 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), i32 noundef %or24, i32 noundef %or34, i32 noundef %or44) #5
  %add.ptr46 = getelementptr inbounds i8, i8* %msg, i64 12
  store i8* %add.ptr46, i8** %msg.addr, align 8, !tbaa !34
  %sub47 = add i64 %msglen, -12
  store i64 %sub47, i64* %msglen.addr, align 8, !tbaa !35
  br label %if.end48

if.end48:                                         ; preds = %if.end, %if.end17
  %15 = phi i8* [ %add.ptr46, %if.end17 ], [ %add.ptr, %if.end ]
  %16 = phi i64 [ %sub47, %if.end17 ], [ %sub, %if.end ]
  %cmp49 = icmp ult i64 %16, %conv8
  br i1 %cmp49, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.end48
  switch i8 %0, label %sw.default [
    i8 1, label %sw.bb
    i8 3, label %sw.bb58
    i8 2, label %sw.bb64
    i8 12, label %sw.bb70
    i8 16, label %sw.bb76
    i8 11, label %sw.bb82
    i8 15, label %sw.bb88
    i8 13, label %sw.bb94
    i8 20, label %sw.bb100
    i8 14, label %sw.bb102
    i8 4, label %sw.bb108
    i8 8, label %sw.bb114
    i8 24, label %sw.bb120
  ]

sw.bb:                                            ; preds = %if.end52
  %call54 = tail call fastcc i32 @ssl_print_client_hello(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %sw.epilog

sw.bb58:                                          ; preds = %if.end52
  %call60 = tail call fastcc i32 @dtls_print_hello_vfyrequest(%struct.bio_st* noundef %bio, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %sw.epilog

sw.bb64:                                          ; preds = %if.end52
  %call66 = tail call fastcc i32 @ssl_print_server_hello(%struct.bio_st* noundef %bio, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %sw.epilog

sw.bb70:                                          ; preds = %if.end52
  %call72 = tail call fastcc i32 @ssl_print_server_keyex(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup, label %sw.epilog

sw.bb76:                                          ; preds = %if.end52
  %call78 = tail call fastcc i32 @ssl_print_client_keyex(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %sw.epilog

sw.bb82:                                          ; preds = %if.end52
  %call84 = tail call fastcc i32 @ssl_print_certificates(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i32 noundef %server, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup, label %sw.epilog

sw.bb88:                                          ; preds = %if.end52
  %call90 = call fastcc i32 @ssl_print_signature(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %cleanup, label %sw.epilog

sw.bb94:                                          ; preds = %if.end52
  %call96 = tail call fastcc i32 @ssl_print_cert_request(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %sw.epilog

sw.bb100:                                         ; preds = %if.end52
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %15, i64 noundef %16) #6
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end52
  %cmp103.not = icmp eq i64 %16, 0
  br i1 %cmp103.not, label %sw.epilog, label %if.then105

if.then105:                                       ; preds = %sw.bb102
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %15, i64 noundef %16) #6
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end52
  %call110 = tail call fastcc i32 @ssl_print_ticket(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef nonnull %ssl, i8* noundef nonnull %15, i64 noundef %16) #6
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup, label %sw.epilog

sw.bb114:                                         ; preds = %if.end52
  %call116 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 1, i8 noundef zeroext 8, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %cleanup, label %sw.epilog

sw.bb120:                                         ; preds = %if.end52
  %cmp121.not = icmp eq i64 %16, 1
  br i1 %cmp121.not, label %if.end125, label %if.then123

if.then123:                                       ; preds = %sw.bb120
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %15, i64 noundef %16) #6
  br label %cleanup

if.end125:                                        ; preds = %sw.bb120
  %call127 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef nonnull %15, i64 noundef 1, i64 noundef 1, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([2 x %struct.ssl_trace_tbl], [2 x %struct.ssl_trace_tbl]* @ssl_key_update_tbl, i64 0, i64 0), i64 noundef 2) #6
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %if.end52
  %call132 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call133 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0)) #5
  %conv134 = trunc i64 %16 to i32
  %call136 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %bio, i8* noundef nonnull %15, i32 noundef %conv134, i32 noundef 8) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end125, %sw.bb114, %sw.bb108, %sw.bb102, %if.then105, %sw.bb94, %sw.bb88, %sw.bb82, %sw.bb76, %sw.bb70, %sw.bb64, %sw.bb58, %sw.bb, %sw.default, %sw.bb100
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %sw.bb114, %sw.bb108, %sw.bb94, %sw.bb88, %sw.bb82, %sw.bb76, %sw.bb70, %sw.bb64, %sw.bb58, %sw.bb, %if.end48, %if.then13, %entry, %sw.epilog, %if.then123
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %if.then123 ], [ 0, %entry ], [ 0, %if.then13 ], [ 0, %if.end48 ], [ 0, %sw.bb ], [ 0, %sw.bb58 ], [ 0, %sw.bb64 ], [ 0, %sw.bb70 ], [ 0, %sw.bb76 ], [ 0, %sw.bb82 ], [ 0, %sw.bb88 ], [ 0, %sw.bb94 ], [ 0, %sw.bb108 ], [ 0, %sw.bb114 ], [ 0, %if.end125 ]
  ret i32 %retval.0
}

declare i8* @SSL_alert_type_string_long(i32 noundef) local_unnamed_addr #2

declare i8* @SSL_alert_desc_string_long(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_client_hello(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %call = call fastcc i32 @ssl_print_version(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr, i32* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ssl_print_random(%struct.bio_st* noundef %bio, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool12.not = icmp eq i32 %call11, 0
  %3 = load i64, i64* %msglen.addr, align 8
  %cmp = icmp ult i64 %3, 2
  %or.cond1 = select i1 %tobool12.not, i1 true, i1 %cmp
  br i1 %or.cond1, label %cleanup, label %if.end17

if.end15:                                         ; preds = %if.end8
  %.old = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %cmp.old = icmp ult i64 %.old, 2
  br i1 %cmp.old, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end15
  %4 = phi i64 [ %3, %if.then10 ], [ %.old, %if.end15 ]
  %5 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %6 = load i8, i8* %5, align 1, !tbaa !26
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx18 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %arrayidx18, align 1, !tbaa !26
  %conv19 = zext i8 %7 to i32
  %or = or i32 %shl, %conv19
  %conv20 = zext i32 %or to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 2
  %sub = add i64 %4, -2
  %call21 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i32 noundef %or) #5
  %cmp24 = icmp uge i64 %sub, %conv20
  %and26 = and i64 %conv20, 1
  %tobool27.not = icmp eq i64 %and26, 0
  %or.cond = and i1 %cmp24, %tobool27.not
  br i1 %or.cond, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end17
  %cmp30.not4 = icmp eq i32 %or, 0
  br i1 %cmp30.not4, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %len.07 = phi i64 [ %sub47, %while.body ], [ %conv20, %while.cond.preheader ]
  %add.ptr4526 = phi i8* [ %add.ptr45, %while.body ], [ %add.ptr, %while.cond.preheader ]
  %sub4635 = phi i64 [ %sub46, %while.body ], [ %sub, %while.cond.preheader ]
  %8 = load i8, i8* %add.ptr4526, align 1, !tbaa !26
  %conv33 = zext i8 %8 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr4526, i64 1
  %9 = load i8, i8* %arrayidx35, align 1, !tbaa !26
  %conv36 = zext i8 %9 to i32
  %or37 = or i32 %shl34, %conv36
  %call38 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %10 = load i8, i8* %add.ptr4526, align 1, !tbaa !26
  %conv40 = zext i8 %10 to i32
  %11 = load i8, i8* %arrayidx35, align 1, !tbaa !26
  %conv42 = zext i8 %11 to i32
  %call43 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or37, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([342 x %struct.ssl_trace_tbl], [342 x %struct.ssl_trace_tbl]* @ssl_ciphers_tbl, i64 0, i64 0), i64 noundef 342) #6
  %call44 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv40, i32 noundef %conv42, i8* noundef %call43) #5
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr4526, i64 2
  %sub46 = add i64 %sub4635, -2
  %sub47 = add i64 %len.07, -2
  %cmp30.not = icmp eq i64 %sub47, 0
  br i1 %cmp30.not, label %while.end, label %while.body, !llvm.loop !36

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %sub463.lcssa = phi i64 [ %sub, %while.cond.preheader ], [ %sub46, %while.body ]
  %12 = phi i8* [ %add.ptr, %while.cond.preheader ], [ %add.ptr45, %while.body ]
  %cmp48 = icmp eq i64 %sub463.lcssa, 0
  br i1 %cmp48, label %cleanup, label %if.end51

if.end51:                                         ; preds = %while.end
  %13 = load i8, i8* %12, align 1, !tbaa !26
  %conv53 = zext i8 %13 to i64
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %incdec.ptr, i8** %msg.addr, align 8, !tbaa !34
  %dec = add i64 %sub463.lcssa, -1
  store i64 %dec, i64* %msglen.addr, align 8, !tbaa !35
  %cmp54 = icmp ult i64 %dec, %conv53
  br i1 %cmp54, label %cleanup, label %if.end57

if.end57:                                         ; preds = %if.end51
  %call58 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %conv59 = zext i8 %13 to i32
  %call60 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv59) #5
  %cmp62.not13 = icmp eq i8 %13, 0
  br i1 %cmp62.not13, label %while.end76, label %while.body64

while.body64:                                     ; preds = %if.end57, %while.body64
  %len.116 = phi i64 [ %dec75, %while.body64 ], [ %conv53, %if.end57 ]
  %incdec.ptr731015 = phi i8* [ %incdec.ptr73, %while.body64 ], [ %incdec.ptr, %if.end57 ]
  %call66 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %14 = load i8, i8* %incdec.ptr731015, align 1, !tbaa !26
  %conv68 = zext i8 %14 to i32
  %call69 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %conv68, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([2 x %struct.ssl_trace_tbl], [2 x %struct.ssl_trace_tbl]* @ssl_comp_tbl, i64 0, i64 0), i64 noundef 2) #6
  %call72 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* noundef %call69, i32 noundef %conv68) #5
  %incdec.ptr73 = getelementptr inbounds i8, i8* %incdec.ptr731015, i64 1
  %dec75 = add nsw i64 %len.116, -1
  %cmp62.not = icmp eq i64 %dec75, 0
  br i1 %cmp62.not, label %while.end76.loopexit, label %while.body64, !llvm.loop !37

while.end76.loopexit:                             ; preds = %while.body64
  %15 = sub i64 %dec, %conv53
  br label %while.end76

while.end76:                                      ; preds = %while.end76.loopexit, %if.end57
  %dec7412.lcssa = phi i64 [ %dec, %if.end57 ], [ %15, %while.end76.loopexit ]
  %incdec.ptr7310.lcssa = phi i8* [ %incdec.ptr, %if.end57 ], [ %incdec.ptr73, %while.end76.loopexit ]
  store i8* %incdec.ptr7310.lcssa, i8** %msg.addr, align 8, !tbaa !34
  store i64 %dec7412.lcssa, i64* %msglen.addr, align 8, !tbaa !35
  %call77 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 0, i8 noundef zeroext 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool78.not = icmp ne i32 %call77, 0
  %. = zext i1 %tobool78.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end76, %if.end51, %while.end, %if.end17, %if.end15, %if.then10, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.then10 ], [ 0, %if.end15 ], [ 0, %if.end17 ], [ 0, %while.end ], [ 0, %if.end51 ], [ %., %while.end76 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls_print_hello_vfyrequest(%struct.bio_st* noundef %bio, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %call = call fastcc i32 @ssl_print_version(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.408, i64 0, i64 0), i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr, i32* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_server_hello(%struct.bio_st* noundef %bio, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %vers = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %0 = bitcast i32* %vers to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = call fastcc i32 @ssl_print_version(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.408, i64 0, i64 0), i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr, i32* noundef nonnull %vers) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ssl_print_random(%struct.bio_st* noundef %bio, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load i32, i32* %vers, align 4, !tbaa !38
  %cmp.not = icmp eq i32 %1, 772
  br i1 %cmp.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call5 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool6.not = icmp eq i32 %call5, 0
  %2 = load i64, i64* %msglen.addr, align 8
  %cmp9 = icmp ult i64 %2, 2
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %cleanup, label %if.end11

if.end8:                                          ; preds = %if.end4
  %.old = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %cmp9.old = icmp ult i64 %.old, 2
  br i1 %cmp9.old, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end8
  %3 = phi i64 [ %2, %land.lhs.true ], [ %.old, %if.end8 ]
  %4 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %5 = load i8, i8* %4, align 1, !tbaa !26
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx12 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %arrayidx12, align 1, !tbaa !26
  %conv13 = zext i8 %6 to i32
  %or = or i32 %shl, %conv13
  %call14 = call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %7 = load i8, i8* %4, align 1, !tbaa !26
  %conv16 = zext i8 %7 to i32
  %8 = load i8, i8* %arrayidx12, align 1, !tbaa !26
  %conv18 = zext i8 %8 to i32
  %call19 = call fastcc i8* @do_ssl_trace_str(i32 noundef %or, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([342 x %struct.ssl_trace_tbl], [342 x %struct.ssl_trace_tbl]* @ssl_ciphers_tbl, i64 0, i64 0), i64 noundef 342) #6
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.409, i64 0, i64 0), i32 noundef %conv16, i32 noundef %conv18, i8* noundef %call19) #5
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %sub = add i64 %3, -2
  store i64 %sub, i64* %msglen.addr, align 8, !tbaa !35
  %9 = load i32, i32* %vers, align 4, !tbaa !38
  %cmp21.not = icmp eq i32 %9, 772
  br i1 %cmp21.not, label %if.end35, label %if.then23

if.then23:                                        ; preds = %if.end11
  %cmp24 = icmp eq i64 %sub, 0
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then23
  %call28 = call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %10 = load i8, i8* %add.ptr, align 1, !tbaa !26
  %conv30 = zext i8 %10 to i32
  %call31 = call fastcc i8* @do_ssl_trace_str(i32 noundef %conv30, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([2 x %struct.ssl_trace_tbl], [2 x %struct.ssl_trace_tbl]* @ssl_comp_tbl, i64 0, i64 0), i64 noundef 2) #6
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.410, i64 0, i64 0), i8* noundef %call31, i32 noundef %conv30) #5
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 3
  store i8* %incdec.ptr, i8** %msg.addr, align 8, !tbaa !34
  %dec = add i64 %3, -3
  store i64 %dec, i64* %msglen.addr, align 8, !tbaa !35
  br label %if.end35

if.end35:                                         ; preds = %if.end27, %if.end11
  %call36 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 1, i8 noundef zeroext 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool37.not = icmp ne i32 %call36, 0
  %. = zext i1 %tobool37.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then23, %if.end8, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 0, %if.end8 ], [ 0, %if.then23 ], [ %., %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_server_keyex(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %algname = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %0 = bitcast i8** %algname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = call fastcc i32 @ssl_get_keyex(i8** noundef nonnull %algname, %struct.ssl_st* noundef %ssl) #6
  %call1 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %1 = load i8*, i8** %algname, align 8, !tbaa !34
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.411, i64 0, i64 0), i8* noundef %1) #5
  %and = and i32 %call, 456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.412, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup83, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 256, label %sw.bb17
    i32 4, label %sw.bb33
    i32 128, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end6
  %call8 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup83, label %if.end11

if.end11:                                         ; preds = %sw.bb
  %call13 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.414, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup83, label %sw.epilog

sw.bb17:                                          ; preds = %if.end6, %if.end6
  %call19 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.415, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup83, label %if.end22

if.end22:                                         ; preds = %sw.bb17
  %call24 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.416, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup83, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call29 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.417, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup83, label %sw.epilog

sw.bb33:                                          ; preds = %if.end6, %if.end6
  %2 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup83, label %if.end35

if.end35:                                         ; preds = %sw.bb33
  %call37 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %3 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %4 = load i8, i8* %3, align 1, !tbaa !26
  switch i8 %4, label %if.else69 [
    i8 1, label %sw.epilog.sink.split
    i8 2, label %if.then46
    i8 3, label %if.then53
  ]

if.then46:                                        ; preds = %if.end35
  br label %sw.epilog.sink.split

if.then53:                                        ; preds = %if.end35
  %cmp54 = icmp ult i64 %2, 3
  br i1 %cmp54, label %cleanup83, label %if.end57

if.end57:                                         ; preds = %if.then53
  %arrayidx58 = getelementptr inbounds i8, i8* %3, i64 1
  %5 = load i8, i8* %arrayidx58, align 1, !tbaa !26
  %conv59 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv59, 8
  %arrayidx60 = getelementptr inbounds i8, i8* %3, i64 2
  %6 = load i8, i8* %arrayidx60, align 1, !tbaa !26
  %conv61 = zext i8 %6 to i32
  %or = or i32 %shl, %conv61
  %call62 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([44 x %struct.ssl_trace_tbl], [44 x %struct.ssl_trace_tbl]* @ssl_groups_tbl, i64 0, i64 0), i64 noundef 44) #6
  %call63 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.420, i64 0, i64 0), i8* noundef %call62, i32 noundef %or) #5
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 3
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %sub = add i64 %2, -3
  store i64 %sub, i64* %msglen.addr, align 8, !tbaa !35
  %call65 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.421, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool66.not.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not.not, label %cleanup83, label %sw.epilog

if.else69:                                        ; preds = %if.end35
  %conv = zext i8 %4 to i32
  %call72 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.422, i64 0, i64 0), i32 noundef %conv) #5
  br label %cleanup83

sw.epilog.sink.split:                             ; preds = %if.end35, %if.then46
  %.sink = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.419, i64 0, i64 0), %if.then46 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.418, i64 0, i64 0), %if.end35 ]
  %call41 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end57, %if.end27, %if.end11, %if.end6
  br i1 %tobool.not, label %if.then79, label %if.end81

if.then79:                                        ; preds = %sw.epilog
  %7 = call fastcc i32 @ssl_print_signature(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef %ssl, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %sw.epilog
  %8 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %tobool82.not = icmp eq i64 %8, 0
  %lnot.ext = zext i1 %tobool82.not to i32
  br label %cleanup83

cleanup83:                                        ; preds = %if.then53, %sw.bb33, %if.end27, %if.end22, %sw.bb17, %if.end11, %sw.bb, %if.then, %if.end57, %if.end81, %if.else69
  %retval.1 = phi i32 [ %lnot.ext, %if.end81 ], [ 0, %if.end57 ], [ 0, %if.else69 ], [ 0, %if.then ], [ 0, %sw.bb ], [ 0, %if.end11 ], [ 0, %sw.bb17 ], [ 0, %if.end22 ], [ 0, %if.end27 ], [ 0, %sw.bb33 ], [ 0, %if.then53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_client_keyex(%struct.bio_st* noundef %bio, %struct.ssl_st* noundef %ssl, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %algname = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %0 = bitcast i8** %algname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = call fastcc i32 @ssl_get_keyex(i8** noundef nonnull %algname, %struct.ssl_st* noundef %ssl) #6
  %call1 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %1 = load i8*, i8** %algname, align 8, !tbaa !34
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.411, i64 0, i64 0), i8* noundef %1) #5
  %and = and i32 %call, 456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.477, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 64, label %sw.bb
    i32 2, label %sw.bb18
    i32 256, label %sw.bb18
    i32 4, label %sw.bb24
    i32 128, label %sw.bb24
    i32 16, label %sw.bb30
    i32 512, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end6, %if.end6
  %call7 = tail call i32 @SSL_version(%struct.ssl_st* noundef %ssl) #5
  %shr.mask = and i32 %call7, -256
  %cmp = icmp eq i32 %shr.mask, 768
  br i1 %cmp, label %cond.true, label %if.else

cond.true:                                        ; preds = %sw.bb
  %call8 = tail call i32 @SSL_version(%struct.ssl_st* noundef %ssl) #5
  %phi.cmp = icmp eq i32 %call8, 768
  br i1 %phi.cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %cond.true
  %2 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %3 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.478, i64 0, i64 0), i8* noundef %2, i64 noundef %3) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb, %cond.true
  %call13 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.478, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %sw.epilog

sw.bb18:                                          ; preds = %if.end6, %if.end6
  %call20 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.479, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %sw.epilog

sw.bb24:                                          ; preds = %if.end6, %if.end6
  %call26 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.480, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %sw.epilog

sw.bb30:                                          ; preds = %if.end6
  %4 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %5 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.481, i64 0, i64 0), i8* noundef %4, i64 noundef %5) #6
  store i64 0, i64* %msglen.addr, align 8, !tbaa !35
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end6
  %6 = load i8*, i8** %msg.addr, align 8, !tbaa !34
  %7 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.482, i64 0, i64 0), i8* noundef %6, i64 noundef %7) #6
  store i64 0, i64* %msglen.addr, align 8, !tbaa !35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb18, %if.then10, %if.else, %if.end6, %sw.bb32, %sw.bb30
  %8 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %tobool34.not = icmp eq i64 %8, 0
  %lnot.ext = zext i1 %tobool34.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %sw.bb18, %if.else, %if.then, %sw.epilog
  %retval.0 = phi i32 [ %lnot.ext, %sw.epilog ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb18 ], [ 0, %sw.bb24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_certificates(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i32 noundef %server, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %clen = alloca i64, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %0 = bitcast i64* %clen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !39
  %cmp = icmp slt i32 %4, 772
  %cmp5.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.483, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool7.not = icmp eq i32 %call, 0
  %5 = load i64, i64* %msglen.addr, align 8
  %cmp8 = icmp ult i64 %5, 3
  %or.cond2 = select i1 %tobool7.not, i1 true, i1 %cmp8
  br i1 %or.cond2, label %cleanup, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  %.pre = load i8*, i8** %msg.addr, align 8, !tbaa !34
  br label %if.end10

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp8.old = icmp ult i64 %msglen, 3
  br i1 %cmp8.old, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.end
  %6 = phi i64 [ %5, %land.lhs.true6.if.end10_crit_edge ], [ %msglen, %if.end ]
  %7 = phi i8* [ %.pre, %land.lhs.true6.if.end10_crit_edge ], [ %msg, %if.end ]
  %8 = load i8, i8* %7, align 1, !tbaa !26
  %conv = zext i8 %8 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %arrayidx11, align 1, !tbaa !26
  %conv12 = zext i8 %9 to i64
  %shl13 = shl nuw nsw i64 %conv12, 8
  %or = or i64 %shl13, %shl
  %arrayidx14 = getelementptr inbounds i8, i8* %7, i64 2
  %10 = load i8, i8* %arrayidx14, align 1, !tbaa !26
  %conv15 = zext i8 %10 to i64
  %or16 = or i64 %or, %conv15
  store i64 %or16, i64* %clen, align 8, !tbaa !35
  %add = add nuw nsw i64 %or16, 3
  %cmp18.not = icmp eq i64 %6, %add
  br i1 %cmp18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end10
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 3
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %call22 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %conv23 = trunc i64 %or16 to i32
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.484, i64 0, i64 0), i32 noundef %conv23) #5
  %cmp25.not3 = icmp eq i64 %or16, 0
  br i1 %cmp25.not3, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end21, %if.end52
  %call28 = call fastcc i32 @ssl_print_certificate(%struct.bio_st* noundef %bio, i8** noundef nonnull %msg.addr, i64* noundef nonnull %clen) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %while.body
  %11 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc33 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 25
  %12 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc33, align 8, !tbaa !22
  %enc_flags34 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %12, i64 0, i32 12
  %13 = load i32, i32* %enc_flags34, align 8, !tbaa !24
  %and35 = and i32 %13, 8
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end52

land.lhs.true37:                                  ; preds = %if.end31
  %version39 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 0
  %14 = load i32, i32* %version39, align 8, !tbaa !39
  %cmp40 = icmp slt i32 %14, 772
  %cmp45.not = icmp eq i32 %14, 65536
  %or.cond1 = or i1 %cmp40, %cmp45.not
  br i1 %or.cond1, label %if.end52, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true37
  %call49 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef %server, i8 noundef zeroext 11, i8** noundef nonnull %msg.addr, i64* noundef nonnull %clen) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %if.end52

if.end52:                                         ; preds = %land.lhs.true47, %land.lhs.true37, %if.end31
  %15 = load i64, i64* %clen, align 8, !tbaa !35
  %cmp25.not = icmp eq i64 %15, 0
  br i1 %cmp25.not, label %cleanup, label %while.body, !llvm.loop !40

cleanup:                                          ; preds = %while.body, %land.lhs.true47, %if.end52, %if.end21, %if.end10, %if.end, %land.lhs.true6
  %retval.0 = phi i32 [ 0, %land.lhs.true6 ], [ 0, %if.end ], [ 0, %if.end10 ], [ 1, %if.end21 ], [ 0, %while.body ], [ 0, %land.lhs.true47 ], [ 1, %if.end52 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_signature(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i8** nocapture noundef %pmsg, i64* nocapture noundef %pmsglen) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %5 = load i8, i8* %4, align 1, !tbaa !26
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %arrayidx2, align 1, !tbaa !26
  %conv3 = zext i8 %6 to i32
  %or = or i32 %shl, %conv3
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call4 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([28 x %struct.ssl_trace_tbl], [28 x %struct.ssl_trace_tbl]* @ssl_sigalg_tbl, i64 0, i64 0), i64 noundef 28) #6
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.490, i64 0, i64 0), i8* noundef %call4, i32 noundef %or) #5
  %7 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr, i8** %pmsg, align 8, !tbaa !34
  %8 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %sub = add i64 %8, -2
  store i64 %sub, i64* %pmsglen, align 8, !tbaa !35
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  %call7 = tail call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.491, i64 0, i64 0), i64 noundef 2, i8** noundef %pmsg, i64* noundef nonnull %pmsglen) #6
  br label %return

return:                                           ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_cert_request(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !34
  store i64 %msglen, i64* %msglen.addr, align 8, !tbaa !35
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !39
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.518, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cleanup157, label %if.end

if.end:                                           ; preds = %if.then
  %call8 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 1, i8 noundef zeroext 13, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool9.not = icmp ne i32 %call8, 0
  br label %cleanup157

if.else:                                          ; preds = %land.lhs.true, %entry
  %cmp12 = icmp eq i64 %msglen, 0
  br i1 %cmp12, label %cleanup157, label %if.end14

if.end14:                                         ; preds = %if.else
  %4 = load i8, i8* %msg, align 1, !tbaa !26
  %conv = zext i8 %4 to i64
  %add.neg = xor i64 %conv, -1
  %cmp15.not = icmp ult i64 %conv, %msglen
  br i1 %cmp15.not, label %if.end18, label %cleanup157

if.end18:                                         ; preds = %if.end14
  %incdec.ptr = getelementptr inbounds i8, i8* %msg, i64 1
  %call19 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %conv20 = zext i8 %4 to i32
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.519, i64 0, i64 0), i32 noundef %conv20) #5
  %call23 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef nonnull %incdec.ptr, i64 noundef %conv, i64 noundef 1, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([12 x %struct.ssl_trace_tbl], [12 x %struct.ssl_trace_tbl]* @ssl_ctype_tbl, i64 0, i64 0), i64 noundef 12) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup157, label %if.end26

if.end26:                                         ; preds = %if.end18
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr, i64 %conv
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %sub = add i64 %add.neg, %msglen
  store i64 %sub, i64* %msglen.addr, align 8, !tbaa !35
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc30 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc30, align 8, !tbaa !22
  %enc_flags31 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags31, align 8, !tbaa !24
  %and32 = and i32 %7, 2
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end72, label %if.then34

if.then34:                                        ; preds = %if.end26
  %cmp35 = icmp ult i64 %sub, 2
  br i1 %cmp35, label %cleanup157, label %if.end38

if.end38:                                         ; preds = %if.then34
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !26
  %conv40 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv40, 8
  %arrayidx41 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %9 = load i8, i8* %arrayidx41, align 1, !tbaa !26
  %conv42 = zext i8 %9 to i32
  %or = or i32 %shl, %conv42
  %conv43 = zext i32 %or to i64
  %add44 = add nuw nsw i64 %conv43, 2
  %cmp45 = icmp uge i64 %sub, %add44
  %and47 = and i64 %conv43, 1
  %tobool48.not = icmp eq i64 %and47, 0
  %or.cond1 = and i1 %cmp45, %tobool48.not
  br i1 %or.cond1, label %if.end50, label %cleanup157

if.end50:                                         ; preds = %if.end38
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  %sub53 = sub i64 %sub, %add44
  store i64 %sub53, i64* %msglen.addr, align 8, !tbaa !35
  %call54 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call56 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.520, i64 0, i64 0), i32 noundef %or) #5
  %cmp57.not6 = icmp eq i32 %or, 0
  br i1 %cmp57.not6, label %if.end72.loopexit, label %while.body

while.body:                                       ; preds = %if.end50, %while.body
  %xlen.08 = phi i64 [ %sub69, %while.body ], [ %conv43, %if.end50 ]
  %add.ptr7057 = phi i8* [ %add.ptr70, %while.body ], [ %add.ptr51, %if.end50 ]
  %call60 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %10 = load i8, i8* %add.ptr7057, align 1, !tbaa !26
  %conv62 = zext i8 %10 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %arrayidx64 = getelementptr inbounds i8, i8* %add.ptr7057, i64 1
  %11 = load i8, i8* %arrayidx64, align 1, !tbaa !26
  %conv65 = zext i8 %11 to i32
  %or66 = or i32 %shl63, %conv65
  %call67 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or66, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([28 x %struct.ssl_trace_tbl], [28 x %struct.ssl_trace_tbl]* @ssl_sigalg_tbl, i64 0, i64 0), i64 noundef 28) #6
  %call68 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.521, i64 0, i64 0), i8* noundef %call67, i32 noundef %or66) #5
  %sub69 = add i64 %xlen.08, -2
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr7057, i64 2
  %cmp57.not = icmp eq i64 %sub69, 0
  br i1 %cmp57.not, label %if.end72.loopexit, label %while.body, !llvm.loop !41

if.end72.loopexit:                                ; preds = %while.body, %if.end50
  %add.ptr705.lcssa = phi i8* [ %add.ptr51, %if.end50 ], [ %add.ptr70, %while.body ]
  store i8* %add.ptr705.lcssa, i8** %msg.addr, align 8, !tbaa !34
  br label %if.end72

if.end72:                                         ; preds = %if.end72.loopexit, %if.end26
  %12 = phi i8* [ %add.ptr705.lcssa, %if.end72.loopexit ], [ %add.ptr, %if.end26 ]
  %13 = phi i64 [ %sub53, %if.end72.loopexit ], [ %sub, %if.end26 ]
  %cmp73 = icmp ult i64 %13, 2
  br i1 %cmp73, label %cleanup157, label %if.end76

if.end76:                                         ; preds = %if.end72
  %14 = load i8, i8* %12, align 1, !tbaa !26
  %conv78 = zext i8 %14 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %arrayidx80 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i8, i8* %arrayidx80, align 1, !tbaa !26
  %conv81 = zext i8 %15 to i32
  %or82 = or i32 %shl79, %conv81
  %conv83 = zext i32 %or82 to i64
  %call84 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %add85 = add nuw nsw i64 %conv83, 2
  %cmp86 = icmp ult i64 %13, %add85
  br i1 %cmp86, label %cleanup157, label %if.end89

if.end89:                                         ; preds = %if.end76
  %add.ptr90 = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr90, i8** %msg.addr, align 8, !tbaa !34
  %sub92 = sub i64 %13, %add85
  store i64 %sub92, i64* %msglen.addr, align 8, !tbaa !35
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.522, i64 0, i64 0), i32 noundef %or82) #5
  %cmp96.not12 = icmp eq i32 %or82, 0
  br i1 %cmp96.not12, label %while.end133, label %while.body98.lr.ph

while.body98.lr.ph:                               ; preds = %if.end89
  %16 = bitcast i8** %p to i8*
  br label %while.body98

while.body98:                                     ; preds = %while.body98.lr.ph, %cleanup
  %xlen.114 = phi i64 [ %conv83, %while.body98.lr.ph ], [ %sub129, %cleanup ]
  %add.ptr1301013 = phi i8* [ %add.ptr90, %while.body98.lr.ph ], [ %add.ptr130, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #7
  %cmp99 = icmp eq i64 %xlen.114, 1
  br i1 %cmp99, label %cleanup.thread, label %if.end102

if.end102:                                        ; preds = %while.body98
  %17 = load i8, i8* %add.ptr1301013, align 1, !tbaa !26
  %conv104 = zext i8 %17 to i32
  %shl105 = shl nuw nsw i32 %conv104, 8
  %arrayidx106 = getelementptr inbounds i8, i8* %add.ptr1301013, i64 1
  %18 = load i8, i8* %arrayidx106, align 1, !tbaa !26
  %conv107 = zext i8 %18 to i32
  %or108 = or i32 %shl105, %conv107
  %conv109 = zext i32 %or108 to i64
  %add110 = add nuw nsw i64 %conv109, 2
  %cmp111 = icmp ult i64 %xlen.114, %add110
  br i1 %cmp111, label %cleanup.thread, label %if.end114

if.end114:                                        ; preds = %if.end102
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr1301013, i64 2
  %call117 = call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call119 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.523, i64 0, i64 0), i32 noundef %or108) #5
  store i8* %add.ptr115, i8** %p, align 8, !tbaa !34
  %call120 = call %struct.X509_name_st* @d2i_X509_NAME(%struct.X509_name_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv109) #5
  %tobool121.not = icmp eq %struct.X509_name_st* %call120, null
  br i1 %tobool121.not, label %if.then122, label %if.else124

if.then122:                                       ; preds = %if.end114
  %call123 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.524, i64 0, i64 0)) #5
  br label %cleanup

if.else124:                                       ; preds = %if.end114
  %call125 = call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bio, %struct.X509_name_st* noundef nonnull %call120, i32 noundef 0, i64 noundef 8520479) #5
  %call126 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call120) #5
  br label %cleanup

cleanup.thread:                                   ; preds = %while.body98, %if.end102
  store i8* %add.ptr1301013, i8** %msg.addr, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7
  br label %cleanup157

cleanup:                                          ; preds = %if.then122, %if.else124
  %sub129 = sub i64 %xlen.114, %add110
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr115, i64 %conv109
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7
  %cmp96.not = icmp eq i64 %sub129, 0
  br i1 %cmp96.not, label %while.end133, label %while.body98, !llvm.loop !42

while.end133:                                     ; preds = %cleanup, %if.end89
  %add.ptr13010.lcssa = phi i8* [ %add.ptr90, %if.end89 ], [ %add.ptr130, %cleanup ]
  store i8* %add.ptr13010.lcssa, i8** %msg.addr, align 8, !tbaa !34
  %19 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc135 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 25
  %20 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc135, align 8, !tbaa !22
  %enc_flags136 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %20, i64 0, i32 12
  %21 = load i32, i32* %enc_flags136, align 8, !tbaa !24
  %and137 = and i32 %21, 8
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %if.end154

land.lhs.true139:                                 ; preds = %while.end133
  %version141 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 0
  %22 = load i32, i32* %version141, align 8, !tbaa !39
  %cmp142 = icmp slt i32 %22, 772
  %cmp147.not = icmp eq i32 %22, 65536
  %or.cond2 = or i1 %cmp142, %cmp147.not
  br i1 %or.cond2, label %if.end154, label %if.then149

if.then149:                                       ; preds = %land.lhs.true139
  %call150 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.525, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %cleanup157, label %if.then149.if.end154_crit_edge

if.then149.if.end154_crit_edge:                   ; preds = %if.then149
  %.pre = load i64, i64* %msglen.addr, align 8, !tbaa !35
  br label %if.end154

if.end154:                                        ; preds = %if.then149.if.end154_crit_edge, %land.lhs.true139, %while.end133
  %23 = phi i64 [ %.pre, %if.then149.if.end154_crit_edge ], [ %sub92, %land.lhs.true139 ], [ %sub92, %while.end133 ]
  %cmp155 = icmp eq i64 %23, 0
  br label %cleanup157

cleanup157:                                       ; preds = %cleanup.thread, %if.then149, %if.end76, %if.end72, %if.end38, %if.then34, %if.end18, %if.end14, %if.else, %if.end, %if.then, %if.end154
  %retval.2.shrunk = phi i1 [ %cmp155, %if.end154 ], [ false, %if.then ], [ %tobool9.not, %if.end ], [ false, %if.else ], [ false, %if.end14 ], [ false, %if.end18 ], [ false, %if.then34 ], [ false, %if.end38 ], [ false, %if.end72 ], [ false, %if.end76 ], [ false, %if.then149 ], [ false, %cleanup.thread ]
  %retval.2 = zext i1 %retval.2.shrunk to i32
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_ticket(%struct.bio_st* noundef %bio, %struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %msg, i64 noundef %msglen) unnamed_addr #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msglen.addr = alloca i64, align 8
  %cmp = icmp eq i64 %msglen, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.538, i64 0, i64 0)) #5
  br label %cleanup85

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i64 %msglen, 4
  br i1 %cmp2, label %cleanup85, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = load i8, i8* %msg, align 1, !tbaa !26
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx5 = getelementptr inbounds i8, i8* %msg, i64 1
  %1 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = zext i8 %1 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or = or i32 %shl7, %shl
  %arrayidx8 = getelementptr inbounds i8, i8* %msg, i64 2
  %2 = load i8, i8* %arrayidx8, align 1, !tbaa !26
  %conv9 = zext i8 %2 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %arrayidx12 = getelementptr inbounds i8, i8* %msg, i64 3
  %3 = load i8, i8* %arrayidx12, align 1, !tbaa !26
  %conv13 = zext i8 %3 to i32
  %or14 = or i32 %or11, %conv13
  %sub = add i64 %msglen, -4
  store i64 %sub, i64* %msglen.addr, align 8, !tbaa !35
  %add.ptr = getelementptr inbounds i8, i8* %msg, i64 4
  store i8* %add.ptr, i8** %msg.addr, align 8, !tbaa !34
  %call16 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.539, i64 0, i64 0), i32 noundef %or14) #5
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end4
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !39
  %cmp19 = icmp slt i32 %7, 772
  %cmp24.not = icmp eq i32 %7, 65536
  %or.cond = or i1 %cmp19, %cmp24.not
  br i1 %or.cond, label %if.end55, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %cmp27 = icmp ult i64 %sub, 4
  br i1 %cmp27, label %cleanup85, label %if.end30

if.end30:                                         ; preds = %if.then26
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !26
  %conv32 = zext i8 %8 to i32
  %shl33 = shl nuw i32 %conv32, 24
  %arrayidx34 = getelementptr inbounds i8, i8* %msg, i64 5
  %9 = load i8, i8* %arrayidx34, align 1, !tbaa !26
  %conv35 = zext i8 %9 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %shl36, %shl33
  %arrayidx38 = getelementptr inbounds i8, i8* %msg, i64 6
  %10 = load i8, i8* %arrayidx38, align 1, !tbaa !26
  %conv39 = zext i8 %10 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %or37, %shl40
  %arrayidx42 = getelementptr inbounds i8, i8* %msg, i64 7
  %11 = load i8, i8* %arrayidx42, align 1, !tbaa !26
  %conv43 = zext i8 %11 to i32
  %or44 = or i32 %or41, %conv43
  %sub45 = add i64 %msglen, -8
  store i64 %sub45, i64* %msglen.addr, align 8, !tbaa !35
  %add.ptr46 = getelementptr inbounds i8, i8* %msg, i64 8
  store i8* %add.ptr46, i8** %msg.addr, align 8, !tbaa !34
  %call48 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.540, i64 0, i64 0), i32 noundef %or44) #5
  %call51 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.541, i64 0, i64 0), i64 noundef 1, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool52.not.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not.not, label %cleanup85, label %if.end55

if.end55:                                         ; preds = %if.end30, %land.lhs.true, %if.end4
  %call57 = call fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.542, i64 0, i64 0), i64 noundef 2, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup85, label %if.end60

if.end60:                                         ; preds = %if.end55
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc62 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc62, align 8, !tbaa !22
  %enc_flags63 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags63, align 8, !tbaa !24
  %and64 = and i32 %14, 8
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end81

land.lhs.true66:                                  ; preds = %if.end60
  %version68 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version68, align 8, !tbaa !39
  %cmp69 = icmp slt i32 %15, 772
  %cmp74.not = icmp eq i32 %15, 65536
  %or.cond1 = or i1 %cmp69, %cmp74.not
  br i1 %or.cond1, label %if.end81, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true66
  %call78 = call fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 0, i8 noundef zeroext 4, i8** noundef nonnull %msg.addr, i64* noundef nonnull %msglen.addr) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup85, label %if.end81

if.end81:                                         ; preds = %land.lhs.true76, %land.lhs.true66, %if.end60
  %16 = load i64, i64* %msglen.addr, align 8, !tbaa !35
  %tobool82.not = icmp eq i64 %16, 0
  %.2 = zext i1 %tobool82.not to i32
  br label %cleanup85

cleanup85:                                        ; preds = %if.then26, %if.end81, %land.lhs.true76, %if.end55, %if.end, %if.end30, %if.then
  %retval.1 = phi i32 [ 1, %if.then ], [ 0, %if.end30 ], [ 0, %if.end ], [ 0, %if.end55 ], [ 0, %land.lhs.true76 ], [ %.2, %if.end81 ], [ 0, %if.then26 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_extensions(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef %server, i8 noundef zeroext %mt, i8** nocapture noundef %msgin, i64* nocapture noundef %msginlen) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %msginlen, align 8, !tbaa !35
  %1 = load i8*, i8** %msgin, align 8, !tbaa !34
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef 80) #5
  switch i64 %0, label %if.end4 [
    i64 0, label %if.then
    i64 1, label %cleanup57
  ]

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.543, i64 0, i64 0)) #5
  br label %cleanup57

if.end4:                                          ; preds = %entry
  %2 = load i8, i8* %1, align 1, !tbaa !26
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx5 = getelementptr inbounds i8, i8* %1, i64 1
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !26
  %conv6 = zext i8 %3 to i32
  %or = or i32 %shl, %conv6
  %conv7 = zext i32 %or to i64
  %sub = add i64 %0, -2
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  %cmp8 = icmp eq i32 %or, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  %call11 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.543, i64 0, i64 0)) #5
  store i8* %add.ptr, i8** %msgin, align 8, !tbaa !34
  store i64 %sub, i64* %msginlen, align 8, !tbaa !35
  br label %cleanup57

if.end12:                                         ; preds = %if.end4
  %cmp13 = icmp ult i64 %sub, %conv7
  br i1 %cmp13, label %cleanup57, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end12
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.544, i64 0, i64 0), i32 noundef %or) #5
  %sub19 = sub i64 %sub, %conv7
  %add49 = add nsw i32 %indent, 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %extslen.0117 = phi i64 [ %conv7, %while.body.lr.ph ], [ %sub55, %cleanup ]
  %msg.0116 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %add.ptr53, %cleanup ]
  %cmp22 = icmp ult i64 %extslen.0117, 4
  br i1 %cmp22, label %cleanup57, label %if.end25

if.end25:                                         ; preds = %while.body
  %4 = load i8, i8* %msg.0116, align 1, !tbaa !26
  %conv27 = zext i8 %4 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %arrayidx29 = getelementptr inbounds i8, i8* %msg.0116, i64 1
  %5 = load i8, i8* %arrayidx29, align 1, !tbaa !26
  %conv30 = zext i8 %5 to i32
  %or31 = or i32 %shl28, %conv30
  %arrayidx32 = getelementptr inbounds i8, i8* %msg.0116, i64 2
  %6 = load i8, i8* %arrayidx32, align 1, !tbaa !26
  %conv33 = zext i8 %6 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %arrayidx35 = getelementptr inbounds i8, i8* %msg.0116, i64 3
  %7 = load i8, i8* %arrayidx35, align 1, !tbaa !26
  %conv36 = zext i8 %7 to i32
  %or37 = or i32 %shl34, %conv36
  %conv38 = zext i32 %or37 to i64
  %add = add nuw nsw i64 %conv38, 4
  %cmp39 = icmp ult i64 %extslen.0117, %add
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end25
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.545, i64 0, i64 0), i32 noundef %or31, i32 noundef %or37) #5
  %conv44 = trunc i64 %extslen.0117 to i32
  %call46 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %bio, i8* noundef nonnull %msg.0116, i32 noundef %conv44, i32 noundef %add49) #5
  br label %cleanup57

if.end47:                                         ; preds = %if.end25
  %add.ptr48 = getelementptr inbounds i8, i8* %msg.0116, i64 4
  %call50 = tail call fastcc i32 @ssl_print_extension(%struct.bio_st* noundef %bio, i32 noundef %add49, i32 noundef %server, i8 noundef zeroext %mt, i32 noundef %or31, i8* noundef nonnull %add.ptr48, i64 noundef %conv38) #6
  %tobool.not = icmp eq i32 %call50, 0
  br i1 %tobool.not, label %cleanup57, label %cleanup

cleanup:                                          ; preds = %if.end47
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr48, i64 %conv38
  %sub55 = sub i64 %extslen.0117, %add
  %cmp20.not = icmp eq i64 %sub55, 0
  br i1 %cmp20.not, label %while.end, label %while.body, !llvm.loop !43

while.end:                                        ; preds = %cleanup
  store i8* %add.ptr53, i8** %msgin, align 8, !tbaa !34
  store i64 %sub19, i64* %msginlen, align 8, !tbaa !35
  br label %cleanup57

cleanup57:                                        ; preds = %if.end47, %while.body, %if.then41, %if.end12, %entry, %while.end, %if.then10, %if.then
  %retval.2 = phi i32 [ 1, %if.then ], [ 1, %if.then10 ], [ 1, %while.end ], [ 0, %entry ], [ 0, %if.end12 ], [ 0, %if.then41 ], [ 0, %while.body ], [ 0, %if.end47 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %indent, i8* nocapture noundef readonly %msg, i64 noundef %msglen, i64 noundef %vlen, %struct.ssl_trace_tbl* nocapture noundef readonly %tbl, i64 noundef %ntbl) unnamed_addr #0 {
entry:
  %rem = urem i64 %msglen, %vlen
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %entry
  %tobool1.not20 = icmp eq i64 %msglen, 0
  br i1 %tobool1.not20, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp = icmp eq i64 %vlen, 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end6
  %msg.addr.022 = phi i8* [ %msg, %while.body.lr.ph ], [ %add.ptr, %if.end6 ]
  %msglen.addr.021 = phi i64 [ %msglen, %while.body.lr.ph ], [ %sub, %if.end6 ]
  %0 = load i8, i8* %msg.addr.022, align 1, !tbaa !26
  %conv = zext i8 %0 to i32
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %while.body
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx4 = getelementptr inbounds i8, i8* %msg.addr.022, i64 1
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !26
  %conv5 = zext i8 %1 to i32
  %or = or i32 %shl, %conv5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %while.body
  %val.0 = phi i32 [ %or, %if.then3 ], [ %conv, %while.body ]
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef 80) #5
  %call7 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %val.0, %struct.ssl_trace_tbl* noundef %tbl, i64 noundef %ntbl) #6
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.552, i64 0, i64 0), i8* noundef %call7, i32 noundef %val.0) #5
  %add.ptr = getelementptr inbounds i8, i8* %msg.addr.022, i64 %vlen
  %sub = sub i64 %msglen.addr.021, %vlen
  %tobool1.not = icmp eq i64 %sub, 0
  br i1 %tobool1.not, label %cleanup, label %while.body, !llvm.loop !44

cleanup:                                          ; preds = %if.end6, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %while.cond.preheader ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_version(%struct.bio_st* noundef %bio, i8* noundef %name, i8** nocapture noundef %pmsg, i64* nocapture noundef %pmsglen, i32* noundef writeonly %version) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %2 = load i8, i8* %1, align 1, !tbaa !26
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %cmp3.not = icmp eq i32* %version, null
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 %or, i32* %version, align 4, !tbaa !38
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call7 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([8 x %struct.ssl_trace_tbl], [8 x %struct.ssl_trace_tbl]* @ssl_version_tbl, i64 0, i64 0), i64 noundef 8) #6
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* noundef %name, i32 noundef %or, i8* noundef %call7) #5
  %4 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %pmsg, align 8, !tbaa !34
  %5 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %sub = add i64 %5, -2
  store i64 %sub, i64* %pmsglen, align 8, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_random(%struct.bio_st* noundef %bio, i8** nocapture noundef %pmsg, i64* nocapture noundef %pmsglen) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %1 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %cmp = icmp ult i64 %1, 32
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %0, align 1, !tbaa !26
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr inbounds i8, i8* %0, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr inbounds i8, i8* %0, i64 2
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !26
  %conv5 = zext i8 %4 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr inbounds i8, i8* %0, i64 3
  %5 = load i8, i8* %arrayidx8, align 1, !tbaa !26
  %conv9 = zext i8 %5 to i32
  %or10 = or i32 %or7, %conv9
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 4
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 6, i32 noundef 80) #5
  %call11 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #5
  %call12 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i64 0, i64 0), i32 noundef %or10) #5
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %add.ptr, i64 noundef 28) #6
  %6 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %add.ptr15 = getelementptr inbounds i8, i8* %6, i64 32
  store i8* %add.ptr15, i8** %pmsg, align 8, !tbaa !34
  %7 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %sub = add i64 %7, -32
  store i64 %sub, i64* %pmsglen, align 8, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_hexbuf(%struct.bio_st* noundef %bio, i32 noundef %indent, i8* noundef %name, i64 noundef %nlen, i8** nocapture noundef %pmsg, i64* nocapture noundef %pmsglen) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %1 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %cmp = icmp ult i64 %1, %nlen
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %0, align 1, !tbaa !26
  %conv = zext i8 %2 to i64
  %cmp1 = icmp ugt i64 %nlen, 1
  br i1 %cmp1, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx4 = getelementptr inbounds i8, i8* %0, i64 1
  %3 = load i8, i8* %arrayidx4, align 1, !tbaa !26
  %conv5 = zext i8 %3 to i64
  %or = or i64 %shl, %conv5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %blen.0 = phi i64 [ %or, %if.then3 ], [ %conv, %if.end ]
  %add = add i64 %blen.0, %nlen
  %cmp7 = icmp ult i64 %1, %add
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %nlen
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %indent, i8* noundef %name, i8* noundef nonnull %add.ptr, i64 noundef %blen.0) #6
  %4 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %add.ptr12 = getelementptr inbounds i8, i8* %4, i64 %add
  store i8* %add.ptr12, i8** %pmsg, align 8, !tbaa !34
  %5 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %sub = sub i64 %5, %add
  store i64 %sub, i64* %pmsglen, align 8, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @ssl_get_keyex(i8** nocapture noundef writeonly %pname, %struct.ssl_st* nocapture noundef readonly %ssl) unnamed_addr #4 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !45
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !46
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i64 %conv, 2
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i64 %conv, 4
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %and9 = and i64 %conv, 8
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %and13 = and i64 %conv, 64
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %and17 = and i64 %conv, 256
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %and21 = and i64 %conv, 128
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end20
  %and25 = and i64 %conv, 32
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end24
  %and29 = and i64 %conv, 16
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end28
  %and33 = and i64 %conv, 512
  %tobool34.not = icmp eq i64 %and33, 0
  %. = select i1 %tobool34.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.432, i64 0, i64 0)
  %2 = trunc i64 %and33 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12, %if.end8, %if.end4, %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), %entry ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.424, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.425, i64 0, i64 0), %if.end4 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.426, i64 0, i64 0), %if.end8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.427, i64 0, i64 0), %if.end12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.428, i64 0, i64 0), %if.end16 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.429, i64 0, i64 0), %if.end20 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.430, i64 0, i64 0), %if.end24 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.431, i64 0, i64 0), %if.end28 ], [ %., %if.end32 ]
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ 4, %if.end4 ], [ 8, %if.end8 ], [ 64, %if.end12 ], [ 256, %if.end16 ], [ 128, %if.end20 ], [ 32, %if.end24 ], [ 16, %if.end28 ], [ %2, %if.end32 ]
  store i8* %.sink, i8** %pname, align 8, !tbaa !34
  ret i32 %retval.0
}

declare i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_certificate(%struct.bio_st* noundef %bio, i8** nocapture noundef %pmsg, i64* nocapture noundef %pmsglen) unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %0 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %1 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %2 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %1, align 1, !tbaa !26
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 1
  %4 = load i8, i8* %arrayidx1, align 1, !tbaa !26
  %conv2 = zext i8 %4 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr inbounds i8, i8* %1, i64 2
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !26
  %conv5 = zext i8 %5 to i32
  %or6 = or i32 %or, %conv5
  %conv7 = zext i32 %or6 to i64
  %add = add nuw nsw i64 %conv7, 3
  %cmp8 = icmp ult i64 %0, %add
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 3
  store i8* %add.ptr, i8** %q, align 8, !tbaa !34
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef 8, i32 noundef 80) #5
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.485, i64 0, i64 0), i32 noundef %or6) #5
  %call14 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef null, i8** noundef nonnull %q, i64 noundef %conv7) #5
  %tobool.not = icmp eq %struct.x509_st* %call14, null
  br i1 %tobool.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %call16 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.486, i64 0, i64 0)) #5
  br label %if.end21

if.else:                                          ; preds = %if.end11
  %call17 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.487, i64 0, i64 0)) #5
  %call18 = call i32 @X509_print_ex(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %call14, i64 noundef 8520479, i64 noundef 0) #5
  %call19 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %call14) #5
  %call20 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.488, i64 0, i64 0)) #5
  call void @X509_free(%struct.x509_st* noundef nonnull %call14) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %6 = load i8*, i8** %q, align 8, !tbaa !34
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv7
  %cmp24.not = icmp eq i8* %6, %add.ptr23
  br i1 %cmp24.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end21
  %call27 = call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.489, i64 0, i64 0)) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21
  %7 = load i8*, i8** %pmsg, align 8, !tbaa !34
  %add.ptr30 = getelementptr inbounds i8, i8* %7, i64 %add
  store i8* %add.ptr30, i8** %pmsg, align 8, !tbaa !34
  %8 = load i64, i64* %pmsglen, align 8, !tbaa !35
  %sub = sub i64 %8, %add
  store i64 %sub, i64* %pmsglen, align 8, !tbaa !35
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end28
  %retval.0 = phi i32 [ 1, %if.end28 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  ret i32 %retval.0
}

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_print_ex(%struct.bio_st* noundef, %struct.x509_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @d2i_X509_NAME(%struct.X509_name_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_print_extension(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef %server, i8 noundef zeroext %mt, i32 noundef %extype, i8* noundef %ext, i64 noundef %extlen) unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %indent, i32 noundef 80) #5
  %call1 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %extype, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([32 x %struct.ssl_trace_tbl], [32 x %struct.ssl_trace_tbl]* @ssl_exts_tbl, i64 0, i64 0), i64 noundef 32) #6
  %conv = trunc i64 %extlen to i32
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.546, i64 0, i64 0), i8* noundef %call1, i32 noundef %extype, i32 noundef %conv) #5
  switch i32 %extype, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb5
    i32 10, label %sw.bb18
    i32 16, label %sw.bb36
    i32 13, label %sw.bb69
    i32 65281, label %sw.bb106
    i32 35, label %sw.bb138
    i32 51, label %sw.bb144
    i32 43, label %sw.bb218
    i32 45, label %sw.bb252
    i32 42, label %sw.bb267
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i64 %extlen, 0
  br i1 %cmp, label %cleanup297, label %if.end

if.end:                                           ; preds = %sw.bb
  %add = add nsw i32 %indent, 2
  %call4 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %add, i8* noundef %ext, i64 noundef %extlen, i64 noundef 1, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([5 x %struct.ssl_trace_tbl], [5 x %struct.ssl_trace_tbl]* @ssl_mfl_tbl, i64 0, i64 0), i64 noundef 5) #6
  br label %cleanup297

sw.bb5:                                           ; preds = %entry
  %cmp6 = icmp eq i64 %extlen, 0
  br i1 %cmp6, label %cleanup297, label %if.end9

if.end9:                                          ; preds = %sw.bb5
  %0 = load i8, i8* %ext, align 1, !tbaa !26
  %conv10 = zext i8 %0 to i64
  %add11 = add nuw nsw i64 %conv10, 1
  %cmp12.not = icmp eq i64 %add11, %extlen
  br i1 %cmp12.not, label %if.end15, label %cleanup297

if.end15:                                         ; preds = %if.end9
  %add16 = add nsw i32 %indent, 2
  %add.ptr = getelementptr inbounds i8, i8* %ext, i64 1
  %call17 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %add16, i8* noundef nonnull %add.ptr, i64 noundef %conv10, i64 noundef 1, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([3 x %struct.ssl_trace_tbl], [3 x %struct.ssl_trace_tbl]* @ssl_point_tbl, i64 0, i64 0), i64 noundef 3) #6
  br label %cleanup297

sw.bb18:                                          ; preds = %entry
  %cmp19 = icmp ult i64 %extlen, 2
  br i1 %cmp19, label %cleanup297, label %if.end22

if.end22:                                         ; preds = %sw.bb18
  %1 = load i8, i8* %ext, align 1, !tbaa !26
  %conv24 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv24, 8
  %arrayidx25 = getelementptr inbounds i8, i8* %ext, i64 1
  %2 = load i8, i8* %arrayidx25, align 1, !tbaa !26
  %conv26 = zext i8 %2 to i64
  %or = or i64 %shl, %conv26
  %add28 = add nuw nsw i64 %or, 2
  %cmp29.not = icmp eq i64 %add28, %extlen
  br i1 %cmp29.not, label %if.end32, label %cleanup297

if.end32:                                         ; preds = %if.end22
  %add33 = add nsw i32 %indent, 2
  %add.ptr34 = getelementptr inbounds i8, i8* %ext, i64 2
  %call35 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %add33, i8* noundef nonnull %add.ptr34, i64 noundef %or, i64 noundef 2, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([44 x %struct.ssl_trace_tbl], [44 x %struct.ssl_trace_tbl]* @ssl_groups_tbl, i64 0, i64 0), i64 noundef 44) #6
  br label %cleanup297

sw.bb36:                                          ; preds = %entry
  %cmp37 = icmp ult i64 %extlen, 2
  br i1 %cmp37, label %cleanup297, label %if.end40

if.end40:                                         ; preds = %sw.bb36
  %3 = load i8, i8* %ext, align 1, !tbaa !26
  %conv42 = zext i8 %3 to i64
  %shl43 = shl nuw nsw i64 %conv42, 8
  %arrayidx44 = getelementptr inbounds i8, i8* %ext, i64 1
  %4 = load i8, i8* %arrayidx44, align 1, !tbaa !26
  %conv45 = zext i8 %4 to i64
  %or46 = or i64 %shl43, %conv45
  %add48 = add nuw nsw i64 %or46, 2
  %cmp49.not = icmp eq i64 %add48, %extlen
  br i1 %cmp49.not, label %if.end52, label %cleanup297

if.end52:                                         ; preds = %if.end40
  %cmp54.not494 = icmp eq i64 %or46, 0
  br i1 %cmp54.not494, label %cleanup297, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end52
  %add.ptr53 = getelementptr inbounds i8, i8* %ext, i64 2
  %add62 = add nsw i32 %indent, 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %ext.addr.0496 = phi i8* [ %add.ptr53, %while.body.lr.ph ], [ %add.ptr67, %cleanup ]
  %xlen.0495 = phi i64 [ %or46, %while.body.lr.ph ], [ %sub, %cleanup ]
  %incdec.ptr = getelementptr inbounds i8, i8* %ext.addr.0496, i64 1
  %5 = load i8, i8* %ext.addr.0496, align 1, !tbaa !26
  %conv56 = zext i8 %5 to i64
  %cmp58.not = icmp ugt i64 %xlen.0495, %conv56
  br i1 %cmp58.not, label %cleanup, label %cleanup297

cleanup:                                          ; preds = %while.body
  %add57.neg = xor i64 %conv56, -1
  %call63 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add62, i32 noundef 80) #5
  %conv64 = zext i8 %5 to i32
  %call65 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef nonnull %incdec.ptr, i32 noundef %conv64) #5
  %call66 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #5
  %add.ptr67 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %conv56
  %sub = add i64 %xlen.0495, %add57.neg
  %cmp54.not = icmp eq i64 %sub, 0
  br i1 %cmp54.not, label %cleanup297, label %while.body

sw.bb69:                                          ; preds = %entry
  %cmp70 = icmp ult i64 %extlen, 2
  br i1 %cmp70, label %cleanup297, label %if.end73

if.end73:                                         ; preds = %sw.bb69
  %6 = load i8, i8* %ext, align 1, !tbaa !26
  %conv75 = zext i8 %6 to i64
  %shl76 = shl nuw nsw i64 %conv75, 8
  %arrayidx77 = getelementptr inbounds i8, i8* %ext, i64 1
  %7 = load i8, i8* %arrayidx77, align 1, !tbaa !26
  %conv78 = zext i8 %7 to i64
  %or79 = or i64 %shl76, %conv78
  %add81 = add nuw nsw i64 %or79, 2
  %cmp82.not = icmp eq i64 %add81, %extlen
  %and = and i64 %conv78, 1
  %tobool.not = icmp eq i64 %and, 0
  %or.cond472 = select i1 %cmp82.not, i1 %tobool.not, i1 false
  br i1 %or.cond472, label %while.cond89.preheader, label %cleanup297

while.cond89.preheader:                           ; preds = %if.end73
  %cmp90.not490 = icmp eq i64 %or79, 0
  br i1 %cmp90.not490, label %cleanup297, label %while.body92.lr.ph

while.body92.lr.ph:                               ; preds = %while.cond89.preheader
  %add93 = add nsw i32 %indent, 2
  br label %while.body92

while.body92:                                     ; preds = %while.body92.lr.ph, %while.body92
  %ext.pn492 = phi i8* [ %ext, %while.body92.lr.ph ], [ %ext.addr.2493, %while.body92 ]
  %xlen.2491 = phi i64 [ %or79, %while.body92.lr.ph ], [ %sub103, %while.body92 ]
  %ext.addr.2493 = getelementptr inbounds i8, i8* %ext.pn492, i64 2
  %call94 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add93, i32 noundef 80) #5
  %8 = load i8, i8* %ext.addr.2493, align 1, !tbaa !26
  %conv96 = zext i8 %8 to i32
  %shl97 = shl nuw nsw i32 %conv96, 8
  %arrayidx98 = getelementptr inbounds i8, i8* %ext.pn492, i64 3
  %9 = load i8, i8* %arrayidx98, align 1, !tbaa !26
  %conv99 = zext i8 %9 to i32
  %or100 = or i32 %shl97, %conv99
  %call101 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or100, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([28 x %struct.ssl_trace_tbl], [28 x %struct.ssl_trace_tbl]* @ssl_sigalg_tbl, i64 0, i64 0), i64 noundef 28) #6
  %call102 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.521, i64 0, i64 0), i8* noundef %call101, i32 noundef %or100) #5
  %sub103 = add i64 %xlen.2491, -2
  %cmp90.not = icmp eq i64 %sub103, 0
  br i1 %cmp90.not, label %cleanup297, label %while.body92, !llvm.loop !48

sw.bb106:                                         ; preds = %entry
  %cmp107 = icmp eq i64 %extlen, 0
  br i1 %cmp107, label %cleanup297, label %if.end110

if.end110:                                        ; preds = %sw.bb106
  %10 = load i8, i8* %ext, align 1, !tbaa !26
  %conv112 = zext i8 %10 to i64
  %add113 = add nuw nsw i64 %conv112, 1
  %cmp114.not = icmp eq i64 %add113, %extlen
  br i1 %cmp114.not, label %if.end117, label %cleanup297

if.end117:                                        ; preds = %if.end110
  %incdec.ptr118 = getelementptr inbounds i8, i8* %ext, i64 1
  %tobool119.not = icmp eq i8 %10, 0
  br i1 %tobool119.not, label %if.else, label %if.then120

if.then120:                                       ; preds = %if.end117
  %tobool121.not = icmp eq i32 %server, 0
  br i1 %tobool121.not, label %if.end127.thread, label %if.then122

if.end127.thread:                                 ; preds = %if.then120
  %add128476 = add nsw i32 %indent, 4
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %add128476, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.547, i64 0, i64 0), i8* noundef nonnull %incdec.ptr118, i64 noundef %conv112) #6
  br label %cleanup297

if.then122:                                       ; preds = %if.then120
  %and123 = and i64 %conv112, 1
  %tobool124.not = icmp eq i64 %and123, 0
  br i1 %tobool124.not, label %if.then130, label %cleanup297

if.then130:                                       ; preds = %if.then122
  %shr = lshr i64 %conv112, 1
  %add128 = add nsw i32 %indent, 4
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %add128, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.547, i64 0, i64 0), i8* noundef nonnull %incdec.ptr118, i64 noundef %shr) #6
  %add.ptr131 = getelementptr inbounds i8, i8* %incdec.ptr118, i64 %shr
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %add128, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.548, i64 0, i64 0), i8* noundef nonnull %add.ptr131, i64 noundef %shr) #6
  br label %cleanup297

if.else:                                          ; preds = %if.end117
  %add134 = add nsw i32 %indent, 4
  %call135 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add134, i32 noundef 80) #5
  %call136 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.549, i64 0, i64 0)) #5
  br label %cleanup297

sw.bb138:                                         ; preds = %entry
  %cmp139.not = icmp eq i64 %extlen, 0
  br i1 %cmp139.not, label %cleanup297, label %if.then141

if.then141:                                       ; preds = %sw.bb138
  %add142 = add nsw i32 %indent, 4
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %add142, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.542, i64 0, i64 0), i8* noundef %ext, i64 noundef %extlen) #6
  br label %cleanup297

sw.bb144:                                         ; preds = %entry
  %tobool145 = icmp ne i32 %server, 0
  %cmp146 = icmp eq i64 %extlen, 2
  %or.cond = and i1 %tobool145, %cmp146
  br i1 %or.cond, label %if.then148, label %if.end160

if.then148:                                       ; preds = %sw.bb144
  %11 = load i8, i8* %ext, align 1, !tbaa !26
  %conv150 = zext i8 %11 to i32
  %shl151 = shl nuw nsw i32 %conv150, 8
  %arrayidx152 = getelementptr inbounds i8, i8* %ext, i64 1
  %12 = load i8, i8* %arrayidx152, align 1, !tbaa !26
  %conv153 = zext i8 %12 to i32
  %or154 = or i32 %shl151, %conv153
  %add155 = add nsw i32 %indent, 4
  %call156 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add155, i32 noundef 80) #5
  %call157 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or154, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([44 x %struct.ssl_trace_tbl], [44 x %struct.ssl_trace_tbl]* @ssl_groups_tbl, i64 0, i64 0), i64 noundef 44) #6
  %call158 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.550, i64 0, i64 0), i8* noundef %call157, i32 noundef %or154) #5
  br label %cleanup297

if.end160:                                        ; preds = %sw.bb144
  %cmp161 = icmp ult i64 %extlen, 2
  br i1 %cmp161, label %cleanup297, label %if.end164

if.end164:                                        ; preds = %if.end160
  br i1 %tobool145, label %for.body.lr.ph, label %if.else167

if.else167:                                       ; preds = %if.end164
  %13 = load i8, i8* %ext, align 1, !tbaa !26
  %conv169 = zext i8 %13 to i64
  %shl170 = shl nuw nsw i64 %conv169, 8
  %arrayidx171 = getelementptr inbounds i8, i8* %ext, i64 1
  %14 = load i8, i8* %arrayidx171, align 1, !tbaa !26
  %conv172 = zext i8 %14 to i64
  %or173 = or i64 %shl170, %conv172
  %add175 = add nuw nsw i64 %or173, 2
  %cmp176.not = icmp eq i64 %add175, %extlen
  br i1 %cmp176.not, label %if.end181, label %cleanup297

if.end181:                                        ; preds = %if.else167
  %add.ptr180 = getelementptr inbounds i8, i8* %ext, i64 2
  %cmp182.not484 = icmp eq i64 %or173, 0
  br i1 %cmp182.not484, label %cleanup297, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end164, %if.end181
  %ext.addr.3506 = phi i8* [ %add.ptr180, %if.end181 ], [ %ext, %if.end164 ]
  %xlen.4505 = phi i64 [ %or173, %if.end181 ], [ %extlen, %if.end164 ]
  %add208 = add nsw i32 %indent, 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %ext.addr.4486 = phi i8* [ %ext.addr.3506, %for.body.lr.ph ], [ %add.ptr216, %for.inc ]
  %xlen.5485 = phi i64 [ %xlen.4505, %for.body.lr.ph ], [ %sub217, %for.inc ]
  %cmp185 = icmp ult i64 %xlen.5485, 4
  br i1 %cmp185, label %cleanup297, label %if.end188

if.end188:                                        ; preds = %for.body
  %15 = load i8, i8* %ext.addr.4486, align 1, !tbaa !26
  %conv190 = zext i8 %15 to i32
  %shl191 = shl nuw nsw i32 %conv190, 8
  %arrayidx192 = getelementptr inbounds i8, i8* %ext.addr.4486, i64 1
  %16 = load i8, i8* %arrayidx192, align 1, !tbaa !26
  %conv193 = zext i8 %16 to i32
  %or194 = or i32 %shl191, %conv193
  %arrayidx195 = getelementptr inbounds i8, i8* %ext.addr.4486, i64 2
  %17 = load i8, i8* %arrayidx195, align 1, !tbaa !26
  %conv196 = zext i8 %17 to i64
  %shl197 = shl nuw nsw i64 %conv196, 8
  %arrayidx198 = getelementptr inbounds i8, i8* %ext.addr.4486, i64 3
  %18 = load i8, i8* %arrayidx198, align 1, !tbaa !26
  %conv199 = zext i8 %18 to i64
  %or200 = or i64 %shl197, %conv199
  %add.ptr202 = getelementptr inbounds i8, i8* %ext.addr.4486, i64 4
  %sub203 = add i64 %xlen.5485, -4
  %cmp204 = icmp ult i64 %sub203, %or200
  br i1 %cmp204, label %cleanup297, label %for.inc

for.inc:                                          ; preds = %if.end188
  %call209 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add208, i32 noundef 80) #5
  %call210 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or194, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([44 x %struct.ssl_trace_tbl], [44 x %struct.ssl_trace_tbl]* @ssl_groups_tbl, i64 0, i64 0), i64 noundef 44) #6
  %call211 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.550, i64 0, i64 0), i8* noundef %call210, i32 noundef %or194) #5
  tail call fastcc void @ssl_print_hex(%struct.bio_st* noundef %bio, i32 noundef %add208, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.551, i64 0, i64 0), i8* noundef nonnull %add.ptr202, i64 noundef %or200) #6
  %add.ptr216 = getelementptr inbounds i8, i8* %add.ptr202, i64 %or200
  %sub217 = sub i64 %sub203, %or200
  %cmp182.not = icmp eq i64 %sub217, 0
  br i1 %cmp182.not, label %cleanup297, label %for.body, !llvm.loop !49

sw.bb218:                                         ; preds = %entry
  %tobool219.not = icmp eq i32 %server, 0
  br i1 %tobool219.not, label %if.end237, label %if.then220

if.then220:                                       ; preds = %sw.bb218
  %cmp221.not = icmp eq i64 %extlen, 2
  br i1 %cmp221.not, label %if.end224, label %cleanup297

if.end224:                                        ; preds = %if.then220
  %19 = load i8, i8* %ext, align 1, !tbaa !26
  %conv226 = zext i8 %19 to i32
  %shl227 = shl nuw nsw i32 %conv226, 8
  %arrayidx228 = getelementptr inbounds i8, i8* %ext, i64 1
  %20 = load i8, i8* %arrayidx228, align 1, !tbaa !26
  %conv229 = zext i8 %20 to i32
  %or230 = or i32 %shl227, %conv229
  %add231 = add nsw i32 %indent, 4
  %call232 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add231, i32 noundef 80) #5
  %call233 = tail call fastcc i8* @do_ssl_trace_str(i32 noundef %or230, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([8 x %struct.ssl_trace_tbl], [8 x %struct.ssl_trace_tbl]* @ssl_version_tbl, i64 0, i64 0), i64 noundef 8) #6
  %call234 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.552, i64 0, i64 0), i8* noundef %call233, i32 noundef %or230) #5
  br label %cleanup297

if.end237:                                        ; preds = %sw.bb218
  %cmp238 = icmp eq i64 %extlen, 0
  br i1 %cmp238, label %cleanup297, label %if.end241

if.end241:                                        ; preds = %if.end237
  %21 = load i8, i8* %ext, align 1, !tbaa !26
  %conv243 = zext i8 %21 to i64
  %add244 = add nuw nsw i64 %conv243, 1
  %cmp245.not = icmp eq i64 %add244, %extlen
  br i1 %cmp245.not, label %if.end248, label %cleanup297

if.end248:                                        ; preds = %if.end241
  %add249 = add nsw i32 %indent, 2
  %add.ptr250 = getelementptr inbounds i8, i8* %ext, i64 1
  %call251 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %add249, i8* noundef nonnull %add.ptr250, i64 noundef %conv243, i64 noundef 2, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([8 x %struct.ssl_trace_tbl], [8 x %struct.ssl_trace_tbl]* @ssl_version_tbl, i64 0, i64 0), i64 noundef 8) #6
  br label %cleanup297

sw.bb252:                                         ; preds = %entry
  %cmp253 = icmp eq i64 %extlen, 0
  br i1 %cmp253, label %cleanup297, label %if.end256

if.end256:                                        ; preds = %sw.bb252
  %22 = load i8, i8* %ext, align 1, !tbaa !26
  %conv258 = zext i8 %22 to i64
  %add259 = add nuw nsw i64 %conv258, 1
  %cmp260.not = icmp eq i64 %add259, %extlen
  br i1 %cmp260.not, label %if.end263, label %cleanup297

if.end263:                                        ; preds = %if.end256
  %add264 = add nsw i32 %indent, 2
  %add.ptr265 = getelementptr inbounds i8, i8* %ext, i64 1
  %call266 = tail call fastcc i32 @do_ssl_trace_list(%struct.bio_st* noundef %bio, i32 noundef %add264, i8* noundef nonnull %add.ptr265, i64 noundef %conv258, i64 noundef 1, %struct.ssl_trace_tbl* noundef getelementptr inbounds ([2 x %struct.ssl_trace_tbl], [2 x %struct.ssl_trace_tbl]* @ssl_psk_kex_modes_tbl, i64 0, i64 0), i64 noundef 2) #6
  br label %cleanup297

sw.bb267:                                         ; preds = %entry
  %cmp269.not = icmp eq i8 %mt, 4
  br i1 %cmp269.not, label %if.end272, label %cleanup297

if.end272:                                        ; preds = %sw.bb267
  %cmp273.not = icmp eq i64 %extlen, 4
  br i1 %cmp273.not, label %if.end276, label %cleanup297

if.end276:                                        ; preds = %if.end272
  %23 = load i8, i8* %ext, align 1, !tbaa !26
  %conv278 = zext i8 %23 to i32
  %shl279 = shl nuw i32 %conv278, 24
  %arrayidx280 = getelementptr inbounds i8, i8* %ext, i64 1
  %24 = load i8, i8* %arrayidx280, align 1, !tbaa !26
  %conv281 = zext i8 %24 to i32
  %shl282 = shl nuw nsw i32 %conv281, 16
  %or283 = or i32 %shl282, %shl279
  %arrayidx284 = getelementptr inbounds i8, i8* %ext, i64 2
  %25 = load i8, i8* %arrayidx284, align 1, !tbaa !26
  %conv285 = zext i8 %25 to i32
  %shl286 = shl nuw nsw i32 %conv285, 8
  %or287 = or i32 %or283, %shl286
  %arrayidx288 = getelementptr inbounds i8, i8* %ext, i64 3
  %26 = load i8, i8* %arrayidx288, align 1, !tbaa !26
  %conv289 = zext i8 %26 to i32
  %or290 = or i32 %or287, %conv289
  %add291 = add nsw i32 %indent, 2
  %call292 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bio, i32 noundef %add291, i32 noundef 80) #5
  %call293 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.553, i64 0, i64 0), i32 noundef %or290) #5
  br label %cleanup297

sw.default:                                       ; preds = %entry
  %add295 = add nsw i32 %indent, 2
  %call296 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %bio, i8* noundef %ext, i32 noundef %conv, i32 noundef %add295) #5
  br label %cleanup297

cleanup297:                                       ; preds = %for.inc, %for.body, %if.end188, %while.body92, %cleanup, %while.body, %if.end181, %while.cond89.preheader, %if.end52, %if.end127.thread, %if.then148, %if.end276, %sw.default, %if.then130, %if.else, %if.then141, %sw.bb138, %sw.bb267, %if.end224, %if.then220, %if.end272, %if.end256, %sw.bb252, %if.end241, %if.end237, %if.else167, %if.end160, %if.then122, %if.end110, %sw.bb106, %if.end73, %sw.bb69, %if.end40, %sw.bb36, %if.end22, %sw.bb18, %if.end9, %sw.bb5, %sw.bb, %if.end263, %if.end248, %if.end32, %if.end15, %if.end
  %retval.5 = phi i32 [ %call266, %if.end263 ], [ %call251, %if.end248 ], [ %call35, %if.end32 ], [ %call17, %if.end15 ], [ %call4, %if.end ], [ 0, %sw.bb ], [ 0, %sw.bb5 ], [ 0, %if.end9 ], [ 0, %sw.bb18 ], [ 0, %if.end22 ], [ 0, %sw.bb36 ], [ 0, %if.end40 ], [ 0, %sw.bb69 ], [ 0, %if.end73 ], [ 0, %sw.bb106 ], [ 0, %if.end110 ], [ 0, %if.then122 ], [ 0, %if.end160 ], [ 0, %if.else167 ], [ 0, %if.end237 ], [ 0, %if.end241 ], [ 0, %sw.bb252 ], [ 0, %if.end256 ], [ 0, %if.end272 ], [ 0, %if.then220 ], [ 1, %if.end224 ], [ 1, %sw.bb267 ], [ 1, %sw.bb138 ], [ 1, %if.then141 ], [ 1, %if.else ], [ 1, %if.then130 ], [ 1, %sw.default ], [ 1, %if.end276 ], [ 1, %if.then148 ], [ 1, %if.end127.thread ], [ 1, %if.end52 ], [ 1, %while.cond89.preheader ], [ 1, %if.end181 ], [ 1, %cleanup ], [ 0, %while.body ], [ 1, %while.body92 ], [ 1, %for.inc ], [ 0, %for.body ], [ 0, %if.end188 ]
  ret i32 %retval.5
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"ssl_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !10, i64 72, !7, i64 132, !9, i64 136, !9, i64 144, !11, i64 152, !11, i64 160, !12, i64 168, !9, i64 1208, !9, i64 1216, !9, i64 1224, !6, i64 1232, !9, i64 1240, !15, i64 1248, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !6, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !9, i64 2120, !7, i64 2128, !9, i64 2144, !9, i64 2152, !9, i64 2160, !9, i64 2168, !7, i64 2176, !9, i64 2192, !9, i64 2200, !7, i64 2208, !11, i64 2272, !7, i64 2280, !11, i64 2288, !7, i64 2296, !9, i64 2328, !9, i64 2336, !9, i64 2344, !11, i64 2352, !9, i64 2360, !7, i64 2368, !11, i64 2400, !6, i64 2408, !9, i64 2416, !9, i64 2424, !6, i64 2432, !6, i64 2436, !9, i64 2440, !9, i64 2448, !9, i64 2456, !9, i64 2464, !9, i64 2472, !9, i64 2480, !11, i64 2488, !16, i64 2496, !9, i64 2512, !9, i64 2520, !7, i64 2528, !11, i64 2536, !6, i64 2544, !6, i64 2548, !6, i64 2552, !11, i64 2560, !6, i64 2568, !6, i64 2572, !11, i64 2576, !11, i64 2584, !11, i64 2592, !17, i64 2600, !9, i64 2904, !6, i64 2912, !9, i64 2920, !9, i64 2928, !9, i64 2936, !6, i64 2944, !9, i64 2952, !9, i64 2960, !9, i64 2968, !6, i64 2976, !6, i64 2980, !7, i64 2984, !6, i64 2988, !9, i64 2992, !11, i64 3000, !6, i64 3008, !9, i64 3016, !19, i64 3024, !9, i64 3152, !20, i64 3160, !9, i64 7448, !9, i64 7456, !9, i64 7464, !9, i64 7472, !11, i64 7480, !6, i64 7488, !6, i64 7492, !6, i64 7496, !9, i64 7504, !9, i64 7512, !11, i64 7520, !9, i64 7528, !11, i64 7536, !11, i64 7544, !11, i64 7552, !9, i64 7560, !9, i64 7568, !9, i64 7576, !9, i64 7584, !9, i64 7592, !11, i64 7600}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !7, i64 56}
!11 = !{!"long", !7, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !6, i64 216, !6, i64 220, !9, i64 224, !9, i64 232, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !7, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !13, i64 280, !7, i64 840, !11, i64 904, !7, i64 912, !11, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !11, i64 1000, !9, i64 1008, !11, i64 1016, !6, i64 1024, !7, i64 1028, !7, i64 1029, !14, i64 1030, !9, i64 1032}
!13 = !{!"", !7, i64 0, !11, i64 128, !7, i64 136, !11, i64 264, !11, i64 272, !6, i64 280, !9, i64 288, !9, i64 296, !6, i64 304, !9, i64 312, !11, i64 320, !9, i64 328, !11, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !6, i64 368, !11, i64 376, !9, i64 384, !6, i64 392, !9, i64 400, !11, i64 408, !9, i64 416, !11, i64 424, !9, i64 432, !11, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !9, i64 496, !7, i64 504, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552}
!14 = !{!"short", !7, i64 0}
!15 = !{!"ssl_dane_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56}
!16 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!17 = !{!"", !7, i64 0, !9, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !9, i64 64, !14, i64 72, !6, i64 76, !18, i64 80, !6, i64 112, !6, i64 116, !11, i64 120, !9, i64 128, !11, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !11, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !11, i64 232, !9, i64 240, !11, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !9, i64 272, !11, i64 280, !6, i64 288, !7, i64 292, !6, i64 296}
!18 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24}
!19 = !{!"srp_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !11, i64 120}
!20 = !{!"record_layer_st", !9, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !11, i64 24, !21, i64 32, !7, i64 80, !7, i64 1616, !9, i64 4176, !11, i64 4184, !11, i64 4192, !7, i64 4200, !11, i64 4208, !11, i64 4216, !11, i64 4224, !6, i64 4232, !11, i64 4240, !9, i64 4248, !7, i64 4256, !7, i64 4264, !6, i64 4272, !6, i64 4276, !9, i64 4280}
!21 = !{!"ssl3_buffer_st", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40}
!22 = !{!23, !9, i64 192}
!23 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!24 = !{!25, !6, i64 96}
!25 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!26 = !{!7, !7, i64 0}
!27 = !{!5, !6, i64 56}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !6, i64 0}
!31 = !{!"", !6, i64 0, !9, i64 8}
!32 = !{!31, !9, i64 8}
!33 = distinct !{!33, !29}
!34 = !{!9, !9, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = !{!6, !6, i64 0}
!39 = !{!23, !6, i64 0}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = !{!5, !9, i64 736}
!46 = !{!47, !6, i64 28}
!47 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
