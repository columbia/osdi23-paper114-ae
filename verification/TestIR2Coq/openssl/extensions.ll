; ModuleID = 'ssl/statem/extensions.c'
source_filename = "ssl/statem/extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extensions_definition_st = type { i32, i32, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, i32, i32)* }
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
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque

@ext_defs = internal unnamed_addr constant [26 x %struct.extensions_definition_st] [%struct.extensions_definition_st { i32 65281, i32 408, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_renegotiate, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_renegotiate, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_renegotiate, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_renegotiate, i32 (%struct.ssl_st*, i32, i32)* @final_renegotiate }, %struct.extensions_definition_st { i32 0, i32 1408, i32 (%struct.ssl_st*, i32)* @init_server_name, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_server_name, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_server_name, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_server_name, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_server_name, i32 (%struct.ssl_st*, i32, i32)* @final_server_name }, %struct.extensions_definition_st { i32 1, i32 1408, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_maxfragmentlen, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_maxfragmentlen, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_maxfragmentlen, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_maxfragmentlen, i32 (%struct.ssl_st*, i32, i32)* @final_maxfragmentlen }, %struct.extensions_definition_st { i32 12, i32 144, i32 (%struct.ssl_st*, i32)* @init_srp, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_srp, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_srp, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 11, i32 400, i32 (%struct.ssl_st*, i32)* @init_ec_point_formats, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_ec_pt_formats, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_ec_pt_formats, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_ec_pt_formats, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_ec_pt_formats, i32 (%struct.ssl_st*, i32, i32)* @final_ec_pt_formats }, %struct.extensions_definition_st { i32 10, i32 1408, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_supported_groups, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_supported_groups, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_supported_groups, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 35, i32 400, i32 (%struct.ssl_st*, i32)* @init_session_ticket, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_session_ticket, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_session_ticket, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_session_ticket, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_session_ticket, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 5, i32 20864, i32 (%struct.ssl_st*, i32)* @init_status_request, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_status_request, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_status_request, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_status_request, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_status_request, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 13172, i32 400, i32 (%struct.ssl_st*, i32)* @init_npn, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_npn, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_npn, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_next_proto_neg, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_npn, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 16, i32 1408, i32 (%struct.ssl_st*, i32)* @init_alpn, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_alpn, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_alpn, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_alpn, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_alpn, i32 (%struct.ssl_st*, i32, i32)* @final_alpn }, %struct.extensions_definition_st { i32 14, i32 1410, i32 (%struct.ssl_st*, i32)* @init_srtp, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_use_srtp, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_use_srtp, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_use_srtp, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_use_srtp, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 22, i32 400, i32 (%struct.ssl_st*, i32)* @init_etm, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_etm, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_etm, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_etm, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_etm, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 18, i32 20864, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_sct, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_sct, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 23, i32 400, i32 (%struct.ssl_st*, i32)* @init_ems, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_ems, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_ems, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_ems, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_ems, i32 (%struct.ssl_st*, i32, i32)* @final_ems }, %struct.extensions_definition_st { i32 50, i32 16512, i32 (%struct.ssl_st*, i32)* @init_sig_algs_cert, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_sig_algs_cert, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_sig_algs_cert, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 49, i32 160, i32 (%struct.ssl_st*, i32)* @init_post_handshake_auth, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_post_handshake_auth, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_post_handshake_auth, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 13, i32 16512, i32 (%struct.ssl_st*, i32)* @init_sig_algs, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_sig_algs, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_sig_algs, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_sig_algs, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_sig_algs, i32 (%struct.ssl_st*, i32, i32)* @final_sig_algs }, %struct.extensions_definition_st { i32 43, i32 2692, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_supported_versions, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_supported_versions, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_supported_versions, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 45, i32 164, i32 (%struct.ssl_st*, i32)* @init_psk_kex_modes, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_psk_kex_modes, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_psk_kex_modes, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 51, i32 2724, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_key_share, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_key_share, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_key_share, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_key_share, i32 (%struct.ssl_st*, i32, i32)* @final_key_share }, %struct.extensions_definition_st { i32 44, i32 2212, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_cookie, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_cookie, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_cookie, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_cookie, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 65000, i32 400, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_cryptopro_bug, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 42, i32 9376, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_early_data, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_early_data, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_early_data, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_early_data, i32 (%struct.ssl_st*, i32, i32)* @final_early_data }, %struct.extensions_definition_st { i32 47, i32 16544, i32 (%struct.ssl_st*, i32)* @init_certificate_authorities, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_certificate_authorities, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_certificate_authorities, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_certificate_authorities, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_certificate_authorities, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 21, i32 128, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_padding, i32 (%struct.ssl_st*, i32, i32)* null }, %struct.extensions_definition_st { i32 41, i32 676, i32 (%struct.ssl_st*, i32)* null, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_ctos_psk, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* @tls_parse_stoc_psk, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_stoc_psk, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* @tls_construct_ctos_psk, i32 (%struct.ssl_st*, i32, i32)* @final_psk }], align 16
@.str = private unnamed_addr constant [24 x i8] c"ssl/statem/extensions.c\00", align 1
@__func__.tls_collect_extensions = private unnamed_addr constant [23 x i8] c"tls_collect_extensions\00", align 1
@__func__.tls_construct_extensions = private unnamed_addr constant [25 x i8] c"tls_construct_extensions\00", align 1
@tls_psk_do_binder.resumption_label = internal constant [11 x i8] c"res binder\00", align 1
@tls_psk_do_binder.external_label = internal constant [11 x i8] c"ext binder\00", align 1
@__func__.tls_psk_do_binder = private unnamed_addr constant [18 x i8] c"tls_psk_do_binder\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@__func__.final_renegotiate = private unnamed_addr constant [18 x i8] c"final_renegotiate\00", align 1
@__func__.final_server_name = private unnamed_addr constant [18 x i8] c"final_server_name\00", align 1
@__func__.final_maxfragmentlen = private unnamed_addr constant [21 x i8] c"final_maxfragmentlen\00", align 1
@__func__.final_ec_pt_formats = private unnamed_addr constant [20 x i8] c"final_ec_pt_formats\00", align 1
@__func__.final_ems = private unnamed_addr constant [10 x i8] c"final_ems\00", align 1
@__func__.final_sig_algs = private unnamed_addr constant [15 x i8] c"final_sig_algs\00", align 1
@__func__.final_key_share = private unnamed_addr constant [16 x i8] c"final_key_share\00", align 1
@__func__.final_early_data = private unnamed_addr constant [17 x i8] c"final_early_data\00", align 1
@__func__.tls_parse_certificate_authorities = private unnamed_addr constant [34 x i8] c"tls_parse_certificate_authorities\00", align 1
@__func__.tls_construct_certificate_authorities = private unnamed_addr constant [38 x i8] c"tls_construct_certificate_authorities\00", align 1
@__func__.final_psk = private unnamed_addr constant [10 x i8] c"final_psk\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_validate_all_contexts(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %thisctx, %struct.raw_extension_st* nocapture noundef readonly %exts) local_unnamed_addr #0 {
entry:
  %offset = alloca i64, align 8
  %0 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %and = and i32 %thisctx, 128
  %cmp.not = icmp eq i32 %and, 0
  %and1 = lshr i32 %thisctx, 7
  %1 = and i32 %and1, 2
  %2 = xor i32 %1, 2
  %role.0 = select i1 %cmp.not, i32 %2, i32 1
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %meths_count = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 16, i32 1
  %4 = load i64, i64* %meths_count, align 8, !tbaa !22
  %add = add i64 %4, 26
  %cmp551.not = icmp eq i64 %add, 0
  br i1 %cmp551.not, label %cleanup25, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %thisext.055 = phi %struct.raw_extension_st* [ %incdec.ptr, %for.inc ], [ %exts, %entry ]
  %i.052 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %thisext.055, i64 0, i32 1
  %5 = load i32, i32* %present, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp ult i64 %i.052, 26
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.end7
  %context10 = getelementptr inbounds [26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 %i.052, i32 1
  br label %if.end20

if.else11:                                        ; preds = %if.end7
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %custext13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 16
  %type = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %thisext.055, i64 0, i32 3
  %7 = load i32, i32* %type, align 8, !tbaa !27
  %call = call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %custext13, i32 noundef %role.0, i32 noundef %7, i64* noundef nonnull %offset) #10
  %cmp14.not = icmp eq %struct.custom_ext_method* %call, null
  br i1 %cmp14.not, label %cleanup25, label %cleanup

cleanup:                                          ; preds = %if.else11
  %context19 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 2
  br label %if.end20

if.end20:                                         ; preds = %cleanup, %if.then9
  %context.2.in = phi i32* [ %context10, %if.then9 ], [ %context19, %cleanup ]
  %context.2 = load i32, i32* %context.2.in, align 4, !tbaa !28
  %call21 = call fastcc i32 @validate_context(%struct.ssl_st* noundef %s, i32 noundef %context.2, i32 noundef %thisctx) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup25, label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body
  %inc = add nuw i64 %i.052, 1
  %incdec.ptr = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %thisext.055, i64 1
  %exitcond.not = icmp eq i64 %inc, %add
  br i1 %exitcond.not, label %cleanup25, label %for.body, !llvm.loop !29

cleanup25:                                        ; preds = %if.end20, %for.inc, %if.else11, %entry
  %retval.4 = phi i32 [ 1, %entry ], [ 0, %if.else11 ], [ 1, %for.inc ], [ 0, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef, i32 noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @validate_context(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %extctx, i32 noundef %thisctx) unnamed_addr #3 {
entry:
  %and = and i32 %thisctx, %extctx
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and1 = and i32 %2, 8
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %extctx, 1
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end11, label %return

if.else:                                          ; preds = %if.end
  %and7 = and i32 %extctx, 2
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end11, label %return

if.end11:                                         ; preds = %if.else, %if.then2
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @extension_is_relevant(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %extctx, i32 noundef %thisctx) local_unnamed_addr #3 {
entry:
  %and = and i32 %thisctx, 2048
  %cmp.not = icmp eq i32 %and, 0
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and1 = and i32 %2, 8
  br i1 %cmp.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !36
  %cmp3 = icmp sgt i32 %3, 771
  br i1 %cmp3, label %land.rhs, label %lor.lhs.false

land.rhs:                                         ; preds = %land.lhs.true
  %cmp6 = icmp ne i32 %3, 65536
  %phi.cast = zext i1 %cmp6 to i32
  br label %lor.lhs.false

if.end:                                           ; preds = %entry, %if.else
  %is_tls13.0 = phi i32 [ 0, %if.else ], [ 1, %entry ]
  %tobool11.not = icmp eq i32 %and1, 0
  %and13 = and i32 %extctx, 4
  %cmp14.not = icmp eq i32 %and13, 0
  %or.cond62 = or i1 %cmp14.not, %tobool11.not
  br i1 %or.cond62, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.rhs, %land.lhs.true, %if.end
  %is_tls13.078 = phi i32 [ %is_tls13.0, %if.end ], [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ]
  %version15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %4 = load i32, i32* %version15, align 8, !tbaa !37
  %cmp16 = icmp eq i32 %4, 768
  %and18 = and i32 %extctx, 8
  %cmp19 = icmp eq i32 %and18, 0
  %or.cond63 = and i1 %cmp19, %cmp16
  br i1 %or.cond63, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %tobool21 = icmp ne i32 %is_tls13.078, 0
  %and23 = and i32 %extctx, 16
  %cmp24.not = icmp ne i32 %and23, 0
  %5 = and i1 %cmp24.not, %tobool21
  br i1 %5, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %and28 = and i32 %extctx, 32
  %cmp29.not = icmp eq i32 %and28, 0
  %and31 = and i32 %thisctx, 128
  %6 = or i32 %is_tls13.078, %and31
  %7 = icmp ne i32 %6, 0
  %8 = or i1 %cmp29.not, %7
  br i1 %8, label %lor.lhs.false33, label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false25
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %9 = load i32, i32* %server, align 8, !tbaa !38
  %tobool34 = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool34, i1 true, i1 %tobool21
  %or.cond67 = or i1 %cmp29.not, %or.cond
  br i1 %or.cond67, label %lor.lhs.false40, label %cleanup

lor.lhs.false40:                                  ; preds = %lor.lhs.false33
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %10 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool41.not = icmp eq i32 %10, 0
  %and43 = and i32 %extctx, 64
  %cmp44.not = icmp eq i32 %and43, 0
  %or.cond68 = or i1 %cmp44.not, %tobool41.not
  %spec.select = zext i1 %or.cond68 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false40, %if.end, %lor.lhs.false, %lor.lhs.false20, %lor.lhs.false25, %lor.lhs.false33
  %retval.0 = phi i32 [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false40 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_collect_extensions(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %packet, i32 noundef %context, %struct.raw_extension_st** nocapture noundef writeonly %res, i64* noundef writeonly %len, i32 noundef %init) local_unnamed_addr #0 {
entry:
  %extensions = alloca %struct.PACKET, align 8
  %type = alloca i32, align 4
  %extension = alloca %struct.PACKET, align 8
  %thisex = alloca %struct.raw_extension_st*, align 8
  %0 = bitcast %struct.PACKET* %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %1 = bitcast %struct.PACKET* %packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !40
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 16
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %res, align 8, !tbaa !41
  %and = and i32 %context, 128
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %cond.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %custext2 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 16
  tail call void @custom_ext_init(%struct.custom_ext_methods* noundef nonnull %custext2) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %meths_count = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 16, i32 1
  %4 = load i64, i64* %meths_count, align 8, !tbaa !43
  %add = add i64 %4, 26
  %mul = mul i64 %add, 40
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 567) #10
  %5 = bitcast i8* %call to %struct.raw_extension_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end
  %call7178 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extensions) #11
  %cmp8.not179 = icmp eq i64 %call7178, 0
  br i1 %cmp8.not179, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %6 = bitcast i32* %type to i8*
  %7 = bitcast %struct.PACKET* %extension to i8*
  %8 = bitcast %struct.raw_extension_st** %thisex to i8*
  %sub.ptr.rhs.cast = ptrtoint i8* %call to i64
  %and33 = and i32 %context, 24704
  %cmp34 = icmp eq i32 %and33, 0
  %and51 = and i32 %context, 256
  %cmp52 = icmp ne i32 %and51, 0
  %debug_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 1
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %debug_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 2
  br label %while.body

if.then5:                                         ; preds = %cond.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_collect_extensions, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup110

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %i.0180 = phi i64 [ 0, %while.body.lr.ph ], [ %i.2, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  %call9 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %extensions, i32* noundef nonnull %type) #11
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call10 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %extensions, %struct.PACKET* noundef nonnull %extension) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %while.body
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_collect_extensions, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #10
  br label %cleanup.thread

if.end13:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %type, align 4, !tbaa !28
  %call14 = call fastcc i32 @verify_extension(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %9, %struct.custom_ext_methods* noundef nonnull %custext, %struct.raw_extension_st* noundef nonnull %5, %struct.raw_extension_st** noundef nonnull %thisex) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then27, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end13
  %10 = load %struct.raw_extension_st*, %struct.raw_extension_st** %thisex, align 8, !tbaa !41
  %cmp17.not = icmp eq %struct.raw_extension_st* %10, null
  br i1 %cmp17.not, label %lor.lhs.false19, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %10, i64 0, i32 1
  %11 = load i32, i32* %present, align 8, !tbaa !25
  %cmp18 = icmp eq i32 %11, 1
  br i1 %cmp18, label %if.then27, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true, %lor.lhs.false16
  %cmp20 = icmp ne i32 %9, 41
  %brmerge = or i1 %cmp.not, %cmp20
  br i1 %brmerge, label %if.end28, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false19
  %call25 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extensions) #11
  %cmp26.not = icmp eq i64 %call25, 0
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24, %land.lhs.true, %if.end13
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_collect_extensions, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 110, i8* noundef null) #10
  br label %cleanup.thread

if.end28:                                         ; preds = %lor.lhs.false19, %land.lhs.true24
  %sub.ptr.lhs.cast = ptrtoint %struct.raw_extension_st* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv29 = and i64 %sub.ptr.div, 4294967295
  %cmp30 = icmp ult i64 %conv29, 26
  %or.cond = and i1 %cmp34, %cmp30
  br i1 %or.cond, label %switch.early.test, label %if.end58

switch.early.test:                                ; preds = %if.end28
  switch i32 %9, label %land.lhs.true45 [
    i32 65281, label %if.end58
    i32 44, label %if.end58
    i32 18, label %if.end58
  ]

land.lhs.true45:                                  ; preds = %switch.early.test
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 0, i64 %conv29
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %13 = and i8 %12, 2
  %cmp48 = icmp ne i8 %13, 0
  %cmp55 = icmp eq i32 %9, 65000
  %or.cond118 = and i1 %cmp52, %cmp55
  %or.cond183 = or i1 %cmp48, %or.cond118
  br i1 %or.cond183, label %if.end58, label %if.then57

if.then57:                                        ; preds = %land.lhs.true45
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 626, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_collect_extensions, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 217, i8* noundef null) #10
  br label %cleanup.thread

if.end58:                                         ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %land.lhs.true45, %if.end28
  br i1 %cmp17.not, label %cleanup, label %if.then61

if.then61:                                        ; preds = %if.end58
  %14 = bitcast %struct.raw_extension_st* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !40
  %present62 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %10, i64 0, i32 1
  store i32 1, i32* %present62, align 8, !tbaa !25
  %type63 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %10, i64 0, i32 3
  store i32 %9, i32* %type63, align 8, !tbaa !27
  %inc = add i64 %i.0180, 1
  %received_order = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %10, i64 0, i32 4
  store i64 %i.0180, i64* %received_order, align 8, !tbaa !45
  %15 = load void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)** %debug_cb, align 8, !tbaa !46
  %tobool65.not = icmp eq void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* %15, null
  br i1 %tobool65.not, label %cleanup, label %if.then66

if.then66:                                        ; preds = %if.then61
  %16 = load i32, i32* %server, align 8, !tbaa !38
  %tobool69.not = icmp eq i32 %16, 0
  %lnot.ext = zext i1 %tobool69.not to i32
  %data71 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %10, i64 0, i32 0
  %call72 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %data71) #11
  %call74 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %data71) #11
  %conv75 = trunc i64 %call74 to i32
  %17 = load i8*, i8** %debug_arg, align 8, !tbaa !47
  tail call void %15(%struct.ssl_st* noundef nonnull %s, i32 noundef %lnot.ext, i32 noundef %9, i8* noundef %call72, i32 noundef %conv75, i8* noundef %17) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then27, %if.then57, %if.then12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  br label %err

cleanup:                                          ; preds = %if.end58, %if.then66, %if.then61
  %i.2 = phi i64 [ %inc, %if.then66 ], [ %inc, %if.then61 ], [ %i.0180, %if.end58 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  %call7 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %extensions) #11
  %cmp8.not = icmp eq i64 %call7, 0
  br i1 %cmp8.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.cond.preheader
  %tobool82.not = icmp eq i32 %init, 0
  br i1 %tobool82.not, label %if.end105, label %for.body

for.body:                                         ; preds = %while.end, %for.inc
  %thisexd.0182 = phi %struct.extensions_definition_st* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 0), %while.end ]
  %i.3181 = phi i64 [ %inc104, %for.inc ], [ 0, %while.end ]
  %init86 = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.0182, i64 0, i32 2
  %18 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %init86, align 8, !tbaa !48
  %cmp87.not = icmp eq i32 (%struct.ssl_st*, i32)* %18, null
  br i1 %cmp87.not, label %for.inc, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %for.body
  %context90 = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.0182, i64 0, i32 1
  %19 = load i32, i32* %context90, align 4, !tbaa !50
  %and91 = and i32 %19, %context
  %cmp92.not = icmp eq i32 %and91, 0
  br i1 %cmp92.not, label %for.inc, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true89
  %call96 = tail call i32 @extension_is_relevant(%struct.ssl_st* noundef %s, i32 noundef %19, i32 noundef %context) #11
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %for.inc, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true94
  %call100 = tail call i32 %18(%struct.ssl_st* noundef %s, i32 noundef %context) #10
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true89, %land.lhs.true94, %land.lhs.true98
  %inc104 = add nuw nsw i64 %i.3181, 1
  %incdec.ptr = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.0182, i64 1
  %exitcond.not = icmp eq i64 %inc104, 26
  br i1 %exitcond.not, label %if.end105, label %for.body, !llvm.loop !51

if.end105:                                        ; preds = %for.inc, %while.end
  %20 = bitcast %struct.raw_extension_st** %res to i8**
  store i8* %call, i8** %20, align 8, !tbaa !41
  %cmp106.not = icmp eq i64* %len, null
  br i1 %cmp106.not, label %cleanup110, label %if.then108

if.then108:                                       ; preds = %if.end105
  store i64 %add, i64* %len, align 8, !tbaa !42
  br label %cleanup110

err:                                              ; preds = %land.lhs.true98, %cleanup.thread
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 664) #10
  br label %cleanup110

cleanup110:                                       ; preds = %if.end105, %if.then108, %err, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %err ], [ 1, %if.then108 ], [ 1, %if.end105 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @custom_ext_init(%struct.custom_ext_methods* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #3 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !43
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #6 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !40
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !28
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  %5 = load i8*, i8** %data, align 8, !tbaa !41
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !52
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !43
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_extension(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %context, i32 noundef %type, %struct.custom_ext_methods* noundef %meths, %struct.raw_extension_st* noundef %rawexlist, %struct.raw_extension_st** nocapture noundef writeonly %found) unnamed_addr #0 {
entry:
  %offset = alloca i64, align 8
  switch i32 %type, label %for.inc.25 [
    i32 65281, label %if.then
    i32 0, label %if.then.fold.split
    i32 1, label %if.then.fold.split59
    i32 12, label %if.then.fold.split60
    i32 11, label %if.then.fold.split61
    i32 10, label %if.then.fold.split62
    i32 35, label %if.then.fold.split63
    i32 5, label %if.then.fold.split64
    i32 13172, label %if.then.fold.split65
    i32 16, label %if.then.fold.split66
    i32 14, label %if.then.fold.split67
    i32 22, label %if.then.fold.split68
    i32 18, label %if.then.fold.split69
    i32 23, label %if.then.fold.split70
    i32 50, label %if.then.fold.split71
    i32 49, label %if.then.fold.split72
    i32 13, label %if.then.fold.split73
    i32 43, label %if.then.fold.split74
    i32 45, label %if.then.fold.split75
    i32 51, label %if.then.fold.split76
    i32 44, label %if.then.fold.split77
    i32 65000, label %if.then.fold.split78
    i32 42, label %if.then.fold.split79
    i32 47, label %if.then.fold.split80
    i32 21, label %if.then.fold.split81
    i32 41, label %if.then.fold.split82
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split59:                             ; preds = %entry
  br label %if.then

if.then.fold.split60:                             ; preds = %entry
  br label %if.then

if.then.fold.split61:                             ; preds = %entry
  br label %if.then

if.then.fold.split62:                             ; preds = %entry
  br label %if.then

if.then.fold.split63:                             ; preds = %entry
  br label %if.then

if.then.fold.split64:                             ; preds = %entry
  br label %if.then

if.then.fold.split65:                             ; preds = %entry
  br label %if.then

if.then.fold.split66:                             ; preds = %entry
  br label %if.then

if.then.fold.split67:                             ; preds = %entry
  br label %if.then

if.then.fold.split68:                             ; preds = %entry
  br label %if.then

if.then.fold.split69:                             ; preds = %entry
  br label %if.then

if.then.fold.split70:                             ; preds = %entry
  br label %if.then

if.then.fold.split71:                             ; preds = %entry
  br label %if.then

if.then.fold.split72:                             ; preds = %entry
  br label %if.then

if.then.fold.split73:                             ; preds = %entry
  br label %if.then

if.then.fold.split74:                             ; preds = %entry
  br label %if.then

if.then.fold.split75:                             ; preds = %entry
  br label %if.then

if.then.fold.split76:                             ; preds = %entry
  br label %if.then

if.then.fold.split77:                             ; preds = %entry
  br label %if.then

if.then.fold.split78:                             ; preds = %entry
  br label %if.then

if.then.fold.split79:                             ; preds = %entry
  br label %if.then

if.then.fold.split80:                             ; preds = %entry
  br label %if.then

if.then.fold.split81:                             ; preds = %entry
  br label %if.then

if.then.fold.split82:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split82, %if.then.fold.split81, %if.then.fold.split80, %if.then.fold.split79, %if.then.fold.split78, %if.then.fold.split77, %if.then.fold.split76, %if.then.fold.split75, %if.then.fold.split74, %if.then.fold.split73, %if.then.fold.split72, %if.then.fold.split71, %if.then.fold.split70, %if.then.fold.split69, %if.then.fold.split68, %if.then.fold.split67, %if.then.fold.split66, %if.then.fold.split65, %if.then.fold.split64, %if.then.fold.split63, %if.then.fold.split62, %if.then.fold.split61, %if.then.fold.split60, %if.then.fold.split59, %if.then.fold.split
  %thisext.056.lcssa = phi %struct.extensions_definition_st* [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 0), %entry ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 1), %if.then.fold.split ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 2), %if.then.fold.split59 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 3), %if.then.fold.split60 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 4), %if.then.fold.split61 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 5), %if.then.fold.split62 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 6), %if.then.fold.split63 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 7), %if.then.fold.split64 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 8), %if.then.fold.split65 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 9), %if.then.fold.split66 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 10), %if.then.fold.split67 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 11), %if.then.fold.split68 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 12), %if.then.fold.split69 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 13), %if.then.fold.split70 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 14), %if.then.fold.split71 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 15), %if.then.fold.split72 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 16), %if.then.fold.split73 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 17), %if.then.fold.split74 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 18), %if.then.fold.split75 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 19), %if.then.fold.split76 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 20), %if.then.fold.split77 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 21), %if.then.fold.split78 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 22), %if.then.fold.split79 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 23), %if.then.fold.split80 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 24), %if.then.fold.split81 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 25), %if.then.fold.split82 ]
  %i.055.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split59 ], [ 3, %if.then.fold.split60 ], [ 4, %if.then.fold.split61 ], [ 5, %if.then.fold.split62 ], [ 6, %if.then.fold.split63 ], [ 7, %if.then.fold.split64 ], [ 8, %if.then.fold.split65 ], [ 9, %if.then.fold.split66 ], [ 10, %if.then.fold.split67 ], [ 11, %if.then.fold.split68 ], [ 12, %if.then.fold.split69 ], [ 13, %if.then.fold.split70 ], [ 14, %if.then.fold.split71 ], [ 15, %if.then.fold.split72 ], [ 16, %if.then.fold.split73 ], [ 17, %if.then.fold.split74 ], [ 18, %if.then.fold.split75 ], [ 19, %if.then.fold.split76 ], [ 20, %if.then.fold.split77 ], [ 21, %if.then.fold.split78 ], [ 22, %if.then.fold.split79 ], [ 23, %if.then.fold.split80 ], [ 24, %if.then.fold.split81 ], [ 25, %if.then.fold.split82 ]
  %context3 = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisext.056.lcssa, i64 0, i32 1
  %0 = load i32, i32* %context3, align 4, !tbaa !50
  %call = tail call fastcc i32 @validate_context(%struct.ssl_st* noundef %s, i32 noundef %0, i32 noundef %context) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup28, label %if.end

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %rawexlist, i64 %i.055.lcssa
  store %struct.raw_extension_st* %arrayidx, %struct.raw_extension_st** %found, align 8, !tbaa !41
  br label %cleanup28

for.inc.25:                                       ; preds = %entry
  %cmp6.not = icmp eq %struct.custom_ext_methods* %meths, null
  br i1 %cmp6.not, label %if.end27, label %if.then7

if.then7:                                         ; preds = %for.inc.25
  %1 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %offset, align 8, !tbaa !42
  %and = and i32 %context, 128
  %cmp8.not = icmp eq i32 %and, 0
  %and10 = lshr i32 %context, 7
  %2 = and i32 %and10, 2
  %3 = xor i32 %2, 2
  %role.0 = select i1 %cmp8.not, i32 %3, i32 1
  %call15 = call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %meths, i32 noundef %role.0, i32 noundef %type, i64* noundef nonnull %offset) #10
  %cmp16.not = icmp eq %struct.custom_ext_method* %call15, null
  br i1 %cmp16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.then7
  %context18 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call15, i64 0, i32 2
  %4 = load i32, i32* %context18, align 8, !tbaa !53
  %call19 = call fastcc i32 @validate_context(%struct.ssl_st* noundef %s, i32 noundef %4, i32 noundef %context) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.thread, label %if.end22

if.end22:                                         ; preds = %if.then17
  %5 = load i64, i64* %offset, align 8, !tbaa !42
  %add = add i64 %5, 26
  %arrayidx23 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %rawexlist, i64 %add
  store %struct.raw_extension_st* %arrayidx23, %struct.raw_extension_st** %found, align 8, !tbaa !41
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end22, %if.then17
  %retval.0.ph = phi i32 [ 0, %if.then17 ], [ 1, %if.end22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  br label %cleanup28

cleanup:                                          ; preds = %if.then7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %for.inc.25
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %found, align 8, !tbaa !41
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup.thread, %if.then, %if.end27, %if.end
  %retval.1 = phi i32 [ 1, %if.end ], [ 1, %if.end27 ], [ 0, %if.then ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #3 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !52
  ret i8* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_extension(%struct.ssl_st* noundef %s, i32 noundef %idx, i32 noundef %context, %struct.raw_extension_st* noundef %exts, %struct.x509_st* noundef %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %idx to i64
  %arrayidx = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %exts, i64 %idxprom
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %exts, i64 %idxprom, i32 1
  %0 = load i32, i32* %present, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup25, label %if.end

if.end:                                           ; preds = %entry
  %parsed = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %exts, i64 %idxprom, i32 2
  %1 = load i32, i32* %parsed, align 4, !tbaa !55
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup25

if.end3:                                          ; preds = %if.end
  store i32 1, i32* %parsed, align 4, !tbaa !55
  %cmp = icmp ult i32 %idx, 26
  br i1 %cmp, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.end3
  %context9 = getelementptr inbounds [26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 %idxprom, i32 1
  %2 = load i32, i32* %context9, align 4, !tbaa !50
  %call = tail call i32 @extension_is_relevant(%struct.ssl_st* noundef %s, i32 noundef %2, i32 noundef %context) #11
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %cleanup25, label %if.end12

if.end12:                                         ; preds = %if.then6
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !38
  %tobool13.not = icmp eq i32 %3, 0
  %parse_ctos = getelementptr inbounds [26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 %idxprom, i32 3
  %parse_stoc = getelementptr inbounds [26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 %idxprom, i32 4
  %cond.in = select i1 %tobool13.not, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)** %parse_stoc, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)** %parse_ctos
  %cond = load i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)** %cond.in, align 8, !tbaa !41
  %cmp14.not = icmp eq i32 (%struct.ssl_st*, %struct.PACKET*, i32, %struct.x509_st*, i64)* %cond, null
  br i1 %cmp14.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  %data = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %arrayidx, i64 0, i32 0
  %call17 = tail call i32 %cond(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %data, i32 noundef %context, %struct.x509_st* noundef %x, i64 noundef %chainidx) #10
  br label %cleanup25

if.end19:                                         ; preds = %if.end12, %if.end3
  %type = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %exts, i64 %idxprom, i32 3
  %4 = load i32, i32* %type, align 8, !tbaa !27
  %data20 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %arrayidx, i64 0, i32 0
  %call21 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %data20) #11
  %call23 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %data20) #11
  %call24 = tail call i32 @custom_ext_parse(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %4, i8* noundef %call21, i64 noundef %call23, %struct.x509_st* noundef %x, i64 noundef %chainidx) #10
  br label %cleanup25

cleanup25:                                        ; preds = %if.then6, %if.then16, %if.end, %entry, %if.end19
  %retval.1 = phi i32 [ %call24, %if.end19 ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.then6 ], [ %call17, %if.then16 ]
  ret i32 %retval.1
}

declare i32 @custom_ext_parse(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_parse_all_extensions(%struct.ssl_st* noundef %s, i32 noundef %context, %struct.raw_extension_st* noundef %exts, %struct.x509_st* noundef %x, i64 noundef %chainidx, i32 noundef %fin) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %meths_count = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16, i32 1
  %1 = load i64, i64* %meths_count, align 8, !tbaa !22
  %add = add i64 %1, 26
  %cmp42.not = icmp eq i64 %add, 0
  br i1 %cmp42.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %add
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !56

for.body:                                         ; preds = %entry, %for.cond
  %i.043 = phi i64 [ %inc, %for.cond ], [ 0, %entry ]
  %conv = trunc i64 %i.043 to i32
  %call = tail call i32 @tls_parse_extension(%struct.ssl_st* noundef %s, i32 noundef %conv, i32 noundef %context, %struct.raw_extension_st* noundef %exts, %struct.x509_st* noundef %x, i64 noundef %chainidx) #11
  %tobool.not = icmp eq i32 %call, 0
  %inc = add nuw i64 %i.043, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %tobool1.not = icmp eq i32 %fin, 0
  br i1 %tobool1.not, label %cleanup, label %for.body6

for.body6:                                        ; preds = %for.end, %for.inc18
  %thisexd.046 = phi %struct.extensions_definition_st* [ %incdec.ptr, %for.inc18 ], [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 0), %for.end ]
  %i.144 = phi i64 [ %inc19, %for.inc18 ], [ 0, %for.end ]
  %final = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.046, i64 0, i32 7
  %2 = load i32 (%struct.ssl_st*, i32, i32)*, i32 (%struct.ssl_st*, i32, i32)** %final, align 8, !tbaa !57
  %cmp7.not = icmp eq i32 (%struct.ssl_st*, i32, i32)* %2, null
  br i1 %cmp7.not, label %for.inc18, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %context9 = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.046, i64 0, i32 1
  %3 = load i32, i32* %context9, align 4, !tbaa !50
  %and = and i32 %3, %context
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %for.inc18, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %exts, i64 %i.144, i32 1
  %4 = load i32, i32* %present, align 8, !tbaa !25
  %call14 = tail call i32 %2(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %4) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %for.inc18

for.inc18:                                        ; preds = %for.body6, %land.lhs.true, %land.lhs.true12
  %inc19 = add nuw nsw i64 %i.144, 1
  %incdec.ptr = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.046, i64 1
  %exitcond48.not = icmp eq i64 %inc19, 26
  br i1 %exitcond48.not, label %cleanup, label %for.body6, !llvm.loop !58

cleanup:                                          ; preds = %for.body, %for.inc18, %land.lhs.true12, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 1, %for.inc18 ], [ 0, %land.lhs.true12 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @should_add_extension(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %extctx, i32 noundef %thisctx, i32 noundef %max_version) local_unnamed_addr #3 {
entry:
  %and = and i32 %thisctx, %extctx
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @extension_is_relevant(%struct.ssl_st* noundef %s, i32 noundef %extctx, i32 noundef %thisctx) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %and1 = and i32 %extctx, 32
  %cmp2.not = icmp eq i32 %and1, 0
  %and3 = and i32 %thisctx, 128
  %cmp4.not = icmp eq i32 %and3, 0
  %or.cond17 = or i1 %cmp2.not, %cmp4.not
  br i1 %or.cond17, label %if.end11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and6 = and i32 %2, 8
  %tobool7 = icmp ne i32 %and6, 0
  %cmp9 = icmp slt i32 %max_version, 772
  %or.cond = or i1 %cmp9, %tobool7
  br i1 %or.cond, label %return, label %if.end11

if.end11:                                         ; preds = %land.lhs.true5, %lor.lhs.false
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true5, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %land.lhs.true5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_extensions(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* noundef %x, i64 noundef %chainidx) local_unnamed_addr #0 {
entry:
  %min_version = alloca i32, align 4
  %max_version = alloca i32, align 4
  %0 = bitcast i32* %min_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %max_version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %max_version, align 4, !tbaa !28
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %and = and i32 %context, 384
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call1 = tail call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef %pkt, i32 noundef 2) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_extensions, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup45

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %and3 = and i32 %context, 128
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %min_version, i32* noundef nonnull %max_version, i32* noundef null) #10
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.then13, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_extensions, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef %call6, i8* noundef null) #10
  br label %cleanup45

if.then13:                                        ; preds = %if.then5
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 16
  call void @custom_ext_init(%struct.custom_ext_methods* noundef nonnull %custext) #10
  %.pre = load i32, i32* %max_version, align 4, !tbaa !28
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13
  %3 = phi i32 [ 0, %if.end ], [ %.pre, %if.then13 ]
  %call15 = call i32 @custom_ext_add(%struct.ssl_st* noundef %s, i32 noundef %context, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef %x, i64 noundef %chainidx, i32 noundef %3) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup45, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %and35 = and i32 %context, 24704
  %cmp36.not = icmp eq i32 %and35, 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.087 = phi i64 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %thisexd.085 = phi %struct.extensions_definition_st* [ getelementptr inbounds ([26 x %struct.extensions_definition_st], [26 x %struct.extensions_definition_st]* @ext_defs, i64 0, i64 0), %for.cond.preheader ], [ %incdec.ptr, %for.inc ]
  %context20 = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.085, i64 0, i32 1
  %4 = load i32, i32* %context20, align 4, !tbaa !50
  %5 = load i32, i32* %max_version, align 4, !tbaa !28
  %call21 = call i32 @should_add_extension(%struct.ssl_st* noundef %s, i32 noundef %4, i32 noundef %context, i32 noundef %5) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc, label %if.end24

if.end24:                                         ; preds = %for.body
  %6 = load i32, i32* %server, align 8, !tbaa !38
  %tobool25.not = icmp eq i32 %6, 0
  %construct_stoc = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.085, i64 0, i32 5
  %construct_ctos = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.085, i64 0, i32 6
  %cond.in = select i1 %tobool25.not, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)** %construct_ctos, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)** %construct_stoc
  %cond = load i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)** %cond.in, align 8, !tbaa !41
  %cmp26 = icmp eq i32 (%struct.ssl_st*, %struct.wpacket_st*, i32, %struct.x509_st*, i64)* %cond, null
  br i1 %cmp26, label %for.inc, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 %cond(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* noundef %x, i64 noundef %chainidx) #10
  switch i32 %call29, label %for.inc [
    i32 0, label %cleanup45
    i32 1, label %land.lhs.true34
  ]

land.lhs.true34:                                  ; preds = %if.end28
  br i1 %cmp36.not, label %for.inc, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 0, i64 %i.087
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %8 = or i8 %7, 2
  store i8 %8, i8* %arrayidx, align 1, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true34, %if.then37, %if.end28, %for.body, %if.end24
  %inc = add nuw nsw i64 %i.087, 1
  %incdec.ptr = getelementptr inbounds %struct.extensions_definition_st, %struct.extensions_definition_st* %thisexd.085, i64 1
  %exitcond.not = icmp eq i64 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !59

for.end:                                          ; preds = %for.inc
  %call41 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #10
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %cleanup45

if.then43:                                        ; preds = %for.end
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 855, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_extensions, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup45

cleanup45:                                        ; preds = %if.end28, %for.end, %if.end14, %if.then43, %if.then8, %if.then
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 0, %if.then43 ], [ 0, %if.then ], [ 0, %if.end14 ], [ 1, %for.end ], [ %call29, %if.end28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.2
}

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_set_flags(%struct.wpacket_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_get_min_max_version(%struct.ssl_st* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @custom_ext_add(%struct.ssl_st* noundef, i32 noundef, %struct.wpacket_st* noundef, %struct.x509_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_psk_do_binder(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %msgstart, i64 noundef %binderoffset, i8* noundef %binderin, i8* noundef %binderout, %struct.ssl_session_st* noundef %sess, i32 noundef %sign, i32 noundef %external) local_unnamed_addr #0 {
entry:
  %hash = alloca [64 x i8], align 16
  %binderkey = alloca [64 x i8], align 16
  %finishedkey = alloca [64 x i8], align 16
  %tmpbinder = alloca [64 x i8], align 16
  %bindersize = alloca i64, align 8
  %hdata = alloca i8*, align 8
  %hashprefix = alloca %struct.PACKET, align 8
  %msg = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %binderkey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #9
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %finishedkey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #9
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %tmpbinder, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #9
  %4 = bitcast i64* %bindersize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #10
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1460, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end:                                           ; preds = %entry
  %conv3254 = zext i32 %call to i64
  %tobool = icmp ne i32 %external, 0
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %5 = load i32, i32* %early_data_state, align 4, !tbaa !60
  %cmp4 = icmp eq i32 %5, 2
  br i1 %cmp4, label %land.lhs.true6, label %if.end15

land.lhs.true6:                                   ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 26, i32 5
  %7 = load i32, i32* %max_early_data, align 4, !tbaa !62
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %max_early_data11 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 26, i32 5
  %8 = load i32, i32* %max_early_data11, align 4, !tbaa !62
  %cmp12.not = icmp ne i32 %8, 0
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %if.end
  %. = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.external_label, i64 0, i64 0), %land.lhs.true9 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.external_label, i64 0, i64 0), %land.lhs.true6 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.external_label, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.resumption_label, i64 0, i64 0), %if.end ]
  %tobool22 = phi i1 [ %cmp12.not, %land.lhs.true9 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %if.end ]
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %9 = load i32, i32* %server, align 8, !tbaa !38
  %tobool19 = icmp eq i32 %9, 0
  %or.cond = and i1 %tobool, %tobool19
  %or.cond.not = xor i1 %or.cond, true
  %or.cond175 = or i1 %tobool22, %or.cond.not
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 29, i64 0
  %arraydecay27 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 2, i64 0
  %early_secret.0 = select i1 %or.cond175, i8* %arraydecay, i8* %arraydecay27
  %arraydecay29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 1
  %10 = load i64, i64* %master_key_length, align 8, !tbaa !65
  %call30 = tail call i32 @tls13_generate_secret(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef null, i8* noundef nonnull %arraydecay29, i64 noundef %10, i8* noundef nonnull %early_secret.0) #10
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup161, label %if.end33

if.end33:                                         ; preds = %if.end15
  %call34 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #10
  %cmp35 = icmp eq %struct.evp_md_ctx_st* %call34, null
  br i1 %cmp35, label %if.then46, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end33
  %call38 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call34, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #10
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then46, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %call43 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef nonnull %0, i32* noundef null) #10
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false41, %lor.lhs.false37, %if.end33
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1506, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end47:                                         ; preds = %lor.lhs.false41
  %call50 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %md, i8* noundef nonnull %early_secret.0, i8* noundef %., i64 noundef 10, i8* noundef nonnull %0, i64 noundef %conv3254, i8* noundef nonnull %1, i64 noundef %conv3254, i32 noundef 1) #10
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup161, label %if.end53

if.end53:                                         ; preds = %if.end47
  %call56 = call i32 @tls13_derive_finishedkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %md, i8* noundef nonnull %1, i8* noundef nonnull %2, i64 noundef %conv3254) #10
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup161, label %if.end59

if.end59:                                         ; preds = %if.end53
  %call60 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call34, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #10
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1524, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end64:                                         ; preds = %if.end59
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %11 = load i32, i32* %hello_retry_request, align 8, !tbaa !66
  %cmp65 = icmp eq i32 %11, 1
  br i1 %cmp65, label %if.then67, label %if.end105

if.then67:                                        ; preds = %if.end64
  %12 = bitcast i8** %hdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #9
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %13 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !67
  %call68 = call i64 @BIO_ctrl(%struct.bio_st* noundef %13, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %12) #10
  %cmp69 = icmp slt i64 %call68, 1
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then67
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1541, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 332, i8* noundef null) #10
  br label %cleanup100.thread

if.end72:                                         ; preds = %if.then67
  %14 = load i32, i32* %server, align 8, !tbaa !38
  %tobool74.not = icmp eq i32 %14, 0
  br i1 %tobool74.not, label %if.end94, label %if.then75

if.then75:                                        ; preds = %if.end72
  %15 = bitcast %struct.PACKET* %hashprefix to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #9
  %16 = bitcast %struct.PACKET* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #9
  %17 = load i8*, i8** %hdata, align 8, !tbaa !41
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %hashprefix, i8* noundef %17, i64 noundef %call68) #11
  %call79 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %hashprefix) #11
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cleanup, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then75
  %call82 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef nonnull %hashprefix, %struct.PACKET* noundef nonnull %msg) #11
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %call85 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %hashprefix) #11
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %call88 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef nonnull %hashprefix, %struct.PACKET* noundef nonnull %msg) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false87
  %call92 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %hashprefix) #11
  %sub = sub i64 %call68, %call92
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9
  br label %if.end94

cleanup:                                          ; preds = %if.then75, %lor.lhs.false81, %lor.lhs.false84, %lor.lhs.false87
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1558, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9
  br label %cleanup100.thread

if.end94:                                         ; preds = %cleanup.thread, %if.end72
  %hdatalen.1 = phi i64 [ %call68, %if.end72 ], [ %sub, %cleanup.thread ]
  %18 = load i8*, i8** %hdata, align 8, !tbaa !41
  %call95 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef %18, i64 noundef %hdatalen.1) #10
  %cmp96 = icmp slt i32 %call95, 1
  br i1 %cmp96, label %if.then98, label %cleanup100

if.then98:                                        ; preds = %if.end94
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1565, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup100.thread

cleanup100.thread:                                ; preds = %if.then71, %if.then98, %cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #9
  br label %cleanup161

cleanup100:                                       ; preds = %if.end94
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #9
  br label %if.end105

if.end105:                                        ; preds = %cleanup100, %if.end64
  %call106 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef %msgstart, i64 noundef %binderoffset) #10
  %cmp107 = icmp slt i32 %call106, 1
  br i1 %cmp107, label %if.then114, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end105
  %call111 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef nonnull %0, i32* noundef null) #10
  %cmp112 = icmp slt i32 %call111, 1
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %lor.lhs.false109, %if.end105
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1572, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end115:                                        ; preds = %lor.lhs.false109
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !68
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 0
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !69
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 85
  %21 = load i8*, i8** %propq, align 8, !tbaa !74
  %call118 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %21, i8* noundef nonnull %2, i64 noundef %conv3254) #10
  %cmp119 = icmp eq %struct.evp_pkey_st* %call118, null
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end115
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1580, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end122:                                        ; preds = %if.end115
  %tobool123.not = icmp eq i32 %sign, 0
  %spec.select248 = select i1 %tobool123.not, i8* %3, i8* %binderout
  store i64 %conv3254, i64* %bindersize, align 8, !tbaa !42
  %call127 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #10
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !68
  %libctx129 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %22, i64 0, i32 0
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx129, align 8, !tbaa !69
  %propq131 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %22, i64 0, i32 85
  %24 = load i8*, i8** %propq131, align 8, !tbaa !74
  %call132 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call34, %struct.evp_pkey_ctx_st** noundef null, i8* noundef %call127, %struct.ossl_lib_ctx_st* noundef %23, i8* noundef %24, %struct.evp_pkey_st* noundef nonnull %call118, %struct.ossl_param_st* noundef null) #10
  %cmp133 = icmp slt i32 %call132, 1
  br i1 %cmp133, label %if.then147, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.end122
  %call137 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef nonnull %0, i64 noundef %conv3254) #10
  %cmp138 = icmp slt i32 %call137, 1
  br i1 %cmp138, label %if.then147, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false135
  %call141 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %call34, i8* noundef %spec.select248, i64* noundef nonnull %bindersize) #10
  %cmp142 = icmp sgt i32 %call141, 0
  %25 = load i64, i64* %bindersize, align 8
  %cmp145.not = icmp eq i64 %25, %conv3254
  %or.cond249 = select i1 %cmp142, i1 %cmp145.not, i1 false
  br i1 %or.cond249, label %if.end148, label %if.then147

if.then147:                                       ; preds = %lor.lhs.false140, %lor.lhs.false135, %if.end122
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1593, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup161

if.end148:                                        ; preds = %lor.lhs.false140
  br i1 %tobool123.not, label %if.else151, label %cleanup161

if.else151:                                       ; preds = %if.end148
  %call152 = call i32 @CRYPTO_memcmp(i8* noundef %binderin, i8* noundef %spec.select248, i64 noundef %conv3254) #10
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %cleanup161, label %if.then156

if.then156:                                       ; preds = %if.else151
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1603, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_psk_do_binder, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 253, i8* noundef null) #10
  br label %cleanup161

cleanup161:                                       ; preds = %if.then, %if.then46, %if.then63, %if.then114, %if.then121, %if.then147, %if.end15, %if.end47, %if.end53, %if.else151, %if.then156, %if.end148, %cleanup100.thread
  %mctx.0 = phi %struct.evp_md_ctx_st* [ %call34, %if.then46 ], [ %call34, %if.then63 ], [ %call34, %if.then114 ], [ %call34, %if.then121 ], [ %call34, %if.then147 ], [ %call34, %if.else151 ], [ %call34, %if.then156 ], [ %call34, %if.end53 ], [ %call34, %if.end47 ], [ null, %if.end15 ], [ null, %if.then ], [ %call34, %if.end148 ], [ %call34, %cleanup100.thread ]
  %mackey.0 = phi %struct.evp_pkey_st* [ null, %if.then46 ], [ null, %if.then63 ], [ null, %if.then114 ], [ null, %if.then121 ], [ %call118, %if.then147 ], [ %call118, %if.else151 ], [ %call118, %if.then156 ], [ null, %if.end53 ], [ null, %if.end47 ], [ null, %if.end15 ], [ null, %if.then ], [ %call118, %if.end148 ], [ null, %cleanup100.thread ]
  %ret.0 = phi i32 [ -1, %if.then46 ], [ -1, %if.then63 ], [ -1, %if.then114 ], [ -1, %if.then121 ], [ -1, %if.then147 ], [ 1, %if.else151 ], [ 0, %if.then156 ], [ -1, %if.end53 ], [ -1, %if.end47 ], [ -1, %if.end15 ], [ -1, %if.then ], [ 1, %if.end148 ], [ -1, %cleanup100.thread ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #10
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 64) #10
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %mackey.0) #10
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @tls13_generate_secret(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @tls13_hkdf_expand(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls13_derive_finishedkey(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !52
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #6 {
entry:
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !40
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %tmp, i64* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %length, align 8, !tbaa !42
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %4) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  %5 = load i8*, i8** %data, align 8, !tbaa !41
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !52
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %4, i64* %remaining, align 8, !tbaa !43
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @tls_parse_ctos_renegotiate(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_renegotiate(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_renegotiate(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_renegotiate(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_renegotiate(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %1 = load i64, i64* %options, align 8, !tbaa !75
  %and = and i64 %1, 4
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.then
  %and3 = and i64 %1, 262144
  %tobool4 = icmp ne i64 %and3, 0
  %tobool6 = icmp ne i32 %sent, 0
  %or.cond = or i1 %tobool6, %tobool4
  br i1 %or.cond, label %return, label %return.sink.split

if.end8:                                          ; preds = %entry
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %2 = load i32, i32* %renegotiate, align 8, !tbaa !76
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %return, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %options11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %3 = load i64, i64* %options11, align 8, !tbaa !75
  %and12 = and i64 %3, 262144
  %tobool13 = icmp ne i64 %and12, 0
  %tobool15 = icmp ne i32 %sent, 0
  %or.cond18 = or i1 %tobool15, %tobool13
  br i1 %or.cond18, label %return, label %return.sink.split

return.sink.split:                                ; preds = %land.lhs.true10, %land.lhs.true
  %.sink = phi i32 [ 880, %land.lhs.true ], [ 892, %land.lhs.true10 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_renegotiate, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 338, i8* noundef null) #10
  br label %return

return:                                           ; preds = %return.sink.split, %if.end8, %land.lhs.true10, %if.then, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ 1, %if.then ], [ 1, %land.lhs.true10 ], [ 1, %if.end8 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_server_name(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %servername_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  store i32 0, i32* %servername_done, align 8, !tbaa !77
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %1 = load i8*, i8** %hostname, align 8, !tbaa !78
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 905) #10
  store i8* null, i8** %hostname, align 8, !tbaa !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i32 @tls_parse_ctos_server_name(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_server_name(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_server_name(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_server_name(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_server_name(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %altmp = alloca i32, align 4
  %0 = bitcast i32* %altmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 112, i32* %altmp, align 4, !tbaa !28
  %call = tail call i64 @SSL_get_options(%struct.ssl_st* noundef %s) #10
  %and = and i64 %call, 16384
  %cmp = icmp eq i64 %and, 0
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !68
  %cmp1.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp1.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !79
  %cmp5.not = icmp eq %struct.ssl_ctx_st* %2, null
  br i1 %cmp5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 919, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_server_name, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup138

if.end:                                           ; preds = %lor.lhs.false
  %servername_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 0
  %3 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %servername_cb, align 8, !tbaa !80
  %cmp10.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %3, null
  br i1 %cmp10.not, label %if.else, label %if.end33.sink.split

if.else:                                          ; preds = %if.end
  %servername_cb21 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 60, i32 0
  %4 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %servername_cb21, align 8, !tbaa !80
  %cmp22.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %4, null
  br i1 %cmp22.not, label %if.end33, label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.else, %if.end
  %.sink = phi %struct.ssl_ctx_st* [ %1, %if.end ], [ %2, %if.else ]
  %.sink201 = phi i32 (%struct.ssl_st*, i32*, i8*)* [ %3, %if.end ], [ %4, %if.else ]
  %servername_arg30 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %.sink, i64 0, i32 60, i32 1
  %5 = load i8*, i8** %servername_arg30, align 8, !tbaa !81
  %call31 = call i32 %.sink201(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %altmp, i8* noundef %5) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else
  %ret.0 = phi i32 [ 3, %if.else ], [ %call31, %if.end33.sink.split ]
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %6 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end61, label %if.then34

if.then34:                                        ; preds = %if.end33
  %tobool35 = icmp ne i32 %sent, 0
  %cmp36 = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %tobool35, i1 %cmp36, i1 false
  br i1 %or.cond, label %land.lhs.true38, label %if.end61

land.lhs.true38:                                  ; preds = %if.then34
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %7 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool39.not = icmp eq i32 %7, 0
  br i1 %tobool39.not, label %if.then40, label %if.end61

if.then40:                                        ; preds = %land.lhs.true38
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %8 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 26, i32 0
  %9 = load i8*, i8** %hostname, align 8, !tbaa !82
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 941) #10
  %hostname43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %10 = load i8*, i8** %hostname43, align 8, !tbaa !78
  %call44 = call i8* @CRYPTO_strdup(i8* noundef %10, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 942) #10
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %hostname47 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %11, i64 0, i32 26, i32 0
  store i8* %call44, i8** %hostname47, align 8, !tbaa !82
  %cmp51 = icmp eq i8* %call44, null
  br i1 %cmp51, label %land.lhs.true53, label %if.end61

land.lhs.true53:                                  ; preds = %if.then40
  %12 = load i8*, i8** %hostname43, align 8, !tbaa !78
  %cmp56.not = icmp eq i8* %12, null
  br i1 %cmp56.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %land.lhs.true53
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 944, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_server_name, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then34, %land.lhs.true38, %if.then58, %land.lhs.true53, %if.then40, %if.end33
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %13 = load i64, i64* %finish_md_len, align 8, !tbaa !83
  %cmp62 = icmp eq i64 %13, 0
  br i1 %cmp62, label %land.lhs.true69, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end61
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %14 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !84
  %cmp67 = icmp eq i64 %14, 0
  br i1 %cmp67, label %land.lhs.true69, label %if.end84

land.lhs.true69:                                  ; preds = %lor.lhs.false64, %if.end61
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !68
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !79
  %cmp72.not = icmp eq %struct.ssl_ctx_st* %15, %16
  br i1 %cmp72.not, label %if.end84, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %17 = load i32, i32* %hello_retry_request, align 8, !tbaa !66
  %cmp75 = icmp eq i32 %17, 0
  br i1 %cmp75, label %if.then77, label %if.end84

if.then77:                                        ; preds = %land.lhs.true74
  %sess_accept = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 15, i32 3
  %18 = atomicrmw add i32* %sess_accept, i32 1 monotonic, align 4
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !79
  %sess_accept81 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 15, i32 3
  %20 = atomicrmw add i32* %sess_accept81, i32 -1 monotonic, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %land.lhs.true74, %land.lhs.true69, %lor.lhs.false64
  switch i32 %ret.0, label %cleanup138 [
    i32 0, label %land.lhs.true87
    i32 2, label %sw.bb
    i32 1, label %sw.bb121
    i32 3, label %sw.bb136
  ]

land.lhs.true87:                                  ; preds = %if.end84
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %21 = load i32, i32* %ticket_expected, align 8, !tbaa !85
  %tobool89 = icmp ne i32 %21, 0
  %or.cond141 = select i1 %tobool89, i1 %cmp, i1 false
  br i1 %or.cond141, label %land.lhs.true92, label %cleanup138

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %call93 = call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #10
  %and94 = and i64 %call93, 16384
  %cmp95.not = icmp eq i64 %and94, 0
  br i1 %cmp95.not, label %cleanup138, label %if.then97

if.then97:                                        ; preds = %land.lhs.true92
  store i32 0, i32* %ticket_expected, align 8, !tbaa !85
  %hit100 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %22 = load i32, i32* %hit100, align 8, !tbaa !39
  %tobool101.not = icmp eq i32 %22, 0
  br i1 %tobool101.not, label %if.then102, label %cleanup138

if.then102:                                       ; preds = %if.then97
  %call103 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef nonnull %s) #10
  %cmp104.not = icmp eq %struct.ssl_session_st* %call103, null
  br i1 %cmp104.not, label %if.else117, label %if.then106

if.then106:                                       ; preds = %if.then102
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call103, i64 0, i32 26, i32 1
  %23 = load i8*, i8** %tick, align 8, !tbaa !86
  call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 973) #10
  store i8* null, i8** %tick, align 8, !tbaa !86
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call103, i64 0, i32 26, i32 2
  %24 = bitcast i64* %ticklen to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !42
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call103, i64 0, i32 26, i32 4
  store i32 0, i32* %tick_age_add, align 8, !tbaa !87
  %call113 = call i32 @ssl_generate_session_id(%struct.ssl_st* noundef nonnull %s, %struct.ssl_session_st* noundef nonnull %call103) #10
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %cleanup138

if.then115:                                       ; preds = %if.then106
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 979, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_server_name, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup138

if.else117:                                       ; preds = %if.then102
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 983, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_server_name, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup138

sw.bb:                                            ; preds = %if.end84
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 991, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.final_server_name, i64 0, i64 0)) #10
  %25 = load i32, i32* %altmp, align 4, !tbaa !28
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %25, i32 noundef 234, i8* noundef null) #10
  br label %cleanup138

sw.bb121:                                         ; preds = %if.end84
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %26 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 25
  %27 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %27, i64 0, i32 12
  %28 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and122 = and i32 %28, 8
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %land.lhs.true124, label %if.then133

land.lhs.true124:                                 ; preds = %sw.bb121
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 0
  %29 = load i32, i32* %version, align 8, !tbaa !36
  %cmp126 = icmp slt i32 %29, 772
  %cmp131.not = icmp eq i32 %29, 65536
  %or.cond200 = or i1 %cmp126, %cmp131.not
  br i1 %or.cond200, label %if.then133, label %if.end135

if.then133:                                       ; preds = %land.lhs.true124, %sw.bb121
  %30 = load i32, i32* %altmp, align 4, !tbaa !28
  %call134 = call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i32 noundef %30) #10
  br label %if.end135

if.end135:                                        ; preds = %land.lhs.true124, %if.then133
  %servername_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  store i32 0, i32* %servername_done, align 8, !tbaa !77
  br label %cleanup138

sw.bb136:                                         ; preds = %if.end84
  %servername_done137 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 90
  store i32 0, i32* %servername_done137, align 8, !tbaa !77
  br label %cleanup138

cleanup138:                                       ; preds = %land.lhs.true87, %land.lhs.true92, %if.then97, %if.then106, %if.end84, %if.then115, %if.else117, %sw.bb136, %if.end135, %sw.bb, %if.then
  %retval.1 = phi i32 [ 1, %sw.bb136 ], [ 1, %if.end135 ], [ 0, %sw.bb ], [ 0, %if.then ], [ 0, %if.else117 ], [ 0, %if.then115 ], [ 1, %if.end84 ], [ 1, %if.then106 ], [ 1, %if.then97 ], [ 1, %land.lhs.true92 ], [ 1, %land.lhs.true87 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.1
}

declare i32 @tls_parse_ctos_maxfragmentlen(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_maxfragmentlen(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_maxfragmentlen(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_maxfragmentlen(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_maxfragmentlen(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 26, i32 8
  %3 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !88
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %cmp9 = icmp ugt i8 %3, 4
  %tobool12 = icmp ne i32 %sent, 0
  %or.cond = or i1 %tobool12, %cmp9
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1666, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.final_maxfragmentlen, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 109, i32 noundef 110, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %session13 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session13, align 8, !tbaa !61
  %tobool14.not = icmp eq %struct.ssl_session_st* %4, null
  br i1 %tobool14.not, label %if.end41, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end
  %max_fragment_len_mode18 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 26, i32 8
  %5 = load i8, i8* %max_fragment_len_mode18, align 8, !tbaa !88
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 4
  br i1 %7, label %land.lhs.true29, label %if.end41

land.lhs.true29:                                  ; preds = %land.lhs.true15
  %conv19 = zext i8 %5 to i32
  %max_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 86
  %8 = load i64, i64* %max_send_fragment, align 8, !tbaa !89
  %sub = add nsw i32 %conv19, -1
  %shl = shl nuw nsw i32 512, %sub
  %conv34 = zext i32 %shl to i64
  %cmp35 = icmp ult i64 %8, %conv34
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %land.lhs.true29
  %call = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef nonnull %s) #10
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %return, label %if.end41

if.end41:                                         ; preds = %if.then37, %land.lhs.true29, %land.lhs.true15, %if.end
  br label %return

return:                                           ; preds = %if.then37, %if.end41, %if.then
  %retval.0 = phi i32 [ 1, %if.end41 ], [ 0, %if.then ], [ 0, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_srp(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %0 = load i8*, i8** %login, align 8, !tbaa !90
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1140) #10
  store i8* null, i8** %login, align 8, !tbaa !90
  ret i32 1
}

declare i32 @tls_parse_ctos_srp(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_srp(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_ec_point_formats(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %0 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !91
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1149) #10
  store i8* null, i8** %peer_ecpointformats, align 8, !tbaa !91
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  store i64 0, i64* %peer_ecpointformats_len, align 8, !tbaa !92
  ret i32 1
}

declare i32 @tls_parse_ctos_ec_pt_formats(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_ec_pt_formats(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_ec_pt_formats(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_ec_pt_formats(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_ec_pt_formats(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup41

if.end:                                           ; preds = %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !93
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 4
  %2 = load i32, i32* %algorithm_mkey, align 4, !tbaa !94
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !96
  %ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 12
  %4 = load i8*, i8** %ecpointformats, align 8, !tbaa !97
  %cmp.not = icmp eq i8* %4, null
  br i1 %cmp.not, label %cleanup41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 11
  %5 = load i64, i64* %ecpointformats_len, align 8, !tbaa !98
  %cmp7.not = icmp eq i64 %5, 0
  br i1 %cmp7.not, label %cleanup41, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %6 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !91
  %cmp11.not = icmp eq i8* %6, null
  br i1 %cmp11.not, label %cleanup41, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  %7 = load i64, i64* %peer_ecpointformats_len, align 8, !tbaa !92
  %cmp15.not = icmp eq i64 %7, 0
  br i1 %cmp15.not, label %cleanup41, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %8 = and i32 %2, 4
  %tobool18.not = icmp eq i32 %8, 0
  %9 = and i32 %3, 8
  %tobool20.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool18.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %cleanup41, label %for.body

for.body:                                         ; preds = %land.lhs.true17, %for.inc
  %list.061 = phi i8* [ %incdec.ptr, %for.inc ], [ %6, %land.lhs.true17 ]
  %i.060 = phi i64 [ %inc, %for.inc ], [ 0, %land.lhs.true17 ]
  %10 = load i8, i8* %list.061, align 1, !tbaa !44
  %cmp29 = icmp eq i8 %10, 0
  br i1 %cmp29, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8, i8* %list.061, i64 1
  %inc = add nuw i64 %i.060, 1
  %exitcond.not = icmp eq i64 %inc, %7
  br i1 %exitcond.not, label %if.then37, label %for.body, !llvm.loop !99

for.end:                                          ; preds = %for.body
  %cmp35 = icmp eq i64 %i.060, %7
  br i1 %cmp35, label %if.then37, label %cleanup41

if.then37:                                        ; preds = %for.inc, %for.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1040, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.final_ec_pt_formats, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 157, i8* noundef null) #10
  br label %cleanup41

cleanup41:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true9, %land.lhs.true13, %land.lhs.true17, %for.end, %if.then37, %entry
  %retval.1 = phi i32 [ 0, %if.then37 ], [ 1, %entry ], [ 1, %for.end ], [ 1, %land.lhs.true17 ], [ 1, %land.lhs.true13 ], [ 1, %land.lhs.true9 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.1
}

declare i32 @tls_parse_ctos_supported_groups(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_supported_groups(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_supported_groups(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @init_session_ticket(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #5 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 0, i32* %ticket_expected, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i32 @tls_parse_ctos_session_ticket(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_session_ticket(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_session_ticket(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_session_ticket(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_status_request(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  store i32 -1, i32* %status_type, align 8, !tbaa !100
  br label %if.end

if.else:                                          ; preds = %entry
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %1 = load i8*, i8** %resp, align 8, !tbaa !101
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1066) #10
  store i8* null, i8** %resp, align 8, !tbaa !101
  %resp_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  store i64 0, i64* %resp_len, align 8, !tbaa !102
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

declare i32 @tls_parse_ctos_status_request(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_status_request(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_status_request(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_status_request(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @init_npn(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %context) #7 {
entry:
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  store i32 0, i32* %npn_seen, align 4, !tbaa !103
  ret i32 1
}

declare i32 @tls_parse_ctos_npn(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_npn(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_next_proto_neg(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_npn(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_alpn(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %0 = load i8*, i8** %alpn_selected, align 8, !tbaa !104
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1086) #10
  store i8* null, i8** %alpn_selected, align 8, !tbaa !104
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  store i64 0, i64* %alpn_selected_len, align 8, !tbaa !105
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %1 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %alpn_proposed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 29
  %2 = load i8*, i8** %alpn_proposed, align 8, !tbaa !106
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1090) #10
  store i8* null, i8** %alpn_proposed, align 8, !tbaa !106
  %alpn_proposed_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 30
  store i64 0, i64* %alpn_proposed_len, align 8, !tbaa !107
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i32 @tls_parse_ctos_alpn(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_alpn(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_alpn(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_alpn(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_alpn(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %1 = or i32 %0, %sent
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 26, i32 6
  %3 = load i8*, i8** %alpn_selected, align 8, !tbaa !108
  %cmp.not = icmp eq i8* %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %entry
  %tobool5.not = icmp eq i32 %0, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and = and i32 %6, 8
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %return

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !36
  %cmp9 = icmp slt i32 %7, 772
  %cmp13.not = icmp eq i32 %7, 65536
  %or.cond = or i1 %cmp9, %cmp13.not
  br i1 %or.cond, label %return, label %if.end15

if.end15:                                         ; preds = %land.lhs.true7
  %call = tail call i32 @tls_handle_alpn(%struct.ssl_st* noundef nonnull %s) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %land.lhs.true7, %if.end15
  %retval.0 = phi i32 [ %call, %if.end15 ], [ 1, %land.lhs.true7 ], [ 1, %lor.lhs.false ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @init_srtp(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #5 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %srtp_profile = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 97
  store %struct.srtp_protection_profile_st* null, %struct.srtp_protection_profile_st** %srtp_profile, align 8, !tbaa !110
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i32 @tls_parse_ctos_use_srtp(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_use_srtp(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_use_srtp(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_use_srtp(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @init_etm(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %context) #7 {
entry:
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  store i32 0, i32* %use_etm, align 4, !tbaa !111
  ret i32 1
}

declare i32 @tls_parse_ctos_etm(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_etm(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_etm(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_etm(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_sct(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_sct(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @init_ems(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #5 {
entry:
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !112
  %and = and i64 %0, 512
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i64 %0, -4609
  %or = or i64 %and3, 4096
  store i64 %or, i64* %flags, align 8, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i32 @tls_parse_ctos_ems(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_ems(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_ems(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_ems(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_ems(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !112
  %1 = and i64 %0, 4608
  %.not = icmp eq i64 %1, 4096
  br i1 %.not, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !38
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %return

land.lhs.true6:                                   ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %3 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %return, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %4 = trunc i64 %0 to i32
  %5 = lshr i32 %4, 9
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !61
  %flags13 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 30
  %7 = load i32, i32* %flags13, align 8, !tbaa !113
  %8 = xor i32 %7, %5
  %9 = and i32 %8, 1
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.then8, %entry
  %.sink = phi i32 [ 1181, %entry ], [ 1191, %if.then8 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.final_ems, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 104, i8* noundef null) #10
  br label %return

return:                                           ; preds = %return.sink.split, %if.end, %land.lhs.true6, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %land.lhs.true6 ], [ 1, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_sig_algs_cert(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %0 = bitcast i16** %peer_cert_sigalgs to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !114
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1130) #10
  store i16* null, i16** %peer_cert_sigalgs, align 8, !tbaa !114
  %peer_cert_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 31
  store i64 0, i64* %peer_cert_sigalgslen, align 8, !tbaa !115
  ret i32 1
}

declare i32 @tls_parse_ctos_sig_algs_cert(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @init_post_handshake_auth(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %context) #7 {
entry:
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  store i32 0, i32* %post_handshake_auth, align 8, !tbaa !116
  ret i32 1
}

declare i32 @tls_parse_ctos_post_handshake_auth(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_post_handshake_auth(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_sig_algs(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %0 = bitcast i16** %peer_sigalgs to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !117
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1120) #10
  store i16* null, i16** %peer_sigalgs, align 8, !tbaa !117
  %peer_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 30
  store i64 0, i64* %peer_sigalgslen, align 8, !tbaa !118
  ret i32 1
}

declare i32 @tls_parse_ctos_sig_algs(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_sig_algs(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_sig_algs(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %tobool.not = icmp eq i32 %sent, 0
  br i1 %tobool.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and = and i32 %2, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !36
  %cmp = icmp slt i32 %3, 772
  %cmp7.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %return, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true2
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true8
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1262, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.final_sig_algs, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 109, i32 noundef 112, i8* noundef null) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true2, %land.lhs.true8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true8 ], [ 1, %land.lhs.true2 ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @tls_parse_stoc_supported_versions(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_supported_versions(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_supported_versions(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @init_psk_kex_modes(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %context) #7 {
entry:
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  store i32 0, i32* %psk_kex_mode, align 8, !tbaa !119
  ret i32 1
}

declare i32 @tls_parse_ctos_psk_kex_modes(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_psk_kex_modes(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_ctos_key_share(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_key_share(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_key_share(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_key_share(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_key_share(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %pgroups = alloca i16*, align 8
  %clntgroups = alloca i16*, align 8
  %num_groups = alloca i64, align 8
  %clnt_num_groups = alloca i64, align 8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !34
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !36
  %cmp = icmp sgt i32 %3, 771
  %cmp5.not = icmp ne i32 %3, 65536
  %or.cond.not = and i1 %cmp, %cmp5.not
  %and6 = and i32 %context, 2048
  %cmp7.not = icmp eq i32 %and6, 0
  %or.cond162 = and i1 %cmp7.not, %or.cond.not
  br i1 %or.cond162, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %4 = load i32, i32* %server, align 8, !tbaa !38
  %tobool12 = icmp ne i32 %sent, 0
  %5 = or i32 %4, %sent
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %land.lhs.true13, label %if.end18

land.lhs.true13:                                  ; preds = %if.end9
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %6 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %psk_kex_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %7 = load i32, i32* %psk_kex_mode, align 8, !tbaa !119
  %and15 = and i32 %7, 1
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true13
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1295, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.final_key_share, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 109, i32 noundef 101, i8* noundef null) #10
  br label %return

if.end18:                                         ; preds = %lor.lhs.false, %if.end9
  %tobool20.not = icmp eq i32 %4, 0
  br i1 %tobool20.not, label %if.else111, label %if.then21

if.then21:                                        ; preds = %if.end18
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !120
  %cmp22.not = icmp eq %struct.evp_pkey_st* %8, null
  br i1 %cmp22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  %flags = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %9 = load i64, i64* %flags, align 8, !tbaa !112
  %and25 = and i64 %9, 2048
  %cmp26.not = icmp eq i64 %and25, 0
  br i1 %cmp26.not, label %if.end104, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.then23
  %cookieok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 34
  %10 = load i32, i32* %cookieok, align 8, !tbaa !121
  %tobool29.not = icmp eq i32 %10, 0
  br i1 %tobool29.not, label %if.then30, label %if.end104

if.then30:                                        ; preds = %land.lhs.true27
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %11 = load i32, i32* %hello_retry_request, align 8, !tbaa !66
  %cmp31 = icmp eq i32 %11, 0
  br i1 %cmp31, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then30
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.final_key_share, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %return

if.end35:                                         ; preds = %if.then30
  store i32 1, i32* %hello_retry_request, align 8, !tbaa !66
  br label %return

if.else:                                          ; preds = %if.then21
  %hello_retry_request38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %12 = load i32, i32* %hello_retry_request38, align 8, !tbaa !66
  %cmp39 = icmp eq i32 %12, 0
  %or.cond119 = and i1 %tobool12, %cmp39
  br i1 %or.cond119, label %land.lhs.true43, label %if.end73

land.lhs.true43:                                  ; preds = %if.else
  %hit44 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %13 = load i32, i32* %hit44, align 8, !tbaa !39
  %tobool45.not = icmp eq i32 %13, 0
  br i1 %tobool45.not, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true43
  %psk_kex_mode48 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %14 = load i32, i32* %psk_kex_mode48, align 8, !tbaa !119
  %and49 = and i32 %14, 2
  %cmp50.not = icmp eq i32 %and49, 0
  br i1 %cmp50.not, label %if.end73, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false46, %land.lhs.true43
  %15 = bitcast i16** %pgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #9
  %16 = bitcast i16** %clntgroups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9
  %17 = bitcast i64* %num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #9
  %18 = bitcast i64* %clnt_num_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9
  call fastcc void @tls1_get_peer_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %clntgroups, i64* noundef nonnull %clnt_num_groups) #11
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %pgroups, i64* noundef nonnull %num_groups) #10
  %19 = load i64, i64* %num_groups, align 8, !tbaa !42
  %cmp53164.not = icmp eq i64 %19, 0
  br i1 %cmp53164.not, label %cleanup.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then52
  %20 = load i16*, i16** %clntgroups, align 8, !tbaa !41
  %21 = load i64, i64* %clnt_num_groups, align 8, !tbaa !42
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0165 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %22 = load i16*, i16** %pgroups, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %i.0165
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !122
  %call = call i32 @check_in_list(%struct.ssl_st* noundef %s, i16 noundef zeroext %23, i16* noundef %20, i64 noundef %21, i32 noundef 1) #10
  %tobool57.not = icmp eq i32 %call, 0
  br i1 %tobool57.not, label %for.inc, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  %.pre.pre = load i64, i64* %num_groups, align 8, !tbaa !42
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.0165, 1
  %24 = load i64, i64* %num_groups, align 8, !tbaa !42
  %cmp53 = icmp ult i64 %inc, %24
  br i1 %cmp53, label %for.body, label %for.end, !llvm.loop !123

for.end:                                          ; preds = %for.inc, %for.body.for.end.loopexit_crit_edge
  %25 = phi i64 [ %.pre.pre, %for.body.for.end.loopexit_crit_edge ], [ %24, %for.inc ]
  %i.0.lcssa = phi i64 [ %i.0165, %for.body.for.end.loopexit_crit_edge ], [ %inc, %for.inc ]
  %cmp60 = icmp ult i64 %i.0.lcssa, %25
  br i1 %cmp60, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then52, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  br label %if.end73

cleanup:                                          ; preds = %for.end
  %group_id65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  store i16 %23, i16* %group_id65, align 2, !tbaa !124
  store i32 1, i32* %hello_retry_request38, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #9
  br label %return

if.end73:                                         ; preds = %cleanup.thread, %lor.lhs.false46, %if.else
  %hit74 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %26 = load i32, i32* %hit74, align 8, !tbaa !39
  %tobool75.not = icmp eq i32 %26, 0
  br i1 %tobool75.not, label %if.then82, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end73
  %psk_kex_mode78 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 28
  %27 = load i32, i32* %psk_kex_mode78, align 8, !tbaa !119
  %and79 = and i32 %27, 1
  %cmp80 = icmp eq i32 %and79, 0
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %lor.lhs.false76, %if.end73
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1388, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.final_key_share, i64 0, i64 0)) #10
  %cond = select i1 %tobool12, i32 40, i32 109
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %cond, i32 noundef 101, i8* noundef null) #10
  br label %return

if.end84:                                         ; preds = %lor.lhs.false76
  %flags86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %28 = load i64, i64* %flags86, align 8, !tbaa !112
  %and87 = and i64 %28, 2048
  %cmp88.not = icmp eq i64 %and87, 0
  br i1 %cmp88.not, label %if.end104, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end84
  %cookieok92 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 34
  %29 = load i32, i32* %cookieok92, align 8, !tbaa !121
  %tobool93.not = icmp eq i32 %29, 0
  br i1 %tobool93.not, label %if.then94, label %if.end104

if.then94:                                        ; preds = %land.lhs.true90
  %30 = load i32, i32* %hello_retry_request38, align 8, !tbaa !66
  %cmp96 = icmp eq i32 %30, 0
  br i1 %cmp96, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then94
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1400, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.final_key_share, i64 0, i64 0)) #10
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %return

if.end101:                                        ; preds = %if.then94
  store i32 1, i32* %hello_retry_request38, align 8, !tbaa !66
  br label %return

if.end104:                                        ; preds = %if.end84, %land.lhs.true90, %if.then23, %land.lhs.true27
  %hello_retry_request105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %31 = load i32, i32* %hello_retry_request105, align 8, !tbaa !66
  %cmp106 = icmp eq i32 %31, 1
  br i1 %cmp106, label %if.then108, label %return

if.then108:                                       ; preds = %if.end104
  store i32 2, i32* %hello_retry_request105, align 8, !tbaa !66
  br label %return

if.else111:                                       ; preds = %if.end18
  br i1 %tobool12, label %return, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %if.else111
  %call114 = tail call i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i64 noundef 0) #10
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then116, label %return

if.then116:                                       ; preds = %land.lhs.true113
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1421, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.final_key_share, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %return

return:                                           ; preds = %cleanup, %if.then108, %if.end104, %land.lhs.true113, %if.else111, %entry, %land.lhs.true, %if.then116, %if.end101, %if.then100, %if.then82, %if.end35, %if.then34, %if.then17
  %retval.1 = phi i32 [ 1, %if.end35 ], [ 0, %if.then34 ], [ 1, %cleanup ], [ 0, %if.then82 ], [ 1, %if.end101 ], [ 0, %if.then100 ], [ 0, %if.then116 ], [ 0, %if.then17 ], [ 1, %land.lhs.true ], [ 1, %entry ], [ 1, %if.else111 ], [ 1, %land.lhs.true113 ], [ 1, %if.end104 ], [ 1, %if.then108 ]
  ret i32 %retval.1
}

declare i32 @tls_parse_ctos_cookie(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_cookie(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_cookie(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_cookie(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_cryptopro_bug(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_ctos_early_data(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_early_data(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_early_data(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_early_data(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_early_data(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %tobool.not = icmp eq i32 %sent, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %cmp = icmp eq i32 %context, 1024
  br i1 %cmp, label %land.lhs.true4, label %return

land.lhs.true4:                                   ; preds = %if.then2
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  %1 = load i32, i32* %early_data_ok, align 4, !tbaa !109
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.then6, label %return

if.then6:                                         ; preds = %land.lhs.true4
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1629, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.final_early_data, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 233, i8* noundef null) #10
  br label %return

if.end8:                                          ; preds = %if.end
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %2 = load i32, i32* %max_early_data, align 8, !tbaa !125
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %3 = load i32, i32* %hit, align 8, !tbaa !39
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then24, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %4 = load i32, i32* %early_data_state, align 4, !tbaa !60
  %cmp12.not = icmp eq i32 %4, 9
  br i1 %cmp12.not, label %lor.lhs.false13, label %if.then24

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %early_data_ok15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  %5 = load i32, i32* %early_data_ok15, align 4, !tbaa !109
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.then24, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %6 = load i32, i32* %hello_retry_request, align 8, !tbaa !66
  %cmp18.not = icmp eq i32 %6, 0
  br i1 %cmp18.not, label %lor.lhs.false19, label %if.then24

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %allow_early_data_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 124
  %7 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %allow_early_data_cb, align 8, !tbaa !126
  %cmp20.not = icmp eq i32 (%struct.ssl_st*, i8*)* %7, null
  br i1 %cmp20.not, label %if.else, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %lor.lhs.false19
  %allow_early_data_cb_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 125
  %8 = load i8*, i8** %allow_early_data_cb_data, align 8, !tbaa !127
  %call = tail call i32 %7(%struct.ssl_st* noundef nonnull %s, i8* noundef %8) #10
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true21, %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false, %if.end8
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  store i32 1, i32* %early_data, align 8, !tbaa !128
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true21, %lor.lhs.false19
  %early_data27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  store i32 2, i32* %early_data27, align 8, !tbaa !128
  %call28 = tail call i32 @tls13_change_cipher_state(%struct.ssl_st* noundef nonnull %s, i32 noundef 97) #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %if.end32

if.end32:                                         ; preds = %if.else, %if.then24
  br label %return

return:                                           ; preds = %if.else, %if.then2, %land.lhs.true4, %entry, %if.end32, %if.then6
  %retval.0 = phi i32 [ 1, %if.end32 ], [ 0, %if.then6 ], [ 1, %entry ], [ 1, %land.lhs.true4 ], [ 1, %if.then2 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init_certificate_authorities(%struct.ssl_st* nocapture noundef %s, i32 noundef %context) #0 {
entry:
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !129
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %0) #11
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #10
  store %struct.stack_st_X509_NAME* null, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !129
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_parse_certificate_authorities(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) #0 {
entry:
  %call = tail call i32 @parse_ca_names(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1242, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_parse_certificate_authorities, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 110, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_construct_certificate_authorities(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %context, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx) #0 {
entry:
  %call = tail call %struct.stack_st_X509_NAME* @get_ca_names(%struct.ssl_st* noundef %s) #10
  %cmp = icmp eq %struct.stack_st_X509_NAME* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %call) #11
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #10
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 47, i64 noundef 2) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false5
  %call10 = tail call i32 @construct_ca_names(%struct.ssl_st* noundef %s, %struct.stack_st_X509_NAME* noundef nonnull %call, %struct.wpacket_st* noundef %pkt) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end13, %if.end, %lor.lhs.false5
  %.sink = phi i32 [ 1218, %lor.lhs.false5 ], [ 1218, %if.end ], [ 1228, %if.end13 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.tls_construct_certificate_authorities, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13, %if.end9, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 2, %lor.lhs.false ], [ 2, %entry ], [ 0, %if.end9 ], [ 1, %if.end13 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @tls_construct_ctos_padding(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_ctos_psk(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_parse_stoc_psk(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_stoc_psk(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

declare i32 @tls_construct_ctos_psk(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_psk(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %sent) #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !38
  %tobool = icmp ne i32 %0, 0
  %tobool1 = icmp ne i32 %sent, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %land.lhs.true2, label %return

land.lhs.true2:                                   ; preds = %entry
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %1 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !130
  %cmp.not = icmp eq %struct.CLIENTHELLO_MSG* %1, null
  br i1 %cmp.not, label %return, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %1, i64 0, i32 12
  %2 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !131
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 18, i32 1
  %3 = load i32, i32* %present, align 8, !tbaa !25
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true3
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1698, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.final_psk, i64 0, i64 0)) #10
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 109, i32 noundef 310, i8* noundef null) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true2, %land.lhs.true3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true2 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @ssl_generate_session_id(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare i32 @ssl3_send_alert(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl3_setup_buffers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @tls_handle_alpn(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @tls1_get_peer_groups(%struct.ssl_st* nocapture noundef readonly %s, i16** nocapture noundef writeonly %pgroups, i64* nocapture noundef writeonly %pgroupslen) unnamed_addr #5 {
entry:
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %0 = load i16*, i16** %peer_supportedgroups, align 8, !tbaa !133
  store i16* %0, i16** %pgroups, align 8, !tbaa !41
  %peer_supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 17
  %1 = load i64, i64* %peer_supportedgroups_len, align 8, !tbaa !134
  store i64 %1, i64* %pgroupslen, align 8, !tbaa !42
  ret void
}

declare void @tls1_get_supported_groups(%struct.ssl_st* noundef, i16** noundef, i64* noundef) local_unnamed_addr #2

declare i32 @check_in_list(%struct.ssl_st* noundef, i16 noundef zeroext, i16* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @tls13_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #2

declare i32 @parse_ca_names(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_NAME* @get_ca_names(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #8 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @construct_ca_names(%struct.ssl_st* noundef, %struct.stack_st_X509_NAME* noundef, %struct.wpacket_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !52
  %1 = load i8, i8* %0, align 1, !tbaa !44
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !28
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !44
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !28
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !52
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !52
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !43
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !52
  store i8* %0, i8** %data, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_3(%struct.PACKET* noundef %pkt, i64* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 3) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !52
  %1 = load i8, i8* %0, align 1, !tbaa !44
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !44
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !42
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !44
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !42
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 2200}
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
!22 = !{!23, !11, i64 480}
!23 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !24, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!24 = !{!"", !9, i64 0, !11, i64 8}
!25 = !{!26, !6, i64 16}
!26 = !{!"raw_extension_st", !24, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32}
!27 = !{!26, !6, i64 24}
!28 = !{!6, !6, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!5, !9, i64 8}
!32 = !{!33, !9, i64 192}
!33 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!34 = !{!35, !6, i64 96}
!35 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!36 = !{!33, !6, i64 0}
!37 = !{!5, !6, i64 0}
!38 = !{!5, !6, i64 56}
!39 = !{!5, !6, i64 1232}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !42}
!41 = !{!9, !9, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!24, !11, i64 8}
!44 = !{!7, !7, i64 0}
!45 = !{!26, !11, i64 32}
!46 = !{!5, !9, i64 2632}
!47 = !{!5, !9, i64 2640}
!48 = !{!49, !9, i64 8}
!49 = !{!"extensions_definition_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!50 = !{!49, !6, i64 4}
!51 = distinct !{!51, !30}
!52 = !{!24, !9, i64 0}
!53 = !{!54, !6, i64 8}
!54 = !{!"", !14, i64 0, !7, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!55 = !{!26, !6, i64 20}
!56 = distinct !{!56, !30}
!57 = !{!49, !9, i64 48}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = !{!5, !7, i64 132}
!61 = !{!5, !9, i64 2328}
!62 = !{!63, !6, i64 852}
!63 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !64, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!64 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!65 = !{!63, !11, i64 8}
!66 = !{!5, !7, i64 2280}
!67 = !{!5, !9, i64 392}
!68 = !{!5, !9, i64 2472}
!69 = !{!70, !9, i64 0}
!70 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !71, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !72, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !73, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!71 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!72 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!73 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!74 = !{!70, !9, i64 1088}
!75 = !{!5, !11, i64 2536}
!76 = !{!5, !6, i64 2976}
!77 = !{!5, !6, i64 2912}
!78 = !{!5, !9, i64 2648}
!79 = !{!5, !9, i64 2952}
!80 = !{!70, !9, i64 536}
!81 = !{!70, !9, i64 544}
!82 = !{!63, !9, i64 816}
!83 = !{!5, !11, i64 576}
!84 = !{!5, !11, i64 712}
!85 = !{!5, !6, i64 2712}
!86 = !{!63, !9, i64 824}
!87 = !{!63, !6, i64 848}
!88 = !{!63, !7, i64 872}
!89 = !{!5, !11, i64 2584}
!90 = !{!5, !9, i64 3056}
!91 = !{!5, !9, i64 2744}
!92 = !{!5, !11, i64 2736}
!93 = !{!5, !9, i64 736}
!94 = !{!95, !6, i64 28}
!95 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!96 = !{!95, !6, i64 32}
!97 = !{!5, !9, i64 2728}
!98 = !{!5, !11, i64 2720}
!99 = distinct !{!99, !30}
!100 = !{!5, !6, i64 2656}
!101 = !{!5, !9, i64 2696}
!102 = !{!5, !11, i64 2704}
!103 = !{!5, !6, i64 1156}
!104 = !{!5, !9, i64 1160}
!105 = !{!5, !11, i64 1168}
!106 = !{!5, !9, i64 1176}
!107 = !{!5, !11, i64 1184}
!108 = !{!63, !9, i64 856}
!109 = !{!5, !6, i64 2868}
!110 = !{!5, !9, i64 2968}
!111 = !{!5, !6, i64 2860}
!112 = !{!5, !11, i64 168}
!113 = !{!63, !6, i64 904}
!114 = !{!5, !9, i64 920}
!115 = !{!5, !11, i64 936}
!116 = !{!5, !7, i64 2984}
!117 = !{!5, !9, i64 912}
!118 = !{!5, !11, i64 928}
!119 = !{!5, !6, i64 2856}
!120 = !{!5, !9, i64 1200}
!121 = !{!5, !6, i64 2888}
!122 = !{!14, !14, i64 0}
!123 = distinct !{!123, !30}
!124 = !{!5, !14, i64 1198}
!125 = !{!5, !6, i64 7488}
!126 = !{!5, !9, i64 7560}
!127 = !{!5, !9, i64 7568}
!128 = !{!5, !6, i64 2864}
!129 = !{!5, !9, i64 776}
!130 = !{!5, !9, i64 2904}
!131 = !{!132, !9, i64 648}
!132 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 40, !7, i64 48, !11, i64 80, !7, i64 88, !24, i64 344, !11, i64 360, !7, i64 368, !24, i64 624, !11, i64 640, !9, i64 648}
!133 = !{!5, !9, i64 2776}
!134 = !{!5, !11, i64 2768}
