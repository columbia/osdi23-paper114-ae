; ModuleID = 'ssl/d1_lib.c'
source_filename = "ssl/d1_lib.c"
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
%struct.pitem_st = type { [8 x i8], i8*, %struct.pitem_st* }
%struct.hm_fragment_st = type { %struct.hm_header_st, i8*, i8* }
%union.bio_addr_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@DTLSv1_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls1_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls1_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls1_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls1_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls1_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls1_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_export_keying_material, i32 9, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @dtls1_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @dtls1_close_construct_packet, i32 (%struct.ssl_st*)* @dtls1_handshake_write }, align 8
@DTLSv1_2_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls1_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls1_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls1_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls1_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls1_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls1_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_export_keying_material, i32 31, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @dtls1_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @dtls1_close_construct_packet, i32 (%struct.ssl_st*)* @dtls1_handshake_write }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"ssl/d1_lib.c\00", align 1
@__func__.dtls1_check_timeout_num = private unnamed_addr constant [24 x i8] c"dtls1_check_timeout_num\00", align 1
@__func__.DTLSv1_listen = private unnamed_addr constant [14 x i8] c"DTLSv1_listen\00", align 1

declare i32 @tls1_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) #0

declare i32 @tls1_mac(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i8* noundef, i32 noundef) #0

declare i32 @tls1_setup_key_block(%struct.ssl_st* noundef) #0

declare i32 @tls1_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #0

declare i32 @tls1_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) #0

declare i64 @tls1_final_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef) #0

declare i32 @tls1_alert_code(i32 noundef) #0

declare i32 @tls1_export_keying_material(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) #0

declare i32 @dtls1_set_handshake_header(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef) #0

declare i32 @dtls1_close_construct_packet(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @dtls1_handshake_write(%struct.ssl_st* noundef %s) #1 {
entry:
  %call = tail call i32 @dtls1_do_write(%struct.ssl_st* noundef %s, i32 noundef 22) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @dtls1_default_timeout() local_unnamed_addr #2 {
entry:
  ret i64 7200
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_new(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call = tail call i32 @DTLS_RECORD_LAYER_new(%struct.record_layer_st* noundef nonnull %rlayer) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ssl3_new(%struct.ssl_st* noundef %s) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @CRYPTO_zalloc(i64 noundef 528, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77) #12
  %cmp = icmp eq i8* %call5, null
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @ssl3_free(%struct.ssl_st* noundef %s) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call %struct.pqueue_st* @pqueue_new() #12
  %buffered_messages = getelementptr inbounds i8, i8* %call5, i64 280
  %0 = bitcast i8* %buffered_messages to %struct.pqueue_st**
  store %struct.pqueue_st* %call8, %struct.pqueue_st** %0, align 8, !tbaa !4
  %call9 = tail call %struct.pqueue_st* @pqueue_new() #12
  %sent_messages = getelementptr inbounds i8, i8* %call5, i64 288
  %1 = bitcast i8* %sent_messages to %struct.pqueue_st**
  store %struct.pqueue_st* %call9, %struct.pqueue_st** %1, align 8, !tbaa !15
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !16
  %tobool10.not = icmp eq i32 %2, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  %cookie_len = getelementptr inbounds i8, i8* %call5, i64 256
  %3 = bitcast i8* %cookie_len to i64*
  store i64 255, i64* %3, align 8, !tbaa !28
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7
  %link_mtu = getelementptr inbounds i8, i8* %call5, i64 296
  %4 = bitcast i8* %link_mtu to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !29
  %5 = load %struct.pqueue_st*, %struct.pqueue_st** %0, align 8, !tbaa !4
  %cmp14 = icmp eq %struct.pqueue_st* %5, null
  %cmp16 = icmp eq %struct.pqueue_st* %call9, null
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  tail call void @pqueue_free(%struct.pqueue_st* noundef %5) #12
  %6 = load %struct.pqueue_st*, %struct.pqueue_st** %1, align 8, !tbaa !15
  tail call void @pqueue_free(%struct.pqueue_st* noundef %6) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95) #12
  tail call void @ssl3_free(%struct.ssl_st* noundef nonnull %s) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %d121 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %7 = bitcast %struct.dtls1_state_st** %d121 to i8**
  store i8* %call5, i8** %7, align 8, !tbaa !30
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl_clear = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 4
  %9 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_clear, align 8, !tbaa !32
  %call22 = tail call i32 %9(%struct.ssl_st* noundef nonnull %s) #12
  %tobool23.not = icmp ne i32 %call22, 0
  %. = zext i1 %tobool23.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end, %entry, %if.then17, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then17 ], [ 0, %entry ], [ 0, %if.end ], [ %., %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @DTLS_RECORD_LAYER_new(%struct.record_layer_st* noundef) local_unnamed_addr #0

declare i32 @ssl3_new(%struct.ssl_st* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @ssl3_free(%struct.ssl_st* noundef) local_unnamed_addr #0

declare %struct.pqueue_st* @pqueue_new() local_unnamed_addr #0

declare void @pqueue_free(%struct.pqueue_st* noundef) local_unnamed_addr #0

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define void @dtls1_clear_received_buffer(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %buffered_messages4 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 6
  %1 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages4, align 8, !tbaa !4
  %call5 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %1) #12
  %cmp.not6 = icmp eq %struct.pitem_st* %call5, null
  br i1 %cmp.not6, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call7 = phi %struct.pitem_st* [ %call, %while.body ], [ %call5, %entry ]
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call7, i64 0, i32 1
  %2 = bitcast i8** %data to %struct.hm_fragment_st**
  %3 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %2, align 8, !tbaa !34
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef %3) #12
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call7) #12
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %buffered_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 6
  %5 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages, align 8, !tbaa !4
  %call = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %5) #12
  %cmp.not = icmp eq %struct.pitem_st* %call, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !36

while.end:                                        ; preds = %while.body, %entry
  ret void
}

declare %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef) local_unnamed_addr #0

declare void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef) local_unnamed_addr #0

declare void @pitem_free(%struct.pitem_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define void @dtls1_clear_sent_buffer(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %sent_messages4 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 7
  %1 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages4, align 8, !tbaa !15
  %call5 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %1) #12
  %cmp.not6 = icmp eq %struct.pitem_st* %call5, null
  br i1 %cmp.not6, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call7 = phi %struct.pitem_st* [ %call, %while.body ], [ %call5, %entry ]
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call7, i64 0, i32 1
  %2 = bitcast i8** %data to %struct.hm_fragment_st**
  %3 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %2, align 8, !tbaa !34
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef %3) #12
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call7) #12
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %sent_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 7
  %5 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages, align 8, !tbaa !15
  %call = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %5) #12
  %cmp.not = icmp eq %struct.pitem_st* %call, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !38

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @dtls1_free(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @DTLS_RECORD_LAYER_free(%struct.record_layer_st* noundef nonnull %rlayer) #12
  tail call void @ssl3_free(%struct.ssl_st* noundef %s) #12
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %cmp.not = icmp eq %struct.dtls1_state_st* %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %1 = getelementptr %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 0, i64 0
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @dtls1_clear_queues(%struct.ssl_st* noundef nonnull %s) #13
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %buffered_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 6
  %3 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages, align 8, !tbaa !4
  tail call void @pqueue_free(%struct.pqueue_st* noundef %3) #12
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %sent_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 7
  %5 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages, align 8, !tbaa !15
  tail call void @pqueue_free(%struct.pqueue_st* noundef %5) #12
  %.phi.trans.insert = bitcast %struct.dtls1_state_st** %d1 to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi i8* [ %.pre, %if.then ], [ %1, %entry.if.end_crit_edge ]
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 151) #12
  store %struct.dtls1_state_st* null, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  ret void
}

declare void @DTLS_RECORD_LAYER_free(%struct.record_layer_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dtls1_clear_queues(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #1 {
entry:
  tail call void @dtls1_clear_received_buffer(%struct.ssl_st* noundef %s) #13
  tail call void @dtls1_clear_sent_buffer(%struct.ssl_st* noundef %s) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_clear(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* noundef nonnull %rlayer) #12
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %tobool.not = icmp eq %struct.dtls1_state_st* %0, null
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %timer_cb2 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 16
  %1 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %timer_cb2, align 8, !tbaa !39
  %buffered_messages4 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 6
  %2 = bitcast %struct.pqueue_st** %buffered_messages4 to <2 x %struct.pqueue_st*>*
  %3 = load <2 x %struct.pqueue_st*>, <2 x %struct.pqueue_st*>* %2, align 8, !tbaa !40
  %link_mtu10 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 8
  %4 = bitcast i64* %link_mtu10 to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8, !tbaa !29
  tail call fastcc void @dtls1_clear_queues(%struct.ssl_st* noundef nonnull %s) #13
  %6 = bitcast %struct.dtls1_state_st** %d1 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !30
  %call = tail call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef 528) #12
  %8 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timer_cb13 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %8, i64 0, i32 16
  store i32 (%struct.ssl_st*, i32)* %1, i32 (%struct.ssl_st*, i32)** %timer_cb13, align 8, !tbaa !39
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %9 = load i32, i32* %server, align 8, !tbaa !16
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.then
  %cookie_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %8, i64 0, i32 1
  store i64 255, i64* %cookie_len, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %call17 = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #12
  %and = and i64 %call17, 4096
  %tobool18.not = icmp eq i64 %and, 0
  %.pre = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  br i1 %tobool18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end
  %link_mtu23 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %.pre, i64 0, i32 8
  %10 = bitcast i64* %link_mtu23 to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %10, align 8, !tbaa !29
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then19
  %buffered_messages26 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %.pre, i64 0, i32 6
  %11 = bitcast %struct.pqueue_st** %buffered_messages26 to <2 x %struct.pqueue_st*>*
  store <2 x %struct.pqueue_st*> %3, <2 x %struct.pqueue_st*>* %11, align 8, !tbaa !40
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %entry
  %call30 = tail call i32 @ssl3_clear(%struct.ssl_st* noundef nonnull %s) #12
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end29
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %13 = load i32, i32* %version, align 8, !tbaa !41
  %cmp = icmp eq i32 %13, 131071
  br i1 %cmp, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end33
  %version35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 65277, i32* %version35, align 8, !tbaa !42
  br label %cleanup

if.else:                                          ; preds = %if.end33
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %14 = load i64, i64* %options, align 8, !tbaa !43
  %and36 = and i64 %14, 32768
  %tobool37.not = icmp eq i64 %and36, 0
  %version43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  br i1 %tobool37.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.else
  store i32 256, i32* %version43, align 8, !tbaa !42
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 256, i32* %client_version, align 4, !tbaa !44
  br label %cleanup

if.else40:                                        ; preds = %if.else
  store i32 %13, i32* %version43, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.else40, %if.then38, %if.end29
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 1, %if.then38 ], [ 1, %if.else40 ], [ 1, %if.then34 ]
  ret i32 %retval.0
}

declare void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #0

declare i32 @ssl3_clear(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i64 @dtls1_ctrl(%struct.ssl_st* noundef %s, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #1 {
entry:
  switch i32 %cmd, label %sw.default [
    i32 73, label %sw.bb
    i32 74, label %sw.bb1
    i32 120, label %sw.bb3
    i32 121, label %cleanup
    i32 17, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %0 = bitcast i8* %parg to %struct.timeval*
  %call = tail call %struct.timeval* @dtls1_get_timeout(%struct.ssl_st* noundef %s, %struct.timeval* noundef %0) #13
  %cmp.not = icmp ne %struct.timeval* %call, null
  %spec.select = zext i1 %cmp.not to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @dtls1_handle_timeout(%struct.ssl_st* noundef %s) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %cmp5 = icmp slt i64 %larg, 256
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %sw.bb3
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %link_mtu = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 8
  store i64 %larg, i64* %link_mtu, align 8, !tbaa !45
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %cmp12 = icmp slt i64 %larg, 208
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %sw.bb10
  %d115 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d115, align 8, !tbaa !30
  %mtu = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 9
  store i64 %larg, i64* %mtu, align 8, !tbaa !46
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call16 = tail call i64 @ssl3_ctrl(%struct.ssl_st* noundef %s, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #12
  %conv = trunc i64 %call16 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.default, %sw.bb1
  %ret.0 = phi i32 [ %conv, %sw.default ], [ %call2, %sw.bb1 ], [ %spec.select, %sw.bb ]
  %conv17 = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb10, %sw.bb3, %sw.epilog, %if.end14, %if.end7
  %retval.0 = phi i64 [ %conv17, %sw.epilog ], [ %larg, %if.end14 ], [ 1, %if.end7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb10 ], [ 256, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.timeval* @dtls1_get_timeout(%struct.ssl_st* nocapture noundef readonly %s, %struct.timeval* noundef %timeleft) local_unnamed_addr #1 {
entry:
  %timenow = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %timenow to %struct.timeval*
  %0 = bitcast <2 x i64>* %timenow to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %tv_sec = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 13, i32 0
  %2 = load i64, i64* %tv_sec, align 8, !tbaa !47
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %tv_usec = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 13, i32 1
  %3 = load i64, i64* %tv_usec, align 8, !tbaa !48
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  call fastcc void @get_current_time(%struct.timeval* noundef nonnull %tmpcast) #13
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %tv_sec6 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 13, i32 0
  %5 = load i64, i64* %tv_sec6, align 8, !tbaa !47
  %tv_sec7 = getelementptr inbounds <2 x i64>, <2 x i64>* %timenow, i64 0, i64 0
  %6 = load i64, i64* %tv_sec7, align 16, !tbaa !49
  %cmp8 = icmp slt i64 %5, %6
  br i1 %cmp8, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp13 = icmp eq i64 %5, %6
  br i1 %cmp13, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %tv_usec17 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 13, i32 1
  %7 = load i64, i64* %tv_usec17, align 8, !tbaa !48
  %8 = getelementptr inbounds <2 x i64>, <2 x i64>* %timenow, i64 0, i64 1
  %9 = load i64, i64* %8, align 8, !tbaa !50
  %cmp19.not = icmp sgt i64 %7, %9
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true14, %if.end
  %10 = bitcast %struct.timeval* %timeleft to i8*
  %call = call i8* @memset(i8* noundef %10, i32 noundef 0, i64 noundef 16) #12
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true14, %lor.lhs.false
  %11 = bitcast %struct.timeval* %timeleft to i8*
  %next_timeout23 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 13
  %12 = bitcast %struct.timeval* %next_timeout23 to i8*
  %call24 = call i8* @memcpy(i8* noundef %11, i8* noundef nonnull %12, i64 noundef 16) #12
  %13 = load <2 x i64>, <2 x i64>* %timenow, align 16, !tbaa !29
  %14 = bitcast %struct.timeval* %timeleft to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !29
  %16 = sub nsw <2 x i64> %15, %13
  %17 = bitcast %struct.timeval* %timeleft to <2 x i64>*
  store <2 x i64> %16, <2 x i64>* %17, align 8, !tbaa !29
  %18 = extractelement <2 x i64> %16, i64 1
  %cmp31 = icmp slt i64 %18, 0
  %19 = extractelement <2 x i64> %16, i64 0
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end21
  %tv_sec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeleft, i64 0, i32 0
  %tv_usec28 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeleft, i64 0, i32 1
  %dec = add nsw i64 %19, -1
  store i64 %dec, i64* %tv_sec26, align 8, !tbaa !49
  %add = add nsw i64 %18, 1000000
  store i64 %add, i64* %tv_usec28, align 8, !tbaa !50
  br label %if.end35

if.end35:                                         ; preds = %if.end21, %if.then32
  %20 = phi i64 [ %add, %if.then32 ], [ %18, %if.end21 ]
  %21 = phi i64 [ %dec, %if.then32 ], [ %19, %if.end21 ]
  %cmp37 = icmp eq i64 %21, 0
  %cmp40 = icmp slt i64 %20, 15000
  %or.cond = select i1 %cmp37, i1 %cmp40, i1 false
  br i1 %or.cond, label %if.then41, label %cleanup

if.then41:                                        ; preds = %if.end35
  %call42 = call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i64 noundef 16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then41, %land.lhs.true, %if.then20
  %retval.0 = phi %struct.timeval* [ %timeleft, %if.then20 ], [ null, %land.lhs.true ], [ %timeleft, %if.then41 ], [ %timeleft, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret %struct.timeval* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_handle_timeout(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @dtls1_is_timer_expired(%struct.ssl_st* noundef %s) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timer_cb = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 16
  %1 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %timer_cb, align 8, !tbaa !39
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i32)* %1, null
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %timeout_duration_us = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 14
  %2 = load i32, i32* %timeout_duration_us, align 8, !tbaa !51
  %call5 = tail call i32 %1(%struct.ssl_st* noundef nonnull %s, i32 noundef %2) #12
  %3 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_duration_us7 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %3, i64 0, i32 14
  store i32 %call5, i32* %timeout_duration_us7, align 8, !tbaa !51
  br label %if.end8

if.else:                                          ; preds = %if.end
  tail call fastcc void @dtls1_double_timeout(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then1
  %call9 = tail call i32 @dtls1_check_timeout_num(%struct.ssl_st* noundef nonnull %s) #13
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %if.end8
  tail call void @dtls1_start_timer(%struct.ssl_st* noundef nonnull %s) #13
  %call13 = tail call i32 @dtls1_retransmit_buffered_messages(%struct.ssl_st* noundef nonnull %s) #12
  br label %return

return:                                           ; preds = %if.end8, %entry, %if.end12
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ 0, %entry ], [ -1, %if.end8 ]
  ret i32 %retval.0
}

declare i64 @ssl3_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define void @dtls1_start_timer(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %tv_sec = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 13, i32 0
  %1 = load i64, i64* %tv_sec, align 8, !tbaa !47
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %entry
  %tv_usec = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 13, i32 1
  %2 = load i64, i64* %tv_usec, align 8, !tbaa !48
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %timer_cb = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 16
  %3 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %timer_cb, align 8, !tbaa !39
  %cmp5.not = icmp eq i32 (%struct.ssl_st*, i32)* %3, null
  br i1 %cmp5.not, label %if.end12.sink.split, label %if.then6

if.then6:                                         ; preds = %if.then
  %call = tail call i32 %3(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then, %if.then6
  %.sink = phi %struct.dtls1_state_st* [ %4, %if.then6 ], [ %0, %if.then ]
  %call.sink = phi i32 [ %call, %if.then6 ], [ 1000000, %if.then ]
  %timeout_duration_us = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %.sink, i64 0, i32 14
  store i32 %call.sink, i32* %timeout_duration_us, align 8, !tbaa !51
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true, %entry
  %5 = phi %struct.dtls1_state_st* [ %0, %land.lhs.true ], [ %0, %entry ], [ %.sink, %if.end12.sink.split ]
  %next_timeout14 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 13
  tail call fastcc void @get_current_time(%struct.timeval* noundef nonnull %next_timeout14) #13
  %6 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_duration_us16 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 14
  %7 = load i32, i32* %timeout_duration_us16, align 8, !tbaa !51
  %div = udiv i32 %7, 1000000
  %mul.neg = mul i32 %div, -1000000
  %sub = add i32 %mul.neg, %7
  %conv = zext i32 %div to i64
  %tv_sec21 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 13, i32 0
  %8 = load i64, i64* %tv_sec21, align 8, !tbaa !47
  %add = add nsw i64 %8, %conv
  store i64 %add, i64* %tv_sec21, align 8, !tbaa !47
  %conv22 = zext i32 %sub to i64
  %tv_usec25 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 13, i32 1
  %9 = load i64, i64* %tv_usec25, align 8, !tbaa !48
  %add26 = add nsw i64 %9, %conv22
  store i64 %add26, i64* %tv_usec25, align 8, !tbaa !48
  %cmp30 = icmp sgt i64 %add26, 999999
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.end12
  %inc = add nsw i64 %add, 1
  store i64 %inc, i64* %tv_sec21, align 8, !tbaa !47
  %sub39 = add nsw i64 %add26, -1000000
  store i64 %sub39, i64* %tv_usec25, align 8, !tbaa !48
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.end12
  %call41 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #12
  %10 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %next_timeout43 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %10, i64 0, i32 13
  %11 = bitcast %struct.timeval* %next_timeout43 to i8*
  %call44 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call41, i32 noundef 45, i64 noundef 0, i8* noundef nonnull %11) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_current_time(%struct.timeval* noundef %t) unnamed_addr #1 {
entry:
  %call = tail call i32 @gettimeofday(%struct.timeval* noundef %t, i8* noundef null) #12
  ret void
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #0

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_is_timer_expired(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %timeleft = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %timeleft to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %call = call %struct.timeval* @dtls1_get_timeout(%struct.ssl_st* noundef %s, %struct.timeval* noundef nonnull %timeleft) #13
  %cmp = icmp eq %struct.timeval* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeleft, i64 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8, !tbaa !49
  %cmp1 = icmp slt i64 %1, 1
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeleft, i64 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8
  %cmp2 = icmp slt i64 %2, 1
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  %. = zext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @dtls1_stop_timer(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_num_alerts = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 12
  store i32 0, i32* %timeout_num_alerts, align 8, !tbaa !52
  %next_timeout = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 13
  %1 = bitcast %struct.timeval* %next_timeout to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #12
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_duration_us = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 14
  store i32 1000000, i32* %timeout_duration_us, align 8, !tbaa !51
  %call3 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #12
  %3 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %next_timeout5 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %3, i64 0, i32 13
  %4 = bitcast %struct.timeval* %next_timeout5 to i8*
  %call6 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 45, i64 noundef 0, i8* noundef nonnull %4) #12
  tail call void @dtls1_clear_sent_buffer(%struct.ssl_st* noundef %s) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_check_timeout_num(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_num_alerts = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 12
  %1 = load i32, i32* %timeout_num_alerts, align 8, !tbaa !52
  %inc = add i32 %1, 1
  store i32 %inc, i32* %timeout_num_alerts, align 8, !tbaa !52
  %cmp = icmp ugt i32 %inc, 2
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #12
  %and = and i64 %call, 4096
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #12
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 47, i64 noundef 0, i8* noundef null) #12
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu6 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 9
  %3 = load i64, i64* %mtu6, align 8, !tbaa !46
  %cmp7 = icmp ult i64 %call4, %3
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then
  store i64 %call4, i64* %mtu6, align 8, !tbaa !46
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.then, %if.then8, %entry
  %4 = phi %struct.dtls1_state_st* [ %.pre, %land.lhs.true.if.end11_crit_edge ], [ %2, %if.then ], [ %2, %if.then8 ], [ %0, %entry ]
  %timeout_num_alerts13 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 12
  %5 = load i32, i32* %timeout_num_alerts13, align 8, !tbaa !52
  %cmp14 = icmp ugt i32 %5, 12
  br i1 %cmp14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end11
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dtls1_check_timeout_num, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 312, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15
  %retval.0 = phi i32 [ -1, %if.then15 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @dtls1_double_timeout(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #5 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timeout_duration_us = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 14
  %1 = load i32, i32* %timeout_duration_us, align 8, !tbaa !51
  %mul = shl i32 %1, 1
  %2 = icmp ult i32 %mul, 60000000
  %spec.store.select = select i1 %2, i32 %mul, i32 60000000
  store i32 %spec.store.select, i32* %timeout_duration_us, align 8
  ret void
}

declare i32 @dtls1_retransmit_buffered_messages(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @DTLSv1_listen(%struct.ssl_st* noundef %s, %union.bio_addr_st* noundef %client) local_unnamed_addr #1 {
entry:
  %cookie = alloca [255 x i8], align 16
  %seq = alloca [8 x i8], align 1
  %fragoff = alloca i64, align 8
  %fraglen = alloca i64, align 8
  %msglen = alloca i64, align 8
  %rectype = alloca i32, align 4
  %versmajor = alloca i32, align 4
  %msgseq = alloca i32, align 4
  %msgtype = alloca i32, align 4
  %clientvers = alloca i32, align 4
  %cookielen = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %msgpkt = alloca %struct.PACKET, align 8
  %msgpayload = alloca %struct.PACKET, align 8
  %session = alloca %struct.PACKET, align 8
  %cookiepkt = alloca %struct.PACKET, align 8
  %wpkt = alloca %struct.wpacket_st, align 8
  %wreclen = alloca i64, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %cookie, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #14
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %seq, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast i64* %fragoff to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  %3 = bitcast i64* %fraglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %4 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  %5 = bitcast i32* %rectype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14
  %6 = bitcast i32* %versmajor to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14
  %7 = bitcast i32* %msgseq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14
  %8 = bitcast i32* %msgtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #14
  %9 = bitcast i32* %clientvers to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #14
  %10 = bitcast i32* %cookielen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #14
  %11 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #14
  %12 = bitcast %struct.PACKET* %msgpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #14
  %13 = bitcast %struct.PACKET* %msgpayload to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #14
  %14 = bitcast %struct.PACKET* %session to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #14
  %15 = bitcast %struct.PACKET* %cookiepkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #14
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %16 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !53
  %cmp = icmp eq i32 (%struct.ssl_st*)* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %s) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 @SSL_clear(%struct.ssl_st* noundef nonnull %s) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup323, label %if.end2

if.end2:                                          ; preds = %if.end
  tail call void @ERR_clear_error() #12
  %call3 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #12
  %call4 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #12
  %tobool5 = icmp ne %struct.bio_st* %call3, null
  %tobool6 = icmp ne %struct.bio_st* %call4, null
  %or.cond = select i1 %tobool5, i1 %tobool6, i1 false
  br i1 %or.cond, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end2
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 128, i8* noundef null) #12
  br label %cleanup323

if.end8:                                          ; preds = %if.end2
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %17 = load i32, i32* %version, align 8, !tbaa !42
  %and = and i32 %17, 65280
  %cmp9.not = icmp eq i32 %and, 65024
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 259, i8* noundef null) #12
  br label %cleanup323

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef nonnull %s) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup323, label %if.end15

if.end15:                                         ; preds = %if.end11
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %buf16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %18 = load i8*, i8** %buf16, align 8, !tbaa !54
  %buf19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 0
  %19 = load i8*, i8** %buf19, align 8, !tbaa !55
  %20 = ptrtoint i8* %18 to i64
  %sub = add i64 %20, 4
  %rem = and i64 %sub, 7
  %sub20 = xor i64 %rem, 7
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %sub20
  %call21 = tail call i32* @__errno_location() #15
  store i32 0, i32* %call21, align 4, !tbaa !56
  %call22474 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call3, i8* noundef %add.ptr, i32 noundef 16397) #12
  %cmp23475 = icmp slt i32 %call22474, 1
  br i1 %cmp23475, label %if.then24, label %if.end29.lr.ph

if.end29.lr.ph:                                   ; preds = %if.end15
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %arrayidx73 = getelementptr inbounds [8 x i8], [8 x i8]* %seq, i64 0, i64 1
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %21 = bitcast %struct.wpacket_st* %wpkt to i8*
  %22 = bitcast i64* %wreclen to i8*
  %arrayidx259 = getelementptr inbounds i8, i8* %19, i64 14
  %arrayidx260 = getelementptr inbounds i8, i8* %19, i64 22
  br label %if.end29

if.then24:                                        ; preds = %cleanup, %if.end15
  %call25 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call3, i32 noundef 8) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup323, label %end

if.end29:                                         ; preds = %if.end29.lr.ph, %cleanup
  %call22476 = phi i32 [ %call22474, %if.end29.lr.ph ], [ %call22, %cleanup ]
  %conv448 = zext i32 %call22476 to i64
  %call30 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %add.ptr, i64 noundef %conv448) #13
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup323

if.end33:                                         ; preds = %if.end29
  %cmp34 = icmp ult i32 %call22476, 13
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 298, i8* noundef null) #12
  br label %end

if.end37:                                         ; preds = %if.end33
  %23 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !57
  %tobool38.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %23, null
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %24 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !58
  call void %23(i32 noundef 0, i32 noundef 0, i32 noundef 256, i8* noundef %add.ptr, i64 noundef 13, %struct.ssl_st* noundef nonnull %s, i8* noundef %24) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %call42 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %rectype) #13
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end41
  %call45 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %versmajor) #13
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false44, %if.end41
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 159, i8* noundef null) #12
  br label %end

if.end48:                                         ; preds = %lor.lhs.false44
  %25 = load i32, i32* %rectype, align 4, !tbaa !56
  %cmp49.not = icmp eq i32 %25, 22
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 244, i8* noundef null) #12
  br label %end

if.end52:                                         ; preds = %if.end48
  %26 = load i32, i32* %versmajor, align 4, !tbaa !56
  %cmp53.not = icmp eq i32 %26, 254
  br i1 %cmp53.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 116, i8* noundef null) #12
  br label %end

if.end56:                                         ; preds = %if.end52
  %call57 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 1) #13
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then65, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end56
  %call60 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %1) #13
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then65, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %call63 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %msgpkt) #13
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false62, %lor.lhs.false59, %if.end56
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 567, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 159, i8* noundef null) #12
  br label %end

if.end66:                                         ; preds = %lor.lhs.false62
  %call67 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %msgpkt) #13
  %27 = load i8, i8* %1, align 1, !tbaa !59
  %cmp70 = icmp ne i8 %27, 0
  %28 = load i8, i8* %arrayidx73, align 1
  %cmp75 = icmp ne i8 %28, 0
  %or.cond350 = select i1 %cmp70, i1 true, i1 %cmp75
  br i1 %or.cond350, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end66
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 244, i8* noundef null) #12
  br label %end

if.end78:                                         ; preds = %if.end66
  %call79 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %msgpkt) #13
  %call80 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %msgpkt, i32* noundef nonnull %msgtype) #13
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then101, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end78
  %call83 = call fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* noundef nonnull %msgpkt, i64* noundef nonnull %msglen) #13
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then101, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %call86 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %msgpkt, i32* noundef nonnull %msgseq) #13
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then101, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %call89 = call fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* noundef nonnull %msgpkt, i64* noundef nonnull %fragoff) #13
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then101, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %call92 = call fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* noundef nonnull %msgpkt, i64* noundef nonnull %fraglen) #13
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then101, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %29 = load i64, i64* %fraglen, align 8, !tbaa !29
  %call95 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef nonnull %msgpkt, %struct.PACKET* noundef nonnull %msgpayload, i64 noundef %29) #13
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then101, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %call98 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %msgpkt) #13
  %cmp99.not = icmp eq i64 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %lor.lhs.false97, %lor.lhs.false94, %lor.lhs.false91, %lor.lhs.false88, %lor.lhs.false85, %lor.lhs.false82, %if.end78
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 593, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 159, i8* noundef null) #12
  br label %end

if.end102:                                        ; preds = %lor.lhs.false97
  %30 = load i32, i32* %msgtype, align 4, !tbaa !56
  %cmp103.not = icmp eq i32 %30, 1
  br i1 %cmp103.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.end102
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 244, i8* noundef null) #12
  br label %end

if.end106:                                        ; preds = %if.end102
  %31 = load i32, i32* %msgseq, align 4, !tbaa !56
  %cmp107 = icmp ugt i32 %31, 2
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 402, i8* noundef null) #12
  br label %end

if.end110:                                        ; preds = %if.end106
  %32 = load i64, i64* %fragoff, align 8, !tbaa !29
  %cmp111.not = icmp ne i64 %32, 0
  %33 = load i64, i64* %msglen, align 8
  %cmp114 = icmp ugt i64 %29, %33
  %or.cond449 = select i1 %cmp111.not, i1 true, i1 %cmp114
  br i1 %or.cond449, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end110
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 401, i8* noundef null) #12
  br label %end

if.end117:                                        ; preds = %if.end110
  %34 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !57
  %tobool119.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %34, null
  br i1 %tobool119.not, label %if.end125, label %if.then120

if.then120:                                       ; preds = %if.end117
  %35 = load i32, i32* %version, align 8, !tbaa !42
  %add123 = add i64 %29, 12
  %36 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !58
  call void %34(i32 noundef 0, i32 noundef %35, i32 noundef 22, i8* noundef %call79, i64 noundef %add123, %struct.ssl_st* noundef nonnull %s, i8* noundef %36) #12
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end117
  %call126 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %msgpayload, i32* noundef nonnull %clientvers) #13
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end125
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 159, i8* noundef null) #12
  br label %end

if.end129:                                        ; preds = %if.end125
  %37 = load i32, i32* %clientvers, align 4, !tbaa !56
  %cmp130 = icmp eq i32 %37, 256
  %cond = select i1 %cmp130, i32 65280, i32 %37
  %38 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %version132 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %38, i64 0, i32 0
  %39 = load i32, i32* %version132, align 8, !tbaa !41
  %cmp133 = icmp eq i32 %39, 256
  %spec.select = select i1 %cmp133, i32 65280, i32 %39
  %cmp141 = icmp ule i32 %cond, %spec.select
  %cmp145.not = icmp eq i32 %39, 131071
  %or.cond450 = select i1 %cmp141, i1 true, i1 %cmp145.not
  br i1 %or.cond450, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.end129
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 636, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 267, i8* noundef null) #12
  br label %end

if.end148:                                        ; preds = %if.end129
  %call149 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %msgpayload, i64 noundef 32) #13
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then157, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %if.end148
  %call152 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %msgpayload, %struct.PACKET* noundef nonnull %session) #13
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then157, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %call155 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %msgpayload, %struct.PACKET* noundef nonnull %cookiepkt) #13
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end158

if.then157:                                       ; preds = %lor.lhs.false154, %lor.lhs.false151, %if.end148
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 159, i8* noundef null) #12
  br label %end

if.end158:                                        ; preds = %lor.lhs.false154
  %call159 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %cookiepkt) #13
  %cmp160 = icmp eq i64 %call159, 0
  br i1 %cmp160, label %if.then181, label %if.else

if.else:                                          ; preds = %if.end158
  %40 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %app_verify_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %40, i64 0, i32 23
  %41 = load i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)** %app_verify_cookie_cb, align 8, !tbaa !61
  %cmp163 = icmp eq i32 (%struct.ssl_st*, i8*, i32)* %41, null
  br i1 %cmp163, label %if.then165, label %if.end178

if.then165:                                       ; preds = %if.else
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 662, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 403, i8* noundef null) #12
  br label %cleanup323

if.end178:                                        ; preds = %if.else
  %call169 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %cookiepkt) #13
  %conv171 = trunc i64 %call159 to i32
  %call172 = call i32 %41(%struct.ssl_st* noundef nonnull %s, i8* noundef %call169, i32 noundef %conv171) #12
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then181, label %do.end

if.then181:                                       ; preds = %if.end158, %if.end178
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %21) #14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #14
  %42 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %app_gen_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %42, i64 0, i32 22
  %43 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %app_gen_cookie_cb, align 8, !tbaa !66
  %cmp184 = icmp eq i32 (%struct.ssl_st*, i8*, i32*)* %43, null
  br i1 %cmp184, label %if.then196, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.then181
  %call190 = call i32 %43(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %0, i32* noundef nonnull %cookielen) #12
  %cmp191 = icmp eq i32 %call190, 0
  %44 = load i32, i32* %cookielen, align 4
  %cmp194 = icmp ugt i32 %44, 255
  %or.cond351 = select i1 %cmp191, i1 true, i1 %cmp194
  br i1 %or.cond351, label %if.then196, label %if.end197

if.then196:                                       ; preds = %lor.lhs.false186, %if.then181
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 400, i8* noundef null) #12
  br label %cleanup.thread

if.end197:                                        ; preds = %lor.lhs.false186
  %45 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %version199 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %45, i64 0, i32 0
  %46 = load i32, i32* %version199, align 8, !tbaa !41
  %cmp200 = icmp eq i32 %46, 131071
  br i1 %cmp200, label %cond.end205, label %cond.false203

cond.false203:                                    ; preds = %if.end197
  %47 = load i32, i32* %version, align 8, !tbaa !42
  br label %cond.end205

cond.end205:                                      ; preds = %if.end197, %cond.false203
  %cond206 = phi i32 [ %47, %cond.false203 ], [ 65279, %if.end197 ]
  %call207 = call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #12
  %add208 = add i32 %call207, 13
  %conv209 = zext i32 %add208 to i64
  %call210 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %wpkt, i8* noundef %19, i64 noundef %conv209, i64 noundef 0) #12
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then257, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %cond.end205
  %call213 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef 22, i64 noundef 1) #12
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then257, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %lor.lhs.false212
  %call216 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef %cond206, i64 noundef 2) #12
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.then257, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false215
  %call220 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %wpkt, i8* noundef nonnull %1, i64 noundef 8) #12
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then257, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %lor.lhs.false218
  %call223 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %wpkt, i64 noundef 2) #12
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.then257, label %lor.lhs.false225

lor.lhs.false225:                                 ; preds = %lor.lhs.false222
  %call226 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef 3, i64 noundef 1) #12
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.then257, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %lor.lhs.false225
  %call229 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef 0, i64 noundef 3) #12
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then257, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %lor.lhs.false228
  %call232 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef 0, i64 noundef 2) #12
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.then257, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false231
  %call235 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef 0, i64 noundef 3) #12
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then257, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false234
  %call238 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %wpkt, i64 noundef 3) #12
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then257, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %lor.lhs.false237
  %48 = load i32, i32* %cookielen, align 4, !tbaa !56
  %conv242 = zext i32 %48 to i64
  %call243 = call i32 @dtls_raw_hello_verify_request(%struct.wpacket_st* noundef nonnull %wpkt, i8* noundef nonnull %0, i64 noundef %conv242) #12
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.then257, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %lor.lhs.false240
  %call246 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %wpkt) #12
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.then257, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %lor.lhs.false245
  %call249 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %wpkt) #12
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.then257, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %lor.lhs.false248
  %call252 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %wpkt, i64* noundef nonnull %wreclen) #12
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.then257, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %lor.lhs.false251
  %call255 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %wpkt) #12
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.then257, label %if.end258

if.then257:                                       ; preds = %lor.lhs.false254, %lor.lhs.false251, %lor.lhs.false248, %lor.lhs.false245, %lor.lhs.false240, %lor.lhs.false237, %lor.lhs.false234, %lor.lhs.false231, %lor.lhs.false228, %lor.lhs.false225, %lor.lhs.false222, %lor.lhs.false218, %lor.lhs.false215, %lor.lhs.false212, %cond.end205
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 757, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #12
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %wpkt) #12
  br label %cleanup.thread

if.end258:                                        ; preds = %lor.lhs.false254
  %call261 = call i8* @memcpy(i8* noundef nonnull %arrayidx259, i8* noundef nonnull %arrayidx260, i64 noundef 3) #12
  %49 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !57
  %tobool263.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %49, null
  br i1 %tobool263.not, label %if.end267, label %if.then264

if.then264:                                       ; preds = %if.end258
  %50 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !58
  call void %49(i32 noundef 1, i32 noundef 0, i32 noundef 256, i8* noundef %add.ptr, i64 noundef 13, %struct.ssl_st* noundef nonnull %s, i8* noundef %50) #12
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end258
  %call268 = call %union.bio_addr_st* @BIO_ADDR_new() #12
  %cmp269 = icmp eq %union.bio_addr_st* %call268, null
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end267
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.DTLSv1_listen, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup.thread446

if.end272:                                        ; preds = %if.end267
  %51 = bitcast %union.bio_addr_st* %call268 to i8*
  %call273 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 46, i64 noundef 0, i8* noundef nonnull %51) #12
  %conv274 = trunc i64 %call273 to i32
  %cmp275 = icmp sgt i32 %conv274, 0
  br i1 %cmp275, label %if.then277, label %if.end280

if.then277:                                       ; preds = %if.end272
  %call278 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 44, i64 noundef 0, i8* noundef nonnull %51) #12
  br label %if.end280

if.end280:                                        ; preds = %if.then277, %if.end272
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef nonnull %call268) #12
  %52 = load i64, i64* %wreclen, align 8, !tbaa !29
  %conv281 = trunc i64 %52 to i32
  %call282 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call4, i8* noundef %19, i32 noundef %conv281) #12
  %53 = load i64, i64* %wreclen, align 8, !tbaa !29
  %conv283 = trunc i64 %53 to i32
  %cmp284 = icmp slt i32 %call282, %conv283
  br i1 %cmp284, label %if.then286, label %if.end291

if.then286:                                       ; preds = %if.end280
  %call287 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call4, i32 noundef 8) #12
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %cleanup.thread, label %cleanup.thread446

if.end291:                                        ; preds = %if.end280
  %call292 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 11, i64 noundef 0, i8* noundef null) #12
  %conv293 = trunc i64 %call292 to i32
  %cmp294 = icmp slt i32 %conv293, 1
  br i1 %cmp294, label %if.then296, label %cleanup

if.then296:                                       ; preds = %if.end291
  %call297 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %call4, i32 noundef 8) #12
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %cleanup.thread, label %cleanup.thread446

cleanup.thread:                                   ; preds = %if.then196, %if.then257, %if.then286, %if.then296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %21) #14
  br label %cleanup323

cleanup.thread446:                                ; preds = %if.then271, %if.then286, %if.then296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %21) #14
  br label %end

cleanup:                                          ; preds = %if.end291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %21) #14
  store i32 0, i32* %call21, align 4, !tbaa !56
  %call22 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call3, i8* noundef %add.ptr, i32 noundef 16397) #12
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end29, !llvm.loop !67

do.end:                                           ; preds = %if.end178
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %54 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %54, i64 0, i32 5
  store i16 1, i16* %handshake_read_seq, align 8, !tbaa !68
  %handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %54, i64 0, i32 3
  store i16 1, i16* %handshake_write_seq, align 4, !tbaa !69
  %next_handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %54, i64 0, i32 4
  store i16 1, i16* %next_handshake_write_seq, align 2, !tbaa !70
  call void @DTLS_RECORD_LAYER_set_write_sequence(%struct.record_layer_st* noundef nonnull %rlayer, i8* noundef nonnull %1) #12
  %call311 = call i64 @SSL_set_options(%struct.ssl_st* noundef nonnull %s, i64 noundef 8192) #12
  call void @ossl_statem_set_hello_verify_done(%struct.ssl_st* noundef nonnull %s) #12
  %55 = bitcast %union.bio_addr_st* %client to i8*
  %call312 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 46, i64 noundef 0, i8* noundef %55) #12
  %conv313 = trunc i64 %call312 to i32
  %cmp314 = icmp slt i32 %conv313, 1
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %do.end
  call void @BIO_ADDR_clear(%union.bio_addr_st* noundef %client) #12
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %do.end
  %call319 = call i32 @dtls_buffer_listen_record(%struct.ssl_st* noundef nonnull %s, i64 noundef %call67, i8* noundef nonnull %1, i64 noundef %sub20) #12
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %cleanup323, label %end

end:                                              ; preds = %cleanup.thread446, %if.end317, %if.then24, %if.then157, %if.then147, %if.then128, %if.then116, %if.then109, %if.then105, %if.then101, %if.then77, %if.then65, %if.then55, %if.then51, %if.then47, %if.then36
  %ret.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then36 ], [ 0, %if.then51 ], [ 0, %if.then55 ], [ 0, %if.then77 ], [ 0, %if.then101 ], [ 0, %if.then105 ], [ 0, %if.then109 ], [ 0, %if.then116 ], [ 0, %if.then147 ], [ 0, %if.then157 ], [ 0, %if.then128 ], [ 0, %if.then65 ], [ 0, %if.then47 ], [ 1, %if.end317 ], [ 0, %cleanup.thread446 ]
  call void @BIO_ADDR_free(%union.bio_addr_st* noundef null) #12
  br label %cleanup323

cleanup323:                                       ; preds = %cleanup.thread, %if.end317, %if.then24, %if.end11, %if.end, %end, %if.then165, %if.then32, %if.then10, %if.then7
  %retval.3 = phi i32 [ -1, %if.then10 ], [ %ret.0, %end ], [ -1, %if.then165 ], [ -1, %if.then32 ], [ -1, %if.then7 ], [ -1, %if.end ], [ -1, %if.end11 ], [ -1, %if.then24 ], [ -1, %if.end317 ], [ -1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #14
  ret i32 %retval.3
}

declare void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #0

declare i32 @SSL_clear(%struct.ssl_st* noundef) local_unnamed_addr #0

declare void @ERR_clear_error() local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @ssl3_setup_buffers(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #6

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #7 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !71
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !73
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 8) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #8 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !56
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !74
  %5 = load i8*, i8** %data, align 8, !tbaa !40
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !71
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !73
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #9 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !73
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #9 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %i = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef %pkt, i64* noundef nonnull %i) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %i, align 8, !tbaa !29
  store i64 %1, i64* %data, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !56
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !74
  %5 = load i8*, i8** %data, align 8, !tbaa !40
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !71
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !73
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef) local_unnamed_addr #0

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @dtls_raw_hello_verify_request(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #0

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #0

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #0

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #0

declare %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #0

declare void @BIO_ADDR_free(%union.bio_addr_st* noundef) local_unnamed_addr #0

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @DTLS_RECORD_LAYER_set_write_sequence(%struct.record_layer_st* noundef, i8* noundef) local_unnamed_addr #0

declare i64 @SSL_set_options(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #0

declare void @ossl_statem_set_hello_verify_done(%struct.ssl_st* noundef) local_unnamed_addr #0

declare void @BIO_ADDR_clear(%union.bio_addr_st* noundef) local_unnamed_addr #0

declare i32 @dtls_buffer_listen_record(%struct.ssl_st* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_shutdown(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ssl3_shutdown(%struct.ssl_st* noundef %s) #12
  ret i32 %call
}

declare i32 @ssl3_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_query_mtu(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %link_mtu = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 8
  %1 = load i64, i64* %link_mtu, align 8, !tbaa !45
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %mtu9.phi.trans.insert = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 9
  %.pre = load i64, i64* %mtu9.phi.trans.insert, align 8, !tbaa !46
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #12
  %call3 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 49, i64 noundef 0, i8* noundef null) #12
  %conv4 = and i64 %call3, 4294967295
  %sub = sub i64 %1, %conv4
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 9
  store i64 %sub, i64* %mtu, align 8, !tbaa !46
  %link_mtu7 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 8
  store i64 0, i64* %link_mtu7, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i64 [ %sub, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %call10 = tail call i64 @dtls1_min_mtu(%struct.ssl_st* noundef nonnull %s) #13
  %cmp = icmp ult i64 %3, %call10
  br i1 %cmp, label %if.then12, label %return

if.then12:                                        ; preds = %if.end
  %call13 = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #12
  %and = and i64 %call13, 4096
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %if.then15, label %return

if.then15:                                        ; preds = %if.then12
  %call16 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #12
  %call17 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call16, i32 noundef 40, i64 noundef 0, i8* noundef null) #12
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu19 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 9
  store i64 %call17, i64* %mtu19, align 8, !tbaa !46
  %call22 = tail call i64 @dtls1_min_mtu(%struct.ssl_st* noundef nonnull %s) #13
  %cmp23 = icmp ult i64 %call17, %call22
  br i1 %cmp23, label %if.then25, label %return

if.then25:                                        ; preds = %if.then15
  %call26 = tail call i64 @dtls1_min_mtu(%struct.ssl_st* noundef nonnull %s) #13
  %5 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu28 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 9
  store i64 %call26, i64* %mtu28, align 8, !tbaa !46
  %call29 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #12
  %6 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu31 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 9
  %7 = load i64, i64* %mtu31, align 8, !tbaa !46
  %call32 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call29, i32 noundef 42, i64 noundef %7, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end, %if.then15, %if.then25, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 1, %if.then25 ], [ 1, %if.then15 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @dtls1_min_mtu(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef %s) #12
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 49, i64 noundef 0, i8* noundef null) #12
  %conv3 = and i64 %call2, 4294967295
  %sub = sub nsw i64 256, %conv3
  ret i64 %sub
}

; Function Attrs: noinline nounwind uwtable
define i64 @DTLS_get_data_mtu(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %mac_overhead = alloca i64, align 8
  %int_overhead = alloca i64, align 8
  %blocksize = alloca i64, align 8
  %ext_overhead = alloca i64, align 8
  %0 = bitcast i64* %mac_overhead to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i64* %int_overhead to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast i64* %blocksize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  %3 = bitcast i64* %ext_overhead to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %call = tail call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %s) #12
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %4 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %mtu1 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %4, i64 0, i32 9
  %5 = load i64, i64* %mtu1, align 8, !tbaa !46
  %cmp = icmp eq %struct.ssl_cipher_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ssl_cipher_get_overhead(%struct.ssl_cipher_st* noundef nonnull %call, i64* noundef nonnull %mac_overhead, i64* noundef nonnull %int_overhead, i64* noundef nonnull %blocksize, i64* noundef nonnull %ext_overhead) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %6 = load i64, i64* %flags, align 8, !tbaa !75
  %and = and i64 %6, 256
  %tobool5.not = icmp eq i64 %and, 0
  %7 = load i64, i64* %mac_overhead, align 8, !tbaa !29
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %8 = load i64, i64* %ext_overhead, align 8, !tbaa !29
  %add = add i64 %8, %7
  br label %if.end8

if.else:                                          ; preds = %if.end4
  %9 = load i64, i64* %int_overhead, align 8, !tbaa !29
  %add7 = add i64 %9, %7
  store i64 %add7, i64* %int_overhead, align 8, !tbaa !29
  %.pre = load i64, i64* %ext_overhead, align 8, !tbaa !29
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %10 = phi i64 [ %.pre, %if.else ], [ %add, %if.then6 ]
  %add9 = add i64 %10, 13
  %cmp10.not = icmp ugt i64 %5, %add9
  br i1 %cmp10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %sub = sub i64 %5, %add9
  %11 = load i64, i64* %blocksize, align 8, !tbaa !29
  %tobool14.not = icmp eq i64 %11, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %rem = urem i64 %sub, %11
  %sub16 = sub i64 %sub, %rem
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %mtu.0 = phi i64 [ %sub16, %if.then15 ], [ %sub, %if.end12 ]
  %12 = load i64, i64* %int_overhead, align 8, !tbaa !29
  %13 = call i64 @llvm.usub.sat.i64(i64 %mtu.0, i64 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ %13, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i64 %retval.0
}

declare %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef) local_unnamed_addr #0

declare i32 @ssl_cipher_get_overhead(%struct.ssl_cipher_st* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @DTLS_set_timer_cb(%struct.ssl_st* nocapture noundef readonly %s, i32 (%struct.ssl_st*, i32)* noundef %cb) local_unnamed_addr #5 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !30
  %timer_cb = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 16
  store i32 (%struct.ssl_st*, i32)* %cb, i32 (%struct.ssl_st*, i32)** %timer_cb, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %1 = load i8, i8* %0, align 1, !tbaa !59
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !56
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !71
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !73
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 8
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef 8) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  store i8* %0, i8** %data, align 8, !tbaa !40
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_3(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 3) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %1 = load i8, i8* %0, align 1, !tbaa !59
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !29
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !59
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !29
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !59
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %1 = load i8, i8* %0, align 1, !tbaa !59
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !56
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !59
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !56
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !71
  %call1 = tail call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @dtls1_do_write(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !11, i64 280}
!5 = !{!"dtls1_state_st", !6, i64 0, !8, i64 256, !9, i64 264, !10, i64 268, !10, i64 270, !10, i64 272, !11, i64 280, !11, i64 288, !8, i64 296, !8, i64 304, !12, i64 312, !12, i64 400, !9, i64 488, !14, i64 496, !9, i64 512, !9, i64 516, !11, i64 520}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"hm_header_st", !6, i64 0, !8, i64 8, !10, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !13, i64 48}
!13 = !{!"dtls1_retransmit_state", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32}
!14 = !{!"timeval", !8, i64 0, !8, i64 8}
!15 = !{!5, !11, i64 288}
!16 = !{!17, !9, i64 56}
!17 = !{!"ssl_st", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !9, i64 40, !11, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !18, i64 72, !6, i64 132, !11, i64 136, !11, i64 144, !8, i64 152, !8, i64 160, !19, i64 168, !11, i64 1208, !11, i64 1216, !11, i64 1224, !9, i64 1232, !11, i64 1240, !21, i64 1248, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !9, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !11, i64 2120, !6, i64 2128, !11, i64 2144, !11, i64 2152, !11, i64 2160, !11, i64 2168, !6, i64 2176, !11, i64 2192, !11, i64 2200, !6, i64 2208, !8, i64 2272, !6, i64 2280, !8, i64 2288, !6, i64 2296, !11, i64 2328, !11, i64 2336, !11, i64 2344, !8, i64 2352, !11, i64 2360, !6, i64 2368, !8, i64 2400, !9, i64 2408, !11, i64 2416, !11, i64 2424, !9, i64 2432, !9, i64 2436, !11, i64 2440, !11, i64 2448, !11, i64 2456, !11, i64 2464, !11, i64 2472, !11, i64 2480, !8, i64 2488, !22, i64 2496, !11, i64 2512, !11, i64 2520, !6, i64 2528, !8, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !8, i64 2560, !9, i64 2568, !9, i64 2572, !8, i64 2576, !8, i64 2584, !8, i64 2592, !23, i64 2600, !11, i64 2904, !9, i64 2912, !11, i64 2920, !11, i64 2928, !11, i64 2936, !9, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !9, i64 2976, !9, i64 2980, !6, i64 2984, !9, i64 2988, !11, i64 2992, !8, i64 3000, !9, i64 3008, !11, i64 3016, !25, i64 3024, !11, i64 3152, !26, i64 3160, !11, i64 7448, !11, i64 7456, !11, i64 7464, !11, i64 7472, !8, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !11, i64 7504, !11, i64 7512, !8, i64 7520, !11, i64 7528, !8, i64 7536, !8, i64 7544, !8, i64 7552, !11, i64 7560, !11, i64 7568, !11, i64 7576, !11, i64 7584, !11, i64 7592, !8, i64 7600}
!18 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !6, i64 52, !6, i64 56}
!19 = !{!"", !8, i64 0, !8, i64 8, !6, i64 16, !8, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !9, i64 216, !9, i64 220, !11, i64 224, !11, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !6, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !20, i64 280, !6, i64 840, !8, i64 904, !6, i64 912, !8, i64 976, !9, i64 984, !9, i64 988, !11, i64 992, !8, i64 1000, !11, i64 1008, !8, i64 1016, !9, i64 1024, !6, i64 1028, !6, i64 1029, !10, i64 1030, !11, i64 1032}
!20 = !{!"", !6, i64 0, !8, i64 128, !6, i64 136, !8, i64 264, !8, i64 272, !9, i64 280, !11, i64 288, !11, i64 296, !9, i64 304, !11, i64 312, !8, i64 320, !11, i64 328, !8, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !9, i64 368, !8, i64 376, !11, i64 384, !9, i64 392, !11, i64 400, !8, i64 408, !11, i64 416, !8, i64 424, !11, i64 432, !8, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !8, i64 480, !8, i64 488, !11, i64 496, !6, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!21 = !{!"ssl_dane_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !8, i64 56}
!22 = !{!"crypto_ex_data_st", !11, i64 0, !11, i64 8}
!23 = !{!"", !6, i64 0, !11, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !11, i64 64, !10, i64 72, !9, i64 76, !24, i64 80, !9, i64 112, !9, i64 116, !8, i64 120, !11, i64 128, !8, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !8, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !8, i64 232, !11, i64 240, !8, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !11, i64 272, !8, i64 280, !9, i64 288, !6, i64 292, !9, i64 296}
!24 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24}
!25 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !9, i64 112, !8, i64 120}
!26 = !{!"record_layer_st", !11, i64 0, !9, i64 8, !9, i64 12, !8, i64 16, !8, i64 24, !27, i64 32, !6, i64 80, !6, i64 1616, !11, i64 4176, !8, i64 4184, !8, i64 4192, !6, i64 4200, !8, i64 4208, !8, i64 4216, !8, i64 4224, !9, i64 4232, !8, i64 4240, !11, i64 4248, !6, i64 4256, !6, i64 4264, !9, i64 4272, !9, i64 4276, !11, i64 4280}
!27 = !{!"ssl3_buffer_st", !11, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40}
!28 = !{!5, !8, i64 256}
!29 = !{!8, !8, i64 0}
!30 = !{!17, !11, i64 1208}
!31 = !{!17, !11, i64 8}
!32 = !{!33, !11, i64 24}
!33 = !{!"ssl_method_st", !9, i64 0, !9, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!34 = !{!35, !11, i64 8}
!35 = !{!"pitem_st", !6, i64 0, !11, i64 8, !11, i64 16}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = !{!5, !11, i64 520}
!40 = !{!11, !11, i64 0}
!41 = !{!33, !9, i64 0}
!42 = !{!17, !9, i64 0}
!43 = !{!17, !8, i64 2536}
!44 = !{!17, !9, i64 2572}
!45 = !{!5, !8, i64 296}
!46 = !{!5, !8, i64 304}
!47 = !{!5, !8, i64 496}
!48 = !{!5, !8, i64 504}
!49 = !{!14, !8, i64 0}
!50 = !{!14, !8, i64 8}
!51 = !{!5, !9, i64 512}
!52 = !{!5, !9, i64 488}
!53 = !{!17, !11, i64 48}
!54 = !{!17, !11, i64 3192}
!55 = !{!27, !11, i64 0}
!56 = !{!9, !9, i64 0}
!57 = !{!17, !11, i64 1216}
!58 = !{!17, !11, i64 1224}
!59 = !{!6, !6, i64 0}
!60 = !{!17, !11, i64 2472}
!61 = !{!62, !11, i64 216}
!62 = !{!"ssl_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !8, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !63, i64 120, !6, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !22, i64 240, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !8, i64 312, !9, i64 320, !9, i64 324, !9, i64 328, !8, i64 336, !11, i64 344, !9, i64 352, !11, i64 360, !11, i64 368, !9, i64 376, !8, i64 384, !6, i64 392, !11, i64 424, !11, i64 432, !11, i64 440, !9, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !11, i64 512, !11, i64 520, !11, i64 528, !64, i64 536, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !25, i64 792, !65, i64 920, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !9, i64 984, !9, i64 988, !11, i64 992, !11, i64 1000, !8, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !8, i64 1040, !11, i64 1048, !11, i64 1056, !9, i64 1064, !11, i64 1072, !11, i64 1080, !11, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !11, i64 1568, !11, i64 1576, !8, i64 1584, !8, i64 1592, !9, i64 1600, !9, i64 1604, !9, i64 1608, !9, i64 1612}
!63 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!64 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !9, i64 72, !6, i64 76, !8, i64 80, !11, i64 88, !8, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !8, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !6, i64 192}
!65 = !{!"dane_ctx_st", !11, i64 0, !11, i64 8, !6, i64 16, !8, i64 24}
!66 = !{!62, !11, i64 208}
!67 = distinct !{!67, !37}
!68 = !{!5, !10, i64 272}
!69 = !{!5, !10, i64 268}
!70 = !{!5, !10, i64 270}
!71 = !{!72, !11, i64 0}
!72 = !{!"", !11, i64 0, !8, i64 8}
!73 = !{!72, !8, i64 8}
!74 = !{i64 0, i64 8, !40, i64 8, i64 8, !29}
!75 = !{!17, !8, i64 168}
