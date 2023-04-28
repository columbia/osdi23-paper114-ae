; ModuleID = 'ssl/ssl_lib.c'
source_filename = "ssl/ssl_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { {}*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
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
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ssl_mac_buf_st = type { i8*, i32 }
%struct.stack_st = type opaque
%struct.lhash_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_extension_st = type opaque
%struct.ocsp_responder_id_st = type opaque
%struct.X509_name_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.ssl_async_args = type { %struct.ssl_st*, i8*, i64, i32, %union.anon }
%union.anon = type { i32 (%struct.ssl_st*, i8*, i64, i64*)* }
%struct.ossl_init_settings_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque
%struct.ocsp_response_st = type opaque
%struct.ocsp_basic_response_st = type opaque
%struct.ocsp_single_response_st = type opaque
%struct.sct_st = type opaque

@ssl3_undef_enc_method = local_unnamed_addr global { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @ssl_undefined_function_1, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @ssl_undefined_function_2, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @ssl_undefined_function_3, i32 (%struct.ssl_st*, i32)* @ssl_undefined_function_4, i64 (%struct.ssl_st*, i8*, i64, i8*)* @ssl_undefined_function_5, i8* null, i64 0, i8* null, i64 0, i32 (i32)* @ssl_undefined_function_6, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @ssl_undefined_function_7, i32 0, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* null, i32 (%struct.ssl_st*)* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"ssl/ssl_lib.c\00", align 1
@__func__.SSL_clear = private unnamed_addr constant [10 x i8] c"SSL_clear\00", align 1
@__func__.SSL_CTX_set_ssl_version = private unnamed_addr constant [24 x i8] c"SSL_CTX_set_ssl_version\00", align 1
@__func__.SSL_new = private unnamed_addr constant [8 x i8] c"SSL_new\00", align 1
@__func__.SSL_CTX_set_session_id_context = private unnamed_addr constant [31 x i8] c"SSL_CTX_set_session_id_context\00", align 1
@__func__.SSL_set_session_id_context = private unnamed_addr constant [27 x i8] c"SSL_set_session_id_context\00", align 1
@__func__.SSL_dane_enable = private unnamed_addr constant [16 x i8] c"SSL_dane_enable\00", align 1
@__func__.SSL_set_fd = private unnamed_addr constant [11 x i8] c"SSL_set_fd\00", align 1
@__func__.SSL_set_wfd = private unnamed_addr constant [12 x i8] c"SSL_set_wfd\00", align 1
@__func__.SSL_set_rfd = private unnamed_addr constant [12 x i8] c"SSL_set_rfd\00", align 1
@__func__.SSL_CTX_check_private_key = private unnamed_addr constant [26 x i8] c"SSL_CTX_check_private_key\00", align 1
@__func__.SSL_check_private_key = private unnamed_addr constant [22 x i8] c"SSL_check_private_key\00", align 1
@__func__.ssl_read_internal = private unnamed_addr constant [18 x i8] c"ssl_read_internal\00", align 1
@__func__.SSL_read = private unnamed_addr constant [9 x i8] c"SSL_read\00", align 1
@__func__.SSL_read_early_data = private unnamed_addr constant [20 x i8] c"SSL_read_early_data\00", align 1
@__func__.SSL_peek = private unnamed_addr constant [9 x i8] c"SSL_peek\00", align 1
@__func__.ssl_write_internal = private unnamed_addr constant [19 x i8] c"ssl_write_internal\00", align 1
@__func__.SSL_sendfile = private unnamed_addr constant [13 x i8] c"SSL_sendfile\00", align 1
@__func__.SSL_write = private unnamed_addr constant [10 x i8] c"SSL_write\00", align 1
@__func__.SSL_write_early_data = private unnamed_addr constant [21 x i8] c"SSL_write_early_data\00", align 1
@__func__.SSL_shutdown = private unnamed_addr constant [13 x i8] c"SSL_shutdown\00", align 1
@__func__.SSL_key_update = private unnamed_addr constant [15 x i8] c"SSL_key_update\00", align 1
@__func__.SSL_CTX_set_cipher_list = private unnamed_addr constant [24 x i8] c"SSL_CTX_set_cipher_list\00", align 1
@__func__.SSL_set_cipher_list = private unnamed_addr constant [20 x i8] c"SSL_set_cipher_list\00", align 1
@__func__.SSL_CTX_set_alpn_protos = private unnamed_addr constant [24 x i8] c"SSL_CTX_set_alpn_protos\00", align 1
@__func__.SSL_set_alpn_protos = private unnamed_addr constant [20 x i8] c"SSL_set_alpn_protos\00", align 1
@__func__.SSL_CTX_new_ex = private unnamed_addr constant [15 x i8] c"SSL_CTX_new_ex\00", align 1
@__func__.ssl_check_srvr_ecc_cert_and_alg = private unnamed_addr constant [32 x i8] c"ssl_check_srvr_ecc_cert_and_alg\00", align 1
@__func__.SSL_do_handshake = private unnamed_addr constant [17 x i8] c"SSL_do_handshake\00", align 1
@__func__.ssl_undefined_function = private unnamed_addr constant [23 x i8] c"ssl_undefined_function\00", align 1
@__func__.ssl_undefined_void_function = private unnamed_addr constant [28 x i8] c"ssl_undefined_void_function\00", align 1
@__func__.ssl_bad_method = private unnamed_addr constant [15 x i8] c"ssl_bad_method\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"DTLSv0.9\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.ssl_init_wbio_buffer = private unnamed_addr constant [21 x i8] c"ssl_init_wbio_buffer\00", align 1
@__func__.SSL_CTX_use_psk_identity_hint = private unnamed_addr constant [30 x i8] c"SSL_CTX_use_psk_identity_hint\00", align 1
@__func__.SSL_use_psk_identity_hint = private unnamed_addr constant [26 x i8] c"SSL_use_psk_identity_hint\00", align 1
@__func__.ssl_handshake_hash = private unnamed_addr constant [19 x i8] c"ssl_handshake_hash\00", align 1
@__func__.SSL_set_ct_validation_callback = private unnamed_addr constant [31 x i8] c"SSL_set_ct_validation_callback\00", align 1
@__func__.SSL_CTX_set_ct_validation_callback = private unnamed_addr constant [35 x i8] c"SSL_CTX_set_ct_validation_callback\00", align 1
@__func__.ssl_validate_ct = private unnamed_addr constant [16 x i8] c"ssl_validate_ct\00", align 1
@__func__.SSL_CTX_enable_ct = private unnamed_addr constant [18 x i8] c"SSL_CTX_enable_ct\00", align 1
@__func__.SSL_enable_ct = private unnamed_addr constant [14 x i8] c"SSL_enable_ct\00", align 1
@__func__.SSL_client_hello_get1_extensions_present = private unnamed_addr constant [41 x i8] c"SSL_client_hello_get1_extensions_present\00", align 1
@__func__.ssl_log_rsa_client_key_exchange = private unnamed_addr constant [32 x i8] c"ssl_log_rsa_client_key_exchange\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@__func__.ssl_cache_cipherlist = private unnamed_addr constant [21 x i8] c"ssl_cache_cipherlist\00", align 1
@__func__.bytes_to_cipher_list = private unnamed_addr constant [21 x i8] c"bytes_to_cipher_list\00", align 1
@__func__.SSL_verify_client_post_handshake = private unnamed_addr constant [33 x i8] c"SSL_verify_client_post_handshake\00", align 1
@__func__.SSL_set0_tmp_dh_pkey = private unnamed_addr constant [21 x i8] c"SSL_set0_tmp_dh_pkey\00", align 1
@__func__.SSL_CTX_set0_tmp_dh_pkey = private unnamed_addr constant [25 x i8] c"SSL_CTX_set0_tmp_dh_pkey\00", align 1
@__func__.dane_ctx_enable = private unnamed_addr constant [16 x i8] c"dane_ctx_enable\00", align 1
@__func__.dane_tlsa_add = private unnamed_addr constant [14 x i8] c"dane_tlsa_add\00", align 1
@__func__.dane_mtype_set = private unnamed_addr constant [15 x i8] c"dane_mtype_set\00", align 1
@__func__.ssl_start_async_job = private unnamed_addr constant [20 x i8] c"ssl_start_async_job\00", align 1
@__func__.ssl_peek_internal = private unnamed_addr constant [18 x i8] c"ssl_peek_internal\00", align 1
@__func__.can_renegotiate = private unnamed_addr constant [16 x i8] c"can_renegotiate\00", align 1
@__func__.ssl_dane_dup = private unnamed_addr constant [13 x i8] c"ssl_dane_dup\00", align 1
@__func__.ct_move_scts = private unnamed_addr constant [13 x i8] c"ct_move_scts\00", align 1
@__func__.ct_strict = private unnamed_addr constant [10 x i8] c"ct_strict\00", align 1
@__func__.nss_keylog_int = private unnamed_addr constant [15 x i8] c"nss_keylog_int\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1
@switch.table.SSL_get_error = private unnamed_addr constant [5 x i32] [i32 4, i32 9, i32 10, i32 11, i32 12], align 4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_1(%struct.ssl_st* nocapture noundef readnone %ssl, %struct.ssl3_record_st* nocapture noundef readnone %r, i64 noundef %s, i32 noundef %t, %struct.ssl_mac_buf_st* nocapture noundef readnone %mac, i64 noundef %macsize) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_2(%struct.ssl_st* nocapture noundef readnone %ssl, %struct.ssl3_record_st* nocapture noundef readnone %r, i8* nocapture noundef readnone %s, i32 noundef %t) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_undefined_function(%struct.ssl_st* nocapture readnone %s) #0 {
entry:
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3919, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl_undefined_function, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_3(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %r, i8* nocapture noundef readnone %s, i64 noundef %t, i64* nocapture noundef readnone %u) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_4(%struct.ssl_st* nocapture noundef readnone %ssl, i32 noundef %r) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ssl_undefined_function_5(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %r, i64 noundef %s, i8* nocapture noundef readnone %t) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_6(i32 noundef %r) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_7(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %r, i64 noundef %s, i8* nocapture noundef readnone %t, i64 noundef %u, i8* nocapture noundef readnone %v, i64 noundef %w, i32 noundef %x) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* undef) #17
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_clear(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.ssl_method_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.SSL_clear, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 188, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_clear_bad_session(%struct.ssl_st* noundef nonnull %s) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %1) #18
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %session, align 8, !tbaa !22
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !23
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %2) #18
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %psksession, align 8, !tbaa !23
  %psksession_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 57
  %3 = load i8*, i8** %psksession_id, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 582) #18
  store i8* null, i8** %psksession_id, align 8, !tbaa !24
  %psksession_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 58
  store i64 0, i64* %psksession_id_len, align 8, !tbaa !25
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  store i32 0, i32* %hello_retry_request, align 8, !tbaa !26
  %sent_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  store i64 0, i64* %sent_tickets, align 8, !tbaa !27
  %error = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 65
  store i32 0, i32* %error, align 8, !tbaa !28
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 0, i32* %hit, align 8, !tbaa !29
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown, align 4, !tbaa !30
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %4 = load i32, i32* %renegotiate, align 8, !tbaa !31
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 593, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.SSL_clear, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #18
  br label %return

if.end8:                                          ; preds = %if.end3
  tail call void @ossl_statem_clear(%struct.ssl_st* noundef nonnull %s) #18
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %6 = load i32, i32* %version, align 8, !tbaa !32
  %version10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %6, i32* %version10, align 8, !tbaa !34
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 %6, i32* %client_version, align 4, !tbaa !35
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !36
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !37
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %7) #18
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %init_buf, align 8, !tbaa !37
  tail call fastcc void @clear_ciphers(%struct.ssl_st* noundef nonnull %s) #17
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  store i32 0, i32* %first_packet, align 8, !tbaa !38
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  store i32 -1, i32* %key_update, align 4, !tbaa !39
  %pha_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 105
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !40
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %8) #18
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !40
  %mdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 6
  store i32 -1, i32* %mdpth, align 4, !tbaa !41
  %pdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 7
  store i32 -1, i32* %pdpth, align 8, !tbaa !42
  %mcert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 4
  %9 = load %struct.x509_st*, %struct.x509_st** %mcert, align 8, !tbaa !43
  tail call void @X509_free(%struct.x509_st* noundef %9) #18
  store %struct.x509_st* null, %struct.x509_st** %mcert, align 8, !tbaa !43
  %mtlsa = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 3
  store %struct.danetls_record_st* null, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !44
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %10 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  tail call void @X509_VERIFY_PARAM_move_peername(%struct.X509_VERIFY_PARAM_st* noundef %10, %struct.X509_VERIFY_PARAM_st* noundef null) #18
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %11 = bitcast %struct.sigalg_lookup_st*** %shared_sigalgs to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !46
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 624) #18
  store %struct.sigalg_lookup_st** null, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !46
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  store i64 0, i64* %shared_sigalgslen, align 8, !tbaa !47
  %13 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %method21 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 1
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method21, align 8, !tbaa !49
  %cmp22.not = icmp eq %struct.ssl_method_st* %13, %15
  br i1 %cmp22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end8
  %ssl_free = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %13, i64 0, i32 5
  %16 = load void (%struct.ssl_st*)*, void (%struct.ssl_st*)** %ssl_free, align 8, !tbaa !54
  tail call void %16(%struct.ssl_st* noundef nonnull %s) #18
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %method26 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %17, i64 0, i32 1
  %18 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method26, align 8, !tbaa !49
  store %struct.ssl_method_st* %18, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_new = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %18, i64 0, i32 3
  %19 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_new, align 8, !tbaa !55
  %call29 = tail call i32 %19(%struct.ssl_st* noundef nonnull %s) #18
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %return, label %if.end38

if.else:                                          ; preds = %if.end8
  %ssl_clear = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %13, i64 0, i32 4
  %20 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_clear, align 8, !tbaa !56
  %call34 = tail call i32 %20(%struct.ssl_st* noundef nonnull %s) #18
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %return, label %if.end38

if.end38:                                         ; preds = %if.else, %if.then23
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_clear(%struct.record_layer_st* noundef nonnull %rlayer) #18
  br label %return

return:                                           ; preds = %if.else, %if.then23, %if.end38, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 1, %if.end38 ], [ 0, %if.then23 ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ssl_clear_bad_session(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_statem_clear(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @clear_ciphers(%struct.ssl_st* nocapture noundef %s) unnamed_addr #0 {
entry:
  tail call void @ssl_clear_cipher_ctx(%struct.ssl_st* noundef %s) #17
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  tail call void @ssl_clear_hash_ctx(%struct.evp_md_ctx_st** noundef nonnull %read_hash) #17
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  tail call void @ssl_clear_hash_ctx(%struct.evp_md_ctx_st** noundef nonnull %write_hash) #17
  ret void
}

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare void @X509_free(%struct.x509_st* noundef) #1

declare void @X509_VERIFY_PARAM_move_peername(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare void @RECORD_LAYER_clear(%struct.record_layer_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_ssl_version(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  store %struct.ssl_method_st* %meth, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %call = tail call i8* @OSSL_default_ciphersuites() #18
  %call1 = tail call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !57
  %cipher_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 2
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 3
  %call2 = tail call i8* @OSSL_default_cipher_list() #18
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %call3 = tail call %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.stack_st_SSL_CIPHER* noundef %0, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list_by_id, i8* noundef %call2, %struct.cert_st* noundef %1) #18
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %call3, null
  br i1 %cmp, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call3) #17
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #18
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false, %entry
  %.sink = phi i32 [ 656, %entry ], [ 665, %lor.lhs.false ], [ 665, %if.end ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_CTX_set_ssl_version, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 230, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OSSL_default_ciphersuites() local_unnamed_addr #1

declare %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* noundef, %struct.stack_st_SSL_CIPHER* noundef, %struct.stack_st_SSL_CIPHER** noundef, %struct.stack_st_SSL_CIPHER** noundef, i8* noundef, %struct.cert_st* noundef) local_unnamed_addr #1

declare i8* @OSSL_default_cipher_list() local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %cmp1 = icmp eq %struct.ssl_method_st* %0, null
  br i1 %cmp1, label %cleanup.sink.split, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 7608, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 685) #18
  %1 = bitcast i8* %call to %struct.ssl_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end3
  %references = getelementptr inbounds i8, i8* %call, i64 2528
  %2 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !59
  %call7 = tail call i8* @CRYPTO_THREAD_lock_new() #18
  %lock = getelementptr inbounds i8, i8* %call, i64 7528
  %3 = bitcast i8* %lock to i8**
  store i8* %call7, i8** %3, align 8, !tbaa !60
  %cmp9 = icmp eq i8* %call7, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 692) #18
  br label %err

if.end11:                                         ; preds = %if.end6
  %rlayer = getelementptr inbounds i8, i8* %call, i64 3160
  %4 = bitcast i8* %rlayer to %struct.record_layer_st*
  tail call void @RECORD_LAYER_init(%struct.record_layer_st* noundef nonnull %4, %struct.ssl_st* noundef nonnull %1) #18
  %options = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 34
  %5 = load i64, i64* %options, align 8, !tbaa !61
  %options12 = getelementptr inbounds i8, i8* %call, i64 2536
  %6 = bitcast i8* %options12 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !62
  %flags = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 66, i32 3
  %7 = load i64, i64* %flags, align 8, !tbaa !63
  %flags14 = getelementptr inbounds i8, i8* %call, i64 1304
  %8 = bitcast i8* %flags14 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !64
  %min_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 36
  %9 = load i32, i32* %min_proto_version, align 4, !tbaa !65
  %min_proto_version15 = getelementptr inbounds i8, i8* %call, i64 2548
  %10 = bitcast i8* %min_proto_version15 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !66
  %max_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 37
  %11 = load i32, i32* %max_proto_version, align 8, !tbaa !67
  %max_proto_version16 = getelementptr inbounds i8, i8* %call, i64 2552
  %12 = bitcast i8* %max_proto_version16 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !68
  %mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 35
  %13 = load i32, i32* %mode, align 8, !tbaa !69
  %mode17 = getelementptr inbounds i8, i8* %call, i64 2544
  %14 = bitcast i8* %mode17 to i32*
  store i32 %13, i32* %14, align 8, !tbaa !70
  %max_cert_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 38
  %15 = load i64, i64* %max_cert_list, align 8, !tbaa !71
  %max_cert_list18 = getelementptr inbounds i8, i8* %call, i64 2560
  %16 = bitcast i8* %max_cert_list18 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !72
  %max_early_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 71
  %17 = load i32, i32* %max_early_data, align 8, !tbaa !73
  %max_early_data19 = getelementptr inbounds i8, i8* %call, i64 7488
  %18 = bitcast i8* %max_early_data19 to i32*
  store i32 %17, i32* %18, align 8, !tbaa !74
  %recv_max_early_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 72
  %19 = load i32, i32* %recv_max_early_data, align 4, !tbaa !75
  %recv_max_early_data20 = getelementptr inbounds i8, i8* %call, i64 7492
  %20 = bitcast i8* %recv_max_early_data20 to i32*
  store i32 %19, i32* %20, align 4, !tbaa !76
  %num_tickets = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 79
  %21 = load i64, i64* %num_tickets, align 8, !tbaa !77
  %num_tickets21 = getelementptr inbounds i8, i8* %call, i64 7536
  %22 = bitcast i8* %num_tickets21 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !78
  %pha_enabled = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 82
  %23 = load i32, i32* %pha_enabled, align 8, !tbaa !79
  %pha_enabled22 = getelementptr inbounds i8, i8* %call, i64 2988
  %24 = bitcast i8* %pha_enabled22 to i32*
  store i32 %23, i32* %24, align 4, !tbaa !80
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 4
  %25 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !57
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %25) #17
  %call24 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call23) #18
  %tls13_ciphersuites25 = getelementptr inbounds i8, i8* %call, i64 1336
  %26 = bitcast i8* %tls13_ciphersuites25 to %struct.stack_st**
  store %struct.stack_st* %call24, %struct.stack_st** %26, align 8, !tbaa !81
  %cmp27 = icmp eq %struct.stack_st* %call24, null
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %if.end11
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %27 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %call30 = tail call %struct.cert_st* @ssl_cert_dup(%struct.cert_st* noundef %27) #18
  %cert31 = getelementptr inbounds i8, i8* %call, i64 2200
  %28 = bitcast i8* %cert31 to %struct.cert_st**
  store %struct.cert_st* %call30, %struct.cert_st** %28, align 8, !tbaa !82
  %cmp33 = icmp eq %struct.cert_st* %call30, null
  br i1 %cmp33, label %err, label %if.end35

if.end35:                                         ; preds = %if.end29
  %read_ahead = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 40
  %29 = load i32, i32* %read_ahead, align 8, !tbaa !83
  %read_ahead37 = getelementptr inbounds i8, i8* %call, i64 3168
  %30 = bitcast i8* %read_ahead37 to i32*
  store i32 %29, i32* %30, align 8, !tbaa !84
  %msg_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 41
  %31 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !85
  %msg_callback38 = getelementptr inbounds i8, i8* %call, i64 1216
  %32 = bitcast i8* %msg_callback38 to void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)**
  store void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %31, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %32, align 8, !tbaa !86
  %msg_callback_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 42
  %33 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !87
  %msg_callback_arg39 = getelementptr inbounds i8, i8* %call, i64 1224
  %34 = bitcast i8* %msg_callback_arg39 to i8**
  store i8* %33, i8** %34, align 8, !tbaa !88
  %verify_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 43
  %35 = load i32, i32* %verify_mode, align 8, !tbaa !89
  %verify_mode40 = getelementptr inbounds i8, i8* %call, i64 2408
  %36 = bitcast i8* %verify_mode40 to i32*
  store i32 %35, i32* %36, align 8, !tbaa !90
  %not_resumable_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 68
  %37 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %not_resumable_session_cb, align 8, !tbaa !91
  %not_resumable_session_cb41 = getelementptr inbounds i8, i8* %call, i64 3152
  %38 = bitcast i8* %not_resumable_session_cb41 to i32 (%struct.ssl_st*, i32)**
  store i32 (%struct.ssl_st*, i32)* %37, i32 (%struct.ssl_st*, i32)** %38, align 8, !tbaa !92
  %record_padding_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 73
  %39 = load i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_st*, i32, i64, i8*)** %record_padding_cb, align 8, !tbaa !93
  %record_padding_cb42 = getelementptr inbounds i8, i8* %call, i64 7504
  %40 = bitcast i8* %record_padding_cb42 to i64 (%struct.ssl_st*, i32, i64, i8*)**
  store i64 (%struct.ssl_st*, i32, i64, i8*)* %39, i64 (%struct.ssl_st*, i32, i64, i8*)** %40, align 8, !tbaa !94
  %record_padding_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 74
  %41 = load i8*, i8** %record_padding_arg, align 8, !tbaa !95
  %record_padding_arg43 = getelementptr inbounds i8, i8* %call, i64 7512
  %42 = bitcast i8* %record_padding_arg43 to i8**
  store i8* %41, i8** %42, align 8, !tbaa !96
  %block_padding = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 75
  %43 = load i64, i64* %block_padding, align 8, !tbaa !97
  %block_padding44 = getelementptr inbounds i8, i8* %call, i64 7520
  %44 = bitcast i8* %block_padding44 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !98
  %sid_ctx_length = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 44
  %45 = load i64, i64* %sid_ctx_length, align 8, !tbaa !99
  %sid_ctx_length45 = getelementptr inbounds i8, i8* %call, i64 2288
  %46 = bitcast i8* %sid_ctx_length45 to i64*
  store i64 %45, i64* %46, align 8, !tbaa !100
  %cmp47 = icmp ult i64 %45, 33
  br i1 %cmp47, label %if.end51, label %err

if.end51:                                         ; preds = %if.end35
  %sid_ctx = getelementptr inbounds i8, i8* %call, i64 2296
  %47 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 45, i64 0
  %call53 = tail call i8* @memcpy(i8* noundef nonnull %sid_ctx, i8* noundef nonnull %47, i64 noundef 32) #18
  %default_verify_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 46
  %48 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %default_verify_callback, align 8, !tbaa !101
  %verify_callback = getelementptr inbounds i8, i8* %call, i64 2416
  %49 = bitcast i8* %verify_callback to i32 (i32, %struct.x509_store_ctx_st*)**
  store i32 (i32, %struct.x509_store_ctx_st*)* %48, i32 (i32, %struct.x509_store_ctx_st*)** %49, align 8, !tbaa !102
  %generate_session_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 47
  %50 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id, align 8, !tbaa !103
  %generate_session_id54 = getelementptr inbounds i8, i8* %call, i64 2360
  %51 = bitcast i8* %generate_session_id54 to i32 (%struct.ssl_st*, i8*, i32*)**
  store i32 (%struct.ssl_st*, i8*, i32*)* %50, i32 (%struct.ssl_st*, i8*, i32*)** %51, align 8, !tbaa !104
  %call55 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #18
  %param = getelementptr inbounds i8, i8* %call, i64 1240
  %52 = bitcast i8* %param to %struct.X509_VERIFY_PARAM_st**
  store %struct.X509_VERIFY_PARAM_st* %call55, %struct.X509_VERIFY_PARAM_st** %52, align 8, !tbaa !45
  %cmp57 = icmp eq %struct.X509_VERIFY_PARAM_st* %call55, null
  br i1 %cmp57, label %err, label %if.end60

if.end60:                                         ; preds = %if.end51
  %param62 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 48
  %53 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param62, align 8, !tbaa !105
  %call63 = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call55, %struct.X509_VERIFY_PARAM_st* noundef %53) #18
  %quiet_shutdown = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 49
  %54 = load i32, i32* %quiet_shutdown, align 8, !tbaa !106
  %quiet_shutdown64 = getelementptr inbounds i8, i8* %call, i64 64
  %55 = bitcast i8* %quiet_shutdown64 to i32*
  store i32 %54, i32* %55, align 8, !tbaa !107
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 9
  %56 = load i8, i8* %max_fragment_len_mode, align 4, !tbaa !108
  %57 = getelementptr inbounds i8, i8* %call, i64 2892
  store i8 %56, i8* %57, align 4, !tbaa !109
  %split_send_fragment = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 53
  %58 = bitcast i64* %split_send_fragment to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8, !tbaa !110
  %split_send_fragment68 = getelementptr inbounds i8, i8* %call, i64 2576
  %60 = bitcast i8* %split_send_fragment68 to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %60, align 8, !tbaa !110
  %max_pipelines = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 55
  %61 = load i64, i64* %max_pipelines, align 8, !tbaa !111
  %max_pipelines69 = getelementptr inbounds i8, i8* %call, i64 2592
  %62 = bitcast i8* %max_pipelines69 to i64*
  store i64 %61, i64* %62, align 8, !tbaa !112
  %cmp71 = icmp ugt i64 %61, 1
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end60
  store i32 1, i32* %30, align 8, !tbaa !84
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end60
  %default_read_buf_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 56
  %63 = load i64, i64* %default_read_buf_len, align 8, !tbaa !113
  %cmp77.not = icmp eq i64 %63, 0
  br i1 %cmp77.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end76
  tail call void @SSL_set_default_read_buffer_len(%struct.ssl_st* noundef nonnull %1, i64 noundef %63) #18
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  %call82 = tail call i32 @SSL_CTX_up_ref(%struct.ssl_ctx_st* noundef nonnull %ctx) #17
  %ctx83 = getelementptr inbounds i8, i8* %call, i64 2472
  %64 = bitcast i8* %ctx83 to %struct.ssl_ctx_st**
  store %struct.ssl_ctx_st* %ctx, %struct.ssl_ctx_st** %64, align 8, !tbaa !48
  %debug_cb = getelementptr inbounds i8, i8* %call, i64 2632
  %65 = bitcast i8* %debug_cb to void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)**
  store void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)* null, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)** %65, align 8, !tbaa !114
  %debug_arg = getelementptr inbounds i8, i8* %call, i64 2640
  %66 = bitcast i8* %debug_arg to i8**
  store i8* null, i8** %66, align 8, !tbaa !115
  %ticket_expected = getelementptr inbounds i8, i8* %call, i64 2712
  %67 = bitcast i8* %ticket_expected to i32*
  store i32 0, i32* %67, align 8, !tbaa !116
  %status_type = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 8
  %68 = load i32, i32* %status_type, align 8, !tbaa !117
  %status_type89 = getelementptr inbounds i8, i8* %call, i64 2656
  %69 = bitcast i8* %status_type89 to i32*
  store i32 %68, i32* %69, align 8, !tbaa !118
  %status_expected = getelementptr inbounds i8, i8* %call, i64 2676
  %70 = bitcast i8* %status_expected to i32*
  store i32 0, i32* %70, align 4, !tbaa !119
  %ocsp = getelementptr inbounds i8, i8* %call, i64 2680
  %ids = bitcast i8* %ocsp to %struct.stack_st_OCSP_RESPID**
  store %struct.stack_st_OCSP_RESPID* null, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !120
  %exts = getelementptr inbounds i8, i8* %call, i64 2688
  %71 = bitcast i8* %exts to %struct.stack_st_X509_EXTENSION**
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %71, align 8, !tbaa !121
  %resp = getelementptr inbounds i8, i8* %call, i64 2696
  %72 = bitcast i8* %resp to i8**
  store i8* null, i8** %72, align 8, !tbaa !122
  %resp_len = getelementptr inbounds i8, i8* %call, i64 2704
  %73 = bitcast i8* %resp_len to i64*
  store i64 0, i64* %73, align 8, !tbaa !123
  %call98 = tail call i32 @SSL_CTX_up_ref(%struct.ssl_ctx_st* noundef nonnull %ctx) #17
  %session_ctx = getelementptr inbounds i8, i8* %call, i64 2952
  %74 = bitcast i8* %session_ctx to %struct.ssl_ctx_st**
  store %struct.ssl_ctx_st* %ctx, %struct.ssl_ctx_st** %74, align 8, !tbaa !124
  %ecpointformats = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 11
  %75 = load i8*, i8** %ecpointformats, align 8, !tbaa !125
  %tobool.not = icmp eq i8* %75, null
  br i1 %tobool.not, label %if.end118, label %if.then100

if.then100:                                       ; preds = %if.end81
  %ecpointformats_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 10
  %76 = load i64, i64* %ecpointformats_len, align 8, !tbaa !126
  %call104 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %75, i64 noundef %76, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 774) #18
  %ecpointformats106 = getelementptr inbounds i8, i8* %call, i64 2728
  %77 = bitcast i8* %ecpointformats106 to i8**
  store i8* %call104, i8** %77, align 8, !tbaa !127
  %tobool109.not = icmp eq i8* %call104, null
  br i1 %tobool109.not, label %if.then110, label %if.end113

if.then110:                                       ; preds = %if.then100
  %ecpointformats_len112 = getelementptr inbounds i8, i8* %call, i64 2720
  %78 = bitcast i8* %ecpointformats_len112 to i64*
  store i64 0, i64* %78, align 8, !tbaa !128
  br label %err

if.end113:                                        ; preds = %if.then100
  %79 = load i64, i64* %ecpointformats_len, align 8, !tbaa !126
  %ecpointformats_len117 = getelementptr inbounds i8, i8* %call, i64 2720
  %80 = bitcast i8* %ecpointformats_len117 to i64*
  store i64 %79, i64* %80, align 8, !tbaa !128
  br label %if.end118

if.end118:                                        ; preds = %if.end113, %if.end81
  %supportedgroups = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 13
  %81 = load i16*, i16** %supportedgroups, align 8, !tbaa !129
  %tobool120.not = icmp eq i16* %81, null
  br i1 %tobool120.not, label %if.end139, label %if.then121

if.then121:                                       ; preds = %if.end118
  %82 = bitcast i16* %81 to i8*
  %supportedgroups_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 12
  %83 = load i64, i64* %supportedgroups_len, align 8, !tbaa !130
  %mul = shl i64 %83, 1
  %call125 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %82, i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 786) #18
  %supportedgroups127 = getelementptr inbounds i8, i8* %call, i64 2760
  %84 = bitcast i8* %supportedgroups127 to i8**
  store i8* %call125, i8** %84, align 8, !tbaa !131
  %tobool130.not = icmp eq i8* %call125, null
  br i1 %tobool130.not, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.then121
  %supportedgroups_len133 = getelementptr inbounds i8, i8* %call, i64 2752
  %85 = bitcast i8* %supportedgroups_len133 to i64*
  store i64 0, i64* %85, align 8, !tbaa !132
  br label %err

if.end134:                                        ; preds = %if.then121
  %86 = load i64, i64* %supportedgroups_len, align 8, !tbaa !130
  %supportedgroups_len138 = getelementptr inbounds i8, i8* %call, i64 2752
  %87 = bitcast i8* %supportedgroups_len138 to i64*
  store i64 %86, i64* %87, align 8, !tbaa !132
  br label %if.end139

if.end139:                                        ; preds = %if.end134, %if.end118
  %npn = getelementptr inbounds i8, i8* %call, i64 2840
  %88 = bitcast i8* %npn to i8**
  store i8* null, i8** %88, align 8, !tbaa !133
  %89 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %64, align 8, !tbaa !48
  %alpn = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %89, i64 0, i32 60, i32 18
  %90 = load i8*, i8** %alpn, align 8, !tbaa !134
  %tobool143.not = icmp eq i8* %90, null
  br i1 %tobool143.not, label %if.end172, label %if.then144

if.then144:                                       ; preds = %if.end139
  %alpn_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %89, i64 0, i32 60, i32 19
  %91 = load i64, i64* %alpn_len, align 8, !tbaa !135
  %call147 = tail call i8* @CRYPTO_malloc(i64 noundef %91, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 799) #18
  %alpn149 = getelementptr inbounds i8, i8* %call, i64 2824
  %92 = bitcast i8* %alpn149 to i8**
  store i8* %call147, i8** %92, align 8, !tbaa !136
  %cmp152 = icmp eq i8* %call147, null
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %if.then144
  %alpn_len156 = getelementptr inbounds i8, i8* %call, i64 2832
  %93 = bitcast i8* %alpn_len156 to i64*
  store i64 0, i64* %93, align 8, !tbaa !137
  br label %err

if.end157:                                        ; preds = %if.then144
  %94 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %64, align 8, !tbaa !48
  %alpn162 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %94, i64 0, i32 60, i32 18
  %95 = load i8*, i8** %alpn162, align 8, !tbaa !134
  %alpn_len165 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %94, i64 0, i32 60, i32 19
  %96 = load i64, i64* %alpn_len165, align 8, !tbaa !135
  %call166 = tail call i8* @memcpy(i8* noundef nonnull %call147, i8* noundef %95, i64 noundef %96) #18
  %97 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %64, align 8, !tbaa !48
  %alpn_len169 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %97, i64 0, i32 60, i32 19
  %98 = load i64, i64* %alpn_len169, align 8, !tbaa !135
  %alpn_len171 = getelementptr inbounds i8, i8* %call, i64 2832
  %99 = bitcast i8* %alpn_len171 to i64*
  store i64 %98, i64* %99, align 8, !tbaa !137
  br label %if.end172

if.end172:                                        ; preds = %if.end157, %if.end139
  %verified_chain = getelementptr inbounds i8, i8* %call, i64 2480
  %100 = bitcast i8* %verified_chain to %struct.stack_st_X509**
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %100, align 8, !tbaa !138
  %verify_result = getelementptr inbounds i8, i8* %call, i64 2488
  %101 = bitcast i8* %verify_result to i64*
  store i64 0, i64* %101, align 8, !tbaa !139
  %default_passwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  %102 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !140
  %default_passwd_callback173 = getelementptr inbounds i8, i8* %call, i64 7448
  %103 = bitcast i8* %default_passwd_callback173 to i32 (i8*, i32, i32, i8*)**
  store i32 (i8*, i32, i32, i8*)* %102, i32 (i8*, i32, i32, i8*)** %103, align 8, !tbaa !141
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  %104 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !142
  %default_passwd_callback_userdata174 = getelementptr inbounds i8, i8* %call, i64 7456
  %105 = bitcast i8* %default_passwd_callback_userdata174 to i8**
  store i8* %104, i8** %105, align 8, !tbaa !143
  %106 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %method176 = getelementptr inbounds i8, i8* %call, i64 8
  %107 = bitcast i8* %method176 to %struct.ssl_method_st**
  store %struct.ssl_method_st* %106, %struct.ssl_method_st** %107, align 8, !tbaa !4
  %key_update = getelementptr inbounds i8, i8* %call, i64 2980
  %108 = bitcast i8* %key_update to i32*
  store i32 -1, i32* %108, align 4, !tbaa !39
  %allow_early_data_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 80
  %109 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %allow_early_data_cb, align 8, !tbaa !144
  %allow_early_data_cb177 = getelementptr inbounds i8, i8* %call, i64 7560
  %110 = bitcast i8* %allow_early_data_cb177 to i32 (%struct.ssl_st*, i8*)**
  store i32 (%struct.ssl_st*, i8*)* %109, i32 (%struct.ssl_st*, i8*)** %110, align 8, !tbaa !145
  %allow_early_data_cb_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 81
  %111 = load i8*, i8** %allow_early_data_cb_data, align 8, !tbaa !146
  %allow_early_data_cb_data178 = getelementptr inbounds i8, i8* %call, i64 7568
  %112 = bitcast i8* %allow_early_data_cb_data178 to i8**
  store i8* %111, i8** %112, align 8, !tbaa !147
  %ssl_new = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %106, i64 0, i32 3
  %113 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_new, align 8, !tbaa !55
  %call180 = tail call i32 %113(%struct.ssl_st* noundef nonnull %1) #18
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %if.end183

if.end183:                                        ; preds = %if.end172
  %114 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %ssl_accept = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %114, i64 0, i32 6
  %115 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_accept, align 8, !tbaa !148
  %cmp185 = icmp ne i32 (%struct.ssl_st*)* %115, @ssl_undefined_function
  %cond = zext i1 %cmp185 to i32
  %server = getelementptr inbounds i8, i8* %call, i64 56
  %116 = bitcast i8* %server to i32*
  store i32 %cond, i32* %116, align 8, !tbaa !149
  %call187 = tail call i32 @SSL_clear(%struct.ssl_st* noundef nonnull %1) #17
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %err, label %if.end190

if.end190:                                        ; preds = %if.end183
  %ex_data = getelementptr inbounds i8, i8* %call, i64 2496
  %117 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call191 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 0, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %117) #18
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %if.end194

if.end194:                                        ; preds = %if.end190
  %psk_client_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 61
  %118 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !150
  %psk_client_callback195 = getelementptr inbounds i8, i8* %call, i64 2440
  %119 = bitcast i8* %psk_client_callback195 to i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)**
  store i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %118, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %119, align 8, !tbaa !151
  %psk_server_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 62
  %120 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !152
  %psk_server_callback196 = getelementptr inbounds i8, i8* %call, i64 2448
  %121 = bitcast i8* %psk_server_callback196 to i32 (%struct.ssl_st*, i8*, i8*, i32)**
  store i32 (%struct.ssl_st*, i8*, i8*, i32)* %120, i32 (%struct.ssl_st*, i8*, i8*, i32)** %121, align 8, !tbaa !153
  %psk_find_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 63
  %122 = load i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %psk_find_session_cb, align 8, !tbaa !154
  %psk_find_session_cb197 = getelementptr inbounds i8, i8* %call, i64 2456
  %123 = bitcast i8* %psk_find_session_cb197 to i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)**
  store i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* %122, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %123, align 8, !tbaa !155
  %psk_use_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 64
  %124 = load i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %psk_use_session_cb, align 8, !tbaa !156
  %psk_use_session_cb198 = getelementptr inbounds i8, i8* %call, i64 2464
  %125 = bitcast i8* %psk_use_session_cb198 to i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)**
  store i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* %124, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %125, align 8, !tbaa !157
  %async_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 83
  %126 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %async_cb, align 8, !tbaa !158
  %async_cb199 = getelementptr inbounds i8, i8* %call, i64 7576
  %127 = bitcast i8* %async_cb199 to i32 (%struct.ssl_st*, i8*)**
  store i32 (%struct.ssl_st*, i8*)* %126, i32 (%struct.ssl_st*, i8*)** %127, align 8, !tbaa !159
  %async_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 84
  %128 = load i8*, i8** %async_cb_arg, align 8, !tbaa !160
  %async_cb_arg200 = getelementptr inbounds i8, i8* %call, i64 7584
  %129 = bitcast i8* %async_cb_arg200 to i8**
  store i8* %128, i8** %129, align 8, !tbaa !161
  %job = getelementptr inbounds i8, i8* %call, i64 7464
  %130 = bitcast i8* %job to %struct.async_job_st**
  store %struct.async_job_st* null, %struct.async_job_st** %130, align 8, !tbaa !162
  %ct_validation_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 51
  %131 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !163
  %ct_validation_callback_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 52
  %132 = load i8*, i8** %ct_validation_callback_arg, align 8, !tbaa !164
  %call201 = tail call i32 @SSL_set_ct_validation_callback(%struct.ssl_st* noundef nonnull %1, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef %131, i8* noundef %132) #17
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %cleanup

err:                                              ; preds = %if.end194, %if.end190, %if.end183, %if.end172, %if.end51, %if.end35, %if.end29, %if.end11, %if.end3, %if.then154, %if.then131, %if.then110, %if.then10
  %s.0 = phi %struct.ssl_st* [ null, %if.end3 ], [ null, %if.then10 ], [ %1, %if.end11 ], [ %1, %if.end29 ], [ %1, %if.end51 ], [ %1, %if.then154 ], [ %1, %if.end194 ], [ %1, %if.end190 ], [ %1, %if.end183 ], [ %1, %if.end172 ], [ %1, %if.then131 ], [ %1, %if.then110 ], [ %1, %if.end35 ]
  tail call void @SSL_free(%struct.ssl_st* noundef %s.0) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry, %err
  %.sink367 = phi i32 [ 853, %err ], [ 677, %entry ], [ 681, %if.end ]
  %.sink = phi i32 [ 786688, %err ], [ 195, %entry ], [ 228, %if.end ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink367, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.SSL_new, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end194
  %retval.0 = phi %struct.ssl_st* [ %1, %if.end194 ], [ null, %cleanup.sink.split ]
  ret %struct.ssl_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @RECORD_LAYER_init(%struct.record_layer_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #1

declare %struct.cert_st* @ssl_cert_dup(%struct.cert_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #1

declare i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare void @SSL_set_default_read_buffer_len(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @SSL_CTX_up_ref(%struct.ssl_ctx_st* nocapture noundef %ctx) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %references = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 16
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  %1 = load i32, i32* %i, align 4, !tbaa !165
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %cond
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_ct_validation_callback(%struct.ssl_st* noundef %s, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef %callback, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %callback, null
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %call = tail call i32 @SSL_CTX_has_client_custom_ext(%struct.ssl_ctx_st* noundef %0, i32 noundef 18) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5112, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_set_ct_validation_callback, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 206, i8* noundef null) #18
  br label %return

if.then2:                                         ; preds = %land.lhs.true
  %call3 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %s, i32 noundef 65, i64 noundef 1, i8* noundef null) #17
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %return, label %if.end7

if.end7:                                          ; preds = %entry, %if.then2
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  store i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %callback, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !166
  %ct_validation_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 92
  store i8* %arg, i8** %ct_validation_callback_arg, align 8, !tbaa !167
  br label %return

return:                                           ; preds = %if.then2, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end7 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_free(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 77
  %lock = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 120
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  %1 = load i32, i32* %i, align 4, !tbaa !165
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %2) #18
  %dane = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23
  tail call fastcc void @dane_final(%struct.ssl_dane_st* noundef nonnull %dane) #17
  %3 = bitcast %struct.ssl_st* %s to i8*
  %ex_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 74
  tail call void @CRYPTO_free_ex_data(i32 noundef 0, i8* noundef %3, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #18
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_release(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %call4 = tail call i32 @ssl_free_wbio_buffer(%struct.ssl_st* noundef nonnull %s) #17
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %4 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  tail call void @BIO_free_all(%struct.bio_st* noundef %4) #18
  store %struct.bio_st* null, %struct.bio_st** %wbio, align 8, !tbaa !168
  %rbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 2
  %5 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !169
  tail call void @BIO_free_all(%struct.bio_st* noundef %5) #18
  store %struct.bio_st* null, %struct.bio_st** %rbio, align 8, !tbaa !169
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !37
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %6) #18
  %cipher_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %7 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !170
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %7) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call7) #18
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %8 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !171
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %8) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call8) #18
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 27
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !81
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call9) #18
  %peer_ciphers = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  %10 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !172
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %10) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call10) #18
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp11.not = icmp eq %struct.ssl_session_st* %11, null
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end3
  %call13 = tail call i32 @ssl_clear_bad_session(%struct.ssl_st* noundef nonnull %s) #18
  %12 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %12) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end3
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %13 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !23
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %13) #18
  %psksession_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 57
  %14 = load i8*, i8** %psksession_id, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1212) #18
  tail call fastcc void @clear_ciphers(%struct.ssl_st* noundef nonnull %s) #17
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %15 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  tail call void @ssl_cert_free(%struct.cert_st* noundef %15) #18
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %16 = bitcast %struct.sigalg_lookup_st*** %shared_sigalgs to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !46
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1217) #18
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %18 = load i8*, i8** %hostname, align 8, !tbaa !173
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1220) #18
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %19) #17
  %ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 12
  %20 = load i8*, i8** %ecpointformats, align 8, !tbaa !127
  tail call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1222) #18
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %21 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !174
  tail call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1223) #18
  %supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 16
  %22 = bitcast i16** %supportedgroups to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !131
  tail call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1224) #18
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %24 = bitcast i16** %peer_supportedgroups to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !175
  tail call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1225) #18
  %exts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 1
  %26 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !121
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %26) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call21, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #18
  %ids = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 0
  %27 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !120
  %call25 = tail call fastcc %struct.stack_st* @ossl_check_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef %27) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call25, void (i8*)* noundef bitcast (void (%struct.ocsp_responder_id_st*)* @OCSP_RESPID_free to void (i8*)*)) #18
  %scts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 93
  %28 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !176
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %28) #18
  %scts28 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 5
  %29 = load i8*, i8** %scts28, align 8, !tbaa !177
  tail call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1232) #18
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %30 = load i8*, i8** %resp, align 8, !tbaa !122
  tail call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1234) #18
  %alpn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 24
  %31 = load i8*, i8** %alpn, align 8, !tbaa !136
  tail call void @CRYPTO_free(i8* noundef %31, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1235) #18
  %tls13_cookie = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 32
  %32 = load i8*, i8** %tls13_cookie, align 8, !tbaa !178
  tail call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1236) #18
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %33 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp33.not = icmp eq %struct.CLIENTHELLO_MSG* %33, null
  br i1 %cmp33.not, label %if.end15.if.end36_crit_edge, label %if.then34

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  %34 = bitcast %struct.CLIENTHELLO_MSG* %33 to i8*
  br label %if.end36

if.then34:                                        ; preds = %if.end15
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %33, i64 0, i32 12
  %35 = bitcast %struct.raw_extension_st** %pre_proc_exts to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !180
  tail call void @CRYPTO_free(i8* noundef %36, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1238) #18
  %.phi.trans.insert = bitcast %struct.CLIENTHELLO_MSG** %clienthello to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !179
  br label %if.end36

if.end36:                                         ; preds = %if.end15.if.end36_crit_edge, %if.then34
  %37 = phi i8* [ %.pre, %if.then34 ], [ %34, %if.end15.if.end36_crit_edge ]
  tail call void @CRYPTO_free(i8* noundef %37, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1239) #18
  %pha_context = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 102
  %38 = load i8*, i8** %pha_context, align 8, !tbaa !183
  tail call void @CRYPTO_free(i8* noundef %38, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1240) #18
  %pha_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 105
  %39 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !40
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %39) #18
  %ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 75
  %40 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names, align 8, !tbaa !184
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %40) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call38, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  %client_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 76
  %41 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !185
  %call40 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %41) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call40, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  %verified_chain = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 72
  %42 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !138
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %42) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call42, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #18
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %43 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %cmp44.not = icmp eq %struct.ssl_method_st* %43, null
  br i1 %cmp44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end36
  %ssl_free = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %43, i64 0, i32 5
  %44 = load void (%struct.ssl_st*)*, void (%struct.ssl_st*)** %ssl_free, align 8, !tbaa !54
  tail call void %44(%struct.ssl_st* noundef nonnull %s) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end36
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %45 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %45) #17
  %waitctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 112
  %46 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  tail call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %46) #18
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %47 = load i8*, i8** %npn, align 8, !tbaa !133
  tail call void @CRYPTO_free(i8* noundef %47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1256) #18
  %srtp_profiles = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 96
  %48 = load %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.stack_st_SRTP_PROTECTION_PROFILE** %srtp_profiles, align 8, !tbaa !187
  %call49 = tail call fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef %48) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call49) #18
  %49 = load i8*, i8** %lock, align 8, !tbaa !60
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %49) #18
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1265) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_is_dtls(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = lshr i32 %2, 3
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @SSL_up_ref(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %references = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 77
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  %1 = load i32, i32* %i, align 4, !tbaa !165
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #7 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_session_id_context(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %sid_ctx, i32 noundef %sid_ctx_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %sid_ctx_len, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 878, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_set_session_id_context, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 273, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i32 %sid_ctx_len to i64
  %sid_ctx_length = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 44
  store i64 %conv, i64* %sid_ctx_length, align 8, !tbaa !99
  %arraydecay = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 45, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %sid_ctx, i64 noundef %conv) #18
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_session_id_context(%struct.ssl_st* noundef %ssl, i8* noundef %sid_ctx, i32 noundef %sid_ctx_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %sid_ctx_len, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 891, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_set_session_id_context, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 273, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i32 %sid_ctx_len to i64
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 53
  store i64 %conv, i64* %sid_ctx_length, align 8, !tbaa !100
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 54, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %sid_ctx, i64 noundef %conv) #18
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_generate_session_id(%struct.ssl_ctx_st* nocapture noundef %ctx, i32 (%struct.ssl_st*, i8*, i32*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 69
  %0 = load i8*, i8** %lock, align 8, !tbaa !191
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %generate_session_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 47
  store i32 (%struct.ssl_st*, i8*, i32*)* %cb, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id, align 8, !tbaa !103
  %1 = load i8*, i8** %lock, align 8, !tbaa !191
  %call2 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_generate_session_id(%struct.ssl_st* nocapture noundef %ssl, i32 (%struct.ssl_st*, i8*, i32*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 120
  %0 = load i8*, i8** %lock, align 8, !tbaa !60
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %generate_session_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 59
  store i32 (%struct.ssl_st*, i8*, i32*)* %cb, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id, align 8, !tbaa !104
  %1 = load i8*, i8** %lock, align 8, !tbaa !60
  %call2 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_has_matching_session_id(%struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %id, i32 noundef %id_len) local_unnamed_addr #0 {
entry:
  %r = alloca %struct.ssl_session_st, align 8
  %0 = bitcast %struct.ssl_session_st* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 928, i8* nonnull %0) #19
  %conv = zext i32 %id_len to i64
  %cmp = icmp ugt i32 %id_len, 32
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !34
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %r, i64 0, i32 0
  store i32 %1, i32* %ssl_version, align 8, !tbaa !192
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %r, i64 0, i32 4
  store i64 %conv, i64* %session_id_length, align 8, !tbaa !195
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %r, i64 0, i32 5, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %id, i64 noundef %conv) #18
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 95
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 69
  %3 = load i8*, i8** %lock, align 8, !tbaa !191
  %call4 = call i32 @CRYPTO_THREAD_read_lock(i8* noundef %3) #18
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 6
  %5 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !196
  %call8 = call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %5, %struct.ssl_session_st* noundef nonnull %r) #17
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %lock10 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 69
  %7 = load i8*, i8** %lock10, align 8, !tbaa !191
  %call11 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #18
  %cmp12 = icmp ne %struct.ssl_session_st* %call8, null
  %conv13 = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %conv13, %if.end6 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 928, i8* nonnull %0) #19
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %lh, %struct.ssl_session_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ssl_session_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #18
  %2 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_purpose(%struct.ssl_ctx_st* nocapture noundef readonly %s, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  %call = tail call i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %purpose) #18
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_purpose(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %purpose) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_trust(%struct.ssl_ctx_st* nocapture noundef readonly %s, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  %call = tail call i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %trust) #18
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_trust(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %trust) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set1_host(%struct.ssl_st* nocapture noundef readonly %s, i8* noundef %hostname) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %hostname, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %0, i8* noundef nonnull %hostname) #18
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %param1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param1, align 8, !tbaa !45
  %call2 = tail call i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* noundef %1, i8* noundef %hostname, i64 noundef 0) #18
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add1_host(%struct.ssl_st* nocapture noundef readonly %s, i8* noundef %hostname) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %hostname, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef nonnull %hostname) #18
  %tobool1.not = icmp eq %struct.asn1_string_st* %call, null
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #18
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call3 = tail call i8* @X509_VERIFY_PARAM_get1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %0) #18
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then2
  tail call void @CRYPTO_free(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 991) #18
  br label %return

if.end:                                           ; preds = %if.then2
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call7 = tail call i32 @X509_VERIFY_PARAM_set1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %1, i8* noundef nonnull %hostname) #18
  br label %return

if.end10:                                         ; preds = %if.then, %entry
  %param11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param11, align 8, !tbaa !45
  %call12 = tail call i32 @X509_VERIFY_PARAM_add1_host(%struct.X509_VERIFY_PARAM_st* noundef %2, i8* noundef %hostname, i64 noundef 0) #18
  br label %return

return:                                           ; preds = %if.end, %if.then5, %if.end10
  %retval.1 = phi i32 [ %call12, %if.end10 ], [ %call7, %if.end ], [ 0, %if.then5 ]
  ret i32 %retval.1
}

declare %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @X509_VERIFY_PARAM_get1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare i32 @X509_VERIFY_PARAM_add1_host(%struct.X509_VERIFY_PARAM_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_hostflags(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  tail call void @X509_VERIFY_PARAM_set_hostflags(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %flags) #18
  ret void
}

declare void @X509_VERIFY_PARAM_set_hostflags(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_get0_peername(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i8* @X509_VERIFY_PARAM_get0_peername(%struct.X509_VERIFY_PARAM_st* noundef %0) #18
  ret i8* %call
}

declare i8* @X509_VERIFY_PARAM_get0_peername(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_dane_enable(%struct.ssl_ctx_st* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  %dane = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 66
  %call = tail call fastcc i32 @dane_ctx_enable(%struct.dane_ctx_st* noundef nonnull %dane) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dane_ctx_enable(%struct.dane_ctx_st* nocapture noundef %dctx) unnamed_addr #0 {
entry:
  %mdevp1 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 0
  %0 = load %struct.evp_md_st**, %struct.evp_md_st*** %mdevp1, align 8, !tbaa !197
  %cmp.not = icmp eq %struct.evp_md_st** %0, null
  br i1 %cmp.not, label %if.end, label %cleanup36

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 123) #18
  %call6 = tail call i8* @CRYPTO_zalloc(i64 noundef 3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #18
  %cmp7 = icmp eq i8* %call6, null
  %cmp9 = icmp eq i8* %call, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %lor.lhs.false17.1

if.then11:                                        ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %call6, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 127) #18
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 128) #18
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dane_ctx_enable, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup36

lor.lhs.false17.1:                                ; preds = %if.end
  %call20.1 = tail call i8* @OBJ_nid2sn(i32 noundef 672) #18
  %call21.1 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call20.1) #18
  %cmp22.1 = icmp eq %struct.evp_md_st* %call21.1, null
  br i1 %cmp22.1, label %lor.lhs.false17.2, label %if.end25.1

if.end25.1:                                       ; preds = %lor.lhs.false17.1
  %arrayidx27.1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %arrayidx27.1 to %struct.evp_md_st**
  store %struct.evp_md_st* %call21.1, %struct.evp_md_st** %1, align 8, !tbaa !198
  %arrayidx32.1 = getelementptr inbounds i8, i8* %call6, i64 1
  store i8 1, i8* %arrayidx32.1, align 1, !tbaa !199
  br label %lor.lhs.false17.2

lor.lhs.false17.2:                                ; preds = %lor.lhs.false17.1, %if.end25.1
  %call20.2 = tail call i8* @OBJ_nid2sn(i32 noundef 674) #18
  %call21.2 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call20.2) #18
  %cmp22.2 = icmp eq %struct.evp_md_st* %call21.2, null
  br i1 %cmp22.2, label %cleanup.2, label %if.end25.2

if.end25.2:                                       ; preds = %lor.lhs.false17.2
  %arrayidx27.2 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %arrayidx27.2 to %struct.evp_md_st**
  store %struct.evp_md_st* %call21.2, %struct.evp_md_st** %2, align 8, !tbaa !198
  %arrayidx32.2 = getelementptr inbounds i8, i8* %call6, i64 2
  store i8 2, i8* %arrayidx32.2, align 1, !tbaa !199
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end25.2, %lor.lhs.false17.2
  %3 = bitcast %struct.dane_ctx_st* %dctx to i8**
  store i8* %call, i8** %3, align 8, !tbaa !197
  %mdord34 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 1
  store i8* %call6, i8** %mdord34, align 8, !tbaa !200
  %mdmax35 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 2
  store i8 2, i8* %mdmax35, align 8, !tbaa !201
  br label %cleanup36

cleanup36:                                        ; preds = %entry, %cleanup.2, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %cleanup.2 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_CTX_dane_set_flags(%struct.ssl_ctx_st* nocapture noundef %ctx, i64 noundef %flags) local_unnamed_addr #8 {
entry:
  %flags1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 66, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !63
  %or = or i64 %0, %flags
  store i64 %or, i64* %flags1, align 8, !tbaa !63
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_CTX_dane_clear_flags(%struct.ssl_ctx_st* nocapture noundef %ctx, i64 noundef %flags) local_unnamed_addr #8 {
entry:
  %flags1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 66, i32 3
  %0 = load i64, i64* %flags1, align 8, !tbaa !63
  %neg = xor i64 %flags, -1
  %and = and i64 %0, %neg
  store i64 %and, i64* %flags1, align 8, !tbaa !63
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_dane_enable(%struct.ssl_st* noundef %s, i8* noundef %basedomain) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %mdmax = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 66, i32 2
  %1 = load i8, i8* %mdmax, align 8, !tbaa !202
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 1
  %2 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %cmp4.not = icmp eq %struct.stack_st_danetls_record* %2, null
  br i1 %cmp4.not, label %if.end7, label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %3 = load i8*, i8** %hostname, align 8, !tbaa !173
  %cmp8 = icmp eq i8* %3, null
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %call = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %s, i32 noundef 55, i64 noundef 0, i8* noundef %basedomain) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %4 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call14 = tail call i32 @X509_VERIFY_PARAM_set1_host(%struct.X509_VERIFY_PARAM_st* noundef %4, i8* noundef %basedomain, i64 noundef 0) #18
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup.sink.split, label %if.end17

if.end17:                                         ; preds = %if.end13
  %mdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 6
  store i32 -1, i32* %mdpth, align 4, !tbaa !204
  %pdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 7
  store i32 -1, i32* %pdpth, align 8, !tbaa !205
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %dane19 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 66
  %dctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 0
  store %struct.dane_ctx_st* %dane19, %struct.dane_ctx_st** %dctx, align 8, !tbaa !206
  %call20 = tail call fastcc %struct.stack_st_danetls_record* @sk_danetls_record_new_null() #17
  store %struct.stack_st_danetls_record* %call20, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %cmp23 = icmp eq %struct.stack_st_danetls_record* %call20, null
  br i1 %cmp23, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end17, %if.end13, %if.then10, %if.end, %entry
  %.sink39 = phi i32 [ 1039, %entry ], [ 1043, %if.end ], [ 1054, %if.then10 ], [ 1061, %if.end13 ], [ 1071, %if.end17 ]
  %.sink = phi i32 [ 167, %entry ], [ 172, %if.end ], [ 204, %if.then10 ], [ 204, %if.end13 ], [ 786688, %if.end17 ]
  %retval.0.ph = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %if.then10 ], [ -1, %if.end13 ], [ -1, %if.end17 ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink39, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SSL_dane_enable, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17
  %retval.0 = phi i32 [ 1, %if.end17 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb1
    i32 16, label %sw.bb8
    i32 33, label %sw.bb9
    i32 78, label %sw.bb13
    i32 50, label %sw.bb18
    i32 51, label %sw.bb19
    i32 52, label %sw.bb23
    i32 125, label %sw.bb37
    i32 126, label %sw.bb47
    i32 76, label %sw.bb61
    i32 99, label %sw.bb63
    i32 100, label %sw.bb68
    i32 110, label %sw.bb76
    i32 122, label %sw.bb90
    i32 123, label %sw.bb104
    i32 130, label %sw.bb112
    i32 124, label %sw.bb115
    i32 131, label %sw.bb131
  ]

sw.bb:                                            ; preds = %entry
  %read_ahead = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  %0 = load i32, i32* %read_ahead, align 8, !tbaa !84
  %conv = sext i32 %0 to i64
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %read_ahead3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  %1 = load i32, i32* %read_ahead3, align 8, !tbaa !84
  %conv4 = sext i32 %1 to i64
  %conv5 = trunc i64 %larg to i32
  store i32 %conv5, i32* %read_ahead3, align 8, !tbaa !84
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  store i8* %parg, i8** %msg_callback_arg, align 8, !tbaa !88
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %2 = load i32, i32* %mode, align 8, !tbaa !70
  %3 = trunc i64 %larg to i32
  %conv11 = or i32 %2, %3
  store i32 %conv11, i32* %mode, align 8, !tbaa !70
  %conv12 = zext i32 %conv11 to i64
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %mode14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %4 = load i32, i32* %mode14, align 8, !tbaa !70
  %5 = trunc i64 %larg to i32
  %6 = xor i32 %5, -1
  %conv16 = and i32 %4, %6
  store i32 %conv16, i32* %mode14, align 8, !tbaa !70
  %conv17 = zext i32 %conv16 to i64
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %max_cert_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %7 = load i64, i64* %max_cert_list, align 8, !tbaa !72
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %cmp = icmp slt i64 %larg, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb19
  %max_cert_list21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %8 = load i64, i64* %max_cert_list21, align 8, !tbaa !72
  store i64 %larg, i64* %max_cert_list21, align 8, !tbaa !72
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %9 = add i64 %larg, -16385
  %10 = icmp ult i64 %9, -15873
  br i1 %10, label %cleanup, label %if.end29

if.end29:                                         ; preds = %sw.bb23
  %max_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 86
  store i64 %larg, i64* %max_send_fragment, align 8, !tbaa !207
  %split_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 85
  %11 = load i64, i64* %split_send_fragment, align 8, !tbaa !208
  %cmp31 = icmp ugt i64 %11, %larg
  br i1 %cmp31, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end29
  store i64 %larg, i64* %split_send_fragment, align 8, !tbaa !208
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %max_send_fragment38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 86
  %12 = load i64, i64* %max_send_fragment38, align 8, !tbaa !207
  %13 = add i64 %larg, -1
  %.not = icmp ult i64 %13, %12
  br i1 %.not, label %if.end45, label %cleanup

if.end45:                                         ; preds = %sw.bb37
  %split_send_fragment46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 85
  store i64 %larg, i64* %split_send_fragment46, align 8, !tbaa !208
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  %14 = add i64 %larg, -33
  %15 = icmp ult i64 %14, -32
  br i1 %15, label %cleanup, label %if.end54

if.end54:                                         ; preds = %sw.bb47
  %max_pipelines = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 87
  store i64 %larg, i64* %max_pipelines, align 8, !tbaa !112
  %cmp55 = icmp ugt i64 %larg, 1
  br i1 %cmp55, label %if.then57, label %cleanup

if.then57:                                        ; preds = %if.end54
  %read_ahead59 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  store i32 1, i32* %read_ahead59, align 8, !tbaa !84
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  %16 = load i32, i32* %send_connection_binding, align 8, !tbaa !209
  %conv62 = sext i32 %16 to i64
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %17 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %17, i64 0, i32 4
  %18 = load i32, i32* %cert_flags, align 4, !tbaa !210
  %19 = trunc i64 %larg to i32
  %conv66 = or i32 %18, %19
  store i32 %conv66, i32* %cert_flags, align 4, !tbaa !210
  %conv67 = zext i32 %conv66 to i64
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  %cert70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %20 = load %struct.cert_st*, %struct.cert_st** %cert70, align 8, !tbaa !82
  %cert_flags71 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %20, i64 0, i32 4
  %21 = load i32, i32* %cert_flags71, align 4, !tbaa !210
  %22 = trunc i64 %larg to i32
  %23 = xor i32 %22, -1
  %conv74 = and i32 %21, %23
  store i32 %conv74, i32* %cert_flags71, align 4, !tbaa !210
  %conv75 = zext i32 %conv74 to i64
  br label %cleanup

sw.bb76:                                          ; preds = %entry
  %tobool.not = icmp eq i8* %parg, null
  br i1 %tobool.not, label %cleanup, label %if.then77

if.then77:                                        ; preds = %sw.bb76
  %ciphers_raw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 20
  %24 = load i8*, i8** %ciphers_raw, align 8, !tbaa !212
  %cmp79 = icmp eq i8* %24, null
  br i1 %cmp79, label %cleanup, label %if.end82

if.end82:                                         ; preds = %if.then77
  %25 = bitcast i8* %parg to i8**
  store i8* %24, i8** %25, align 8, !tbaa !198
  %ciphers_rawlen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 21
  %26 = load i64, i64* %ciphers_rawlen, align 8, !tbaa !213
  %sext = shl i64 %26, 32
  %conv89 = ashr exact i64 %sext, 32
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %27 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %tobool91.not = icmp eq %struct.ssl_session_st* %27, null
  br i1 %tobool91.not, label %cleanup, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %sw.bb90
  %call = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #18
  %tobool93.not = icmp eq i32 %call, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %cleanup

lor.lhs.false94:                                  ; preds = %lor.lhs.false92
  %call95 = tail call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #18
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %cleanup

if.end98:                                         ; preds = %lor.lhs.false94
  %28 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %28, i64 0, i32 30
  %29 = load i32, i32* %flags, align 8, !tbaa !214
  %and100 = and i32 %29, 1
  %30 = zext i32 %and100 to i64
  br label %cleanup

sw.bb104:                                         ; preds = %entry
  %conv105 = trunc i64 %larg to i32
  %max_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %31 = load i32, i32* %max_proto_version, align 8, !tbaa !68
  %call106 = tail call fastcc i32 @ssl_check_allowed_versions(i32 noundef %conv105, i32 noundef %31) #17
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %sw.bb104
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %32, i64 0, i32 1
  %33 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %33, i64 0, i32 0
  %34 = load i32, i32* %version, align 8, !tbaa !32
  %min_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 80
  %call109 = tail call i32 @ssl_set_version_bound(i32 noundef %34, i32 noundef %conv105, i32* noundef nonnull %min_proto_version) #18
  %tobool110 = icmp ne i32 %call109, 0
  %phi.cast203 = zext i1 %tobool110 to i64
  br label %cleanup

sw.bb112:                                         ; preds = %entry
  %min_proto_version113 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 80
  %35 = load i32, i32* %min_proto_version113, align 4, !tbaa !66
  %conv114 = sext i32 %35 to i64
  br label %cleanup

sw.bb115:                                         ; preds = %entry
  %min_proto_version116 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 80
  %36 = load i32, i32* %min_proto_version116, align 4, !tbaa !66
  %conv117 = trunc i64 %larg to i32
  %call118 = tail call fastcc i32 @ssl_check_allowed_versions(i32 noundef %36, i32 noundef %conv117) #17
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %cleanup, label %land.rhs120

land.rhs120:                                      ; preds = %sw.bb115
  %ctx121 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %37 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx121, align 8, !tbaa !48
  %method122 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %37, i64 0, i32 1
  %38 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method122, align 8, !tbaa !49
  %version123 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %38, i64 0, i32 0
  %39 = load i32, i32* %version123, align 8, !tbaa !32
  %max_proto_version125 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %call126 = tail call i32 @ssl_set_version_bound(i32 noundef %39, i32 noundef %conv117, i32* noundef nonnull %max_proto_version125) #18
  %tobool127 = icmp ne i32 %call126, 0
  %phi.cast202 = zext i1 %tobool127 to i64
  br label %cleanup

sw.bb131:                                         ; preds = %entry
  %max_proto_version132 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %40 = load i32, i32* %max_proto_version132, align 8, !tbaa !68
  %conv133 = sext i32 %40 to i64
  br label %cleanup

sw.default:                                       ; preds = %entry
  %method134 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %41 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method134, align 8, !tbaa !4
  %ssl_ctrl = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %41, i64 0, i32 17
  %42 = load i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_st*, i32, i64, i8*)** %ssl_ctrl, align 8, !tbaa !215
  %call135 = tail call i64 %42(%struct.ssl_st* noundef %s, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb115, %land.rhs120, %sw.bb104, %land.rhs, %if.end98, %sw.bb90, %lor.lhs.false92, %lor.lhs.false94, %sw.bb76, %if.then77, %if.end54, %if.then57, %sw.bb47, %sw.bb37, %if.end29, %if.then33, %sw.bb23, %sw.bb19, %sw.default, %sw.bb131, %sw.bb112, %if.end82, %sw.bb68, %sw.bb63, %sw.bb61, %if.end45, %if.end, %sw.bb18, %sw.bb13, %sw.bb9, %sw.bb8, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %call135, %sw.default ], [ %conv133, %sw.bb131 ], [ %conv114, %sw.bb112 ], [ %conv89, %if.end82 ], [ %conv75, %sw.bb68 ], [ %conv67, %sw.bb63 ], [ %conv62, %sw.bb61 ], [ 1, %if.end45 ], [ %8, %if.end ], [ %7, %sw.bb18 ], [ %conv17, %sw.bb13 ], [ %conv12, %sw.bb9 ], [ 1, %sw.bb8 ], [ %conv4, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %sw.bb19 ], [ 0, %sw.bb23 ], [ 1, %if.then33 ], [ 1, %if.end29 ], [ 0, %sw.bb37 ], [ 0, %sw.bb47 ], [ 1, %if.then57 ], [ 1, %if.end54 ], [ 0, %if.then77 ], [ 2, %sw.bb76 ], [ -1, %lor.lhs.false94 ], [ -1, %lor.lhs.false92 ], [ -1, %sw.bb90 ], [ %30, %if.end98 ], [ 0, %sw.bb104 ], [ %phi.cast203, %land.rhs ], [ 0, %sw.bb115 ], [ %phi.cast202, %land.rhs120 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_danetls_record* @sk_danetls_record_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_danetls_record*
  ret %struct.stack_st_danetls_record* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_dane_set_flags(%struct.ssl_st* nocapture noundef %ssl, i64 noundef %flags) local_unnamed_addr #8 {
entry:
  %flags1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 23, i32 8
  %0 = load i64, i64* %flags1, align 8, !tbaa !64
  %or = or i64 %0, %flags
  store i64 %or, i64* %flags1, align 8, !tbaa !64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_dane_clear_flags(%struct.ssl_st* nocapture noundef %ssl, i64 noundef %flags) local_unnamed_addr #8 {
entry:
  %flags1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 23, i32 8
  %0 = load i64, i64* %flags1, align 8, !tbaa !64
  %neg = xor i64 %flags, -1
  %and = and i64 %0, %neg
  store i64 %and, i64* %flags1, align 8, !tbaa !64
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get0_dane_authority(%struct.ssl_st* nocapture noundef readonly %s, %struct.x509_st** noundef writeonly %mcert, %struct.evp_pkey_st** noundef writeonly %mspki) local_unnamed_addr #0 {
entry:
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 1
  %0 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %0) #17
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %1 = load i64, i64* %verify_result, align 8, !tbaa !139
  %cmp3.not = icmp eq i64 %1, 0
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mtlsa = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 3
  %2 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %tobool.not = icmp eq %struct.danetls_record_st* %2, null
  br i1 %tobool.not, label %if.end15, label %if.then4

if.then4:                                         ; preds = %if.end
  %tobool5.not = icmp eq %struct.x509_st** %mcert, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then4
  %mcert7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 4
  %3 = load %struct.x509_st*, %struct.x509_st** %mcert7, align 8, !tbaa !217
  store %struct.x509_st* %3, %struct.x509_st** %mcert, align 8, !tbaa !198
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  %tobool9.not = icmp eq %struct.evp_pkey_st** %mspki, null
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %mcert11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 4
  %4 = load %struct.x509_st*, %struct.x509_st** %mcert11, align 8, !tbaa !217
  %cmp12 = icmp eq %struct.x509_st* %4, null
  br i1 %cmp12, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then10
  %5 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %spki = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %5, i64 0, i32 5
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %spki, align 8, !tbaa !218
  br label %cond.end

cond.end:                                         ; preds = %if.then10, %cond.true
  %cond = phi %struct.evp_pkey_st* [ %6, %cond.true ], [ null, %if.then10 ]
  store %struct.evp_pkey_st* %cond, %struct.evp_pkey_st** %mspki, align 8, !tbaa !198
  br label %if.end15

if.end15:                                         ; preds = %if.end8, %cond.end, %if.end
  %mdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 6
  %7 = load i32, i32* %mdpth, align 4, !tbaa !204
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end15
  %retval.0 = phi i32 [ %7, %if.end15 ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get0_dane_tlsa(%struct.ssl_st* nocapture noundef readonly %s, i8* noundef writeonly %usage, i8* noundef writeonly %selector, i8* noundef writeonly %mtype, i8** noundef writeonly %data, i64* noundef writeonly %dlen) local_unnamed_addr #0 {
entry:
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 1
  %0 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %0) #17
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %1 = load i64, i64* %verify_result, align 8, !tbaa !139
  %cmp3.not = icmp eq i64 %1, 0
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mtlsa = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 3
  %2 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %tobool.not = icmp eq %struct.danetls_record_st* %2, null
  br i1 %tobool.not, label %if.end30, label %if.then4

if.then4:                                         ; preds = %if.end
  %tobool5.not = icmp eq i8* %usage, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then4
  %usage8 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %2, i64 0, i32 0
  %3 = load i8, i8* %usage8, align 8, !tbaa !220
  store i8 %3, i8* %usage, align 1, !tbaa !199
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4
  %tobool10.not = icmp eq i8* %selector, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  %4 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %selector13 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %4, i64 0, i32 1
  %5 = load i8, i8* %selector13, align 1, !tbaa !221
  store i8 %5, i8* %selector, align 1, !tbaa !199
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %tobool15.not = icmp eq i8* %mtype, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  %6 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %mtype18 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %6, i64 0, i32 2
  %7 = load i8, i8* %mtype18, align 2, !tbaa !222
  store i8 %7, i8* %mtype, align 1, !tbaa !199
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %tobool20.not = icmp eq i8** %data, null
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end19
  %8 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %data23 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %8, i64 0, i32 3
  %9 = load i8*, i8** %data23, align 8, !tbaa !223
  store i8* %9, i8** %data, align 8, !tbaa !198
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %tobool25.not = icmp eq i64* %dlen, null
  br i1 %tobool25.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end24
  %10 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %dlen28 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %10, i64 0, i32 4
  %11 = load i64, i64* %dlen28, align 8, !tbaa !224
  store i64 %11, i64* %dlen, align 8, !tbaa !110
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then26, %if.end
  %mdpth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 6
  %12 = load i32, i32* %mdpth, align 4, !tbaa !204
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end30
  %retval.0 = phi i32 [ %12, %if.end30 ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_dane_st* @SSL_get0_dane(%struct.ssl_st* noundef readnone %s) local_unnamed_addr #3 {
entry:
  %dane = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23
  ret %struct.ssl_dane_st* %dane
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_dane_tlsa_add(%struct.ssl_st* nocapture noundef %s, i8 noundef zeroext %usage, i8 noundef zeroext %selector, i8 noundef zeroext %mtype, i8* noundef %data, i64 noundef %dlen) local_unnamed_addr #0 {
entry:
  %dane = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23
  %call = tail call fastcc i32 @dane_tlsa_add(%struct.ssl_dane_st* noundef nonnull %dane, i8 noundef zeroext %usage, i8 noundef zeroext %selector, i8 noundef zeroext %mtype, i8* noundef %data, i64 noundef %dlen) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dane_tlsa_add(%struct.ssl_dane_st* nocapture noundef %dane, i8 noundef zeroext %usage, i8 noundef zeroext %selector, i8 noundef zeroext %mtype, i8* noundef %data, i64 noundef %dlen) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %cert = alloca %struct.x509_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 1
  %0 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %cmp = icmp eq %struct.stack_st_danetls_record* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 175, i8* noundef null) #18
  br label %cleanup174

if.end:                                           ; preds = %entry
  %1 = icmp ult i64 %dlen, 2147483648
  br i1 %1, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 189, i8* noundef null) #18
  br label %cleanup174

if.end8:                                          ; preds = %if.end
  %conv9 = zext i8 %usage to i32
  %cmp10 = icmp ugt i8 %usage, 3
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 184, i8* noundef null) #18
  br label %cleanup174

if.end13:                                         ; preds = %if.end8
  %cmp15 = icmp ugt i8 %selector, 1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 202, i8* noundef null) #18
  br label %cleanup174

if.end18:                                         ; preds = %if.end13
  %cmp20.not = icmp eq i8 %mtype, 0
  br i1 %cmp20.not, label %if.end35, label %if.then22

if.then22:                                        ; preds = %if.end18
  %call = tail call fastcc %struct.evp_md_st* @tlsa_md_get(%struct.ssl_dane_st* noundef nonnull %dane, i8 noundef zeroext %mtype) #17
  %cmp23 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp23, label %if.then25, label %land.lhs.true

if.then25:                                        ; preds = %if.then22
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 200, i8* noundef null) #18
  br label %cleanup174

land.lhs.true:                                    ; preds = %if.then22
  %call30 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call) #18
  %conv31 = sext i32 %call30 to i64
  %cmp32.not = icmp eq i64 %conv31, %dlen
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 192, i8* noundef null) #18
  br label %cleanup174

if.end35:                                         ; preds = %if.end18, %land.lhs.true
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end35
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 203, i8* noundef null) #18
  br label %cleanup174

if.end37:                                         ; preds = %if.end35
  %call38 = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 317) #18
  %2 = bitcast i8* %call38 to %struct.danetls_record_st*
  %cmp39 = icmp eq i8* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup174

if.end42:                                         ; preds = %if.end37
  store i8 %usage, i8* %call38, align 8, !tbaa !220
  %3 = getelementptr inbounds i8, i8* %call38, i64 1
  store i8 %selector, i8* %3, align 1, !tbaa !221
  %4 = getelementptr inbounds i8, i8* %call38, i64 2
  store i8 %mtype, i8* %4, align 2, !tbaa !222
  %call46 = tail call i8* @CRYPTO_malloc(i64 noundef %dlen, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 325) #18
  %data47 = getelementptr inbounds i8, i8* %call38, i64 8
  %5 = bitcast i8* %data47 to i8**
  store i8* %call46, i8** %5, align 8, !tbaa !223
  %cmp49 = icmp eq i8* %call46, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end42
  tail call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup174

if.end52:                                         ; preds = %if.end42
  %call54 = tail call i8* @memcpy(i8* noundef nonnull %call46, i8* noundef nonnull %data, i64 noundef %dlen) #18
  %dlen55 = getelementptr inbounds i8, i8* %call38, i64 16
  %6 = bitcast i8* %dlen55 to i64*
  store i64 %dlen, i64* %6, align 8, !tbaa !224
  br i1 %cmp20.not, label %if.then59, label %if.end119

if.then59:                                        ; preds = %if.end52
  %7 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #19
  store i8* %data, i8** %p, align 8, !tbaa !198
  %8 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #19
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !198
  %9 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #19
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !198
  switch i8 %selector, label %cleanup.thread [
    i8 0, label %sw.bb
    i8 1, label %sw.bb97
  ]

sw.bb:                                            ; preds = %if.then59
  %call62 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %p, i64 noundef %dlen) #18
  %tobool63.not = icmp eq %struct.x509_st* %call62, null
  br i1 %tobool63.not, label %if.then70, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %sw.bb
  %10 = load i8*, i8** %p, align 8, !tbaa !198
  %cmp65 = icmp uge i8* %10, %data
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %data to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp68.not = icmp eq i64 %sub.ptr.sub, %dlen
  %or.cond = select i1 %cmp65, i1 %cmp68.not, i1 false
  br i1 %or.cond, label %if.end71, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false64, %sw.bb
  call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 180, i8* noundef null) #18
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false64
  %11 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !198
  %call72 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %11) #18
  %cmp73 = icmp eq %struct.evp_pkey_st* %call72, null
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 180, i8* noundef null) #18
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %shl = shl nuw i32 1, %conv9
  %and = and i32 %shl, 5
  %cmp78 = icmp eq i32 %and, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end76
  %12 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !198
  call void @X509_free(%struct.x509_st* noundef %12) #18
  br label %cleanup.thread

if.end81:                                         ; preds = %if.end76
  %certs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 2
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !225
  %cmp82 = icmp eq %struct.stack_st_X509* %13, null
  br i1 %cmp82, label %land.lhs.true84, label %lor.lhs.false89

land.lhs.true84:                                  ; preds = %if.end81
  %call85 = call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %14 = bitcast %struct.stack_st_X509** %certs to %struct.stack_st**
  store %struct.stack_st* %call85, %struct.stack_st** %14, align 8, !tbaa !225
  %cmp87 = icmp eq %struct.stack_st* %call85, null
  %15 = bitcast %struct.stack_st* %call85 to %struct.stack_st_X509*
  br i1 %cmp87, label %if.then95, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %land.lhs.true84, %if.end81
  %16 = phi %struct.stack_st_X509* [ %15, %land.lhs.true84 ], [ %13, %if.end81 ]
  %call91 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %16) #17
  %17 = bitcast %struct.x509_st** %cert to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !198
  %call93 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call91, i8* noundef %18) #18
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %cleanup.thread

if.then95:                                        ; preds = %lor.lhs.false89, %land.lhs.true84
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  %19 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !198
  call void @X509_free(%struct.x509_st* noundef %19) #18
  call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  br label %cleanup

sw.bb97:                                          ; preds = %if.then59
  %call99 = call %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef nonnull %pkey, i8** noundef nonnull %p, i64 noundef %dlen) #18
  %tobool100.not = icmp eq %struct.evp_pkey_st* %call99, null
  br i1 %tobool100.not, label %if.then110, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %sw.bb97
  %20 = load i8*, i8** %p, align 8, !tbaa !198
  %cmp102 = icmp uge i8* %20, %data
  %sub.ptr.lhs.cast105 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %data to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %cmp108.not = icmp eq i64 %sub.ptr.sub107, %dlen
  %or.cond251 = select i1 %cmp102, i1 %cmp108.not, i1 false
  br i1 %or.cond251, label %if.end111, label %if.then110

if.then110:                                       ; preds = %lor.lhs.false101, %sw.bb97
  call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 201, i8* noundef null) #18
  br label %cleanup

if.end111:                                        ; preds = %lor.lhs.false101
  %cmp113 = icmp eq i8 %usage, 2
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !198
  br i1 %cmp113, label %if.then115, label %if.else

if.then115:                                       ; preds = %if.end111
  %spki = getelementptr inbounds i8, i8* %call38, i64 24
  %22 = bitcast i8* %spki to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %21, %struct.evp_pkey_st** %22, align 8, !tbaa !218
  br label %cleanup.thread

if.else:                                          ; preds = %if.end111
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %21) #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then115, %if.else, %lor.lhs.false89, %if.then59, %if.then80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #19
  br label %if.end119

cleanup:                                          ; preds = %if.then110, %if.then95, %if.then75, %if.then70
  %retval.0 = phi i32 [ 0, %if.then110 ], [ -1, %if.then95 ], [ 0, %if.then75 ], [ 0, %if.then70 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #19
  br label %cleanup174

if.end119:                                        ; preds = %cleanup.thread, %if.end52
  %23 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call121 = call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %23) #17
  %dctx = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 0
  %cmp122264 = icmp sgt i32 %call121, 0
  br i1 %cmp122264, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end119
  %idxprom158 = zext i8 %mtype to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0265 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %24 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call125 = call fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %24, i32 noundef %i.0265) #17
  %usage126 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call125, i64 0, i32 0
  %25 = load i8, i8* %usage126, align 8, !tbaa !220
  %cmp129 = icmp ugt i8 %25, %usage
  br i1 %cmp129, label %for.inc, label %if.end132

if.end132:                                        ; preds = %for.body
  %cmp136 = icmp ult i8 %25, %usage
  br i1 %cmp136, label %for.end, label %if.end139

if.end139:                                        ; preds = %if.end132
  %selector140 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call125, i64 0, i32 1
  %26 = load i8, i8* %selector140, align 1, !tbaa !221
  %cmp143 = icmp ugt i8 %26, %selector
  br i1 %cmp143, label %for.inc, label %if.end146

if.end146:                                        ; preds = %if.end139
  %cmp150 = icmp ult i8 %26, %selector
  br i1 %cmp150, label %for.end, label %cleanup165

cleanup165:                                       ; preds = %if.end146
  %27 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !206
  %mdord = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %27, i64 0, i32 1
  %28 = load i8*, i8** %mdord, align 8, !tbaa !200
  %mtype154 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call125, i64 0, i32 2
  %29 = load i8, i8* %mtype154, align 2, !tbaa !222
  %idxprom = zext i8 %29 to i64
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !199
  %arrayidx159 = getelementptr inbounds i8, i8* %28, i64 %idxprom158
  %31 = load i8, i8* %arrayidx159, align 1, !tbaa !199
  %cmp161 = icmp ugt i8 %30, %31
  br i1 %cmp161, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end139, %for.body, %cleanup165
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, %call121
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !226

for.end:                                          ; preds = %for.inc, %cleanup165, %if.end132, %if.end146, %if.end119
  %i.0.lcssa = phi i32 [ 0, %if.end119 ], [ %i.0265, %if.end146 ], [ %i.0265, %if.end132 ], [ %i.0265, %cleanup165 ], [ %call121, %for.inc ]
  %32 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call168 = call fastcc i32 @sk_danetls_record_insert(%struct.stack_st_danetls_record* noundef %32, %struct.danetls_record_st* noundef nonnull %2, i32 noundef %i.0.lcssa) #17
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end171

if.then170:                                       ; preds = %for.end
  call void @tlsa_free(%struct.danetls_record_st* noundef nonnull %2) #17
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dane_tlsa_add, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup174

if.end171:                                        ; preds = %for.end
  %shl173 = shl nuw i32 1, %conv9
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 5
  %33 = load i32, i32* %umask, align 8, !tbaa !228
  %or = or i32 %33, %shl173
  store i32 %or, i32* %umask, align 8, !tbaa !228
  br label %cleanup174

cleanup174:                                       ; preds = %cleanup, %if.end171, %if.then170, %if.then51, %if.then41, %if.then36, %if.then34, %if.then25, %if.then17, %if.then12, %if.then7, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ 0, %if.then7 ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %if.then34 ], [ -1, %if.then41 ], [ -1, %if.then51 ], [ 1, %if.end171 ], [ -1, %if.then170 ], [ %retval.0, %cleanup ], [ 0, %if.then36 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_dane_mtype_set(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.evp_md_st* noundef %md, i8 noundef zeroext %mtype, i8 noundef zeroext %ord) local_unnamed_addr #0 {
entry:
  %dane = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 66
  %call = tail call fastcc i32 @dane_mtype_set(%struct.dane_ctx_st* noundef nonnull %dane, %struct.evp_md_st* noundef %md, i8 noundef zeroext %mtype, i8 noundef zeroext %ord) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dane_mtype_set(%struct.dane_ctx_st* nocapture noundef %dctx, %struct.evp_md_st* noundef %md, i8 noundef zeroext %mtype, i8 noundef zeroext %ord) unnamed_addr #0 {
entry:
  %conv = zext i8 %mtype to i32
  %cmp = icmp eq i8 %mtype, 0
  %cmp2 = icmp ne %struct.evp_md_st* %md, null
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dane_mtype_set, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 173, i8* noundef null) #18
  br label %cleanup48

if.end:                                           ; preds = %entry
  %mdmax = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 2
  %0 = load i8, i8* %mdmax, align 8, !tbaa !201
  %cmp6 = icmp ult i8 %0, %mtype
  br i1 %cmp6, label %if.then8, label %if.end37

if.then8:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv, 1
  %1 = bitcast %struct.dane_ctx_st* %dctx to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !197
  %3 = zext i32 %add to i64
  %mul = shl nuw nsw i64 %3, 3
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %2, i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 232) #18
  %4 = bitcast i8* %call to %struct.evp_md_st**
  %cmp12 = icmp eq i8* %call, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then8
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dane_mtype_set, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup48

if.end15:                                         ; preds = %if.then8
  store i8* %call, i8** %1, align 8, !tbaa !197
  %mdord17 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 1
  %5 = load i8*, i8** %mdord17, align 8, !tbaa !200
  %call20 = tail call i8* @CRYPTO_realloc(i8* noundef %5, i64 noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 239) #18
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end15
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dane_mtype_set, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup48

if.end24:                                         ; preds = %if.end15
  store i8* %call20, i8** %mdord17, align 8, !tbaa !200
  %6 = load i8, i8* %mdmax, align 8, !tbaa !201
  %conv27 = zext i8 %6 to i32
  %i.078 = add nuw nsw i32 %conv27, 1
  %cmp3079 = icmp ult i32 %i.078, %conv
  br i1 %cmp3079, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end24
  %7 = zext i8 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  %wide.trip.count = zext i8 %mtype to i64
  %9 = xor i64 %7, -1
  %10 = add nsw i64 %9, %wide.trip.count
  %min.iters.check = icmp ult i64 %10, 4
  br i1 %min.iters.check, label %for.body.preheader85, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %11 = shl nuw nsw i64 %7, 3
  %12 = add nuw nsw i64 %11, 8
  %scevgep = getelementptr i8, i8* %call, i64 %12
  %13 = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep82 = getelementptr i8, i8* %call, i64 %13
  %scevgep83 = getelementptr i8, i8* %call20, i64 %8
  %scevgep84 = getelementptr i8, i8* %call20, i64 %wide.trip.count
  %bound0 = icmp ult i8* %scevgep, %scevgep84
  %bound1 = icmp ult i8* %scevgep83, %scevgep82
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, -4
  %ind.end = add nsw i64 %8, %n.vec
  %14 = add nsw i64 %n.vec, -4
  %15 = lshr exact i64 %14, 2
  %16 = add nuw nsw i64 %15, 1
  %xtraiter = and i64 %16, 3
  %17 = icmp ult i64 %14, 12
  br i1 %17, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %16, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %8, %index
  %18 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %offset.idx
  %19 = bitcast %struct.evp_md_st** %18 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %19, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %20 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %18, i64 2
  %21 = bitcast %struct.evp_md_st** %20 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %21, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %22 = getelementptr inbounds i8, i8* %call20, i64 %offset.idx
  %23 = bitcast i8* %22 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %23, align 1, !tbaa !199, !alias.scope !232
  %24 = getelementptr inbounds i8, i8* %22, i64 2
  %25 = bitcast i8* %24 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %25, align 1, !tbaa !199, !alias.scope !232
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %8, %index.next
  %26 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %offset.idx.1
  %27 = bitcast %struct.evp_md_st** %26 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %27, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %28 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %26, i64 2
  %29 = bitcast %struct.evp_md_st** %28 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %29, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %30 = getelementptr inbounds i8, i8* %call20, i64 %offset.idx.1
  %31 = bitcast i8* %30 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %31, align 1, !tbaa !199, !alias.scope !232
  %32 = getelementptr inbounds i8, i8* %30, i64 2
  %33 = bitcast i8* %32 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %33, align 1, !tbaa !199, !alias.scope !232
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %8, %index.next.1
  %34 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %offset.idx.2
  %35 = bitcast %struct.evp_md_st** %34 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %35, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %36 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %34, i64 2
  %37 = bitcast %struct.evp_md_st** %36 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %37, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %38 = getelementptr inbounds i8, i8* %call20, i64 %offset.idx.2
  %39 = bitcast i8* %38 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %39, align 1, !tbaa !199, !alias.scope !232
  %40 = getelementptr inbounds i8, i8* %38, i64 2
  %41 = bitcast i8* %40 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %41, align 1, !tbaa !199, !alias.scope !232
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %8, %index.next.2
  %42 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %offset.idx.3
  %43 = bitcast %struct.evp_md_st** %42 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %43, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %44 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %42, i64 2
  %45 = bitcast %struct.evp_md_st** %44 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %45, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %46 = getelementptr inbounds i8, i8* %call20, i64 %offset.idx.3
  %47 = bitcast i8* %46 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %47, align 1, !tbaa !199, !alias.scope !232
  %48 = getelementptr inbounds i8, i8* %46, i64 2
  %49 = bitcast i8* %48 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %49, align 1, !tbaa !199, !alias.scope !232
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !234

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %8, %index.epil
  %50 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %offset.idx.epil
  %51 = bitcast %struct.evp_md_st** %50 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %51, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %52 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %50, i64 2
  %53 = bitcast %struct.evp_md_st** %52 to <2 x %struct.evp_md_st*>*
  store <2 x %struct.evp_md_st*> zeroinitializer, <2 x %struct.evp_md_st*>* %53, align 8, !tbaa !198, !alias.scope !229, !noalias !232
  %54 = getelementptr inbounds i8, i8* %call20, i64 %offset.idx.epil
  %55 = bitcast i8* %54 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %55, align 1, !tbaa !199, !alias.scope !232
  %56 = getelementptr inbounds i8, i8* %54, i64 2
  %57 = bitcast i8* %56 to <2 x i8>*
  store <2 x i8> zeroinitializer, <2 x i8>* %57, align 1, !tbaa !199, !alias.scope !232
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !236

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader85

for.body.preheader85:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %8, %vector.memcheck ], [ %8, %for.body.preheader ], [ %ind.end, %middle.block ]
  %58 = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %59 = xor i64 %indvars.iv.ph, -1
  %60 = add i64 %59, %wide.trip.count
  %xtraiter86 = and i64 %58, 3
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader85, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader85 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader85 ]
  %arrayidx.prol = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %indvars.iv.prol
  store %struct.evp_md_st* null, %struct.evp_md_st** %arrayidx.prol, align 8, !tbaa !198
  %arrayidx33.prol = getelementptr inbounds i8, i8* %call20, i64 %indvars.iv.prol
  store i8 0, i8* %arrayidx33.prol, align 1, !tbaa !199
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !238

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader85
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader85 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %61 = icmp ult i64 %60, 3
  br i1 %61, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %indvars.iv
  store %struct.evp_md_st* null, %struct.evp_md_st** %arrayidx, align 8, !tbaa !198
  %arrayidx33 = getelementptr inbounds i8, i8* %call20, i64 %indvars.iv
  store i8 0, i8* %arrayidx33, align 1, !tbaa !199
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %indvars.iv.next
  store %struct.evp_md_st* null, %struct.evp_md_st** %arrayidx.1, align 8, !tbaa !198
  %arrayidx33.1 = getelementptr inbounds i8, i8* %call20, i64 %indvars.iv.next
  store i8 0, i8* %arrayidx33.1, align 1, !tbaa !199
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %indvars.iv.next.1
  store %struct.evp_md_st* null, %struct.evp_md_st** %arrayidx.2, align 8, !tbaa !198
  %arrayidx33.2 = getelementptr inbounds i8, i8* %call20, i64 %indvars.iv.next.1
  store i8 0, i8* %arrayidx33.2, align 1, !tbaa !199
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %4, i64 %indvars.iv.next.2
  store %struct.evp_md_st* null, %struct.evp_md_st** %arrayidx.3, align 8, !tbaa !198
  %arrayidx33.3 = getelementptr inbounds i8, i8* %call20, i64 %indvars.iv.next.2
  store i8 0, i8* %arrayidx33.3, align 1, !tbaa !199
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !239

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %if.end24
  store i8 %mtype, i8* %mdmax, align 8, !tbaa !201
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end
  %mdevp38 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 0
  %62 = load %struct.evp_md_st**, %struct.evp_md_st*** %mdevp38, align 8, !tbaa !197
  %idxprom39 = zext i8 %mtype to i64
  %arrayidx40 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %62, i64 %idxprom39
  store %struct.evp_md_st* %md, %struct.evp_md_st** %arrayidx40, align 8, !tbaa !198
  %cmp41 = icmp eq %struct.evp_md_st* %md, null
  %conv44 = select i1 %cmp41, i8 0, i8 %ord
  %mdord45 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 1
  %63 = load i8*, i8** %mdord45, align 8, !tbaa !200
  %arrayidx47 = getelementptr inbounds i8, i8* %63, i64 %idxprom39
  store i8 %conv44, i8* %arrayidx47, align 1, !tbaa !199
  br label %cleanup48

cleanup48:                                        ; preds = %if.then14, %if.then23, %if.end37, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 1, %if.end37 ], [ -1, %if.then23 ], [ -1, %if.then14 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set1_param(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  %call = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %0, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #18
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set1_param(%struct.ssl_st* nocapture noundef readonly %ssl, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %0, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_VERIFY_PARAM_st* @SSL_CTX_get0_param(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  ret %struct.X509_VERIFY_PARAM_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_VERIFY_PARAM_st* @SSL_get0_param(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  ret %struct.X509_VERIFY_PARAM_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_certs_clear(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  tail call void @ssl_cert_clear_certs(%struct.cert_st* noundef %0) #18
  ret void
}

declare void @ssl_cert_clear_certs(%struct.cert_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #7 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !165
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dane_final(%struct.ssl_dane_st* nocapture noundef %dane) unnamed_addr #0 {
entry:
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 1
  %0 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  tail call fastcc void @sk_danetls_record_pop_free(%struct.stack_st_danetls_record* noundef %0) #17
  store %struct.stack_st_danetls_record* null, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %certs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !225
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #18
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !225
  %mcert = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 4
  %2 = load %struct.x509_st*, %struct.x509_st** %mcert, align 8, !tbaa !217
  tail call void @X509_free(%struct.x509_st* noundef %2) #18
  store %struct.x509_st* null, %struct.x509_st** %mcert, align 8, !tbaa !217
  %mtlsa = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 3
  store %struct.danetls_record_st* null, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 6
  store i32 -1, i32* %mdpth, align 4, !tbaa !204
  %pdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 7
  store i32 -1, i32* %pdpth, align 8, !tbaa !205
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare void @RECORD_LAYER_release(%struct.record_layer_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_free_wbio_buffer(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %bbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 4
  %0 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8, !tbaa !240
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %1 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  %call = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %1) #18
  store %struct.bio_st* %call, %struct.bio_st** %wbio, align 8, !tbaa !168
  %2 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8, !tbaa !240
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %2) #18
  store %struct.bio_st* null, %struct.bio_st** %bbio, align 8, !tbaa !240
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i32 1
}

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ssl_cert_free(%struct.cert_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %a) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %cmp = icmp eq %struct.ssl_ctx_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 16
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 69
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  %1 = load i32, i32* %i, align 4, !tbaa !165
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 48
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %2) #18
  %dane = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 66
  tail call fastcc void @dane_ctx_final(%struct.dane_ctx_st* noundef nonnull %dane) #17
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 6
  %3 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !196
  %cmp4.not = icmp eq %struct.lhash_st_SSL_SESSION* %3, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @SSL_CTX_flush_sessions(%struct.ssl_ctx_st* noundef nonnull %a, i64 noundef 0) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %4 = bitcast %struct.ssl_ctx_st* %a to i8*
  %ex_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 26
  tail call void @CRYPTO_free_ex_data(i32 noundef 1, i8* noundef %4, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #18
  %5 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !196
  tail call fastcc void @lh_SSL_SESSION_free(%struct.lhash_st_SSL_SESSION* noundef %5) #17
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 5
  %6 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %6) #18
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 50
  %7 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  tail call void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef %7) #18
  %cipher_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 2
  %8 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !243
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %8) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call8) #18
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 3
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !244
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call9) #18
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 4
  %10 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !57
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %10) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call10) #18
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 39
  %11 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  tail call void @ssl_cert_free(%struct.cert_st* noundef %11) #18
  %ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 32
  %12 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names, align 8, !tbaa !245
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %12) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call11, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  %client_ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 33
  %13 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !246
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %13) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call13, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  %extra_certs = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 29
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extra_certs, align 8, !tbaa !247
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %14) #17
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call15, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #18
  %comp_methods = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 30
  store %struct.stack_st_SSL_COMP* null, %struct.stack_st_SSL_COMP** %comp_methods, align 8, !tbaa !248
  %srtp_profiles = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 67
  %15 = load %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.stack_st_SRTP_PROTECTION_PROFILE** %srtp_profiles, align 8, !tbaa !249
  %call17 = tail call fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef %15) #17
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call17) #18
  %call18 = tail call i32 @ssl_ctx_srp_ctx_free_intern(%struct.ssl_ctx_st* noundef nonnull %a) #18
  %client_cert_engine = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 57
  %16 = load %struct.engine_st*, %struct.engine_st** %client_cert_engine, align 8, !tbaa !250
  tail call void @tls_engine_finish(%struct.engine_st* noundef %16) #18
  %ecpointformats = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 60, i32 11
  %17 = load i8*, i8** %ecpointformats, align 8, !tbaa !125
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3443) #18
  %supportedgroups = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 60, i32 13
  %18 = bitcast i16** %supportedgroups to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !129
  tail call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3444) #18
  %supported_groups_default = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 60, i32 14
  %20 = bitcast i16** %supported_groups_default to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !251
  tail call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3445) #18
  %alpn = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 60, i32 18
  %22 = load i8*, i8** %alpn, align 8, !tbaa !134
  tail call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3446) #18
  %secure = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 60, i32 3
  %23 = bitcast %struct.ssl_ctx_ext_secure_st** %secure to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !252
  tail call void @CRYPTO_secure_free(i8* noundef %24, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3447) #18
  %md5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 27
  %25 = load %struct.evp_md_st*, %struct.evp_md_st** %md5, align 8, !tbaa !253
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %25) #17
  %sha1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 28
  %26 = load %struct.evp_md_st*, %struct.evp_md_st** %sha1, align 8, !tbaa !254
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %26) #17
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 0
  %27 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %27) #17
  %arrayidx.1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 1
  %28 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.1, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %28) #17
  %arrayidx.2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 2
  %29 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.2, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %29) #17
  %arrayidx.3 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 3
  %30 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.3, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %30) #17
  %arrayidx.4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 4
  %31 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.4, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %31) #17
  %arrayidx.5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 5
  %32 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.5, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %32) #17
  %arrayidx.6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 6
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.6, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %33) #17
  %arrayidx.7 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 7
  %34 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.7, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %34) #17
  %arrayidx.8 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 8
  %35 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.8, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %35) #17
  %arrayidx.9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 9
  %36 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.9, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %36) #17
  %arrayidx.10 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 10
  %37 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.10, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %37) #17
  %arrayidx.11 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 11
  %38 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.11, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %38) #17
  %arrayidx.12 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 12
  %39 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.12, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %39) #17
  %arrayidx.13 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 13
  %40 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.13, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %40) #17
  %arrayidx.14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 14
  %41 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.14, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %41) #17
  %arrayidx.15 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 15
  %42 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.15, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %42) #17
  %arrayidx.16 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 16
  %43 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.16, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %43) #17
  %arrayidx.17 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 17
  %44 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.17, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %44) #17
  %arrayidx.18 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 18
  %45 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.18, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %45) #17
  %arrayidx.19 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 19
  %46 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.19, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %46) #17
  %arrayidx.20 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 20
  %47 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.20, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %47) #17
  %arrayidx.21 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 21
  %48 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.21, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %48) #17
  %arrayidx.22 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 22
  %49 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.22, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %49) #17
  %arrayidx.23 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 87, i64 23
  %50 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx.23, align 8, !tbaa !198
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %50) #17
  %arrayidx27 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 0
  %51 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %51) #17
  %arrayidx27.1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 1
  %52 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.1, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %52) #17
  %arrayidx27.2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 2
  %53 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.2, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %53) #17
  %arrayidx27.3 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 3
  %54 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.3, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %54) #17
  %arrayidx27.4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 4
  %55 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.4, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %55) #17
  %arrayidx27.5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 5
  %56 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.5, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %56) #17
  %arrayidx27.6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 6
  %57 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.6, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %57) #17
  %arrayidx27.7 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 7
  %58 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.7, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %58) #17
  %arrayidx27.8 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 8
  %59 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.8, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %59) #17
  %arrayidx27.9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 9
  %60 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.9, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %60) #17
  %arrayidx27.10 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 10
  %61 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.10, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %61) #17
  %arrayidx27.11 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 11
  %62 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.11, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %62) #17
  %arrayidx27.12 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 12
  %63 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.12, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %63) #17
  %arrayidx27.13 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 88, i64 13
  %64 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx27.13, align 8, !tbaa !198
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %64) #17
  %group_list_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 92
  %65 = load i64, i64* %group_list_len, align 8, !tbaa !255
  %cmp3298.not = icmp eq i64 %65, 0
  br i1 %cmp3298.not, label %for.end41, label %for.body33.lr.ph

for.body33.lr.ph:                                 ; preds = %if.end6
  %group_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 91
  br label %for.body33

for.body33:                                       ; preds = %for.body33.lr.ph, %for.body33
  %j.299 = phi i64 [ 0, %for.body33.lr.ph ], [ %inc40, %for.body33 ]
  %66 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !256
  %tlsname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %66, i64 %j.299, i32 0
  %67 = load i8*, i8** %tlsname, align 8, !tbaa !257
  tail call void @CRYPTO_free(i8* noundef %67, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3457) #18
  %68 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !256
  %realname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %68, i64 %j.299, i32 1
  %69 = load i8*, i8** %realname, align 8, !tbaa !259
  tail call void @CRYPTO_free(i8* noundef %69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3458) #18
  %70 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !256
  %algorithm = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %70, i64 %j.299, i32 2
  %71 = load i8*, i8** %algorithm, align 8, !tbaa !260
  tail call void @CRYPTO_free(i8* noundef %71, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3459) #18
  %inc40 = add nuw i64 %j.299, 1
  %72 = load i64, i64* %group_list_len, align 8, !tbaa !255
  %cmp32 = icmp ult i64 %inc40, %72
  br i1 %cmp32, label %for.body33, label %for.end41, !llvm.loop !261

for.end41:                                        ; preds = %for.body33, %if.end6
  %group_list42 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 91
  %73 = bitcast %struct.tls_group_info_st** %group_list42 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !256
  tail call void @CRYPTO_free(i8* noundef %74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3461) #18
  %sigalg_lookup_cache = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 90
  %75 = bitcast %struct.sigalg_lookup_st** %sigalg_lookup_cache to i8**
  %76 = load i8*, i8** %75, align 8, !tbaa !262
  tail call void @CRYPTO_free(i8* noundef %76, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3463) #18
  %77 = load i8*, i8** %lock, align 8, !tbaa !191
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %77) #18
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %a, i64 0, i32 85
  %78 = load i8*, i8** %propq, align 8, !tbaa !263
  tail call void @CRYPTO_free(i8* noundef %78, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3467) #18
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3469) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OCSP_RESPID_sk_type(%struct.stack_st_OCSP_RESPID* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_RESPID* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OCSP_RESPID_free(%struct.ocsp_responder_id_st* noundef) #1

declare void @SCT_LIST_free(%struct.stack_st_SCT* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SRTP_PROTECTION_PROFILE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set0_rbio(%struct.ssl_st* nocapture noundef %s, %struct.bio_st* noundef %rbio) local_unnamed_addr #0 {
entry:
  %rbio1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %rbio1, align 8, !tbaa !169
  tail call void @BIO_free_all(%struct.bio_st* noundef %0) #18
  store %struct.bio_st* %rbio, %struct.bio_st** %rbio1, align 8, !tbaa !169
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set0_wbio(%struct.ssl_st* nocapture noundef %s, %struct.bio_st* noundef %wbio) local_unnamed_addr #0 {
entry:
  %bbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 4
  %0 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8, !tbaa !240
  %cmp.not = icmp eq %struct.bio_st* %0, null
  %wbio3.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %.pre = load %struct.bio_st*, %struct.bio_st** %wbio3.phi.trans.insert, align 8, !tbaa !168
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %.pre) #18
  store %struct.bio_st* %call, %struct.bio_st** %wbio3.phi.trans.insert, align 8, !tbaa !168
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.bio_st* [ %call, %if.then ], [ %.pre, %entry ]
  %wbio3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  tail call void @BIO_free_all(%struct.bio_st* noundef %1) #18
  store %struct.bio_st* %wbio, %struct.bio_st** %wbio3, align 8, !tbaa !168
  %2 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8, !tbaa !240
  %cmp6.not = icmp eq %struct.bio_st* %2, null
  br i1 %cmp6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  %call10 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %2, %struct.bio_st* noundef %wbio) #18
  store %struct.bio_st* %call10, %struct.bio_st** %wbio3, align 8, !tbaa !168
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  ret void
}

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_bio(%struct.ssl_st* nocapture noundef %s, %struct.bio_st* noundef %rbio, %struct.bio_st* noundef %wbio) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %cmp = icmp eq %struct.bio_st* %call, %rbio
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #17
  %cmp2 = icmp eq %struct.bio_st* %call1, %wbio
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp3.not = icmp ne %struct.bio_st* %rbio, null
  %cmp5 = icmp eq %struct.bio_st* %rbio, %wbio
  %or.cond = and i1 %cmp3.not, %cmp5
  br i1 %or.cond, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %rbio) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %call9 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %cmp10 = icmp eq %struct.bio_st* %call9, %rbio
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @SSL_set0_wbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %wbio) #17
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #17
  %cmp14 = icmp eq %struct.bio_st* %call13, %wbio
  br i1 %cmp14, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %if.end12
  %call16 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %call17 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #17
  %cmp18.not = icmp eq %struct.bio_st* %call16, %call17
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true15
  tail call void @SSL_set0_rbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %rbio) #17
  br label %return

if.end20:                                         ; preds = %land.lhs.true15, %if.end12
  tail call void @SSL_set0_rbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %rbio) #17
  tail call void @SSL_set0_wbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef %wbio) #17
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end20, %if.then19, %if.then11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %rbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !169
  ret %struct.bio_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %bbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 4
  %0 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8, !tbaa !240
  %cmp.not = icmp eq %struct.bio_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %0) #18
  br label %return

if.end:                                           ; preds = %entry
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %1 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_st* [ %call, %if.then ], [ %1, %if.end ]
  ret %struct.bio_st* %retval.0
}

declare i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_fd(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_get_rfd(%struct.ssl_st* noundef %s) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_rfd(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 -1, i32* %ret, align 4, !tbaa !165
  %call = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %call1 = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %call, i32 noundef 256) #18
  %cmp.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 105, i64 noundef 0, i8* noundef nonnull %0) #18
  %.pre = load i32, i32* %ret, align 4, !tbaa !165
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %1
}

declare %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_wfd(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 -1, i32* %ret, align 4, !tbaa !165
  %call = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #17
  %call1 = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %call, i32 noundef 256) #18
  %cmp.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 105, i64 noundef 0, i8* noundef nonnull %0) #18
  %.pre = load i32, i32* %ret, align 4, !tbaa !165
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_fd(%struct.ssl_st* nocapture noundef %s, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_socket() #18
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #18
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.SSL_set_fd, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #18
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 104, i64 noundef 0, i32 noundef %fd) #18
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call1) #17
  br label %err

err:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %ret.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_socket() local_unnamed_addr #1

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_wfd(%struct.ssl_st* nocapture noundef %s, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %call) #18
  %cmp2.not = icmp eq i32 %call1, 1285
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 105, i64 noundef 0, i8* noundef null) #18
  %conv = trunc i64 %call4 to i32
  %cmp5.not = icmp eq i32 %conv, %fd
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %call7 = tail call %struct.bio_method_st* @BIO_s_socket() #18
  %call8 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call7) #18
  %cmp9 = icmp eq %struct.bio_st* %call8, null
  br i1 %cmp9, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1413, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.SSL_set_wfd, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #18
  br label %cleanup15

cleanup:                                          ; preds = %if.then
  %call12 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call8, i32 noundef 104, i64 noundef 0, i32 noundef %fd) #18
  tail call void @SSL_set0_wbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef nonnull %call8) #17
  br label %cleanup15

if.else:                                          ; preds = %lor.lhs.false3
  %call13 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call) #18
  tail call void @SSL_set0_wbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef nonnull %call) #17
  br label %cleanup15

cleanup15:                                        ; preds = %if.else, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 1, %cleanup ], [ 1, %if.else ]
  ret i32 %retval.1
}

declare i32 @BIO_method_type(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_rfd(%struct.ssl_st* nocapture noundef %s, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #17
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %call) #18
  %cmp2.not = icmp eq i32 %call1, 1285
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 105, i64 noundef 0, i8* noundef null) #18
  %conv = trunc i64 %call4 to i32
  %cmp5.not = icmp eq i32 %conv, %fd
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %call7 = tail call %struct.bio_method_st* @BIO_s_socket() #18
  %call8 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call7) #18
  %cmp9 = icmp eq %struct.bio_st* %call8, null
  br i1 %cmp9, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1443, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.SSL_set_rfd, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #18
  br label %cleanup15

cleanup:                                          ; preds = %if.then
  %call12 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call8, i32 noundef 104, i64 noundef 0, i32 noundef %fd) #18
  tail call void @SSL_set0_rbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef nonnull %call8) #17
  br label %cleanup15

if.else:                                          ; preds = %lor.lhs.false3
  %call13 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call) #18
  tail call void @SSL_set0_rbio(%struct.ssl_st* noundef %s, %struct.bio_st* noundef nonnull %call) #17
  br label %cleanup15

cleanup15:                                        ; preds = %if.else, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 1, %cleanup ], [ 1, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_get_finished(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %0 = load i64, i64* %finish_md_len, align 8, !tbaa !264
  %cmp = icmp ult i64 %0, %count
  %spec.select = select i1 %cmp, i64 %0, i64 %count
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 0, i64 0
  %call = tail call i8* @memcpy(i8* noundef %buf, i8* noundef nonnull %arraydecay, i64 noundef %spec.select) #18
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_get_peer_finished(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %0 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !265
  %cmp = icmp ult i64 %0, %count
  %spec.select = select i1 %cmp, i64 %0, i64 %count
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 2, i64 0
  %call = tail call i8* @memcpy(i8* noundef %buf, i8* noundef nonnull %arraydecay, i64 noundef %spec.select) #18
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_verify_mode(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %0 = load i32, i32* %verify_mode, align 8, !tbaa !90
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_verify_depth(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %call = tail call i32 @X509_VERIFY_PARAM_get_depth(%struct.X509_VERIFY_PARAM_st* noundef %0) #18
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_get_depth(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i32, %struct.x509_store_ctx_st*)* @SSL_get_verify_callback(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %verify_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 63
  %0 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_callback, align 8, !tbaa !102
  ret i32 (i32, %struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_get_verify_mode(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %verify_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 43
  %0 = load i32, i32* %verify_mode, align 8, !tbaa !89
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_get_verify_depth(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  %call = tail call i32 @X509_VERIFY_PARAM_get_depth(%struct.X509_VERIFY_PARAM_st* noundef %0) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i32, %struct.x509_store_ctx_st*)* @SSL_CTX_get_verify_callback(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %default_verify_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 46
  %0 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %default_verify_callback, align 8, !tbaa !101
  ret i32 (i32, %struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_verify(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %mode, i32 (i32, %struct.x509_store_ctx_st*)* noundef %callback) local_unnamed_addr #9 {
entry:
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  store i32 %mode, i32* %verify_mode, align 8, !tbaa !90
  %cmp.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %callback, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %verify_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 63
  store i32 (i32, %struct.x509_store_ctx_st*)* %callback, i32 (i32, %struct.x509_store_ctx_st*)** %verify_callback, align 8, !tbaa !102
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_verify_depth(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %depth) #18
  ret void
}

declare void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_read_ahead(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %yes) local_unnamed_addr #9 {
entry:
  %read_ahead = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  store i32 %yes, i32* %read_ahead, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_read_ahead(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %read_ahead = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  %0 = load i32, i32* %read_ahead, align 8, !tbaa !84
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_pending(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_pending = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 21
  %1 = load i64 (%struct.ssl_st*)*, i64 (%struct.ssl_st*)** %ssl_pending, align 8, !tbaa !266
  %call = tail call i64 %1(%struct.ssl_st* noundef %s) #18
  %2 = icmp ult i64 %call, 2147483647
  %cond4 = select i1 %2, i64 %call, i64 2147483647
  %3 = trunc i64 %cond4 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_has_pending(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call = tail call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #1

declare i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @SSL_get1_peer_certificate(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %s) #17
  %cmp.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %call) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.x509_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp1, label %return, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 11
  %1 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !267
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %retval.0 = phi %struct.x509_st* [ %1, %if.else ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* @SSL_get_peer_cert_chain(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp1, label %if.end, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %peer_chain = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 12
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain, align 8, !tbaa !268
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %r.0 = phi %struct.stack_st_X509* [ %1, %if.else ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.stack_st_X509* %r.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_copy_session_id(%struct.ssl_st* noundef %t, %struct.ssl_st* noundef %f) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %call = tail call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %f) #18
  %call1 = tail call i32 @SSL_set_session(%struct.ssl_st* noundef %t, %struct.ssl_session_st* noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %t, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %method2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %f, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method2, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ssl_method_st* %1, %2
  br i1 %cmp.not, label %if.end12, label %if.then3

if.then3:                                         ; preds = %if.end
  %ssl_free = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 5
  %3 = load void (%struct.ssl_st*)*, void (%struct.ssl_st*)** %ssl_free, align 8, !tbaa !54
  tail call void %3(%struct.ssl_st* noundef nonnull %t) #18
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method2, align 8, !tbaa !4
  store %struct.ssl_method_st* %4, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_new = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 3
  %5 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_new, align 8, !tbaa !55
  %call8 = tail call i32 %5(%struct.ssl_st* noundef nonnull %t) #18
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %f, i64 0, i32 49
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %references = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 21
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  %cert15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %t, i64 0, i32 49
  %7 = load %struct.cert_st*, %struct.cert_st** %cert15, align 8, !tbaa !82
  tail call void @ssl_cert_free(%struct.cert_st* noundef %7) #18
  %8 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  store %struct.cert_st* %8, %struct.cert_st** %cert15, align 8, !tbaa !82
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %f, i64 0, i32 54, i64 0
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %f, i64 0, i32 53
  %9 = load i64, i64* %sid_ctx_length, align 8, !tbaa !100
  %conv = trunc i64 %9 to i32
  %call18 = tail call i32 @SSL_set_session_id_context(%struct.ssl_st* noundef nonnull %t, i8* noundef nonnull %arraydecay, i32 noundef %conv) #17
  %tobool19.not = icmp ne i32 %call18, 0
  %. = zext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ %., %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

declare i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #1

declare %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  %cmp1 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1636, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_CTX_check_private_key, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 177, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !272
  %cmp4 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1640, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_CTX_check_private_key, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 190, i8* noundef null) #18
  br label %return

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %2, %struct.evp_pkey_st* noundef nonnull %3) #18
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %call, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_check_private_key(%struct.ssl_st* noundef readonly %ssl) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %ssl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1651, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SSL_check_private_key, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  %cmp1 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1655, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SSL_check_private_key, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 177, i8* noundef null) #18
  br label %return

if.end3:                                          ; preds = %if.end
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !272
  %cmp6 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1659, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SSL_check_private_key, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 190, i8* noundef null) #18
  br label %return

if.end8:                                          ; preds = %if.end3
  %call = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %2, %struct.evp_pkey_st* noundef nonnull %3) #18
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then7 ], [ %call, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_waiting_for_async(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %job = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 111
  %0 = load %struct.async_job_st*, %struct.async_job_st** %job, align 8, !tbaa !162
  %tobool.not = icmp ne %struct.async_job_st* %0, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_all_async_fds(%struct.ssl_st* nocapture noundef readonly %s, i32* noundef %fds, i64* noundef %numfds) local_unnamed_addr #0 {
entry:
  %waitctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 112
  %0 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  %cmp = icmp eq %struct.async_wait_ctx_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef nonnull %0, i32* noundef %fds, i64* noundef %numfds) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef, i32* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_changed_async_fds(%struct.ssl_st* nocapture noundef readonly %s, i32* noundef %addfd, i64* noundef %numaddfds, i32* noundef %delfd, i64* noundef %numdelfds) local_unnamed_addr #0 {
entry:
  %waitctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 112
  %0 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  %cmp = icmp eq %struct.async_wait_ctx_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef nonnull %0, i32* noundef %addfd, i64* noundef %numaddfds, i32* noundef %delfd, i64* noundef %numdelfds) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASYNC_WAIT_CTX_get_changed_fds(%struct.async_wait_ctx_st* noundef, i32* noundef, i64* noundef, i32* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_async_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*)* noundef %callback) local_unnamed_addr #9 {
entry:
  %async_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 83
  store i32 (%struct.ssl_st*, i8*)* %callback, i32 (%struct.ssl_st*, i8*)** %async_cb, align 8, !tbaa !158
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_async_callback_arg(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %async_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 84
  store i8* %arg, i8** %async_cb_arg, align 8, !tbaa !160
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_async_callback(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, i8*)* noundef %callback) local_unnamed_addr #9 {
entry:
  %async_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 126
  store i32 (%struct.ssl_st*, i8*)* %callback, i32 (%struct.ssl_st*, i8*)** %async_cb, align 8, !tbaa !159
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_async_callback_arg(%struct.ssl_st* nocapture noundef writeonly %s, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %async_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 127
  store i8* %arg, i8** %async_cb_arg, align 8, !tbaa !161
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_async_status(%struct.ssl_st* nocapture noundef readonly %s, i32* nocapture noundef writeonly %status) local_unnamed_addr #0 {
entry:
  %waitctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 112
  %0 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  %cmp = icmp eq %struct.async_wait_ctx_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASYNC_WAIT_CTX_get_status(%struct.async_wait_ctx_st* noundef nonnull %0) #18
  store i32 %call, i32* %status, align 4, !tbaa !165
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASYNC_WAIT_CTX_get_status(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_accept(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %s) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef nonnull %s) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_accept_state(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  store i32 1, i32* %server, align 8, !tbaa !149
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown, align 4, !tbaa !30
  tail call void @ossl_statem_clear(%struct.ssl_st* noundef %s) #18
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_accept = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 6
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_accept, align 8, !tbaa !148
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  store i32 (%struct.ssl_st*)* %1, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  tail call fastcc void @clear_ciphers(%struct.ssl_st* noundef %s) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_do_handshake(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.ssl_async_args, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3877, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.SSL_do_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 144, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ossl_statem_check_finish_init(%struct.ssl_st* noundef nonnull %s, i32 noundef -1) #18
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_renegotiate_check = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 13
  %2 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %ssl_renegotiate_check, align 8, !tbaa !274
  %call = tail call i32 %2(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #18
  %call1 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #18
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %3 = load i32, i32* %mode, align 8, !tbaa !70
  %and = and i32 %3, 256
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %call6 = tail call %struct.async_job_st* @ASYNC_get_current_job() #18
  %cmp7 = icmp eq %struct.async_job_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %4 = bitcast %struct.ssl_async_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #19
  %s9 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s9, align 8, !tbaa !275
  %call10 = call fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef nonnull %s, %struct.ssl_async_args* noundef nonnull %args, i32 (i8*)* noundef nonnull @ssl_do_handshake_intern) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #19
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.then4
  %5 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %call12 = tail call i32 %5(%struct.ssl_st* noundef nonnull %s) #18
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.else, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call10, %if.then8 ], [ %call12, %if.else ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_connect(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %s) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef nonnull %s) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_connect_state(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  store i32 0, i32* %server, align 8, !tbaa !149
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown, align 4, !tbaa !30
  tail call void @ossl_statem_clear(%struct.ssl_st* noundef %s) #18
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_connect = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 7
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_connect, align 8, !tbaa !277
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  store i32 (%struct.ssl_st*)* %1, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  tail call fastcc void @clear_ciphers(%struct.ssl_st* noundef %s) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_get_default_timeout(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %get_timeout = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 24
  %1 = load i64 ()*, i64 ()** %get_timeout, align 8, !tbaa !278
  %call = tail call i64 %1() #18
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.ssl_async_args, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1821, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ssl_read_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 276, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown, align 4, !tbaa !30
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !36
  br label %return

if.end2:                                          ; preds = %if.end
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %2 = load i32, i32* %early_data_state, align 4, !tbaa !279
  switch i32 %2, label %if.end7 [
    i32 1, label %if.then6
    i32 8, label %if.then6
  ]

if.then6:                                         ; preds = %if.end2, %if.end2
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1832, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ssl_read_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %return

if.end7:                                          ; preds = %if.end2
  tail call void @ossl_statem_check_finish_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #18
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %3 = load i32, i32* %mode, align 8, !tbaa !70
  %and8 = and i32 %3, 256
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #18
  %cmp10 = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %4 = bitcast %struct.ssl_async_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #19
  %s12 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s12, align 8, !tbaa !275
  %buf13 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 1
  store i8* %buf, i8** %buf13, align 8, !tbaa !280
  %num14 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 2
  store i64 %num, i64* %num14, align 8, !tbaa !281
  %type = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 3
  store i32 0, i32* %type, align 8, !tbaa !282
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_read = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 8
  %6 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_read, align 8, !tbaa !283
  %func_read = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 4, i32 0
  store i32 (%struct.ssl_st*, i8*, i64, i64*)* %6, i32 (%struct.ssl_st*, i8*, i64, i64*)** %func_read, align 8, !tbaa !199
  %call15 = call fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef nonnull %s, %struct.ssl_async_args* noundef nonnull %args, i32 (i8*)* noundef nonnull @ssl_io_intern) #17
  %asyncrw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 113
  %7 = load i64, i64* %asyncrw, align 8, !tbaa !284
  store i64 %7, i64* %readbytes, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #19
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end7
  %method16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method16, align 8, !tbaa !4
  %ssl_read17 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 8
  %9 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_read17, align 8, !tbaa !283
  %call18 = tail call i32 %9(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) #18
  br label %return

return:                                           ; preds = %if.else, %if.then11, %if.then6, %if.then1, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then1 ], [ 0, %if.then6 ], [ %call15, %if.then11 ], [ %call18, %if.else ]
  ret i32 %retval.0
}

declare void @ossl_statem_check_finish_init(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.async_job_st* @ASYNC_get_current_job() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef %s, %struct.ssl_async_args* noundef %args, i32 (i8*)* noundef %func) unnamed_addr #0 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %waitctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 112
  %1 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  %cmp = icmp eq %struct.async_wait_ctx_st* %1, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #18
  store %struct.async_wait_ctx_st* %call, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  %cmp3 = icmp eq %struct.async_wait_ctx_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %async_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 126
  %2 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %async_cb, align 8, !tbaa !159
  %cmp5.not = icmp eq i32 (%struct.ssl_st*, i8*)* %2, null
  br i1 %cmp5.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = bitcast %struct.ssl_st* %s to i8*
  %call7 = tail call i32 @ASYNC_WAIT_CTX_set_callback(%struct.async_wait_ctx_st* noundef nonnull %call, i32 (i8*)* noundef nonnull @ssl_async_wait_ctx_cb, i8* noundef %3) #18
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %waitctx, align 8, !tbaa !186
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end, %entry
  %4 = phi %struct.async_wait_ctx_st* [ %.pre, %land.lhs.true.if.end10_crit_edge ], [ %call, %if.end ], [ %1, %entry ]
  %job = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 111
  %5 = bitcast %struct.ssl_async_args* %args to i8*
  %call12 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef nonnull %job, %struct.async_wait_ctx_st* noundef %4, i32* noundef nonnull %ret, i32 (i8*)* noundef %func, i8* noundef %5, i64 noundef 40) #18
  switch i32 %call12, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb13
    i32 1, label %sw.bb15
    i32 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end10
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !36
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1777, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ssl_start_async_job, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 405, i8* noundef null) #18
  br label %cleanup

sw.bb13:                                          ; preds = %if.end10
  %rwstate14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 5, i32* %rwstate14, align 8, !tbaa !36
  br label %cleanup

sw.bb15:                                          ; preds = %if.end10
  %rwstate16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 6, i32* %rwstate16, align 8, !tbaa !36
  br label %cleanup

sw.bb17:                                          ; preds = %if.end10
  store %struct.async_job_st* null, %struct.async_job_st** %job, align 8, !tbaa !162
  %6 = load i32, i32* %ret, align 4, !tbaa !165
  br label %cleanup

sw.default:                                       ; preds = %if.end10
  %rwstate19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate19, align 8, !tbaa !36
  call void @ERR_new() #18
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1790, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ssl_start_async_job, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then, %sw.default, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb
  %retval.0 = phi i32 [ -1, %sw.default ], [ %6, %sw.bb17 ], [ -1, %sw.bb15 ], [ -1, %sw.bb13 ], [ -1, %sw.bb ], [ -1, %if.then ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_io_intern(i8* nocapture noundef readonly %vargs) #0 {
entry:
  %s1 = bitcast i8* %vargs to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %s1, align 8, !tbaa !275
  %buf2 = getelementptr inbounds i8, i8* %vargs, i64 8
  %1 = bitcast i8* %buf2 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !280
  %num3 = getelementptr inbounds i8, i8* %vargs, i64 16
  %3 = bitcast i8* %num3 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !281
  %type = getelementptr inbounds i8, i8* %vargs, i64 24
  %5 = bitcast i8* %type to i32*
  %6 = load i32, i32* %5, align 8, !tbaa !282
  switch i32 %6, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %f = getelementptr inbounds i8, i8* %vargs, i64 32
  %func_read = bitcast i8* %f to i32 (%struct.ssl_st*, i8*, i64, i64*)**
  %7 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %func_read, align 8, !tbaa !199
  %asyncrw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 113
  %call = tail call i32 %7(%struct.ssl_st* noundef %0, i8* noundef %2, i64 noundef %4, i64* noundef nonnull %asyncrw) #18
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %f5 = getelementptr inbounds i8, i8* %vargs, i64 32
  %func_write = bitcast i8* %f5 to i32 (%struct.ssl_st*, i8*, i64, i64*)**
  %8 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %func_write, align 8, !tbaa !199
  %asyncrw6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 113
  %call7 = tail call i32 %8(%struct.ssl_st* noundef %0, i8* noundef %2, i64 noundef %4, i64* noundef nonnull %asyncrw6) #18
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %f9 = getelementptr inbounds i8, i8* %vargs, i64 32
  %func_other = bitcast i8* %f9 to i32 (%struct.ssl_st*)**
  %9 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %func_other, align 8, !tbaa !199
  %call10 = tail call i32 %9(%struct.ssl_st* noundef %0) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb8, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ %call10, %sw.bb8 ], [ %call7, %sw.bb4 ], [ %call, %sw.bb ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_read(%struct.ssl_st* noundef %s, i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1865, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.SSL_read, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv10 = zext i32 %num to i64
  %call = call i32 @ssl_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %conv10, i64* noundef nonnull %readbytes) #17
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i64, i64* %readbytes, align 8
  %conv4 = trunc i64 %1 to i32
  %ret.0 = select i1 %cmp1, i32 %conv4, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_read_ex(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) #17
  %0 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %0, i32 %call, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_read_early_data(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1895, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_read_early_data, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %1 = load i32, i32* %early_data_state, align 4, !tbaa !279
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb4
    i32 10, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %sw.bb4

if.then2:                                         ; preds = %sw.bb
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1902, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_read_early_data, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb, %if.end
  store i32 9, i32* %early_data_state, align 4, !tbaa !279
  %call6 = tail call i32 @SSL_accept(%struct.ssl_st* noundef nonnull %s) #17
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %if.then7, label %sw.bb10

if.then7:                                         ; preds = %sw.bb4
  store i32 8, i32* %early_data_state, align 4, !tbaa !279
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb4, %if.end
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %2 = load i32, i32* %early_data, align 8, !tbaa !285
  %cmp11 = icmp eq i32 %2, 2
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb10
  store i32 11, i32* %early_data_state, align 4, !tbaa !279
  %call14 = tail call i32 @SSL_read_ex(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) #17
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %if.then19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then12
  %3 = load i32, i32* %early_data_state, align 4, !tbaa !279
  %cmp18.not = icmp eq i32 %3, 12
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true, %if.then12
  store i32 10, i32* %early_data_state, align 4, !tbaa !279
  %cond = zext i1 %cmp15 to i32
  br label %cleanup

if.else:                                          ; preds = %sw.bb10
  store i32 12, i32* %early_data_state, align 4, !tbaa !279
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %if.else
  store i64 0, i64* %readbytes, align 8, !tbaa !110
  br label %cleanup

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1939, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_read_early_data, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end24, %if.then19, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ %cond, %if.then19 ], [ 2, %if.end24 ], [ 0, %if.then7 ], [ 0, %if.then2 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @SSL_in_before(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_early_data_status(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %0 = load i32, i32* %early_data, align 8, !tbaa !285
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_peek(%struct.ssl_st* noundef %s, i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1983, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.SSL_peek, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv10 = zext i32 %num to i64
  %call = call fastcc i32 @ssl_peek_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %conv10, i64* noundef nonnull %readbytes) #17
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i64, i64* %readbytes, align 8
  %conv4 = trunc i64 %1 to i32
  %ret.0 = select i1 %cmp1, i32 %conv4, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_peek_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) unnamed_addr #0 {
entry:
  %args = alloca %struct.ssl_async_args, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1952, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ssl_peek_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 276, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown, align 4, !tbaa !30
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %return

if.end2:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %2 = load i32, i32* %mode, align 8, !tbaa !70
  %and3 = and i32 %2, 256
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end2
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #18
  %cmp5 = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %3 = bitcast %struct.ssl_async_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #19
  %s7 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s7, align 8, !tbaa !275
  %buf8 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 1
  store i8* %buf, i8** %buf8, align 8, !tbaa !280
  %num9 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 2
  store i64 %num, i64* %num9, align 8, !tbaa !281
  %type = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 3
  store i32 0, i32* %type, align 8, !tbaa !282
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_peek = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 9
  %5 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_peek, align 8, !tbaa !286
  %func_read = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 4, i32 0
  store i32 (%struct.ssl_st*, i8*, i64, i64*)* %5, i32 (%struct.ssl_st*, i8*, i64, i64*)** %func_read, align 8, !tbaa !199
  %call10 = call fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef nonnull %s, %struct.ssl_async_args* noundef nonnull %args, i32 (i8*)* noundef nonnull @ssl_io_intern) #17
  %asyncrw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 113
  %6 = load i64, i64* %asyncrw, align 8, !tbaa !284
  store i64 %6, i64* %readbytes, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #19
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end2
  %method11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method11, align 8, !tbaa !4
  %ssl_peek12 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 9
  %8 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_peek12, align 8, !tbaa !286
  %call13 = tail call i32 %8(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) #18
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call10, %if.then6 ], [ %call13, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_peek_ex(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ssl_peek_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %readbytes) #17
  %0 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %0, i32 %call, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_write_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.ssl_async_args, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2012, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_write_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 276, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown, align 4, !tbaa !30
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !36
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2018, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_write_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 207, i8* noundef null) #18
  br label %return

if.end2:                                          ; preds = %if.end
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %2 = load i32, i32* %early_data_state, align 4, !tbaa !279
  switch i32 %2, label %if.end10 [
    i32 1, label %if.then9
    i32 8, label %if.then9
    i32 10, label %if.then9
  ]

if.then9:                                         ; preds = %if.end2, %if.end2, %if.end2
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2025, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_write_internal, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %return

if.end10:                                         ; preds = %if.end2
  tail call void @ossl_statem_check_finish_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #18
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %3 = load i32, i32* %mode, align 8, !tbaa !70
  %and11 = and i32 %3, 256
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #18
  %cmp13 = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true
  %4 = bitcast %struct.ssl_async_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #19
  %s15 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s15, align 8, !tbaa !275
  %buf16 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 1
  store i8* %buf, i8** %buf16, align 8, !tbaa !280
  %num17 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 2
  store i64 %num, i64* %num17, align 8, !tbaa !281
  %type = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 3
  store i32 1, i32* %type, align 8, !tbaa !282
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_write = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 10
  %6 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_write, align 8, !tbaa !287
  %func_write = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 4, i32 0
  store i32 (%struct.ssl_st*, i8*, i64, i64*)* %6, i32 (%struct.ssl_st*, i8*, i64, i64*)** %func_write, align 8, !tbaa !199
  %call18 = call fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef nonnull %s, %struct.ssl_async_args* noundef nonnull %args, i32 (i8*)* noundef nonnull @ssl_io_intern) #17
  %asyncrw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 113
  %7 = load i64, i64* %asyncrw, align 8, !tbaa !284
  store i64 %7, i64* %written, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #19
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end10
  %method19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method19, align 8, !tbaa !4
  %ssl_write20 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 10
  %9 = load i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)** %ssl_write20, align 8, !tbaa !287
  %call21 = tail call i32 %9(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) #18
  br label %return

return:                                           ; preds = %if.else, %if.then14, %if.then9, %if.then1, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then1 ], [ 0, %if.then9 ], [ %call18, %if.then14 ], [ %call21, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_sendfile(%struct.ssl_st* nocapture noundef %s, i32 noundef %fd, i64 noundef %offset, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown, align 4, !tbaa !30
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then1
  %.sink6 = phi i32 [ 2060, %if.then1 ], [ 2054, %entry ], [ 2065, %if.end ]
  %.sink = phi i32 [ 207, %if.then1 ], [ 276, %entry ], [ 276, %if.end ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_sendfile, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #18
  ret i64 -1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_write(%struct.ssl_st* noundef %s, i8* noundef %buf, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2119, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.SSL_write, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv10 = zext i32 %num to i64
  %call = call i32 @ssl_write_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %conv10, i64* noundef nonnull %written) #17
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i64, i64* %written, align 8
  %conv4 = trunc i64 %1 to i32
  %ret.0 = select i1 %cmp1, i32 %conv4, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_write_ex(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_write_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) #17
  %0 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %0, i32 %call, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_write_early_data(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %writtmp = alloca i64, align 8
  %0 = bitcast i64* %writtmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %early_data_state1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %1 = load i32, i32* %early_data_state1, align 4, !tbaa !279
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb15
    i32 5, label %sw.bb26
    i32 12, label %sw.bb32
    i32 10, label %sw.bb32
  ]

sw.bb:                                            ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %call = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #18
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 26, i32 5
  %4 = load i32, i32* %max_early_data, align 4, !tbaa !288
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %land.lhs.true, label %sw.bb8

land.lhs.true:                                    ; preds = %lor.lhs.false4, %lor.lhs.false3
  %psk_use_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 70
  %5 = load i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %psk_use_session_cb, align 8, !tbaa !157
  %cmp7 = icmp eq i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* %5, null
  br i1 %cmp7, label %if.then, label %sw.bb8

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2156, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SSL_write_early_data, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %cleanup

sw.bb8:                                           ; preds = %lor.lhs.false4, %land.lhs.true, %entry
  store i32 2, i32* %early_data_state1, align 4, !tbaa !279
  %call10 = tail call i32 @SSL_connect(%struct.ssl_st* noundef nonnull %s) #17
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %sw.bb15

if.then12:                                        ; preds = %sw.bb8
  store i32 1, i32* %early_data_state1, align 4, !tbaa !279
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb8, %entry
  store i32 4, i32* %early_data_state1, align 4, !tbaa !279
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %6 = load i32, i32* %mode, align 8, !tbaa !70
  %and = and i32 %6, 1
  %and18 = and i32 %6, -2
  store i32 %and18, i32* %mode, align 8, !tbaa !70
  %call19 = call i32 @SSL_write_ex(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef nonnull %writtmp) #17
  %7 = load i32, i32* %mode, align 8, !tbaa !70
  %or = or i32 %7, %and
  store i32 %or, i32* %mode, align 8, !tbaa !70
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %sw.bb15
  store i32 3, i32* %early_data_state1, align 4, !tbaa !279
  br label %cleanup

if.end24:                                         ; preds = %sw.bb15
  store i32 5, i32* %early_data_state1, align 4, !tbaa !279
  br label %sw.bb26

sw.bb26:                                          ; preds = %entry, %if.end24
  %call27 = call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #18
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %sw.bb26
  store i64 %num, i64* %written, align 8, !tbaa !110
  store i32 3, i32* %early_data_state1, align 4, !tbaa !279
  br label %cleanup

sw.bb32:                                          ; preds = %entry, %entry
  store i32 6, i32* %early_data_state1, align 4, !tbaa !279
  %call35 = tail call i32 @SSL_write_ex(%struct.ssl_st* noundef nonnull %s, i8* noundef %buf, i64 noundef %num, i64* noundef %written) #17
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %sw.bb32
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %8 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  %call38 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %8, i32 noundef 11, i64 noundef 0, i8* noundef null) #18
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %sw.bb32
  store i32 %1, i32* %early_data_state1, align 4, !tbaa !279
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2210, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SSL_write_early_data, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %sw.default, %if.end39, %if.end30, %if.then22, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call35, %if.end39 ], [ 1, %if.end30 ], [ 0, %if.then22 ], [ 0, %if.then12 ], [ 0, %if.then ], [ 0, %sw.bb26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

declare i32 @statem_flush(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_shutdown(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.ssl_async_args, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2225, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_shutdown, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 276, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.else11

if.then1:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %1 = load i32, i32* %mode, align 8, !tbaa !70
  %and = and i32 %1, 256
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then1
  %call3 = tail call %struct.async_job_st* @ASYNC_get_current_job() #18
  %cmp4 = icmp eq %struct.async_job_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %2 = bitcast %struct.ssl_async_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #19
  %s6 = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s6, align 8, !tbaa !275
  %type = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 3
  store i32 2, i32* %type, align 8, !tbaa !282
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_shutdown = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 11
  %4 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_shutdown, align 8, !tbaa !289
  %f = getelementptr inbounds %struct.ssl_async_args, %struct.ssl_async_args* %args, i64 0, i32 4
  %func_other = bitcast %union.anon* %f to i32 (%struct.ssl_st*)**
  store i32 (%struct.ssl_st*)* %4, i32 (%struct.ssl_st*)** %func_other, align 8, !tbaa !199
  %call7 = call fastcc i32 @ssl_start_async_job(%struct.ssl_st* noundef nonnull %s, %struct.ssl_async_args* noundef nonnull %args, i32 (i8*)* noundef nonnull @ssl_io_intern) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #19
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then1
  %method8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method8, align 8, !tbaa !4
  %ssl_shutdown9 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 11
  %6 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_shutdown9, align 8, !tbaa !289
  %call10 = tail call i32 %6(%struct.ssl_st* noundef nonnull %s) #18
  br label %return

if.else11:                                        ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2242, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_shutdown, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 407, i8* noundef null) #18
  br label %return

return:                                           ; preds = %if.else11, %if.else, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.else11 ], [ %call7, %if.then5 ], [ %call10, %if.else ]
  ret i32 %retval.0
}

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_key_update(%struct.ssl_st* noundef %s, i32 noundef %updatetype) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !32
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2250, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_key_update, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 266, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %.not = icmp ult i32 %updatetype, 2
  br i1 %.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2256, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_key_update, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 120, i8* noundef null) #18
  br label %return

if.end10:                                         ; preds = %if.end
  %call = tail call i32 @SSL_is_init_finished(%struct.ssl_st* noundef nonnull %s) #18
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2261, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_key_update, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 121, i8* noundef null) #18
  br label %return

if.end13:                                         ; preds = %if.end10
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call14 = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2266, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_key_update, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 127, i8* noundef null) #18
  br label %return

if.end17:                                         ; preds = %if.end13
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #18
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  store i32 %updatetype, i32* %key_update, align 4, !tbaa !39
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then12, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then16 ], [ 1, %if.end17 ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

declare i32 @SSL_is_init_finished(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef) local_unnamed_addr #1

declare void @ossl_statem_set_in_init(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_key_update_type(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  %0 = load i32, i32* %key_update, align 4, !tbaa !39
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_renegotiate(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @can_renegotiate(%struct.ssl_st* noundef %s) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  store i32 1, i32* %renegotiate, align 8, !tbaa !31
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  store i32 1, i32* %new_session, align 4, !tbaa !290
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_renegotiate = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 12
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_renegotiate, align 8, !tbaa !291
  %call1 = tail call i32 %1(%struct.ssl_st* noundef %s) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @can_renegotiate(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !32
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %return.sink.split

if.end:                                           ; preds = %land.lhs.true, %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %4 = load i64, i64* %options, align 8, !tbaa !62
  %and6 = and i64 %4, 1073741824
  %cmp7.not = icmp eq i64 %and6, 0
  br i1 %cmp7.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end, %land.lhs.true
  %.sink13 = phi i32 [ 2287, %land.lhs.true ], [ 2292, %if.end ]
  %.sink = phi i32 [ 266, %land.lhs.true ], [ 339, %if.end ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.can_renegotiate, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #18
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_renegotiate_abbreviated(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @can_renegotiate(%struct.ssl_st* noundef %s) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  store i32 1, i32* %renegotiate, align 8, !tbaa !31
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  store i32 0, i32* %new_session, align 4, !tbaa !290
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_renegotiate = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 12
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_renegotiate, align 8, !tbaa !291
  %call1 = tail call i32 %1(%struct.ssl_st* noundef %s) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_renegotiate_pending(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %0 = load i32, i32* %renegotiate, align 8, !tbaa !31
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_new_session_ticket(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_in_init(%struct.ssl_st* noundef %s) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %extra_tickets_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %0 = load i32, i32* %extra_tickets_expected, align 4, !tbaa !292
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %1 = load i64, i64* %finish_md_len, align 8, !tbaa !264
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %2 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !265
  %cmp5 = icmp eq i64 %2, 0
  br i1 %cmp5, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !149
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %return, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %6, 8
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %return

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !32
  %cmp12 = icmp slt i32 %7, 772
  %cmp16.not = icmp eq i32 %7, 65536
  %or.cond = or i1 %cmp12, %cmp16.not
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true10
  %extra_tickets_expected18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %8 = load i32, i32* %extra_tickets_expected18, align 4, !tbaa !292
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %extra_tickets_expected18, align 4, !tbaa !292
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call19 = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %return

land.lhs.true21:                                  ; preds = %if.end
  %call22 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #18
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %return

if.then24:                                        ; preds = %land.lhs.true21
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #18
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true21, %if.then24, %land.lhs.true, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false6, %lor.lhs.false8, %land.lhs.true10
  %retval.0 = phi i32 [ 0, %land.lhs.true10 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 1, %if.then24 ], [ 1, %land.lhs.true21 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ssl_check_allowed_versions(i32 noundef %min_version, i32 noundef %max_version) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %min_version, 256
  %shr.mask = and i32 %min_version, -256
  %cmp1 = icmp eq i32 %shr.mask, 65024
  %or.cond73 = or i1 %cmp, %cmp1
  %not.or.cond73.demorgan = or i1 %cmp, %cmp1
  %not.or.cond73 = xor i1 %not.or.cond73.demorgan, true
  %cmp2 = icmp eq i32 %max_version, 256
  %shr4.mask = and i32 %max_version, -256
  %cmp5 = icmp eq i32 %shr4.mask, 65024
  %or.cond74 = or i1 %cmp2, %cmp5
  %or.cond = or i1 %or.cond74, %not.or.cond73
  %cmp10 = icmp eq i32 %max_version, 0
  %0 = or i1 %cmp10, %or.cond
  br i1 %0, label %lor.lhs.false11, label %cleanup

lor.lhs.false11:                                  ; preds = %entry
  %not.or.cond74.demorgan = or i1 %cmp2, %cmp5
  %not.or.cond74 = xor i1 %not.or.cond74.demorgan, true
  %or.cond46 = or i1 %or.cond73, %not.or.cond74
  %cmp16 = icmp eq i32 %min_version, 0
  %1 = or i1 %cmp16, %or.cond46
  br i1 %1, label %if.end18, label %cleanup

if.end18:                                         ; preds = %lor.lhs.false11
  %or.cond48 = or i1 %or.cond73, %or.cond74
  br i1 %or.cond48, label %if.end43, label %if.else

if.else:                                          ; preds = %if.end18
  %cmp29 = icmp ne i32 %min_version, 0
  %2 = icmp slt i32 %min_version, 768
  %3 = and i1 %cmp29, %2
  %cmp4072 = icmp sgt i32 %max_version, 767
  %cmp40 = or i1 %cmp10, %cmp4072
  %or.cond51 = and i1 %3, %cmp40
  br i1 %or.cond51, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end18, %if.else
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %lor.lhs.false11, %if.end43
  %retval.0 = phi i32 [ 1, %if.end43 ], [ 0, %lor.lhs.false11 ], [ 0, %entry ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare i32 @ssl_set_version_bound(i32 noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_callback_ctrl(%struct.ssl_st* noundef %s, i32 noundef %cmd, void ()* noundef %fp) local_unnamed_addr #0 {
entry:
  %cond = icmp eq i32 %cmd, 15
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %0 = bitcast void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback to void ()**
  store void ()* %fp, void ()** %0, align 8, !tbaa !86
  br label %return

sw.default:                                       ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_callback_ctrl = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 27
  %2 = load i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_st*, i32, void ()*)** %ssl_callback_ctrl, align 8, !tbaa !293
  %call = tail call i64 %2(%struct.ssl_st* noundef %s, i32 noundef %cmd, void ()* noundef %fp) #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i64 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.lhash_st_SSL_SESSION* @SSL_CTX_sessions(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 6
  %0 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !196
  ret %struct.lhash_st_SSL_SESSION* %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 92, label %sw.bb
    i32 98, label %sw.bb1
    i32 102, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  %call = tail call i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef null, i16** noundef null, i64* noundef null, i8* noundef %parg) #18
  %conv = sext i32 %call to i64
  br label %cleanup

sw.bb1:                                           ; preds = %if.then, %if.then
  %call2 = tail call i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef null, i8* noundef %parg, i32 noundef 0) #18
  %conv3 = sext i32 %call2 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default161 [
    i32 40, label %sw.bb4
    i32 41, label %sw.bb6
    i32 16, label %sw.bb11
    i32 50, label %sw.bb12
    i32 51, label %sw.bb13
    i32 42, label %sw.bb20
    i32 43, label %sw.bb26
    i32 44, label %sw.bb28
    i32 45, label %sw.bb32
    i32 20, label %sw.bb35
    i32 21, label %sw.bb37
    i32 22, label %sw.bb39
    i32 23, label %sw.bb43
    i32 24, label %sw.bb47
    i32 25, label %sw.bb51
    i32 26, label %sw.bb55
    i32 27, label %sw.bb59
    i32 28, label %sw.bb63
    i32 29, label %sw.bb67
    i32 30, label %sw.bb71
    i32 31, label %sw.bb75
    i32 33, label %sw.bb79
    i32 78, label %sw.bb83
    i32 52, label %sw.bb88
    i32 125, label %sw.bb102
    i32 126, label %sw.bb112
    i32 99, label %sw.bb120
    i32 100, label %sw.bb125
    i32 123, label %sw.bb133
    i32 130, label %sw.bb140
    i32 124, label %sw.bb143
    i32 131, label %sw.bb158
  ]

sw.bb4:                                           ; preds = %if.end
  %read_ahead = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 40
  %0 = load i32, i32* %read_ahead, align 8, !tbaa !83
  %conv5 = sext i32 %0 to i64
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %read_ahead7 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 40
  %1 = load i32, i32* %read_ahead7, align 8, !tbaa !83
  %conv8 = sext i32 %1 to i64
  %conv9 = trunc i64 %larg to i32
  store i32 %conv9, i32* %read_ahead7, align 8, !tbaa !83
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %msg_callback_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 42
  store i8* %parg, i8** %msg_callback_arg, align 8, !tbaa !87
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %max_cert_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 38
  %2 = load i64, i64* %max_cert_list, align 8, !tbaa !71
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %cmp14 = icmp slt i64 %larg, 0
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %sw.bb13
  %max_cert_list18 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 38
  %3 = load i64, i64* %max_cert_list18, align 8, !tbaa !71
  store i64 %larg, i64* %max_cert_list18, align 8, !tbaa !71
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %cmp21 = icmp slt i64 %larg, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %sw.bb20
  %session_cache_size = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 7
  %4 = load i64, i64* %session_cache_size, align 8, !tbaa !294
  store i64 %larg, i64* %session_cache_size, align 8, !tbaa !294
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %session_cache_size27 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 7
  %5 = load i64, i64* %session_cache_size27, align 8, !tbaa !294
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 10
  %6 = load i32, i32* %session_cache_mode, align 8, !tbaa !295
  %conv29 = zext i32 %6 to i64
  %conv30 = trunc i64 %larg to i32
  store i32 %conv30, i32* %session_cache_mode, align 8, !tbaa !295
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  %session_cache_mode33 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 10
  %7 = load i32, i32* %session_cache_mode33, align 8, !tbaa !295
  %conv34 = zext i32 %7 to i64
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 6
  %8 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !196
  %call36 = tail call fastcc i64 @lh_SSL_SESSION_num_items(%struct.lhash_st_SSL_SESSION* noundef %8) #17
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  %sess_connect = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 0
  %9 = load atomic i32, i32* %sess_connect monotonic, align 8
  %conv38 = sext i32 %9 to i64
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  %sess_connect_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 2
  %10 = load atomic i32, i32* %sess_connect_good monotonic, align 8
  %conv42 = sext i32 %10 to i64
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %sess_connect_renegotiate = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 1
  %11 = load atomic i32, i32* %sess_connect_renegotiate monotonic, align 4
  %conv46 = sext i32 %11 to i64
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %sess_accept = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 3
  %12 = load atomic i32, i32* %sess_accept monotonic, align 4
  %conv50 = sext i32 %12 to i64
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  %sess_accept_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 5
  %13 = load atomic i32, i32* %sess_accept_good monotonic, align 4
  %conv54 = sext i32 %13 to i64
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  %sess_accept_renegotiate = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 4
  %14 = load atomic i32, i32* %sess_accept_renegotiate monotonic, align 8
  %conv58 = sext i32 %14 to i64
  br label %cleanup

sw.bb59:                                          ; preds = %if.end
  %sess_hit = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 9
  %15 = load atomic i32, i32* %sess_hit monotonic, align 4
  %conv62 = sext i32 %15 to i64
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  %sess_cb_hit = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 10
  %16 = load atomic i32, i32* %sess_cb_hit monotonic, align 8
  %conv66 = sext i32 %16 to i64
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  %sess_miss = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 6
  %17 = load atomic i32, i32* %sess_miss monotonic, align 8
  %conv70 = sext i32 %17 to i64
  br label %cleanup

sw.bb71:                                          ; preds = %if.end
  %sess_timeout = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 7
  %18 = load atomic i32, i32* %sess_timeout monotonic, align 4
  %conv74 = sext i32 %18 to i64
  br label %cleanup

sw.bb75:                                          ; preds = %if.end
  %sess_cache_full = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 8
  %19 = load atomic i32, i32* %sess_cache_full monotonic, align 8
  %conv78 = sext i32 %19 to i64
  br label %cleanup

sw.bb79:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 35
  %20 = load i32, i32* %mode, align 8, !tbaa !69
  %21 = trunc i64 %larg to i32
  %conv81 = or i32 %20, %21
  store i32 %conv81, i32* %mode, align 8, !tbaa !69
  %conv82 = zext i32 %conv81 to i64
  br label %cleanup

sw.bb83:                                          ; preds = %if.end
  %mode84 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 35
  %22 = load i32, i32* %mode84, align 8, !tbaa !69
  %23 = trunc i64 %larg to i32
  %24 = xor i32 %23, -1
  %conv86 = and i32 %22, %24
  store i32 %conv86, i32* %mode84, align 8, !tbaa !69
  %conv87 = zext i32 %conv86 to i64
  br label %cleanup

sw.bb88:                                          ; preds = %if.end
  %25 = add i64 %larg, -16385
  %26 = icmp ult i64 %25, -15873
  br i1 %26, label %cleanup, label %if.end94

if.end94:                                         ; preds = %sw.bb88
  %max_send_fragment = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 54
  store i64 %larg, i64* %max_send_fragment, align 8, !tbaa !296
  %split_send_fragment = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 53
  %27 = load i64, i64* %split_send_fragment, align 8, !tbaa !297
  %cmp96 = icmp ugt i64 %27, %larg
  br i1 %cmp96, label %if.then98, label %cleanup

if.then98:                                        ; preds = %if.end94
  store i64 %larg, i64* %split_send_fragment, align 8, !tbaa !297
  br label %cleanup

sw.bb102:                                         ; preds = %if.end
  %max_send_fragment103 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 54
  %28 = load i64, i64* %max_send_fragment103, align 8, !tbaa !296
  %29 = add i64 %larg, -1
  %.not = icmp ult i64 %29, %28
  br i1 %.not, label %if.end110, label %cleanup

if.end110:                                        ; preds = %sw.bb102
  %split_send_fragment111 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 53
  store i64 %larg, i64* %split_send_fragment111, align 8, !tbaa !297
  br label %cleanup

sw.bb112:                                         ; preds = %if.end
  %30 = add i64 %larg, -33
  %31 = icmp ult i64 %30, -32
  br i1 %31, label %cleanup, label %if.end119

if.end119:                                        ; preds = %sw.bb112
  %max_pipelines = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 55
  store i64 %larg, i64* %max_pipelines, align 8, !tbaa !111
  br label %cleanup

sw.bb120:                                         ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %32 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %32, i64 0, i32 4
  %33 = load i32, i32* %cert_flags, align 4, !tbaa !210
  %34 = trunc i64 %larg to i32
  %conv123 = or i32 %33, %34
  store i32 %conv123, i32* %cert_flags, align 4, !tbaa !210
  %conv124 = zext i32 %conv123 to i64
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  %cert127 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %35 = load %struct.cert_st*, %struct.cert_st** %cert127, align 8, !tbaa !58
  %cert_flags128 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %35, i64 0, i32 4
  %36 = load i32, i32* %cert_flags128, align 4, !tbaa !210
  %37 = trunc i64 %larg to i32
  %38 = xor i32 %37, -1
  %conv131 = and i32 %36, %38
  store i32 %conv131, i32* %cert_flags128, align 4, !tbaa !210
  %conv132 = zext i32 %conv131 to i64
  br label %cleanup

sw.bb133:                                         ; preds = %if.end
  %conv134 = trunc i64 %larg to i32
  %max_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 37
  %39 = load i32, i32* %max_proto_version, align 8, !tbaa !67
  %call135 = tail call fastcc i32 @ssl_check_allowed_versions(i32 noundef %conv134, i32 noundef %39) #17
  %tobool.not = icmp eq i32 %call135, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %sw.bb133
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %40 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 0
  %41 = load i32, i32* %version, align 8, !tbaa !32
  %min_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 36
  %call137 = tail call i32 @ssl_set_version_bound(i32 noundef %41, i32 noundef %conv134, i32* noundef nonnull %min_proto_version) #18
  %tobool138 = icmp ne i32 %call137, 0
  %phi.cast247 = zext i1 %tobool138 to i64
  br label %cleanup

sw.bb140:                                         ; preds = %if.end
  %min_proto_version141 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 36
  %42 = load i32, i32* %min_proto_version141, align 4, !tbaa !65
  %conv142 = sext i32 %42 to i64
  br label %cleanup

sw.bb143:                                         ; preds = %if.end
  %min_proto_version144 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 36
  %43 = load i32, i32* %min_proto_version144, align 4, !tbaa !65
  %conv145 = trunc i64 %larg to i32
  %call146 = tail call fastcc i32 @ssl_check_allowed_versions(i32 noundef %43, i32 noundef %conv145) #17
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %cleanup, label %land.rhs148

land.rhs148:                                      ; preds = %sw.bb143
  %method149 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %44 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method149, align 8, !tbaa !49
  %version150 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %44, i64 0, i32 0
  %45 = load i32, i32* %version150, align 8, !tbaa !32
  %max_proto_version152 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 37
  %call153 = tail call i32 @ssl_set_version_bound(i32 noundef %45, i32 noundef %conv145, i32* noundef nonnull %max_proto_version152) #18
  %tobool154 = icmp ne i32 %call153, 0
  %phi.cast246 = zext i1 %tobool154 to i64
  br label %cleanup

sw.bb158:                                         ; preds = %if.end
  %max_proto_version159 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 37
  %46 = load i32, i32* %max_proto_version159, align 8, !tbaa !67
  %conv160 = sext i32 %46 to i64
  br label %cleanup

sw.default161:                                    ; preds = %if.end
  %method162 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %47 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method162, align 8, !tbaa !49
  %ssl_ctx_ctrl = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %47, i64 0, i32 18
  %48 = load i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)** %ssl_ctx_ctrl, align 8, !tbaa !298
  %call163 = tail call i64 %48(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb143, %land.rhs148, %sw.bb133, %land.rhs, %sw.bb112, %sw.bb102, %if.end94, %if.then98, %sw.bb88, %sw.bb20, %sw.bb13, %if.then, %sw.default161, %sw.bb158, %sw.bb140, %sw.bb125, %sw.bb120, %if.end119, %if.end110, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb32, %sw.bb28, %sw.bb26, %if.end24, %if.end17, %sw.bb12, %sw.bb11, %sw.bb6, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %conv3, %sw.bb1 ], [ %conv, %sw.bb ], [ %call163, %sw.default161 ], [ %conv160, %sw.bb158 ], [ %conv142, %sw.bb140 ], [ %conv132, %sw.bb125 ], [ %conv124, %sw.bb120 ], [ 1, %if.end119 ], [ 1, %if.end110 ], [ %conv87, %sw.bb83 ], [ %conv82, %sw.bb79 ], [ %conv78, %sw.bb75 ], [ %conv74, %sw.bb71 ], [ %conv70, %sw.bb67 ], [ %conv66, %sw.bb63 ], [ %conv62, %sw.bb59 ], [ %conv58, %sw.bb55 ], [ %conv54, %sw.bb51 ], [ %conv50, %sw.bb47 ], [ %conv46, %sw.bb43 ], [ %conv42, %sw.bb39 ], [ %conv38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %conv34, %sw.bb32 ], [ %conv29, %sw.bb28 ], [ %5, %sw.bb26 ], [ %4, %if.end24 ], [ %3, %if.end17 ], [ %2, %sw.bb12 ], [ 1, %sw.bb11 ], [ %conv8, %sw.bb6 ], [ %conv5, %sw.bb4 ], [ 0, %if.then ], [ 0, %sw.bb13 ], [ 0, %sw.bb20 ], [ 0, %sw.bb88 ], [ 1, %if.then98 ], [ 1, %if.end94 ], [ 0, %sw.bb102 ], [ 0, %sw.bb112 ], [ 0, %sw.bb133 ], [ %phi.cast247, %land.rhs ], [ 0, %sw.bb143 ], [ %phi.cast246, %land.rhs148 ]
  ret i64 %retval.0
}

declare i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef, i16** noundef, i64* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_SSL_SESSION_num_items(%struct.lhash_st_SSL_SESSION* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef %0) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %cmd, void ()* noundef %fp) local_unnamed_addr #0 {
entry:
  %cond = icmp eq i32 %cmd, 15
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %msg_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 41
  %0 = bitcast void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback to void ()**
  store void ()* %fp, void ()** %0, align 8, !tbaa !85
  br label %return

sw.default:                                       ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  %ssl_ctx_callback_ctrl = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 28
  %2 = load i64 (%struct.ssl_ctx_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)** %ssl_ctx_callback_ctrl, align 8, !tbaa !299
  %call = tail call i64 %2(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %cmd, void ()* noundef %fp) #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i64 [ 1, %sw.bb ], [ %call, %sw.default ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ssl_cipher_id_cmp(%struct.ssl_cipher_st* nocapture noundef readonly %a, %struct.ssl_cipher_st* nocapture noundef readonly %b) local_unnamed_addr #6 {
entry:
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %a, i64 0, i32 3
  %0 = load i32, i32* %id, align 8, !tbaa !300
  %id1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %b, i64 0, i32 3
  %1 = load i32, i32* %id1, align 8, !tbaa !300
  %cmp = icmp ugt i32 %0, %1
  %cmp4 = icmp ult i32 %0, %1
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ssl_cipher_ptr_id_cmp(%struct.ssl_cipher_st** nocapture noundef readonly %ap, %struct.ssl_cipher_st** nocapture noundef readonly %bp) local_unnamed_addr #6 {
entry:
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %ap, align 8, !tbaa !198
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 3
  %1 = load i32, i32* %id, align 8, !tbaa !300
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %bp, align 8, !tbaa !198
  %id1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 3
  %3 = load i32, i32* %id1, align 8, !tbaa !300
  %cmp = icmp ugt i32 %1, %3
  %cmp4 = icmp ult i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %cipher_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !170
  %cmp1.not = icmp eq %struct.stack_st_SSL_CIPHER* %0, null
  br i1 %cmp1.not, label %if.else, label %return

if.else:                                          ; preds = %if.then
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %cmp4.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp4.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %cipher_list6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 2
  %2 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list6, align 8, !tbaa !243
  %cmp7.not = icmp eq %struct.stack_st_SSL_CIPHER* %2, null
  br i1 %cmp7.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true, %if.else, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.then, %if.end12
  %retval.0 = phi %struct.stack_st_SSL_CIPHER* [ null, %if.end12 ], [ %0, %if.then ], [ %2, %land.lhs.true ]
  ret %struct.stack_st_SSL_CIPHER* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_SSL_CIPHER* @SSL_get_client_ciphers(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %peer_ciphers = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  %1 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !172
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.stack_st_SSL_CIPHER* [ %1, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.stack_st_SSL_CIPHER* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef %s) #17
  %tobool.not = icmp eq %struct.stack_st_SSL_CIPHER* %call, null
  br i1 %tobool.not, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ssl_set_client_disabled(%struct.ssl_st* noundef %s) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup27, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %call651 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #18
  %cmp52 = icmp sgt i32 %call651, 0
  br i1 %cmp52, label %for.body, label %cleanup27

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.054 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %sk.053 = phi %struct.stack_st_SSL_CIPHER* [ %sk.3.ph, %for.inc ], [ null, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.054) #18
  %0 = bitcast i8* %call8 to %struct.ssl_cipher_st*
  %call9 = tail call i32 @ssl_cipher_disabled(%struct.ssl_st* noundef %s, %struct.ssl_cipher_st* noundef %0, i32 noundef 65537, i32 noundef 0) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %tobool12.not = icmp eq %struct.stack_st_SSL_CIPHER* %sk.053, null
  br i1 %tobool12.not, label %if.end15, label %if.end18

if.end15:                                         ; preds = %if.then11
  %call14 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %1 = bitcast %struct.stack_st* %call14 to %struct.stack_st_SSL_CIPHER*
  %tobool16.not = icmp eq %struct.stack_st* %call14, null
  br i1 %tobool16.not, label %cleanup27, label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end15
  %sk.147 = phi %struct.stack_st_SSL_CIPHER* [ %1, %if.end15 ], [ %sk.053, %if.then11 ]
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %sk.147) #17
  %call21 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call19, i8* noundef %call8) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %for.inc

if.then23:                                        ; preds = %if.end18
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call19) #18
  br label %cleanup27

for.inc:                                          ; preds = %if.end18, %for.body
  %sk.3.ph = phi %struct.stack_st_SSL_CIPHER* [ %sk.147, %if.end18 ], [ %sk.053, %for.body ]
  %inc = add nuw nsw i32 %i.054, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #18
  %cmp = icmp slt i32 %inc, %call6
  br i1 %cmp, label %for.body, label %cleanup27, !llvm.loop !302

cleanup27:                                        ; preds = %for.inc, %if.end15, %for.cond.preheader, %if.then23, %if.end, %entry
  %retval.2 = phi %struct.stack_st_SSL_CIPHER* [ null, %entry ], [ null, %if.end ], [ null, %if.then23 ], [ null, %for.cond.preheader ], [ %sk.3.ph, %for.inc ], [ null, %if.end15 ]
  ret %struct.stack_st_SSL_CIPHER* %retval.2
}

declare i32 @ssl_set_client_disabled(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_cipher_disabled(%struct.ssl_st* noundef, %struct.ssl_cipher_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_SSL_CIPHER* @ssl_get_ciphers_by_id(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !171
  %cmp1.not = icmp eq %struct.stack_st_SSL_CIPHER* %0, null
  br i1 %cmp1.not, label %if.else, label %return

if.else:                                          ; preds = %if.then
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %cmp4.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp4.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %cipher_list_by_id6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 3
  %2 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id6, align 8, !tbaa !244
  %cmp7.not = icmp eq %struct.stack_st_SSL_CIPHER* %2, null
  br i1 %cmp7.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true, %if.else, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.then, %if.end12
  %retval.0 = phi %struct.stack_st_SSL_CIPHER* [ null, %if.end12 ], [ %0, %if.then ], [ %2, %land.lhs.true ]
  ret %struct.stack_st_SSL_CIPHER* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_get_cipher_list(%struct.ssl_st* noundef %s, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #17
  %cmp1 = icmp eq %struct.stack_st_SSL_CIPHER* %call, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #18
  %cmp4.not = icmp sgt i32 %call3, %n
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %n) #18
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %name = getelementptr inbounds i8, i8* %call8, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !303
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %lor.lhs.false, %entry, %if.end11
  %retval.0 = phi i8* [ %1, %if.end11 ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end6 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_SSL_CIPHER* @SSL_CTX_get_ciphers(%struct.ssl_ctx_st* noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %cipher_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !243
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.stack_st_SSL_CIPHER* [ %0, %if.then ], [ null, %entry ]
  ret %struct.stack_st_SSL_CIPHER* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !57
  %cipher_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 2
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 3
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %call = tail call %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_SSL_CIPHER* noundef %0, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list_by_id, i8* noundef %str, %struct.cert_st* noundef %1) #18
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %call, null
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @cipher_list_tls12_num(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.else
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2729, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_CTX_set_cipher_list, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 185, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cipher_list_tls12_num(%struct.stack_st_SSL_CIPHER* noundef %sk) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %sk, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %sk) #17
  %call119 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #18
  %cmp220 = icmp sgt i32 %call119, 0
  br i1 %cmp220, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %num.022 = phi i32 [ %spec.select, %for.body ], [ 0, %for.cond.preheader ]
  %i.021 = phi i32 [ %inc8, %for.body ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.021) #18
  %min_tls = getelementptr inbounds i8, i8* %call4, i64 44
  %0 = bitcast i8* %min_tls to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !304
  %cmp5 = icmp slt i32 %1, 772
  %inc = zext i1 %cmp5 to i32
  %spec.select = add nuw nsw i32 %num.022, %inc
  %inc8 = add nuw nsw i32 %i.021, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #18
  %cmp2 = icmp slt i32 %inc8, %call1
  br i1 %cmp2, label %for.body, label %cleanup, !llvm.loop !305

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %spec.select, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %s, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 27
  %1 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !81
  %cipher_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %call = tail call %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* noundef %0, %struct.stack_st_SSL_CIPHER* noundef %1, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list_by_id, i8* noundef %str, %struct.cert_st* noundef %2) #18
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %call, null
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @cipher_list_tls12_num(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.else
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2747, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_set_cipher_list, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 185, i8* noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_get_shared_ciphers(%struct.ssl_st* noundef %s, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_ciphers = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  %1 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !172
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %1, null
  %cmp2 = icmp slt i32 %size, 2
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %cleanup42, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #17
  %cmp6 = icmp eq %struct.stack_st_SSL_CIPHER* %call, null
  br i1 %cmp6, label %cleanup42, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %1) #17
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #18
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup42, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #18
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cleanup42, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false12
  %call1987 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #18
  %cmp2088 = icmp sgt i32 %call1987, 0
  br i1 %cmp2088, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.091 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %size.addr.090 = phi i32 [ %size.addr.1.ph, %for.inc ], [ %size, %for.cond.preheader ]
  %p.089 = phi i8* [ %p.2.ph, %for.inc ], [ %buf, %for.cond.preheader ]
  %call22 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.091) #18
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call) #17
  %call25 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call23, i8* noundef %call22) #18
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.inc, label %if.end28

if.end28:                                         ; preds = %for.body
  %name = getelementptr inbounds i8, i8* %call22, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !303
  %call29 = tail call i64 @strlen(i8* noundef %3) #20
  %conv = trunc i64 %call29 to i32
  %cmp30.not = icmp sgt i32 %size.addr.090, %conv
  br i1 %cmp30.not, label %if.end37, label %cleanup

if.end37:                                         ; preds = %if.end28
  %add.neg = xor i32 %conv, -1
  %call39 = tail call i8* @strcpy(i8* noundef %p.089, i8* noundef %3) #18
  %sext = shl i64 %call29, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %p.089, i64 %idx.ext
  %incdec.ptr40 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 58, i8* %add.ptr, align 1, !tbaa !199
  %sub = add i32 %size.addr.090, %add.neg
  br label %for.inc

cleanup:                                          ; preds = %if.end28
  %cmp33.not = icmp ne i8* %p.089, %buf
  %spec.select.idx = sext i1 %cmp33.not to i64
  %spec.select = getelementptr i8, i8* %p.089, i64 %spec.select.idx
  br label %cleanup42.sink.split

for.inc:                                          ; preds = %if.end37, %for.body
  %p.2.ph = phi i8* [ %p.089, %for.body ], [ %incdec.ptr40, %if.end37 ]
  %size.addr.1.ph = phi i32 [ %size.addr.090, %for.body ], [ %sub, %if.end37 ]
  %inc = add nuw nsw i32 %i.091, 1
  %call19 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #18
  %cmp20 = icmp slt i32 %inc, %call19
  br i1 %cmp20, label %for.body, label %for.end, !llvm.loop !306

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %p.0.lcssa = phi i8* [ %buf, %for.cond.preheader ], [ %p.2.ph, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %p.0.lcssa, i64 -1
  br label %cleanup42.sink.split

cleanup42.sink.split:                             ; preds = %for.end, %cleanup
  %spec.select.sink = phi i8* [ %spec.select, %cleanup ], [ %arrayidx, %for.end ]
  store i8 0, i8* %spec.select.sink, align 1, !tbaa !199
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup42.sink.split, %if.end8, %lor.lhs.false12, %if.end, %entry, %lor.lhs.false
  %retval.2 = phi i8* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %lor.lhs.false12 ], [ null, %if.end8 ], [ %buf, %cleanup42.sink.split ]
  ret i8* %retval.2
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_get_servername(%struct.ssl_st* noundef %s, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  %cmp2.not86 = icmp eq i32 %type, 0
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %entry
  br i1 %cmp2.not86, label %if.end, label %cleanup

cond.end.thread:                                  ; preds = %entry
  br i1 %cmp2.not86, label %if.else, label %cleanup

if.end:                                           ; preds = %cond.end
  %server1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %1 = load i32, i32* %server1, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %2 = load i32, i32* %hit, align 8, !tbaa !29
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 25
  %4 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %4, i64 0, i32 12
  %5 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %5, 8
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.then13

land.lhs.true6:                                   ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 0
  %6 = load i32, i32* %version, align 8, !tbaa !32
  %cmp8 = icmp slt i32 %6, 772
  %cmp12.not = icmp eq i32 %6, 65536
  %or.cond = or i1 %cmp8, %cmp12.not
  br i1 %or.cond, label %if.then13, label %if.end59

if.then13:                                        ; preds = %land.lhs.true6, %land.lhs.true
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 26, i32 0
  br label %cleanup.sink.split

if.else:                                          ; preds = %cond.end.thread, %if.end
  %call = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #18
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.else31, label %if.then16

if.then16:                                        ; preds = %if.else
  %hostname18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %8 = load i8*, i8** %hostname18, align 8, !tbaa !173
  %cmp19 = icmp eq i8* %8, null
  br i1 %cmp19, label %land.lhs.true20, label %if.end59

land.lhs.true20:                                  ; preds = %if.then16
  %session21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session21, align 8, !tbaa !22
  %cmp22.not = icmp eq %struct.ssl_session_st* %9, null
  br i1 %cmp22.not, label %if.end59, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 0
  %10 = load i32, i32* %ssl_version, align 8, !tbaa !192
  %cmp25.not = icmp eq i32 %10, 772
  br i1 %cmp25.not, label %if.end59, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  %hostname29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 26, i32 0
  br label %cleanup.sink.split

if.else31:                                        ; preds = %if.else
  %method32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %11 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method32, align 8, !tbaa !4
  %ssl3_enc33 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 25
  %12 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc33, align 8, !tbaa !188
  %enc_flags34 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %12, i64 0, i32 12
  %13 = load i32, i32* %enc_flags34, align 8, !tbaa !189
  %and35 = and i32 %13, 8
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true45

land.lhs.true37:                                  ; preds = %if.else31
  %version39 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 0
  %14 = load i32, i32* %version39, align 8, !tbaa !32
  %cmp40 = icmp slt i32 %14, 772
  %cmp44.not = icmp eq i32 %14, 65536
  %or.cond84 = or i1 %cmp40, %cmp44.not
  br i1 %or.cond84, label %land.lhs.true45, label %if.end59

land.lhs.true45:                                  ; preds = %land.lhs.true37, %if.else31
  %hit46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %15 = load i32, i32* %hit46, align 8, !tbaa !29
  %tobool47.not = icmp eq i32 %15, 0
  br i1 %tobool47.not, label %if.end59, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %session49 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %16 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session49, align 8, !tbaa !22
  %hostname51 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %16, i64 0, i32 26, i32 0
  %17 = load i8*, i8** %hostname51, align 8, !tbaa !307
  %cmp52.not = icmp eq i8* %17, null
  br i1 %cmp52.not, label %if.end59, label %cleanup

if.end59:                                         ; preds = %land.lhs.true37, %land.lhs.true6, %land.lhs.true23, %land.lhs.true20, %if.then16, %land.lhs.true48, %land.lhs.true45, %if.then3
  %hostname61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %if.then26, %if.end59
  %hostname61.sink = phi i8** [ %hostname61, %if.end59 ], [ %hostname29, %if.then26 ], [ %hostname, %if.then13 ]
  %18 = load i8*, i8** %hostname61.sink, align 8, !tbaa !198
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end.thread, %land.lhs.true48, %cond.end
  %retval.0 = phi i8* [ null, %cond.end ], [ %17, %land.lhs.true48 ], [ null, %cond.end.thread ], [ %18, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_servername_type(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @SSL_get_servername(%struct.ssl_st* noundef %s, i32 noundef 0) #17
  %cmp.not = icmp eq i8* %call, null
  %. = sext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nofree noinline nounwind uwtable
define i32 @SSL_select_next_proto(i8** nocapture noundef writeonly %out, i8* nocapture noundef writeonly %outlen, i8* noundef %server, i32 noundef %server_len, i8* noundef %client, i32 noundef %client_len) local_unnamed_addr #11 {
entry:
  %cmp60.not = icmp eq i32 %server_len, 0
  br i1 %cmp60.not, label %found, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp257.not = icmp eq i32 %client_len, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.end
  %i.061 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc29, %for.end ]
  %idxprom25.phi.trans.insert = zext i32 %i.061 to i64
  %arrayidx26.phi.trans.insert = getelementptr inbounds i8, i8* %server, i64 %idxprom25.phi.trans.insert
  %.pre = load i8, i8* %arrayidx26.phi.trans.insert, align 1, !tbaa !199
  %.pre65 = add nuw i32 %i.061, 1
  br i1 %cmp257.not, label %for.end, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %idxprom9 = zext i32 %.pre65 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %server, i64 %idxprom9
  %conv16 = zext i8 %.pre to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %if.end
  %j.058 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %if.end ]
  %idxprom4 = zext i32 %j.058 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %client, i64 %idxprom4
  %0 = load i8, i8* %arrayidx5, align 1, !tbaa !199
  %cmp7 = icmp eq i8 %.pre, %0
  %add11 = add nuw i32 %j.058, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %idxprom12 = zext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %client, i64 %idxprom12
  %call = tail call i32 @memcmp(i8* noundef %arrayidx10, i8* noundef %arrayidx13, i64 noundef %conv16) #20
  %cmp17 = icmp eq i32 %call, 0
  br i1 %cmp17, label %found.loopexit, label %if.end

if.end:                                           ; preds = %for.body3, %land.lhs.true
  %conv23 = zext i8 %0 to i32
  %inc = add i32 %add11, %conv23
  %cmp2 = icmp ult i32 %inc, %client_len
  br i1 %cmp2, label %for.body3, label %for.end, !llvm.loop !308

for.end:                                          ; preds = %if.end, %for.cond1.preheader
  %conv27 = zext i8 %.pre to i32
  %inc29 = add i32 %.pre65, %conv27
  %cmp = icmp ult i32 %inc29, %server_len
  br i1 %cmp, label %for.cond1.preheader, label %found, !llvm.loop !309

found.loopexit:                                   ; preds = %land.lhs.true
  %idxprom.le = zext i32 %i.061 to i64
  %arrayidx.le = getelementptr inbounds i8, i8* %server, i64 %idxprom.le
  br label %found

found:                                            ; preds = %for.end, %found.loopexit, %entry
  %result.0 = phi i8* [ %client, %entry ], [ %arrayidx.le, %found.loopexit ], [ %client, %for.end ]
  %status.0 = phi i32 [ 2, %entry ], [ 1, %found.loopexit ], [ 2, %for.end ]
  %add.ptr = getelementptr inbounds i8, i8* %result.0, i64 1
  store i8* %add.ptr, i8** %out, align 8, !tbaa !198
  %1 = load i8, i8* %result.0, align 1, !tbaa !199
  store i8 %1, i8* %outlen, align 1, !tbaa !199
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_get0_next_proto_negotiated(%struct.ssl_st* nocapture noundef readonly %s, i8** nocapture noundef writeonly %data, i32* nocapture noundef writeonly %len) local_unnamed_addr #8 {
entry:
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %0 = load i8*, i8** %npn, align 8, !tbaa !133
  store i8* %0, i8** %data, align 8, !tbaa !198
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %npn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  %1 = load i64, i64* %npn_len, align 8, !tbaa !310
  %conv = trunc i64 %1 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi i32 [ %conv, %if.else ], [ 0, %entry ]
  store i32 %storemerge, i32* %len, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %npn_advertised_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 20
  store i32 (%struct.ssl_st*, i8**, i32*, i8*)* %cb, i32 (%struct.ssl_st*, i8**, i32*, i8*)** %npn_advertised_cb, align 8, !tbaa !311
  %npn_advertised_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 21
  store i8* %arg, i8** %npn_advertised_cb_arg, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_next_proto_select_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %npn_select_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 22
  store i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* %cb, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %npn_select_cb, align 8, !tbaa !313
  %npn_select_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 23
  store i8* %arg, i8** %npn_select_cb_arg, align 8, !tbaa !314
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* nocapture noundef %ctx, i8* noundef %protos, i32 noundef %protos_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %protos_len, 0
  %cmp1 = icmp eq i8* %protos, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %alpn2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 18
  %0 = load i8*, i8** %alpn2, align 8, !tbaa !134
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3019) #18
  store i8* null, i8** %alpn2, align 8, !tbaa !134
  %alpn_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 19
  store i64 0, i64* %alpn_len, align 8, !tbaa !135
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @alpn_value_ok(i8* noundef nonnull %protos, i32 noundef %protos_len) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %conv = zext i32 %protos_len to i64
  %call8 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %protos, i64 noundef %conv, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3028) #18
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3030, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_CTX_set_alpn_protos, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %alpn14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 18
  %1 = load i8*, i8** %alpn14, align 8, !tbaa !134
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3033) #18
  store i8* %call8, i8** %alpn14, align 8, !tbaa !134
  %alpn_len19 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 19
  store i64 %conv, i64* %alpn_len19, align 8, !tbaa !135
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then11 ], [ 0, %if.end12 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @alpn_value_ok(i8* noundef readonly %protos, i32 noundef %protos_len) unnamed_addr #12 {
entry:
  %cmp = icmp ult i32 %protos_len, 2
  %cmp1 = icmp eq i8* %protos, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %idx.024 = phi i32 [ %add10, %for.inc ], [ 0, %entry ]
  %idxprom = zext i32 %idx.024 to i64
  %arrayidx = getelementptr inbounds i8, i8* %protos, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !199
  %cmp3 = icmp eq i8 %0, 0
  br i1 %cmp3, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %conv = zext i8 %0 to i32
  %add = add nuw i32 %idx.024, 1
  %add10 = add i32 %add, %conv
  %cmp2 = icmp ult i32 %add10, %protos_len
  br i1 %cmp2, label %for.body, label %for.end, !llvm.loop !315

for.end:                                          ; preds = %for.inc
  %cmp11 = icmp eq i32 %add10, %protos_len
  %conv12 = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %for.end
  %retval.0 = phi i32 [ %conv12, %for.end ], [ 0, %entry ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_alpn_protos(%struct.ssl_st* nocapture noundef %ssl, i8* noundef %protos, i32 noundef %protos_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %protos_len, 0
  %cmp1 = icmp eq i8* %protos, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %alpn2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 88, i32 24
  %0 = load i8*, i8** %alpn2, align 8, !tbaa !136
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3051) #18
  store i8* null, i8** %alpn2, align 8, !tbaa !136
  %alpn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 88, i32 25
  store i64 0, i64* %alpn_len, align 8, !tbaa !137
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @alpn_value_ok(i8* noundef nonnull %protos, i32 noundef %protos_len) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %conv = zext i32 %protos_len to i64
  %call8 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %protos, i64 noundef %conv, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3060) #18
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3062, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_set_alpn_protos, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %alpn14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 88, i32 24
  %1 = load i8*, i8** %alpn14, align 8, !tbaa !136
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3065) #18
  store i8* %call8, i8** %alpn14, align 8, !tbaa !136
  %alpn_len19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 88, i32 25
  store i64 %conv, i64* %alpn_len19, align 8, !tbaa !137
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then11 ], [ 0, %if.end12 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %alpn_select_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 16
  store i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* %cb, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %alpn_select_cb, align 8, !tbaa !316
  %alpn_select_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 17
  store i8* %arg, i8** %alpn_select_cb_arg, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_get0_alpn_selected(%struct.ssl_st* nocapture noundef readonly %ssl, i8** nocapture noundef writeonly %data, i32* nocapture noundef writeonly %len) local_unnamed_addr #8 {
entry:
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 27
  %0 = load i8*, i8** %alpn_selected, align 8, !tbaa !318
  store i8* %0, i8** %data, align 8, !tbaa !198
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 28
  %1 = load i64, i64* %alpn_selected_len, align 8, !tbaa !319
  %conv = trunc i64 %1 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi i32 [ %conv, %if.else ], [ 0, %entry ]
  store i32 %storemerge, i32* %len, align 4, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_export_keying_material(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen, i32 noundef %use_context) local_unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !34
  %cmp1 = icmp sgt i32 %1, 768
  %cmp3.not = icmp eq i32 %1, 256
  %or.cond = or i1 %cmp1, %cmp3.not
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %export_keying_material = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 11
  %4 = load i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)** %export_keying_material, align 8, !tbaa !320
  %call = tail call i32 %4(%struct.ssl_st* noundef nonnull %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen, i32 noundef %use_context) #18
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_export_keying_material_early(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !34
  %cmp.not = icmp eq i32 %0, 772
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @tls13_export_keying_material_early(%struct.ssl_st* noundef nonnull %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @tls13_export_keying_material_early(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ssl_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_method_st* %meth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3176, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_CTX_new_ex, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 196, i8* noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, %struct.ossl_init_settings_st* noundef null) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #18
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3184, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_CTX_new_ex, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 269, i8* noundef null) #18
  br label %err2.sink.split

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i8* @CRYPTO_zalloc(i64 noundef 1616, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3187) #18
  %0 = bitcast i8* %call7 to %struct.ssl_ctx_st*
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %err2.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %references = getelementptr inbounds i8, i8* %call7, i64 164
  %1 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !321
  %call11 = tail call i8* @CRYPTO_THREAD_lock_new() #18
  %lock = getelementptr inbounds i8, i8* %call7, i64 968
  %2 = bitcast i8* %lock to i8**
  store i8* %call11, i8** %2, align 8, !tbaa !191
  %cmp13 = icmp eq i8* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3195, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_CTX_new_ex, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3196) #18
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %libctx16 = bitcast i8* %call7 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx16, align 8, !tbaa !322
  %cmp17.not = icmp eq i8* %propq, null
  br i1 %cmp17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3202) #18
  %propq20 = getelementptr inbounds i8, i8* %call7, i64 1088
  %3 = bitcast i8* %propq20 to i8**
  store i8* %call19, i8** %3, align 8, !tbaa !263
  %cmp22 = icmp eq i8* %call19, null
  br i1 %cmp22, label %err2.sink.split, label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end15
  %method = getelementptr inbounds i8, i8* %call7, i64 8
  %4 = bitcast i8* %method to %struct.ssl_method_st**
  store %struct.ssl_method_st* %meth, %struct.ssl_method_st** %4, align 8, !tbaa !49
  %min_proto_version = getelementptr inbounds i8, i8* %call7, i64 324
  %5 = bitcast i8* %min_proto_version to i32*
  store i32 0, i32* %5, align 4, !tbaa !65
  %max_proto_version = getelementptr inbounds i8, i8* %call7, i64 328
  %6 = bitcast i8* %max_proto_version to i32*
  store i32 0, i32* %6, align 8, !tbaa !67
  %mode = getelementptr inbounds i8, i8* %call7, i64 320
  %7 = bitcast i8* %mode to i32*
  store i32 4, i32* %7, align 8, !tbaa !69
  %session_cache_mode = getelementptr inbounds i8, i8* %call7, i64 80
  %8 = bitcast i8* %session_cache_mode to i32*
  store i32 2, i32* %8, align 8, !tbaa !295
  %session_cache_size = getelementptr inbounds i8, i8* %call7, i64 56
  %9 = bitcast i8* %session_cache_size to i64*
  store i64 20480, i64* %9, align 8, !tbaa !294
  %get_timeout = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 24
  %10 = load i64 ()*, i64 ()** %get_timeout, align 8, !tbaa !278
  %call26 = tail call i64 %10() #18
  %session_timeout = getelementptr inbounds i8, i8* %call7, i64 88
  %11 = bitcast i8* %session_timeout to i64*
  store i64 %call26, i64* %11, align 8, !tbaa !323
  %max_cert_list = getelementptr inbounds i8, i8* %call7, i64 336
  %12 = bitcast i8* %max_cert_list to i64*
  store i64 102400, i64* %12, align 8, !tbaa !71
  %verify_mode = getelementptr inbounds i8, i8* %call7, i64 376
  %13 = bitcast i8* %verify_mode to i32*
  store i32 0, i32* %13, align 8, !tbaa !89
  %call27 = tail call %struct.cert_st* @ssl_cert_new() #18
  %cert = getelementptr inbounds i8, i8* %call7, i64 344
  %14 = bitcast i8* %cert to %struct.cert_st**
  store %struct.cert_st* %call27, %struct.cert_st** %14, align 8, !tbaa !58
  %cmp28 = icmp eq %struct.cert_st* %call27, null
  br i1 %cmp28, label %err2.sink.split, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = tail call fastcc %struct.lhash_st_SSL_SESSION* @lh_SSL_SESSION_new() #17
  %sessions = getelementptr inbounds i8, i8* %call7, i64 48
  %15 = bitcast i8* %sessions to %struct.lhash_st_SSL_SESSION**
  store %struct.lhash_st_SSL_SESSION* %call31, %struct.lhash_st_SSL_SESSION** %15, align 8, !tbaa !196
  %cmp33 = icmp eq %struct.lhash_st_SSL_SESSION* %call31, null
  br i1 %cmp33, label %err2.sink.split, label %if.end35

if.end35:                                         ; preds = %if.end30
  %call36 = tail call %struct.x509_store_st* @X509_STORE_new() #18
  %cert_store = getelementptr inbounds i8, i8* %call7, i64 40
  %16 = bitcast i8* %cert_store to %struct.x509_store_st**
  store %struct.x509_store_st* %call36, %struct.x509_store_st** %16, align 8, !tbaa !241
  %cmp38 = icmp eq %struct.x509_store_st* %call36, null
  br i1 %cmp38, label %err2.sink.split, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call41 = tail call %struct.ctlog_store_st* @CTLOG_STORE_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #18
  %ctlog_store = getelementptr inbounds i8, i8* %call7, i64 456
  %17 = bitcast i8* %ctlog_store to %struct.ctlog_store_st**
  store %struct.ctlog_store_st* %call41, %struct.ctlog_store_st** %17, align 8, !tbaa !242
  %cmp43 = icmp eq %struct.ctlog_store_st* %call41, null
  br i1 %cmp43, label %err2.sink.split, label %if.end45

if.end45:                                         ; preds = %if.end40
  %call46 = tail call i32 @ssl_load_ciphers(%struct.ssl_ctx_st* noundef nonnull %0) #18
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err2, label %if.end49

if.end49:                                         ; preds = %if.end45
  %call50 = tail call i32 @ssl_setup_sig_algs(%struct.ssl_ctx_st* noundef nonnull %0) #18
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err2, label %if.end53

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @ssl_load_groups(%struct.ssl_ctx_st* noundef nonnull %0) #18
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err2, label %if.end57

if.end57:                                         ; preds = %if.end53
  %call58 = tail call i8* @OSSL_default_ciphersuites() #18
  %call59 = tail call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef nonnull %0, i8* noundef %call58) #18
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err2.sink.split, label %if.end62

if.end62:                                         ; preds = %if.end57
  %tls13_ciphersuites = getelementptr inbounds i8, i8* %call7, i64 32
  %18 = bitcast i8* %tls13_ciphersuites to %struct.stack_st_SSL_CIPHER**
  %19 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %18, align 8, !tbaa !57
  %cipher_list = getelementptr inbounds i8, i8* %call7, i64 16
  %20 = bitcast i8* %cipher_list to %struct.stack_st_SSL_CIPHER**
  %cipher_list_by_id = getelementptr inbounds i8, i8* %call7, i64 24
  %21 = bitcast i8* %cipher_list_by_id to %struct.stack_st_SSL_CIPHER**
  %call63 = tail call i8* @OSSL_default_cipher_list() #18
  %22 = load %struct.cert_st*, %struct.cert_st** %14, align 8, !tbaa !58
  %call65 = tail call %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* noundef nonnull %0, %struct.stack_st_SSL_CIPHER* noundef %19, %struct.stack_st_SSL_CIPHER** noundef nonnull %20, %struct.stack_st_SSL_CIPHER** noundef nonnull %21, i8* noundef %call63, %struct.cert_st* noundef %22) #18
  %tobool66.not = icmp eq %struct.stack_st_SSL_CIPHER* %call65, null
  br i1 %tobool66.not, label %err2.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62
  %23 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %20, align 8, !tbaa !243
  %call68 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %23) #17
  %call69 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call68) #18
  %cmp70 = icmp slt i32 %call69, 1
  br i1 %cmp70, label %err2.sink.split, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false
  %call73 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #18
  %param = getelementptr inbounds i8, i8* %call7, i64 440
  %24 = bitcast i8* %param to %struct.X509_VERIFY_PARAM_st**
  store %struct.X509_VERIFY_PARAM_st* %call73, %struct.X509_VERIFY_PARAM_st** %24, align 8, !tbaa !105
  %cmp75 = icmp eq %struct.X509_VERIFY_PARAM_st* %call73, null
  br i1 %cmp75, label %err2.sink.split, label %if.end77

if.end77:                                         ; preds = %if.end72
  %call78 = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 4, i8* noundef %propq) #17
  %md5 = getelementptr inbounds i8, i8* %call7, i64 256
  %25 = bitcast i8* %md5 to %struct.evp_md_st**
  store %struct.evp_md_st* %call78, %struct.evp_md_st** %25, align 8, !tbaa !253
  %call79 = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 64, i8* noundef %propq) #17
  %sha1 = getelementptr inbounds i8, i8* %call7, i64 264
  %26 = bitcast i8* %sha1 to %struct.evp_md_st**
  store %struct.evp_md_st* %call79, %struct.evp_md_st** %26, align 8, !tbaa !254
  %call80 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %ca_names = getelementptr inbounds i8, i8* %call7, i64 296
  %27 = bitcast i8* %ca_names to %struct.stack_st**
  store %struct.stack_st* %call80, %struct.stack_st** %27, align 8, !tbaa !245
  %cmp81 = icmp eq %struct.stack_st* %call80, null
  br i1 %cmp81, label %err2.sink.split, label %if.end83

if.end83:                                         ; preds = %if.end77
  %call84 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %client_ca_names = getelementptr inbounds i8, i8* %call7, i64 304
  %28 = bitcast i8* %client_ca_names to %struct.stack_st**
  store %struct.stack_st* %call84, %struct.stack_st** %28, align 8, !tbaa !246
  %cmp85 = icmp eq %struct.stack_st* %call84, null
  br i1 %cmp85, label %err2.sink.split, label %if.end87

if.end87:                                         ; preds = %if.end83
  %ex_data = getelementptr inbounds i8, i8* %call7, i64 240
  %29 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call88 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 1, i8* noundef nonnull %call7, %struct.crypto_ex_data_st* noundef nonnull %29) #18
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err2.sink.split, label %if.end91

if.end91:                                         ; preds = %if.end87
  %call92 = tail call i8* @CRYPTO_secure_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3275) #18
  %secure = getelementptr inbounds i8, i8* %call7, i64 568
  %30 = bitcast i8* %secure to %struct.ssl_ctx_ext_secure_st**
  %31 = bitcast i8* %secure to i8**
  store i8* %call92, i8** %31, align 8, !tbaa !252
  %cmp93 = icmp eq i8* %call92, null
  br i1 %cmp93, label %err2.sink.split, label %if.end95

if.end95:                                         ; preds = %if.end91
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 25
  %32 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %32, i64 0, i32 12
  %33 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %33, 8
  %tobool96.not = icmp eq i32 %and, 0
  br i1 %tobool96.not, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end95
  %call98 = tail call %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() #18
  %comp_methods = getelementptr inbounds i8, i8* %call7, i64 280
  %34 = bitcast i8* %comp_methods to %struct.stack_st_SSL_COMP**
  store %struct.stack_st_SSL_COMP* %call98, %struct.stack_st_SSL_COMP** %34, align 8, !tbaa !248
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end95
  %split_send_fragment = getelementptr inbounds i8, i8* %call7, i64 480
  %35 = bitcast i8* %split_send_fragment to <2 x i64>*
  store <2 x i64> <i64 16384, i64 16384>, <2 x i64>* %35, align 8, !tbaa !110
  %tick_key_name = getelementptr inbounds i8, i8* %call7, i64 552
  %call101 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %tick_key_name, i64 noundef 16, i32 noundef 0) #18
  %cmp102 = icmp slt i32 %call101, 1
  br i1 %cmp102, label %if.then115, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.end99
  %36 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %30, align 8, !tbaa !252
  %arraydecay106 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %36, i64 0, i32 0, i64 0
  %call107 = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %arraydecay106, i64 noundef 32, i32 noundef 0) #18
  %cmp108 = icmp slt i32 %call107, 1
  br i1 %cmp108, label %if.then115, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false103
  %37 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %30, align 8, !tbaa !252
  %arraydecay112 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %37, i64 0, i32 1, i64 0
  %call113 = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %arraydecay112, i64 noundef 32, i32 noundef 0) #18
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %lor.lhs.false109, %lor.lhs.false103, %if.end99
  %options = getelementptr inbounds i8, i8* %call7, i64 312
  %38 = bitcast i8* %options to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !61
  %or = or i64 %39, 16384
  store i64 %or, i64* %38, align 8, !tbaa !61
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %lor.lhs.false109
  %cookie_hmac_key = getelementptr inbounds i8, i8* %call7, i64 728
  %call119 = tail call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %cookie_hmac_key, i64 noundef 32, i32 noundef 0) #18
  %cmp120 = icmp slt i32 %call119, 1
  br i1 %cmp120, label %err2.sink.split, label %if.end122

if.end122:                                        ; preds = %if.end116
  %call123 = tail call i32 @ssl_ctx_srp_ctx_init_intern(%struct.ssl_ctx_st* noundef nonnull %0) #18
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err2.sink.split, label %if.end126

if.end126:                                        ; preds = %if.end122
  %options127 = getelementptr inbounds i8, i8* %call7, i64 312
  %40 = bitcast i8* %options127 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !61
  %or128 = or i64 %41, 1179648
  store i64 %or128, i64* %40, align 8, !tbaa !61
  %status_type = getelementptr inbounds i8, i8* %call7, i64 608
  %42 = bitcast i8* %status_type to i32*
  store i32 -1, i32* %42, align 8, !tbaa !117
  %max_early_data = getelementptr inbounds i8, i8* %call7, i64 984
  %43 = bitcast i8* %max_early_data to i32*
  store i32 0, i32* %43, align 8, !tbaa !73
  %recv_max_early_data = getelementptr inbounds i8, i8* %call7, i64 988
  %44 = bitcast i8* %recv_max_early_data to i32*
  store i32 16384, i32* %44, align 4, !tbaa !75
  %num_tickets = getelementptr inbounds i8, i8* %call7, i64 1040
  %45 = bitcast i8* %num_tickets to i64*
  store i64 2, i64* %45, align 8, !tbaa !77
  tail call void @ssl_ctx_system_config(%struct.ssl_ctx_st* noundef nonnull %0) #18
  br label %cleanup

err2.sink.split:                                  ; preds = %if.then5, %if.end6, %if.then18, %if.end25, %if.end30, %if.end35, %if.end40, %if.end57, %if.end72, %if.end77, %if.end83, %if.end87, %if.end91, %if.end116, %if.end122, %if.end62, %lor.lhs.false
  %.sink204 = phi i32 [ 3251, %lor.lhs.false ], [ 3251, %if.end62 ], [ 3367, %if.end122 ], [ 3367, %if.end116 ], [ 3367, %if.end91 ], [ 3367, %if.end87 ], [ 3367, %if.end83 ], [ 3367, %if.end77 ], [ 3367, %if.end72 ], [ 3367, %if.end57 ], [ 3367, %if.end40 ], [ 3367, %if.end35 ], [ 3367, %if.end30 ], [ 3367, %if.end25 ], [ 3367, %if.then18 ], [ 3367, %if.end6 ], [ 3367, %if.then5 ]
  %.sink = phi i32 [ 161, %lor.lhs.false ], [ 161, %if.end62 ], [ 786688, %if.end122 ], [ 786688, %if.end116 ], [ 786688, %if.end91 ], [ 786688, %if.end87 ], [ 786688, %if.end83 ], [ 786688, %if.end77 ], [ 786688, %if.end72 ], [ 786688, %if.end57 ], [ 786688, %if.end40 ], [ 786688, %if.end35 ], [ 786688, %if.end30 ], [ 786688, %if.end25 ], [ 786688, %if.then18 ], [ 786688, %if.end6 ], [ 786688, %if.then5 ]
  %ret.1.ph = phi %struct.ssl_ctx_st* [ %0, %lor.lhs.false ], [ %0, %if.end62 ], [ %0, %if.end122 ], [ %0, %if.end116 ], [ %0, %if.end91 ], [ %0, %if.end87 ], [ %0, %if.end83 ], [ %0, %if.end77 ], [ %0, %if.end72 ], [ %0, %if.end57 ], [ %0, %if.end40 ], [ %0, %if.end35 ], [ %0, %if.end30 ], [ %0, %if.end25 ], [ %0, %if.then18 ], [ null, %if.end6 ], [ null, %if.then5 ]
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink204, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SSL_CTX_new_ex, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #18
  br label %err2

err2:                                             ; preds = %err2.sink.split, %if.end53, %if.end49, %if.end45
  %ret.1 = phi %struct.ssl_ctx_st* [ %0, %if.end53 ], [ %0, %if.end49 ], [ %0, %if.end45 ], [ %ret.1.ph, %err2.sink.split ]
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ret.1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err2, %if.end126, %if.then14, %if.then
  %retval.0 = phi %struct.ssl_ctx_st* [ null, %if.then ], [ null, %err2 ], [ null, %if.then14 ], [ %0, %if.end126 ], [ null, %if.end ]
  ret %struct.ssl_ctx_st* %retval.0
}

declare i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.cert_st* @ssl_cert_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_SSL_SESSION* @lh_SSL_SESSION_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.ssl_session_st*)* @ssl_session_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ssl_session_st*, %struct.ssl_session_st*)* @ssl_session_cmp to i32 (i8*, i8*)*)) #18
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_SSL_SESSION*
  ret %struct.lhash_st_SSL_SESSION* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ssl_session_hash(%struct.ssl_session_st* noundef %a) #0 {
entry:
  %tmp_storage = alloca [4 x i8], align 1
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 5, i64 0
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_storage, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 4
  %1 = load i64, i64* %session_id_length, align 8, !tbaa !195
  %cmp = icmp ult i64 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 4) #18
  %2 = load i64, i64* %session_id_length, align 8, !tbaa !195
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %arraydecay, i64 noundef %2) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %session_id.0 = phi i8* [ %0, %if.then ], [ %arraydecay, %entry ]
  %3 = load i8, i8* %session_id.0, align 1, !tbaa !199
  %conv = zext i8 %3 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %session_id.0, i64 1
  %4 = load i8, i8* %arrayidx9, align 1, !tbaa !199
  %conv10 = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv10, 8
  %or = or i64 %shl, %conv
  %arrayidx11 = getelementptr inbounds i8, i8* %session_id.0, i64 2
  %5 = load i8, i8* %arrayidx11, align 1, !tbaa !199
  %conv12 = zext i8 %5 to i64
  %shl13 = shl nuw nsw i64 %conv12, 16
  %or14 = or i64 %or, %shl13
  %arrayidx15 = getelementptr inbounds i8, i8* %session_id.0, i64 3
  %6 = load i8, i8* %arrayidx15, align 1, !tbaa !199
  %conv16 = zext i8 %6 to i64
  %shl17 = shl nuw nsw i64 %conv16, 24
  %or18 = or i64 %or14, %shl17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i64 %or18
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @ssl_session_cmp(%struct.ssl_session_st* noundef readonly %a, %struct.ssl_session_st* noundef readonly %b) #13 {
entry:
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 0
  %0 = load i32, i32* %ssl_version, align 8, !tbaa !192
  %ssl_version1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %b, i64 0, i32 0
  %1 = load i32, i32* %ssl_version1, align 8, !tbaa !192
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 4
  %2 = load i64, i64* %session_id_length, align 8, !tbaa !195
  %session_id_length2 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %b, i64 0, i32 4
  %3 = load i64, i64* %session_id_length2, align 8, !tbaa !195
  %cmp3.not = icmp eq i64 %2, %3
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 5, i64 0
  %arraydecay7 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %b, i64 0, i32 5, i64 0
  %call = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay7, i64 noundef %2) #20
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %call, %if.end5 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare %struct.ctlog_store_st* @CTLOG_STORE_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ssl_load_ciphers(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ssl_setup_sig_algs(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ssl_load_groups(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %nid, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @tls_get_digest_from_engine(i32 noundef %nid) #18
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #18
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #18
  %call3 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call2, i8* noundef %properties) #18
  %call4 = tail call i32 @ERR_pop_to_mark() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %call3, %if.end ], [ %call, %entry ]
  ret %struct.evp_md_st* %retval.0
}

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() local_unnamed_addr #1

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_ctx_srp_ctx_init_intern(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare void @ssl_ctx_system_config(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ssl_method_st* noundef %meth) #17
  ret %struct.ssl_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dane_ctx_final(%struct.dane_ctx_st* nocapture noundef %dctx) unnamed_addr #0 {
entry:
  %mdevp = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 0
  %0 = bitcast %struct.dane_ctx_st* %dctx to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !197
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #18
  store %struct.evp_md_st** null, %struct.evp_md_st*** %mdevp, align 8, !tbaa !197
  %mdord = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 1
  %2 = load i8*, i8** %mdord, align 8, !tbaa !200
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 156) #18
  store i8* null, i8** %mdord, align 8, !tbaa !200
  %mdmax = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %dctx, i64 0, i32 2
  store i8 0, i8* %mdmax, align 8, !tbaa !201
  ret void
}

declare void @SSL_CTX_flush_sessions(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_SSL_SESSION_free(%struct.lhash_st_SSL_SESSION* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #18
  ret void
}

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef) local_unnamed_addr #1

declare i32 @ssl_ctx_srp_ctx_free_intern(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare void @tls_engine_finish(%struct.engine_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_secure_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ssl_evp_md_free(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_md_st* %md, null
  br i1 %cmp, label %if.end3, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef nonnull %md) #18
  %cmp1.not = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %md) #18
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp, label %if.end3, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %cipher) #18
  %cmp1.not = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %cipher) #18
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_default_passwd_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (i8*, i32, i32, i8*)* noundef %cb) local_unnamed_addr #9 {
entry:
  %default_passwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  store i32 (i8*, i32, i32, i8*)* %cb, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_default_passwd_cb_userdata(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %u) local_unnamed_addr #9 {
entry:
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  store i8* %u, i8** %default_passwd_callback_userdata, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i8*, i32, i32, i8*)* @SSL_CTX_get_default_passwd_cb(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %default_passwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  %0 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !140
  ret i32 (i8*, i32, i32, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_CTX_get_default_passwd_cb_userdata(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  %0 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !142
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_default_passwd_cb(%struct.ssl_st* nocapture noundef writeonly %s, i32 (i8*, i32, i32, i8*)* noundef %cb) local_unnamed_addr #9 {
entry:
  %default_passwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 109
  store i32 (i8*, i32, i32, i8*)* %cb, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_default_passwd_cb_userdata(%struct.ssl_st* nocapture noundef writeonly %s, i8* noundef %u) local_unnamed_addr #9 {
entry:
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 110
  store i8* %u, i8** %default_passwd_callback_userdata, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i8*, i32, i32, i8*)* @SSL_get_default_passwd_cb(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %default_passwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 109
  %0 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !141
  ret i32 (i8*, i32, i32, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_default_passwd_cb_userdata(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 110
  %0 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !143
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %app_verify_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 17
  store i32 (%struct.x509_store_ctx_st*, i8*)* %cb, i32 (%struct.x509_store_ctx_st*, i8*)** %app_verify_callback, align 8, !tbaa !324
  %app_verify_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 18
  store i8* %arg, i8** %app_verify_arg, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_verify(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %mode, i32 (i32, %struct.x509_store_ctx_st*)* noundef %cb) local_unnamed_addr #9 {
entry:
  %verify_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 43
  store i32 %mode, i32* %verify_mode, align 8, !tbaa !89
  %default_verify_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 46
  store i32 (i32, %struct.x509_store_ctx_st*)* %cb, i32 (i32, %struct.x509_store_ctx_st*)** %default_verify_callback, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_verify_depth(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 48
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !105
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %depth) #18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_cert_cb(%struct.ssl_ctx_st* nocapture noundef readonly %c, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %c, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  tail call void @ssl_cert_set_cert_cb(%struct.cert_st* noundef %0, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) #18
  ret void
}

declare void @ssl_cert_set_cert_cb(%struct.cert_st* noundef, i32 (%struct.ssl_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_cert_cb(%struct.ssl_st* nocapture noundef readonly %s, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  tail call void @ssl_cert_set_cert_cb(%struct.cert_st* noundef %0, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) #18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_set_masks(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 0
  %cmp = icmp eq %struct.cert_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dh_tmp1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp1, align 8, !tbaa !326
  %cmp2.not = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp2.not, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %if.end
  %dh_tmp_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 2
  %2 = load %struct.dh_st* (%struct.ssl_st*, i32, i32)*, %struct.dh_st* (%struct.ssl_st*, i32, i32)** %dh_tmp_cb, align 8, !tbaa !327
  %cmp3.not = icmp eq %struct.dh_st* (%struct.ssl_st*, i32, i32)* %2, null
  br i1 %cmp3.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 3
  %3 = load i32, i32* %dh_tmp_auto, align 8, !tbaa !328
  %tobool = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %tobool, %lor.rhs ]
  %5 = load i32, i32* %arraydecay, align 4, !tbaa !165
  %and = and i32 %5, 1
  %arrayidx6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 2
  %6 = load i32, i32* %arrayidx6, align 4, !tbaa !165
  %arrayidx8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 3
  %7 = load i32, i32* %arrayidx8, align 4, !tbaa !165
  %and9 = and i32 %7, 1
  %call = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 6) #17
  %tobool10.not = icmp eq i32 %call, 0
  %call14 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 5) #17
  %tobool15.not = icmp eq i32 %call14, 0
  %8 = select i1 %tobool15.not, i1 %tobool10.not, i1 false
  %mask_a.1 = select i1 %8, i64 0, i64 128
  %mask_k.1 = select i1 %8, i64 0, i64 528
  %call20 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 4) #17
  %tobool21.not = icmp eq i32 %call20, 0
  %or23 = or i64 %mask_k.1, 16
  %or24 = or i64 %mask_a.1, 32
  %mask_a.2 = select i1 %tobool21.not, i64 %mask_a.1, i64 %or24
  %mask_k.2 = select i1 %tobool21.not, i64 %mask_k.1, i64 %or23
  %tobool26.not = icmp eq i32 %and, 0
  %9 = zext i32 %and to i64
  %10 = or i64 %mask_k.2, %9
  %or32 = or i64 %10, 2
  %spec.select = select i1 %4, i64 %or32, i64 %10
  br i1 %tobool26.not, label %lor.lhs.false37, label %if.then48

lor.lhs.false37:                                  ; preds = %lor.end
  %call38 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #17
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %arrayidx40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 1
  %11 = load i32, i32* %arrayidx40, align 4, !tbaa !165
  %and41 = and i32 %11, 256
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end50, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %call44 = tail call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #17
  %12 = icmp eq i32 %call44, 771
  br i1 %12, label %if.then48, label %if.end50

if.then48:                                        ; preds = %land.lhs.true43, %lor.end
  %or49 = or i64 %mask_a.2, 1
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true43, %if.then48, %land.lhs.true, %lor.lhs.false37
  %mask_a.3 = phi i64 [ %or49, %if.then48 ], [ %mask_a.2, %land.lhs.true ], [ %mask_a.2, %lor.lhs.false37 ], [ %mask_a.2, %land.lhs.true43 ]
  %and7 = shl i32 %6, 1
  %13 = and i32 %and7, 2
  %14 = zext i32 %13 to i64
  %15 = or i64 %mask_a.3, %14
  %or55 = or i64 %15, 4
  %tobool56.not = icmp eq i32 %and9, 0
  br i1 %tobool56.not, label %if.end70, label %if.then57

if.then57:                                        ; preds = %if.end50
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 3, i32 0
  %16 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  %call59 = tail call i32 @X509_get_key_usage(%struct.x509_st* noundef %16) #18
  %and60 = and i32 %call59, 128
  %17 = load i32, i32* %arrayidx8, align 4, !tbaa !165
  %and62 = and i32 %17, 2
  %tobool63.not = icmp eq i32 %and62, 0
  %tobool66.not213 = icmp eq i32 %and60, 0
  %tobool66.not = select i1 %tobool63.not, i1 true, i1 %tobool66.not213
  %or68 = or i64 %15, 12
  %spec.select217 = select i1 %tobool66.not, i64 %or55, i64 %or68
  br label %if.end70

if.end70:                                         ; preds = %if.then57, %if.end50
  %mask_a.6 = phi i64 [ %spec.select217, %if.then57 ], [ %or55, %if.end50 ]
  %and71 = and i64 %mask_a.6, 8
  %tobool72.not = icmp eq i64 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %if.end92

land.lhs.true73:                                  ; preds = %if.end70
  %call74 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 7) #17
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end92, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %arrayidx77 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 7
  %18 = load i32, i32* %arrayidx77, align 4, !tbaa !165
  %and78 = and i32 %18, 256
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end92, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %call81 = tail call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #17
  %shr82.mask = and i32 %call81, -256
  %cmp83 = icmp eq i32 %shr82.mask, 768
  br i1 %cmp83, label %cond.end87, label %if.end92

cond.end87:                                       ; preds = %land.lhs.true80
  %phi.cmp212 = icmp eq i32 %call81, 771
  %or91 = or i64 %mask_a.6, 8
  %spec.select226 = select i1 %phi.cmp212, i64 %or91, i64 %mask_a.6
  br label %if.end92

if.end92:                                         ; preds = %cond.end87, %land.lhs.true80, %land.lhs.true76, %land.lhs.true73, %if.end70
  %mask_a.7 = phi i64 [ %mask_a.6, %if.end70 ], [ %mask_a.6, %land.lhs.true76 ], [ %mask_a.6, %land.lhs.true73 ], [ %mask_a.6, %land.lhs.true80 ], [ %spec.select226, %cond.end87 ]
  %and93 = and i64 %mask_a.7, 8
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end114

land.lhs.true95:                                  ; preds = %if.end92
  %call96 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 8) #17
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end114, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %arrayidx99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 8
  %19 = load i32, i32* %arrayidx99, align 4, !tbaa !165
  %and100 = and i32 %19, 256
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end114, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %call103 = tail call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #17
  %shr104.mask = and i32 %call103, -256
  %cmp105 = icmp eq i32 %shr104.mask, 768
  br i1 %cmp105, label %cond.end109, label %if.end114

cond.end109:                                      ; preds = %land.lhs.true102
  %phi.cmp = icmp eq i32 %call103, 771
  %or113 = or i64 %mask_a.7, 8
  %spec.select227 = select i1 %phi.cmp, i64 %or113, i64 %mask_a.7
  br label %if.end114

if.end114:                                        ; preds = %cond.end109, %land.lhs.true102, %land.lhs.true98, %land.lhs.true95, %if.end92
  %mask_a.8 = phi i64 [ %mask_a.7, %if.end92 ], [ %mask_a.7, %land.lhs.true98 ], [ %mask_a.7, %land.lhs.true95 ], [ %mask_a.7, %land.lhs.true102 ], [ %spec.select227, %cond.end109 ]
  %and118 = and i64 %spec.select, 1
  %tobool119.not = icmp eq i64 %and118, 0
  %spec.select220.v = select i1 %tobool119.not, i64 12, i64 76
  %and123 = shl nuw nsw i64 %spec.select, 7
  %20 = and i64 %and123, 256
  %spec.select220 = or i64 %20, %spec.select
  %21 = or i64 %spec.select220, %spec.select220.v
  %22 = trunc i64 %21 to i32
  %conv = or i32 %22, 128
  %mask_k135 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 34
  store i32 %conv, i32* %mask_k135, align 4, !tbaa !329
  %23 = trunc i64 %mask_a.8 to i32
  %conv136 = or i32 %23, 16
  %mask_a139 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 35
  store i32 %conv136, i32* %mask_a139, align 8, !tbaa !330
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl_has_cert(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx) unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %idxprom = sext i32 %idx to i64
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom, i32 0
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  %cmp2.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp2.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %entry
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !272
  %cmp7 = icmp ne %struct.evp_pkey_st* %2, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %entry, %land.rhs
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_version(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !34
  ret i32 %0
}

declare i32 @X509_get_key_usage(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_check_srvr_ecc_cert_and_alg(%struct.x509_st* noundef %x, %struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !331
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 5
  %1 = load i32, i32* %algorithm_auth, align 8, !tbaa !332
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_get_key_usage(%struct.x509_st* noundef %x) #18
  %and1 = and i32 %call, 128
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %return

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3651, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ssl_check_srvr_ecc_cert_and_alg, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 318, i8* noundef null) #18
  br label %return

return:                                           ; preds = %entry, %if.then, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ssl_get_server_cert_serverinfo(%struct.ssl_st* nocapture noundef readonly %s, i8** nocapture noundef writeonly %serverinfo, i64* nocapture noundef writeonly %serverinfo_length) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %0 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert, align 8, !tbaa !333
  store i64 0, i64* %serverinfo_length, align 8, !tbaa !110
  %cmp = icmp eq %struct.cert_pkey_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %serverinfo1 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 3
  %1 = load i8*, i8** %serverinfo1, align 8, !tbaa !334
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i8* %1, i8** %serverinfo, align 8, !tbaa !198
  %serverinfo_length4 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 4
  %2 = load i64, i64* %serverinfo_length4, align 8, !tbaa !335
  store i64 %2, i64* %serverinfo_length, align 8, !tbaa !110
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_update_cache(%struct.ssl_st* noundef %s, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 4
  %1 = load i64, i64* %session_id_length, align 8, !tbaa !195
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !149
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 6
  %3 = load i64, i64* %sid_ctx_length, align 8, !tbaa !336
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end6

land.lhs.true3:                                   ; preds = %land.lhs.true
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %4 = load i32, i32* %verify_mode, align 8, !tbaa !90
  %and = and i32 %4, 1
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 10
  %6 = load i32, i32* %session_cache_mode, align 8, !tbaa !295
  %and7 = and i32 %6, %mode
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end70, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end6
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %7 = load i32, i32* %hit, align 8, !tbaa !29
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 12
  %10 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and11 = and i32 %10, 8
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end70

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !32
  %cmp15 = icmp slt i32 %11, 772
  %cmp19.not = icmp eq i32 %11, 65536
  %or.cond = or i1 %cmp15, %cmp19.not
  br i1 %or.cond, label %if.end70, label %if.then20

if.then20:                                        ; preds = %land.lhs.true13, %land.lhs.true9
  %and21 = and i32 %6, 512
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end55

land.lhs.true23:                                  ; preds = %if.then20
  %method24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method24, align 8, !tbaa !4
  %ssl3_enc25 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc25, align 8, !tbaa !188
  %enc_flags26 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags26, align 8, !tbaa !189
  %and27 = and i32 %14, 8
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.then52

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %version31 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version31, align 8, !tbaa !32
  %cmp32 = icmp slt i32 %15, 772
  %cmp36.not = icmp eq i32 %15, 65536
  %or.cond127 = or i1 %cmp32, %cmp36.not
  %brmerge = select i1 %or.cond127, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.then52, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %land.lhs.true29
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %16 = load i32, i32* %max_early_data, align 8, !tbaa !74
  %cmp41.not = icmp eq i32 %16, 0
  br i1 %cmp41.not, label %lor.lhs.false45, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.lhs.false40
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %17 = load i64, i64* %options, align 8, !tbaa !62
  %and43 = and i64 %17, 16777216
  %cmp44 = icmp eq i64 %and43, 0
  br i1 %cmp44, label %if.then52, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %land.lhs.true42, %lor.lhs.false40
  %remove_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 13
  %18 = load void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)** %remove_session_cb, align 8, !tbaa !337
  %cmp47.not = icmp eq void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* %18, null
  br i1 %cmp47.not, label %lor.lhs.false48, label %if.then52

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %options49 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %19 = load i64, i64* %options49, align 8, !tbaa !62
  %and50 = and i64 %19, 16384
  %cmp51.not = icmp eq i64 %and50, 0
  br i1 %cmp51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %land.lhs.true29, %lor.lhs.false48, %lor.lhs.false45, %land.lhs.true42, %land.lhs.true23
  %call = tail call i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef nonnull %5, %struct.ssl_session_st* noundef nonnull %0) #18
  %.pre = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %lor.lhs.false48, %if.then20
  %20 = phi %struct.ssl_ctx_st* [ %.pre, %if.then52 ], [ %5, %lor.lhs.false48 ], [ %5, %if.then20 ]
  %new_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %20, i64 0, i32 12
  %21 = load i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*)** %new_session_cb, align 8, !tbaa !338
  %cmp57.not = icmp eq i32 (%struct.ssl_st*, %struct.ssl_session_st*)* %21, null
  br i1 %cmp57.not, label %if.end70, label %if.then58

if.then58:                                        ; preds = %if.end55
  %22 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %call60 = tail call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef %22) #18
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %new_session_cb62 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %23, i64 0, i32 12
  %24 = load i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*)** %new_session_cb62, align 8, !tbaa !338
  %25 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %call64 = tail call i32 %24(%struct.ssl_st* noundef nonnull %s, %struct.ssl_session_st* noundef %25) #18
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.then58
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %26) #18
  br label %if.end70

if.end70:                                         ; preds = %if.end55, %if.then66, %if.then58, %land.lhs.true13, %lor.lhs.false, %if.end6
  %and71 = and i32 %6, 128
  %tobool72.not = icmp eq i32 %and71, 0
  %cmp75 = icmp eq i32 %and7, %mode
  %or.cond128 = and i1 %tobool72.not, %cmp75
  br i1 %or.cond128, label %if.then76, label %cleanup

if.then76:                                        ; preds = %if.end70
  %and77 = and i32 %mode, 1
  %tobool78.not = icmp eq i32 %and77, 0
  %27 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  %sess_connect_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %27, i64 0, i32 15, i32 2
  %sess_accept_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %27, i64 0, i32 15, i32 5
  %stat.0 = select i1 %tobool78.not, i32* %sess_accept_good, i32* %sess_connect_good
  %28 = load atomic i32, i32* %stat.0 monotonic, align 4
  %and84 = and i32 %28, 255
  %cmp85 = icmp eq i32 %and84, 255
  br i1 %cmp85, label %if.then86, label %cleanup

if.then86:                                        ; preds = %if.then76
  %call88 = tail call i64 @time(i64* noundef null) #18
  tail call void @SSL_CTX_flush_sessions(%struct.ssl_ctx_st* noundef %27, i64 noundef %call88) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then86, %if.then76, %land.lhs.true3, %entry
  ret void
}

declare i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #1

declare i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_method_st* @SSL_CTX_get_ssl_method(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !49
  ret %struct.ssl_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_method_st* @SSL_get_ssl_method(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  ret %struct.ssl_method_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_ssl_method(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ssl_method_st* %0, %meth
  br i1 %cmp.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %2 = load i32, i32* %version, align 8, !tbaa !32
  %version2 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 0
  %3 = load i32, i32* %version2, align 8, !tbaa !32
  %cmp3 = icmp eq i32 %2, %3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store %struct.ssl_method_st* %meth, %struct.ssl_method_st** %method, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %if.then
  %ssl_free = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 5
  %4 = load void (%struct.ssl_st*)*, void (%struct.ssl_st*)** %ssl_free, align 8, !tbaa !54
  tail call void %4(%struct.ssl_st* noundef nonnull %s) #18
  store %struct.ssl_method_st* %meth, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_new = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 3
  %5 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_new, align 8, !tbaa !55
  %call = tail call i32 %5(%struct.ssl_st* noundef nonnull %s) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ 1, %if.then4 ], [ %call, %if.else ]
  %ssl_connect = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 7
  %6 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_connect, align 8, !tbaa !277
  %cmp8 = icmp eq i32 (%struct.ssl_st*)* %1, %6
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.end
  %ssl_connect10 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 7
  br label %if.end19.sink.split

if.else12:                                        ; preds = %if.end
  %ssl_accept = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 6
  %7 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_accept, align 8, !tbaa !148
  %cmp13 = icmp eq i32 (%struct.ssl_st*)* %1, %7
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.else12
  %ssl_accept15 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 6
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then14, %if.then9
  %ssl_connect10.sink = phi i32 (%struct.ssl_st*)** [ %ssl_connect10, %if.then9 ], [ %ssl_accept15, %if.then14 ]
  %8 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_connect10.sink, align 8, !tbaa !198
  store i32 (%struct.ssl_st*)* %8, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else12, %entry
  %ret.1 = phi i32 [ 1, %entry ], [ %ret.0, %if.else12 ], [ %ret.0, %if.end19.sink.split ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_error(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @ERR_peek_error() #18
  %cmp1.not = icmp eq i64 %call, 0
  br i1 %cmp1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call) #17
  %cmp4 = icmp eq i32 %call3, 2
  %. = select i1 %cmp4, i32 5, i32 1
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @SSL_want(%struct.ssl_st* noundef %s) #17
  %cmp8 = icmp eq i32 %call7, 3
  br i1 %cmp8, label %if.then9, label %if.end31

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #17
  %call11 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call10, i32 noundef 1) #18
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.else13, label %cleanup

if.else13:                                        ; preds = %if.then9
  %call14 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call10, i32 noundef 2) #18
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else17, label %cleanup

if.else17:                                        ; preds = %if.else13
  %call18 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call10, i32 noundef 4) #18
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end31, label %if.then20

if.then20:                                        ; preds = %if.else17
  %call21 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %call10) #18
  %switch.selectcmp = icmp eq i32 %call21, 3
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 5
  %switch.selectcmp106 = icmp eq i32 %call21, 2
  %switch.select107 = select i1 %switch.selectcmp106, i32 7, i32 %switch.select
  br label %cleanup

if.end31:                                         ; preds = %if.else17, %if.end6
  %call32 = tail call i32 @SSL_want(%struct.ssl_st* noundef %s) #17
  %cmp33 = icmp eq i32 %call32, 2
  br i1 %cmp33, label %if.then34, label %if.end56

if.then34:                                        ; preds = %if.end31
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %0 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  %call35 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %0, i32 noundef 2) #18
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else38, label %cleanup

if.else38:                                        ; preds = %if.then34
  %call39 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %0, i32 noundef 1) #18
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else42, label %cleanup

if.else42:                                        ; preds = %if.else38
  %call43 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %0, i32 noundef 4) #18
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end56, label %if.then45

if.then45:                                        ; preds = %if.else42
  %call46 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %0) #18
  %switch.selectcmp108 = icmp eq i32 %call46, 3
  %switch.select109 = select i1 %switch.selectcmp108, i32 8, i32 5
  %switch.selectcmp110 = icmp eq i32 %call46, 2
  %switch.select111 = select i1 %switch.selectcmp110, i32 7, i32 %switch.select109
  br label %cleanup

if.end56:                                         ; preds = %if.else42, %if.end31
  %call57 = tail call i32 @SSL_want(%struct.ssl_st* noundef %s) #17
  %switch.tableidx = add i32 %call57, -4
  %1 = icmp ult i32 %switch.tableidx, 5
  br i1 %1, label %switch.lookup, label %if.end76

if.end76:                                         ; preds = %if.end56
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %2 = load i32, i32* %shutdown, align 4, !tbaa !30
  %and = and i32 %2, 2
  %tobool77.not = icmp eq i32 %and, 0
  br i1 %tobool77.not, label %if.end80, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end76
  %warn_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 12
  %3 = load i32, i32* %warn_alert, align 4, !tbaa !339
  %cmp78 = icmp eq i32 %3, 0
  br i1 %cmp78, label %cleanup, label %if.end80

if.end80:                                         ; preds = %land.lhs.true, %if.end76
  br label %cleanup

switch.lookup:                                    ; preds = %if.end56
  %4 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.SSL_get_error, i64 0, i64 %4
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then45, %if.then20, %land.lhs.true, %if.else38, %if.then34, %if.else13, %if.then9, %if.then2, %entry, %if.end80
  %retval.0 = phi i32 [ 5, %if.end80 ], [ 0, %entry ], [ %., %if.then2 ], [ 2, %if.then9 ], [ 3, %if.else13 ], [ 3, %if.then34 ], [ 2, %if.else38 ], [ 6, %land.lhs.true ], [ %switch.select107, %if.then20 ], [ %switch.select111, %if.then45 ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

declare i64 @ERR_peek_error() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_want(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  %0 = load i32, i32* %rwstate, align 8, !tbaa !36
  ret i32 %0
}

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_get_retry_reason(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_do_handshake_intern(i8* nocapture noundef readonly %vargs) #0 {
entry:
  %s1 = bitcast i8* %vargs to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %s1, align 8, !tbaa !275
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 6
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %call = tail call i32 %1(%struct.ssl_st* noundef %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_undefined_void_function() local_unnamed_addr #0 {
entry:
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3925, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ssl_undefined_void_function, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ssl_undefined_const_function(%struct.ssl_st* nocapture noundef readnone %s) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define noalias %struct.ssl_method_st* @ssl_bad_method(i32 noundef %ver) local_unnamed_addr #0 {
entry:
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3936, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ssl_bad_method, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #18
  ret %struct.ssl_method_st* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @ssl_protocol_to_string(i32 noundef %version) local_unnamed_addr #3 {
entry:
  switch i32 %version, label %sw.default [
    i32 772, label %return
    i32 771, label %sw.bb1
    i32 770, label %sw.bb2
    i32 769, label %sw.bb3
    i32 768, label %sw.bb4
    i32 256, label %sw.bb5
    i32 65279, label %sw.bb6
    i32 65277, label %sw.bb7
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

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_version(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !34
  %call = tail call i8* @ssl_protocol_to_string(i32 noundef %0) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_st* @SSL_dup(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  %call = tail call i32 @SSL_in_init(%struct.ssl_st* noundef %s) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @SSL_in_before(%struct.ssl_st* noundef %s) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %references = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 77
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %s) #17
  %call5 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call4) #17
  %cmp = icmp eq %struct.ssl_st* %call5, null
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp8.not = icmp eq %struct.ssl_session_st* %1, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @SSL_copy_session_id(%struct.ssl_st* noundef nonnull %call5, %struct.ssl_st* noundef nonnull %s) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end33

if.else:                                          ; preds = %if.end7
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %call14 = tail call i32 @SSL_set_ssl_method(%struct.ssl_st* noundef nonnull %call5, %struct.ssl_method_st* noundef %2) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.else
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %cmp18.not = icmp eq %struct.cert_st* %3, null
  br i1 %cmp18.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %if.end17
  %cert20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 49
  %4 = load %struct.cert_st*, %struct.cert_st** %cert20, align 8, !tbaa !82
  tail call void @ssl_cert_free(%struct.cert_st* noundef %4) #18
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %call22 = tail call %struct.cert_st* @ssl_cert_dup(%struct.cert_st* noundef %5) #18
  store %struct.cert_st* %call22, %struct.cert_st** %cert20, align 8, !tbaa !82
  %cmp25 = icmp eq %struct.cert_st* %call22, null
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end17
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 54, i64 0
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 53
  %6 = load i64, i64* %sid_ctx_length, align 8, !tbaa !100
  %conv = trunc i64 %6 to i32
  %call29 = tail call i32 @SSL_set_session_id_context(%struct.ssl_st* noundef nonnull %call5, i8* noundef nonnull %arraydecay, i32 noundef %conv) #17
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end28, %if.then9
  %call34 = tail call fastcc i32 @ssl_dane_dup(%struct.ssl_st* noundef nonnull %call5, %struct.ssl_st* noundef nonnull %s) #17
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end33
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !34
  %version38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 0
  store i32 %7, i32* %version38, align 8, !tbaa !34
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %8 = load i64, i64* %options, align 8, !tbaa !62
  %options39 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 78
  store i64 %8, i64* %options39, align 8, !tbaa !62
  %min_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 80
  %9 = load i32, i32* %min_proto_version, align 4, !tbaa !66
  %min_proto_version40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 80
  store i32 %9, i32* %min_proto_version40, align 4, !tbaa !66
  %max_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %10 = load i32, i32* %max_proto_version, align 8, !tbaa !68
  %max_proto_version41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 81
  store i32 %10, i32* %max_proto_version41, align 8, !tbaa !68
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %11 = load i32, i32* %mode, align 8, !tbaa !70
  %mode42 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 79
  store i32 %11, i32* %mode42, align 8, !tbaa !70
  %call43 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i64 noundef 0, i8* noundef null) #17
  %call44 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call5, i32 noundef 51, i64 noundef %call43, i8* noundef null) #17
  %call45 = tail call i32 @SSL_get_read_ahead(%struct.ssl_st* noundef nonnull %s) #17
  tail call void @SSL_set_read_ahead(%struct.ssl_st* noundef nonnull %call5, i32 noundef %call45) #17
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %12 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !86
  %msg_callback46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 19
  store void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %12, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback46, align 8, !tbaa !86
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %13 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !88
  %msg_callback_arg47 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 20
  store i8* %13, i8** %msg_callback_arg47, align 8, !tbaa !88
  %call48 = tail call i32 @SSL_get_verify_mode(%struct.ssl_st* noundef nonnull %s) #17
  %call49 = tail call i32 (i32, %struct.x509_store_ctx_st*)* @SSL_get_verify_callback(%struct.ssl_st* noundef nonnull %s) #17
  tail call void @SSL_set_verify(%struct.ssl_st* noundef nonnull %call5, i32 noundef %call48, i32 (i32, %struct.x509_store_ctx_st*)* noundef %call49) #17
  %call50 = tail call i32 @SSL_get_verify_depth(%struct.ssl_st* noundef nonnull %s) #17
  tail call void @SSL_set_verify_depth(%struct.ssl_st* noundef nonnull %call5, i32 noundef %call50) #17
  %generate_session_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 59
  %14 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id, align 8, !tbaa !104
  %generate_session_id51 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 59
  store i32 (%struct.ssl_st*, i8*, i32*)* %14, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id51, align 8, !tbaa !104
  %call52 = tail call void (%struct.ssl_st*, i32, i32)* @SSL_get_info_callback(%struct.ssl_st* noundef nonnull %s) #17
  tail call void @SSL_set_info_callback(%struct.ssl_st* noundef nonnull %call5, void (%struct.ssl_st*, i32, i32)* noundef %call52) #17
  %ex_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 74
  %ex_data53 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 74
  %call54 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 0, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data53) #18
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end37
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %15 = load i32, i32* %server, align 8, !tbaa !149
  %server58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 7
  store i32 %15, i32* %server58, align 8, !tbaa !149
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %16 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !273
  %tobool59.not = icmp eq i32 (%struct.ssl_st*)* %16, null
  br i1 %tobool59.not, label %if.end66, label %if.then60

if.then60:                                        ; preds = %if.end57
  %17 = load i32, i32* %server, align 8, !tbaa !149
  %tobool62.not = icmp eq i32 %17, 0
  br i1 %tobool62.not, label %if.else64, label %if.then63

if.then63:                                        ; preds = %if.then60
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %call5) #17
  br label %if.end66

if.else64:                                        ; preds = %if.then60
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %call5) #17
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.else64, %if.end57
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %18 = load i32, i32* %shutdown, align 4, !tbaa !30
  %shutdown67 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 10
  store i32 %18, i32* %shutdown67, align 4, !tbaa !30
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %19 = load i32, i32* %hit, align 8, !tbaa !29
  %hit68 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 21
  store i32 %19, i32* %hit68, align 8, !tbaa !29
  %default_passwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 109
  %20 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !141
  %default_passwd_callback69 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 109
  store i32 (i8*, i32, i32, i8*)* %20, i32 (i8*, i32, i32, i8*)** %default_passwd_callback69, align 8, !tbaa !141
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 110
  %21 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !143
  %default_passwd_callback_userdata70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 110
  store i8* %21, i8** %default_passwd_callback_userdata70, align 8, !tbaa !143
  %param = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 22
  %22 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !45
  %param71 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %23 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param71, align 8, !tbaa !45
  %call72 = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef %22, %struct.X509_VERIFY_PARAM_st* noundef %23) #18
  %cipher_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %24 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !170
  %cmp73.not = icmp eq %struct.stack_st_SSL_CIPHER* %24, null
  br i1 %cmp73.not, label %if.end84, label %if.then75

if.then75:                                        ; preds = %if.end66
  %call77 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %24) #17
  %call78 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call77) #18
  %cipher_list79 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 25
  %25 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list79 to %struct.stack_st**
  store %struct.stack_st* %call78, %struct.stack_st** %25, align 8, !tbaa !170
  %cmp80 = icmp eq %struct.stack_st* %call78, null
  br i1 %cmp80, label %err, label %if.end84

if.end84:                                         ; preds = %if.then75, %if.end66
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %26 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !171
  %cmp85.not = icmp eq %struct.stack_st_SSL_CIPHER* %26, null
  br i1 %cmp85.not, label %if.end96, label %if.then87

if.then87:                                        ; preds = %if.end84
  %call89 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %26) #17
  %call90 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call89) #18
  %cipher_list_by_id91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 26
  %27 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list_by_id91 to %struct.stack_st**
  store %struct.stack_st* %call90, %struct.stack_st** %27, align 8, !tbaa !171
  %cmp92 = icmp eq %struct.stack_st* %call90, null
  br i1 %cmp92, label %err, label %if.end96

if.end96:                                         ; preds = %if.then87, %if.end84
  %ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 75
  %ca_names97 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 75
  %28 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names97, align 8, !tbaa !184
  %call98 = tail call fastcc i32 @dup_ca_names(%struct.stack_st_X509_NAME** noundef nonnull %ca_names, %struct.stack_st_X509_NAME* noundef %28) #17
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.end96
  %client_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call5, i64 0, i32 76
  %client_ca_names101 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 76
  %29 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names101, align 8, !tbaa !185
  %call102 = tail call fastcc i32 @dup_ca_names(%struct.stack_st_X509_NAME** noundef nonnull %client_ca_names, %struct.stack_st_X509_NAME* noundef %29) #17
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %cleanup

err:                                              ; preds = %if.end96, %lor.lhs.false100, %if.then87, %if.then75, %if.end37, %if.end33, %if.end28, %if.then19, %if.else, %if.then9
  tail call void @SSL_free(%struct.ssl_st* noundef nonnull %call5) #17
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false100, %if.end, %err, %if.then
  %retval.0 = phi %struct.ssl_st* [ null, %err ], [ %s, %if.then ], [ null, %if.end ], [ %call5, %lor.lhs.false100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret %struct.ssl_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  ret %struct.ssl_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_dane_dup(%struct.ssl_st* nocapture noundef %to, %struct.ssl_st* nocapture noundef readonly %from) unnamed_addr #0 {
entry:
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %from, i64 0, i32 23, i32 1
  %0 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !340
  %call = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %0) #17
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.end, label %cleanup28

if.end:                                           ; preds = %entry
  %1 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !340
  %call5 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %1) #17
  %dane6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %to, i64 0, i32 23
  tail call fastcc void @dane_final(%struct.ssl_dane_st* noundef nonnull %dane6) #17
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %from, i64 0, i32 23, i32 8
  %2 = load i64, i64* %flags, align 8, !tbaa !64
  %flags9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %to, i64 0, i32 23, i32 8
  store i64 %2, i64* %flags9, align 8, !tbaa !64
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %to, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %dane10 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 66
  %dctx = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane6, i64 0, i32 0
  store %struct.dane_ctx_st* %dane10, %struct.dane_ctx_st** %dctx, align 8, !tbaa !341
  %call12 = tail call fastcc %struct.stack_st_danetls_record* @sk_danetls_record_new_reserve(i32 noundef %call5) #17
  %trecs14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %to, i64 0, i32 23, i32 1
  store %struct.stack_st_danetls_record* %call12, %struct.stack_st_danetls_record** %trecs14, align 8, !tbaa !340
  %cmp17 = icmp eq %struct.stack_st_danetls_record* %call12, null
  br i1 %cmp17, label %if.then18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp2050 = icmp sgt i32 %call5, 0
  br i1 %cmp2050, label %for.body, label %cleanup28

if.then18:                                        ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_dane_dup, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup28

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call5
  br i1 %exitcond.not, label %cleanup28, label %for.body, !llvm.loop !342

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.051 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %4 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !340
  %call23 = tail call fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %4, i32 noundef %i.051) #17
  %usage = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call23, i64 0, i32 0
  %5 = load i8, i8* %usage, align 8, !tbaa !220
  %selector = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call23, i64 0, i32 1
  %6 = load i8, i8* %selector, align 1, !tbaa !221
  %mtype = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call23, i64 0, i32 2
  %7 = load i8, i8* %mtype, align 2, !tbaa !222
  %data = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call23, i64 0, i32 3
  %8 = load i8*, i8** %data, align 8, !tbaa !223
  %dlen = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call23, i64 0, i32 4
  %9 = load i64, i64* %dlen, align 8, !tbaa !224
  %call24 = tail call i32 @SSL_dane_tlsa_add(%struct.ssl_st* noundef %to, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8* noundef %8, i64 noundef %9) #17
  %cmp25 = icmp slt i32 %call24, 1
  %inc = add nuw nsw i32 %i.051, 1
  br i1 %cmp25, label %cleanup28, label %for.cond

cleanup28:                                        ; preds = %for.body, %for.cond, %for.cond.preheader, %entry, %if.then18
  %retval.2 = phi i32 [ 0, %if.then18 ], [ 1, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_info_callback(%struct.ssl_st* nocapture noundef writeonly %ssl, void (%struct.ssl_st*, i32, i32)* noundef %cb) local_unnamed_addr #9 {
entry:
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 64
  store void (%struct.ssl_st*, i32, i32)* %cb, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.ssl_st*, i32, i32)* @SSL_get_info_callback(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 64
  %0 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !343
  ret void (%struct.ssl_st*, i32, i32)* %0
}

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dup_ca_names(%struct.stack_st_X509_NAME** nocapture noundef writeonly %dst, %struct.stack_st_X509_NAME* noundef %src) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509_NAME* %src, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.stack_st_X509_NAME* null, %struct.stack_st_X509_NAME** %dst, align 8, !tbaa !198
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_NAME*
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %src) #17
  %call540 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #18
  %cmp641 = icmp sgt i32 %call540, 0
  br i1 %cmp641, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end14
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #18
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !344

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.042 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.042) #18
  %1 = bitcast i8* %call8 to %struct.X509_name_st*
  %call9 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %1) #18
  %cmp10 = icmp eq %struct.X509_name_st* %call9, null
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %0) #17
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %for.body
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call12, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %2 = bitcast %struct.X509_name_st* %call9 to i8*
  %call17 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call12, i8* noundef nonnull %2, i32 noundef %i.042) #18
  %cmp18 = icmp eq i32 %call17, 0
  %inc = add nuw nsw i32 %i.042, 1
  br i1 %cmp18, label %if.then19, label %for.cond

if.then19:                                        ; preds = %if.end14
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call9) #18
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call12, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #18
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %3 = bitcast %struct.stack_st_X509_NAME** %dst to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %3, align 8, !tbaa !198
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.then19, %if.then11, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then11 ], [ 0, %if.then19 ], [ 1, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_clear_cipher_ctx(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !345
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %0) #18
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !345
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !346
  %cmp3.not = icmp eq %struct.evp_cipher_ctx_st* %1, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %1) #18
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !346
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %2 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !347
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %2) #18
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %expand, align 8, !tbaa !347
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %3 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !348
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %3) #18
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %compress, align 8, !tbaa !348
  ret void
}

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare void @COMP_CTX_free(%struct.comp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @SSL_get_certificate(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %cmp.not = icmp eq %struct.cert_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.x509_st* [ %2, %if.then ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @SSL_get_privatekey(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %cmp.not = icmp eq %struct.cert_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !272
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @SSL_CTX_get0_certificate(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %cmp.not = icmp eq %struct.cert_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !270
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.x509_st* [ %2, %if.then ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @SSL_CTX_get0_privatekey(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %cmp.not = icmp eq %struct.cert_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !269
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !272
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 20
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !349
  %cmp2.not = icmp eq %struct.ssl_cipher_st* %1, null
  br i1 %cmp2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi %struct.ssl_cipher_st* [ null, %if.end ], [ %1, %land.lhs.true ]
  ret %struct.ssl_cipher_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_cipher_st* @SSL_get_pending_cipher(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !331
  ret %struct.ssl_cipher_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.comp_method_st* @SSL_get_current_compression(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %0 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !348
  %tobool.not = icmp eq %struct.comp_ctx_st* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.comp_method_st* @COMP_CTX_get_method(%struct.comp_ctx_st* noundef nonnull %0) #18
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.comp_method_st* [ %call, %cond.true ], [ null, %entry ]
  ret %struct.comp_method_st* %cond
}

declare %struct.comp_method_st* @COMP_CTX_get_method(%struct.comp_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.comp_method_st* @SSL_get_current_expansion(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %0 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !347
  %tobool.not = icmp eq %struct.comp_ctx_st* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.comp_method_st* @COMP_CTX_get_method(%struct.comp_ctx_st* noundef nonnull %0) #18
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.comp_method_st* [ %call, %cond.true ], [ null, %entry ]
  ret %struct.comp_method_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_init_wbio_buffer(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %bbio1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 4
  %0 = load %struct.bio_st*, %struct.bio_st** %bbio1, align 8, !tbaa !240
  %cmp.not = icmp eq %struct.bio_st* %0, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_f_buffer() #18
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #18
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 117, i64 noundef 1, i32 noundef 0) #18
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef %call2) #18
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4204, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_init_wbio_buffer, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #18
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  store %struct.bio_st* %call2, %struct.bio_st** %bbio1, align 8, !tbaa !240
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %1 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !168
  %call9 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call2, %struct.bio_st* noundef %1) #18
  store %struct.bio_st* %call9, %struct.bio_st** %wbio, align 8, !tbaa !168
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end7 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_quiet_shutdown(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %mode) local_unnamed_addr #9 {
entry:
  %quiet_shutdown = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 49
  store i32 %mode, i32* %quiet_shutdown, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_get_quiet_shutdown(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %quiet_shutdown = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 49
  %0 = load i32, i32* %quiet_shutdown, align 8, !tbaa !106
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_quiet_shutdown(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %mode) local_unnamed_addr #9 {
entry:
  %quiet_shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 9
  store i32 %mode, i32* %quiet_shutdown, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_quiet_shutdown(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %quiet_shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 9
  %0 = load i32, i32* %quiet_shutdown, align 8, !tbaa !107
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_shutdown(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %mode) local_unnamed_addr #9 {
entry:
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 %mode, i32* %shutdown, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_shutdown(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %0 = load i32, i32* %shutdown, align 4, !tbaa !30
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_client_version(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %0 = load i32, i32* %client_version, align 4, !tbaa !35
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !48
  %cmp = icmp eq %struct.ssl_ctx_st* %0, %ctx
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 95
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !124
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %ctx.addr.0 = phi %struct.ssl_ctx_st* [ %1, %if.then4 ], [ %ctx, %if.end ]
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx.addr.0, i64 0, i32 39
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %call = tail call %struct.cert_st* @ssl_cert_dup(%struct.cert_st* noundef %2) #18
  %cmp6 = icmp eq %struct.cert_st* %call, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %call, i64 0, i32 16
  %cert9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert9, align 8, !tbaa !82
  %custext10 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 16
  %call11 = tail call i32 @custom_exts_copy_flags(%struct.custom_ext_methods* noundef nonnull %custext, %struct.custom_ext_methods* noundef nonnull %custext10) #18
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  tail call void @ssl_cert_free(%struct.cert_st* noundef nonnull %call) #18
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %4 = load %struct.cert_st*, %struct.cert_st** %cert9, align 8, !tbaa !82
  tail call void @ssl_cert_free(%struct.cert_st* noundef %4) #18
  store %struct.cert_st* %call, %struct.cert_st** %cert9, align 8, !tbaa !82
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 53
  %5 = load i64, i64* %sid_ctx_length, align 8, !tbaa !100
  %cmp16 = icmp ult i64 %5, 33
  br i1 %cmp16, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end13
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !48
  %cmp22.not = icmp eq %struct.ssl_ctx_st* %6, null
  br i1 %cmp22.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %sid_ctx_length26 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 44
  %7 = load i64, i64* %sid_ctx_length26, align 8, !tbaa !99
  %cmp27 = icmp eq i64 %5, %7
  br i1 %cmp27, label %land.lhs.true29, label %if.end43

land.lhs.true29:                                  ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 54, i64 0
  %arraydecay32 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 45, i64 0
  %call34 = tail call i32 @memcmp(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay32, i64 noundef %5) #20
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %land.lhs.true29
  %sid_ctx_length38 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx.addr.0, i64 0, i32 44
  %8 = load i64, i64* %sid_ctx_length38, align 8, !tbaa !99
  store i64 %8, i64* %sid_ctx_length, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx.addr.0, i64 0, i32 45, i64 0
  %call42 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %9, i64 noundef 32) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %land.lhs.true29, %land.lhs.true, %if.end20
  %call44 = tail call i32 @SSL_CTX_up_ref(%struct.ssl_ctx_st* noundef nonnull %ctx.addr.0) #17
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !48
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %10) #17
  store %struct.ssl_ctx_st* %ctx.addr.0, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !48
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5, %entry, %if.end43, %if.then12
  %retval.0 = phi %struct.ssl_ctx_st* [ %ctx.addr.0, %if.end43 ], [ null, %if.then12 ], [ %ctx, %entry ], [ null, %if.end5 ], [ null, %if.end13 ]
  ret %struct.ssl_ctx_st* %retval.0
}

declare i32 @custom_exts_copy_flags(%struct.custom_ext_methods* noundef, %struct.custom_ext_methods* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_default_verify_paths(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !263
  %call = tail call i32 @X509_STORE_set_default_paths_ex(%struct.x509_store_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #18
  ret i32 %call
}

declare i32 @X509_STORE_set_default_paths_ex(%struct.x509_store_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_default_verify_dir(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() #18
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %0, %struct.x509_lookup_method_st* noundef %call) #18
  %cmp = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ERR_set_mark() #18
  %call3 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 2, i8* noundef null, i64 noundef 3, i8** noundef null) #18
  %call4 = tail call i32 @ERR_pop_to_mark() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #1

declare %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_default_verify_file(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #18
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %0, %struct.x509_lookup_method_st* noundef %call) #18
  %cmp = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ERR_set_mark() #18
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !263
  %call3 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 1, i8* noundef null, i64 noundef 3, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #18
  %call4 = tail call i32 @ERR_pop_to_mark() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #1

declare i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_default_verify_store(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %call = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_store() #18
  %call1 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %0, %struct.x509_lookup_method_st* noundef %call) #18
  %cmp = icmp eq %struct.x509_lookup_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ERR_set_mark() #18
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !263
  %call3 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call1, i32 noundef 3, i8* noundef null, i64 noundef 0, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #18
  %call4 = tail call i32 @ERR_pop_to_mark() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.x509_lookup_method_st* @X509_LOOKUP_store() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %CAfile) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !263
  %call = tail call i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef %0, i8* noundef %CAfile, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #18
  ret i32 %call
}

declare i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %CApath) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %call = tail call i32 @X509_STORE_load_path(%struct.x509_store_st* noundef %0, i8* noundef %CApath) #18
  ret i32 %call
}

declare i32 @X509_STORE_load_path(%struct.x509_store_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_load_verify_store(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %CAstore) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !263
  %call = tail call i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef %0, i8* noundef %CAstore, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #18
  ret i32 %call
}

declare i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_load_verify_locations(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %CAfile, i8* noundef %CApath) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %CAfile, null
  %cmp1 = icmp eq i8* %CApath, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end5, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %call = tail call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %CAfile) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end5

if.end5:                                          ; preds = %land.lhs.true3, %if.end
  br i1 %cmp1, label %if.end11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %call8 = tail call i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %CApath) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %land.lhs.true7, %if.end5
  br label %return

return:                                           ; preds = %land.lhs.true7, %land.lhs.true3, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_verify_result(%struct.ssl_st* nocapture noundef writeonly %ssl, i64 noundef %arg) local_unnamed_addr #9 {
entry:
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 73
  store i64 %arg, i64* %verify_result, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_get_verify_result(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 73
  %0 = load i64, i64* %verify_result, align 8, !tbaa !139
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_get_client_random(%struct.ssl_st* noundef %ssl, i8* noundef %out, i64 noundef %outlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %outlen, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = icmp ult i64 %outlen, 32
  %spec.store.select = select i1 %0, i64 %outlen, i64 32
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 6, i64 0
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %spec.store.select) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %spec.store.select, %if.end ], [ 32, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_get_server_random(%struct.ssl_st* noundef %ssl, i8* noundef %out, i64 noundef %outlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %outlen, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = icmp ult i64 %outlen, 32
  %spec.store.select = select i1 %0, i64 %outlen, i64 32
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 5, i64 0
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %spec.store.select) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %spec.store.select, %if.end ], [ 32, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_SESSION_get_master_key(%struct.ssl_session_st* noundef %session, i8* noundef %out, i64 noundef %outlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %outlen, 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 1
  %0 = load i64, i64* %master_key_length, align 8, !tbaa !350
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i64 %0, %outlen
  %spec.select = select i1 %cmp2, i64 %0, i64 %outlen
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 3, i64 0
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %arraydecay, i64 noundef %spec.select) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %spec.select, %if.end ], [ %0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_master_key(%struct.ssl_session_st* noundef %sess, i8* noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %len, 512
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 3, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %in, i64 noundef %len) #18
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %sess, i64 0, i32 1
  store i64 %len, i64* %master_key_length, align 8, !tbaa !350
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_ex_data(%struct.ssl_st* noundef %s, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 74
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #18
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_get_ex_data(%struct.ssl_st* noundef %s, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 74
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #18
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_ex_data(%struct.ssl_ctx_st* noundef %s, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 26
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_CTX_get_ex_data(%struct.ssl_ctx_st* noundef %s, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 26
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #18
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  ret %struct.x509_store_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_cert_store(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.x509_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %0) #18
  store %struct.x509_store_st* %store, %struct.x509_store_st** %cert_store, align 8, !tbaa !241
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set1_cert_store(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.x509_store_st* noundef %store) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef nonnull %store) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @SSL_CTX_set_cert_store(%struct.ssl_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %store) #17
  ret void
}

declare i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_psk_identity_hint(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %identity_hint) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %identity_hint, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %identity_hint) #20
  %cmp1 = icmp ugt i64 %call, 256
  br i1 %cmp1, label %if.then, label %if.then3

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4524, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.SSL_CTX_use_psk_identity_hint, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 146, i8* noundef null) #18
  br label %return

if.then3:                                         ; preds = %land.lhs.true
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 20
  %1 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !351
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4527) #18
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %identity_hint, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4529) #18
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %psk_identity_hint6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 20
  store i8* %call4, i8** %psk_identity_hint6, align 8, !tbaa !351
  %cmp9 = icmp eq i8* %call4, null
  br i1 %cmp9, label %return, label %if.end14

if.else:                                          ; preds = %entry
  %cert21 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %3 = load %struct.cert_st*, %struct.cert_st** %cert21, align 8, !tbaa !58
  %psk_identity_hint22 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 20
  %4 = load i8*, i8** %psk_identity_hint22, align 8, !tbaa !351
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4527) #18
  %5 = load %struct.cert_st*, %struct.cert_st** %cert21, align 8, !tbaa !58
  %psk_identity_hint13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 20
  store i8* null, i8** %psk_identity_hint13, align 8, !tbaa !351
  br label %if.end14

if.end14:                                         ; preds = %if.then3, %if.else
  br label %return

return:                                           ; preds = %if.then3, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end14 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_psk_identity_hint(%struct.ssl_st* noundef readonly %s, i8* noundef %identity_hint) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %identity_hint, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %identity_hint) #20
  %cmp2 = icmp ugt i64 %call, 256
  br i1 %cmp2, label %if.then3, label %if.then6

if.then3:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4543, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_use_psk_identity_hint, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 146, i8* noundef null) #18
  br label %return

if.then6:                                         ; preds = %land.lhs.true
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 20
  %1 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !351
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4546) #18
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %identity_hint, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4548) #18
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %psk_identity_hint9 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 20
  store i8* %call7, i8** %psk_identity_hint9, align 8, !tbaa !351
  %cmp12 = icmp eq i8* %call7, null
  br i1 %cmp12, label %return, label %if.end17

if.else:                                          ; preds = %if.end
  %cert25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert25, align 8, !tbaa !82
  %psk_identity_hint26 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 20
  %4 = load i8*, i8** %psk_identity_hint26, align 8, !tbaa !351
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4546) #18
  %5 = load %struct.cert_st*, %struct.cert_st** %cert25, align 8, !tbaa !82
  %psk_identity_hint16 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 20
  store i8* null, i8** %psk_identity_hint16, align 8, !tbaa !351
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.else
  br label %return

return:                                           ; preds = %if.then6, %entry, %if.end17, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end17 ], [ 0, %entry ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_psk_identity_hint(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %psk_identity_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 8
  %1 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !352
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_psk_identity(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %psk_identity = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 9
  %1 = load i8*, i8** %psk_identity, align 8, !tbaa !353
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_psk_client_callback(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_client_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 67
  store i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %cb, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_client_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 61
  store i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %cb, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_psk_server_callback(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_server_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  store i32 (%struct.ssl_st*, i8*, i8*, i32)* %cb, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_server_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 62
  store i32 (%struct.ssl_st*, i8*, i8*, i32)* %cb, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_psk_find_session_callback(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_find_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 69
  store i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* %cb, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %psk_find_session_cb, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_psk_find_session_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_find_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 63
  store i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* %cb, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %psk_find_session_cb, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_psk_use_session_callback(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_use_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 70
  store i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* %cb, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %psk_use_session_cb, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_psk_use_session_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* noundef %cb) local_unnamed_addr #9 {
entry:
  %psk_use_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 64
  store i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)* %cb, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)** %psk_use_session_cb, align 8, !tbaa !156
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_msg_callback(%struct.ssl_ctx_st* noundef %ctx, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %cb to void ()*
  %call = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 15, void ()* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_msg_callback(%struct.ssl_st* noundef %ssl, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %cb to void ()*
  %call = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 15, void ()* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_not_resumable_session_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i32)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.ssl_st*, i32)* %cb to void ()*
  %call = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 79, void ()* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_not_resumable_session_callback(%struct.ssl_st* noundef %ssl, i32 (%struct.ssl_st*, i32)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.ssl_st*, i32)* %cb to void ()*
  %call = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 79, void ()* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_record_padding_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i64 (%struct.ssl_st*, i32, i64, i8*)* noundef %cb) local_unnamed_addr #9 {
entry:
  %record_padding_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 73
  store i64 (%struct.ssl_st*, i32, i64, i8*)* %cb, i64 (%struct.ssl_st*, i32, i64, i8*)** %record_padding_cb, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_record_padding_callback_arg(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %record_padding_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 74
  store i8* %arg, i8** %record_padding_arg, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_CTX_get_record_padding_callback_arg(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %record_padding_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 74
  %0 = load i8*, i8** %record_padding_arg, align 8, !tbaa !95
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_block_padding(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i64 noundef %block_size) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq i64 %block_size, 1
  br i1 %cmp, label %return.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i64 %block_size, 16385
  br i1 %cmp1, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.else, %entry
  %.sink = phi i64 [ 0, %entry ], [ %block_size, %if.else ]
  %block_padding = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 75
  store i64 %.sink, i64* %block_padding, align 8, !tbaa !97
  br label %return

return:                                           ; preds = %return.sink.split, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_record_padding_callback(%struct.ssl_st* nocapture noundef %ssl, i64 (%struct.ssl_st*, i32, i64, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %ssl) #17
  %record_padding_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 117
  store i64 (%struct.ssl_st*, i32, i64, i8*)* %cb, i64 (%struct.ssl_st*, i32, i64, i8*)** %record_padding_cb, align 8, !tbaa !94
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_record_padding_callback_arg(%struct.ssl_st* nocapture noundef writeonly %ssl, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %record_padding_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 118
  store i8* %arg, i8** %record_padding_arg, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_record_padding_callback_arg(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %record_padding_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 118
  %0 = load i8*, i8** %record_padding_arg, align 8, !tbaa !96
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_block_padding(%struct.ssl_st* nocapture noundef writeonly %ssl, i64 noundef %block_size) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq i64 %block_size, 1
  br i1 %cmp, label %return.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i64 %block_size, 16385
  br i1 %cmp1, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.else, %entry
  %.sink = phi i64 [ 0, %entry ], [ %block_size, %if.else ]
  %block_padding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 119
  store i64 %.sink, i64* %block_padding, align 8, !tbaa !98
  br label %return

return:                                           ; preds = %return.sink.split, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_num_tickets(%struct.ssl_st* nocapture noundef writeonly %s, i64 noundef %num_tickets) local_unnamed_addr #9 {
entry:
  %num_tickets1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 121
  store i64 %num_tickets, i64* %num_tickets1, align 8, !tbaa !78
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_get_num_tickets(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %num_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 121
  %0 = load i64, i64* %num_tickets, align 8, !tbaa !78
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_num_tickets(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i64 noundef %num_tickets) local_unnamed_addr #9 {
entry:
  %num_tickets1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 79
  store i64 %num_tickets, i64* %num_tickets1, align 8, !tbaa !77
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_CTX_get_num_tickets(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %num_tickets = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 79
  %0 = load i64, i64* %num_tickets, align 8, !tbaa !77
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** nocapture noundef %hash, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  tail call void @ssl_clear_hash_ctx(%struct.evp_md_ctx_st** noundef %hash) #17
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #18
  store %struct.evp_md_ctx_st* %call, %struct.evp_md_ctx_st** %hash, align 8, !tbaa !198
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp eq %struct.evp_md_st* %md, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call1 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef nonnull %md, %struct.engine_st* noundef null) #18
  %cmp2 = icmp slt i32 %call1, 1
  %.pre10 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %hash, align 8, !tbaa !198
  br i1 %cmp2, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true, %entry
  %0 = phi %struct.evp_md_ctx_st* [ null, %entry ], [ %.pre10, %land.lhs.true ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %0) #18
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %hash, align 8, !tbaa !198
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  %retval.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ %call, %lor.lhs.false ], [ %.pre10, %land.lhs.true ]
  ret %struct.evp_md_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_clear_hash_ctx(%struct.evp_md_ctx_st** nocapture noundef %hash) local_unnamed_addr #0 {
entry:
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %hash, align 8, !tbaa !198
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %0) #18
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %hash, align 8, !tbaa !198
  ret void
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_handshake_hash(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %outlen, i64* nocapture noundef writeonly %hashlen) local_unnamed_addr #0 {
entry:
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !354
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %0) #18
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #18
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv30 = zext i32 %call1 to i64
  %cmp2 = icmp ugt i64 %conv30, %outlen
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4771, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_handshake_hash, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #18
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #18
  %cmp5 = icmp eq %struct.evp_md_ctx_st* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4777, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_handshake_hash, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #18
  br label %err

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, %struct.evp_md_ctx_st* noundef %0) #18
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %call11 = tail call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call4, i8* noundef %out, i32* noundef null) #18
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false10, %if.end8
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4783, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_handshake_hash, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #18
  br label %err

if.end15:                                         ; preds = %lor.lhs.false10
  store i64 %conv30, i64* %hashlen, align 8, !tbaa !110
  br label %err

err:                                              ; preds = %if.end15, %if.then14, %if.then7, %if.then
  %ctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %if.then7 ], [ %call4, %if.then14 ], [ %call4, %if.end15 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then14 ], [ 1, %if.end15 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.0) #18
  ret i32 %ret.0
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_session_reused(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %0 = load i32, i32* %hit, align 8, !tbaa !29
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_is_server(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !149
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @SSL_set_debug(%struct.ssl_st* nocapture noundef %s, i32 noundef %debug) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_set_security_level(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %level) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 18
  store i32 %level, i32* %sec_level, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_security_level(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 18
  %1 = load i32, i32* %sec_level, align 8, !tbaa !355
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_set_security_callback(%struct.ssl_st* nocapture noundef readonly %s, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* noundef %cb) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  store i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %cb, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* @SSL_get_security_callback(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  %1 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !356
  ret i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_set0_security_ex_data(%struct.ssl_st* nocapture noundef readonly %s, i8* noundef %ex) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  store i8* %ex, i8** %sec_ex, align 8, !tbaa !357
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get0_security_ex_data(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  %1 = load i8*, i8** %sec_ex, align 8, !tbaa !357
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i32 noundef %level) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 18
  store i32 %level, i32* %sec_level, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_get_security_level(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 18
  %1 = load i32, i32* %sec_level, align 8, !tbaa !355
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_CTX_set_security_callback(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* noundef %cb) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  store i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %cb, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* @SSL_CTX_get_security_callback(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  %1 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !356
  ret i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_CTX_set0_security_ex_data(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %ex) local_unnamed_addr #8 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  store i8* %ex, i8** %sec_ex, align 8, !tbaa !357
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_CTX_get0_security_ex_data(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  %1 = load i8*, i8** %sec_ex, align 8, !tbaa !357
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_CTX_get_options(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %options = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 34
  %0 = load i64, i64* %options, align 8, !tbaa !61
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_get_options(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !62
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* nocapture noundef %ctx, i64 noundef %op) local_unnamed_addr #8 {
entry:
  %options = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 34
  %0 = load i64, i64* %options, align 8, !tbaa !61
  %or = or i64 %0, %op
  store i64 %or, i64* %options, align 8, !tbaa !61
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_set_options(%struct.ssl_st* nocapture noundef %s, i64 noundef %op) local_unnamed_addr #8 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !62
  %or = or i64 %0, %op
  store i64 %or, i64* %options, align 8, !tbaa !62
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_CTX_clear_options(%struct.ssl_ctx_st* nocapture noundef %ctx, i64 noundef %op) local_unnamed_addr #8 {
entry:
  %neg = xor i64 %op, -1
  %options = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 34
  %0 = load i64, i64* %options, align 8, !tbaa !61
  %and = and i64 %0, %neg
  store i64 %and, i64* %options, align 8, !tbaa !61
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_clear_options(%struct.ssl_st* nocapture noundef %s, i64 noundef %op) local_unnamed_addr #8 {
entry:
  %neg = xor i64 %op, -1
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %0, %neg
  store i64 %and, i64* %options, align 8, !tbaa !62
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* @SSL_get0_verified_chain(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %verified_chain = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 72
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !138
  ret %struct.stack_st_X509* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @OBJ_bsearch_ssl_cipher_id(%struct.ssl_cipher_st* noundef %key, %struct.ssl_cipher_st* noundef %base, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ssl_cipher_st* %key to i8*
  %1 = bitcast %struct.ssl_cipher_st* %base to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef %1, i32 noundef %num, i32 noundef 80, i32 (i8*, i8*)* noundef nonnull @ssl_cipher_id_cmp_BSEARCH_CMP_FN) #18
  %2 = bitcast i8* %call to %struct.ssl_cipher_st*
  ret %struct.ssl_cipher_st* %2
}

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ssl_cipher_id_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #6 {
entry:
  %0 = bitcast i8* %a_ to %struct.ssl_cipher_st*
  %1 = bitcast i8* %b_ to %struct.ssl_cipher_st*
  %call = tail call i32 @ssl_cipher_id_cmp(%struct.ssl_cipher_st* noundef %0, %struct.ssl_cipher_st* noundef %1) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SCT* @SSL_get0_peer_scts(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %scts_parsed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 94
  %0 = load i32, i32* %scts_parsed, align 8, !tbaa !358
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ct_extract_tls_extension_scts(%struct.ssl_st* noundef nonnull %s) #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call1 = tail call fastcc i32 @ct_extract_ocsp_response_scts(%struct.ssl_st* noundef nonnull %s) #17
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @ct_extract_x509v3_extension_scts(%struct.ssl_st* noundef nonnull %s) #17
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  store i32 1, i32* %scts_parsed, align 8, !tbaa !358
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %scts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 93
  %1 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !176
  br label %return

return:                                           ; preds = %lor.lhs.false3, %lor.lhs.false, %if.then, %if.end8
  %retval.0 = phi %struct.stack_st_SCT* [ %1, %if.end8 ], [ null, %if.then ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false3 ]
  ret %struct.stack_st_SCT* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_extract_tls_extension_scts(%struct.ssl_st* nocapture noundef %s) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %scts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 5
  %0 = load i8*, i8** %scts, align 8, !tbaa !177
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store i8* %0, i8** %p, align 8, !tbaa !198
  %scts_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 6
  %2 = load i16, i16* %scts_len, align 8, !tbaa !359
  %conv = zext i16 %2 to i64
  %call = call %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #18
  %scts5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 93
  %call6 = call fastcc i32 @ct_move_scts(%struct.stack_st_SCT** noundef nonnull %scts5, %struct.stack_st_SCT* noundef %call, i32 noundef 1) #17
  call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %call) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %scts_extracted.0 = phi i32 [ %call6, %if.then ], [ 0, %entry ]
  ret i32 %scts_extracted.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_extract_ocsp_response_scts(%struct.ssl_st* nocapture noundef %s) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %1 = load i8*, i8** %resp, align 8, !tbaa !122
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %cleanup35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %resp_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  %2 = load i64, i64* %resp_len, align 8, !tbaa !123
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %cleanup35, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i8* %1, i8** %p, align 8, !tbaa !198
  %sext = shl i64 %2, 32
  %conv10 = ashr exact i64 %sext, 32
  %call = call %struct.ocsp_response_st* @d2i_OCSP_RESPONSE(%struct.ocsp_response_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv10) #18
  %cmp11 = icmp eq %struct.ocsp_response_st* %call, null
  br i1 %cmp11, label %cleanup35, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = call %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef nonnull %call) #18
  %cmp16 = icmp eq %struct.ocsp_basic_response_st* %call15, null
  br i1 %cmp16, label %cleanup35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %call2069 = call i32 @OCSP_resp_count(%struct.ocsp_basic_response_st* noundef nonnull %call15) #18
  %cmp2170 = icmp sgt i32 %call2069, 0
  br i1 %cmp2170, label %for.body.lr.ph, label %cleanup35

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %scts29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 93
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %scts.072 = phi %struct.stack_st_SCT* [ null, %for.body.lr.ph ], [ %scts.1.ph, %for.inc ]
  %scts_extracted.071 = phi i32 [ 0, %for.body.lr.ph ], [ %scts_extracted.1.ph, %for.inc ]
  %call23 = call %struct.ocsp_single_response_st* @OCSP_resp_get0(%struct.ocsp_basic_response_st* noundef nonnull %call15, i32 noundef %i.073) #18
  %cmp24 = icmp eq %struct.ocsp_single_response_st* %call23, null
  br i1 %cmp24, label %for.inc, label %if.end27

if.end27:                                         ; preds = %for.body
  %call28 = call i8* @OCSP_SINGLERESP_get1_ext_d2i(%struct.ocsp_single_response_st* noundef nonnull %call23, i32 noundef 954, i32* noundef null, i32* noundef null) #18
  %3 = bitcast i8* %call28 to %struct.stack_st_SCT*
  %call30 = call fastcc i32 @ct_move_scts(%struct.stack_st_SCT** noundef nonnull %scts29, %struct.stack_st_SCT* noundef %3, i32 noundef 3) #17
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %cleanup35.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end27
  %scts_extracted.1.ph = phi i32 [ %call30, %if.end27 ], [ %scts_extracted.071, %for.body ]
  %scts.1.ph = phi %struct.stack_st_SCT* [ %3, %if.end27 ], [ %scts.072, %for.body ]
  %inc = add nuw nsw i32 %i.073, 1
  %call20 = call i32 @OCSP_resp_count(%struct.ocsp_basic_response_st* noundef nonnull %call15) #18
  %cmp21 = icmp slt i32 %inc, %call20
  br i1 %cmp21, label %for.body, label %cleanup35, !llvm.loop !360

cleanup35.loopexit.split.loop.exit:               ; preds = %if.end27
  %4 = bitcast i8* %call28 to %struct.stack_st_SCT*
  br label %cleanup35

cleanup35:                                        ; preds = %for.inc, %cleanup35.loopexit.split.loop.exit, %for.cond.preheader, %lor.lhs.false, %entry, %if.end, %if.end14
  %scts_extracted.2 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end14 ], [ 0, %for.cond.preheader ], [ %call30, %cleanup35.loopexit.split.loop.exit ], [ %scts_extracted.1.ph, %for.inc ]
  %br.0 = phi %struct.ocsp_basic_response_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end14 ], [ %call15, %for.cond.preheader ], [ %call15, %cleanup35.loopexit.split.loop.exit ], [ %call15, %for.inc ]
  %rsp.0 = phi %struct.ocsp_response_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call, %if.end14 ], [ %call, %for.cond.preheader ], [ %call, %cleanup35.loopexit.split.loop.exit ], [ %call, %for.inc ]
  %scts.2 = phi %struct.stack_st_SCT* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end14 ], [ null, %for.cond.preheader ], [ %4, %cleanup35.loopexit.split.loop.exit ], [ %scts.1.ph, %for.inc ]
  call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %scts.2) #18
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %br.0) #18
  call void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %rsp.0) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %scts_extracted.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_extract_x509v3_extension_scts(%struct.ssl_st* nocapture noundef %s) unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %if.end, label %cond.end

cond.end:                                         ; preds = %entry
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 11
  %1 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !267
  %cmp2.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %1, i32 noundef 951, i32* noundef null, i32* noundef null) #18
  %2 = bitcast i8* %call to %struct.stack_st_SCT*
  %scts3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 93
  %call4 = tail call fastcc i32 @ct_move_scts(%struct.stack_st_SCT** noundef nonnull %scts3, %struct.stack_st_SCT* noundef %2, i32 noundef 2) #17
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %2) #18
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %cond.end
  %scts_extracted.0 = phi i32 [ %call4, %if.then ], [ 0, %cond.end ], [ 0, %entry ]
  ret i32 %scts_extracted.0
}

declare i32 @SSL_CTX_has_client_custom_ext(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_ct_validation_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef %callback, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %callback, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @SSL_CTX_has_client_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 18) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5140, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.SSL_CTX_set_ct_validation_callback, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 206, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %ct_validation_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 51
  store i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %callback, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !163
  %ct_validation_callback_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 52
  store i8* %arg, i8** %ct_validation_callback_arg, align 8, !tbaa !164
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_ct_is_enabled(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  %0 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !166
  %cmp = icmp ne i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_ct_is_enabled(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %ct_validation_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 51
  %0 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !163
  %cmp = icmp ne i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_validate_ct(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %cleanup, label %cond.end

cond.end:                                         ; preds = %entry
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 11
  %1 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !267
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  %2 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !166
  %cmp3 = icmp eq i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %2, null
  %cmp4 = icmp eq %struct.x509_st* %1, null
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %cond.end
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %3 = load i64, i64* %verify_result, align 8, !tbaa !139
  %cmp6.not = icmp eq i64 %3, 0
  br i1 %cmp6.not, label %lor.lhs.false7, label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %verified_chain = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 72
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !138
  %cmp8 = icmp eq %struct.stack_st_X509* %4, null
  br i1 %cmp8, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %4) #17
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #18
  %cmp12 = icmp slt i32 %call11, 2
  br i1 %cmp12, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 1
  %5 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !203
  %call14 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %5) #17
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true
  %mtlsa = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 3
  %6 = load %struct.danetls_record_st*, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !216
  %cmp17.not = icmp eq %struct.danetls_record_st* %6, null
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %usage = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %6, i64 0, i32 0
  %7 = load i8, i8* %usage, align 8, !tbaa !220
  %8 = and i8 %7, -2
  %switch = icmp eq i8 %8, 2
  br i1 %switch, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16, %land.lhs.true
  %ctx21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx21, align 8, !tbaa !48
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 0
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !322
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 85
  %11 = load i8*, i8** %propq, align 8, !tbaa !263
  %call23 = tail call %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %11) #18
  %cmp24 = icmp eq %struct.ct_policy_eval_ctx_st* %call23, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5198, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_validate_ct, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #18
  br label %end.thread

if.end27:                                         ; preds = %if.end20
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !138
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %12) #17
  %call30 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call29, i32 noundef 1) #18
  %13 = bitcast i8* %call30 to %struct.x509_st*
  %call31 = tail call i32 @CT_POLICY_EVAL_CTX_set1_cert(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23, %struct.x509_st* noundef nonnull %1) #18
  %call32 = tail call i32 @CT_POLICY_EVAL_CTX_set1_issuer(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23, %struct.x509_st* noundef %13) #18
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx21, align 8, !tbaa !48
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 50
  %15 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  tail call void @CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23, %struct.ctlog_store_st* noundef %15) #18
  %call34 = tail call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef nonnull %s) #18
  %call35 = tail call i64 @SSL_SESSION_get_time(%struct.ssl_session_st* noundef %call34) #18
  %mul = mul i64 %call35, 1000
  tail call void @CT_POLICY_EVAL_CTX_set_time(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23, i64 noundef %mul) #18
  %call36 = tail call %struct.stack_st_SCT* @SSL_get0_peer_scts(%struct.ssl_st* noundef nonnull %s) #17
  %call37 = tail call i32 @SCT_LIST_validate(%struct.stack_st_SCT* noundef %call36, %struct.ct_policy_eval_ctx_st* noundef nonnull %call23) #18
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end27
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5226, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_validate_ct, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 208, i8* noundef null) #18
  br label %end.thread

if.end41:                                         ; preds = %if.end27
  %16 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !166
  %ct_validation_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 92
  %17 = load i8*, i8** %ct_validation_callback_arg, align 8, !tbaa !167
  %call43 = tail call i32 %16(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23, %struct.stack_st_SCT* noundef %call36, i8* noundef %17) #18
  %18 = icmp sgt i32 %call43, 0
  br i1 %18, label %end, label %if.then48

if.then48:                                        ; preds = %if.end41
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5234, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_validate_ct, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 234, i8* noundef null) #18
  br label %end.thread

end.thread:                                       ; preds = %if.then26, %if.then40, %if.then48
  tail call void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef %call23) #18
  store i64 71, i64* %verify_result, align 8, !tbaa !139
  br label %cleanup

end:                                              ; preds = %if.end41
  tail call void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef nonnull %call23) #18
  br label %cleanup

cleanup:                                          ; preds = %end, %entry, %end.thread, %if.then18, %cond.end, %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false9
  %retval.0 = phi i32 [ 1, %lor.lhs.false9 ], [ 1, %lor.lhs.false7 ], [ 1, %lor.lhs.false5 ], [ 1, %cond.end ], [ 1, %if.then18 ], [ 0, %end.thread ], [ %call43, %end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @CT_POLICY_EVAL_CTX_set1_cert(%struct.ct_policy_eval_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @CT_POLICY_EVAL_CTX_set1_issuer(%struct.ct_policy_eval_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare void @CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(%struct.ct_policy_eval_ctx_st* noundef, %struct.ctlog_store_st* noundef) local_unnamed_addr #1

declare void @CT_POLICY_EVAL_CTX_set_time(%struct.ct_policy_eval_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare i64 @SSL_SESSION_get_time(%struct.ssl_session_st* noundef) local_unnamed_addr #1

declare i32 @SCT_LIST_validate(%struct.stack_st_SCT* noundef, %struct.ct_policy_eval_ctx_st* noundef) local_unnamed_addr #1

declare void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %validation_mode) local_unnamed_addr #0 {
entry:
  switch i32 %validation_mode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5262, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.SSL_CTX_enable_ct, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 212, i8* noundef null) #18
  br label %return

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @SSL_CTX_set_ct_validation_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef nonnull @ct_permissive, i8* noundef null) #17
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @SSL_CTX_set_ct_validation_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef nonnull @ct_strict, i8* noundef null) #17
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ct_permissive(%struct.ct_policy_eval_ctx_st* nocapture noundef readnone %ctx, %struct.stack_st_SCT* nocapture noundef readnone %scts, i8* nocapture noundef readnone %unused_arg) #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ct_strict(%struct.ct_policy_eval_ctx_st* nocapture noundef readnone %ctx, %struct.stack_st_SCT* noundef %scts, i8* nocapture noundef readnone %unused_arg) #0 {
entry:
  %cmp.not = icmp eq %struct.stack_st_SCT* %scts, null
  br i1 %cmp.not, label %for.end, label %cond.end

cond.end:                                         ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %scts) #17
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #18
  %cmp219 = icmp sgt i32 %call1, 0
  br i1 %cmp219, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %scts) #17
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !361

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.020) #18
  %0 = bitcast i8* %call4 to %struct.sct_st*
  %call5 = tail call i32 @SCT_get_validation_status(%struct.sct_st* noundef %0) #18
  %cmp6 = icmp eq i32 %call5, 2
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp6, label %cleanup8, label %for.cond

for.end:                                          ; preds = %for.cond, %entry, %cond.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5098, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ct_strict, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 216, i8* noundef null) #18
  br label %cleanup8

cleanup8:                                         ; preds = %for.body, %for.end
  %retval.2 = phi i32 [ 0, %for.end ], [ 1, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_enable_ct(%struct.ssl_st* noundef %s, i32 noundef %validation_mode) local_unnamed_addr #0 {
entry:
  switch i32 %validation_mode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5275, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.SSL_enable_ct, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 212, i8* noundef null) #18
  br label %return

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @SSL_set_ct_validation_callback(%struct.ssl_st* noundef %s, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef nonnull @ct_permissive, i8* noundef null) #17
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @SSL_set_ct_validation_callback(%struct.ssl_st* noundef %s, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* noundef nonnull @ct_strict, i8* noundef null) #17
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  %call = tail call i32 @CTLOG_STORE_load_default_file(%struct.ctlog_store_st* noundef %0) #18
  ret i32 %call
}

declare i32 @CTLOG_STORE_load_default_file(%struct.ctlog_store_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_ctlog_list_file(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  %call = tail call i32 @CTLOG_STORE_load_file(%struct.ctlog_store_st* noundef %0, i8* noundef %path) #18
  ret i32 %call
}

declare i32 @CTLOG_STORE_load_file(%struct.ctlog_store_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set0_ctlog_store(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.ctlog_store_st* noundef %logs) local_unnamed_addr #0 {
entry:
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  tail call void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef %0) #18
  store %struct.ctlog_store_st* %logs, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ctlog_store_st* @SSL_CTX_get0_ctlog_store(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %ctlog_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 50
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !242
  ret %struct.ctlog_store_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_client_hello_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %c, i32 (%struct.ssl_st*, i32*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %client_hello_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %c, i64 0, i32 58
  store i32 (%struct.ssl_st*, i32*, i8*)* %cb, i32 (%struct.ssl_st*, i32*, i8*)** %client_hello_cb, align 8, !tbaa !362
  %client_hello_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %c, i64 0, i32 59
  store i8* %arg, i8** %client_hello_cb_arg, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_client_hello_isv2(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %isv2 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 0
  %1 = load i32, i32* %isv2, align 8, !tbaa !364
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_client_hello_get0_legacy_version(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %legacy_version = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 1
  %1 = load i32, i32* %legacy_version, align 4, !tbaa !365
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_client_hello_get0_random(%struct.ssl_st* nocapture noundef readonly %s, i8** noundef writeonly %out) local_unnamed_addr #8 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %out, null
  br i1 %cmp1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 2, i64 0
  store i8* %arraydecay, i8** %out, align 8, !tbaa !198
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 32, %if.then2 ], [ 32, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_client_hello_get0_session_id(%struct.ssl_st* nocapture noundef readonly %s, i8** noundef writeonly %out) local_unnamed_addr #8 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %out, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 4, i64 0
  store i8* %arraydecay, i8** %out, align 8, !tbaa !198
  %.pre = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %1 = phi %struct.CLIENTHELLO_MSG* [ %.pre, %if.then2 ], [ %0, %if.end ]
  %session_id_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %1, i64 0, i32 3
  %2 = load i64, i64* %session_id_len, align 8, !tbaa !366
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i64 [ %2, %if.end4 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_client_hello_get0_ciphers(%struct.ssl_st* nocapture noundef readonly %s, i8** noundef writeonly %out) local_unnamed_addr #8 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %out, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %ciphersuites = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 7
  %call = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %ciphersuites) #17
  store i8* %call, i8** %out, align 8, !tbaa !198
  %.pre = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %1 = phi %struct.CLIENTHELLO_MSG* [ %.pre, %if.then2 ], [ %0, %if.end ]
  %ciphersuites6 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %1, i64 0, i32 7
  %call7 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %ciphersuites6) #17
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i64 [ %call7, %if.end4 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !367
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !368
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_client_hello_get0_compression_methods(%struct.ssl_st* nocapture noundef readonly %s, i8** noundef writeonly %out) local_unnamed_addr #8 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %out, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 9, i64 0
  store i8* %arraydecay, i8** %out, align 8, !tbaa !198
  %.pre = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %1 = phi %struct.CLIENTHELLO_MSG* [ %.pre, %if.then2 ], [ %0, %if.end ]
  %compressions_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %1, i64 0, i32 8
  %2 = load i64, i64* %compressions_len, align 8, !tbaa !369
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i64 [ %2, %if.end4 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_client_hello_get1_extensions_present(%struct.ssl_st* nocapture noundef readonly %s, i32** noundef writeonly %out, i64* noundef writeonly %outlen) local_unnamed_addr #0 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  %cmp1 = icmp eq i32** %out, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq i64* %outlen, null
  %or.cond39 = or i1 %cmp3, %or.cond
  br i1 %or.cond39, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pre_proc_exts_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 11
  %1 = load i64, i64* %pre_proc_exts_len, align 8, !tbaa !370
  %cmp568.not = icmp eq i64 %1, 0
  br i1 %cmp568.not, label %if.then12, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 12
  %2 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !180
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %1, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %22, %vector.body ]
  %vec.phi78 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %23, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %index, i32 1
  %7 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %3, i32 1
  %8 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %4, i32 1
  %9 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %5, i32 1
  %10 = load i32, i32* %6, align 8, !tbaa !371
  %11 = load i32, i32* %7, align 8, !tbaa !371
  %12 = insertelement <2 x i32> poison, i32 %10, i64 0
  %13 = insertelement <2 x i32> %12, i32 %11, i64 1
  %14 = load i32, i32* %8, align 8, !tbaa !371
  %15 = load i32, i32* %9, align 8, !tbaa !371
  %16 = insertelement <2 x i32> poison, i32 %14, i64 0
  %17 = insertelement <2 x i32> %16, i32 %15, i64 1
  %18 = icmp ne <2 x i32> %13, zeroinitializer
  %19 = icmp ne <2 x i32> %17, zeroinitializer
  %20 = zext <2 x i1> %18 to <2 x i64>
  %21 = zext <2 x i1> %19 to <2 x i64>
  %22 = add <2 x i64> %vec.phi, %20
  %23 = add <2 x i64> %vec.phi78, %21
  %index.next = add nuw i64 %index, 4
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %23, %22
  %25 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %i.070.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %num.069.ph = phi i64 [ 0, %for.body.lr.ph ], [ %25, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.070 = phi i64 [ %inc10, %for.body ], [ %i.070.ph, %for.body.preheader ]
  %num.069 = phi i64 [ %spec.select, %for.body ], [ %num.069.ph, %for.body.preheader ]
  %present7 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %i.070, i32 1
  %26 = load i32, i32* %present7, align 8, !tbaa !371
  %tobool.not = icmp ne i32 %26, 0
  %inc = zext i1 %tobool.not to i64
  %spec.select = add i64 %num.069, %inc
  %inc10 = add nuw i64 %i.070, 1
  %exitcond.not = icmp eq i64 %inc10, %1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !374

for.end:                                          ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i64 [ %25, %middle.block ], [ %spec.select, %for.body ]
  %cmp11 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.cond.preheader, %for.end
  store i32* null, i32** %out, align 8, !tbaa !198
  store i64 0, i64* %outlen, align 8, !tbaa !110
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %mul = shl i64 %spec.select.lcssa, 2
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5382) #18
  %27 = bitcast i8* %call to i32*
  %cmp14 = icmp eq i8* %call, null
  br i1 %cmp14, label %if.then15, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.end13
  %28 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %pre_proc_exts_len19 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %28, i64 0, i32 11
  %29 = load i64, i64* %pre_proc_exts_len19, align 8, !tbaa !370
  %cmp2071.not = icmp eq i64 %29, 0
  br i1 %cmp2071.not, label %for.end35, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %pre_proc_exts23 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %28, i64 0, i32 12
  %30 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts23, align 8, !tbaa !180
  br label %for.body21

if.then15:                                        ; preds = %if.end13
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5383, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.SSL_client_hello_get1_extensions_present, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc33
  %i.172 = phi i64 [ 0, %for.body21.lr.ph ], [ %inc34, %for.inc33 ]
  %present25 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %30, i64 %i.172, i32 1
  %31 = load i32, i32* %present25, align 8, !tbaa !371
  %tobool26.not = icmp eq i32 %31, 0
  br i1 %tobool26.not, label %for.inc33, label %if.then27

if.then27:                                        ; preds = %for.body21
  %received_order = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %30, i64 %i.172, i32 4
  %32 = load i64, i64* %received_order, align 8, !tbaa !376
  %cmp28.not = icmp ult i64 %32, %spec.select.lcssa
  br i1 %cmp28.not, label %if.end30, label %err

if.end30:                                         ; preds = %if.then27
  %type = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %30, i64 %i.172, i32 3
  %33 = load i32, i32* %type, align 8, !tbaa !377
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %33, i32* %arrayidx, align 4, !tbaa !165
  br label %for.inc33

for.inc33:                                        ; preds = %for.body21, %if.end30
  %inc34 = add nuw i64 %i.172, 1
  %exitcond74.not = icmp eq i64 %inc34, %29
  br i1 %exitcond74.not, label %for.end35, label %for.body21, !llvm.loop !378

for.end35:                                        ; preds = %for.inc33, %for.cond17.preheader
  %34 = bitcast i32** %out to i8**
  store i8* %call, i8** %34, align 8, !tbaa !198
  store i64 %spec.select.lcssa, i64* %outlen, align 8, !tbaa !110
  br label %cleanup

err:                                              ; preds = %if.then27
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5398) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %for.end35, %if.then15, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.then15 ], [ 0, %err ], [ 1, %for.end35 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @SSL_client_hello_get0_ext(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %type, i8** noundef writeonly %out, i64* noundef writeonly %outlen) local_unnamed_addr #14 {
entry:
  %clienthello = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %0 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello, align 8, !tbaa !179
  %cmp = icmp eq %struct.CLIENTHELLO_MSG* %0, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pre_proc_exts_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 11
  %1 = load i64, i64* %pre_proc_exts_len, align 8, !tbaa !370
  %cmp228.not = icmp eq i64 %1, 0
  br i1 %cmp228.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %0, i64 0, i32 12
  %2 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !180
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.029 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %i.029, i32 1
  %3 = load i32, i32* %present, align 8, !tbaa !371
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %type4 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %i.029, i32 3
  %4 = load i32, i32* %type4, align 8, !tbaa !377
  %cmp5 = icmp eq i32 %4, %type
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  %add.ptr.le = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %2, i64 %i.029
  %cmp7.not = icmp eq i8** %out, null
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  %data = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %add.ptr.le, i64 0, i32 0
  %call = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %data) #17
  store i8* %call, i8** %out, align 8, !tbaa !198
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6
  %cmp10.not = icmp eq i64* %outlen, null
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  %data12 = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %add.ptr.le, i64 0, i32 0
  %call13 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %data12) #17
  store i64 %call13, i64* %outlen, align 8, !tbaa !110
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw i64 %i.029, 1
  %exitcond.not = icmp eq i64 %inc, %1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !379

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %if.end9, %if.then11, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then11 ], [ 1, %if.end9 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_free_buffers(%struct.ssl_st* noundef %ssl) local_unnamed_addr #0 {
entry:
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108
  %call = tail call i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @RECORD_LAYER_release(%struct.record_layer_st* noundef nonnull %rlayer) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_alloc_buffers(%struct.ssl_st* noundef %ssl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef %ssl) #18
  ret i32 %call
}

declare i32 @ssl3_setup_buffers(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_keylog_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, void (%struct.ssl_st*, i8*)* noundef %cb) local_unnamed_addr #9 {
entry:
  %keylog_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 70
  store void (%struct.ssl_st*, i8*)* %cb, void (%struct.ssl_st*, i8*)** %keylog_callback, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.ssl_st*, i8*)* @SSL_CTX_get_keylog_callback(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %keylog_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 70
  %0 = load void (%struct.ssl_st*, i8*)*, void (%struct.ssl_st*, i8*)** %keylog_callback, align 8, !tbaa !380
  ret void (%struct.ssl_st*, i8*)* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_log_rsa_client_key_exchange(%struct.ssl_st* noundef %ssl, i8* nocapture noundef readonly %encrypted_premaster, i64 noundef %encrypted_premaster_len, i8* nocapture noundef readonly %premaster, i64 noundef %premaster_len) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %encrypted_premaster_len, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5509, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ssl_log_rsa_client_key_exchange, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %ssl, i32 noundef 80, i32 noundef 786691, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @nss_keylog_int(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.ssl_st* noundef %ssl, i8* noundef %encrypted_premaster, i64 noundef 8, i8* noundef %premaster, i64 noundef %premaster_len) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @nss_keylog_int(i8* noundef %prefix, %struct.ssl_st* noundef %ssl, i8* nocapture noundef readonly %parameter_1, i64 noundef %parameter_1_len, i8* nocapture noundef readonly %parameter_2, i64 noundef %parameter_2_len) unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %keylog_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 70
  %1 = load void (%struct.ssl_st*, i8*)*, void (%struct.ssl_st*, i8*)** %keylog_callback, align 8, !tbaa !380
  %cmp = icmp eq void (%struct.ssl_st*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %prefix) #20
  %reass.add = add i64 %parameter_2_len, %parameter_1_len
  %reass.mul = shl i64 %reass.add, 1
  %add2 = add i64 %reass.mul, 3
  %add3 = add i64 %add2, %call
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %add3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5475) #18
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5476, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.nss_keylog_int, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %ssl, i32 noundef 80, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i8* @strcpy(i8* noundef nonnull %call4, i8* noundef %prefix) #18
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %call
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 32, i8* %add.ptr, align 1, !tbaa !199
  %cmp957.not = icmp eq i64 %parameter_1_len, 0
  br i1 %cmp957.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end7, %for.body
  %i.059 = phi i64 [ %inc, %for.body ], [ 0, %if.end7 ]
  %cursor.058 = phi i8* [ %add.ptr11, %for.body ], [ %incdec.ptr, %if.end7 ]
  %arrayidx = getelementptr inbounds i8, i8* %parameter_1, i64 %i.059
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !199
  %conv = zext i8 %2 to i32
  %call10 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %cursor.058, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv) #18
  %add.ptr11 = getelementptr inbounds i8, i8* %cursor.058, i64 2
  %inc = add nuw i64 %i.059, 1
  %exitcond.not = icmp eq i64 %inc, %parameter_1_len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !381

for.end:                                          ; preds = %for.body, %if.end7
  %cursor.0.lcssa = phi i8* [ %incdec.ptr, %if.end7 ], [ %add.ptr11, %for.body ]
  %incdec.ptr12 = getelementptr inbounds i8, i8* %cursor.0.lcssa, i64 1
  store i8 32, i8* %cursor.0.lcssa, align 1, !tbaa !199
  %cmp1460.not = icmp eq i64 %parameter_2_len, 0
  br i1 %cmp1460.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.end, %for.body16
  %i.162 = phi i64 [ %inc22, %for.body16 ], [ 0, %for.end ]
  %cursor.161 = phi i8* [ %add.ptr20, %for.body16 ], [ %incdec.ptr12, %for.end ]
  %arrayidx17 = getelementptr inbounds i8, i8* %parameter_2, i64 %i.162
  %3 = load i8, i8* %arrayidx17, align 1, !tbaa !199
  %conv18 = zext i8 %3 to i32
  %call19 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %cursor.161, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv18) #18
  %add.ptr20 = getelementptr inbounds i8, i8* %cursor.161, i64 2
  %inc22 = add nuw i64 %i.162, 1
  %exitcond64.not = icmp eq i64 %inc22, %parameter_2_len
  br i1 %exitcond64.not, label %for.end23, label %for.body16, !llvm.loop !382

for.end23:                                        ; preds = %for.body16, %for.end
  %cursor.1.lcssa = phi i8* [ %incdec.ptr12, %for.end ], [ %add.ptr20, %for.body16 ]
  store i8 0, i8* %cursor.1.lcssa, align 1, !tbaa !199
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !48
  %keylog_callback25 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 70
  %5 = load void (%struct.ssl_st*, i8*)*, void (%struct.ssl_st*, i8*)** %keylog_callback25, align 8, !tbaa !380
  tail call void %5(%struct.ssl_st* noundef %ssl, i8* noundef nonnull %call4) #18
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call4, i64 noundef %add3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5497) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end23, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %for.end23 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_log_secret(%struct.ssl_st* noundef %ssl, i8* noundef %label, i8* nocapture noundef readonly %secret, i64 noundef %secret_len) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 6, i64 0
  %call = tail call fastcc i32 @nss_keylog_int(i8* noundef %label, %struct.ssl_st* noundef %ssl, i8* noundef nonnull %arraydecay, i64 noundef 32, i8* noundef %secret, i64 noundef %secret_len) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cache_cipherlist(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %cipher_suites, i32 noundef %sslv2format) local_unnamed_addr #0 {
entry:
  %sslv2ciphers = alloca %struct.PACKET, align 8
  %leadbyte = alloca i32, align 4
  %tobool.not = icmp eq i32 %sslv2format, 0
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %cipher_suites) #17
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5544, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_cache_cipherlist, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 183, i8* noundef null) #18
  br label %cleanup73

if.end:                                           ; preds = %entry
  %cond = select i1 %tobool.not, i64 2, i64 3
  %rem = urem i64 %call, %cond
  %cmp2.not = icmp eq i64 %rem, 0
  br i1 %cmp2.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5549, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_cache_cipherlist, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 151, i8* noundef null) #18
  br label %cleanup73

if.end5:                                          ; preds = %if.end
  %ciphers_raw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 20
  %0 = load i8*, i8** %ciphers_raw, align 8, !tbaa !212
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5553) #18
  store i8* null, i8** %ciphers_raw, align 8, !tbaa !212
  %ciphers_rawlen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 21
  store i64 0, i64* %ciphers_rawlen, align 8, !tbaa !213
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end5
  %call13 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %cipher_suites) #17
  %div = udiv i64 %call13, %cond
  %1 = bitcast %struct.PACKET* %sslv2ciphers to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  %2 = bitcast %struct.PACKET* %cipher_suites to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !383
  %3 = bitcast i32* %leadbyte to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #19
  %mul = shl nuw i64 %div, 1
  %call15 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5570) #18
  store i8* %call15, i8** %ciphers_raw, align 8, !tbaa !212
  %cmp19 = icmp eq i8* %call15, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then12
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5573, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_cache_cipherlist, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  br label %cleanup73

if.end22:                                         ; preds = %if.then12
  store i64 0, i64* %ciphers_rawlen, align 8, !tbaa !213
  %call26103 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %sslv2ciphers) #17
  %cmp27.not104 = icmp eq i64 %call26103, 0
  br i1 %cmp27.not104, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end22, %for.inc
  %raw.0105 = phi i8* [ %add.ptr, %for.inc ], [ %call15, %if.end22 ]
  %call29 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %sslv2ciphers, i32* noundef nonnull %leadbyte) #17
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %leadbyte, align 4, !tbaa !165
  %cmp31 = icmp eq i32 %4, 0
  br i1 %cmp31, label %land.lhs.true, label %land.lhs.true38

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call33 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %sslv2ciphers, i8* noundef nonnull %raw.0105, i64 noundef 2) #17
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then41, label %if.then54

land.lhs.true38:                                  ; preds = %lor.lhs.false
  %call39 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %sslv2ciphers) #17
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %for.inc

if.then41:                                        ; preds = %land.lhs.true38, %land.lhs.true, %for.body
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5585, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_cache_cipherlist, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 240, i8* noundef null) #18
  %5 = load i8*, i8** %ciphers_raw, align 8, !tbaa !212
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5586) #18
  store i8* null, i8** %ciphers_raw, align 8, !tbaa !212
  store i64 0, i64* %ciphers_rawlen, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  br label %cleanup73

if.then54:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %ciphers_rawlen, align 8, !tbaa !213
  %add = add i64 %6, 2
  store i64 %add, i64* %ciphers_rawlen, align 8, !tbaa !213
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true38, %if.then54
  %add.ptr = getelementptr inbounds i8, i8* %raw.0105, i64 2
  %call26 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %sslv2ciphers) #17
  %cmp27.not = icmp eq i64 %call26, 0
  br i1 %cmp27.not, label %cleanup, label %for.body, !llvm.loop !384

cleanup:                                          ; preds = %for.inc, %if.end22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  br label %cleanup73

if.else:                                          ; preds = %if.end5
  %call68 = tail call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef %cipher_suites, i8** noundef nonnull %ciphers_raw, i64* noundef nonnull %ciphers_rawlen) #17
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %cleanup73

if.then70:                                        ; preds = %if.else
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5596, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_cache_cipherlist, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #18
  br label %cleanup73

cleanup73:                                        ; preds = %if.else, %cleanup, %if.then21, %if.then41, %if.then70, %if.then4, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then70 ], [ 0, %if.then41 ], [ 0, %if.then21 ], [ 1, %cleanup ], [ 1, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data, i64 noundef %len) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !198
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 421) #18
  store i8* null, i8** %data, align 8, !tbaa !198
  store i64 0, i64* %len, align 8, !tbaa !110
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !367
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 noundef 430) #18
  store i8* %call1, i8** %data, align 8, !tbaa !198
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !110
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef %s, i8* noundef %bytes, i64 noundef %len, i32 noundef %isv2format, %struct.stack_st_SSL_CIPHER** noundef %sk, %struct.stack_st_SSL_CIPHER** noundef %scsvs) local_unnamed_addr #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %bytes, i64 noundef %len) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @bytes_to_cipher_list(%struct.ssl_st* noundef %s, %struct.PACKET* noundef nonnull %pkt, %struct.stack_st_SSL_CIPHER** noundef %sk, %struct.stack_st_SSL_CIPHER** noundef %scsvs, i32 noundef %isv2format, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #9 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !367
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !368
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bytes_to_cipher_list(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %cipher_suites, %struct.stack_st_SSL_CIPHER** noundef writeonly %skp, %struct.stack_st_SSL_CIPHER** noundef writeonly %scsvs_out, i32 noundef %sslv2format, i32 noundef %fatal) local_unnamed_addr #0 {
entry:
  %cipher = alloca [3 x i8], align 1
  %0 = getelementptr inbounds [3 x i8], [3 x i8]* %cipher, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %0) #19
  %tobool = icmp ne i32 %sslv2format, 0
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %cipher_suites) #17
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #18
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5629, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 183, i8* noundef null) #18
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5631, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 183, i8* noundef null) #18
  br label %cleanup

if.end3:                                          ; preds = %entry
  %cond = select i1 %tobool, i64 3, i64 2
  %rem = urem i64 %call, %cond
  %cmp5.not = icmp eq i64 %rem, 0
  br i1 %cmp5.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end3
  %tobool8.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #18
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.then7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5638, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 151, i8* noundef null) #18
  br label %cleanup

if.else10:                                        ; preds = %if.then7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5640, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 151, i8* noundef null) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %call13 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %1 = bitcast %struct.stack_st* %call13 to %struct.stack_st_SSL_CIPHER*
  %call14 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %2 = bitcast %struct.stack_st* %call14 to %struct.stack_st_SSL_CIPHER*
  %cmp15 = icmp eq %struct.stack_st* %call13, null
  %cmp17 = icmp eq %struct.stack_st* %call14, null
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then19, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end12
  %call26125 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %cipher_suites, i8* noundef nonnull %0, i64 noundef %cond) #17
  %tobool27.not126 = icmp eq i32 %call26125, 0
  br i1 %tobool27.not126, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx35 = getelementptr inbounds [3 x i8], [3 x i8]* %cipher, i64 0, i64 1
  %cond37 = select i1 %tobool, i8* %arrayidx35, i8* %0
  br label %while.body

if.then19:                                        ; preds = %if.end12
  %tobool20.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #18
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.then19
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5648, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #18
  br label %err

if.else22:                                        ; preds = %if.then19
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5650, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %err

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %3 = load i8, i8* %0, align 1
  %cmp30 = icmp ne i8 %3, 0
  %or.cond90 = select i1 %tobool, i1 %cmp30, i1 false
  br i1 %or.cond90, label %while.cond.backedge, label %if.end33

if.end33:                                         ; preds = %while.body
  %call38 = call %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef %s, i8* noundef nonnull %cond37, i32 noundef 1) #18
  %cmp39.not = icmp eq %struct.ssl_cipher_st* %call38, null
  br i1 %cmp39.not, label %while.cond.backedge, label %if.then41

if.then41:                                        ; preds = %if.end33
  %valid = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call38, i64 0, i32 0
  %4 = load i32, i32* %valid, align 8, !tbaa !385
  %tobool42.not = icmp eq i32 %4, 0
  br i1 %tobool42.not, label %land.lhs.true51, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.then41
  %call44 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %1) #17
  %5 = bitcast %struct.ssl_cipher_st* %call38 to i8*
  %call46 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call44, i8* noundef nonnull %5) #18
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then56, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %land.lhs.true43
  %.pr = load i32, i32* %valid, align 8, !tbaa !385
  %tobool50.not = icmp eq i32 %.pr, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %while.cond.backedge

land.lhs.true51:                                  ; preds = %if.then41, %lor.lhs.false48
  %.pre-phi = bitcast %struct.ssl_cipher_st* %call38 to i8*
  %call52 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %2) #17
  %call54 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call52, i8* noundef nonnull %.pre-phi) #18
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %while.cond.backedge

if.then56:                                        ; preds = %land.lhs.true51, %land.lhs.true43
  %tobool57.not = icmp eq i32 %fatal, 0
  call void @ERR_new() #18
  br i1 %tobool57.not, label %if.else59, label %if.then58

if.then58:                                        ; preds = %if.then56
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5669, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #18
  br label %err

if.else59:                                        ; preds = %if.then56
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5671, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %err

while.cond.backedge:                              ; preds = %if.end33, %land.lhs.true51, %lor.lhs.false48, %while.body
  %call26 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %cipher_suites, i8* noundef nonnull %0, i64 noundef %cond) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %while.end, label %while.body, !llvm.loop !386

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %call63 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %cipher_suites) #17
  %cmp64.not = icmp eq i64 %call63, 0
  br i1 %cmp64.not, label %if.end71, label %if.then66

if.then66:                                        ; preds = %while.end
  %tobool67.not = icmp eq i32 %fatal, 0
  call void @ERR_new() #18
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.then66
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5678, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #18
  br label %err

if.else69:                                        ; preds = %if.then66
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5680, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bytes_to_cipher_list, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, i8* noundef null) #18
  br label %err

if.end71:                                         ; preds = %while.end
  %cmp72.not = icmp eq %struct.stack_st_SSL_CIPHER** %skp, null
  br i1 %cmp72.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %if.end71
  %6 = bitcast %struct.stack_st_SSL_CIPHER** %skp to %struct.stack_st**
  store %struct.stack_st* %call13, %struct.stack_st** %6, align 8, !tbaa !198
  br label %if.end77

if.else75:                                        ; preds = %if.end71
  %call76 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %1) #17
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call76) #18
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then74
  %cmp78.not = icmp eq %struct.stack_st_SSL_CIPHER** %scsvs_out, null
  br i1 %cmp78.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %if.end77
  %7 = bitcast %struct.stack_st_SSL_CIPHER** %scsvs_out to %struct.stack_st**
  store %struct.stack_st* %call14, %struct.stack_st** %7, align 8, !tbaa !198
  br label %cleanup

if.else81:                                        ; preds = %if.end77
  %call82 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %2) #17
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call82) #18
  br label %cleanup

err:                                              ; preds = %if.then68, %if.else69, %if.then58, %if.else59, %if.then21, %if.else22
  %call84 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %1) #17
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call84) #18
  %call85 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %2) #17
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call85) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.else81, %if.then9, %if.else10, %if.then2, %if.else, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.else ], [ 0, %if.then2 ], [ 0, %if.else10 ], [ 0, %if.then9 ], [ 1, %if.else81 ], [ 1, %if.then80 ]
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %0) #19
  ret i32 %retval.0
}

declare %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_max_early_data(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %max_early_data) local_unnamed_addr #9 {
entry:
  %max_early_data1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 71
  store i32 %max_early_data, i32* %max_early_data1, align 8, !tbaa !73
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_get_max_early_data(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %max_early_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 71
  %0 = load i32, i32* %max_early_data, align 8, !tbaa !73
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_max_early_data(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %max_early_data) local_unnamed_addr #9 {
entry:
  %max_early_data1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  store i32 %max_early_data, i32* %max_early_data1, align 8, !tbaa !74
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_max_early_data(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %0 = load i32, i32* %max_early_data, align 8, !tbaa !74
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_recv_max_early_data(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %recv_max_early_data) local_unnamed_addr #9 {
entry:
  %recv_max_early_data1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 72
  store i32 %recv_max_early_data, i32* %recv_max_early_data1, align 4, !tbaa !75
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CTX_get_recv_max_early_data(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #6 {
entry:
  %recv_max_early_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 72
  %0 = load i32, i32* %recv_max_early_data, align 4, !tbaa !75
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_recv_max_early_data(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %recv_max_early_data) local_unnamed_addr #9 {
entry:
  %recv_max_early_data1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 115
  store i32 %recv_max_early_data, i32* %recv_max_early_data1, align 4, !tbaa !76
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_recv_max_early_data(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #6 {
entry:
  %recv_max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 115
  %0 = load i32, i32* %recv_max_early_data, align 4, !tbaa !76
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ssl_get_max_send_fragment(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 26, i32 8
  %1 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !387
  %2 = add i8 %1, -1
  %3 = icmp ult i8 %2, 4
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw nsw i32 512, %sub
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %max_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 86
  %4 = load i64, i64* %max_send_fragment, align 8, !tbaa !207
  %conv15 = trunc i64 %4 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %shl, %if.then ], [ %conv15, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ssl_get_split_send_fragment(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #6 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 26, i32 8
  %1 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !387
  %2 = add i8 %1, -1
  %3 = icmp ult i8 %2, 4
  br i1 %3, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %conv = zext i8 %1 to i32
  %split_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 85
  %4 = load i64, i64* %split_send_fragment, align 8, !tbaa !208
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw nsw i32 512, %sub
  %conv16 = zext i32 %shl to i64
  %cmp17 = icmp ugt i64 %4, %conv16
  br i1 %cmp17, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true11, %land.lhs.true, %entry
  %split_send_fragment25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 85
  %5 = load i64, i64* %split_send_fragment25, align 8, !tbaa !208
  %max_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 86
  %6 = load i64, i64* %max_send_fragment, align 8, !tbaa !207
  %cmp26 = icmp ugt i64 %5, %6
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end
  %conv30 = trunc i64 %6 to i32
  br label %return

if.end31:                                         ; preds = %if.end
  %conv33 = trunc i64 %5 to i32
  br label %return

return:                                           ; preds = %land.lhs.true11, %if.end31, %if.then28
  %retval.0 = phi i32 [ %conv30, %if.then28 ], [ %conv33, %if.end31 ], [ %shl, %land.lhs.true11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_stateless(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_clear(%struct.ssl_st* noundef %s) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ERR_clear_error() #18
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %0 = load i64, i64* %flags, align 8, !tbaa !388
  %or = or i64 %0, 2048
  store i64 %or, i64* %flags, align 8, !tbaa !388
  %call1 = tail call i32 @SSL_accept(%struct.ssl_st* noundef %s) #17
  %1 = load i64, i64* %flags, align 8, !tbaa !388
  %and = and i64 %1, -2049
  store i64 %and, i64* %flags, align 8, !tbaa !388
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %cookieok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 34
  %2 = load i32, i32* %cookieok, align 8, !tbaa !389
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %3 = load i32, i32* %hello_retry_request, align 8, !tbaa !26
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %if.end6
  %call9 = tail call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true8, %land.lhs.true, %entry, %if.end12
  %retval.0 = phi i32 [ -1, %if.end12 ], [ 0, %entry ], [ 1, %land.lhs.true ], [ 0, %land.lhs.true8 ]
  ret i32 %retval.0
}

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_post_handshake_auth(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %val) local_unnamed_addr #9 {
entry:
  %pha_enabled = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 82
  store i32 %val, i32* %pha_enabled, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_post_handshake_auth(%struct.ssl_st* nocapture noundef writeonly %ssl, i32 noundef %val) local_unnamed_addr #9 {
entry:
  %pha_enabled = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 101
  store i32 %val, i32* %pha_enabled, align 4, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_verify_client_post_handshake(%struct.ssl_st* noundef %ssl) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !188
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !189
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !32
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5808, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 266, i8* noundef null) #18
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 7
  %4 = load i32, i32* %server, align 8, !tbaa !149
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5812, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 284, i8* noundef null) #18
  br label %return

if.end8:                                          ; preds = %if.end
  %call = tail call i32 @SSL_is_init_finished(%struct.ssl_st* noundef nonnull %ssl) #18
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5817, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 121, i8* noundef null) #18
  br label %return

if.end11:                                         ; preds = %if.end8
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 100
  %5 = load i32, i32* %post_handshake_auth, align 8, !tbaa !390
  switch i32 %5, label %sw.bb12 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb14
    i32 2, label %sw.epilog
    i32 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end11
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5823, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 279, i8* noundef null) #18
  br label %return

sw.bb12:                                          ; preds = %if.end11
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5827, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #18
  br label %return

sw.bb13:                                          ; preds = %if.end11
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5832, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 285, i8* noundef null) #18
  br label %return

sw.bb14:                                          ; preds = %if.end11
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5835, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 286, i8* noundef null) #18
  br label %return

sw.epilog:                                        ; preds = %if.end11
  store i32 3, i32* %post_handshake_auth, align 8, !tbaa !390
  %call16 = tail call i32 @send_certificate_request(%struct.ssl_st* noundef nonnull %ssl) #18
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.epilog
  store i32 2, i32* %post_handshake_auth, align 8, !tbaa !390
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5844, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.SSL_verify_client_post_handshake, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 283, i8* noundef null) #18
  br label %return

if.end20:                                         ; preds = %sw.epilog
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %ssl, i32 noundef 1) #18
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb, %if.then10, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.bb12 ], [ 0, %sw.bb13 ], [ 1, %if.end20 ], [ 0, %if.then18 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ 0, %if.then10 ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

declare i32 @send_certificate_request(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_session_ticket_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*)* noundef %gen_cb, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* noundef %dec_cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %generate_ticket_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 76
  store i32 (%struct.ssl_st*, i8*)* %gen_cb, i32 (%struct.ssl_st*, i8*)** %generate_ticket_cb, align 8, !tbaa !391
  %decrypt_ticket_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 77
  store i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* %dec_cb, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)** %decrypt_ticket_cb, align 8, !tbaa !392
  %ticket_cb_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 78
  store i8* %arg, i8** %ticket_cb_data, align 8, !tbaa !393
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_allow_early_data_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %allow_early_data_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 80
  store i32 (%struct.ssl_st*, i8*)* %cb, i32 (%struct.ssl_st*, i8*)** %allow_early_data_cb, align 8, !tbaa !144
  %allow_early_data_cb_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 81
  store i8* %arg, i8** %allow_early_data_cb_data, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_allow_early_data_cb(%struct.ssl_st* nocapture noundef writeonly %s, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #9 {
entry:
  %allow_early_data_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 124
  store i32 (%struct.ssl_st*, i8*)* %cb, i32 (%struct.ssl_st*, i8*)** %allow_early_data_cb, align 8, !tbaa !145
  %allow_early_data_cb_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 125
  store i8* %arg, i8** %allow_early_data_cb_data, align 8, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @ssl_evp_cipher_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %nid, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @tls_get_cipher_from_engine(i32 noundef %nid) #18
  %cmp.not = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #18
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #18
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call2, i8* noundef %properties) #18
  %call4 = tail call i32 @ERR_pop_to_mark() #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_cipher_st* [ %call3, %if.end ], [ %call, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

declare %struct.evp_cipher_st* @tls_get_cipher_from_engine(i32 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_evp_cipher_up_ref(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %cipher) #18
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef %cipher) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @tls_get_digest_from_engine(i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_evp_md_up_ref(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %md) #18
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef %md) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set0_tmp_dh_pkey(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef %dhpkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %dhpkey) #18
  %0 = bitcast %struct.evp_pkey_st* %dhpkey to i8*
  %call1 = tail call i32 @ssl_security(%struct.ssl_st* noundef %s, i32 noundef 262151, i32 noundef %call, i32 noundef 0, i8* noundef %0) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5975, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SSL_set0_tmp_dh_pkey, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 394, i8* noundef null) #18
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dhpkey) #18
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %dh_tmp = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp, align 8, !tbaa !326
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #18
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !82
  %dh_tmp3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 1
  store %struct.evp_pkey_st* %dhpkey, %struct.evp_pkey_st** %dh_tmp3, align 8, !tbaa !326
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %dhpkey) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %dhpkey) #18
  %0 = bitcast %struct.evp_pkey_st* %dhpkey to i8*
  %call1 = tail call i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 262151, i32 noundef %call, i32 noundef 0, i8* noundef %0) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 5988, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_CTX_set0_tmp_dh_pkey, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 394, i8* noundef null) #18
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dhpkey) #18
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %dh_tmp = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp, align 8, !tbaa !326
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #18
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !58
  %dh_tmp3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 1
  store %struct.evp_pkey_st* %dhpkey, %struct.evp_pkey_st** %dh_tmp3, align 8, !tbaa !326
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.evp_md_st* @tlsa_md_get(%struct.ssl_dane_st* nocapture noundef readonly %dane, i8 noundef zeroext %mtype) unnamed_addr #6 {
entry:
  %dctx = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 0
  %0 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !206
  %mdmax = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %0, i64 0, i32 2
  %1 = load i8, i8* %mdmax, align 8, !tbaa !201
  %cmp = icmp ult i8 %1, %mtype
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %mdevp = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %0, i64 0, i32 0
  %2 = load %struct.evp_md_st**, %struct.evp_md_st*** %mdevp, align 8, !tbaa !197
  %idxprom = zext i8 %mtype to i64
  %arrayidx = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %2, i64 %idxprom
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx, align 8, !tbaa !198
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %3, %if.end ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @tlsa_free(%struct.danetls_record_st* noundef %t) #0 {
entry:
  %cmp = icmp eq %struct.danetls_record_st* %t, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %t, i64 0, i32 3
  %0 = load i8*, i8** %data, align 8, !tbaa !223
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 165) #18
  %spki = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %t, i64 0, i32 5
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %spki, align 8, !tbaa !218
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #18
  %2 = getelementptr %struct.danetls_record_st, %struct.danetls_record_st* %t, i64 0, i32 0
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 167) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #18
  %1 = bitcast i8* %call to %struct.danetls_record_st*
  ret %struct.danetls_record_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_danetls_record_insert(%struct.stack_st_danetls_record* noundef %sk, %struct.danetls_record_st* noundef %ptr, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %1 = getelementptr %struct.danetls_record_st, %struct.danetls_record_st* %ptr, i64 0, i32 0
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %0, i8* noundef %1, i32 noundef %idx) #18
  ret i32 %call
}

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_danetls_record_pop_free(%struct.stack_st_danetls_record* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.danetls_record_st*)* @tlsa_free to void (i8*)*)) #18
  ret void
}

declare %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() local_unnamed_addr #1

declare i32 @ASYNC_WAIT_CTX_set_callback(%struct.async_wait_ctx_st* noundef, i32 (i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_async_wait_ctx_cb(i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.ssl_st*
  %async_cb = getelementptr inbounds i8, i8* %arg, i64 7576
  %1 = bitcast i8* %async_cb to i32 (%struct.ssl_st*, i8*)**
  %2 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %1, align 8, !tbaa !159
  %async_cb_arg = getelementptr inbounds i8, i8* %arg, i64 7584
  %3 = bitcast i8* %async_cb_arg to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !161
  %call = tail call i32 %2(%struct.ssl_st* noundef %0, i8* noundef %4) #18
  ret i32 %call
}

declare i32 @ASYNC_start_job(%struct.async_job_st** noundef, %struct.async_wait_ctx_st* noundef, i32* noundef, i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef) local_unnamed_addr #1

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_danetls_record* @sk_danetls_record_new_reserve(i32 noundef %n) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %n) #18
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_danetls_record*
  ret %struct.stack_st_danetls_record* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_move_scts(%struct.stack_st_SCT** nocapture noundef %dst, %struct.stack_st_SCT* noundef %src, i32 noundef %origin) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %dst, align 8, !tbaa !198
  %cmp = icmp eq %struct.stack_st_SCT* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #18
  %1 = bitcast %struct.stack_st_SCT** %dst to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !198
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %err.thread, label %if.end3

err.thread:                                       ; preds = %if.then
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 4941, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ct_move_scts, i64 0, i64 0)) #18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #18
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef %src) #17
  %call538 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call4) #18
  %cmp6.not39 = icmp eq i8* %call538, null
  br i1 %cmp6.not39, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end3, %if.end16
  %call541 = phi i8* [ %call5, %if.end16 ], [ %call538, %if.end3 ]
  %scts_moved.040 = phi i32 [ %add, %if.end16 ], [ 0, %if.end3 ]
  %2 = bitcast i8* %call541 to %struct.sct_st*
  %call7 = tail call i32 @SCT_set_source(%struct.sct_st* noundef nonnull %2, i32 noundef %origin) #18
  %cmp8.not = icmp eq i32 %call7, 1
  br i1 %cmp8.not, label %if.end10, label %if.then18

if.end10:                                         ; preds = %while.body
  %3 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %dst, align 8, !tbaa !198
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef %3) #17
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef nonnull %call541) #18
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then18, label %if.end16

if.end16:                                         ; preds = %if.end10
  %add = add nuw nsw i32 %scts_moved.040, 1
  %call5 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call4) #18
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %cleanup, label %while.body, !llvm.loop !394

if.then18:                                        ; preds = %while.body, %if.end10
  %call21 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call4, i8* noundef nonnull %call541) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end3, %err.thread, %if.then18
  %retval.0 = phi i32 [ -1, %if.then18 ], [ -1, %err.thread ], [ 0, %if.end3 ], [ %add, %if.end16 ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @SCT_set_source(%struct.sct_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ocsp_response_st* @d2i_OCSP_RESPONSE(%struct.ocsp_response_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef) local_unnamed_addr #1

declare i32 @OCSP_resp_count(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #1

declare %struct.ocsp_single_response_st* @OCSP_resp_get0(%struct.ocsp_basic_response_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OCSP_SINGLERESP_get1_ext_d2i(%struct.ocsp_single_response_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #1

declare void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef) local_unnamed_addr #1

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @SCT_get_validation_status(%struct.sct_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !367
  %1 = load i8, i8* %0, align 1, !tbaa !199
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !165
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !367
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !367
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !368
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !368
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !367
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef %len) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #16

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { nofree nosync nounwind readnone willreturn }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!22 = !{!5, !9, i64 2328}
!23 = !{!5, !9, i64 2336}
!24 = !{!5, !9, i64 2344}
!25 = !{!5, !11, i64 2352}
!26 = !{!5, !7, i64 2280}
!27 = !{!5, !11, i64 7544}
!28 = !{!5, !6, i64 2432}
!29 = !{!5, !6, i64 1232}
!30 = !{!5, !6, i64 68}
!31 = !{!5, !6, i64 2976}
!32 = !{!33, !6, i64 0}
!33 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!34 = !{!5, !6, i64 0}
!35 = !{!5, !6, i64 2572}
!36 = !{!5, !6, i64 40}
!37 = !{!5, !9, i64 136}
!38 = !{!5, !6, i64 2568}
!39 = !{!5, !6, i64 2980}
!40 = !{!5, !9, i64 3016}
!41 = !{!5, !6, i64 1292}
!42 = !{!5, !6, i64 1296}
!43 = !{!5, !9, i64 1280}
!44 = !{!5, !9, i64 1272}
!45 = !{!5, !9, i64 1240}
!46 = !{!5, !9, i64 7592}
!47 = !{!5, !11, i64 7600}
!48 = !{!5, !9, i64 2472}
!49 = !{!50, !9, i64 8}
!50 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !51, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !52, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !53, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!51 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!52 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!53 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!54 = !{!33, !9, i64 32}
!55 = !{!33, !9, i64 16}
!56 = !{!33, !9, i64 24}
!57 = !{!50, !9, i64 32}
!58 = !{!50, !9, i64 344}
!59 = !{!5, !7, i64 2528}
!60 = !{!5, !9, i64 7528}
!61 = !{!50, !11, i64 312}
!62 = !{!5, !11, i64 2536}
!63 = !{!50, !11, i64 944}
!64 = !{!5, !11, i64 1304}
!65 = !{!50, !6, i64 324}
!66 = !{!5, !6, i64 2548}
!67 = !{!50, !6, i64 328}
!68 = !{!5, !6, i64 2552}
!69 = !{!50, !6, i64 320}
!70 = !{!5, !6, i64 2544}
!71 = !{!50, !11, i64 336}
!72 = !{!5, !11, i64 2560}
!73 = !{!50, !6, i64 984}
!74 = !{!5, !6, i64 7488}
!75 = !{!50, !6, i64 988}
!76 = !{!5, !6, i64 7492}
!77 = !{!50, !11, i64 1040}
!78 = !{!5, !11, i64 7536}
!79 = !{!50, !6, i64 1064}
!80 = !{!5, !6, i64 2988}
!81 = !{!5, !9, i64 1336}
!82 = !{!5, !9, i64 2200}
!83 = !{!50, !6, i64 352}
!84 = !{!5, !6, i64 3168}
!85 = !{!50, !9, i64 360}
!86 = !{!5, !9, i64 1216}
!87 = !{!50, !9, i64 368}
!88 = !{!5, !9, i64 1224}
!89 = !{!50, !6, i64 376}
!90 = !{!5, !6, i64 2408}
!91 = !{!50, !9, i64 960}
!92 = !{!5, !9, i64 3152}
!93 = !{!50, !9, i64 992}
!94 = !{!5, !9, i64 7504}
!95 = !{!50, !9, i64 1000}
!96 = !{!5, !9, i64 7512}
!97 = !{!50, !11, i64 1008}
!98 = !{!5, !11, i64 7520}
!99 = !{!50, !11, i64 384}
!100 = !{!5, !11, i64 2288}
!101 = !{!50, !9, i64 424}
!102 = !{!5, !9, i64 2416}
!103 = !{!50, !9, i64 432}
!104 = !{!5, !9, i64 2360}
!105 = !{!50, !9, i64 440}
!106 = !{!50, !6, i64 448}
!107 = !{!5, !6, i64 64}
!108 = !{!50, !7, i64 612}
!109 = !{!5, !7, i64 2892}
!110 = !{!11, !11, i64 0}
!111 = !{!50, !11, i64 496}
!112 = !{!5, !11, i64 2592}
!113 = !{!50, !11, i64 504}
!114 = !{!5, !9, i64 2632}
!115 = !{!5, !9, i64 2640}
!116 = !{!5, !6, i64 2712}
!117 = !{!50, !6, i64 608}
!118 = !{!5, !6, i64 2656}
!119 = !{!5, !6, i64 2676}
!120 = !{!5, !9, i64 2680}
!121 = !{!5, !9, i64 2688}
!122 = !{!5, !9, i64 2696}
!123 = !{!5, !11, i64 2704}
!124 = !{!5, !9, i64 2952}
!125 = !{!50, !9, i64 624}
!126 = !{!50, !11, i64 616}
!127 = !{!5, !9, i64 2728}
!128 = !{!5, !11, i64 2720}
!129 = !{!50, !9, i64 640}
!130 = !{!50, !11, i64 632}
!131 = !{!5, !9, i64 2760}
!132 = !{!5, !11, i64 2752}
!133 = !{!5, !9, i64 2840}
!134 = !{!50, !9, i64 680}
!135 = !{!50, !11, i64 688}
!136 = !{!5, !9, i64 2824}
!137 = !{!5, !11, i64 2832}
!138 = !{!5, !9, i64 2480}
!139 = !{!5, !11, i64 2488}
!140 = !{!50, !9, i64 184}
!141 = !{!5, !9, i64 7448}
!142 = !{!50, !9, i64 192}
!143 = !{!5, !9, i64 7456}
!144 = !{!50, !9, i64 1048}
!145 = !{!5, !9, i64 7560}
!146 = !{!50, !9, i64 1056}
!147 = !{!5, !9, i64 7568}
!148 = !{!33, !9, i64 40}
!149 = !{!5, !6, i64 56}
!150 = !{!50, !9, i64 760}
!151 = !{!5, !9, i64 2440}
!152 = !{!50, !9, i64 768}
!153 = !{!5, !9, i64 2448}
!154 = !{!50, !9, i64 776}
!155 = !{!5, !9, i64 2456}
!156 = !{!50, !9, i64 784}
!157 = !{!5, !9, i64 2464}
!158 = !{!50, !9, i64 1072}
!159 = !{!5, !9, i64 7576}
!160 = !{!50, !9, i64 1080}
!161 = !{!5, !9, i64 7584}
!162 = !{!5, !9, i64 7464}
!163 = !{!50, !9, i64 464}
!164 = !{!50, !9, i64 472}
!165 = !{!6, !6, i64 0}
!166 = !{!5, !9, i64 2920}
!167 = !{!5, !9, i64 2928}
!168 = !{!5, !9, i64 24}
!169 = !{!5, !9, i64 16}
!170 = !{!5, !9, i64 1320}
!171 = !{!5, !9, i64 1328}
!172 = !{!5, !9, i64 1312}
!173 = !{!5, !9, i64 2648}
!174 = !{!5, !9, i64 2744}
!175 = !{!5, !9, i64 2776}
!176 = !{!5, !9, i64 2936}
!177 = !{!5, !9, i64 2664}
!178 = !{!5, !9, i64 2872}
!179 = !{!5, !9, i64 2904}
!180 = !{!181, !9, i64 648}
!181 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 40, !7, i64 48, !11, i64 80, !7, i64 88, !182, i64 344, !11, i64 360, !7, i64 368, !182, i64 624, !11, i64 640, !9, i64 648}
!182 = !{!"", !9, i64 0, !11, i64 8}
!183 = !{!5, !9, i64 2992}
!184 = !{!5, !9, i64 2512}
!185 = !{!5, !9, i64 2520}
!186 = !{!5, !9, i64 7472}
!187 = !{!5, !9, i64 2960}
!188 = !{!33, !9, i64 192}
!189 = !{!190, !6, i64 96}
!190 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!191 = !{!50, !9, i64 968}
!192 = !{!193, !6, i64 0}
!193 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !194, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!194 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!195 = !{!193, !11, i64 592}
!196 = !{!50, !9, i64 48}
!197 = !{!53, !9, i64 0}
!198 = !{!9, !9, i64 0}
!199 = !{!7, !7, i64 0}
!200 = !{!53, !9, i64 8}
!201 = !{!53, !7, i64 16}
!202 = !{!50, !7, i64 936}
!203 = !{!15, !9, i64 8}
!204 = !{!15, !6, i64 44}
!205 = !{!15, !6, i64 48}
!206 = !{!15, !9, i64 0}
!207 = !{!5, !11, i64 2584}
!208 = !{!5, !11, i64 2576}
!209 = !{!5, !6, i64 1152}
!210 = !{!211, !6, i64 28}
!211 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !182, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!212 = !{!5, !9, i64 848}
!213 = !{!5, !11, i64 856}
!214 = !{!193, !6, i64 904}
!215 = !{!33, !9, i64 128}
!216 = !{!15, !9, i64 24}
!217 = !{!15, !9, i64 32}
!218 = !{!219, !9, i64 24}
!219 = !{!"danetls_record_st", !7, i64 0, !7, i64 1, !7, i64 2, !9, i64 8, !11, i64 16, !9, i64 24}
!220 = !{!219, !7, i64 0}
!221 = !{!219, !7, i64 1}
!222 = !{!219, !7, i64 2}
!223 = !{!219, !9, i64 8}
!224 = !{!219, !11, i64 16}
!225 = !{!15, !9, i64 16}
!226 = distinct !{!226, !227}
!227 = !{!"llvm.loop.mustprogress"}
!228 = !{!15, !6, i64 40}
!229 = !{!230}
!230 = distinct !{!230, !231}
!231 = distinct !{!231, !"LVerDomain"}
!232 = !{!233}
!233 = distinct !{!233, !231}
!234 = distinct !{!234, !227, !235}
!235 = !{!"llvm.loop.isvectorized", i32 1}
!236 = distinct !{!236, !237}
!237 = !{!"llvm.loop.unroll.disable"}
!238 = distinct !{!238, !237}
!239 = distinct !{!239, !227, !235}
!240 = !{!5, !9, i64 32}
!241 = !{!50, !9, i64 40}
!242 = !{!50, !9, i64 456}
!243 = !{!50, !9, i64 16}
!244 = !{!50, !9, i64 24}
!245 = !{!50, !9, i64 296}
!246 = !{!50, !9, i64 304}
!247 = !{!50, !9, i64 272}
!248 = !{!50, !9, i64 280}
!249 = !{!50, !9, i64 952}
!250 = !{!50, !9, i64 512}
!251 = !{!50, !9, i64 648}
!252 = !{!50, !9, i64 568}
!253 = !{!50, !9, i64 256}
!254 = !{!50, !9, i64 264}
!255 = !{!50, !11, i64 1584}
!256 = !{!50, !9, i64 1576}
!257 = !{!258, !9, i64 0}
!258 = !{!"tls_group_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !14, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48}
!259 = !{!258, !9, i64 8}
!260 = !{!258, !9, i64 16}
!261 = distinct !{!261, !227}
!262 = !{!50, !9, i64 1568}
!263 = !{!50, !9, i64 1088}
!264 = !{!5, !11, i64 576}
!265 = !{!5, !11, i64 712}
!266 = !{!33, !9, i64 160}
!267 = !{!193, !9, i64 696}
!268 = !{!193, !9, i64 704}
!269 = !{!211, !9, i64 0}
!270 = !{!271, !9, i64 0}
!271 = !{!"cert_pkey_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!272 = !{!271, !9, i64 8}
!273 = !{!5, !9, i64 48}
!274 = !{!33, !9, i64 96}
!275 = !{!276, !9, i64 0}
!276 = !{!"ssl_async_args", !9, i64 0, !9, i64 8, !11, i64 16, !7, i64 24, !7, i64 32}
!277 = !{!33, !9, i64 48}
!278 = !{!33, !9, i64 184}
!279 = !{!5, !7, i64 132}
!280 = !{!276, !9, i64 8}
!281 = !{!276, !11, i64 16}
!282 = !{!276, !7, i64 24}
!283 = !{!33, !9, i64 56}
!284 = !{!5, !11, i64 7480}
!285 = !{!5, !6, i64 2864}
!286 = !{!33, !9, i64 64}
!287 = !{!33, !9, i64 72}
!288 = !{!193, !6, i64 852}
!289 = !{!33, !9, i64 80}
!290 = !{!5, !6, i64 60}
!291 = !{!33, !9, i64 88}
!292 = !{!5, !6, i64 2716}
!293 = !{!33, !9, i64 208}
!294 = !{!50, !11, i64 56}
!295 = !{!50, !6, i64 80}
!296 = !{!50, !11, i64 488}
!297 = !{!50, !11, i64 480}
!298 = !{!33, !9, i64 136}
!299 = !{!33, !9, i64 216}
!300 = !{!301, !6, i64 24}
!301 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!302 = distinct !{!302, !227}
!303 = !{!301, !9, i64 8}
!304 = !{!301, !6, i64 44}
!305 = distinct !{!305, !227}
!306 = distinct !{!306, !227}
!307 = !{!193, !9, i64 816}
!308 = distinct !{!308, !227}
!309 = distinct !{!309, !227}
!310 = !{!5, !11, i64 2848}
!311 = !{!50, !9, i64 696}
!312 = !{!50, !9, i64 704}
!313 = !{!50, !9, i64 712}
!314 = !{!50, !9, i64 720}
!315 = distinct !{!315, !227}
!316 = !{!50, !9, i64 664}
!317 = !{!50, !9, i64 672}
!318 = !{!5, !9, i64 1160}
!319 = !{!5, !11, i64 1168}
!320 = !{!190, !9, i64 88}
!321 = !{!50, !7, i64 164}
!322 = !{!50, !9, i64 0}
!323 = !{!50, !11, i64 88}
!324 = !{!50, !9, i64 168}
!325 = !{!50, !9, i64 176}
!326 = !{!211, !9, i64 8}
!327 = !{!211, !9, i64 16}
!328 = !{!211, !6, i64 24}
!329 = !{!5, !6, i64 988}
!330 = !{!5, !6, i64 992}
!331 = !{!5, !9, i64 736}
!332 = !{!301, !6, i64 32}
!333 = !{!5, !9, i64 904}
!334 = !{!271, !9, i64 24}
!335 = !{!271, !11, i64 32}
!336 = !{!193, !11, i64 632}
!337 = !{!50, !9, i64 104}
!338 = !{!50, !9, i64 96}
!339 = !{!5, !6, i64 412}
!340 = !{!5, !9, i64 1256}
!341 = !{!5, !9, i64 1248}
!342 = distinct !{!342, !227}
!343 = !{!5, !9, i64 2424}
!344 = distinct !{!344, !227}
!345 = !{!5, !9, i64 2120}
!346 = !{!5, !9, i64 2168}
!347 = !{!5, !9, i64 2160}
!348 = !{!5, !9, i64 2152}
!349 = !{!193, !9, i64 760}
!350 = !{!193, !11, i64 8}
!351 = !{!211, !9, i64 512}
!352 = !{!193, !9, i64 672}
!353 = !{!193, !9, i64 680}
!354 = !{!5, !9, i64 400}
!355 = !{!211, !6, i64 496}
!356 = !{!211, !9, i64 488}
!357 = !{!211, !9, i64 504}
!358 = !{!5, !6, i64 2944}
!359 = !{!5, !14, i64 2672}
!360 = distinct !{!360, !227}
!361 = distinct !{!361, !227}
!362 = !{!50, !9, i64 520}
!363 = !{!50, !9, i64 528}
!364 = !{!181, !6, i64 0}
!365 = !{!181, !6, i64 4}
!366 = !{!181, !11, i64 40}
!367 = !{!182, !9, i64 0}
!368 = !{!182, !11, i64 8}
!369 = !{!181, !11, i64 360}
!370 = !{!181, !11, i64 640}
!371 = !{!372, !6, i64 16}
!372 = !{!"raw_extension_st", !182, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32}
!373 = distinct !{!373, !227, !235}
!374 = distinct !{!374, !227, !375, !235}
!375 = !{!"llvm.loop.unroll.runtime.disable"}
!376 = !{!372, !11, i64 32}
!377 = !{!372, !6, i64 24}
!378 = distinct !{!378, !227}
!379 = distinct !{!379, !227}
!380 = !{!50, !9, i64 976}
!381 = distinct !{!381, !227}
!382 = distinct !{!382, !227}
!383 = !{i64 0, i64 8, !198, i64 8, i64 8, !110}
!384 = distinct !{!384, !227}
!385 = !{!301, !6, i64 0}
!386 = distinct !{!386, !227}
!387 = !{!193, !7, i64 872}
!388 = !{!5, !11, i64 168}
!389 = !{!5, !6, i64 2888}
!390 = !{!5, !7, i64 2984}
!391 = !{!50, !9, i64 1016}
!392 = !{!50, !9, i64 1024}
!393 = !{!50, !9, i64 1032}
!394 = distinct !{!394, !227}
