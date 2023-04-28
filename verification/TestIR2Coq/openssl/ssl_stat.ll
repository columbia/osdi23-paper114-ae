; ModuleID = 'ssl/ssl_stat.c'
source_filename = "ssl/ssl_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
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
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.0, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.1, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
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

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read certificate status\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SSLv3/TLS write next proto\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SSLv3/TLS read next proto\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write certificate status\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"before SSL initialization\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"SSL negotiation finished successfully\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write client hello\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS read server hello\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read server certificate\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS read server key exchange\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"SSLv3/TLS read server certificate request\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"SSLv3/TLS read server session ticket\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"SSLv3/TLS read server done\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write client certificate\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"SSLv3/TLS write client key exchange\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write certificate verify\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write change cipher spec\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"SSLv3/TLS write finished\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read change cipher spec\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"SSLv3/TLS read finished\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS read client hello\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"SSLv3/TLS write hello request\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write server hello\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS write certificate\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write key exchange\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"SSLv3/TLS write certificate request\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"SSLv3/TLS write session ticket\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS write server done\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read client certificate\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS read client key exchange\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read certificate verify\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"DTLS1 read hello verify request\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"DTLS1 write hello verify request\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"TLSv1.3 write encrypted extensions\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"TLSv1.3 read encrypted extensions\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"TLSv1.3 read server certificate verify\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"TLSv1.3 write server certificate verify\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS read hello request\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"TLSv1.3 write server key update\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"TLSv1.3 write client key update\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"TLSv1.3 read client key update\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"TLSv1.3 read server key update\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"TLSv1.3 early data\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"TLSv1.3 pending early data end\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"TLSv1.3 write end of early data\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"TLSv1.3 read end of early data\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"unknown state\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"SSLERR\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"TRNP\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"TWST\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"TWCS\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"TRCS\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"TRST\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"TWNP\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"PINIT\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"SSLOK\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"TWCH\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"TRSH\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"TRSC\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"TRSKE\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"TRCR\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"TRSD\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"TWCC\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"TWCKE\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"TWCV\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"TWCCS\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"TWFIN\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"TRCCS\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"TRFIN\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"TWHR\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"TRCH\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"TWSH\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"TWSC\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"TWSKE\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"TWCR\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"TWSD\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"TRCC\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"TRCKE\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"TRCV\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"DRCHV\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"DWCHV\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"TWEE\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"TREE\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"TRSCV\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"TWSCV\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"TRHR\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"TWSKU\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"TWCKU\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"TRCKU\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"TRSKU\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"TED\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"TPEDE\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"TWEOED\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"UNKWN\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"UM\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"HF\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"BC\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"CU\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"AD\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"CY\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"NR\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"BH\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"UK\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"close notify\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"unexpected_message\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"bad record mac\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"decompression failure\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"handshake failure\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"no certificate\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"bad certificate\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"unsupported certificate\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"certificate revoked\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"certificate expired\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"certificate unknown\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"illegal parameter\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"decryption failed\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"record overflow\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"unknown CA\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"access denied\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"decrypt error\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"export restriction\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"protocol version\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"insufficient security\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"user canceled\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"no renegotiation\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"unsupported extension\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"certificate unobtainable\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"unrecognized name\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"bad certificate status response\00", align 1
@.str.160 = private unnamed_addr constant [27 x i8] c"bad certificate hash value\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"unknown PSK identity\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c"no application protocol\00", align 1
@reltable.SSL_state_string_long = private unnamed_addr constant [50 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([26 x i8]* @.str.5 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([38 x i8]* @.str.6 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.32 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.8 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.9 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.1 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.10 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([42 x i8]* @.str.11 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([27 x i8]* @.str.13 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([37 x i8]* @.str.12 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.19 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.20 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.7 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.14 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([36 x i8]* @.str.15 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.16 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.17 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([27 x i8]* @.str.2 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([25 x i8]* @.str.18 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([30 x i8]* @.str.22 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.21 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.33 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.23 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.24 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.25 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([36 x i8]* @.str.26 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.28 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.29 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.30 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.31 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([26 x i8]* @.str.3 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.19 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.20 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.27 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.4 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.17 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([25 x i8]* @.str.18 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.34 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.35 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.36 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([40 x i8]* @.str.37 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.38 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.39 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.40 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.41 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.42 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.43 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.44 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.45 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.46 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string_long to i64)) to i32)], align 4
@reltable.SSL_state_string = private unnamed_addr constant [50 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.55 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.56 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.80 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.58 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.59 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.52 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.60 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.61 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.62 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.53 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.68 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.69 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.57 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.63 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.64 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.65 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.66 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.54 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.67 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.70 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.71 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.81 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.72 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.73 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.74 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.75 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.76 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.77 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.78 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.79 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.49 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.68 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.69 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.50 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.51 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.66 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.67 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.82 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.83 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.84 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.85 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.86 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.87 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.88 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.89 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.90 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([4 x i8]* @.str.91 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.92 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.93 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([7 x i8]* @.str.93 to i64), i64 ptrtoint ([50 x i32]* @reltable.SSL_state_string to i64)) to i32)], align 4

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_state_string_long(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_statem_in_error(%struct.ssl_st* noundef %s) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SSL_get_state(%struct.ssl_st* noundef %s) #4
  %0 = icmp ult i32 %call1, 50
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %if.end
  %1 = sext i32 %call1 to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([50 x i32]* @reltable.SSL_state_string_long to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %if.end, %switch.lookup, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %entry ], [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), %if.end ]
  ret i8* %retval.0
}

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @SSL_get_state(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_state_string(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_statem_in_error(%struct.ssl_st* noundef %s) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SSL_get_state(%struct.ssl_st* noundef %s) #4
  %0 = icmp ult i32 %call1, 50
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %if.end
  %1 = sext i32 %call1 to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([50 x i32]* @reltable.SSL_state_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %if.end, %switch.lookup, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), %entry ], [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @SSL_alert_type_string_long(i32 noundef %value) local_unnamed_addr #2 {
entry:
  %shr = ashr i32 %value, 8
  %switch.selectcmp = icmp eq i32 %shr, 2
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0)
  %switch.selectcmp2 = icmp eq i32 %shr, 1
  %switch.select3 = select i1 %switch.selectcmp2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0), i8* %switch.select
  ret i8* %switch.select3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @SSL_alert_type_string(i32 noundef %value) local_unnamed_addr #2 {
entry:
  %shr = ashr i32 %value, 8
  %switch.selectcmp = icmp eq i32 %shr, 2
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)
  %switch.selectcmp2 = icmp eq i32 %shr, 1
  %switch.select3 = select i1 %switch.selectcmp2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0), i8* %switch.select
  ret i8* %switch.select3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @SSL_alert_desc_string(i32 noundef %value) local_unnamed_addr #2 {
entry:
  %trunc = trunc i32 %value to i8
  switch i8 %trunc, label %sw.default [
    i8 0, label %return
    i8 10, label %sw.bb1
    i8 20, label %sw.bb2
    i8 30, label %sw.bb3
    i8 40, label %sw.bb4
    i8 41, label %sw.bb5
    i8 42, label %sw.bb6
    i8 43, label %sw.bb7
    i8 44, label %sw.bb8
    i8 45, label %sw.bb9
    i8 46, label %sw.bb10
    i8 47, label %sw.bb11
    i8 21, label %sw.bb12
    i8 22, label %sw.bb13
    i8 48, label %sw.bb14
    i8 49, label %sw.bb15
    i8 50, label %sw.bb16
    i8 51, label %sw.bb17
    i8 60, label %sw.bb18
    i8 70, label %sw.bb19
    i8 71, label %sw.bb20
    i8 80, label %sw.bb21
    i8 90, label %sw.bb22
    i8 100, label %sw.bb23
    i8 110, label %sw.bb24
    i8 111, label %sw.bb25
    i8 112, label %sw.bb26
    i8 113, label %sw.bb27
    i8 114, label %sw.bb28
    i8 115, label %sw.bb29
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

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.bb15:                                          ; preds = %entry
  br label %return

sw.bb16:                                          ; preds = %entry
  br label %return

sw.bb17:                                          ; preds = %entry
  br label %return

sw.bb18:                                          ; preds = %entry
  br label %return

sw.bb19:                                          ; preds = %entry
  br label %return

sw.bb20:                                          ; preds = %entry
  br label %return

sw.bb21:                                          ; preds = %entry
  br label %return

sw.bb22:                                          ; preds = %entry
  br label %return

sw.bb23:                                          ; preds = %entry
  br label %return

sw.bb24:                                          ; preds = %entry
  br label %return

sw.bb25:                                          ; preds = %entry
  br label %return

sw.bb26:                                          ; preds = %entry
  br label %return

sw.bb27:                                          ; preds = %entry
  br label %return

sw.bb28:                                          ; preds = %entry
  br label %return

sw.bb29:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), %sw.bb29 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), %sw.bb28 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), %sw.bb27 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i64 0, i64 0), %sw.bb26 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), %sw.bb25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), %sw.bb21 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), %sw.bb20 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @SSL_alert_desc_string_long(i32 noundef %value) local_unnamed_addr #2 {
entry:
  %trunc = trunc i32 %value to i8
  switch i8 %trunc, label %sw.default [
    i8 0, label %return
    i8 10, label %sw.bb1
    i8 20, label %sw.bb2
    i8 30, label %sw.bb3
    i8 40, label %sw.bb4
    i8 41, label %sw.bb5
    i8 42, label %sw.bb6
    i8 43, label %sw.bb7
    i8 44, label %sw.bb8
    i8 45, label %sw.bb9
    i8 46, label %sw.bb10
    i8 47, label %sw.bb11
    i8 21, label %sw.bb12
    i8 22, label %sw.bb13
    i8 48, label %sw.bb14
    i8 49, label %sw.bb15
    i8 50, label %sw.bb16
    i8 51, label %sw.bb17
    i8 60, label %sw.bb18
    i8 70, label %sw.bb19
    i8 71, label %sw.bb20
    i8 80, label %sw.bb21
    i8 90, label %sw.bb22
    i8 100, label %sw.bb23
    i8 110, label %sw.bb24
    i8 111, label %sw.bb25
    i8 112, label %sw.bb26
    i8 113, label %sw.bb27
    i8 114, label %sw.bb28
    i8 115, label %sw.bb29
    i8 120, label %sw.bb30
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

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.bb15:                                          ; preds = %entry
  br label %return

sw.bb16:                                          ; preds = %entry
  br label %return

sw.bb17:                                          ; preds = %entry
  br label %return

sw.bb18:                                          ; preds = %entry
  br label %return

sw.bb19:                                          ; preds = %entry
  br label %return

sw.bb20:                                          ; preds = %entry
  br label %return

sw.bb21:                                          ; preds = %entry
  br label %return

sw.bb22:                                          ; preds = %entry
  br label %return

sw.bb23:                                          ; preds = %entry
  br label %return

sw.bb24:                                          ; preds = %entry
  br label %return

sw.bb25:                                          ; preds = %entry
  br label %return

sw.bb26:                                          ; preds = %entry
  br label %return

sw.bb27:                                          ; preds = %entry
  br label %return

sw.bb28:                                          ; preds = %entry
  br label %return

sw.bb29:                                          ; preds = %entry
  br label %return

sw.bb30:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.162, i64 0, i64 0), %sw.bb30 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.161, i64 0, i64 0), %sw.bb29 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.160, i64 0, i64 0), %sw.bb28 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.159, i64 0, i64 0), %sw.bb27 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.158, i64 0, i64 0), %sw.bb26 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.157, i64 0, i64 0), %sw.bb25 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.155, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.154, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i64 0, i64 0), %sw.bb21 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.152, i64 0, i64 0), %sw.bb20 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.151, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.150, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.145, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.143, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.138, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.135, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
