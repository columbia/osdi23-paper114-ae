; ModuleID = 'ssl/methods.c'
source_filename = "ssl/methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon.1, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.anon.1 = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
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
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.2, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.3, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ctlog_store_st = type opaque
%struct.engine_st = type opaque
%struct.anon.3 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
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
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl_mac_buf_st = type { i8*, i32 }

@TLS_method.TLS_method_data = internal constant %struct.ssl_method_st { i32 65536, i32 0, i64 0, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@TLSv1_2_enc_data = external constant %struct.ssl3_enc_method, align 8
@tlsv1_3_method.tlsv1_3_method_data = internal constant %struct.ssl_method_st { i32 772, i32 0, i64 536870912, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_3_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@TLSv1_3_enc_data = external constant %struct.ssl3_enc_method, align 8
@tlsv1_2_method.tlsv1_2_method_data = internal constant %struct.ssl_method_st { i32 771, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_1_method.tlsv1_1_method_data = internal constant %struct.ssl_method_st { i32 770, i32 2, i64 268435456, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@TLSv1_1_enc_data = external constant %struct.ssl3_enc_method, align 8
@tlsv1_method.tlsv1_method_data = internal constant %struct.ssl_method_st { i32 769, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@TLSv1_enc_data = external constant %struct.ssl3_enc_method, align 8
@TLS_server_method.TLS_server_method_data = internal constant %struct.ssl_method_st { i32 65536, i32 0, i64 0, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_3_server_method.tlsv1_3_server_method_data = internal constant %struct.ssl_method_st { i32 772, i32 0, i64 536870912, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_3_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_2_server_method.tlsv1_2_server_method_data = internal constant %struct.ssl_method_st { i32 771, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_1_server_method.tlsv1_1_server_method_data = internal constant %struct.ssl_method_st { i32 770, i32 2, i64 268435456, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_server_method.tlsv1_server_method_data = internal constant %struct.ssl_method_st { i32 769, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@TLS_client_method.TLS_client_method_data = internal constant %struct.ssl_method_st { i32 65536, i32 0, i64 0, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_3_client_method.tlsv1_3_client_method_data = internal constant %struct.ssl_method_st { i32 772, i32 0, i64 536870912, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_3_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_2_client_method.tlsv1_2_client_method_data = internal constant %struct.ssl_method_st { i32 771, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_1_client_method.tlsv1_1_client_method_data = internal constant %struct.ssl_method_st { i32 770, i32 2, i64 268435456, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@tlsv1_client_method.tlsv1_client_method_data = internal constant %struct.ssl_method_st { i32 769, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @tls1_new, i32 (%struct.ssl_st*)* @tls1_clear, void (%struct.ssl_st*)* @tls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @ssl3_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @ssl3_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @ssl3_write_bytes, i32 (%struct.ssl_st*)* @ssl3_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @ssl3_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @tls1_default_timeout, %struct.ssl3_enc_method* @TLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtlsv1_method.dtlsv1_method_data = internal constant %struct.ssl_method_st { i32 65279, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@DTLSv1_enc_data = external constant %struct.ssl3_enc_method, align 8
@dtlsv1_2_method.dtlsv1_2_method_data = internal constant %struct.ssl_method_st { i32 65277, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@DTLSv1_2_enc_data = external constant %struct.ssl3_enc_method, align 8
@DTLS_method.DTLS_method_data = internal constant %struct.ssl_method_st { i32 131071, i32 0, i64 0, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtlsv1_server_method.dtlsv1_server_method_data = internal constant %struct.ssl_method_st { i32 65279, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtlsv1_2_server_method.dtlsv1_2_server_method_data = internal constant %struct.ssl_method_st { i32 65277, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@DTLS_server_method.DTLS_server_method_data = internal constant %struct.ssl_method_st { i32 131071, i32 0, i64 0, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtlsv1_client_method.dtlsv1_client_method_data = internal constant %struct.ssl_method_st { i32 65279, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtls_bad_ver_client_method.dtls_bad_ver_client_method_data = internal constant %struct.ssl_method_st { i32 256, i32 2, i64 67108864, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@dtlsv1_2_client_method.dtlsv1_2_client_method_data = internal constant %struct.ssl_method_st { i32 65277, i32 0, i64 134217728, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8
@DTLS_client_method.DTLS_client_method_data = internal constant %struct.ssl_method_st { i32 131071, i32 0, i64 0, i32 (%struct.ssl_st*)* @dtls1_new, i32 (%struct.ssl_st*)* @dtls1_clear, void (%struct.ssl_st*)* @dtls1_free, i32 (%struct.ssl_st*)* @ssl_undefined_function, i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_read, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_peek, i32 (%struct.ssl_st*, i8*, i64, i64*)* @ssl3_write, i32 (%struct.ssl_st*)* @dtls1_shutdown, i32 (%struct.ssl_st*)* @ssl3_renegotiate, i32 (%struct.ssl_st*, i32)* @ssl3_renegotiate_check, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)* @dtls1_read_bytes, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)* @dtls1_write_app_data_bytes, i32 (%struct.ssl_st*)* @dtls1_dispatch_alert, i64 (%struct.ssl_st*, i32, i64, i8*)* @dtls1_ctrl, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)* @ssl3_ctx_ctrl, %struct.ssl_cipher_st* (i8*)* @ssl3_get_cipher_by_char, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)* @ssl3_put_cipher_by_char, i64 (%struct.ssl_st*)* @ssl3_pending, i32 ()* @ssl3_num_ciphers, %struct.ssl_cipher_st* (i32)* @ssl3_get_cipher, i64 ()* @dtls1_default_timeout, %struct.ssl3_enc_method* @DTLSv1_2_enc_data, i32 ()* @ssl_undefined_void_function, i64 (%struct.ssl_st*, i32, void ()*)* @ssl3_callback_ctrl, i64 (%struct.ssl_ctx_st*, i32, void ()*)* @ssl3_ctx_callback_ctrl }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLS_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @TLS_method.TLS_method_data
}

declare i32 @tls1_new(%struct.ssl_st* noundef) #1

declare i32 @tls1_clear(%struct.ssl_st* noundef) #1

declare void @tls1_free(%struct.ssl_st* noundef) #1

declare i32 @ossl_statem_accept(%struct.ssl_st* noundef) #1

declare i32 @ossl_statem_connect(%struct.ssl_st* noundef) #1

declare i32 @ssl3_read(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ssl3_peek(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ssl3_write(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ssl3_shutdown(%struct.ssl_st* noundef) #1

declare i32 @ssl3_renegotiate(%struct.ssl_st* noundef) #1

declare i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef, i32 noundef) #1

declare i32 @ssl3_read_bytes(%struct.ssl_st* noundef, i32 noundef, i32* noundef, i8* noundef, i64 noundef, i32 noundef, i64* noundef) #1

declare i32 @ssl3_write_bytes(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ssl3_dispatch_alert(%struct.ssl_st* noundef) #1

declare i64 @ssl3_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) #1

declare i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) #1

declare %struct.ssl_cipher_st* @ssl3_get_cipher_by_char(i8* noundef) #1

declare i32 @ssl3_put_cipher_by_char(%struct.ssl_cipher_st* noundef, %struct.wpacket_st* noundef, i64* noundef) #1

declare i64 @ssl3_pending(%struct.ssl_st* noundef) #1

declare i32 @ssl3_num_ciphers() #1

declare %struct.ssl_cipher_st* @ssl3_get_cipher(i32 noundef) #1

declare i64 @tls1_default_timeout() #1

declare i32 @ssl_undefined_void_function() #1

declare i64 @ssl3_callback_ctrl(%struct.ssl_st* noundef, i32 noundef, void ()* noundef) #1

declare i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_3_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_3_method.tlsv1_3_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_2_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_method.tlsv1_2_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_method.tlsv1_1_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_method.tlsv1_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @TLS_server_method.TLS_server_method_data
}

declare i32 @ssl_undefined_function(%struct.ssl_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_3_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_3_server_method.tlsv1_3_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_2_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_server_method.tlsv1_2_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_server_method.tlsv1_1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_server_method.tlsv1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @TLS_client_method.TLS_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_3_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_3_client_method.tlsv1_3_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_2_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_client_method.tlsv1_2_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_client_method.tlsv1_1_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @tlsv1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_client_method.tlsv1_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_method.dtlsv1_method_data
}

declare i32 @dtls1_new(%struct.ssl_st* noundef) #1

declare i32 @dtls1_clear(%struct.ssl_st* noundef) #1

declare void @dtls1_free(%struct.ssl_st* noundef) #1

declare i32 @dtls1_shutdown(%struct.ssl_st* noundef) #1

declare i32 @dtls1_read_bytes(%struct.ssl_st* noundef, i32 noundef, i32* noundef, i8* noundef, i64 noundef, i32 noundef, i64* noundef) #1

declare i32 @dtls1_write_app_data_bytes(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @dtls1_dispatch_alert(%struct.ssl_st* noundef) #1

declare i64 @dtls1_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) #1

declare i64 @dtls1_default_timeout() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_2_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_method.dtlsv1_2_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLS_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @DTLS_method.DTLS_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_server_method.dtlsv1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_2_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_server_method.dtlsv1_2_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLS_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @DTLS_server_method.DTLS_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_client_method.dtlsv1_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtls_bad_ver_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtls_bad_ver_client_method.dtls_bad_ver_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @dtlsv1_2_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_client_method.dtlsv1_2_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLS_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @DTLS_client_method.DTLS_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_2_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_method.tlsv1_2_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_2_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_server_method.tlsv1_2_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_2_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_2_client_method.tlsv1_2_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_method.tlsv1_1_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_server_method.tlsv1_1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_1_client_method.tlsv1_1_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_method.tlsv1_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_server_method.tlsv1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @TLSv1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @tlsv1_client_method.tlsv1_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_2_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_method.dtlsv1_2_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_2_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_server_method.dtlsv1_2_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_2_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_2_client_method.dtlsv1_2_client_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_method.dtlsv1_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_server_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_server_method.dtlsv1_server_method_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ssl_method_st* @DTLSv1_client_method() local_unnamed_addr #0 {
entry:
  ret %struct.ssl_method_st* @dtlsv1_client_method.dtlsv1_client_method_data
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
