; ModuleID = 'ssl/statem/extensions_clnt.c'
source_filename = "ssl/statem/extensions_clnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.x509_st = type opaque
%struct.stack_st = type opaque
%struct.ocsp_responder_id_st = type opaque

@.str = private unnamed_addr constant [29 x i8] c"ssl/statem/extensions_clnt.c\00", align 1
@__func__.tls_construct_ctos_renegotiate = private unnamed_addr constant [31 x i8] c"tls_construct_ctos_renegotiate\00", align 1
@__func__.tls_construct_ctos_server_name = private unnamed_addr constant [31 x i8] c"tls_construct_ctos_server_name\00", align 1
@__func__.tls_construct_ctos_maxfragmentlen = private unnamed_addr constant [34 x i8] c"tls_construct_ctos_maxfragmentlen\00", align 1
@__func__.tls_construct_ctos_srp = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_srp\00", align 1
@__func__.tls_construct_ctos_ec_pt_formats = private unnamed_addr constant [33 x i8] c"tls_construct_ctos_ec_pt_formats\00", align 1
@__func__.tls_construct_ctos_supported_groups = private unnamed_addr constant [36 x i8] c"tls_construct_ctos_supported_groups\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"No groups enabled for max supported SSL/TLS version\00", align 1
@__func__.tls_construct_ctos_session_ticket = private unnamed_addr constant [34 x i8] c"tls_construct_ctos_session_ticket\00", align 1
@__func__.tls_construct_ctos_sig_algs = private unnamed_addr constant [28 x i8] c"tls_construct_ctos_sig_algs\00", align 1
@__func__.tls_construct_ctos_status_request = private unnamed_addr constant [34 x i8] c"tls_construct_ctos_status_request\00", align 1
@__func__.tls_construct_ctos_npn = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_npn\00", align 1
@__func__.tls_construct_ctos_alpn = private unnamed_addr constant [24 x i8] c"tls_construct_ctos_alpn\00", align 1
@__func__.tls_construct_ctos_use_srtp = private unnamed_addr constant [28 x i8] c"tls_construct_ctos_use_srtp\00", align 1
@__func__.tls_construct_ctos_etm = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_etm\00", align 1
@__func__.tls_construct_ctos_sct = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_sct\00", align 1
@__func__.tls_construct_ctos_ems = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_ems\00", align 1
@__func__.tls_construct_ctos_supported_versions = private unnamed_addr constant [38 x i8] c"tls_construct_ctos_supported_versions\00", align 1
@__func__.tls_construct_ctos_psk_kex_modes = private unnamed_addr constant [33 x i8] c"tls_construct_ctos_psk_kex_modes\00", align 1
@__func__.tls_construct_ctos_key_share = private unnamed_addr constant [29 x i8] c"tls_construct_ctos_key_share\00", align 1
@__func__.tls_construct_ctos_cookie = private unnamed_addr constant [26 x i8] c"tls_construct_ctos_cookie\00", align 1
@__func__.tls_construct_ctos_early_data = private unnamed_addr constant [30 x i8] c"tls_construct_ctos_early_data\00", align 1
@__func__.tls_construct_ctos_padding = private unnamed_addr constant [27 x i8] c"tls_construct_ctos_padding\00", align 1
@__func__.tls_construct_ctos_psk = private unnamed_addr constant [23 x i8] c"tls_construct_ctos_psk\00", align 1
@__func__.tls_construct_ctos_post_handshake_auth = private unnamed_addr constant [39 x i8] c"tls_construct_ctos_post_handshake_auth\00", align 1
@__func__.tls_parse_stoc_renegotiate = private unnamed_addr constant [27 x i8] c"tls_parse_stoc_renegotiate\00", align 1
@__func__.tls_parse_stoc_maxfragmentlen = private unnamed_addr constant [30 x i8] c"tls_parse_stoc_maxfragmentlen\00", align 1
@__func__.tls_parse_stoc_server_name = private unnamed_addr constant [27 x i8] c"tls_parse_stoc_server_name\00", align 1
@__func__.tls_parse_stoc_ec_pt_formats = private unnamed_addr constant [29 x i8] c"tls_parse_stoc_ec_pt_formats\00", align 1
@__func__.tls_parse_stoc_session_ticket = private unnamed_addr constant [30 x i8] c"tls_parse_stoc_session_ticket\00", align 1
@__func__.tls_parse_stoc_status_request = private unnamed_addr constant [30 x i8] c"tls_parse_stoc_status_request\00", align 1
@__func__.tls_parse_stoc_sct = private unnamed_addr constant [19 x i8] c"tls_parse_stoc_sct\00", align 1
@__func__.tls_parse_stoc_npn = private unnamed_addr constant [19 x i8] c"tls_parse_stoc_npn\00", align 1
@__func__.tls_parse_stoc_alpn = private unnamed_addr constant [20 x i8] c"tls_parse_stoc_alpn\00", align 1
@__func__.tls_parse_stoc_use_srtp = private unnamed_addr constant [24 x i8] c"tls_parse_stoc_use_srtp\00", align 1
@__func__.tls_parse_stoc_supported_versions = private unnamed_addr constant [34 x i8] c"tls_parse_stoc_supported_versions\00", align 1
@__func__.tls_parse_stoc_key_share = private unnamed_addr constant [25 x i8] c"tls_parse_stoc_key_share\00", align 1
@__func__.tls_parse_stoc_cookie = private unnamed_addr constant [22 x i8] c"tls_parse_stoc_cookie\00", align 1
@__func__.tls_parse_stoc_early_data = private unnamed_addr constant [26 x i8] c"tls_parse_stoc_early_data\00", align 1
@__func__.tls_parse_stoc_psk = private unnamed_addr constant [19 x i8] c"tls_parse_stoc_psk\00", align 1
@__func__.add_key_share = private unnamed_addr constant [14 x i8] c"add_key_share\00", align 1
@__func__.ssl_next_proto_validate = private unnamed_addr constant [24 x i8] c"ssl_next_proto_validate\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_renegotiate(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %0 = load i32, i32* %renegotiate, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 65281, i64 noundef 2) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then11, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  %1 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !22
  %call6 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef %1, i64 noundef 1) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %call9 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %return

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_ctos_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false8, %entry, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 2, %entry ], [ 1, %lor.lhs.false8 ]
  ret i32 %retval.0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_server_name(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %0 = load i8*, i8** %hostname, align 8, !tbaa !23
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then23, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then23, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then23, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %1 = load i8*, i8** %hostname, align 8, !tbaa !23
  %call14 = tail call i64 @strlen(i8* noundef %1) #13
  %call15 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %1, i64 noundef %call14, i64 noundef 2) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then23, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %call18 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %return

if.then23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_ctos_server_name, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false20, %entry, %if.then23
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 2, %entry ], [ 1, %lor.lhs.false20 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_maxfragmentlen(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 35
  %0 = load i8, i8* %max_fragment_len_mode, align 4, !tbaa !24
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then13, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %1 = load i8, i8* %max_fragment_len_mode, align 4, !tbaa !24
  %conv7 = zext i8 %1 to i32
  %call8 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv7, i64 noundef 1) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false4
  %call11 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %return

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false4, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_maxfragmentlen, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false10, %entry, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 2, %entry ], [ 1, %lor.lhs.false10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_srp(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %0 = load i8*, i8** %login, align 8, !tbaa !25
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 12, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then23, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then23, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef %pkt, i32 noundef 1) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then23, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %1 = load i8*, i8** %login, align 8, !tbaa !25
  %call14 = tail call i64 @strlen(i8* noundef %1) #13
  %call15 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %1, i64 noundef %call14) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then23, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %call18 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %return

if.then23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_srp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false20, %entry, %if.then23
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 2, %entry ], [ 1, %lor.lhs.false20 ]
  ret i32 %retval.0
}

declare i32 @WPACKET_set_flags(%struct.wpacket_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_ec_pt_formats(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %pformats = alloca i8*, align 8
  %num_formats = alloca i64, align 8
  %min_version = alloca i32, align 4
  %max_version = alloca i32, align 4
  %0 = bitcast i8** %pformats to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i64* %num_formats to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast i32* %min_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %3 = bitcast i32* %max_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %call = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %min_version, i32* noundef nonnull %max_version, i32* noundef null) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %min_version, align 4, !tbaa !26
  %5 = load i32, i32* %max_version, align 4, !tbaa !26
  %call1 = call fastcc i32 @use_ecc(%struct.ssl_st* noundef %s, i32 noundef %4, i32 noundef %5) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @tls1_get_formatlist(%struct.ssl_st* noundef %s, i8** noundef nonnull %pformats, i64* noundef nonnull %num_formats) #12
  %call4 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 11, i64 noundef 2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call6 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %pformats, align 8, !tbaa !27
  %7 = load i64, i64* %num_formats, align 8, !tbaa !28
  %call9 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %6, i64 noundef %7, i64 noundef 1) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup.sink.split, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end3, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false11, %entry
  %.sink29 = phi i32 [ 164, %entry ], [ 178, %lor.lhs.false11 ], [ 178, %lor.lhs.false8 ], [ 178, %lor.lhs.false ], [ 178, %if.end3 ]
  %.sink = phi i32 [ %call, %entry ], [ 786691, %lor.lhs.false11 ], [ 786691, %lor.lhs.false8 ], [ 786691, %lor.lhs.false ], [ 786691, %if.end3 ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink29, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_ctos_ec_pt_formats, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false11, %if.end
  %retval.0 = phi i32 [ 2, %if.end ], [ 1, %lor.lhs.false11 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @ssl_get_min_max_version(%struct.ssl_st* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @use_ecc(%struct.ssl_st* noundef %s, i32 noundef %min_version, i32 noundef %max_version) unnamed_addr #0 {
entry:
  %pgroups = alloca i16*, align 8
  %num_groups = alloca i64, align 8
  %0 = bitcast i16** %pgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i16* null, i16** %pgroups, align 8, !tbaa !27
  %1 = bitcast i64* %num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %2 = load i32, i32* %version, align 8, !tbaa !29
  %cmp = icmp eq i32 %2, 768
  br i1 %cmp, label %cleanup34, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef nonnull %s) #12
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call) #15
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #12
  %cmp374 = icmp sgt i32 %call2, 0
  br i1 %cmp374, label %for.body, label %for.end

for.cond:                                         ; preds = %lor.lhs.false9
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !30

for.body:                                         ; preds = %if.end, %for.cond
  %i.075 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.075) #12
  %algorithm_mkey = getelementptr inbounds i8, i8* %call5, i64 28
  %3 = bitcast i8* %algorithm_mkey to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !32
  %5 = and i32 %4, 132
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end17

lor.lhs.false:                                    ; preds = %for.body
  %algorithm_auth = getelementptr inbounds i8, i8* %call5, i64 32
  %6 = bitcast i8* %algorithm_auth to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !34
  %8 = and i32 %7, 8
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end17

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %min_tls = getelementptr inbounds i8, i8* %call5, i64 44
  %9 = bitcast i8* %min_tls to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !35
  %cmp10 = icmp sgt i32 %10, 771
  %inc = add nuw nsw i32 %i.075, 1
  br i1 %cmp10, label %if.end17, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call) #15
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call14) #12
  br label %cleanup34

if.end17:                                         ; preds = %lor.lhs.false, %for.body, %lor.lhs.false9
  %call14.c73 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call) #15
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call14.c73) #12
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef %s, i16** noundef nonnull %pgroups, i64* noundef nonnull %num_groups) #12
  %11 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp1976.not = icmp eq i64 %11, 0
  br i1 %cmp1976.not, label %cleanup34, label %for.body21

for.body21:                                       ; preds = %if.end17, %for.inc31.critedge
  %j.077 = phi i64 [ %inc32, %for.inc31.critedge ], [ 0, %if.end17 ]
  %12 = load i16*, i16** %pgroups, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %j.077
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %call22 = call i32 @tls_valid_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %13, i32 noundef %min_version, i32 noundef %max_version, i32 noundef 1, i32* noundef null) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc31.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body21
  %call24 = call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %13, i32 noundef 131076) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.inc31.critedge, label %cleanup34

for.inc31.critedge:                               ; preds = %for.body21, %land.lhs.true
  %inc32 = add nuw i64 %j.077, 1
  %14 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp19 = icmp ult i64 %inc32, %14
  br i1 %cmp19, label %for.body21, label %cleanup34, !llvm.loop !37

cleanup34:                                        ; preds = %land.lhs.true, %for.inc31.critedge, %if.end17, %for.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.end ], [ 0, %if.end17 ], [ 1, %land.lhs.true ], [ 0, %for.inc31.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.2
}

declare void @tls1_get_formatlist(%struct.ssl_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_supported_groups(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %pgroups = alloca i16*, align 8
  %num_groups = alloca i64, align 8
  %min_version = alloca i32, align 4
  %max_version = alloca i32, align 4
  %okfortls13 = alloca i32, align 4
  %0 = bitcast i16** %pgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i16* null, i16** %pgroups, align 8, !tbaa !27
  %1 = bitcast i64* %num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %num_groups, align 8, !tbaa !28
  %2 = bitcast i32* %min_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %3 = bitcast i32* %max_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %call = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %min_version, i32* noundef nonnull %max_version, i32* noundef null) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef %call, i8* noundef null) #12
  br label %cleanup58

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %min_version, align 4, !tbaa !26
  %5 = load i32, i32* %max_version, align 4, !tbaa !26
  %call1 = call fastcc i32 @use_ecc(%struct.ssl_st* noundef %s, i32 noundef %4, i32 noundef %5) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !38
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !39
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !41
  %and = and i32 %8, 8
  %tobool2 = icmp ne i32 %and, 0
  %9 = load i32, i32* %max_version, align 4
  %cmp3 = icmp slt i32 %9, 772
  %or.cond = select i1 %tobool2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup58, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef %s, i16** noundef nonnull %pgroups, i64* noundef nonnull %num_groups) #12
  %call6 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 10, i64 noundef 2) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then17, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end5
  %call9 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef %pkt, i32 noundef 1) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false14
  %10 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp19104.not = icmp eq i64 %10, 0
  br i1 %cmp19104.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = bitcast i32* %okfortls13 to i8*
  br label %for.body

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %if.end5
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup58

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0107 = phi i64 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc ]
  %added.0106 = phi i64 [ 0, %for.body.lr.ph ], [ %added.2.ph, %for.inc ]
  %tls13added.0105 = phi i64 [ 0, %for.body.lr.ph ], [ %tls13added.3.ph, %for.inc ]
  %12 = load i16*, i16** %pgroups, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %i.0107
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #14
  %14 = load i32, i32* %min_version, align 4, !tbaa !26
  %15 = load i32, i32* %max_version, align 4, !tbaa !26
  %call20 = call i32 @tls_valid_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %13, i32 noundef %14, i32 noundef %15, i32 noundef 0, i32* noundef nonnull %okfortls13) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %for.body
  %call23 = call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %13, i32 noundef 131076) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.inc, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %conv = zext i16 %13 to i32
  %call26 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.then25
  %16 = load i32, i32* %okfortls13, align 4, !tbaa !26
  %tobool30 = icmp ne i32 %16, 0
  %17 = load i32, i32* %max_version, align 4
  %cmp32 = icmp eq i32 %17, 772
  %or.cond66 = select i1 %tobool30, i1 %cmp32, i1 false
  %inc = zext i1 %or.cond66 to i64
  %spec.select = add i64 %tls13added.0105, %inc
  %inc36 = add i64 %added.0106, 1
  br label %for.inc

cleanup:                                          ; preds = %if.then25
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #14
  br label %cleanup58

for.inc:                                          ; preds = %if.end29, %land.lhs.true22, %for.body
  %tls13added.3.ph = phi i64 [ %tls13added.0105, %for.body ], [ %tls13added.0105, %land.lhs.true22 ], [ %spec.select, %if.end29 ]
  %added.2.ph = phi i64 [ %added.0106, %for.body ], [ %added.0106, %land.lhs.true22 ], [ %inc36, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #14
  %inc39 = add nuw i64 %i.0107, 1
  %18 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp19 = icmp ult i64 %inc39, %18
  br i1 %cmp19, label %for.body, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %tls13added.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %tls13added.3.ph, %for.inc ]
  %added.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %added.2.ph, %for.inc ]
  %call40 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %for.end
  %call43 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end50

if.then45:                                        ; preds = %lor.lhs.false42, %for.end
  %cmp46 = icmp eq i64 %added.0.lcssa, 0
  call void @ERR_new() #12
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then45
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 295, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #12
  br label %cleanup58

if.else:                                          ; preds = %if.then45
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup58

if.end50:                                         ; preds = %lor.lhs.false42
  %cmp51 = icmp eq i64 %tls13added.0.lcssa, 0
  %19 = load i32, i32* %max_version, align 4
  %cmp54 = icmp eq i32 %19, 772
  %or.cond67 = select i1 %cmp51, i1 %cmp54, i1 false
  br i1 %or.cond67, label %if.then56, label %cleanup58

if.then56:                                        ; preds = %if.end50
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_ctos_supported_groups, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 295, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #12
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup, %if.end50, %if.then48, %if.else, %land.lhs.true, %if.then56, %if.then17, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %cleanup ], [ 0, %if.then56 ], [ 0, %if.then17 ], [ 2, %land.lhs.true ], [ 0, %if.else ], [ 0, %if.then48 ], [ 1, %if.end50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.2
}

declare void @tls1_get_supported_groups(%struct.ssl_st* noundef, i16** noundef, i64* noundef) local_unnamed_addr #1

declare i32 @tls_valid_group(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

declare i32 @tls_group_allowed(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_session_ticket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @tls_use_ticket(%struct.ssl_st* noundef %s) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  %0 = load i32, i32* %new_session, align 4, !tbaa !44
  %tobool1.not = icmp eq i32 %0, 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %cmp.not = icmp eq %struct.ssl_session_st* %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp.not, label %land.lhs.true50, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 26, i32 1
  %2 = load i8*, i8** %tick, align 8, !tbaa !46
  %cmp4.not = icmp eq i8* %2, null
  br i1 %cmp4.not, label %land.lhs.true14, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 0
  %3 = load i32, i32* %ssl_version, align 8, !tbaa !49
  %cmp7.not = icmp eq i32 %3, 772
  br i1 %cmp7.not, label %land.lhs.true14, label %if.then8

if.then8:                                         ; preds = %land.lhs.true5
  %ticklen11 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 26, i32 2
  %4 = load i64, i64* %ticklen11, align 8, !tbaa !50
  br label %if.end47

if.else:                                          ; preds = %if.end
  br i1 %cmp.not, label %land.lhs.true50, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true2, %land.lhs.true5, %if.else
  %session12106 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %session_ticket = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 19
  %5 = load %struct.tls_session_ticket_ext_st*, %struct.tls_session_ticket_ext_st** %session_ticket, align 8, !tbaa !51
  %cmp16.not = icmp eq %struct.tls_session_ticket_ext_st* %5, null
  br i1 %cmp16.not, label %land.lhs.true50, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %data = getelementptr inbounds %struct.tls_session_ticket_ext_st, %struct.tls_session_ticket_ext_st* %5, i64 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !52
  %cmp20.not = icmp eq i8* %6, null
  br i1 %cmp20.not, label %land.lhs.true50, label %if.then21

if.then21:                                        ; preds = %land.lhs.true17
  %length = getelementptr inbounds %struct.tls_session_ticket_ext_st, %struct.tls_session_ticket_ext_st* %5, i64 0, i32 0
  %7 = load i16, i16* %length, align 8, !tbaa !54
  %conv = zext i16 %7 to i64
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 270) #12
  %8 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session12106, align 8, !tbaa !45
  %tick27 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 26, i32 1
  store i8* %call24, i8** %tick27, align 8, !tbaa !46
  %cmp31 = icmp eq i8* %call24, null
  br i1 %cmp31, label %cleanup.sink.split, label %if.end34

if.end34:                                         ; preds = %if.then21
  %9 = load %struct.tls_session_ticket_ext_st*, %struct.tls_session_ticket_ext_st** %session_ticket, align 8, !tbaa !51
  %data40 = getelementptr inbounds %struct.tls_session_ticket_ext_st, %struct.tls_session_ticket_ext_st* %9, i64 0, i32 1
  %10 = load i8*, i8** %data40, align 8, !tbaa !52
  %call41 = tail call i8* @memcpy(i8* noundef nonnull %call24, i8* noundef %10, i64 noundef %conv) #12
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session12106, align 8, !tbaa !45
  %ticklen44 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %11, i64 0, i32 26, i32 2
  store i64 %conv, i64* %ticklen44, align 8, !tbaa !50
  br label %if.end47

if.end47:                                         ; preds = %if.end34, %if.then8
  %ticklen.0 = phi i64 [ %conv, %if.end34 ], [ %4, %if.then8 ]
  %cmp48 = icmp eq i64 %ticklen.0, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end62

land.lhs.true50:                                  ; preds = %land.lhs.true, %if.else, %land.lhs.true14, %land.lhs.true17, %if.end47
  %session_ticket52 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 19
  %12 = load %struct.tls_session_ticket_ext_st*, %struct.tls_session_ticket_ext_st** %session_ticket52, align 8, !tbaa !51
  %cmp53.not = icmp eq %struct.tls_session_ticket_ext_st* %12, null
  br i1 %cmp53.not, label %if.end62, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %data58 = getelementptr inbounds %struct.tls_session_ticket_ext_st, %struct.tls_session_ticket_ext_st* %12, i64 0, i32 1
  %13 = load i8*, i8** %data58, align 8, !tbaa !52
  %cmp59 = icmp eq i8* %13, null
  br i1 %cmp59, label %cleanup, label %if.end62

if.end62:                                         ; preds = %land.lhs.true55, %land.lhs.true50, %if.end47
  %ticklen.0102 = phi i64 [ 0, %land.lhs.true55 ], [ 0, %land.lhs.true50 ], [ %ticklen.0, %if.end47 ]
  %call63 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 35, i64 noundef 2) #12
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62
  %session65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %14 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session65, align 8, !tbaa !45
  %tick67 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %14, i64 0, i32 26, i32 1
  %15 = load i8*, i8** %tick67, align 8, !tbaa !46
  %call68 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %15, i64 noundef %ticklen.0102, i64 noundef 2) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end62, %lor.lhs.false, %if.then21
  %.sink = phi i32 [ 272, %if.then21 ], [ 288, %lor.lhs.false ], [ 288, %if.end62 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false, %land.lhs.true55, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 2, %land.lhs.true55 ], [ 1, %lor.lhs.false ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @tls_use_ticket(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_sig_algs(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %salg = alloca i16*, align 8
  %0 = bitcast i16** %salg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !38
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !39
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !41
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %4 = load i32, i32* %client_version, align 4, !tbaa !55
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp sgt i32 %4, 770
  br i1 %cmp, label %if.end, label %cleanup

land.lhs.true6:                                   ; preds = %entry
  %cmp8 = icmp ne i32 %4, 256
  %phi.cmp = icmp slt i32 %4, 65278
  %spec.select = and i1 %cmp8, %phi.cmp
  br i1 %spec.select, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true
  %call = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i16** noundef nonnull %salg) #12
  %call11 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 13, i64 noundef 2) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then28, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then28, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then28, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %5 = load i16*, i16** %salg, align 8, !tbaa !27
  %call20 = call i32 @tls12_copy_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i16* noundef %5, i64 noundef %call) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %cleanup

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls_construct_ctos_sig_algs, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false25, %land.lhs.true6, %if.then28
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 2, %land.lhs.true6 ], [ 1, %lor.lhs.false25 ], [ 2, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i64 @tls12_get_psigalgs(%struct.ssl_st* noundef, i32 noundef, i16** noundef) local_unnamed_addr #1

declare i32 @tls12_copy_sigalgs(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i16* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_status_request(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %idbytes = alloca i8*, align 8
  %extbytes = alloca i8*, align 8
  %cmp.not = icmp eq %struct.x509_st* %x, null
  br i1 %cmp.not, label %if.end, label %cleanup79

if.end:                                           ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %0 = load i32, i32* %status_type, align 8, !tbaa !56
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %if.end3, label %cleanup79

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 5, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then12, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false9
  %ids = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 0
  %1 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !57
  %call15117 = call fastcc %struct.stack_st* @ossl_check_const_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %1) #15
  %call16118 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15117) #12
  %cmp17119 = icmp sgt i32 %call16118, 0
  br i1 %cmp17119, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = bitcast i8** %idbytes to i8*
  br label %for.body

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.end3
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup79

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  %3 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !57
  %call21 = call fastcc %struct.stack_st* @ossl_check_const_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %3) #15
  %call22 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call21, i32 noundef %i.0120) #12
  %4 = bitcast i8* %call22 to %struct.ocsp_responder_id_st*
  %call23 = call i32 @i2d_OCSP_RESPID(%struct.ocsp_responder_id_st* noundef %4, i8** noundef null) #12
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then32, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %for.body
  %conv115 = zext i32 %call23 to i64
  %call26 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %conv115, i8** noundef nonnull %idbytes, i64 noundef 2) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = call i32 @i2d_OCSP_RESPID(%struct.ocsp_responder_id_st* noundef %4, i8** noundef nonnull %idbytes) #12
  %cmp30.not = icmp eq i32 %call29, %call23
  br i1 %cmp30.not, label %cleanup, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false28, %lor.lhs.false25, %for.body
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  br label %cleanup79

cleanup:                                          ; preds = %lor.lhs.false28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  %inc = add nuw nsw i32 %i.0120, 1
  %5 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !57
  %call15 = call fastcc %struct.stack_st* @ossl_check_const_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %5) #15
  %call16 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #12
  %cmp17 = icmp slt i32 %inc, %call16
  br i1 %cmp17, label %for.body, label %for.end, !llvm.loop !58

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %call36 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %for.end
  %call39 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false38, %for.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup79

if.end42:                                         ; preds = %lor.lhs.false38
  %exts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 1
  %6 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !59
  %tobool45.not = icmp eq %struct.stack_st_X509_EXTENSION* %6, null
  br i1 %tobool45.not, label %if.end71, label %if.then46

if.then46:                                        ; preds = %if.end42
  %7 = bitcast i8** %extbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #14
  %call50 = call i32 @i2d_X509_EXTENSIONS(%struct.stack_st_X509_EXTENSION* noundef nonnull %6, i8** noundef null) #12
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then46
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  br label %cleanup79

if.end54:                                         ; preds = %if.then46
  %conv55116 = zext i32 %call50 to i64
  %call56 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv55116, i8** noundef nonnull %extbytes) #12
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then65, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.end54
  %8 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !59
  %call62 = call i32 @i2d_X509_EXTENSIONS(%struct.stack_st_X509_EXTENSION* noundef %8, i8** noundef nonnull %extbytes) #12
  %cmp63.not = icmp eq i32 %call62, %call50
  br i1 %cmp63.not, label %cleanup67, label %if.then65

if.then65:                                        ; preds = %lor.lhs.false58, %if.end54
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  br label %cleanup79

cleanup67:                                        ; preds = %lor.lhs.false58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  br label %if.end71

if.end71:                                         ; preds = %cleanup67, %if.end42
  %call72 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then77, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end71
  %call75 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %cleanup79

if.then77:                                        ; preds = %lor.lhs.false74, %if.end71
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_ctos_status_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup79

cleanup79:                                        ; preds = %lor.lhs.false74, %if.then53, %if.then65, %if.then32, %if.end, %entry, %if.then77, %if.then41, %if.then12
  %retval.3 = phi i32 [ 0, %if.then77 ], [ 0, %if.then41 ], [ 0, %if.then12 ], [ 2, %entry ], [ 2, %if.end ], [ 0, %if.then32 ], [ 0, %if.then65 ], [ 0, %if.then53 ], [ 1, %lor.lhs.false74 ]
  ret i32 %retval.3
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_RESPID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @i2d_OCSP_RESPID(%struct.ocsp_responder_id_st* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare i32 @i2d_X509_EXTENSIONS(%struct.stack_st_X509_EXTENSION* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_npn(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %npn_select_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 60, i32 22
  %1 = load i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %npn_select_cb, align 8, !tbaa !61
  %cmp = icmp eq i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* %1, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %2 = load i64, i64* %finish_md_len, align 8, !tbaa !66
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %3 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !67
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2, %lor.lhs.false
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 13172, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %return

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_npn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false6, %entry, %lor.lhs.false2, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 2, %lor.lhs.false2 ], [ 2, %entry ], [ 1, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_alpn(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %alpn_sent = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 31
  store i32 0, i32* %alpn_sent, align 8, !tbaa !68
  %alpn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 24
  %0 = load i8*, i8** %alpn, align 8, !tbaa !69
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %1 = load i64, i64* %finish_md_len, align 8, !tbaa !66
  %cmp2 = icmp eq i64 %1, 0
  br i1 %cmp2, label %if.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %2 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !67
  %cmp6 = icmp eq i64 %2, 0
  br i1 %cmp6, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false3, %lor.lhs.false
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 16, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then19, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %call8 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then19, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %3 = load i8*, i8** %alpn, align 8, !tbaa !69
  %alpn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 25
  %4 = load i64, i64* %alpn_len, align 8, !tbaa !70
  %call14 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %3, i64 noundef %4, i64 noundef 2) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false10, %lor.lhs.false7, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_ctos_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.end20:                                         ; preds = %lor.lhs.false16
  store i32 1, i32* %alpn_sent, align 8, !tbaa !68
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false3, %if.end20, %if.then19
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 0, %if.then19 ], [ 2, %lor.lhs.false3 ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_use_srtp(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef %s) #12
  %cmp = icmp eq %struct.stack_st_SRTP_PROTECTION_PROFILE* %call, null
  br i1 %cmp, label %cleanup30, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 14, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup30.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup30.sink.split, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup30.sink.split, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false4
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef nonnull %call) #15
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #12
  %cmp1151 = icmp sgt i32 %call10, 0
  br i1 %cmp1151, label %for.body, label %for.end

for.cond:                                         ; preds = %lor.lhs.false15
  %exitcond.not = icmp eq i32 %inc, %call10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !71

for.body:                                         ; preds = %if.end8, %for.cond
  %i.052 = phi i32 [ %inc, %for.cond ], [ 0, %if.end8 ]
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.052) #12
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cleanup30.sink.split, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %for.body
  %id = getelementptr inbounds i8, i8* %call13, i64 8
  %0 = bitcast i8* %id to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !72
  %conv = trunc i64 %1 to i32
  %call16 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #12
  %tobool17.not = icmp eq i32 %call16, 0
  %inc = add nuw nsw i32 %i.052, 1
  br i1 %tobool17.not, label %cleanup30.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end8
  %call20 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup30.sink.split, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.end
  %call23 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup30.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup30.sink.split, label %cleanup30

cleanup30.sink.split:                             ; preds = %for.body, %lor.lhs.false15, %for.end, %lor.lhs.false22, %lor.lhs.false25, %if.end, %lor.lhs.false, %lor.lhs.false4
  %.sink = phi i32 [ 446, %lor.lhs.false4 ], [ 446, %lor.lhs.false ], [ 446, %if.end ], [ 464, %lor.lhs.false25 ], [ 464, %lor.lhs.false22 ], [ 464, %for.end ], [ 456, %lor.lhs.false15 ], [ 456, %for.body ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls_construct_ctos_use_srtp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %lor.lhs.false25, %entry
  %retval.2 = phi i32 [ 2, %entry ], [ 1, %lor.lhs.false25 ], [ 0, %cleanup30.sink.split ]
  ret i32 %retval.2
}

declare %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SRTP_PROTECTION_PROFILE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_etm(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !74
  %and = and i64 %0, 524288
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 22, i64 noundef 2) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %return

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_etm, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 2, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_sct(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  %0 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !75
  %cmp = icmp ne i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %0, null
  %cmp1.not = icmp eq %struct.x509_st* %x, null
  %or.cond = and i1 %cmp1.not, %cmp
  br i1 %or.cond, label %if.end3, label %return

if.end3:                                          ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 18, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call4 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %return

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_sct, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 2, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_ems(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !74
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 23, i64 noundef 2) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %return

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_ems, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 2, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_supported_versions(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %min_version = alloca i32, align 4
  %max_version = alloca i32, align 4
  %0 = bitcast i32* %min_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i32* %max_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  %call = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %min_version, i32* noundef nonnull %max_version, i32* noundef null) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %max_version, align 4, !tbaa !26
  %cmp1 = icmp slt i32 %2, 772
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 43, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call5 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false7
  %3 = load i32, i32* %max_version, align 4, !tbaa !26
  %4 = load i32, i32* %min_version, align 4, !tbaa !26
  %cmp12.not41 = icmp slt i32 %3, %4
  br i1 %cmp12.not41, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %currv.042, -1
  %5 = load i32, i32* %min_version, align 4, !tbaa !26
  %cmp12.not.not = icmp sgt i32 %currv.042, %5
  br i1 %cmp12.not.not, label %for.body, label %for.end, !llvm.loop !76

for.body:                                         ; preds = %if.end11, %for.cond
  %currv.042 = phi i32 [ %dec, %for.cond ], [ %3, %if.end11 ]
  %call13 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %currv.042, i64 noundef 2) #12
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup.sink.split, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end11
  %call17 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.sink.split, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %for.end
  %call20 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %for.body, %for.end, %lor.lhs.false19, %if.end3, %lor.lhs.false, %lor.lhs.false7, %entry
  %.sink43 = phi i32 [ 531, %entry ], [ 545, %lor.lhs.false7 ], [ 545, %lor.lhs.false ], [ 545, %if.end3 ], [ 556, %lor.lhs.false19 ], [ 556, %for.end ], [ 551, %for.body ]
  %.sink = phi i32 [ %call, %entry ], [ 786691, %lor.lhs.false7 ], [ 786691, %lor.lhs.false ], [ 786691, %if.end3 ], [ 786691, %lor.lhs.false19 ], [ 786691, %for.end ], [ 786691, %for.body ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink43, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.tls_construct_ctos_supported_versions, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false19, %if.end
  %retval.0 = phi i32 [ 2, %if.end ], [ 1, %lor.lhs.false19 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_psk_kex_modes(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !74
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 45, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %conv35 = and i64 %0, 1024
  %tobool10.not = icmp eq i64 %conv35, 0
  br i1 %tobool10.not, label %lor.lhs.false13, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %call11 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true, %lor.lhs.false9
  %call14 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false13, %land.lhs.true, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_ctos_psk_kex_modes, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false16
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %spec.select = select i1 %tobool10.not, i32 2, i32 3
  store i32 %spec.select, i32* %psk_kex_mode, align 8, !tbaa !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_key_share(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %num_groups = alloca i64, align 8
  %pgroups = alloca i16*, align 8
  %0 = bitcast i64* %num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %num_groups, align 8, !tbaa !28
  %1 = bitcast i16** %pgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i16* null, i16** %pgroups, align 8, !tbaa !27
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 51, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_ctos_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef %s, i16** noundef nonnull %pgroups, i64* noundef nonnull %num_groups) #12
  %group_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %2 = load i16, i16* %group_id, align 2, !tbaa !78
  %cmp.not = icmp eq i16 %2, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.end22

for.cond.preheader:                               ; preds = %if.end
  %3 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp1063.not = icmp eq i64 %3, 0
  br i1 %cmp1063.not, label %if.then21, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.064 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %4 = load i16*, i16** %pgroups, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %i.064
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %call12 = call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %5, i32 noundef 131076) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.end17

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.064, 1
  %6 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp10 = icmp ult i64 %inc, %6
  br i1 %cmp10, label %for.body, label %if.then21, !llvm.loop !79

if.end17:                                         ; preds = %for.body
  %7 = load i16*, i16** %pgroups, align 8, !tbaa !27
  %arrayidx16 = getelementptr inbounds i16, i16* %7, i64 %i.064
  %8 = load i16, i16* %arrayidx16, align 2, !tbaa !36
  %cmp19 = icmp eq i16 %8, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.inc, %for.cond.preheader, %if.end17
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_ctos_key_share, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 101, i8* noundef null) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end, %if.end17
  %curve_id.061 = phi i16 [ %8, %if.end17 ], [ %2, %if.end ]
  %conv18 = zext i16 %curve_id.061 to i32
  %call24 = call fastcc i32 @add_key_share(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %conv18) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %cleanup

if.then33:                                        ; preds = %lor.lhs.false30, %if.end27
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 698, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_ctos_key_share, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false30, %if.end22, %if.then33, %if.then21, %if.then
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then33 ], [ 0, %if.then ], [ 0, %if.end22 ], [ 1, %lor.lhs.false30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_key_share(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %curve_id) unnamed_addr #0 {
entry:
  %encoded_point = alloca i8*, align 8
  %0 = bitcast i8** %encoded_point to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %encoded_point, align 8, !tbaa !27
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  %cmp.not = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %2 = load i32, i32* %hello_retry_request, align 8, !tbaa !81
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 601, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.add_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv8 = trunc i32 %curve_id to i16
  %call = tail call %struct.evp_pkey_st* @ssl_generate_pkey_group(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv8) #12
  %cmp9 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp9, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then, %if.else
  %key_share_key.0 = phi %struct.evp_pkey_st* [ %call, %if.else ], [ %1, %if.then ]
  %call14 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %key_share_key.0, i8** noundef nonnull %encoded_point) #12
  %cmp15 = icmp eq i64 %call14, 0
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %curve_id, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %3 = load i8*, i8** %encoded_point, align 8, !tbaa !27
  %call20 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %3, i64 noundef %call14, i64 noundef 2) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false
  store %struct.evp_pkey_st* %key_share_key.0, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  %conv27 = trunc i32 %curve_id to i16
  %group_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  store i16 %conv27, i16* %group_id, align 2, !tbaa !78
  %4 = load i8*, i8** %encoded_point, align 8, !tbaa !27
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 638) #12
  br label %cleanup

err:                                              ; preds = %if.end18, %lor.lhs.false, %if.end13
  %.sink56 = phi i32 [ 620, %if.end13 ], [ 627, %lor.lhs.false ], [ 627, %if.end18 ]
  %.sink = phi i32 [ 524304, %if.end13 ], [ 786691, %lor.lhs.false ], [ 786691, %if.end18 ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.add_key_share, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #12
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  %cmp32 = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %err
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %key_share_key.0) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %err
  %6 = load i8*, i8** %encoded_point, align 8, !tbaa !27
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 644) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end35, %if.end23, %if.then4
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 1, %if.end23 ], [ 0, %if.then4 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_cookie(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %tls13_cookie_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 33
  %0 = load i64, i64* %tls13_cookie_len, align 8, !tbaa !82
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 44, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then12, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tls13_cookie = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 32
  %1 = load i8*, i8** %tls13_cookie, align 8, !tbaa !83
  %2 = load i64, i64* %tls13_cookie_len, align 8, !tbaa !82
  %call7 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %1, i64 noundef %2, i64 noundef 2) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false3
  %call10 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %end

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_ctos_cookie, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %end

end:                                              ; preds = %lor.lhs.false9, %if.then12
  %ret.0 = phi i32 [ 0, %if.then12 ], [ 1, %lor.lhs.false9 ]
  %tls13_cookie15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 32
  %3 = load i8*, i8** %tls13_cookie15, align 8, !tbaa !83
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 728) #12
  store i8* null, i8** %tls13_cookie15, align 8, !tbaa !83
  store i64 0, i64* %tls13_cookie_len, align 8, !tbaa !82
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 2, %entry ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_early_data(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %identity = alloca [257 x i8], align 16
  %id = alloca i8*, align 8
  %idlen = alloca i64, align 8
  %psksess = alloca %struct.ssl_session_st*, align 8
  %psk = alloca [512 x i8], align 16
  %tls13_aes128gcmsha256_id = alloca i16, align 2
  %prots = alloca %struct.PACKET, align 8
  %alpnpkt = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [257 x i8], [257 x i8]* %identity, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %0) #14
  %1 = bitcast i8** %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %id, align 8, !tbaa !27
  %2 = bitcast i64* %idlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i64 0, i64* %idlen, align 8, !tbaa !28
  %3 = bitcast %struct.ssl_session_st** %psksess to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %4 = load i32, i32* %hello_retry_request, align 8, !tbaa !81
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %handmd.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ null, %entry ]
  %psk_use_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 70
  %5 = load i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %psk_use_session_cb, align 8, !tbaa !84
  %cmp1.not = icmp eq i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* %5, null
  br i1 %cmp1.not, label %land.lhs.true10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 %5(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %handmd.0, i8** noundef nonnull %id, i64* noundef nonnull %idlen, %struct.ssl_session_st** noundef nonnull %psksess) #12
  %tobool.not = icmp eq i32 %call3, 0
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  br i1 %tobool.not, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp4.not = icmp eq %struct.ssl_session_st* %.pre, null
  br i1 %cmp4.not, label %land.lhs.true10, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre, i64 0, i32 0
  %6 = load i32, i32* %ssl_version, align 8, !tbaa !49
  %cmp6.not = icmp eq i32 %6, 772
  br i1 %cmp6.not, label %if.end61, label %if.then7

if.then7:                                         ; preds = %land.lhs.true, %land.lhs.true5
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %.pre) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 219, i8* noundef null) #12
  br label %cleanup175

land.lhs.true10:                                  ; preds = %if.end, %lor.lhs.false
  %psk_client_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 67
  %7 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !85
  %cmp11.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %7, null
  br i1 %cmp11.not, label %if.end61, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %psk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %8) #14
  %call13 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 257) #12
  %9 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !85
  %call17 = call i32 %9(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i8* noundef nonnull %0, i32 noundef 256, i8* noundef nonnull %8, i32 noundef 512) #12
  %conv = zext i32 %call17 to i64
  %cmp18 = icmp ugt i32 %call17, 512
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #14
  br label %cleanup175

if.else:                                          ; preds = %if.then12
  %cmp21.not = icmp eq i32 %call17, 0
  br i1 %cmp21.not, label %cleanup57, label %if.then23

if.then23:                                        ; preds = %if.else
  %10 = bitcast i16* %tls13_aes128gcmsha256_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %10) #14
  store i16 275, i16* %tls13_aes128gcmsha256_id, align 2
  %call25 = call i64 @strlen(i8* noundef nonnull %0) #13
  store i64 %call25, i64* %idlen, align 8, !tbaa !28
  %cmp26 = icmp ugt i64 %call25, 256
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then23
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  store i8* %0, i8** %id, align 8, !tbaa !27
  %call32 = call %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %10) #12
  %cmp33 = icmp eq %struct.ssl_cipher_st* %call32, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end29
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call37 = call %struct.ssl_session_st* @SSL_SESSION_new() #12
  store %struct.ssl_session_st* %call37, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  %cmp38 = icmp eq %struct.ssl_session_st* %call37, null
  br i1 %cmp38, label %if.then50, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end36
  %call42 = call i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef nonnull %call37, i8* noundef nonnull %8, i64 noundef %conv) #12
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then50, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  %call45 = call i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef %11, %struct.ssl_cipher_st* noundef nonnull %call32) #12
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then50, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %12 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  %call48 = call i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef %12, i32 noundef 772) #12
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %lor.lhs.false47, %lor.lhs.false44, %lor.lhs.false40, %if.end36
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 798, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv) #12
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false47
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #14
  br label %cleanup57

cleanup:                                          ; preds = %if.then50, %if.then35, %if.then28
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #14
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #14
  br label %cleanup175

cleanup57:                                        ; preds = %if.else, %if.end52
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #14
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true5, %cleanup57, %land.lhs.true10
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %13 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !86
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %13) #12
  %14 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  store %struct.ssl_session_st* %14, %struct.ssl_session_st** %psksession, align 8, !tbaa !86
  %cmp63.not = icmp eq %struct.ssl_session_st* %14, null
  br i1 %cmp63.not, label %if.end74, label %if.then65

if.then65:                                        ; preds = %if.end61
  %psksession_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 57
  %15 = load i8*, i8** %psksession_id, align 8, !tbaa !87
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 810) #12
  %16 = load i8*, i8** %id, align 8, !tbaa !27
  %17 = load i64, i64* %idlen, align 8, !tbaa !28
  %call66 = call i8* @CRYPTO_memdup(i8* noundef %16, i64 noundef %17, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 811) #12
  store i8* %call66, i8** %psksession_id, align 8, !tbaa !87
  %cmp69 = icmp eq i8* %call66, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then65
  %psksession_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 58
  store i64 0, i64* %psksession_id_len, align 8, !tbaa !88
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup175

if.end72:                                         ; preds = %if.then65
  %18 = load i64, i64* %idlen, align 8, !tbaa !28
  %psksession_id_len73 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 58
  store i64 %18, i64* %psksession_id_len73, align 8, !tbaa !88
  br label %if.end74

if.end74:                                         ; preds = %if.end72, %if.end61
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %19 = load i32, i32* %early_data_state, align 4, !tbaa !89
  %cmp75.not = icmp eq i32 %19, 2
  br i1 %cmp75.not, label %lor.lhs.false77, label %if.then88

lor.lhs.false77:                                  ; preds = %if.end74
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %20 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %20, i64 0, i32 26, i32 5
  %21 = load i32, i32* %max_early_data, align 4, !tbaa !90
  %cmp78 = icmp eq i32 %21, 0
  br i1 %cmp78, label %land.lhs.true80, label %if.end90

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %22 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksess, align 8, !tbaa !27
  %cmp81 = icmp eq %struct.ssl_session_st* %22, null
  br i1 %cmp81, label %if.then88, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true80
  %max_early_data85 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %22, i64 0, i32 26, i32 5
  %23 = load i32, i32* %max_early_data85, align 4, !tbaa !90
  %cmp86 = icmp eq i32 %23, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %lor.lhs.false83, %land.lhs.true80, %if.end74
  %max_early_data89 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  store i32 0, i32* %max_early_data89, align 8, !tbaa !91
  br label %cleanup175

if.end90:                                         ; preds = %lor.lhs.false77, %lor.lhs.false83
  %cond = phi %struct.ssl_session_st* [ %22, %lor.lhs.false83 ], [ %20, %lor.lhs.false77 ]
  %max_early_data98 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %cond, i64 0, i32 26, i32 5
  %24 = load i32, i32* %max_early_data98, align 4, !tbaa !90
  %max_early_data99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  store i32 %24, i32* %max_early_data99, align 8, !tbaa !91
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %cond, i64 0, i32 26, i32 0
  %25 = load i8*, i8** %hostname, align 8, !tbaa !92
  %cmp101.not = icmp eq i8* %25, null
  br i1 %cmp101.not, label %if.end123, label %if.then103

if.then103:                                       ; preds = %if.end90
  %hostname105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %26 = load i8*, i8** %hostname105, align 8, !tbaa !23
  %cmp106 = icmp eq i8* %26, null
  br i1 %cmp106, label %if.then121, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %if.then103
  %call118 = call i32 @strcmp(i8* noundef nonnull %26, i8* noundef nonnull %25) #13
  %cmp119.not = icmp eq i32 %call118, 0
  br i1 %cmp119.not, label %if.end123, label %if.then121

if.then121:                                       ; preds = %land.lhs.true113, %if.then103
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 834, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 231, i8* noundef null) #12
  br label %cleanup175

if.end123:                                        ; preds = %land.lhs.true113, %if.end90
  %alpn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 24
  %27 = load i8*, i8** %alpn, align 8, !tbaa !69
  %cmp125 = icmp eq i8* %27, null
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %cond, i64 0, i32 26, i32 6
  %28 = load i8*, i8** %alpn_selected, align 8, !tbaa !93
  %cmp129.not = icmp eq i8* %28, null
  br i1 %cmp125, label %land.lhs.true127, label %if.end132

land.lhs.true127:                                 ; preds = %if.end123
  br i1 %cmp129.not, label %if.end162, label %if.then131

if.then131:                                       ; preds = %land.lhs.true127
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 840, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 222, i8* noundef null) #12
  br label %cleanup175

if.end132:                                        ; preds = %if.end123
  %alpn_selected134 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %cond, i64 0, i32 26, i32 6
  br i1 %cmp129.not, label %if.end162, label %if.then137

if.then137:                                       ; preds = %if.end132
  %29 = bitcast %struct.PACKET* %prots to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #14
  %30 = bitcast %struct.PACKET* %alpnpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #14
  %alpn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 25
  %31 = load i64, i64* %alpn_len, align 8, !tbaa !70
  %call141 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %prots, i8* noundef nonnull %27, i64 noundef %31) #15
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then137
  %alpn_selected_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %cond, i64 0, i32 26, i32 7
  br label %while.cond

if.then143:                                       ; preds = %if.then137
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #14
  br label %cleanup175

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %call145 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %prots, %struct.PACKET* noundef nonnull %alpnpkt) #15
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then155, label %while.body

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %alpn_selected134, align 8, !tbaa !93
  %33 = load i64, i64* %alpn_selected_len, align 8, !tbaa !94
  %call150 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %alpnpkt, i8* noundef %32, i64 noundef %33) #15
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %while.cond, label %cleanup157, !llvm.loop !95

if.then155:                                       ; preds = %while.cond
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 222, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #14
  br label %cleanup175

cleanup157:                                       ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #14
  br label %if.end162

if.end162:                                        ; preds = %land.lhs.true127, %cleanup157, %if.end132
  %call163 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 42, i64 noundef 2) #12
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then171, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end162
  %call166 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then171, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false165
  %call169 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then171, label %if.end172

if.then171:                                       ; preds = %lor.lhs.false168, %lor.lhs.false165, %if.end162
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 873, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_ctos_early_data, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup175

if.end172:                                        ; preds = %lor.lhs.false168
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  store i32 1, i32* %early_data, align 8, !tbaa !96
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 1, i32* %early_data_ok, align 4, !tbaa !97
  br label %cleanup175

cleanup175:                                       ; preds = %if.then143, %if.then155, %if.then20, %cleanup, %if.end172, %if.then171, %if.then131, %if.then121, %if.then88, %if.then71, %if.then7
  %retval.5 = phi i32 [ 0, %if.then7 ], [ 0, %if.then71 ], [ 2, %if.then88 ], [ 0, %if.then121 ], [ 0, %if.then131 ], [ 1, %if.end172 ], [ 0, %if.then171 ], [ 0, %cleanup ], [ 0, %if.then20 ], [ 0, %if.then155 ], [ 0, %if.then143 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %0) #14
  ret i32 %retval.5
}

declare %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #1

declare i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef, %struct.ssl_cipher_st* noundef) local_unnamed_addr #1

declare i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #7 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !98
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !100
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !101
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !26
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !101
  %5 = load i8*, i8** %data, align 8, !tbaa !27
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !98
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !100
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %ptr, i64 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef %ptr, i64 noundef %num) #12
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_padding(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %padbytes = alloca i8*, align 8
  %hlen = alloca i64, align 8
  %0 = bitcast i8** %padbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i64* %hlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %2 = load i64, i64* %options, align 8, !tbaa !74
  %and = and i64 %2, 16
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %hlen) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 921, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_ctos_padding, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 0
  %4 = load i32, i32* %ssl_version, align 8, !tbaa !49
  %cmp3 = icmp eq i32 %4, 772
  br i1 %cmp3, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end2
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 26, i32 2
  %5 = load i64, i64* %ticklen, align 8, !tbaa !50
  %cmp5.not = icmp eq i64 %5, 0
  br i1 %cmp5.not, label %if.end22, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 20
  %6 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !102
  %cmp8.not = icmp eq %struct.ssl_cipher_st* %6, null
  br i1 %cmp8.not, label %if.end22, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %6, i64 0, i32 13
  %8 = load i32, i32* %algorithm2, align 8, !tbaa !103
  %call12 = call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %7, i32 noundef %8) #12
  %cmp13.not = icmp eq %struct.evp_md_st* %call12, null
  br i1 %cmp13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.then9
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %ticklen17 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 26, i32 2
  %10 = load i64, i64* %ticklen17, align 8, !tbaa !50
  %add = add i64 %10, 15
  %call18 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call12) #12
  %conv = sext i32 %call18 to i64
  %add19 = add i64 %add, %conv
  %11 = load i64, i64* %hlen, align 8, !tbaa !28
  %add20 = add i64 %add19, %11
  store i64 %add20, i64* %hlen, align 8, !tbaa !28
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %if.then14, %land.lhs.true6, %land.lhs.true, %if.end2
  %12 = load i64, i64* %hlen, align 8, !tbaa !28
  %13 = and i64 %12, -256
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.end22
  %cmp29 = icmp ult i64 %12, 508
  %sub32 = sub nsw i64 508, %12
  %storemerge = select i1 %cmp29, i64 %sub32, i64 1
  store i64 %storemerge, i64* %hlen, align 8, !tbaa !28
  %call34 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 21, i64 noundef 2) #12
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28
  %15 = load i64, i64* %hlen, align 8, !tbaa !28
  %call36 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %15, i8** noundef nonnull %padbytes, i64 noundef 2) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false, %if.then28
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 961, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_ctos_padding, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false
  %16 = load i8*, i8** %padbytes, align 8, !tbaa !27
  %17 = load i64, i64* %hlen, align 8, !tbaa !28
  %call40 = call i8* @memset(i8* noundef %16, i32 noundef 0, i64 noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end39, %entry, %if.then38, %if.then1
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 0, %if.then1 ], [ 2, %entry ], [ 1, %if.end39 ], [ 1, %if.end22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_psk(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %binderoffset = alloca i64, align 8
  %msglen = alloca i64, align 8
  %resbinder = alloca i8*, align 8
  %pskbinder = alloca i8*, align 8
  %0 = bitcast i64* %binderoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast i8** %resbinder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i8* null, i8** %resbinder, align 8, !tbaa !27
  %3 = bitcast i8** %pskbinder to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i8* null, i8** %pskbinder, align 8, !tbaa !27
  %tick_identity = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 36
  store i32 0, i32* %tick_identity, align 8, !tbaa !104
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 0
  %5 = load i32, i32* %ssl_version, align 8, !tbaa !49
  %cmp.not = icmp eq i32 %5, 772
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 26, i32 2
  %6 = load i64, i64* %ticklen, align 8, !tbaa !50
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !86
  %cmp4 = icmp eq %struct.ssl_session_st* %7, null
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %8 = load i32, i32* %hello_retry_request, align 8, !tbaa !81
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #12
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %ticklen10.phi.trans.insert = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre, i64 0, i32 26, i32 2
  %.pre291 = load i64, i64* %ticklen10.phi.trans.insert, align 8, !tbaa !50
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %9 = phi i64 [ %.pre291, %if.then6 ], [ %6, %if.end ]
  %10 = phi %struct.ssl_session_st* [ %.pre, %if.then6 ], [ %4, %if.end ]
  %handmd.0 = phi %struct.evp_md_st* [ %call, %if.then6 ], [ null, %if.end ]
  %cmp11.not = icmp eq i64 %9, 0
  br i1 %cmp11.not, label %land.lhs.true57, label %if.then12

if.then12:                                        ; preds = %if.end7
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 20
  %11 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !102
  %cmp14 = icmp eq %struct.ssl_cipher_st* %11, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1005, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %11, i64 0, i32 13
  %13 = load i32, i32* %algorithm2, align 8, !tbaa !103
  %call19 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %12, i32 noundef %13) #12
  %cmp20 = icmp eq %struct.evp_md_st* %call19, null
  br i1 %cmp20, label %land.lhs.true57, label %if.end22

if.end22:                                         ; preds = %if.end16
  %14 = load i32, i32* %hello_retry_request, align 8, !tbaa !81
  %cmp24 = icmp ne i32 %14, 1
  %cmp26.not = icmp eq %struct.evp_md_st* %call19, %handmd.0
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end28, label %land.lhs.true57

if.end28:                                         ; preds = %if.end22
  %call29 = tail call i64 @time(i64* noundef null) #12
  %conv = trunc i64 %call29 to i32
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 16
  %16 = load i64, i64* %time, align 8, !tbaa !105
  %conv31 = trunc i64 %16 to i32
  %sub = sub i32 %conv, %conv31
  %cmp32.not = icmp eq i32 %sub, 0
  %dec = add i32 %sub, -1
  %spec.select = select i1 %cmp32.not, i32 0, i32 %dec
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 26, i32 3
  %17 = load i64, i64* %tick_lifetime_hint, align 8, !tbaa !106
  %conv38 = zext i32 %spec.select to i64
  %cmp39 = icmp ult i64 %17, %conv38
  br i1 %cmp39, label %land.lhs.true57, label %if.end42

if.end42:                                         ; preds = %if.end28
  %mul277 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 1000)
  %mul.val = extractvalue { i32, i1 } %mul277, 0
  %cmp43.not = icmp eq i32 %spec.select, 0
  br i1 %cmp43.not, label %if.end62, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %mul.ov = extractvalue { i32, i1 } %mul277, 1
  br i1 %mul.ov, label %land.lhs.true57, label %if.end62

land.lhs.true57:                                  ; preds = %if.end16, %if.end28, %land.lhs.true45, %if.end7, %if.end22
  %agems.0.ph = phi i32 [ 0, %if.end22 ], [ 0, %if.end7 ], [ %mul.val, %land.lhs.true45 ], [ 0, %if.end28 ], [ 0, %if.end16 ]
  %mdres.0.ph = phi %struct.evp_md_st* [ %call19, %if.end22 ], [ null, %if.end7 ], [ %call19, %land.lhs.true45 ], [ %call19, %if.end28 ], [ null, %if.end16 ]
  %psksession58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession58, align 8, !tbaa !86
  %cmp59 = icmp eq %struct.ssl_session_st* %18, null
  br i1 %cmp59, label %cleanup, label %if.end62.thread

if.end62.thread:                                  ; preds = %land.lhs.true57
  %psksession63297 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  br label %if.then66

if.end62:                                         ; preds = %land.lhs.true45, %if.end42
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 26, i32 4
  %19 = load i32, i32* %tick_age_add, align 8, !tbaa !107
  %add = add i32 %19, %mul.val
  %call52 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call19) #12
  %conv53 = sext i32 %call52 to i64
  %20 = load i32, i32* %tick_identity, align 8, !tbaa !104
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %tick_identity, align 8, !tbaa !104
  %psksession63.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %.pre292 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession63.phi.trans.insert, align 8, !tbaa !86
  %psksession63 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %cmp64.not = icmp eq %struct.ssl_session_st* %.pre292, null
  br i1 %cmp64.not, label %if.end86, label %if.then66

if.then66:                                        ; preds = %if.end62.thread, %if.end62
  %psksession63307 = phi %struct.ssl_session_st** [ %psksession63297, %if.end62.thread ], [ %psksession63, %if.end62 ]
  %agems.0283305 = phi i32 [ %agems.0.ph, %if.end62.thread ], [ %add, %if.end62 ]
  %reshashsize.0285303 = phi i64 [ 0, %if.end62.thread ], [ %conv53, %if.end62 ]
  %mdres.0287301 = phi %struct.evp_md_st* [ %mdres.0.ph, %if.end62.thread ], [ %call19, %if.end62 ]
  %tobool.not289299 = phi i1 [ true, %if.end62.thread ], [ false, %if.end62 ]
  %21 = phi %struct.ssl_session_st* [ %18, %if.end62.thread ], [ %.pre292, %if.end62 ]
  %ctx67 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx67, align 8, !tbaa !60
  %cipher69 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %21, i64 0, i32 20
  %23 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher69, align 8, !tbaa !102
  %algorithm270 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %23, i64 0, i32 13
  %24 = load i32, i32* %algorithm270, align 8, !tbaa !103
  %call71 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %22, i32 noundef %24) #12
  %cmp72 = icmp eq %struct.evp_md_st* %call71, null
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then66
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1087, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 219, i8* noundef null) #12
  br label %cleanup

if.end75:                                         ; preds = %if.then66
  %25 = load i32, i32* %hello_retry_request, align 8, !tbaa !81
  %cmp77 = icmp ne i32 %25, 1
  %cmp80.not = icmp eq %struct.evp_md_st* %call71, %handmd.0
  %or.cond278 = select i1 %cmp77, i1 true, i1 %cmp80.not
  br i1 %or.cond278, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end75
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1096, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 219, i8* noundef null) #12
  br label %cleanup

if.end83:                                         ; preds = %if.end75
  %call84 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call71) #12
  %conv85 = sext i32 %call84 to i64
  br label %if.end86

if.end86:                                         ; preds = %if.end83, %if.end62
  %psksession63308 = phi %struct.ssl_session_st** [ %psksession63307, %if.end83 ], [ %psksession63, %if.end62 ]
  %agems.0283306 = phi i32 [ %agems.0283305, %if.end83 ], [ %add, %if.end62 ]
  %reshashsize.0285304 = phi i64 [ %reshashsize.0285303, %if.end83 ], [ %conv53, %if.end62 ]
  %mdres.0287302 = phi %struct.evp_md_st* [ %mdres.0287301, %if.end83 ], [ %call19, %if.end62 ]
  %tobool.not289300 = phi i1 [ %tobool.not289299, %if.end83 ], [ false, %if.end62 ]
  %pskhashsize.0 = phi i64 [ %conv85, %if.end83 ], [ 0, %if.end62 ]
  %mdpsk.0 = phi %struct.evp_md_st* [ %call71, %if.end83 ], [ null, %if.end62 ]
  %call87 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 41, i64 noundef 2) #12
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then95, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.end86
  %call90 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then95, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %call93 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end96

if.then95:                                        ; preds = %lor.lhs.false92, %lor.lhs.false89, %if.end86
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end96:                                         ; preds = %lor.lhs.false92
  br i1 %tobool.not289300, label %if.end111, label %if.then98

if.then98:                                        ; preds = %if.end96
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %26, i64 0, i32 26, i32 1
  %27 = load i8*, i8** %tick, align 8, !tbaa !46
  %ticklen103 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %26, i64 0, i32 26, i32 2
  %28 = load i64, i64* %ticklen103, align 8, !tbaa !50
  %call104 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %27, i64 noundef %28, i64 noundef 2) #12
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then109, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.then98
  %call107 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %agems.0283306, i64 noundef 4) #12
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %if.end111

if.then109:                                       ; preds = %lor.lhs.false106, %if.then98
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1115, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end111:                                        ; preds = %lor.lhs.false106, %if.end96
  %29 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession63308, align 8, !tbaa !86
  %cmp113.not = icmp eq %struct.ssl_session_st* %29, null
  br i1 %cmp113.not, label %if.end126, label %if.then115

if.then115:                                       ; preds = %if.end111
  %psksession_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 57
  %30 = load i8*, i8** %psksession_id, align 8, !tbaa !87
  %psksession_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 58
  %31 = load i64, i64* %psksession_id_len, align 8, !tbaa !88
  %call116 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %30, i64 noundef %31, i64 noundef 2) #12
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then121, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.then115
  %call119 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 4) #12
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end122

if.then121:                                       ; preds = %lor.lhs.false118, %if.then115
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1124, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end122:                                        ; preds = %lor.lhs.false118
  %32 = load i32, i32* %tick_identity, align 8, !tbaa !104
  %inc125 = add nsw i32 %32, 1
  store i32 %inc125, i32* %tick_identity, align 8, !tbaa !104
  br label %if.end126

if.end126:                                        ; preds = %if.end122, %if.end111
  %call127 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then159, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %if.end126
  %call130 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %binderoffset) #12
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then159, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false129
  %call133 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then159, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false132
  br i1 %tobool.not289300, label %lor.lhs.false140, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %lor.lhs.false135
  %call138 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %reshashsize.0285304, i8** noundef nonnull %resbinder, i64 noundef 1) #12
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then159, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %land.lhs.true137, %lor.lhs.false135
  %33 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession63308, align 8, !tbaa !86
  %cmp142.not = icmp eq %struct.ssl_session_st* %33, null
  br i1 %cmp142.not, label %lor.lhs.false147, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %lor.lhs.false140
  %call145 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %pskhashsize.0, i8** noundef nonnull %pskbinder, i64 noundef 1) #12
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then159, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %land.lhs.true144, %lor.lhs.false140
  %call148 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then159, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %call151 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then159, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %call154 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %msglen) #12
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then159, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false153
  %call157 = call i32 @WPACKET_fill_lengths(%struct.wpacket_st* noundef %pkt) #12
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then159, label %if.end160

if.then159:                                       ; preds = %lor.lhs.false156, %lor.lhs.false153, %lor.lhs.false150, %lor.lhs.false147, %land.lhs.true144, %land.lhs.true137, %lor.lhs.false132, %lor.lhs.false129, %if.end126
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1145, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_ctos_psk, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end160:                                        ; preds = %lor.lhs.false156
  %call161 = call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef %pkt) #12
  %34 = load i64, i64* %msglen, align 8, !tbaa !28
  %idx.neg = sub i64 0, %34
  %add.ptr = getelementptr inbounds i8, i8* %call161, i64 %idx.neg
  br i1 %tobool.not289300, label %if.end169, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %if.end160
  %35 = load i64, i64* %binderoffset, align 8, !tbaa !28
  %36 = load i8*, i8** %resbinder, align 8, !tbaa !27
  %37 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %call165 = call i32 @tls_psk_do_binder(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %mdres.0287302, i8* noundef %add.ptr, i64 noundef %35, i8* noundef null, i8* noundef %36, %struct.ssl_session_st* noundef %37, i32 noundef 1, i32 noundef 0) #12
  %cmp166.not = icmp eq i32 %call165, 1
  br i1 %cmp166.not, label %if.end169, label %cleanup

if.end169:                                        ; preds = %land.lhs.true163, %if.end160
  %38 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession63308, align 8, !tbaa !86
  %cmp171.not = icmp eq %struct.ssl_session_st* %38, null
  br i1 %cmp171.not, label %if.end179, label %land.lhs.true173

land.lhs.true173:                                 ; preds = %if.end169
  %39 = load i64, i64* %binderoffset, align 8, !tbaa !28
  %40 = load i8*, i8** %pskbinder, align 8, !tbaa !27
  %call175 = call i32 @tls_psk_do_binder(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %mdpsk.0, i8* noundef %add.ptr, i64 noundef %39, i8* noundef null, i8* noundef %40, %struct.ssl_session_st* noundef nonnull %38, i32 noundef 1, i32 noundef 1) #12
  %cmp176.not = icmp eq i32 %call175, 1
  br i1 %cmp176.not, label %if.end179, label %cleanup

if.end179:                                        ; preds = %land.lhs.true173, %if.end169
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true173, %land.lhs.true163, %land.lhs.true57, %entry, %land.lhs.true, %if.end179, %if.then159, %if.then121, %if.then109, %if.then95, %if.then82, %if.then74, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then74 ], [ 0, %if.then82 ], [ 1, %if.end179 ], [ 0, %if.then159 ], [ 0, %if.then121 ], [ 0, %if.then109 ], [ 0, %if.then95 ], [ 2, %land.lhs.true ], [ 2, %entry ], [ 2, %land.lhs.true57 ], [ 0, %land.lhs.true163 ], [ 0, %land.lhs.true173 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

declare i32 @WPACKET_fill_lengths(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i8* @WPACKET_get_curr(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @tls_psk_do_binder(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, %struct.ssl_session_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_ctos_post_handshake_auth(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %pha_enabled = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 101
  %0 = load i32, i32* %pha_enabled, align 4, !tbaa !108
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 49, i64 noundef 2) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1184, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.tls_construct_ctos_post_handshake_auth, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.end8:                                          ; preds = %lor.lhs.false4
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  store i32 1, i32* %post_handshake_auth, align 8, !tbaa !109
  br label %return

return:                                           ; preds = %entry, %if.end8, %if.then7
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then7 ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_renegotiate(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ilen = alloca i64, align 8
  %data = alloca i8*, align 8
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  %0 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !22
  %previous_server_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 24
  %1 = load i64, i64* %previous_server_finished_len, align 8, !tbaa !110
  %add = add i64 %1, %0
  %2 = bitcast i64* %ilen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %cmp = icmp eq i64 %add, 0
  br i1 %cmp, label %if.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %cmp4 = icmp ne i64 %0, 0
  %cmp10 = icmp ne i64 %1, 0
  %or.cond = select i1 %cmp4, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.rhs
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1213, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.rhs, %entry
  %call = call fastcc i32 @PACKET_get_1_len(%struct.PACKET* noundef %pkt, i64* noundef nonnull %ilen) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1219, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 336, i8* noundef null) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %4 = load i64, i64* %ilen, align 8, !tbaa !28
  %cmp17.not = icmp eq i64 %call16, %4
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1225, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 336, i8* noundef null) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %cmp20.not = icmp eq i64 %call16, %add
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1231, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 337, i8* noundef null) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %5 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !22
  %call25 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %5) #15
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end22
  %6 = load i8*, i8** %data, align 8, !tbaa !27
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %7 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !22
  %call31 = tail call i32 @memcmp(i8* noundef %6, i8* noundef nonnull %arraydecay, i64 noundef %7) #13
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false27, %if.end22
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1238, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 337, i8* noundef null) #12
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false27
  %8 = load i64, i64* %previous_server_finished_len, align 8, !tbaa !110
  %call37 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %8) #15
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then46, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end34
  %9 = load i8*, i8** %data, align 8, !tbaa !27
  %arraydecay41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 23, i64 0
  %10 = load i64, i64* %previous_server_finished_len, align 8, !tbaa !110
  %call44 = tail call i32 @memcmp(i8* noundef %9, i8* noundef nonnull %arraydecay41, i64 noundef %10) #13
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false39, %if.end34
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1245, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_renegotiate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 337, i8* noundef null) #12
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false39
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  store i32 1, i32* %send_connection_binding, align 8, !tbaa !111
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then33, %if.then21, %if.then18, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %if.then21 ], [ 0, %if.then33 ], [ 0, %if.then46 ], [ 1, %if.end47 ], [ 0, %if.then14 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1_len(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4, !tbaa !26
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %data, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #9 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !100
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #10 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_maxfragmentlen(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %value = alloca i32, align 4
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp.not = icmp eq i64 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %value) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1260, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_maxfragmentlen, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, i32* %value, align 4, !tbaa !26
  %2 = add i32 %1, -1
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1267, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_maxfragmentlen, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 232, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 35
  %4 = load i8, i8* %max_fragment_len_mode, align 4, !tbaa !24
  %conv = zext i8 %4 to i32
  %cmp6.not = icmp eq i32 %1, %conv
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1279, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_maxfragmentlen, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 232, i8* noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv10 = trunc i32 %1 to i8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %max_fragment_len_mode12 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 26, i32 8
  store i8 %conv10, i8* %max_fragment_len_mode12, align 8, !tbaa !112
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 1, %if.end9 ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_server_name(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %0 = load i8*, i8** %hostname, align 8, !tbaa !23
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1296, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_server_name, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp1.not = icmp eq i64 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1301, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_server_name, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end3:                                          ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then4, label %return

if.then4:                                         ; preds = %if.end3
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %hostname6 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 26, i32 0
  %3 = load i8*, i8** %hostname6, align 8, !tbaa !92
  %cmp7.not = icmp eq i8* %3, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then4
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1307, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_server_name, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.end9:                                          ; preds = %if.then4
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1310) #12
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %hostname15 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 26, i32 0
  store i8* %call12, i8** %hostname15, align 8, !tbaa !92
  %cmp19 = icmp eq i8* %call12, null
  br i1 %cmp19, label %if.then20, label %return

if.then20:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1312, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_stoc_server_name, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end3, %if.end9, %if.then20, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then8 ], [ 0, %if.then20 ], [ 1, %if.end9 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_ec_pt_formats(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ecptformatlist = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %ecptformatlist to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %ecptformatlist) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1327, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_stoc_ec_pt_formats, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %ecptformatlist) #15
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1333, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_stoc_ec_pt_formats, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  store i64 0, i64* %peer_ecpointformats_len, align 8, !tbaa !114
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %2 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !115
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1338) #12
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %call3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1339) #12
  store i8* %call7, i8** %peer_ecpointformats, align 8, !tbaa !115
  %cmp12 = icmp eq i8* %call7, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end5
  store i64 0, i64* %peer_ecpointformats_len, align 8, !tbaa !114
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_stoc_ec_pt_formats, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  store i64 %call3, i64* %peer_ecpointformats_len, align 8, !tbaa !114
  %call21 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %ecptformatlist, i8* noundef nonnull %call7, i64 noundef %call3) #15
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.end16
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1351, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_stoc_ec_pt_formats, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end16, %if.then23, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then13 ], [ 0, %if.then23 ], [ 0, %if.then ], [ 1, %if.end16 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !101
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !26
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #15
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !101
  %5 = load i8*, i8** %data, align 8, !tbaa !27
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !98
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !100
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data, i64 noundef %len) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_session_ticket(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %session_ticket_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 20
  %0 = load i32 (%struct.ssl_st*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8*, i32, i8*)** %session_ticket_cb, align 8, !tbaa !116
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i8*, i32, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #15
  %call3 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %conv = trunc i64 %call3 to i32
  %session_ticket_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 21
  %1 = load i8*, i8** %session_ticket_cb_arg, align 8, !tbaa !117
  %call5 = tail call i32 %0(%struct.ssl_st* noundef nonnull %s, i8* noundef %call, i32 noundef %conv, i8* noundef %1) #12
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1366, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call6 = tail call i32 @tls_use_ticket(%struct.ssl_st* noundef nonnull %s) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1371, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp11.not = icmp eq i64 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1375, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end14:                                         ; preds = %if.end9
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 1, i32* %ticket_expected, align 8, !tbaa !118
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 1, %if.end14 ], [ 0, %if.then8 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #9 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_status_request(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %context, 16384
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %0 = load i32, i32* %status_type, align 8, !tbaa !56
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1398, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_status_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end3:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !38
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !39
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !41
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true10.thread

land.lhs.true:                                    ; preds = %if.end3
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !119
  %cmp5 = icmp slt i32 %4, 772
  %cmp9.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp5, %cmp9.not
  br i1 %or.cond, label %land.lhs.true10, label %if.then27

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp11.not = icmp eq i64 %call, 0
  br i1 %cmp11.not, label %if.end32, label %if.then12

land.lhs.true10.thread:                           ; preds = %if.end3
  %call47 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp11.not48 = icmp eq i64 %call47, 0
  br i1 %cmp11.not48, label %if.end32, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10.thread, %land.lhs.true10
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1402, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_stoc_status_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %return

if.then27:                                        ; preds = %land.lhs.true
  %cmp28.not = icmp eq i64 %chainidx, 0
  br i1 %cmp28.not, label %if.end30, label %return

if.end30:                                         ; preds = %if.then27
  %call31 = tail call i32 @tls_process_cert_status_body(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  br label %return

if.end32:                                         ; preds = %land.lhs.true10, %land.lhs.true10.thread
  %status_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 7
  store i32 1, i32* %status_expected, align 4, !tbaa !120
  br label %return

return:                                           ; preds = %if.then27, %entry, %if.end32, %if.end30, %if.then12, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then12 ], [ 1, %if.end32 ], [ %call31, %if.end30 ], [ 1, %entry ], [ 1, %if.then27 ]
  ret i32 %retval.0
}

declare i32 @tls_process_cert_status_body(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_sct(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* noundef %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %context, 16384
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  %0 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !75
  %cmp1.not = icmp eq i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %0, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %scts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 5
  %1 = load i8*, i8** %scts, align 8, !tbaa !121
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1443) #12
  store i8* null, i8** %scts, align 8, !tbaa !121
  %conv = trunc i64 %call to i16
  %scts_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 6
  store i16 %conv, i16* %scts_len, align 8, !tbaa !122
  %cmp6.not = icmp eq i64 %call, 0
  br i1 %cmp6.not, label %if.end42, label %if.then8

if.then8:                                         ; preds = %if.then2
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1448) #12
  store i8* %call9, i8** %scts, align 8, !tbaa !121
  %cmp14 = icmp eq i8* %call9, null
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then8
  store i16 0, i16* %scts_len, align 8, !tbaa !122
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1451, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_sct, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %return

if.end19:                                         ; preds = %if.then8
  %call22 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %call9, i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %if.end42

if.then23:                                        ; preds = %if.end19
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1455, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_sct, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.else:                                          ; preds = %if.end
  %and = lshr i32 %context, 7
  %2 = and i32 %and, 2
  %3 = xor i32 %2, 2
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %4 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !123
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %4, i64 0, i32 16
  %call28 = tail call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %custext, i32 noundef %3, i32 noundef 18, i64* noundef null) #12
  %cmp29 = icmp eq %struct.custom_ext_method* %call28, null
  br i1 %cmp29, label %cleanup39.thread, label %cleanup39

cleanup39.thread:                                 ; preds = %if.else
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1470, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_sct, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #12
  br label %return

cleanup39:                                        ; preds = %if.else
  %call33 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #15
  %call34 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %call35 = tail call i32 @custom_ext_parse(%struct.ssl_st* noundef nonnull %s, i32 noundef %context, i32 noundef 18, i8* noundef %call33, i64 noundef %call34, %struct.x509_st* noundef %x, i64 noundef %chainidx) #12
  %tobool36.not.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not.not, label %return, label %if.end42

if.end42:                                         ; preds = %if.then2, %if.end19, %cleanup39
  br label %return

return:                                           ; preds = %cleanup39.thread, %if.then16, %if.then23, %cleanup39, %entry, %if.end42
  %retval.2 = phi i32 [ 1, %if.end42 ], [ 0, %cleanup39 ], [ 1, %entry ], [ 0, %if.then23 ], [ 0, %if.then16 ], [ 0, %cleanup39.thread ]
  ret i32 %retval.2
}

declare %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef, i32 noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

declare i32 @custom_ext_parse(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_npn(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %selected = alloca i8*, align 8
  %selected_len = alloca i8, align 1
  %tmppkt = alloca %struct.PACKET, align 8
  %0 = bitcast i8** %selected to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %selected_len) #14
  %1 = bitcast %struct.PACKET* %tmppkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %2 = load i64, i64* %finish_md_len, align 8, !tbaa !66
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %3 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !67
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %npn_select_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 60, i32 22
  %5 = load i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %npn_select_cb, align 8, !tbaa !61
  %cmp4 = icmp eq i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1522, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_npn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !101
  %call = call fastcc i32 @ssl_next_proto_validate(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %tmppkt) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end6
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %npn_select_cb11 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 60, i32 22
  %8 = load i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %npn_select_cb11, align 8, !tbaa !61
  %call12 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %pkt) #15
  %call13 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #15
  %conv = trunc i64 %call13 to i32
  %npn_select_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 60, i32 23
  %9 = load i8*, i8** %npn_select_cb_arg, align 8, !tbaa !124
  %call16 = call i32 %8(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %selected, i8* noundef nonnull %selected_len, i8* noundef %call12, i32 noundef %conv, i8* noundef %9) #12
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end8
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1537, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_npn, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %10 = load i8*, i8** %npn, align 8, !tbaa !125
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1545) #12
  %11 = load i8, i8* %selected_len, align 1, !tbaa !126
  %conv22 = zext i8 %11 to i64
  %call23 = call i8* @CRYPTO_malloc(i64 noundef %conv22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1546) #12
  store i8* %call23, i8** %npn, align 8, !tbaa !125
  %cmp28 = icmp eq i8* %call23, null
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end20
  %npn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  store i64 0, i64* %npn_len, align 8, !tbaa !127
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1549, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_npn, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %12 = load i8*, i8** %selected, align 8, !tbaa !27
  %13 = load i8, i8* %selected_len, align 1, !tbaa !126
  %conv35 = zext i8 %13 to i64
  %call36 = call i8* @memcpy(i8* noundef nonnull %call23, i8* noundef %12, i64 noundef %conv35) #12
  %14 = load i8, i8* %selected_len, align 1, !tbaa !126
  %conv37 = zext i8 %14 to i64
  %npn_len39 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  store i64 %conv37, i64* %npn_len39, align 8, !tbaa !127
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  store i32 1, i32* %npn_seen, align 4, !tbaa !128
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false, %if.end32, %if.then30, %if.then19, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then19 ], [ 0, %if.then30 ], [ 1, %if.end32 ], [ 1, %lor.lhs.false ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %selected_len) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_next_proto_validate(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #0 {
entry:
  %tmp_protocol = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %tmp_protocol to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false, %entry
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %tmp_protocol) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call3 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp_protocol) #15
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %if.then, label %while.cond, !llvm.loop !129

if.then:                                          ; preds = %lor.lhs.false, %while.body
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1501, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_next_proto_validate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_alpn(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %alpn_sent = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 31
  %1 = load i32, i32* %alpn_sent, align 8, !tbaa !68
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1568, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @PACKET_get_net_2_len(%struct.PACKET* noundef %pkt, i64* noundef nonnull %len) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %2 = load i64, i64* %len, align 8, !tbaa !28
  %cmp.not = icmp eq i64 %call2, %2
  br i1 %cmp.not, label %lor.lhs.false3, label %if.then9

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @PACKET_get_1_len(%struct.PACKET* noundef %pkt, i64* noundef nonnull %len) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %3 = load i64, i64* %len, align 8, !tbaa !28
  %cmp8.not = icmp eq i64 %call7, %3
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1580, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %4 = load i8*, i8** %alpn_selected, align 8, !tbaa !130
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1583) #12
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %call7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1584) #12
  store i8* %call12, i8** %alpn_selected, align 8, !tbaa !130
  %cmp17 = icmp eq i8* %call12, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end10
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  store i64 0, i64* %alpn_selected_len, align 8, !tbaa !131
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1587, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call23 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %call12, i64 noundef %call7) #15
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1591, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %alpn_selected_len28 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  store i64 %call7, i64* %alpn_selected_len28, align 8, !tbaa !131
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %alpn_selected29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 26, i32 6
  %6 = load i8*, i8** %alpn_selected29, align 8, !tbaa !93
  %cmp30 = icmp eq i8* %6, null
  br i1 %cmp30, label %if.end46.thread114, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end26
  %alpn_selected_len34 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 26, i32 7
  %7 = load i64, i64* %alpn_selected_len34, align 8, !tbaa !94
  %cmp35.not = icmp eq i64 %7, %call7
  br i1 %cmp35.not, label %lor.lhs.false36, label %if.end46

lor.lhs.false36:                                  ; preds = %lor.lhs.false31
  %8 = load i8*, i8** %alpn_selected, align 8, !tbaa !130
  %call42 = tail call i32 @memcmp(i8* noundef nonnull %6, i8* noundef %8, i64 noundef %call7) #13
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end46.thread, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false31, %lor.lhs.false36
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok, align 4, !tbaa !97
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %9 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool47.not = icmp eq i32 %9, 0
  br i1 %tobool47.not, label %if.then55, label %cleanup

if.end46.thread114:                               ; preds = %if.end26
  %early_data_ok115 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok115, align 4, !tbaa !97
  %hit116 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %10 = load i32, i32* %hit116, align 8, !tbaa !113
  %tobool47.not117 = icmp eq i32 %10, 0
  br i1 %tobool47.not117, label %if.end56, label %cleanup

if.end46.thread:                                  ; preds = %lor.lhs.false36
  %hit112 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %11 = load i32, i32* %hit112, align 8, !tbaa !113
  %tobool47.not113 = icmp eq i32 %11, 0
  br i1 %tobool47.not113, label %if.then55, label %cleanup

if.then55:                                        ; preds = %if.end46, %if.end46.thread
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1609, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end46.thread114
  %12 = load i8*, i8** %alpn_selected, align 8, !tbaa !130
  %call61 = tail call i8* @CRYPTO_memdup(i8* noundef %12, i64 noundef %call7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1613) #12
  %13 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %alpn_selected64 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %13, i64 0, i32 26, i32 6
  store i8* %call61, i8** %alpn_selected64, align 8, !tbaa !93
  %cmp68 = icmp eq i8* %call61, null
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end56
  %alpn_selected_len73 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %13, i64 0, i32 26, i32 7
  store i64 0, i64* %alpn_selected_len73, align 8, !tbaa !94
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1616, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_stoc_alpn, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end74:                                         ; preds = %if.end56
  %14 = load i64, i64* %alpn_selected_len28, align 8, !tbaa !131
  %alpn_selected_len79 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %13, i64 0, i32 26, i32 7
  store i64 %14, i64* %alpn_selected_len79, align 8, !tbaa !94
  br label %cleanup

cleanup:                                          ; preds = %if.end46.thread114, %if.end46.thread, %if.end46, %if.end74, %if.then70, %if.then55, %if.then25, %if.then18, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then18 ], [ 0, %if.then70 ], [ 0, %if.then55 ], [ 0, %if.then25 ], [ 0, %if.then ], [ 1, %if.end74 ], [ 1, %if.end46 ], [ 1, %if.end46.thread ], [ 1, %if.end46.thread114 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2_len(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4, !tbaa !26
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %data, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_use_srtp(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %id = alloca i32, align 4
  %ct = alloca i32, align 4
  %mki = alloca i32, align 4
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i32* %ct to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  %2 = bitcast i32* %mki to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %ct) #15
  %tobool = icmp eq i32 %call, 0
  %3 = load i32, i32* %ct, align 4
  %cmp = icmp ne i32 %3, 2
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %id) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false1
  %call5 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %mki) #15
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp9.not = icmp eq i64 %call8, 0
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false1, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1639, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_stoc_use_srtp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 353, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %4 = load i32, i32* %mki, align 4, !tbaa !26
  %cmp10.not = icmp eq i32 %4, 0
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1645, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_stoc_use_srtp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 352, i8* noundef null) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef %s) #12
  %cmp14 = icmp eq %struct.stack_st_SRTP_PROTECTION_PROFILE* %call13, null
  br i1 %cmp14, label %if.then15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef nonnull %call13) #15
  %call1848 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #12
  %cmp1949 = icmp sgt i32 %call1848, 0
  br i1 %cmp1949, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = load i32, i32* %id, align 4
  %conv = zext i32 %5 to i64
  br label %for.body

if.then15:                                        ; preds = %if.end12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1652, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_stoc_use_srtp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 359, i8* noundef null) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %call18 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call17) #12
  %cmp19 = icmp slt i32 %inc, %call18
  br i1 %cmp19, label %for.body, label %for.end, !llvm.loop !132

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef %i.050) #12
  %id22 = getelementptr inbounds i8, i8* %call21, i64 8
  %6 = bitcast i8* %id22 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !72
  %cmp23 = icmp eq i64 %7, %conv
  %inc = add nuw nsw i32 %i.050, 1
  br i1 %cmp23, label %if.then25, label %for.cond

if.then25:                                        ; preds = %for.body
  %srtp_profile = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 97
  %8 = bitcast %struct.srtp_protection_profile_st** %srtp_profile to i8**
  store i8* %call21, i8** %8, align 8, !tbaa !133
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1670, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_stoc_use_srtp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 353, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then25, %if.then15, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then15 ], [ 1, %if.then25 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @tls_parse_stoc_etm(%struct.ssl_st* nocapture noundef %s, %struct.PACKET* nocapture noundef readnone %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #10 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !74
  %and = and i64 %0, 524288
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !134
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 7
  %2 = load i32, i32* %algorithm_mac, align 8, !tbaa !135
  %cmp.not = icmp eq i32 %2, 64
  br i1 %cmp.not, label %if.end, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 6
  %3 = load i32, i32* %algorithm_enc, align 4, !tbaa !136
  %cmp5.not = icmp eq i32 %3, 4
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  store i32 1, i32* %use_etm, align 4, !tbaa !137
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @tls_parse_stoc_ems(%struct.ssl_st* nocapture noundef %s, %struct.PACKET* nocapture noundef readnone %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #10 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !74
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %1 = load i64, i64* %flags, align 8, !tbaa !138
  %or = or i64 %1, 512
  store i64 %or, i64* %flags, align 8, !tbaa !138
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %2 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %flags3 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 30
  %4 = load i32, i32* %flags3, align 8, !tbaa !139
  %or4 = or i32 %4, 1
  store i32 %or4, i32* %flags3, align 8, !tbaa !139
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_supported_versions(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %version = alloca i32, align 4
  %0 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %version) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1706, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_parse_stoc_supported_versions, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, i32* %version, align 4, !tbaa !26
  %cmp2.not = icmp eq i32 %1, 772
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1716, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_parse_stoc_supported_versions, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 116, i8* noundef null) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %context, 2048
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %version8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 772, i32* %version8, align 8, !tbaa !29
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end7 ], [ 1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_key_share(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %group_id = alloca i32, align 4
  %encoded_pt = alloca %struct.PACKET, align 8
  %pgroups = alloca i16*, align 8
  %num_groups = alloca i64, align 8
  %0 = bitcast i32* %group_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast %struct.PACKET* %encoded_pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !140
  %cmp2.not = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1741, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup124

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %group_id) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1746, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup124

if.end4:                                          ; preds = %if.end
  %and = and i32 %context, 2048
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end43, label %if.then6

if.then6:                                         ; preds = %if.end4
  %4 = bitcast i16** %pgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  store i16* null, i16** %pgroups, align 8, !tbaa !27
  %5 = bitcast i64* %num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14
  %call7 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp8.not = icmp eq i64 %call7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1755, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %6 = load i32, i32* %group_id, align 4, !tbaa !26
  %group_id12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %7 = load i16, i16* %group_id12, align 2, !tbaa !78
  %conv = zext i16 %7 to i32
  %cmp13 = icmp eq i32 %6, %conv
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1764, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %pgroups, i64* noundef nonnull %num_groups) #12
  %8 = load i64, i64* %num_groups, align 8, !tbaa !28
  %cmp17184.not = icmp eq i64 %8, 0
  br i1 %cmp17184.not, label %if.then30, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %9 = load i16*, i16** %pgroups, align 8, !tbaa !27
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %8
  br i1 %exitcond.not, label %if.then30, label %for.body, !llvm.loop !141

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0185 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %i.0185
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %conv19 = zext i16 %10 to i32
  %cmp20 = icmp eq i32 %6, %conv19
  %inc = add nuw i64 %i.0185, 1
  br i1 %cmp20, label %lor.lhs.false26, label %for.cond

lor.lhs.false26:                                  ; preds = %for.body
  %conv27 = trunc i32 %6 to i16
  %call28 = call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %conv27, i32 noundef 131076) #12
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.cond, %if.end16, %lor.lhs.false26
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1776, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #12
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false26
  store i16 %conv27, i16* %group_id12, align 2, !tbaa !78
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #12
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !80
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %if.then15, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then15 ], [ 0, %if.then30 ], [ 1, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  br label %cleanup124

if.end43:                                         ; preds = %if.end4
  %12 = load i32, i32* %group_id, align 4, !tbaa !26
  %group_id45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %13 = load i16, i16* %group_id45, align 2, !tbaa !78
  %conv46 = zext i16 %13 to i32
  %cmp47.not = icmp eq i32 %12, %conv46
  br i1 %cmp47.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end43
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1791, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #12
  br label %cleanup124

if.end50:                                         ; preds = %if.end43
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %14 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool51.not = icmp eq i32 %14, 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 22
  br i1 %tobool51.not, label %if.end70.sink.split, label %if.else

if.else:                                          ; preds = %if.end50
  %16 = load i32, i32* %kex_group, align 8, !tbaa !142
  %cmp55.not = icmp eq i32 %12, %16
  br i1 %cmp55.not, label %if.end70, label %if.then57

if.then57:                                        ; preds = %if.else
  %call59 = tail call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef nonnull %15, i32 noundef 0) #12
  %cmp60 = icmp eq %struct.ssl_session_st* %call59, null
  br i1 %cmp60, label %cleanup68.thread, label %cleanup68

cleanup68.thread:                                 ; preds = %if.then57
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1809, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup124

cleanup68:                                        ; preds = %if.then57
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %17) #12
  store %struct.ssl_session_st* %call59, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %kex_group67 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call59, i64 0, i32 22
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.end50, %cleanup68
  %kex_group67.sink = phi i32* [ %kex_group67, %cleanup68 ], [ %kex_group, %if.end50 ]
  store i32 %12, i32* %kex_group67.sink, align 8, !tbaa !142
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %conv71 = trunc i32 %12 to i16
  %call72 = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %18, i16 noundef zeroext %conv71) #12
  %cmp73 = icmp eq %struct.tls_group_info_st* %call72, null
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end70
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1818, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #12
  br label %cleanup124

if.end76:                                         ; preds = %if.end70
  %call77 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %encoded_pt) #15
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then83, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end76
  %call80 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %encoded_pt) #15
  %cmp81 = icmp eq i64 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %lor.lhs.false79, %if.end76
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1824, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup124

if.end84:                                         ; preds = %lor.lhs.false79
  %is_kem = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call72, i64 0, i32 9
  %19 = load i8, i8* %is_kem, align 8, !tbaa !143
  %tobool85.not = icmp eq i8 %19, 0
  br i1 %tobool85.not, label %if.then86, label %if.else110

if.then86:                                        ; preds = %if.end84
  %call87 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #12
  %cmp88 = icmp eq %struct.evp_pkey_st* %call87, null
  br i1 %cmp88, label %if.then94, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.then86
  %call91 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call87, %struct.evp_pkey_st* noundef nonnull %2) #12
  %cmp92 = icmp slt i32 %call91, 1
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %lor.lhs.false90, %if.then86
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1832, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 296, i8* noundef null) #12
  br label %cleanup124

if.end95:                                         ; preds = %lor.lhs.false90
  %call96 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %encoded_pt) #15
  %call97 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %encoded_pt) #15
  %call98 = tail call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call87, i8* noundef %call96, i64 noundef %call97) #12
  %cmp99 = icmp slt i32 %call98, 1
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end95
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1838, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_stoc_key_share, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 306, i8* noundef null) #12
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call87) #12
  br label %cleanup124

if.end102:                                        ; preds = %if.end95
  %call103 = tail call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %2, %struct.evp_pkey_st* noundef nonnull %call87, i32 noundef 1) #12
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end102
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call87) #12
  br label %cleanup124

if.end107:                                        ; preds = %if.end102
  store %struct.evp_pkey_st* %call87, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !140
  br label %if.end122

if.else110:                                       ; preds = %if.end84
  %call111 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %encoded_pt) #15
  %call113 = tail call i32 @ssl_decapsulate(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %2, i8* noundef %call111, i64 noundef %call80, i32 noundef 1) #12
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %cleanup124, label %if.end122

if.end122:                                        ; preds = %if.else110, %if.end107
  %did_kex = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 33
  store i8 1, i8* %did_kex, align 1, !tbaa !145
  br label %cleanup124

cleanup124:                                       ; preds = %cleanup68.thread, %if.else110, %if.end122, %if.then106, %if.then101, %if.then94, %if.then83, %if.then75, %if.then49, %cleanup, %if.then3, %if.then
  %retval.4 = phi i32 [ 0, %if.then ], [ %retval.0, %cleanup ], [ 0, %if.then49 ], [ 0, %if.then75 ], [ 0, %if.then83 ], [ 1, %if.end122 ], [ 0, %if.else110 ], [ 0, %if.then94 ], [ 0, %if.then101 ], [ 0, %if.then106 ], [ 0, %if.then3 ], [ 0, %cleanup68.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.4
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !101
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !26
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #15
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !101
  %5 = load i8*, i8** %data, align 8, !tbaa !27
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !98
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !100
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ssl_derive(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_decapsulate(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_cookie(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cookie = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %cookie) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tls13_cookie = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 32
  %tls13_cookie_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 33
  %call2 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %cookie, i8** noundef nonnull %tls13_cookie, i64* noundef nonnull %tls13_cookie_len) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1873, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_stoc_cookie, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 421) #12
  store i8* null, i8** %data, align 8, !tbaa !27
  store i64 0, i64* %len, align 8, !tbaa !28
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !98
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 430) #12
  store i8* %call1, i8** %data, align 8, !tbaa !27
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_early_data(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %max_early_data = alloca i64, align 8
  %cmp = icmp eq i32 %context, 8192
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %max_early_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef %pkt, i64* noundef nonnull %max_early_data) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp2.not = icmp eq i64 %call1, 0
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1888, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_parse_stoc_early_data, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 174, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i64, i64* %max_early_data, align 8, !tbaa !28
  %conv = trunc i64 %1 to i32
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %max_early_data4 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 26, i32 5
  store i32 %conv, i32* %max_early_data4, align 4, !tbaa !90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  br label %return

if.end5:                                          ; preds = %entry
  %call6 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp7.not = icmp eq i64 %call6, 0
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1898, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_parse_stoc_early_data, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end10:                                         ; preds = %if.end5
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  %3 = load i32, i32* %early_data_ok, align 4, !tbaa !97
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end10
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !113
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false13, %if.end10
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1909, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_parse_stoc_early_data, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 110, i8* noundef null) #12
  br label %return

if.end16:                                         ; preds = %lor.lhs.false13
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  store i32 2, i32* %early_data, align 8, !tbaa !96
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then9, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %if.then9 ], [ 1, %if.end16 ], [ 0, %if.then15 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_stoc_psk(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %identity = alloca i32, align 4
  %0 = bitcast i32* %identity to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %identity) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1925, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, i32* %identity, align 4, !tbaa !26
  %tick_identity = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 36
  %2 = load i32, i32* %tick_identity, align 8, !tbaa !104
  %cmp2.not = icmp ult i32 %1, %2
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1930, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 114, i8* noundef null) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %1, 0
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !86
  %cmp6 = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp5, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end4
  %cmp10 = icmp eq i32 %2, 2
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then11, label %if.end18

if.then11:                                        ; preds = %land.lhs.true
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 1, i32* %hit, align 8, !tbaa !113
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %3) #12
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %psksession, align 8, !tbaa !86
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  br i1 %cmp6, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1948, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_stoc_psk, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true, %if.end14
  %psksession1573 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %4 = load i32, i32* %early_data_state, align 4, !tbaa !89
  switch i32 %4, label %if.then31 [
    i32 3, label %lor.lhs.false23
    i32 7, label %lor.lhs.false23
  ]

lor.lhs.false23:                                  ; preds = %if.end18, %if.end18
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !45
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 26, i32 5
  %6 = load i32, i32* %max_early_data, align 4, !tbaa !90
  %cmp25.not = icmp eq i32 %6, 0
  br i1 %cmp25.not, label %lor.lhs.false26, label %if.then31

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %max_early_data29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 26, i32 5
  %7 = load i32, i32* %max_early_data29, align 4, !tbaa !90
  %cmp30 = icmp eq i32 %7, 0
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end18, %lor.lhs.false26, %lor.lhs.false23
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 29, i64 0
  %arraydecay34 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 2, i64 0
  %call35 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay34, i64 noundef 64) #12
  %session37.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %.pre70 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session37.phi.trans.insert, align 8, !tbaa !45
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %lor.lhs.false26
  %8 = phi %struct.ssl_session_st* [ %.pre70, %if.then31 ], [ %5, %lor.lhs.false26 ]
  %session37 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %8) #12
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession1573, align 8, !tbaa !86
  store %struct.ssl_session_st* %9, %struct.ssl_session_st** %session37, align 8, !tbaa !45
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %psksession1573, align 8, !tbaa !86
  %hit41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 1, i32* %hit41, align 8, !tbaa !113
  br i1 %cmp5, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end36
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok, align 4, !tbaa !97
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then43, %if.then17, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.then11 ], [ 0, %if.then17 ], [ 1, %if.then43 ], [ 1, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_pkey_st* @ssl_generate_pkey_group(%struct.ssl_st* noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #10 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  store i8* %0, i8** %data, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #10 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !98
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !100
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %1 = load i8, i8* %0, align 1, !tbaa !126
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !26
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef %len) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %1 = load i8, i8* %0, align 1, !tbaa !126
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !26
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !126
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !26
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #10 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #15
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !98
  %1 = load i8, i8* %0, align 1, !tbaa !126
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  store i64 %shl, i64* %data, align 8, !tbaa !28
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !126
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !28
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !126
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or8 = or i64 %shl7, %or
  store i64 %or8, i64* %data, align 8, !tbaa !28
  %add.ptr10 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !126
  %conv11 = zext i8 %4 to i64
  %or12 = or i64 %or8, %conv11
  store i64 %or12, i64* %data, align 8, !tbaa !28
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 2976}
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
!22 = !{!5, !11, i64 1072}
!23 = !{!5, !9, i64 2648}
!24 = !{!5, !7, i64 2892}
!25 = !{!5, !9, i64 3056}
!26 = !{!6, !6, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!5, !6, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !6, i64 28}
!33 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!34 = !{!33, !6, i64 32}
!35 = !{!33, !6, i64 44}
!36 = !{!14, !14, i64 0}
!37 = distinct !{!37, !31}
!38 = !{!5, !9, i64 8}
!39 = !{!40, !9, i64 192}
!40 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!41 = !{!42, !6, i64 96}
!42 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!43 = distinct !{!43, !31}
!44 = !{!5, !6, i64 60}
!45 = !{!5, !9, i64 2328}
!46 = !{!47, !9, i64 824}
!47 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !48, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!48 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!49 = !{!47, !6, i64 0}
!50 = !{!47, !11, i64 832}
!51 = !{!5, !9, i64 2784}
!52 = !{!53, !9, i64 8}
!53 = !{!"tls_session_ticket_ext_st", !14, i64 0, !9, i64 8}
!54 = !{!53, !14, i64 0}
!55 = !{!5, !6, i64 2572}
!56 = !{!5, !6, i64 2656}
!57 = !{!5, !9, i64 2680}
!58 = distinct !{!58, !31}
!59 = !{!5, !9, i64 2688}
!60 = !{!5, !9, i64 2472}
!61 = !{!62, !9, i64 712}
!62 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !63, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !64, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !65, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!63 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!64 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!65 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!66 = !{!5, !11, i64 576}
!67 = !{!5, !11, i64 712}
!68 = !{!5, !6, i64 1192}
!69 = !{!5, !9, i64 2824}
!70 = !{!5, !11, i64 2832}
!71 = distinct !{!71, !31}
!72 = !{!73, !11, i64 8}
!73 = !{!"srtp_protection_profile_st", !9, i64 0, !11, i64 8}
!74 = !{!5, !11, i64 2536}
!75 = !{!5, !9, i64 2920}
!76 = distinct !{!76, !31}
!77 = !{!5, !6, i64 2856}
!78 = !{!5, !14, i64 1198}
!79 = distinct !{!79, !31}
!80 = !{!5, !9, i64 744}
!81 = !{!5, !7, i64 2280}
!82 = !{!5, !11, i64 2880}
!83 = !{!5, !9, i64 2872}
!84 = !{!5, !9, i64 2464}
!85 = !{!5, !9, i64 2440}
!86 = !{!5, !9, i64 2336}
!87 = !{!5, !9, i64 2344}
!88 = !{!5, !11, i64 2352}
!89 = !{!5, !7, i64 132}
!90 = !{!47, !6, i64 852}
!91 = !{!5, !6, i64 7488}
!92 = !{!47, !9, i64 816}
!93 = !{!47, !9, i64 856}
!94 = !{!47, !11, i64 864}
!95 = distinct !{!95, !31}
!96 = !{!5, !6, i64 2864}
!97 = !{!5, !6, i64 2868}
!98 = !{!99, !9, i64 0}
!99 = !{!"", !9, i64 0, !11, i64 8}
!100 = !{!99, !11, i64 8}
!101 = !{i64 0, i64 8, !27, i64 8, i64 8, !28}
!102 = !{!47, !9, i64 760}
!103 = !{!33, !6, i64 64}
!104 = !{!5, !6, i64 2896}
!105 = !{!47, !11, i64 736}
!106 = !{!47, !11, i64 840}
!107 = !{!47, !6, i64 848}
!108 = !{!5, !6, i64 2988}
!109 = !{!5, !7, i64 2984}
!110 = !{!5, !11, i64 1144}
!111 = !{!5, !6, i64 1152}
!112 = !{!47, !7, i64 872}
!113 = !{!5, !6, i64 1232}
!114 = !{!5, !11, i64 2736}
!115 = !{!5, !9, i64 2744}
!116 = !{!5, !9, i64 2792}
!117 = !{!5, !9, i64 2800}
!118 = !{!5, !6, i64 2712}
!119 = !{!40, !6, i64 0}
!120 = !{!5, !6, i64 2676}
!121 = !{!5, !9, i64 2664}
!122 = !{!5, !14, i64 2672}
!123 = !{!5, !9, i64 2200}
!124 = !{!62, !9, i64 720}
!125 = !{!5, !9, i64 2840}
!126 = !{!7, !7, i64 0}
!127 = !{!5, !11, i64 2848}
!128 = !{!5, !6, i64 1156}
!129 = distinct !{!129, !31}
!130 = !{!5, !9, i64 1160}
!131 = !{!5, !11, i64 1168}
!132 = distinct !{!132, !31}
!133 = !{!5, !9, i64 2968}
!134 = !{!5, !9, i64 736}
!135 = !{!33, !6, i64 40}
!136 = !{!33, !6, i64 36}
!137 = !{!5, !6, i64 2860}
!138 = !{!5, !11, i64 168}
!139 = !{!47, !6, i64 904}
!140 = !{!5, !9, i64 1200}
!141 = distinct !{!141, !31}
!142 = !{!47, !6, i64 776}
!143 = !{!144, !7, i64 48}
!144 = !{!"tls_group_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !14, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48}
!145 = !{!5, !7, i64 1197}
