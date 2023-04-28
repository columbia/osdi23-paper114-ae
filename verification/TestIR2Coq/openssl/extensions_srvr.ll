; ModuleID = 'ssl/statem/extensions_srvr.c'
source_filename = "ssl/statem/extensions_srvr.c"
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
%struct.x509_st = type opaque
%struct.stack_st = type opaque
%struct.ocsp_responder_id_st = type opaque
%struct.X509_extension_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"ssl/statem/extensions_srvr.c\00", align 1
@__func__.tls_parse_ctos_renegotiate = private unnamed_addr constant [27 x i8] c"tls_parse_ctos_renegotiate\00", align 1
@__func__.tls_parse_ctos_server_name = private unnamed_addr constant [27 x i8] c"tls_parse_ctos_server_name\00", align 1
@__func__.tls_parse_ctos_maxfragmentlen = private unnamed_addr constant [30 x i8] c"tls_parse_ctos_maxfragmentlen\00", align 1
@__func__.tls_parse_ctos_srp = private unnamed_addr constant [19 x i8] c"tls_parse_ctos_srp\00", align 1
@__func__.tls_parse_ctos_ec_pt_formats = private unnamed_addr constant [29 x i8] c"tls_parse_ctos_ec_pt_formats\00", align 1
@__func__.tls_parse_ctos_session_ticket = private unnamed_addr constant [30 x i8] c"tls_parse_ctos_session_ticket\00", align 1
@__func__.tls_parse_ctos_sig_algs_cert = private unnamed_addr constant [29 x i8] c"tls_parse_ctos_sig_algs_cert\00", align 1
@__func__.tls_parse_ctos_sig_algs = private unnamed_addr constant [24 x i8] c"tls_parse_ctos_sig_algs\00", align 1
@__func__.tls_parse_ctos_status_request = private unnamed_addr constant [30 x i8] c"tls_parse_ctos_status_request\00", align 1
@__func__.tls_parse_ctos_alpn = private unnamed_addr constant [20 x i8] c"tls_parse_ctos_alpn\00", align 1
@__func__.tls_parse_ctos_use_srtp = private unnamed_addr constant [24 x i8] c"tls_parse_ctos_use_srtp\00", align 1
@__func__.tls_parse_ctos_psk_kex_modes = private unnamed_addr constant [29 x i8] c"tls_parse_ctos_psk_kex_modes\00", align 1
@__func__.tls_parse_ctos_key_share = private unnamed_addr constant [25 x i8] c"tls_parse_ctos_key_share\00", align 1
@__func__.tls_parse_ctos_cookie = private unnamed_addr constant [22 x i8] c"tls_parse_ctos_cookie\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@hrrrandom = external constant [0 x i8], align 1
@__func__.tls_parse_ctos_supported_groups = private unnamed_addr constant [32 x i8] c"tls_parse_ctos_supported_groups\00", align 1
@__func__.tls_parse_ctos_ems = private unnamed_addr constant [19 x i8] c"tls_parse_ctos_ems\00", align 1
@__func__.tls_parse_ctos_early_data = private unnamed_addr constant [26 x i8] c"tls_parse_ctos_early_data\00", align 1
@__func__.tls_parse_ctos_psk = private unnamed_addr constant [19 x i8] c"tls_parse_ctos_psk\00", align 1
@__func__.tls_parse_ctos_post_handshake_auth = private unnamed_addr constant [35 x i8] c"tls_parse_ctos_post_handshake_auth\00", align 1
@__func__.tls_construct_stoc_renegotiate = private unnamed_addr constant [31 x i8] c"tls_construct_stoc_renegotiate\00", align 1
@__func__.tls_construct_stoc_server_name = private unnamed_addr constant [31 x i8] c"tls_construct_stoc_server_name\00", align 1
@__func__.tls_construct_stoc_maxfragmentlen = private unnamed_addr constant [34 x i8] c"tls_construct_stoc_maxfragmentlen\00", align 1
@__func__.tls_construct_stoc_ec_pt_formats = private unnamed_addr constant [33 x i8] c"tls_construct_stoc_ec_pt_formats\00", align 1
@__func__.tls_construct_stoc_supported_groups = private unnamed_addr constant [36 x i8] c"tls_construct_stoc_supported_groups\00", align 1
@__func__.tls_construct_stoc_session_ticket = private unnamed_addr constant [34 x i8] c"tls_construct_stoc_session_ticket\00", align 1
@__func__.tls_construct_stoc_status_request = private unnamed_addr constant [34 x i8] c"tls_construct_stoc_status_request\00", align 1
@__func__.tls_construct_stoc_next_proto_neg = private unnamed_addr constant [34 x i8] c"tls_construct_stoc_next_proto_neg\00", align 1
@__func__.tls_construct_stoc_alpn = private unnamed_addr constant [24 x i8] c"tls_construct_stoc_alpn\00", align 1
@__func__.tls_construct_stoc_use_srtp = private unnamed_addr constant [28 x i8] c"tls_construct_stoc_use_srtp\00", align 1
@__func__.tls_construct_stoc_etm = private unnamed_addr constant [23 x i8] c"tls_construct_stoc_etm\00", align 1
@__func__.tls_construct_stoc_ems = private unnamed_addr constant [23 x i8] c"tls_construct_stoc_ems\00", align 1
@__func__.tls_construct_stoc_supported_versions = private unnamed_addr constant [38 x i8] c"tls_construct_stoc_supported_versions\00", align 1
@__func__.tls_construct_stoc_key_share = private unnamed_addr constant [29 x i8] c"tls_construct_stoc_key_share\00", align 1
@__func__.tls_construct_stoc_cookie = private unnamed_addr constant [26 x i8] c"tls_construct_stoc_cookie\00", align 1
@__const.tls_construct_stoc_cryptopro_bug.cryptopro_ext = private unnamed_addr constant [36 x i8] c"\FD\E8\00 0\1E0\08\06\06*\85\03\02\02\090\08\06\06*\85\03\02\02\160\08\06\06*\85\03\02\02\17", align 16
@__func__.tls_construct_stoc_cryptopro_bug = private unnamed_addr constant [33 x i8] c"tls_construct_stoc_cryptopro_bug\00", align 1
@__func__.tls_construct_stoc_early_data = private unnamed_addr constant [30 x i8] c"tls_construct_stoc_early_data\00", align 1
@__func__.tls_construct_stoc_psk = private unnamed_addr constant [23 x i8] c"tls_construct_stoc_psk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_renegotiate(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ilen = alloca i32, align 4
  %data = alloca i8*, align 8
  %0 = bitcast i32* %ilen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %ilen) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %ilen, align 4, !tbaa !4
  %conv = zext i32 %2 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_renegotiate, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 336, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  %3 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !8
  %cmp.not = icmp eq i64 %3, %conv
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_renegotiate, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 337, i8* noundef null) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !tbaa !23
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %call10 = tail call i32 @memcmp(i8* noundef %4, i8* noundef nonnull %arraydecay, i64 noundef %conv) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end6
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_renegotiate, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 337, i8* noundef null) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  store i32 1, i32* %send_connection_binding, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then12 ], [ 1, %if.end13 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_server_name(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %servname_type = alloca i32, align 4
  %sni = alloca %struct.PACKET, align 8
  %hostname = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %servname_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %sni to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %hostname to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %sni) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %sni) #14
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %sni, i32* noundef nonnull %servname_type) #14
  %tobool3 = icmp eq i32 %call2, 0
  %3 = load i32, i32* %servname_type, align 4
  %cmp5 = icmp ne i32 %3, 0
  %or.cond = select i1 %tobool3, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef nonnull %sni, %struct.PACKET* noundef nonnull %hostname) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then20, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end10
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !27
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !29
  %and = and i32 %7, 8
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %8 = load i32, i32* %version, align 8, !tbaa !31
  %cmp15 = icmp slt i32 %8, 772
  %cmp19.not = icmp eq i32 %8, 65536
  %or.cond71 = or i1 %cmp15, %cmp19.not
  br i1 %or.cond71, label %if.else, label %if.then20

if.then20:                                        ; preds = %land.lhs.true, %if.end10
  %call21 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %hostname) #14
  %cmp22 = icmp ugt i64 %call21, 255
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 112, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %call25 = call fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* noundef nonnull %hostname) #14
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 112, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %hostname29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %9 = load i8*, i8** %hostname29, align 8, !tbaa !32
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 144) #15
  store i8* null, i8** %hostname29, align 8, !tbaa !32
  %call34 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %hostname, i8** noundef nonnull %hostname29) #14
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end28
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_parse_ctos_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %servername_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  store i32 1, i32* %servername_done, align 8, !tbaa !33
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %10 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %hostname39 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 26, i32 0
  %11 = load i8*, i8** %hostname39, align 8, !tbaa !35
  %cmp40.not = icmp eq i8* %11, null
  br i1 %cmp40.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %call47 = tail call i64 @strlen(i8* noundef nonnull %11) #16
  %call48 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %hostname, i8* noundef nonnull %11, i64 noundef %call47) #14
  %tobool49 = icmp ne i32 %call48, 0
  %phi.cast = zext i1 %tobool49 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i32 [ 0, %if.else ], [ %phi.cast, %land.rhs ]
  %servername_done50 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  store i32 %12, i32* %servername_done50, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.end, %if.then36, %if.then27, %if.then23, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then23 ], [ 0, %if.then27 ], [ 0, %if.then36 ], [ 1, %land.end ], [ 1, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !38
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !4
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #14
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  %5 = load i8*, i8** %data, align 8, !tbaa !23
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !42
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !42
  %call = tail call i8* @memchr(i8* noundef %0, i32 noundef 0, i64 noundef %1) #16
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_strndup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !23
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 450) #15
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !40
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %call1 = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 453) #15
  store i8* %call1, i8** %data, align 8, !tbaa !23
  %cmp = icmp ne i8* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %ptr, i64 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef %ptr, i64 noundef %num) #15
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_maxfragmentlen(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %value = alloca i32, align 4
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %value) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_maxfragmentlen, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, i32* %value, align 4, !tbaa !4
  %2 = add i32 %1, -1
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_maxfragmentlen, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 232, i8* noundef null) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool6.not = icmp eq i32 %4, 0
  %session13.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %session13.phi.trans.insert, align 8, !tbaa !34
  br i1 %tobool6.not, label %if.end11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre, i64 0, i32 26, i32 8
  %5 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !43
  %conv = zext i8 %5 to i32
  %cmp8.not = icmp eq i32 %1, %conv
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true7
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_maxfragmentlen, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 232, i8* noundef null) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end5, %land.lhs.true7
  %conv12 = trunc i32 %1 to i8
  %max_fragment_len_mode15 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre, i64 0, i32 26, i32 8
  store i8 %conv12, i8* %max_fragment_len_mode15, align 8, !tbaa !43
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 1, %if.end11 ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_srp(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %srp_I = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %srp_I to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %srp_I) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* noundef nonnull %srp_I) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_srp, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %call3 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %srp_I, i8** noundef nonnull %login) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_srp, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !38
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !4
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #14
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  %5 = load i8*, i8** %data, align 8, !tbaa !23
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_ec_pt_formats(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ec_point_format_list = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %ec_point_format_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %ec_point_format_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %ec_point_format_list) #14
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_ctos_ec_pt_formats, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  %call5 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %ec_point_format_list, i8** noundef nonnull %peer_ecpointformats, i64* noundef nonnull %peer_ecpointformats_len) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.then3
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_ctos_ec_pt_formats, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 1, %if.then3 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !23
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 421) #15
  store i8* null, i8** %data, align 8, !tbaa !23
  store i64 0, i64* %len, align 8, !tbaa !39
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !40
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 430) #15
  store i8* %call1, i8** %data, align 8, !tbaa !23
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_session_ticket(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %session_ticket_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 20
  %0 = load i32 (%struct.ssl_st*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8*, i32, i8*)** %session_ticket_cb, align 8, !tbaa !44
  %tobool.not = icmp eq i32 (%struct.ssl_st*, i8*, i32, i8*)* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  %call3 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %conv = trunc i64 %call3 to i32
  %session_ticket_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 21
  %1 = load i8*, i8** %session_ticket_cb_arg, align 8, !tbaa !45
  %call5 = tail call i32 %0(%struct.ssl_st* noundef nonnull %s, i8* noundef %call, i32 noundef %conv, i8* noundef %1) #15
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_session_ticket, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_sig_algs_cert(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %supported_sig_algs = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %supported_sig_algs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %supported_sig_algs) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %supported_sig_algs) #14
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_ctos_sig_algs_cert, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @tls1_save_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %supported_sig_algs, i32 noundef 1) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_ctos_sig_algs_cert, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls1_save_sigalgs(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_sig_algs(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %supported_sig_algs = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %supported_sig_algs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %supported_sig_algs) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %supported_sig_algs) #14
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_ctos_sig_algs, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @tls1_save_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %supported_sig_algs, i32 noundef 0) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_ctos_sig_algs, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_status_request(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %responder_id_list = alloca %struct.PACKET, align 8
  %exts = alloca %struct.PACKET, align 8
  %responder_id = alloca %struct.PACKET, align 8
  %id_data = alloca i8*, align 8
  %ext_data = alloca i8*, align 8
  %0 = bitcast %struct.PACKET* %responder_id_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %exts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %2 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %2, 0
  %cmp.not = icmp eq %struct.x509_st* %x, null
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end2, label %cleanup105

if.end2:                                          ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %call = tail call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %status_type) #14
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup105

if.end5:                                          ; preds = %if.end2
  %3 = load i32, i32* %status_type, align 8, !tbaa !46
  %cmp8.not = icmp eq i32 %3, 1
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  store i32 -1, i32* %status_type, align 8, !tbaa !46
  br label %cleanup105

if.end12:                                         ; preds = %if.end5
  %call13 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %responder_id_list) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup105

if.end16:                                         ; preds = %if.end12
  %ocsp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8
  %ids = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ocsp, i64 0, i32 0
  %4 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !47
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %4) #14
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call18, void (i8*)* noundef bitcast (void (%struct.ocsp_responder_id_st*)* @OCSP_RESPID_free to void (i8*)*)) #15
  %call20 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %responder_id_list) #14
  %cmp21.not = icmp eq i64 %call20, 0
  br i1 %cmp21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end16
  %call23 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #15
  %5 = bitcast %struct.anon.5* %ocsp to %struct.stack_st**
  store %struct.stack_st* %call23, %struct.stack_st** %5, align 8, !tbaa !47
  %cmp30 = icmp eq %struct.stack_st* %call23, null
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then22
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup105

if.else:                                          ; preds = %if.end16
  store %struct.stack_st_OCSP_RESPID* null, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !47
  br label %if.end36

if.end36:                                         ; preds = %if.then22, %if.else
  %call37149 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %responder_id_list) #14
  %cmp38.not150 = icmp eq i64 %call37149, 0
  br i1 %cmp38.not150, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end36
  %6 = bitcast %struct.PACKET* %responder_id to i8*
  %7 = bitcast i8** %id_data to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #13
  %call39 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %responder_id_list, %struct.PACKET* noundef nonnull %responder_id) #14
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call41 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %responder_id) #14
  %cmp42 = icmp eq i64 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false, %while.body
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %cleanup105

if.end44:                                         ; preds = %lor.lhs.false
  %call45 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %responder_id) #14
  store i8* %call45, i8** %id_data, align 8, !tbaa !23
  %call46 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %responder_id) #14
  %sext135 = shl i64 %call46, 32
  %conv47 = ashr exact i64 %sext135, 32
  %call48 = call %struct.ocsp_responder_id_st* @d2i_OCSP_RESPID(%struct.ocsp_responder_id_st** noundef null, i8** noundef nonnull %id_data, i64 noundef %conv47) #15
  %cmp49 = icmp eq %struct.ocsp_responder_id_st* %call48, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end44
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %cleanup105

if.end52:                                         ; preds = %if.end44
  %8 = load i8*, i8** %id_data, align 8, !tbaa !23
  %call53 = call fastcc i8* @PACKET_end(%struct.PACKET* noundef nonnull %responder_id) #14
  %cmp54.not = icmp eq i8* %8, %call53
  br i1 %cmp54.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end52
  call void @OCSP_RESPID_free(%struct.ocsp_responder_id_st* noundef nonnull %call48) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %cleanup105

if.end57:                                         ; preds = %if.end52
  %9 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !47
  %call61 = call fastcc %struct.stack_st* @ossl_check_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %9) #14
  %10 = bitcast %struct.ocsp_responder_id_st* %call48 to i8*
  %call63 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call61, i8* noundef nonnull %10) #15
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %cleanup

if.then65:                                        ; preds = %if.end57
  call void @OCSP_RESPID_free(%struct.ocsp_responder_id_st* noundef nonnull %call48) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %cleanup105

cleanup:                                          ; preds = %if.end57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  %call37 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %responder_id_list) #14
  %cmp38.not = icmp eq i64 %call37, 0
  br i1 %cmp38.not, label %while.end, label %while.body, !llvm.loop !48

while.end:                                        ; preds = %cleanup, %if.end36
  %call69 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %exts) #14
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %while.end
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup105

if.end72:                                         ; preds = %while.end
  %call73 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %exts) #14
  %cmp74.not = icmp eq i64 %call73, 0
  br i1 %cmp74.not, label %cleanup105, label %if.then76

if.then76:                                        ; preds = %if.end72
  %11 = bitcast i8** %ext_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  %call77 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %exts) #14
  store i8* %call77, i8** %ext_data, align 8, !tbaa !23
  %exts80 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 1
  %12 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts80, align 8, !tbaa !50
  %call81 = call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %12) #14
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call81, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #15
  %call83 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %exts) #14
  %sext = shl i64 %call83, 32
  %conv85 = ashr exact i64 %sext, 32
  %call86 = call %struct.stack_st_X509_EXTENSION* @d2i_X509_EXTENSIONS(%struct.stack_st_X509_EXTENSION** noundef null, i8** noundef nonnull %ext_data, i64 noundef %conv85) #15
  store %struct.stack_st_X509_EXTENSION* %call86, %struct.stack_st_X509_EXTENSION** %exts80, align 8, !tbaa !50
  %cmp93 = icmp eq %struct.stack_st_X509_EXTENSION* %call86, null
  br i1 %cmp93, label %if.then99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.then76
  %13 = load i8*, i8** %ext_data, align 8, !tbaa !23
  %call96 = call fastcc i8* @PACKET_end(%struct.PACKET* noundef nonnull %exts) #14
  %cmp97.not = icmp eq i8* %13, %call96
  br i1 %cmp97.not, label %cleanup101, label %if.then99

if.then99:                                        ; preds = %lor.lhs.false95, %if.then76
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_parse_ctos_status_request, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  br label %cleanup105

cleanup101:                                       ; preds = %lor.lhs.false95
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  br label %cleanup105

cleanup105:                                       ; preds = %if.end72, %cleanup101, %if.then99, %if.then43, %if.then51, %if.then56, %if.then65, %entry, %if.then71, %if.then31, %if.then15, %if.then9, %if.then4
  %retval.3 = phi i32 [ 1, %if.then9 ], [ 0, %if.then31 ], [ 0, %if.then71 ], [ 0, %if.then15 ], [ 0, %if.then4 ], [ 1, %entry ], [ 0, %if.then65 ], [ 0, %if.then56 ], [ 0, %if.then51 ], [ 0, %if.then43 ], [ 0, %if.then99 ], [ 1, %cleanup101 ], [ 1, %if.end72 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !38
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !4
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  %5 = load i8*, i8** %data, align 8, !tbaa !23
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef readnone %sk) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_RESPID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OCSP_RESPID_free(%struct.ocsp_responder_id_st* noundef) #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare %struct.ocsp_responder_id_st* @d2i_OCSP_RESPID(%struct.ocsp_responder_id_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_end(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  ret i8* %add.ptr
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #3

declare %struct.stack_st_X509_EXTENSION* @d2i_X509_EXTENSIONS(%struct.stack_st_X509_EXTENSION** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @tls_parse_ctos_npn(%struct.ssl_st* nocapture noundef %s, %struct.PACKET* nocapture noundef readnone %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #2 {
entry:
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %0 = load i64, i64* %finish_md_len, align 8, !tbaa !51
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %1 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !52
  %cmp3 = icmp eq i64 %1, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  store i32 1, i32* %npn_seen, align 4, !tbaa !53
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_alpn(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %protocol_list = alloca %struct.PACKET, align 8
  %save_protocol_list = alloca %struct.PACKET, align 8
  %protocol = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %protocol_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %save_protocol_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %protocol to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %3 = load i64, i64* %finish_md_len, align 8, !tbaa !51
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %4 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !52
  %cmp3 = icmp eq i64 %4, 0
  br i1 %cmp3, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %protocol_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %protocol_list) #14
  %cmp6 = icmp ult i64 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_ctos_alpn, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !38
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end8
  %call9 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %protocol_list, %struct.PACKET* noundef nonnull %protocol) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %do.body
  %call12 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %protocol) #14
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.then14, label %do.cond

if.then14:                                        ; preds = %lor.lhs.false11, %do.body
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 442, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_ctos_alpn, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

do.cond:                                          ; preds = %lor.lhs.false11
  %call16 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %protocol_list) #14
  %cmp17.not = icmp eq i64 %call16, 0
  br i1 %cmp17.not, label %do.end, label %do.body, !llvm.loop !54

do.end:                                           ; preds = %do.cond
  %alpn_proposed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 29
  %5 = load i8*, i8** %alpn_proposed, align 8, !tbaa !55
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 447) #15
  store i8* null, i8** %alpn_proposed, align 8, !tbaa !55
  %alpn_proposed_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 30
  store i64 0, i64* %alpn_proposed_len, align 8, !tbaa !56
  %call26 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %save_protocol_list, i8** noundef nonnull %alpn_proposed, i64* noundef nonnull %alpn_proposed_len) #14
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %cleanup

if.then28:                                        ; preds = %do.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_parse_ctos_alpn, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false, %if.then28, %if.then14, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then14 ], [ 0, %if.then28 ], [ 1, %lor.lhs.false ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #5 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !38
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !4
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  %5 = load i8*, i8** %data, align 8, !tbaa !23
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_use_srtp(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ct = alloca i32, align 4
  %mki_len = alloca i32, align 4
  %id = alloca i32, align 4
  %subpkt = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %ct to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i32* %mki_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %subpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #13
  %call = tail call %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef %s) #15
  %cmp = icmp eq %struct.stack_st_SRTP_PROTECTION_PROFILE* %call, null
  br i1 %cmp, label %cleanup40, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %ct) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup40.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %ct, align 4, !tbaa !4
  %and = and i32 %4, 1
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %cleanup40.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %conv = zext i32 %4 to i64
  %call4 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %subpkt, i64 noundef %conv) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup40.sink.split, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false3
  %call8 = tail call %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef %s) #15
  %srtp_profile = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 97
  store %struct.srtp_protection_profile_st* null, %struct.srtp_protection_profile_st** %srtp_profile, align 8, !tbaa !57
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef %call8) #14
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #15
  %call1174 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #14
  %tobool12.not75 = icmp eq i64 %call1174, 0
  br i1 %tobool12.not75, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end7
  %5 = bitcast %struct.srtp_protection_profile_st** %srtp_profile to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end
  %srtp_pref.076 = phi i32 [ %call10, %while.body.lr.ph ], [ %srtp_pref.3, %for.end ]
  %call13 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %subpkt, i32* noundef nonnull %id) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup40.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body
  %cmp1772 = icmp sgt i32 %srtp_pref.076, 0
  br i1 %cmp1772, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = load i32, i32* %id, align 4
  %conv22 = zext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.073) #15
  %id21 = getelementptr inbounds i8, i8* %call20, i64 8
  %7 = bitcast i8* %id21 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !58
  %cmp23 = icmp eq i64 %8, %conv22
  br i1 %cmp23, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  store i8* %call20, i8** %5, align 8, !tbaa !57
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %srtp_pref.076
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !60

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %cleanup
  %srtp_pref.3 = phi i32 [ %i.073, %cleanup ], [ %srtp_pref.076, %for.cond.preheader ], [ %srtp_pref.076, %for.inc ]
  %call11 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %subpkt) #14
  %tobool12.not = icmp eq i64 %call11, 0
  br i1 %tobool12.not, label %while.end, label %while.body, !llvm.loop !61

while.end:                                        ; preds = %for.end, %if.end7
  %call28 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %mki_len) #14
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup40.sink.split, label %if.end31

if.end31:                                         ; preds = %while.end
  %9 = load i32, i32* %mki_len, align 4, !tbaa !4
  %conv32 = zext i32 %9 to i64
  %call33 = tail call fastcc i32 @PACKET_forward(%struct.PACKET* noundef %pkt, i64 noundef %conv32) #14
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup40.sink.split, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end31
  %call36 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool37.not = icmp eq i64 %call36, 0
  br i1 %tobool37.not, label %cleanup40, label %cleanup40.sink.split

cleanup40.sink.split:                             ; preds = %while.body, %if.end31, %lor.lhs.false35, %while.end, %if.end, %lor.lhs.false, %lor.lhs.false3
  %.sink81 = phi i32 [ 476, %lor.lhs.false3 ], [ 476, %lor.lhs.false ], [ 476, %if.end ], [ 513, %while.end ], [ 519, %lor.lhs.false35 ], [ 519, %if.end31 ], [ 488, %while.body ]
  %.sink = phi i32 [ 353, %lor.lhs.false3 ], [ 353, %lor.lhs.false ], [ 353, %if.end ], [ 353, %while.end ], [ 352, %lor.lhs.false35 ], [ 352, %if.end31 ], [ 353, %while.body ]
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink81, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_parse_ctos_use_srtp, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef %.sink, i8* noundef null) #15
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup40.sink.split, %lor.lhs.false35, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %lor.lhs.false35 ], [ 0, %cleanup40.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef readnone %sk) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.stack_st_SRTP_PROTECTION_PROFILE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @tls_parse_ctos_etm(%struct.ssl_st* nocapture noundef %s, %struct.PACKET* nocapture noundef readnone %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #2 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %0, 524288
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  store i32 1, i32* %use_etm, align 4, !tbaa !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_psk_kex_modes(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %psk_kex_modes = alloca %struct.PACKET, align 8
  %mode = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %psk_kex_modes to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %psk_kex_modes) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %psk_kex_modes) #14
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call218 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %psk_kex_modes, i32* noundef nonnull %mode) #14
  %tobool3.not19 = icmp eq i32 %call218, 0
  br i1 %tobool3.not19, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %psk_kex_mode10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  br label %while.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_parse_ctos_psk_kex_modes, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %if.end13
  %2 = load i32, i32* %mode, align 4, !tbaa !4
  switch i32 %2, label %if.end13 [
    i32 1, label %if.end13.sink.split
    i32 0, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %while.body
  %3 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %3, 1024
  %cmp7.not = icmp eq i64 %and, 0
  br i1 %cmp7.not, label %if.end13, label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %land.lhs.true, %while.body
  %.sink20 = phi i32 [ 2, %while.body ], [ 1, %land.lhs.true ]
  %4 = load i32, i32* %psk_kex_mode10, align 8, !tbaa !64
  %or11 = or i32 %4, %.sink20
  store i32 %or11, i32* %psk_kex_mode10, align 8, !tbaa !64
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %while.body, %land.lhs.true
  %call2 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %psk_kex_modes, i32* noundef nonnull %mode) #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %while.body, !llvm.loop !65

cleanup:                                          ; preds = %if.end13, %while.cond.preheader, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.cond.preheader ], [ 1, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_key_share(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %group_id = alloca i32, align 4
  %key_share_list = alloca %struct.PACKET, align 8
  %encoded_pt = alloca %struct.PACKET, align 8
  %clntgroups = alloca i16*, align 8
  %srvrgroups = alloca i16*, align 8
  %clnt_num_groups = alloca i64, align 8
  %srvr_num_groups = alloca i64, align 8
  %0 = bitcast i32* %group_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %key_share_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %encoded_pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast i16** %clntgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %4 = bitcast i16** %srvrgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = bitcast i64* %clnt_num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  %6 = bitcast i64* %srvr_num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %7 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %8 = load i32, i32* %psk_kex_mode, align 8, !tbaa !64
  %and = and i32 %8, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %cmp1.not = icmp eq %struct.evp_pkey_st* %9, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %key_share_list) #14
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %srvrgroups, i64* noundef nonnull %srvr_num_groups) #15
  call fastcc void @tls1_get_peer_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %clntgroups, i64* noundef nonnull %clnt_num_groups) #14
  %10 = load i64, i64* %clnt_num_groups, align 8, !tbaa !39
  %cmp7 = icmp eq i64 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 109, i32 noundef 209, i8* noundef null) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %group_id11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %11 = load i16, i16* %group_id11, align 2, !tbaa !67
  %cmp12.not = icmp eq i16 %11, 0
  br i1 %cmp12.not, label %if.end19, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end9
  %call15 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %key_share_list) #14
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true14
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 614, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #15
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true14, %if.end9
  %call20114 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %key_share_list) #14
  %cmp21.not115 = icmp eq i64 %call20114, 0
  br i1 %cmp21.not115, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end19
  %12 = load i16*, i16** %clntgroups, align 8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %tobool33.not116 = phi i1 [ true, %while.body.lr.ph ], [ %tobool33.not.be, %while.cond.backedge ]
  %call23 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %key_share_list, i32* noundef nonnull %group_id) #14
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call25 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %key_share_list, %struct.PACKET* noundef nonnull %encoded_pt) #14
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %call28 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %encoded_pt) #14
  %cmp29 = icmp eq i64 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false27, %lor.lhs.false, %while.body
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 622, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false27
  br i1 %tobool33.not116, label %if.end35, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end32, %if.end57, %if.end70
  %tobool33.not.be = phi i1 [ true, %if.end57 ], [ false, %if.end32 ], [ false, %if.end70 ]
  %call20 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %key_share_list) #14
  %cmp21.not = icmp eq i64 %call20, 0
  br i1 %cmp21.not, label %cleanup, label %while.body, !llvm.loop !68

if.end35:                                         ; preds = %if.end32
  %13 = load i16, i16* %group_id11, align 2, !tbaa !67
  %cmp39.not = icmp eq i16 %13, 0
  br i1 %cmp39.not, label %if.end35.if.end52_crit_edge, label %land.lhs.true41

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  %.pre = load i32, i32* %group_id, align 4, !tbaa !4
  br label %if.end52

land.lhs.true41:                                  ; preds = %if.end35
  %conv38 = zext i16 %13 to i32
  %14 = load i32, i32* %group_id, align 4, !tbaa !4
  %cmp45.not = icmp eq i32 %14, %conv38
  br i1 %cmp45.not, label %lor.lhs.false47, label %if.then51

lor.lhs.false47:                                  ; preds = %land.lhs.true41
  %call48 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %key_share_list) #14
  %cmp49.not = icmp eq i64 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false47, %land.lhs.true41
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 640, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #15
  br label %cleanup

if.end52:                                         ; preds = %if.end35.if.end52_crit_edge, %lor.lhs.false47
  %15 = phi i32 [ %.pre, %if.end35.if.end52_crit_edge ], [ %conv38, %lor.lhs.false47 ]
  %conv53 = trunc i32 %15 to i16
  %call54 = call i32 @check_in_list(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv53, i16* noundef %12, i64 noundef %10, i32 noundef 0) #15
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 646, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 108, i8* noundef null) #15
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %16 = load i16*, i16** %srvrgroups, align 8, !tbaa !23
  %17 = load i64, i64* %srvr_num_groups, align 8, !tbaa !39
  %call59 = call i32 @check_in_list(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv53, i16* noundef %16, i64 noundef %17, i32 noundef 1) #15
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %while.cond.backedge, label %if.end62

if.end62:                                         ; preds = %if.end57
  %call64 = call %struct.evp_pkey_st* @ssl_generate_param_group(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv53) #15
  store %struct.evp_pkey_st* %call64, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %cmp67 = icmp eq %struct.evp_pkey_st* %call64, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 658, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 314, i8* noundef null) #15
  br label %cleanup

if.end70:                                         ; preds = %if.end62
  store i16 %conv53, i16* %group_id11, align 2, !tbaa !67
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %18, i64 0, i32 22
  store i32 %15, i32* %kex_group, align 8, !tbaa !69
  %call76 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %encoded_pt) #14
  %call77 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %encoded_pt) #14
  %call78 = call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call64, i8* noundef %call76, i64 noundef %call77) #15
  %cmp79 = icmp slt i32 %call78, 1
  br i1 %cmp79, label %if.then81, label %while.cond.backedge

if.then81:                                        ; preds = %if.end70
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_parse_ctos_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 306, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge, %if.end19, %land.lhs.true, %if.then81, %if.then69, %if.then56, %if.then51, %if.then31, %if.then18, %if.then8, %if.then5, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then8 ], [ 0, %if.then18 ], [ 0, %if.then31 ], [ 0, %if.then51 ], [ 0, %if.then69 ], [ 0, %if.then81 ], [ 0, %if.then56 ], [ 0, %if.then5 ], [ 1, %land.lhs.true ], [ 1, %if.end19 ], [ 1, %while.cond.backedge ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @tls1_get_supported_groups(%struct.ssl_st* noundef, i16** noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @tls1_get_peer_groups(%struct.ssl_st* nocapture noundef readonly %s, i16** nocapture noundef writeonly %pgroups, i64* nocapture noundef writeonly %pgroupslen) unnamed_addr #2 {
entry:
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %0 = load i16*, i16** %peer_supportedgroups, align 8, !tbaa !70
  store i16* %0, i16** %pgroups, align 8, !tbaa !23
  %peer_supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 17
  %1 = load i64, i64* %peer_supportedgroups_len, align 8, !tbaa !71
  store i64 %1, i64* %pgroupslen, align 8, !tbaa !39
  ret void
}

declare i32 @check_in_list(%struct.ssl_st* noundef, i16 noundef zeroext, i16* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @ssl_generate_param_group(%struct.ssl_st* noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_cookie(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %format = alloca i32, align 4
  %version = alloca i32, align 4
  %key_share = alloca i32, align 4
  %group_id = alloca i32, align 4
  %cookie = alloca %struct.PACKET, align 8
  %raw = alloca %struct.PACKET, align 8
  %chhash = alloca %struct.PACKET, align 8
  %appcookie = alloca %struct.PACKET, align 8
  %hrrpkt = alloca %struct.wpacket_st, align 8
  %hmac = alloca [32 x i8], align 16
  %hrr = alloca [4296 x i8], align 16
  %hmaclen = alloca i64, align 8
  %hrrlen = alloca i64, align 8
  %ciphlen = alloca i64, align 8
  %tm = alloca i64, align 8
  %0 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = bitcast i32* %key_share to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %3 = bitcast i32* %group_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast %struct.PACKET* %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13
  %5 = bitcast %struct.PACKET* %raw to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  %6 = bitcast %struct.PACKET* %chhash to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13
  %7 = bitcast %struct.PACKET* %appcookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #13
  %8 = bitcast %struct.wpacket_st* %hrrpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #13
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %hmac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #13
  %10 = getelementptr inbounds [4296 x i8], [4296 x i8]* %hrr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4296, i8* nonnull %10) #13
  %11 = bitcast i64* %hmaclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  %12 = bitcast i64* %hrrlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #13
  %13 = bitcast i64* %ciphlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #13
  %14 = bitcast i64* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #13
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %verify_stateless_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 25
  %16 = load i32 (%struct.ssl_st*, i8*, i64)*, i32 (%struct.ssl_st*, i8*, i64)** %verify_stateless_cookie_cb, align 8, !tbaa !73
  %cmp = icmp eq i32 (%struct.ssl_st*, i8*, i64)* %16, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %17 = load i64, i64* %flags, align 8, !tbaa !78
  %and = and i64 %17, 2048
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %cookie) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 701, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %5, i8* noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !38
  %call4 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %raw) #14
  %call5 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %raw) #14
  %cmp6 = icmp ult i64 %call5, 32
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end3
  %sub = add i64 %call5, -32
  %call8 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %raw, i64 noundef %sub) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %if.end3
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 710, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %call12 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %raw) #14
  %call13 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #15
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 0
  %19 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !79
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 85
  %20 = load i8*, i8** %propq, align 8, !tbaa !80
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !81
  %arraydecay = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %21, i64 0, i32 60, i32 24, i64 0
  %call16 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %20, i8* noundef nonnull %arraydecay, i64 noundef 32) #15
  %cmp17 = icmp eq %struct.evp_md_ctx_st* %call13, null
  %cmp19 = icmp eq %struct.evp_pkey_st* %call16, null
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end11
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call13) #15
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call16) #15
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  store i64 32, i64* %hmaclen, align 8, !tbaa !39
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %libctx23 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %22, i64 0, i32 0
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx23, align 8, !tbaa !79
  %propq25 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %22, i64 0, i32 85
  %24 = load i8*, i8** %propq25, align 8, !tbaa !80
  %call26 = tail call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call13, %struct.evp_pkey_ctx_st** noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %23, i8* noundef %24, %struct.evp_pkey_st* noundef nonnull %call16, %struct.ossl_param_st* noundef null) #15
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then35, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end21
  %call31 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call13, i8* noundef nonnull %9, i64* noundef nonnull %hmaclen, i8* noundef %call4, i64 noundef %sub) #15
  %cmp32 = icmp slt i32 %call31, 1
  %25 = load i64, i64* %hmaclen, align 8
  %cmp34 = icmp ne i64 %25, 32
  %or.cond232 = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond232, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false28, %if.end21
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call13) #15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call16) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false28
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call13) #15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call16) #15
  %call38 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %9, i8* noundef %call12, i64 noundef 32) #15
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 744, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 308, i8* noundef null) #15
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %cookie, i32* noundef nonnull %format) #14
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %26 = load i32, i32* %format, align 4, !tbaa !4
  %cmp46.not = icmp eq i32 %26, 0
  br i1 %cmp46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.end45
  %call49 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %cookie, i32* noundef nonnull %version) #14
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %27 = load i32, i32* %version, align 4, !tbaa !4
  %cmp53.not = icmp eq i32 %27, 772
  br i1 %cmp53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 768, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 116, i8* noundef null) #15
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  %call56 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %cookie, i32* noundef nonnull %group_id) #14
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 773, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %call60 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %cookie) #14
  %call61 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %cookie, i64 noundef 2) #14
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %28 = load i32, i32* %group_id, align 4, !tbaa !4
  %group_id66 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %29 = load i16, i16* %group_id66, align 2, !tbaa !67
  %conv = zext i16 %29 to i32
  %cmp67.not = icmp eq i32 %28, %conv
  br i1 %cmp67.not, label %lor.lhs.false69, label %if.then74

lor.lhs.false69:                                  ; preds = %if.end64
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %30 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %call71 = call %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef nonnull %s, i8* noundef %call60, i32 noundef 0) #15
  %cmp72.not = icmp eq %struct.ssl_cipher_st* %30, %call71
  br i1 %cmp72.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %lor.lhs.false69, %if.end64
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 186, i8* noundef null) #15
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false69
  %call76 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %cookie, i32* noundef nonnull %key_share) #14
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then91, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end75
  %call79 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %cookie, i64* noundef nonnull %tm) #14
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then91, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %call82 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %cookie, %struct.PACKET* noundef nonnull %chhash) #14
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then91, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %call85 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %cookie, %struct.PACKET* noundef nonnull %appcookie) #14
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then91, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %call88 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %cookie) #14
  %cmp89.not = icmp eq i64 %call88, 32
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %lor.lhs.false87, %lor.lhs.false84, %lor.lhs.false81, %lor.lhs.false78, %if.end75
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 798, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #15
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false87
  %call93 = call i64 @time(i64* noundef null) #15
  %31 = load i64, i64* %tm, align 8, !tbaa !39
  %cmp94 = icmp ult i64 %call93, %31
  %sub97 = sub i64 %call93, %31
  %cmp98 = icmp ugt i64 %sub97, 600
  %or.cond292 = or i1 %cmp94, %cmp98
  br i1 %or.cond292, label %cleanup, label %if.end101

if.end101:                                        ; preds = %if.end92
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %verify_stateless_cookie_cb103 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %32, i64 0, i32 25
  %33 = load i32 (%struct.ssl_st*, i8*, i64)*, i32 (%struct.ssl_st*, i8*, i64)** %verify_stateless_cookie_cb103, align 8, !tbaa !73
  %call104 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %appcookie) #14
  %call105 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %appcookie) #14
  %call106 = call i32 %33(%struct.ssl_st* noundef nonnull %s, i8* noundef %call104, i64 noundef %call105) #15
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end101
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 308, i8* noundef null) #15
  br label %cleanup

if.end110:                                        ; preds = %if.end101
  %call112 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %hrrpkt, i8* noundef nonnull %10, i64 noundef 4296, i64 noundef 0) #15
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end110
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 822, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end115:                                        ; preds = %if.end110
  %call116 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 2, i64 noundef 1) #15
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then143, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.end115
  %call119 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %hrrpkt, i64 noundef 3) #15
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then143, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false118
  %call122 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 771, i64 noundef 2) #15
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then143, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false121
  %call125 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %hrrpkt, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hrrrandom, i64 0, i64 0), i64 noundef 32) #15
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then143, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %arraydecay128 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %tmp_session_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  %34 = load i64, i64* %tmp_session_id_len, align 8, !tbaa !83
  %call129 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef nonnull %hrrpkt, i8* noundef nonnull %arraydecay128, i64 noundef %34, i64 noundef 1) #15
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then143, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false127
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %35 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %put_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %35, i64 0, i32 20
  %36 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char, align 8, !tbaa !84
  %37 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %call135 = call i32 %36(%struct.ssl_cipher_st* noundef %37, %struct.wpacket_st* noundef nonnull %hrrpkt, i64* noundef nonnull %ciphlen) #15
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then143, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false131
  %call138 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 0, i64 noundef 1) #15
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then143, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false137
  %call141 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %hrrpkt, i64 noundef 2) #15
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %if.end144

if.then143:                                       ; preds = %lor.lhs.false140, %lor.lhs.false137, %lor.lhs.false131, %lor.lhs.false127, %lor.lhs.false124, %lor.lhs.false121, %lor.lhs.false118, %if.end115
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 836, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end144:                                        ; preds = %lor.lhs.false140
  %call145 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 43, i64 noundef 2) #15
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then157, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end144
  %call148 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %hrrpkt, i64 noundef 2) #15
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then157, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false147
  %version151 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %38 = load i32, i32* %version151, align 8, !tbaa !85
  %call152 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef %38, i64 noundef 2) #15
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then157, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false150
  %call155 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end158

if.then157:                                       ; preds = %lor.lhs.false154, %lor.lhs.false150, %lor.lhs.false147, %if.end144
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end158:                                        ; preds = %lor.lhs.false154
  %39 = load i32, i32* %key_share, align 4, !tbaa !4
  %tobool159.not = icmp eq i32 %39, 0
  br i1 %tobool159.not, label %if.end177, label %if.then160

if.then160:                                       ; preds = %if.end158
  %call161 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 51, i64 noundef 2) #15
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then175, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %if.then160
  %call164 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %hrrpkt, i64 noundef 2) #15
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.then175, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false163
  %40 = load i16, i16* %group_id66, align 2, !tbaa !67
  %conv169 = zext i16 %40 to i32
  %call170 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef %conv169, i64 noundef 2) #15
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then175, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false166
  %call173 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then175, label %if.end177

if.then175:                                       ; preds = %lor.lhs.false172, %lor.lhs.false166, %lor.lhs.false163, %if.then160
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end177:                                        ; preds = %lor.lhs.false172, %if.end158
  %call178 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %hrrpkt, i32 noundef 44, i64 noundef 2) #15
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then201, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.end177
  %call181 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %hrrpkt, i64 noundef 2) #15
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then201, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false180
  %call184 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef nonnull %hrrpkt, i8* noundef %call4, i64 noundef %call5, i64 noundef 2) #15
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then201, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false183
  %call187 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then201, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false186
  %call190 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then201, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %lor.lhs.false189
  %call193 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then201, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false192
  %call196 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %hrrpkt, i64* noundef nonnull %hrrlen) #15
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then201, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %lor.lhs.false195
  %call199 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then201, label %if.end202

if.then201:                                       ; preds = %lor.lhs.false198, %lor.lhs.false195, %lor.lhs.false192, %lor.lhs.false189, %lor.lhs.false186, %lor.lhs.false183, %lor.lhs.false180, %if.end177
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %hrrpkt) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_parse_ctos_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end202:                                        ; preds = %lor.lhs.false198
  %call203 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %chhash) #14
  %call204 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %chhash) #14
  %41 = load i64, i64* %hrrlen, align 8, !tbaa !39
  %call206 = call i32 @create_synthetic_message_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef %call203, i64 noundef %call204, i8* noundef nonnull %10, i64 noundef %41) #15
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %cleanup, label %if.end209

if.end209:                                        ; preds = %if.end202
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  store i32 1, i32* %hello_retry_request, align 8, !tbaa !86
  %cookieok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 34
  store i32 1, i32* %cookieok, align 8, !tbaa !87
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %if.end92, %if.end45, %entry, %lor.lhs.false, %if.end209, %if.then201, %if.then175, %if.then157, %if.then143, %if.then114, %if.then109, %if.then91, %if.then74, %if.then63, %if.then58, %if.then54, %if.then51, %if.then44, %if.then40, %if.then35, %if.then20, %if.then10, %if.then2
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then20 ], [ 0, %if.then35 ], [ 0, %if.then40 ], [ 0, %if.then54 ], [ 0, %if.then74 ], [ 0, %if.then91 ], [ 0, %if.then109 ], [ 1, %if.end209 ], [ 0, %if.then201 ], [ 0, %if.then175 ], [ 0, %if.then157 ], [ 0, %if.then143 ], [ 0, %if.then114 ], [ 0, %if.then63 ], [ 0, %if.then58 ], [ 0, %if.then51 ], [ 0, %if.then44 ], [ 0, %if.then2 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %if.end45 ], [ 1, %if.end92 ], [ 0, %if.end202 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 4296, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #10

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare i32 @create_synthetic_message_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_supported_groups(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %supported_groups_list = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %supported_groups_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %supported_groups_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %supported_groups_list) #14
  %cmp = icmp ne i64 %call1, 0
  %rem = and i64 %call1, 1
  %cmp4.not = icmp eq i64 %rem, 0
  %or.cond37 = and i1 %cmp, %cmp4.not
  br i1 %or.cond37, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 896, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_parse_ctos_supported_groups, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.then14, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !27
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !29
  %and = and i32 %4, 8
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !31
  %cmp9 = icmp slt i32 %5, 772
  %cmp13.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp9, %cmp13.not
  br i1 %or.cond, label %cleanup, label %if.then14

if.then14:                                        ; preds = %land.lhs.true, %if.end
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %6 = bitcast i16** %peer_supportedgroups to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !70
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 901) #15
  store i16* null, i16** %peer_supportedgroups, align 8, !tbaa !70
  %peer_supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 17
  store i64 0, i64* %peer_supportedgroups_len, align 8, !tbaa !71
  %call22 = call i32 @tls1_save_u16(%struct.PACKET* noundef nonnull %supported_groups_list, i16** noundef nonnull %peer_supportedgroups, i64* noundef nonnull %peer_supportedgroups_len) #15
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.then14
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_parse_ctos_supported_groups, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %land.lhs.true, %if.then14, %if.then24, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then24 ], [ 1, %if.then14 ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false6 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls1_save_u16(%struct.PACKET* noundef, i16** noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_ems(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 920, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_ems, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %return

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end2, label %return

if.end2:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %1 = load i64, i64* %flags, align 8, !tbaa !78
  %or = or i64 %1, 512
  store i64 %or, i64* %flags, align 8, !tbaa !78
  br label %return

return:                                           ; preds = %if.end, %if.end2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_early_data(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 937, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_parse_ctos_early_data, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %return

if.end:                                           ; preds = %entry
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %0 = load i32, i32* %hello_retry_request, align 8, !tbaa !86
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 942, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_parse_ctos_early_data, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 110, i8* noundef null) #15
  br label %return

return:                                           ; preds = %if.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_psk(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %identities = alloca %struct.PACKET, align 8
  %binders = alloca %struct.PACKET, align 8
  %binder = alloca %struct.PACKET, align 8
  %sess = alloca %struct.ssl_session_st*, align 8
  %identity = alloca %struct.PACKET, align 8
  %ticket_agel = alloca i64, align 8
  %pskid = alloca i8*, align 8
  %pskdata = alloca [512 x i8], align 16
  %tls13_aes128gcmsha256_id = alloca i16, align 2
  %0 = bitcast %struct.PACKET* %identities to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %binders to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %binder to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.ssl_session_st** %sess to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %4 = load i32, i32* %psk_kex_mode, align 8, !tbaa !64
  %and = and i32 %4, 3
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cleanup236, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %identities) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 995, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup236

if.end3:                                          ; preds = %if.end
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 0, i32* %ticket_expected, align 8, !tbaa !88
  %call5436 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %identities) #14
  %cmp6.not437 = icmp eq i64 %call5436, 0
  br i1 %cmp6.not437, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end3
  %5 = bitcast %struct.PACKET* %identity to i8*
  %6 = bitcast i64* %ticket_agel to i8*
  %psk_find_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 69
  %psk_server_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  %7 = bitcast i8** %pskid to i8*
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %pskdata, i64 0, i64 0
  %9 = bitcast i16* %tls13_aes128gcmsha256_id to i8*
  %arraydecay82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 54, i64 0
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 53
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %id.0440 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %ext.0439 = phi i32 [ 0, %for.body.lr.ph ], [ %ext.3.ph, %for.inc ]
  %md.0438 = phi %struct.evp_md_st* [ null, %for.body.lr.ph ], [ %md.1.ph, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  %call7 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %identities, %struct.PACKET* noundef nonnull %identity) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call9 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %identities, i64* noundef nonnull %ticket_agel) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1007, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup195.thread

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %identity) #14
  %10 = load i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %psk_find_session_cb, align 8, !tbaa !89
  %cmp14.not = icmp eq i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* %10, null
  br i1 %cmp14.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %call16 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %identity) #14
  %call17 = call i32 %10(%struct.ssl_st* noundef nonnull %s, i8* noundef %call16, i64 noundef %call13, %struct.ssl_session_st** noundef nonnull %sess) #15
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1015, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 110, i8* noundef null) #15
  br label %cleanup195.thread

if.end20:                                         ; preds = %land.lhs.true, %if.end12
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %cmp21 = icmp eq %struct.ssl_session_st* %11, null
  br i1 %cmp21, label %land.lhs.true22, label %if.then74

land.lhs.true22:                                  ; preds = %if.end20
  %12 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !90
  %cmp23 = icmp ne i32 (%struct.ssl_st*, i8*, i8*, i32)* %12, null
  %cmp25 = icmp ult i64 %call13, 257
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then26, label %if.else96

if.then26:                                        ; preds = %land.lhs.true22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #13
  store i8* null, i8** %pskid, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %8) #13
  %call27 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %identity, i8** noundef nonnull %pskid) #14
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup195.thread370, label %if.end30

if.end30:                                         ; preds = %if.then26
  %13 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !90
  %14 = load i8*, i8** %pskid, align 8, !tbaa !23
  %call32 = call i32 %13(%struct.ssl_st* noundef nonnull %s, i8* noundef %14, i8* noundef nonnull %8, i32 noundef 512) #15
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1033) #15
  %cmp33 = icmp ugt i32 %call32, 512
  br i1 %cmp33, label %cleanup195.thread370, label %if.else

if.else:                                          ; preds = %if.end30
  %cmp35.not = icmp eq i32 %call32, 0
  br i1 %cmp35.not, label %if.end71, label %if.then36

if.then36:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %9) #13
  store i16 275, i16* %tls13_aes128gcmsha256_id, align 2
  %call38 = call %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %9) #15
  %cmp39 = icmp eq %struct.ssl_cipher_st* %call38, null
  br i1 %cmp39, label %cleanup195.thread372, label %if.end42

cleanup195.thread372:                             ; preds = %if.then36
  %conv = zext i32 %call32 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1048, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  br label %cleanup236

if.end42:                                         ; preds = %if.then36
  %call43 = call %struct.ssl_session_st* @SSL_SESSION_new() #15
  store %struct.ssl_session_st* %call43, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %cmp44 = icmp eq %struct.ssl_session_st* %call43, null
  br i1 %cmp44, label %cleanup195, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end42
  %conv48 = zext i32 %call32 to i64
  %call49 = call i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef nonnull %call43, i8* noundef nonnull %8, i64 noundef %conv48) #15
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup195, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %call52 = call i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef %15, %struct.ssl_cipher_st* noundef nonnull %call38) #15
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup195, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %16 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %call55 = call i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef %16, i32 noundef 772) #15
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup195, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false54
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv48) #15
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #13
  br label %if.end71

if.end71:                                         ; preds = %cleanup, %if.else
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  %.pr.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %cmp72.not = icmp eq %struct.ssl_session_st* %.pr.pre, null
  br i1 %cmp72.not, label %if.else96, label %if.then74

if.then74:                                        ; preds = %if.end20, %if.end71
  %17 = phi %struct.ssl_session_st* [ %.pr.pre, %if.end71 ], [ %11, %if.end20 ]
  %call75 = call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef nonnull %17, i32 noundef 0) #15
  %cmp76 = icmp eq %struct.ssl_session_st* %call75, null
  br i1 %cmp76, label %cleanup93.thread, label %if.end79

cleanup93.thread:                                 ; preds = %if.then74
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1073, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup195.thread

if.end79:                                         ; preds = %if.then74
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %18) #15
  store %struct.ssl_session_st* %call75, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %arraydecay80 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call75, i64 0, i32 7, i64 0
  %19 = load i64, i64* %sid_ctx_length, align 8, !tbaa !91
  %call83 = call i8* @memcpy(i8* noundef nonnull %arraydecay80, i8* noundef nonnull %arraydecay82, i64 noundef %19) #15
  %20 = load i64, i64* %sid_ctx_length, align 8, !tbaa !91
  %21 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %sid_ctx_length85 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %21, i64 0, i32 6
  store i64 %20, i64* %sid_ctx_length85, align 8, !tbaa !92
  %cmp86 = icmp eq i32 %id.0440, 0
  br i1 %cmp86, label %if.then88, label %cleanup93

if.then88:                                        ; preds = %if.end79
  store i32 1, i32* %early_data_ok, align 4, !tbaa !93
  br label %cleanup93

cleanup93:                                        ; preds = %if.end79, %if.then88
  store i32 1, i32* %ticket_expected, align 8, !tbaa !88
  br label %if.end180

if.else96:                                        ; preds = %land.lhs.true22, %if.end71
  %22 = load i64, i64* %options, align 8, !tbaa !62
  %and97 = and i64 %22, 16384
  %cmp98.not = icmp eq i64 %and97, 0
  br i1 %cmp98.not, label %lor.lhs.false100, label %if.then108

lor.lhs.false100:                                 ; preds = %if.else96
  %23 = load i32, i32* %max_early_data, align 8, !tbaa !94
  %cmp101.not = icmp ne i32 %23, 0
  %and105 = and i64 %22, 16777216
  %cmp106 = icmp eq i64 %and105, 0
  %or.cond345 = select i1 %cmp101.not, i1 %cmp106, i1 false
  br i1 %or.cond345, label %if.then108, label %if.else110

if.then108:                                       ; preds = %lor.lhs.false100, %if.else96
  %call109 = call fastcc i32 @tls_get_stateful_ticket(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %identity, %struct.ssl_session_st** noundef nonnull %sess) #14
  br label %if.end114

if.else110:                                       ; preds = %lor.lhs.false100
  %call111 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %identity) #14
  %call112 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %identity) #14
  %call113 = call i32 @tls_decrypt_ticket(%struct.ssl_st* noundef nonnull %s, i8* noundef %call111, i64 noundef %call112, i8* noundef null, i64 noundef 0, %struct.ssl_session_st** noundef nonnull %sess) #15
  br label %if.end114

if.end114:                                        ; preds = %if.else110, %if.then108
  %ret.0 = phi i32 [ %call109, %if.then108 ], [ %call113, %if.else110 ]
  %cmp115 = icmp eq i32 %ret.0, 3
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1108, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %cleanup195.thread

if.end118:                                        ; preds = %if.end114
  %24 = icmp ult i32 %ret.0, 2
  br i1 %24, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end118
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1114, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup195.thread

if.end125:                                        ; preds = %if.end118
  switch i32 %ret.0, label %if.end132 [
    i32 4, label %for.inc
    i32 2, label %for.inc
  ]

if.end132:                                        ; preds = %if.end125
  %25 = load i32, i32* %max_early_data, align 8, !tbaa !94
  %cmp134.not = icmp eq i32 %25, 0
  br i1 %cmp134.not, label %if.end145, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end132
  %26 = load i64, i64* %options, align 8, !tbaa !62
  %and138 = and i64 %26, 16777216
  %cmp139 = icmp eq i64 %and138, 0
  br i1 %cmp139, label %land.lhs.true141, label %if.end145

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %27 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !81
  %28 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %call142 = call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %27, %struct.ssl_session_st* noundef %28) #15
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.end145

if.then144:                                       ; preds = %land.lhs.true141
  %29 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %29) #15
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  br label %for.inc

if.end145:                                        ; preds = %land.lhs.true141, %land.lhs.true136, %if.end132
  %30 = load i64, i64* %ticket_agel, align 8, !tbaa !39
  %conv146 = trunc i64 %30 to i32
  %call147 = call i64 @time(i64* noundef null) #15
  %conv148 = trunc i64 %call147 to i32
  %31 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %31, i64 0, i32 16
  %32 = load i64, i64* %time, align 8, !tbaa !95
  %conv149 = trunc i64 %32 to i32
  %sub = sub i32 %conv148, %conv149
  %mul344 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 1000)
  %mul.val = extractvalue { i32, i1 } %mul344, 0
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %31, i64 0, i32 26, i32 4
  %33 = load i32, i32* %tick_age_add, align 8, !tbaa !96
  %sub151 = sub i32 %conv146, %33
  %cmp152 = icmp eq i32 %id.0440, 0
  br i1 %cmp152, label %land.lhs.true154, label %if.end180

land.lhs.true154:                                 ; preds = %if.end145
  %mul.ov = extractvalue { i32, i1 } %mul344, 1
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %31, i64 0, i32 15
  %34 = load i64, i64* %timeout, align 8, !tbaa !97
  %conv155 = zext i32 %sub to i64
  %cmp156.not = icmp slt i64 %34, %conv155
  %brmerge = or i1 %mul.ov, %cmp156.not
  br i1 %brmerge, label %if.end180, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %land.lhs.true154
  %add = add i32 %mul.val, 1000
  %cmp162.not = icmp ugt i32 %sub151, %add
  %add165 = add i32 %sub151, 10000
  %cmp167.not = icmp ult i32 %add165, %add
  %or.cond346 = or i1 %cmp162.not, %cmp167.not
  br i1 %or.cond346, label %if.end180, label %if.then169

if.then169:                                       ; preds = %land.lhs.true161
  store i32 1, i32* %early_data_ok, align 4, !tbaa !93
  br label %if.end180

if.end180:                                        ; preds = %if.end145, %land.lhs.true161, %if.then169, %land.lhs.true154, %cleanup93
  %35 = phi %struct.ssl_session_st* [ %21, %cleanup93 ], [ %31, %land.lhs.true154 ], [ %31, %if.then169 ], [ %31, %land.lhs.true161 ], [ %31, %if.end145 ]
  %ext.2 = phi i32 [ 1, %cleanup93 ], [ %ext.0439, %land.lhs.true154 ], [ %ext.0439, %if.then169 ], [ %ext.0439, %land.lhs.true161 ], [ %ext.0439, %if.end145 ]
  %36 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %cipher181 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %35, i64 0, i32 20
  %37 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher181, align 8, !tbaa !98
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %37, i64 0, i32 13
  %38 = load i32, i32* %algorithm2, align 8, !tbaa !99
  %call182 = call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %36, i32 noundef %38) #15
  %39 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %40 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %algorithm2184 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %40, i64 0, i32 13
  %41 = load i32, i32* %algorithm2184, align 8, !tbaa !99
  %call185 = call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %39, i32 noundef %41) #15
  %call186 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %call185) #15
  %call187 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call182, i8* noundef %call186) #15
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then189, label %cleanup195.thread365

cleanup195.thread365:                             ; preds = %if.end180
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  br label %for.end

if.then189:                                       ; preds = %if.end180
  %42 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %42) #15
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  store i32 0, i32* %early_data_ok, align 4, !tbaa !93
  store i32 0, i32* %ticket_expected, align 8, !tbaa !88
  br label %for.inc

cleanup195.thread:                                ; preds = %if.then19, %if.then11, %cleanup93.thread, %if.then124, %if.then117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  br label %cleanup236

cleanup195.thread370:                             ; preds = %if.end30, %if.then26
  %.sink = phi i32 [ 1028, %if.then26 ], [ 1035, %if.end30 ]
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  br label %cleanup236

cleanup195:                                       ; preds = %lor.lhs.false46, %lor.lhs.false51, %lor.lhs.false54, %if.end42
  %conv48.le = zext i32 %call32 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %8, i64 noundef %conv48.le) #15
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1060, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  br label %err

for.inc:                                          ; preds = %if.then189, %if.then144, %if.end125, %if.end125
  %md.1.ph = phi %struct.evp_md_st* [ %md.0438, %if.then144 ], [ %md.0438, %if.end125 ], [ %md.0438, %if.end125 ], [ %call182, %if.then189 ]
  %ext.3.ph = phi i32 [ %ext.0439, %if.then144 ], [ %ext.0439, %if.end125 ], [ %ext.0439, %if.end125 ], [ %ext.2, %if.then189 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  %inc = add i32 %id.0440, 1
  %call5 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %identities) #14
  %cmp6.not = icmp eq i64 %call5, 0
  br i1 %cmp6.not, label %for.end, label %for.body, !llvm.loop !101

for.end:                                          ; preds = %for.inc, %if.end3, %cleanup195.thread365
  %id.0395 = phi i32 [ %id.0440, %cleanup195.thread365 ], [ 0, %if.end3 ], [ %inc, %for.inc ]
  %md.2 = phi %struct.evp_md_st* [ %call182, %cleanup195.thread365 ], [ null, %if.end3 ], [ %md.1.ph, %for.inc ]
  %ext.4 = phi i32 [ %ext.2, %cleanup195.thread365 ], [ 0, %if.end3 ], [ %ext.3.ph, %for.inc ]
  %43 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %cmp199 = icmp eq %struct.ssl_session_st* %43, null
  br i1 %cmp199, label %cleanup236, label %if.end202

if.end202:                                        ; preds = %for.end
  %call203 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %44 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !102
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %44, i64 0, i32 1
  %45 = load i8*, i8** %data, align 8, !tbaa !103
  %sub.ptr.lhs.cast = ptrtoint i8* %call203 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call204 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md.2) #15
  %conv205 = sext i32 %call204 to i64
  %call206 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %binders) #14
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then208, label %for.body213

if.then208:                                       ; preds = %if.end202
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1177, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %err

for.cond210:                                      ; preds = %for.body213
  %cmp211.not = icmp ugt i32 %inc219, %id.0395
  br i1 %cmp211.not, label %for.end220, label %for.body213, !llvm.loop !105

for.body213:                                      ; preds = %if.end202, %for.cond210
  %i.0444 = phi i32 [ %inc219, %for.cond210 ], [ 0, %if.end202 ]
  %call214 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %binders, %struct.PACKET* noundef nonnull %binder) #14
  %tobool215.not = icmp eq i32 %call214, 0
  %inc219 = add i32 %i.0444, 1
  br i1 %tobool215.not, label %if.then216, label %for.cond210

if.then216:                                       ; preds = %for.body213
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1183, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %err

for.end220:                                       ; preds = %for.cond210
  %call221 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %binder) #14
  %cmp222.not = icmp eq i64 %call221, %conv205
  br i1 %cmp222.not, label %if.end225, label %if.then224

if.then224:                                       ; preds = %for.end220
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1189, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls_parse_ctos_psk, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #15
  br label %err

if.end225:                                        ; preds = %for.end220
  %46 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !102
  %data227 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %46, i64 0, i32 1
  %47 = load i8*, i8** %data227, align 8, !tbaa !103
  %call228 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %binder) #14
  %48 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  %call229 = call i32 @tls_psk_do_binder(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md.2, i8* noundef %47, i64 noundef %sub.ptr.sub, i8* noundef %call228, i8* noundef null, %struct.ssl_session_st* noundef %48, i32 noundef 0, i32 noundef %ext.4) #15
  %cmp230.not = icmp eq i32 %call229, 1
  br i1 %cmp230.not, label %if.end233, label %err

if.end233:                                        ; preds = %if.end225
  %tick_identity = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 36
  store i32 %id.0395, i32* %tick_identity, align 8, !tbaa !106
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %49 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %49) #15
  %50 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  store %struct.ssl_session_st* %50, %struct.ssl_session_st** %session, align 8, !tbaa !34
  br label %cleanup236

err:                                              ; preds = %cleanup195, %if.end225, %if.then224, %if.then216, %if.then208
  %51 = load %struct.ssl_session_st*, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %51) #15
  br label %cleanup236

cleanup236:                                       ; preds = %cleanup195.thread372, %cleanup195.thread370, %cleanup195.thread, %for.end, %entry, %err, %if.end233, %if.then2
  %retval.9 = phi i32 [ 0, %err ], [ 1, %if.end233 ], [ 0, %if.then2 ], [ 1, %entry ], [ 1, %for.end ], [ 0, %cleanup195.thread ], [ 0, %cleanup195.thread370 ], [ 0, %cleanup195.thread372 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.9
}

declare %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #3

declare i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* noundef, %struct.ssl_cipher_st* noundef) local_unnamed_addr #3

declare i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_get_stateful_ticket(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %tick, %struct.ssl_session_st** nocapture noundef writeonly %sess) unnamed_addr #0 {
entry:
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 1, i32* %ticket_expected, align 8, !tbaa !88
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %tick) #14
  switch i64 %call, label %sw.default [
    i64 0, label %cleanup
    i64 32, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call1 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %tick) #14
  %call2 = tail call %struct.ssl_session_st* @lookup_sess_in_cache(%struct.ssl_st* noundef nonnull %s, i8* noundef %call1, i64 noundef 32) #15
  %cmp = icmp eq %struct.ssl_session_st* %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.epilog
  store %struct.ssl_session_st* %call2, %struct.ssl_session_st** %sess, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %if.end, %sw.default
  %retval.0 = phi i32 [ 4, %sw.default ], [ 5, %if.end ], [ 3, %entry ], [ 4, %sw.epilog ]
  ret i32 %retval.0
}

declare i32 @tls_decrypt_ticket(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, %struct.ssl_session_st** noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @tls_psk_do_binder(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, %struct.ssl_session_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_ctos_post_handshake_auth(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1216, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.tls_parse_ctos_post_handshake_auth, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 278, i8* noundef null) #15
  br label %return

if.end:                                           ; preds = %entry
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  store i32 2, i32* %post_handshake_auth, align 8, !tbaa !107
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_renegotiate(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  %0 = load i32, i32* %send_connection_binding, align 8, !tbaa !24
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 65281, i64 noundef 2) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then24, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #15
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then24, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  %1 = load i64, i64* %previous_client_finished_len, align 8, !tbaa !8
  %call10 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef %1) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then24, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %arraydecay14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 23, i64 0
  %previous_server_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 24
  %2 = load i64, i64* %previous_server_finished_len, align 8, !tbaa !108
  %call16 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay14, i64 noundef %2) #15
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %return

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1245, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_stoc_renegotiate, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false21, %entry, %if.then24
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 2, %entry ], [ 1, %lor.lhs.false21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_server_name(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %servername_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  %0 = load i32, i32* %servername_done, align 8, !tbaa !33
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !27
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !29
  %and = and i32 %4, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !31
  %cmp4 = icmp slt i32 %5, 772
  %cmp8.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp4, %cmp8.not
  br i1 %or.cond, label %return, label %if.end10

if.end10:                                         ; preds = %land.lhs.true2, %if.end
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call12 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %return

if.then14:                                        ; preds = %lor.lhs.false, %if.end10
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_stoc_server_name, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false, %land.lhs.true, %land.lhs.true2, %entry, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 2, %entry ], [ 2, %land.lhs.true2 ], [ 2, %land.lhs.true ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_maxfragmentlen(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 26, i32 8
  %1 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !43
  %2 = add i8 %1, -1
  %3 = icmp ult i8 %2, 4
  br i1 %3, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then20, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %max_fragment_len_mode13 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 26, i32 8
  %5 = load i8, i8* %max_fragment_len_mode13, align 8, !tbaa !43
  %conv14 = zext i8 %5 to i32
  %call15 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv14, i64 noundef 1) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false10
  %call18 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %return

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false10, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1291, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_stoc_maxfragmentlen, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %if.then20
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 2, %entry ], [ 1, %lor.lhs.false17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_ec_pt_formats(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %plist = alloca i8*, align 8
  %plistlen = alloca i64, align 8
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !109
  %2 = and i32 %1, 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.end

lor.lhs.false:                                    ; preds = %entry
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !110
  %4 = and i32 %3, 8
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %lor.lhs.false
  %5 = bitcast i8** %plist to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  %6 = bitcast i64* %plistlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  br label %cleanup

land.end:                                         ; preds = %entry, %lor.lhs.false
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %7 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !111
  %cmp.not = icmp eq i8* %7, null
  %8 = bitcast i8** %plist to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13
  %9 = bitcast i64* %plistlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #13
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.end
  call void @tls1_get_formatlist(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %plist, i64* noundef nonnull %plistlen) #15
  %call = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 11, i64 noundef 2) #15
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then19, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then19, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %10 = load i8*, i8** %plist, align 8, !tbaa !23
  %11 = load i64, i64* %plistlen, align 8, !tbaa !39
  %call14 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %10, i64 noundef %11, i64 noundef 1) #15
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %if.end
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1317, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_stoc_ec_pt_formats, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %land.end.thread, %lor.lhs.false16, %land.end, %if.then19
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 2, %land.end ], [ 1, %lor.lhs.false16 ], [ 2, %land.end.thread ]
  %.pre-phi = bitcast i8** %plist to i8*
  %.pre-phi35 = bitcast i64* %plistlen to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.pre-phi35) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %.pre-phi) #13
  ret i32 %retval.0
}

declare void @tls1_get_formatlist(%struct.ssl_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_supported_groups(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %groups = alloca i16*, align 8
  %numgroups = alloca i64, align 8
  %0 = bitcast i16** %groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i64* %numgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %group_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %2 = load i16, i16* %group_id, align 2, !tbaa !67
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %cleanup45, label %if.end

if.end:                                           ; preds = %entry
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %groups, i64* noundef nonnull %numgroups) #15
  %3 = load i64, i64* %numgroups, align 8, !tbaa !39
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1339, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_stoc_supported_groups, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup45

if.end5:                                          ; preds = %if.end
  %call = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #15
  %4 = load i64, i64* %numgroups, align 8, !tbaa !39
  %cmp679.not = icmp eq i64 %4, 0
  br i1 %cmp679.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end5, %for.inc
  %i.081 = phi i64 [ %inc, %for.inc ], [ 0, %if.end5 ]
  %first.080 = phi i64 [ %first.3.ph, %for.inc ], [ 1, %if.end5 ]
  %5 = load i16*, i16** %groups, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %i.081
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !112
  %call8 = call i32 @tls_valid_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %6, i32 noundef %call, i32 noundef %call, i32 noundef 0, i32* noundef null) #15
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call9 = call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %6, i32 noundef 131076) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %tobool12.not = icmp eq i64 %first.080, 0
  br i1 %tobool12.not, label %if.end31, label %if.then13

if.then13:                                        ; preds = %if.then11
  %7 = load i16, i16* %group_id, align 2, !tbaa !67
  %cmp18 = icmp eq i16 %7, %6
  br i1 %cmp18, label %cleanup45, label %if.end21

if.end21:                                         ; preds = %if.then13
  %call22 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 10, i64 noundef 2) #15
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %call24 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %call27 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %if.end21
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_stoc_supported_groups, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup45

if.end31:                                         ; preds = %lor.lhs.false26, %if.then11
  %conv32 = zext i16 %6 to i32
  %call33 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv32, i64 noundef 2) #15
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %for.inc

if.then35:                                        ; preds = %if.end31
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1370, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_stoc_supported_groups, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup45

for.inc:                                          ; preds = %if.end31, %land.lhs.true, %for.body
  %first.3.ph = phi i64 [ %first.080, %for.body ], [ %first.080, %land.lhs.true ], [ 0, %if.end31 ]
  %inc = add nuw i64 %i.081, 1
  %8 = load i64, i64* %numgroups, align 8, !tbaa !39
  %cmp6 = icmp ult i64 %inc, %8
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !113

for.end:                                          ; preds = %for.inc, %if.end5
  %call38 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %for.end
  %call41 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %cleanup45

if.then43:                                        ; preds = %lor.lhs.false40, %for.end
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1377, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_construct_stoc_supported_groups, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup45

cleanup45:                                        ; preds = %if.then13, %if.then29, %if.then35, %lor.lhs.false40, %entry, %if.then43, %if.then4
  %retval.2 = phi i32 [ 0, %if.then4 ], [ 0, %if.then43 ], [ 2, %entry ], [ 1, %lor.lhs.false40 ], [ 0, %if.then35 ], [ 0, %if.then29 ], [ 2, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.2
}

declare i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls_valid_group(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

declare i32 @tls_group_allowed(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_session_ticket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %0 = load i32, i32* %ticket_expected, align 8, !tbaa !88
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @tls_use_ticket(%struct.ssl_st* noundef nonnull %s) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %ticket_expected, align 8, !tbaa !88
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 35, i64 noundef 2) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %return

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1395, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_stoc_session_ticket, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false6, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 2, %if.then ], [ 1, %lor.lhs.false6 ]
  ret i32 %retval.0
}

declare i32 @tls_use_ticket(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_status_request(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %context, 16384
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %status_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 7
  %0 = load i32, i32* %status_expected, align 4, !tbaa !114
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !27
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !29
  %and = and i32 %3, 8
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end2
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !31
  %cmp5 = icmp sgt i32 %4, 771
  br i1 %cmp5, label %land.lhs.true6, label %if.end13

land.lhs.true6:                                   ; preds = %land.lhs.true
  %cmp9 = icmp ne i32 %4, 65536
  %cmp11 = icmp ne i64 %chainidx, 0
  %or.cond = and i1 %cmp11, %cmp9
  br i1 %or.cond, label %return, label %if.end13

if.end13:                                         ; preds = %land.lhs.true6, %land.lhs.true, %if.end2
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 5, i64 noundef 2) #15
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call15 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return.sink.split, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc20 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc20, align 8, !tbaa !27
  %enc_flags21 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags21, align 8, !tbaa !29
  %and22 = and i32 %7, 8
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end36

land.lhs.true24:                                  ; preds = %if.end18
  %version26 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %8 = load i32, i32* %version26, align 8, !tbaa !31
  %cmp27 = icmp slt i32 %8, 772
  %cmp31.not = icmp eq i32 %8, 65536
  %or.cond54 = or i1 %cmp27, %cmp31.not
  br i1 %or.cond54, label %if.end36, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true24
  %call33 = tail call i32 @tls_construct_cert_status_body(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #15
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %return, label %if.end36

if.end36:                                         ; preds = %land.lhs.true32, %land.lhs.true24, %if.end18
  %call37 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end36, %if.end13, %lor.lhs.false
  %.sink = phi i32 [ 1419, %lor.lhs.false ], [ 1419, %if.end13 ], [ 1433, %if.end36 ]
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_stoc_status_request, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %return.sink.split, %if.end36, %land.lhs.true32, %land.lhs.true6, %if.end, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 2, %if.end ], [ 2, %land.lhs.true6 ], [ 0, %land.lhs.true32 ], [ 1, %if.end36 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @tls_construct_cert_status_body(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_next_proto_neg(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %npa = alloca i8*, align 8
  %npalen = alloca i32, align 4
  %0 = bitcast i8** %npa to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i32* %npalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %npn_seen1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  %2 = load i32, i32* %npn_seen1, align 4, !tbaa !53
  store i32 0, i32* %npn_seen1, align 4, !tbaa !53
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %npn_advertised_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 60, i32 20
  %4 = load i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i32 (%struct.ssl_st*, i8**, i32*, i8*)** %npn_advertised_cb, align 8, !tbaa !115
  %cmp = icmp eq i32 (%struct.ssl_st*, i8**, i32*, i8*)* %4, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %npn_advertised_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 60, i32 21
  %5 = load i8*, i8** %npn_advertised_cb_arg, align 8, !tbaa !116
  %call = call i32 %4(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %npa, i32* noundef nonnull %npalen, i8* noundef %5) #15
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %call11 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 13172, i64 noundef 2) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then10
  %6 = load i8*, i8** %npa, align 8, !tbaa !23
  %7 = load i32, i32* %npalen, align 4, !tbaa !4
  %conv = zext i32 %7 to i64
  %call14 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %6, i64 noundef %conv, i64 noundef 2) #15
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13, %if.then10
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1460, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_stoc_next_proto_neg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false13
  store i32 1, i32* %npn_seen1, align 4, !tbaa !53
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end17, %entry, %lor.lhs.false, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 2, %lor.lhs.false ], [ 2, %entry ], [ 1, %if.end17 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_alpn(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %0 = load i8*, i8** %alpn_selected, align 8, !tbaa !117
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 16, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then18, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then18, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %1 = load i8*, i8** %alpn_selected, align 8, !tbaa !117
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  %2 = load i64, i64* %alpn_selected_len, align 8, !tbaa !118
  %call10 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %1, i64 noundef %2, i64 noundef 1) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %call13 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %return

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1484, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_stoc_alpn, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false15, %entry, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 2, %entry ], [ 1, %lor.lhs.false15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_use_srtp(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %srtp_profile = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 97
  %0 = load %struct.srtp_protection_profile_st*, %struct.srtp_protection_profile_st** %srtp_profile, align 8, !tbaa !57
  %cmp = icmp eq %struct.srtp_protection_profile_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 14, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then16, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 2, i64 noundef 2) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then16, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %1 = load %struct.srtp_protection_profile_st*, %struct.srtp_protection_profile_st** %srtp_profile, align 8, !tbaa !57
  %id = getelementptr inbounds %struct.srtp_protection_profile_st, %struct.srtp_protection_profile_st* %1, i64 0, i32 1
  %2 = load i64, i64* %id, align 8, !tbaa !58
  %conv = trunc i64 %2 to i32
  %call8 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %return

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1505, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls_construct_stoc_use_srtp, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false13, %entry, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 2, %entry ], [ 1, %lor.lhs.false13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_etm(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  %0 = load i32, i32* %use_etm, align 4, !tbaa !63
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 7
  %2 = load i32, i32* %algorithm_mac, align 8, !tbaa !119
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 6
  %3 = load i32, i32* %algorithm_enc, align 4, !tbaa !120
  switch i32 %3, label %if.end32 [
    i32 4, label %if.then29
    i32 1024, label %if.then29
    i32 262144, label %if.then29
    i32 4194304, label %if.then29
    i32 8388608, label %if.then29
  ]

if.then29:                                        ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %if.end
  store i32 0, i32* %use_etm, align 4, !tbaa !63
  br label %return

if.end32:                                         ; preds = %lor.lhs.false
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 22, i64 noundef 2) #15
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end32
  %call35 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %return

if.then37:                                        ; preds = %lor.lhs.false34, %if.end32
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1535, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_stoc_etm, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false34, %entry, %if.then37, %if.then29
  %retval.0 = phi i32 [ 2, %if.then29 ], [ 0, %if.then37 ], [ 2, %entry ], [ 1, %lor.lhs.false34 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_ems(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !78
  %and = and i64 %0, 512
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 23, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %return

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1550, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_stoc_ems, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 2, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_supported_versions(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !27
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !29
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %return.sink.split

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !31
  %cmp = icmp sgt i32 %3, 771
  %cmp4 = icmp ne i32 %3, 65536
  %spec.select = and i1 %cmp, %cmp4
  br i1 %spec.select, label %if.end, label %return.sink.split

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 43, i64 noundef 2) #15
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return.sink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %version10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %4 = load i32, i32* %version10, align 8, !tbaa !85
  %call11 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %4, i64 noundef 2) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return.sink.split, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end, %lor.lhs.false, %lor.lhs.false9, %lor.lhs.false13, %land.lhs.true, %entry
  %.sink = phi i32 [ 1562, %entry ], [ 1562, %land.lhs.true ], [ 1570, %lor.lhs.false13 ], [ 1570, %lor.lhs.false9 ], [ 1570, %lor.lhs.false ], [ 1570, %if.end ]
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.tls_construct_stoc_supported_versions, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false13
  %retval.0 = phi i32 [ 1, %lor.lhs.false13 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_key_share(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %encodedPoint = alloca i8*, align 8
  %ct = alloca i8*, align 8
  %ctlen = alloca i64, align 8
  %0 = bitcast i8** %encodedPoint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %2 = load i32, i32* %hello_retry_request, align 8, !tbaa !86
  %cmp = icmp eq i32 %2, 1
  %cmp1.not = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.end, label %cleanup104

if.end:                                           ; preds = %if.then
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 51, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then12, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %group_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %3 = load i16, i16* %group_id, align 2, !tbaa !67
  %conv = zext i16 %3 to i32
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup104

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1596, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup104

if.end14:                                         ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool18.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end14
  br i1 %tobool18.not, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then17
  %call20 = tail call i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i64 noundef 0) #15
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %cleanup104

if.then22:                                        ; preds = %lor.lhs.false19, %if.then17
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1606, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup104

if.end24:                                         ; preds = %if.end14
  br i1 %tobool18.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %5 = load i32, i32* %psk_kex_mode, align 8, !tbaa !64
  %and = and i32 %5, 2
  %cmp27 = icmp eq i32 %and, 0
  br i1 %cmp27, label %cleanup104, label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %if.end24
  %call31 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 51, i64 noundef 2) #15
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then42, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then42, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %group_id38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %6 = load i16, i16* %group_id38, align 2, !tbaa !67
  %conv39 = zext i16 %6 to i32
  %call40 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv39, i64 noundef 2) #15
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false36, %lor.lhs.false33, %if.end30
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1622, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup104

if.end43:                                         ; preds = %lor.lhs.false36
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %8 = load i16, i16* %group_id38, align 2, !tbaa !67
  %call46 = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %7, i16 noundef zeroext %8) #15
  %cmp47 = icmp eq %struct.tls_group_info_st* %call46, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end43
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1627, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup104

if.end50:                                         ; preds = %if.end43
  %is_kem = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call46, i64 0, i32 9
  %9 = load i8, i8* %is_kem, align 8, !tbaa !121
  %tobool51.not = icmp eq i8 %9, 0
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end50
  %call53 = tail call %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %1) #15
  %cmp54 = icmp eq %struct.evp_pkey_st* %call53, null
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then52
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1635, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup104

if.end57:                                         ; preds = %if.then52
  %call58 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call53, i8** noundef nonnull %encodedPoint) #15
  %cmp59 = icmp eq i64 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1642, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524304, i8* noundef null) #15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call53) #15
  br label %cleanup104

if.end62:                                         ; preds = %if.end57
  %10 = load i8*, i8** %encodedPoint, align 8, !tbaa !23
  %call63 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %10, i64 noundef %call58, i64 noundef 2) #15
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then68, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end62
  %call66 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false65, %if.end62
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1649, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call53) #15
  %11 = load i8*, i8** %encodedPoint, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1651) #15
  br label %cleanup104

if.end69:                                         ; preds = %lor.lhs.false65
  %12 = load i8*, i8** %encodedPoint, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1654) #15
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  store %struct.evp_pkey_st* %call53, %struct.evp_pkey_st** %pkey, align 8, !tbaa !123
  %call71 = call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %call53, %struct.evp_pkey_st* noundef nonnull %1, i32 noundef 1) #15
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %cleanup104, label %if.end102

if.else:                                          ; preds = %if.end50
  %13 = bitcast i8** %ct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #13
  store i8* null, i8** %ct, align 8, !tbaa !23
  %14 = bitcast i64* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #13
  store i64 0, i64* %ctlen, align 8, !tbaa !39
  %call76 = call i32 @ssl_encapsulate(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %1, i8** noundef nonnull %ct, i64* noundef nonnull %ctlen, i32 noundef 0) #15
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %cleanup104.critedge161, label %if.end80

if.end80:                                         ; preds = %if.else
  %15 = load i64, i64* %ctlen, align 8, !tbaa !39
  %cmp81 = icmp eq i64 %15, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1681, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  %16 = load i8*, i8** %ct, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1682) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br label %cleanup104

if.end84:                                         ; preds = %if.end80
  %17 = load i8*, i8** %ct, align 8, !tbaa !23
  %call85 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %17, i64 noundef %15, i64 noundef 2) #15
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then90, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.end84
  %call88 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end91

if.then90:                                        ; preds = %lor.lhs.false87, %if.end84
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1688, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_construct_stoc_key_share, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  %18 = load i8*, i8** %ct, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1689) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br label %cleanup104

if.end91:                                         ; preds = %lor.lhs.false87
  %19 = load i8*, i8** %ct, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1692) #15
  %pms = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  %20 = load i8*, i8** %pms, align 8, !tbaa !124
  %pmslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  %21 = load i64, i64* %pmslen, align 8, !tbaa !125
  %call96 = call i32 @ssl_gensecret(%struct.ssl_st* noundef nonnull %s, i8* noundef %20, i64 noundef %21) #15
  %cmp97.not = icmp eq i32 %call96, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br i1 %cmp97.not, label %cleanup104, label %if.end102

if.end102:                                        ; preds = %if.end91, %if.end69
  %did_kex = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 33
  store i8 1, i8* %did_kex, align 1, !tbaa !126
  br label %cleanup104

cleanup104.critedge161:                           ; preds = %if.else
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup104.critedge161, %if.then83, %if.then90, %if.end69, %land.lhs.true, %lor.lhs.false19, %lor.lhs.false9, %if.then, %if.end91, %if.end102, %if.then68, %if.then61, %if.then56, %if.then49, %if.then42, %if.then22, %if.then12
  %retval.1 = phi i32 [ 0, %if.then12 ], [ 0, %if.then22 ], [ 0, %if.then49 ], [ 1, %if.end102 ], [ 0, %if.end91 ], [ 0, %if.then56 ], [ 0, %if.then61 ], [ 0, %if.then68 ], [ 0, %if.then42 ], [ 2, %if.then ], [ 1, %lor.lhs.false9 ], [ 2, %lor.lhs.false19 ], [ 2, %land.lhs.true ], [ 0, %if.end69 ], [ 0, %if.then90 ], [ 0, %if.then83 ], [ 0, %cleanup104.critedge161 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.1
}

declare i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef, i16 noundef zeroext) local_unnamed_addr #3

declare %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #3

declare i32 @ssl_derive(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_encapsulate(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, i8** noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_gensecret(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_cookie(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %hashval1 = alloca i8*, align 8
  %hashval2 = alloca i8*, align 8
  %appcookie1 = alloca i8*, align 8
  %appcookie2 = alloca i8*, align 8
  %cookie = alloca i8*, align 8
  %hmac = alloca i8*, align 8
  %hmac2 = alloca i8*, align 8
  %startlen = alloca i64, align 8
  %ciphlen = alloca i64, align 8
  %totcookielen = alloca i64, align 8
  %hashlen = alloca i64, align 8
  %hmaclen = alloca i64, align 8
  %appcookielen = alloca i64, align 8
  %0 = bitcast i8** %hashval1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i8** %hashval2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast i8** %appcookie1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  %3 = bitcast i8** %appcookie2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %4 = bitcast i8** %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = bitcast i8** %hmac to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  %6 = bitcast i8** %hmac2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  %7 = bitcast i64* %startlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #13
  %8 = bitcast i64* %ciphlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13
  %9 = bitcast i64* %totcookielen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #13
  %10 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #13
  %11 = bitcast i64* %hmaclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  %12 = bitcast i64* %appcookielen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #13
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %13 = load i64, i64* %flags, align 8, !tbaa !78
  %and = and i64 %13, 2048
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %gen_stateless_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 24
  %15 = load i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64*)** %gen_stateless_cookie_cb, align 8, !tbaa !127
  %cmp1 = icmp eq i32 (%struct.ssl_st*, i8*, i64*)* %15, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1724, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 287, i8* noundef null) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 44, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %call4 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then46, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then46, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %startlen) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then46, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 4210, i8** noundef nonnull %cookie) #15
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then46, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #15
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then46, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 772, i64 noundef 2) #15
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then46, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %group_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %16 = load i16, i16* %group_id, align 2, !tbaa !67
  %conv = zext i16 %16 to i32
  %call23 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #15
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then46, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %17 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !26
  %put_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %17, i64 0, i32 20
  %18 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char, align 8, !tbaa !84
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %19 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %call27 = call i32 %18(%struct.ssl_cipher_st* noundef %19, %struct.wpacket_st* noundef %pkt, i64* noundef nonnull %ciphlen) #15
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then46, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %cmp31 = icmp eq %struct.evp_pkey_st* %20, null
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv32, i64 noundef 1) #15
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then46, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false29
  %call36 = call i64 @time(i64* noundef null) #15
  %conv37 = trunc i64 %call36 to i32
  %call38 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv37, i64 noundef 4) #15
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %call41 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %call44 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 64, i8** noundef nonnull %hashval1) #15
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false35, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.end3
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1743, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false43
  %call48 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #15
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end47
  %21 = load i8*, i8** %hashval1, align 8, !tbaa !23
  %call51 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef %21, i64 noundef 64, i64* noundef nonnull %hashlen) #15
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup, label %if.end54

if.end54:                                         ; preds = %lor.lhs.false50
  %22 = load i64, i64* %hashlen, align 8, !tbaa !39
  %call55 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %22, i8** noundef nonnull %hashval2) #15
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then71, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %23 = load i8*, i8** %hashval1, align 8, !tbaa !23
  %24 = load i8*, i8** %hashval2, align 8, !tbaa !23
  %cmp58 = icmp eq i8* %23, %24
  br i1 %cmp58, label %lor.lhs.false62, label %if.then71

lor.lhs.false62:                                  ; preds = %lor.lhs.false57
  %call63 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #15
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then71, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %call69 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 4096, i8** noundef nonnull %appcookie1) #15
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false57, %if.end54
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1763, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false68
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %gen_stateless_cookie_cb74 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %25, i64 0, i32 24
  %26 = load i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64*)** %gen_stateless_cookie_cb74, align 8, !tbaa !127
  %27 = load i8*, i8** %appcookie1, align 8, !tbaa !23
  %call75 = call i32 %26(%struct.ssl_st* noundef nonnull %s, i8* noundef %27, i64* noundef nonnull %appcookielen) #15
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end72
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1769, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 400, i8* noundef null) #15
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  %28 = load i64, i64* %appcookielen, align 8, !tbaa !39
  %call80 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %28, i8** noundef nonnull %appcookie2) #15
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then96, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end79
  %29 = load i8*, i8** %appcookie1, align 8, !tbaa !23
  %30 = load i8*, i8** %appcookie2, align 8, !tbaa !23
  %cmp83 = icmp eq i8* %29, %30
  br i1 %cmp83, label %lor.lhs.false87, label %if.then96

lor.lhs.false87:                                  ; preds = %lor.lhs.false82
  %call88 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then96, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false87
  %call91 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %totcookielen) #15
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then96, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %call94 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 32, i8** noundef nonnull %hmac) #15
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %if.end97

if.then96:                                        ; preds = %lor.lhs.false93, %lor.lhs.false90, %lor.lhs.false87, %lor.lhs.false82, %if.end79
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1778, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end97:                                         ; preds = %lor.lhs.false93
  store i64 32, i64* %hmaclen, align 8, !tbaa !39
  %31 = load i64, i64* %startlen, align 8, !tbaa !39
  %32 = load i64, i64* %totcookielen, align 8, !tbaa !39
  %sub = sub i64 %32, %31
  store i64 %sub, i64* %totcookielen, align 8, !tbaa !39
  %cmp98 = icmp ult i64 %sub, 4179
  br i1 %cmp98, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end97
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1785, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

if.end103:                                        ; preds = %if.end97
  %call104 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #15
  %33 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %33, i64 0, i32 0
  %34 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !79
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %33, i64 0, i32 85
  %35 = load i8*, i8** %propq, align 8, !tbaa !80
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %36 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !81
  %arraydecay = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %36, i64 0, i32 60, i32 24, i64 0
  %call107 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %35, i8* noundef nonnull %arraydecay, i64 noundef 32) #15
  %cmp108 = icmp eq %struct.evp_md_ctx_st* %call104, null
  %cmp111 = icmp eq %struct.evp_pkey_st* %call107, null
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp111
  br i1 %or.cond, label %err.sink.split, label %if.end114

if.end114:                                        ; preds = %if.end103
  %37 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !72
  %libctx116 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %37, i64 0, i32 0
  %38 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx116, align 8, !tbaa !79
  %propq118 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %37, i64 0, i32 85
  %39 = load i8*, i8** %propq118, align 8, !tbaa !80
  %call119 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call104, %struct.evp_pkey_ctx_st** noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %38, i8* noundef %39, %struct.evp_pkey_st* noundef nonnull %call107, %struct.ossl_param_st* noundef null) #15
  %cmp120 = icmp slt i32 %call119, 1
  br i1 %cmp120, label %err.sink.split, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.end114
  %40 = load i8*, i8** %hmac, align 8, !tbaa !23
  %41 = load i8*, i8** %cookie, align 8, !tbaa !23
  %42 = load i64, i64* %totcookielen, align 8, !tbaa !39
  %call123 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call104, i8* noundef %40, i64* noundef nonnull %hmaclen, i8* noundef %41, i64 noundef %42) #15
  %cmp124 = icmp slt i32 %call123, 1
  br i1 %cmp124, label %err.sink.split, label %if.end127

if.end127:                                        ; preds = %lor.lhs.false122
  %43 = load i64, i64* %totcookielen, align 8, !tbaa !39
  %44 = load i64, i64* %hmaclen, align 8, !tbaa !39
  %add = add i64 %44, %43
  %cmp128 = icmp ult i64 %add, 4211
  br i1 %cmp128, label %if.end133, label %err.sink.split

if.end133:                                        ; preds = %if.end127
  %call134 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %44, i8** noundef nonnull %hmac2) #15
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err.sink.split, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.end133
  %45 = load i8*, i8** %hmac, align 8, !tbaa !23
  %46 = load i8*, i8** %hmac2, align 8, !tbaa !23
  %cmp137 = icmp eq i8* %45, %46
  br i1 %cmp137, label %lor.lhs.false141, label %err.sink.split

lor.lhs.false141:                                 ; preds = %lor.lhs.false136
  %47 = load i8*, i8** %cookie, align 8, !tbaa !23
  %48 = load i64, i64* %totcookielen, align 8, !tbaa !39
  %idx.neg = sub i64 0, %48
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.neg
  %cmp142 = icmp eq i8* %47, %add.ptr
  br i1 %cmp142, label %lor.lhs.false146, label %err.sink.split

lor.lhs.false146:                                 ; preds = %lor.lhs.false141
  %call147 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %err.sink.split, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %lor.lhs.false146
  %call150 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end133, %lor.lhs.false136, %lor.lhs.false141, %lor.lhs.false146, %lor.lhs.false149, %if.end127, %if.end114, %lor.lhs.false122, %if.end103
  %.sink224 = phi i32 [ 1796, %if.end103 ], [ 1804, %lor.lhs.false122 ], [ 1804, %if.end114 ], [ 1809, %if.end127 ], [ 1818, %lor.lhs.false149 ], [ 1818, %lor.lhs.false146 ], [ 1818, %lor.lhs.false141 ], [ 1818, %lor.lhs.false136 ], [ 1818, %if.end133 ]
  %.sink = phi i32 [ 786688, %if.end103 ], [ 786691, %lor.lhs.false122 ], [ 786691, %if.end114 ], [ 786691, %if.end127 ], [ 786691, %lor.lhs.false149 ], [ 786691, %lor.lhs.false146 ], [ 786691, %lor.lhs.false141 ], [ 786691, %lor.lhs.false136 ], [ 786691, %if.end133 ]
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink224, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_stoc_cookie, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #15
  br label %err

err:                                              ; preds = %err.sink.split, %lor.lhs.false149
  %ret.0 = phi i32 [ 1, %lor.lhs.false149 ], [ 0, %err.sink.split ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call104) #15
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call107) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %lor.lhs.false50, %entry, %err, %if.then102, %if.then96, %if.then78, %if.then71, %if.then46, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then78 ], [ %ret.0, %err ], [ 0, %if.then102 ], [ 0, %if.then96 ], [ 0, %if.then71 ], [ 0, %if.then46 ], [ 2, %entry ], [ 0, %lor.lhs.false50 ], [ 0, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #3

declare i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_cryptopro_bug(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cryptopro_ext = alloca [36 x i8], align 16
  %0 = getelementptr inbounds [36 x i8], [36 x i8]* %cryptopro_ext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) %0, i8* noundef nonnull align 16 dereferenceable(36) getelementptr inbounds ([36 x i8], [36 x i8]* @__const.tls_construct_stoc_cryptopro_bug.cryptopro_ext, i64 0, i64 0), i64 36, i1 false)
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !82
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 3
  %2 = load i32, i32* %id, align 8, !tbaa !128
  %3 = and i32 %2, 65534
  %switch = icmp eq i32 %3, 128
  br i1 %switch, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #15
  %and7 = and i64 %call, 2147483648
  %cmp8 = icmp eq i64 %and7, 0
  br i1 %cmp8, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call9 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %0, i64 noundef 36) #15
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1852, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_stoc_cryptopro_bug, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %lor.lhs.false, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 2, %entry ], [ 2, %lor.lhs.false ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_early_data(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %context, 8192
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %0 = load i32, i32* %max_early_data, align 8, !tbaa !94
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 42, i64 noundef 2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %1 = load i32, i32* %max_early_data, align 8, !tbaa !94
  %call7 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %1, i64 noundef 4) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return.sink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return.sink.split, label %return

if.end14:                                         ; preds = %entry
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %2 = load i32, i32* %early_data, align 8, !tbaa !129
  %cmp15.not = icmp eq i32 %2, 2
  br i1 %cmp15.not, label %if.end17, label %return

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 42, i64 noundef 2) #15
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %return.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %call21 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %return.sink.split, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end17, %lor.lhs.false20, %lor.lhs.false23, %if.end, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %.sink = phi i32 [ 1871, %lor.lhs.false9 ], [ 1871, %lor.lhs.false5 ], [ 1871, %lor.lhs.false ], [ 1871, %if.end ], [ 1884, %lor.lhs.false23 ], [ 1884, %lor.lhs.false20 ], [ 1884, %if.end17 ]
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_construct_stoc_early_data, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false23, %if.end14, %lor.lhs.false9, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 1, %lor.lhs.false9 ], [ 2, %if.end14 ], [ 1, %lor.lhs.false23 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_stoc_psk(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %0 = load i32, i32* %hit, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 41, i64 noundef 2) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then10, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %tick_identity = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 36
  %1 = load i32, i32* %tick_identity, align 8, !tbaa !106
  %call5 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %1, i64 noundef 2) #15
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %return

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1901, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_stoc_psk, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %return

return:                                           ; preds = %lor.lhs.false7, %entry, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 2, %entry ], [ 1, %lor.lhs.false7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %1 = load i8, i8* %0, align 1, !tbaa !130
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #2 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !42
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  store i8* %0, i8** %data, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %1 = load i8, i8* %0, align 1, !tbaa !130
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !130
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  tail call fastcc void @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #11 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !40
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !40
  %1 = load i8, i8* %0, align 1, !tbaa !130
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  store i64 %shl, i64* %data, align 8, !tbaa !39
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !130
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !39
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !130
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or8 = or i64 %shl7, %or
  store i64 %or8, i64* %data, align 8, !tbaa !39
  %add.ptr10 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !130
  %conv11 = zext i8 %4 to i64
  %or12 = or i64 %or8, %conv11
  store i64 %or12, i64* %data, align 8, !tbaa !39
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ssl_session_st* @lookup_sess_in_cache(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 1072}
!9 = !{!"ssl_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !11, i64 72, !6, i64 132, !10, i64 136, !10, i64 144, !12, i64 152, !12, i64 160, !13, i64 168, !10, i64 1208, !10, i64 1216, !10, i64 1224, !5, i64 1232, !10, i64 1240, !16, i64 1248, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !5, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !10, i64 2120, !6, i64 2128, !10, i64 2144, !10, i64 2152, !10, i64 2160, !10, i64 2168, !6, i64 2176, !10, i64 2192, !10, i64 2200, !6, i64 2208, !12, i64 2272, !6, i64 2280, !12, i64 2288, !6, i64 2296, !10, i64 2328, !10, i64 2336, !10, i64 2344, !12, i64 2352, !10, i64 2360, !6, i64 2368, !12, i64 2400, !5, i64 2408, !10, i64 2416, !10, i64 2424, !5, i64 2432, !5, i64 2436, !10, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !10, i64 2472, !10, i64 2480, !12, i64 2488, !17, i64 2496, !10, i64 2512, !10, i64 2520, !6, i64 2528, !12, i64 2536, !5, i64 2544, !5, i64 2548, !5, i64 2552, !12, i64 2560, !5, i64 2568, !5, i64 2572, !12, i64 2576, !12, i64 2584, !12, i64 2592, !18, i64 2600, !10, i64 2904, !5, i64 2912, !10, i64 2920, !10, i64 2928, !10, i64 2936, !5, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !5, i64 2976, !5, i64 2980, !6, i64 2984, !5, i64 2988, !10, i64 2992, !12, i64 3000, !5, i64 3008, !10, i64 3016, !20, i64 3024, !10, i64 3152, !21, i64 3160, !10, i64 7448, !10, i64 7456, !10, i64 7464, !10, i64 7472, !12, i64 7480, !5, i64 7488, !5, i64 7492, !5, i64 7496, !10, i64 7504, !10, i64 7512, !12, i64 7520, !10, i64 7528, !12, i64 7536, !12, i64 7544, !12, i64 7552, !10, i64 7560, !10, i64 7568, !10, i64 7576, !10, i64 7584, !10, i64 7592, !12, i64 7600}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52, !6, i64 56}
!12 = !{!"long", !6, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !5, i64 216, !5, i64 220, !10, i64 224, !10, i64 232, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !6, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !14, i64 280, !6, i64 840, !12, i64 904, !6, i64 912, !12, i64 976, !5, i64 984, !5, i64 988, !10, i64 992, !12, i64 1000, !10, i64 1008, !12, i64 1016, !5, i64 1024, !6, i64 1028, !6, i64 1029, !15, i64 1030, !10, i64 1032}
!14 = !{!"", !6, i64 0, !12, i64 128, !6, i64 136, !12, i64 264, !12, i64 272, !5, i64 280, !10, i64 288, !10, i64 296, !5, i64 304, !10, i64 312, !12, i64 320, !10, i64 328, !12, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !5, i64 368, !12, i64 376, !10, i64 384, !5, i64 392, !10, i64 400, !12, i64 408, !10, i64 416, !12, i64 424, !10, i64 432, !12, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !12, i64 480, !12, i64 488, !10, i64 496, !6, i64 504, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552}
!15 = !{!"short", !6, i64 0}
!16 = !{!"ssl_dane_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !12, i64 56}
!17 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!18 = !{!"", !6, i64 0, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !10, i64 64, !15, i64 72, !5, i64 76, !19, i64 80, !5, i64 112, !5, i64 116, !12, i64 120, !10, i64 128, !12, i64 136, !10, i64 144, !12, i64 152, !10, i64 160, !12, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !12, i64 232, !10, i64 240, !12, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !10, i64 272, !12, i64 280, !5, i64 288, !6, i64 292, !5, i64 296}
!19 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24}
!20 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !5, i64 112, !12, i64 120}
!21 = !{!"record_layer_st", !10, i64 0, !5, i64 8, !5, i64 12, !12, i64 16, !12, i64 24, !22, i64 32, !6, i64 80, !6, i64 1616, !10, i64 4176, !12, i64 4184, !12, i64 4192, !6, i64 4200, !12, i64 4208, !12, i64 4216, !12, i64 4224, !5, i64 4232, !12, i64 4240, !10, i64 4248, !6, i64 4256, !6, i64 4264, !5, i64 4272, !5, i64 4276, !10, i64 4280}
!22 = !{!"ssl3_buffer_st", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40}
!23 = !{!10, !10, i64 0}
!24 = !{!9, !5, i64 1152}
!25 = !{!9, !5, i64 1232}
!26 = !{!9, !10, i64 8}
!27 = !{!28, !10, i64 192}
!28 = !{!"ssl_method_st", !5, i64 0, !5, i64 4, !12, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!29 = !{!30, !5, i64 96}
!30 = !{!"ssl3_enc_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !10, i64 88, !5, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!31 = !{!28, !5, i64 0}
!32 = !{!9, !10, i64 2648}
!33 = !{!9, !5, i64 2912}
!34 = !{!9, !10, i64 2328}
!35 = !{!36, !10, i64 816}
!36 = !{!"ssl_session_st", !5, i64 0, !12, i64 8, !6, i64 16, !6, i64 80, !12, i64 592, !6, i64 600, !12, i64 632, !6, i64 640, !10, i64 672, !10, i64 680, !5, i64 688, !10, i64 696, !10, i64 704, !12, i64 712, !6, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !5, i64 752, !5, i64 756, !10, i64 760, !12, i64 768, !5, i64 776, !17, i64 784, !10, i64 800, !10, i64 808, !37, i64 816, !10, i64 880, !10, i64 888, !12, i64 896, !5, i64 904, !10, i64 912, !10, i64 920}
!37 = !{!"", !10, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !12, i64 48, !6, i64 56}
!38 = !{i64 0, i64 8, !23, i64 8, i64 8, !39}
!39 = !{!12, !12, i64 0}
!40 = !{!41, !10, i64 0}
!41 = !{!"", !10, i64 0, !12, i64 8}
!42 = !{!41, !12, i64 8}
!43 = !{!36, !6, i64 872}
!44 = !{!9, !10, i64 2792}
!45 = !{!9, !10, i64 2800}
!46 = !{!9, !5, i64 2656}
!47 = !{!9, !10, i64 2680}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!9, !10, i64 2688}
!51 = !{!9, !12, i64 576}
!52 = !{!9, !12, i64 712}
!53 = !{!9, !5, i64 1156}
!54 = distinct !{!54, !49}
!55 = !{!9, !10, i64 1176}
!56 = !{!9, !12, i64 1184}
!57 = !{!9, !10, i64 2968}
!58 = !{!59, !12, i64 8}
!59 = !{!"srtp_protection_profile_st", !10, i64 0, !12, i64 8}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!9, !12, i64 2536}
!63 = !{!9, !5, i64 2860}
!64 = !{!9, !5, i64 2856}
!65 = distinct !{!65, !49}
!66 = !{!9, !10, i64 1200}
!67 = !{!9, !15, i64 1198}
!68 = distinct !{!68, !49}
!69 = !{!36, !5, i64 776}
!70 = !{!9, !10, i64 2776}
!71 = !{!9, !12, i64 2768}
!72 = !{!9, !10, i64 2472}
!73 = !{!74, !10, i64 232}
!74 = !{!"ssl_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !10, i64 64, !10, i64 72, !5, i64 80, !12, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !75, i64 120, !6, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !17, i64 240, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !12, i64 312, !5, i64 320, !5, i64 324, !5, i64 328, !12, i64 336, !10, i64 344, !5, i64 352, !10, i64 360, !10, i64 368, !5, i64 376, !12, i64 384, !6, i64 392, !10, i64 424, !10, i64 432, !10, i64 440, !5, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !12, i64 480, !12, i64 488, !12, i64 496, !12, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !76, i64 536, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !20, i64 792, !77, i64 920, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !5, i64 984, !5, i64 988, !10, i64 992, !10, i64 1000, !12, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !12, i64 1040, !10, i64 1048, !10, i64 1056, !5, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !10, i64 1568, !10, i64 1576, !12, i64 1584, !12, i64 1592, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612}
!75 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!76 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !6, i64 76, !12, i64 80, !10, i64 88, !12, i64 96, !10, i64 104, !10, i64 112, !12, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !12, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !6, i64 192}
!77 = !{!"dane_ctx_st", !10, i64 0, !10, i64 8, !6, i64 16, !12, i64 24}
!78 = !{!9, !12, i64 168}
!79 = !{!74, !10, i64 0}
!80 = !{!74, !10, i64 1088}
!81 = !{!9, !10, i64 2952}
!82 = !{!9, !10, i64 736}
!83 = !{!9, !12, i64 2400}
!84 = !{!28, !10, i64 152}
!85 = !{!9, !5, i64 0}
!86 = !{!9, !6, i64 2280}
!87 = !{!9, !5, i64 2888}
!88 = !{!9, !5, i64 2712}
!89 = !{!9, !10, i64 2456}
!90 = !{!9, !10, i64 2448}
!91 = !{!9, !12, i64 2288}
!92 = !{!36, !12, i64 632}
!93 = !{!9, !5, i64 2868}
!94 = !{!9, !5, i64 7488}
!95 = !{!36, !12, i64 736}
!96 = !{!36, !5, i64 848}
!97 = !{!36, !12, i64 728}
!98 = !{!36, !10, i64 760}
!99 = !{!100, !5, i64 64}
!100 = !{!"ssl_cipher_st", !5, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!101 = distinct !{!101, !49}
!102 = !{!9, !10, i64 136}
!103 = !{!104, !10, i64 8}
!104 = !{!"buf_mem_st", !12, i64 0, !10, i64 8, !12, i64 16, !12, i64 24}
!105 = distinct !{!105, !49}
!106 = !{!9, !5, i64 2896}
!107 = !{!9, !6, i64 2984}
!108 = !{!9, !12, i64 1144}
!109 = !{!100, !5, i64 28}
!110 = !{!100, !5, i64 32}
!111 = !{!9, !10, i64 2744}
!112 = !{!15, !15, i64 0}
!113 = distinct !{!113, !49}
!114 = !{!9, !5, i64 2676}
!115 = !{!74, !10, i64 696}
!116 = !{!74, !10, i64 704}
!117 = !{!9, !10, i64 1160}
!118 = !{!9, !12, i64 1168}
!119 = !{!100, !5, i64 40}
!120 = !{!100, !5, i64 36}
!121 = !{!122, !6, i64 48}
!122 = !{!"tls_group_info_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !15, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48}
!123 = !{!9, !10, i64 744}
!124 = !{!9, !10, i64 864}
!125 = !{!9, !12, i64 872}
!126 = !{!9, !6, i64 1197}
!127 = !{!74, !10, i64 224}
!128 = !{!100, !5, i64 24}
!129 = !{!9, !5, i64 2864}
!130 = !{!6, !6, i64 0}
