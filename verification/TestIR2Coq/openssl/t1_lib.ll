; ModuleID = 'ssl/t1_lib.c'
source_filename = "ssl/t1_lib.c"
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
%struct.anon.6 = type { i32, i16 }
%struct.ossl_provider_st = type opaque
%struct.provider_group_data_st = type { %struct.ssl_ctx_st*, %struct.ossl_provider_st* }
%struct.gid_cb_st = type { %struct.ssl_ctx_st*, i64, i64, i16* }
%struct.evp_pkey_ctx_st = type opaque
%struct.SSL_CERT_LOOKUP = type { i32, i32 }
%struct.ssl_hmac_st = type { %struct.evp_mac_ctx_st*, %struct.hmac_ctx_st* }
%struct.evp_mac_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.sig_cb_st = type { i64, [56 x i16] }
%struct.X509_name_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_keymgmt_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@TLSv1_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls1_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls1_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls1_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls1_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls1_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls1_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_export_keying_material, i32 0, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @ssl3_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @tls_close_construct_packet, i32 (%struct.ssl_st*)* @ssl3_handshake_write }, align 8
@TLSv1_1_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls1_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls1_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls1_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls1_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls1_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls1_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_export_keying_material, i32 1, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @ssl3_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @tls_close_construct_packet, i32 (%struct.ssl_st*)* @ssl3_handshake_write }, align 8
@TLSv1_2_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls1_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls1_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls1_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls1_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls1_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls1_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_export_keying_material, i32 23, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @ssl3_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @tls_close_construct_packet, i32 (%struct.ssl_st*)* @ssl3_handshake_write }, align 8
@TLSv1_3_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @tls13_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @tls1_mac, i32 (%struct.ssl_st*)* @tls13_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @tls13_generate_master_secret, i32 (%struct.ssl_st*, i32)* @tls13_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @tls13_final_finish_mac, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 15, i32 (i32)* @tls13_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @tls13_export_keying_material, i32 6, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @ssl3_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @tls_close_construct_packet, i32 (%struct.ssl_st*)* @ssl3_handshake_write }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"ssl/t1_lib.c\00", align 1
@supported_groups_default = internal unnamed_addr constant [17 x i16] [i16 29, i16 23, i16 30, i16 25, i16 24, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 256, i16 257, i16 258, i16 259, i16 260], align 16
@__func__.ssl_load_groups = private unnamed_addr constant [16 x i8] c"ssl_load_groups\00", align 1
@nid_to_group = internal unnamed_addr constant [42 x %struct.anon.6] [%struct.anon.6 { i32 721, i16 1 }, %struct.anon.6 { i32 722, i16 2 }, %struct.anon.6 { i32 723, i16 3 }, %struct.anon.6 { i32 724, i16 4 }, %struct.anon.6 { i32 725, i16 5 }, %struct.anon.6 { i32 726, i16 6 }, %struct.anon.6 { i32 727, i16 7 }, %struct.anon.6 { i32 728, i16 8 }, %struct.anon.6 { i32 729, i16 9 }, %struct.anon.6 { i32 730, i16 10 }, %struct.anon.6 { i32 731, i16 11 }, %struct.anon.6 { i32 732, i16 12 }, %struct.anon.6 { i32 733, i16 13 }, %struct.anon.6 { i32 734, i16 14 }, %struct.anon.6 { i32 708, i16 15 }, %struct.anon.6 { i32 709, i16 16 }, %struct.anon.6 { i32 710, i16 17 }, %struct.anon.6 { i32 711, i16 18 }, %struct.anon.6 { i32 409, i16 19 }, %struct.anon.6 { i32 712, i16 20 }, %struct.anon.6 { i32 713, i16 21 }, %struct.anon.6 { i32 714, i16 22 }, %struct.anon.6 { i32 415, i16 23 }, %struct.anon.6 { i32 715, i16 24 }, %struct.anon.6 { i32 716, i16 25 }, %struct.anon.6 { i32 927, i16 26 }, %struct.anon.6 { i32 931, i16 27 }, %struct.anon.6 { i32 933, i16 28 }, %struct.anon.6 { i32 1034, i16 29 }, %struct.anon.6 { i32 1035, i16 30 }, %struct.anon.6 { i32 1148, i16 34 }, %struct.anon.6 { i32 1184, i16 35 }, %struct.anon.6 { i32 1185, i16 36 }, %struct.anon.6 { i32 1186, i16 37 }, %struct.anon.6 { i32 998, i16 38 }, %struct.anon.6 { i32 999, i16 39 }, %struct.anon.6 { i32 1149, i16 40 }, %struct.anon.6 { i32 1126, i16 256 }, %struct.anon.6 { i32 1127, i16 257 }, %struct.anon.6 { i32 1128, i16 258 }, %struct.anon.6 { i32 1129, i16 259 }, %struct.anon.6 { i32 1130, i16 260 }], align 16
@suiteb_curves = internal constant [2 x i16] [i16 23, i16 24], align 2
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@__func__.tls1_set_groups = private unnamed_addr constant [16 x i8] c"tls1_set_groups\00", align 1
@ecformats_default = internal constant [3 x i8] c"\00\01\02", align 1
@sigalg_lookup_tbl = internal unnamed_addr constant [28 x %struct.sigalg_lookup_st] [%struct.sigalg_lookup_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i16 1027, i32 672, i32 4, i32 408, i32 3, i32 794, i32 415, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i16 1283, i32 673, i32 5, i32 408, i32 3, i32 795, i32 715, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i16 1539, i32 674, i32 11, i32 408, i32 3, i32 796, i32 716, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i16 2055, i32 0, i32 -1, i32 1087, i32 7, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i16 2056, i32 0, i32 -1, i32 1088, i32 8, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 771, i32 675, i32 10, i32 408, i32 3, i32 793, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 515, i32 64, i32 1, i32 408, i32 3, i32 416, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i16 2052, i32 672, i32 4, i32 912, i32 0, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i16 2053, i32 673, i32 5, i32 912, i32 0, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i16 2054, i32 674, i32 11, i32 912, i32 0, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i16 2057, i32 672, i32 4, i32 912, i32 1, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i16 2058, i32 673, i32 5, i32 912, i32 1, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i16 2059, i32 674, i32 11, i32 912, i32 1, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i16 1025, i32 672, i32 4, i32 6, i32 0, i32 668, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i16 1281, i32 673, i32 5, i32 6, i32 0, i32 669, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i16 1537, i32 674, i32 11, i32 6, i32 0, i32 670, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i16 769, i32 675, i32 10, i32 6, i32 0, i32 671, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i16 513, i32 64, i32 1, i32 6, i32 0, i32 65, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 1026, i32 672, i32 4, i32 116, i32 2, i32 803, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 1282, i32 673, i32 5, i32 116, i32 2, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 1538, i32 674, i32 11, i32 116, i32 2, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 770, i32 675, i32 10, i32 116, i32 2, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 514, i32 64, i32 1, i32 116, i32 2, i32 113, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 2112, i32 982, i32 6, i32 979, i32 5, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 2113, i32 983, i32 8, i32 980, i32 6, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 -4370, i32 982, i32 6, i32 979, i32 5, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 -4113, i32 983, i32 8, i32 980, i32 6, i32 0, i32 0, i32 1 }, %struct.sigalg_lookup_st { i8* null, i16 -4627, i32 809, i32 2, i32 811, i32 4, i32 0, i32 0, i32 1 }], align 16
@suiteb_sigalgs = internal constant [2 x i16] [i16 1027, i16 1283], align 2
@tls12_sigalgs = internal constant [28 x i16] [i16 1027, i16 1283, i16 1539, i16 2055, i16 2056, i16 2057, i16 2058, i16 2059, i16 2052, i16 2053, i16 2054, i16 1025, i16 1281, i16 1537, i16 771, i16 515, i16 769, i16 513, i16 770, i16 514, i16 1026, i16 1282, i16 1538, i16 2112, i16 2113, i16 -4370, i16 -4113, i16 -4627], align 16
@__func__.tls12_check_peer_sigalg = private unnamed_addr constant [24 x i8] c"tls12_check_peer_sigalg\00", align 1
@__func__.tls1_set_server_sigalgs = private unnamed_addr constant [24 x i8] c"tls1_set_server_sigalgs\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@__func__.tls12_copy_sigalgs = private unnamed_addr constant [19 x i8] c"tls12_copy_sigalgs\00", align 1
@__func__.tls1_save_u16 = private unnamed_addr constant [14 x i8] c"tls1_save_u16\00", align 1
@__func__.tls1_set_raw_sigalgs = private unnamed_addr constant [21 x i8] c"tls1_set_raw_sigalgs\00", align 1
@__func__.tls1_set_sigalgs = private unnamed_addr constant [17 x i8] c"tls1_set_sigalgs\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@__func__.tls_choose_sigalg = private unnamed_addr constant [18 x i8] c"tls_choose_sigalg\00", align 1
@__func__.SSL_CTX_set_tlsext_max_fragment_length = private unnamed_addr constant [39 x i8] c"SSL_CTX_set_tlsext_max_fragment_length\00", align 1
@__func__.SSL_set_tlsext_max_fragment_length = private unnamed_addr constant [35 x i8] c"SSL_set_tlsext_max_fragment_length\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"TLS-GROUP\00", align 1
@__func__.add_provider_groups = private unnamed_addr constant [20 x i8] c"add_provider_groups\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"tls-group-name\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"tls-group-name-internal\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tls-group-id\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"tls-group-alg\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"tls-group-sec-bits\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"tls-group-is-kem\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"tls-min-tls\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tls-max-tls\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"tls-min-dtls\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"tls-max-dtls\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"ecdsa_secp256r1_sha256\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"ecdsa_secp384r1_sha384\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"ecdsa_secp521r1_sha512\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"ed448\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha256\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha384\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"rsa_pss_rsae_sha512\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha256\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha384\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"rsa_pss_pss_sha512\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha256\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha384\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha512\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"rsa_pkcs1_sha224\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"rsa_pkcs1_sha1\00", align 1
@tls_default_sigalg = internal unnamed_addr constant [9 x i16] [i16 513, i16 0, i16 514, i16 515, i16 -4627, i16 2112, i16 2113, i16 0, i16 0], align 16
@legacy_rsa_sigalg = internal constant %struct.sigalg_lookup_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i16 0, i32 114, i32 9, i32 6, i32 0, i32 0, i32 0, i32 1 }, align 8
@.str.42 = private unnamed_addr constant [19 x i8] c"rsa_pkcs1_md5_sha1\00", align 1
@__func__.tls1_set_shared_sigalgs = private unnamed_addr constant [24 x i8] c"tls1_set_shared_sigalgs\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"PSS\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@switch.table.tls1_check_chain = private unnamed_addr constant [7 x i32] [i32 65, i32 65, i32 113, i32 416, i32 807, i32 985, i32 986], align 4
@switch.table.tls1_check_chain.46 = private unnamed_addr constant [7 x i32] [i32 6, i32 6, i32 116, i32 408, i32 811, i32 979, i32 980], align 4

declare i32 @tls1_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) #0

declare i32 @tls1_mac(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i8* noundef, i32 noundef) #0

declare i32 @tls1_setup_key_block(%struct.ssl_st* noundef) #0

declare i32 @tls1_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #0

declare i32 @tls1_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) #0

declare i64 @tls1_final_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef) #0

declare i32 @tls1_alert_code(i32 noundef) #0

declare i32 @tls1_export_keying_material(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) #0

declare i32 @ssl3_set_handshake_header(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef) #0

declare i32 @tls_close_construct_packet(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef) #0

declare i32 @ssl3_handshake_write(%struct.ssl_st* noundef) #0

declare i32 @tls13_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) #0

declare i32 @tls13_setup_key_block(%struct.ssl_st* noundef) #0

declare i32 @tls13_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #0

declare i32 @tls13_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) #0

declare i64 @tls13_final_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef) #0

declare i32 @tls13_alert_code(i32 noundef) #0

declare i32 @tls13_export_keying_material(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @tls1_default_timeout() local_unnamed_addr #1 {
entry:
  ret i64 7200
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_new(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @ssl3_new(%struct.ssl_st* noundef %s) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl_clear = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_clear, align 8, !tbaa !22
  %call1 = tail call i32 %1(%struct.ssl_st* noundef %s) #15
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare i32 @ssl3_new(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define void @tls1_free(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %session_ticket = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 19
  %0 = bitcast %struct.tls_session_ticket_ext_st** %session_ticket to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 122) #15
  tail call void @ssl3_free(%struct.ssl_st* noundef %s) #15
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @ssl3_free(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_clear(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @ssl3_clear(%struct.ssl_st* noundef %s) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !25
  %cmp = icmp eq i32 %1, 65536
  %version2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %. = select i1 %cmp, i32 772, i32 %1
  store i32 %., i32* %version2, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ssl3_clear(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_load_groups(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #2 {
entry:
  %tmp_supp_groups = alloca [17 x i16], align 16
  %0 = bitcast [17 x i16]* %tmp_supp_groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 34, i8* nonnull %0) #16
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %2 = bitcast %struct.ssl_ctx_st* %ctx to i8*
  %call = tail call i32 @OSSL_PROVIDER_do_all(%struct.ossl_lib_ctx_st* noundef %1, i32 (%struct.ossl_provider_st*, i8*)* noundef nonnull @discover_provider_groups, i8* noundef %2) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %group_list_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 92
  %3 = load i64, i64* %group_list_len, align 8, !tbaa !32
  %cmp257.not = icmp eq i64 %3, 0
  %group_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 91
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond.preheader, %for.inc15
  %num_deflt_grps.062 = phi i64 [ 0, %for.cond.preheader ], [ %num_deflt_grps.1, %for.inc15 ]
  %i.059 = phi i64 [ 0, %for.cond.preheader ], [ %inc16, %for.inc15 ]
  br i1 %cmp257.not, label %for.inc15, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %4 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !33
  %arrayidx4 = getelementptr inbounds [17 x i16], [17 x i16]* @supported_groups_default, i64 0, i64 %i.059
  %5 = load i16, i16* %arrayidx4, align 2, !tbaa !34
  br label %for.body3

for.cond1:                                        ; preds = %for.body3
  %exitcond.not = icmp eq i64 %inc14, %3
  br i1 %exitcond.not, label %for.inc15, label %for.body3, !llvm.loop !35

for.body3:                                        ; preds = %for.body3.lr.ph, %for.cond1
  %j.058 = phi i64 [ 0, %for.body3.lr.ph ], [ %inc14, %for.cond1 ]
  %group_id = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %4, i64 %j.058, i32 4
  %6 = load i16, i16* %group_id, align 4, !tbaa !37
  %cmp6 = icmp eq i16 %6, %5
  %inc14 = add nuw i64 %j.058, 1
  br i1 %cmp6, label %if.then8, label %for.cond1

if.then8:                                         ; preds = %for.body3
  %inc = add i64 %num_deflt_grps.062, 1
  %arrayidx12 = getelementptr inbounds [17 x i16], [17 x i16]* %tmp_supp_groups, i64 0, i64 %num_deflt_grps.062
  store i16 %5, i16* %arrayidx12, align 2, !tbaa !34
  br label %for.inc15

for.inc15:                                        ; preds = %for.cond1, %for.cond1.preheader, %if.then8
  %num_deflt_grps.1 = phi i64 [ %inc, %if.then8 ], [ %num_deflt_grps.062, %for.cond1.preheader ], [ %num_deflt_grps.062, %for.cond1 ]
  %inc16 = add nuw nsw i64 %i.059, 1
  %exitcond64.not = icmp eq i64 %inc16, 17
  br i1 %exitcond64.not, label %for.end17, label %for.cond1.preheader, !llvm.loop !39

for.end17:                                        ; preds = %for.inc15
  %cmp18 = icmp eq i64 %num_deflt_grps.1, 0
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %for.end17
  %mul = shl i64 %num_deflt_grps.1, 1
  %call22 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 408) #15
  %supported_groups_default = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 14
  %7 = bitcast i16** %supported_groups_default to i8**
  store i8* %call22, i8** %7, align 8, !tbaa !40
  %cmp25 = icmp eq i8* %call22, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_load_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call32 = call i8* @memcpy(i8* noundef nonnull %call22, i8* noundef nonnull %0, i64 noundef %mul) #15
  %supported_groups_default_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 15
  store i64 %num_deflt_grps.1, i64* %supported_groups_default_len, align 8, !tbaa !41
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %entry, %if.end28, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 1, %if.end28 ], [ 0, %entry ], [ 1, %for.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @OSSL_PROVIDER_do_all(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_provider_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @discover_provider_groups(%struct.ossl_provider_st* noundef %provider, i8* noundef %vctx) #2 {
entry:
  %pgd = alloca %struct.provider_group_data_st, align 8
  %0 = bitcast %struct.provider_group_data_st* %pgd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  %1 = bitcast %struct.provider_group_data_st* %pgd to i8**
  store i8* %vctx, i8** %1, align 8, !tbaa !42
  %provider1 = getelementptr inbounds %struct.provider_group_data_st, %struct.provider_group_data_st* %pgd, i64 0, i32 1
  store %struct.ossl_provider_st* %provider, %struct.ossl_provider_st** %provider1, align 8, !tbaa !44
  %call = call i32 @OSSL_PROVIDER_get_capabilities(%struct.ossl_provider_st* noundef %provider, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @add_provider_groups, i8* noundef nonnull %0) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i32 %call
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i16 noundef zeroext %group_id) local_unnamed_addr #5 {
entry:
  %group_list_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 92
  %0 = load i64, i64* %group_list_len, align 8, !tbaa !32
  %cmp14.not = icmp eq i64 %0, 0
  br i1 %cmp14.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %group_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 91
  %1 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !33
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.015 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %group_id1 = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %1, i64 %i.015, i32 4
  %2 = load i16, i16* %group_id1, align 4, !tbaa !37
  %cmp3 = icmp eq i16 %2, %group_id
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %1, i64 %i.015
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.015, 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !45

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi %struct.tls_group_info_st* [ %arrayidx, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.tls_group_info_st* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i32 @tls1_group_id2nid(i16 noundef zeroext %group_id, i32 noundef %include_unknown) local_unnamed_addr #6 {
entry:
  %conv = zext i16 %group_id to i32
  %cmp = icmp eq i16 %group_id, 0
  br i1 %cmp, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc.2
  %i.022 = phi i64 [ %inc.2, %for.inc.2 ], [ 0, %entry ]
  %group_id4 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %i.022, i32 1
  %0 = load i16, i16* %group_id4, align 4, !tbaa !46
  %cmp7 = icmp eq i16 %0, %group_id
  br i1 %cmp7, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.inc.1, %for.inc, %for.body
  %i.022.lcssa = phi i64 [ %i.022, %for.body ], [ %inc, %for.inc ], [ %inc.1, %for.inc.1 ]
  %nid = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %i.022.lcssa, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !48
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.022, 1
  %group_id4.1 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %inc, i32 1
  %2 = load i16, i16* %group_id4.1, align 4, !tbaa !46
  %cmp7.1 = icmp eq i16 %2, %group_id
  br i1 %cmp7.1, label %if.then9, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %inc.1 = add nuw nsw i64 %i.022, 2
  %group_id4.2 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %inc.1, i32 1
  %3 = load i16, i16* %group_id4.2, align 4, !tbaa !46
  %cmp7.2 = icmp eq i16 %3, %group_id
  br i1 %cmp7.2, label %if.then9, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %inc.2 = add nuw nsw i64 %i.022, 3
  %exitcond.not.2 = icmp eq i64 %inc.2, 42
  br i1 %exitcond.not.2, label %for.end, label %for.body, !llvm.loop !49

for.end:                                          ; preds = %for.inc.2
  %tobool.not = icmp eq i32 %include_unknown, 0
  %or = or i32 %conv, 16777216
  %spec.select = select i1 %tobool.not, i32 0, i32 %or
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.then9
  %retval.0 = phi i32 [ %1, %if.then9 ], [ 0, %entry ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define zeroext i16 @tls1_nid2group_id(i32 noundef %nid) local_unnamed_addr #6 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc.2, %entry
  %i.09 = phi i64 [ 0, %entry ], [ %inc.2, %for.inc.2 ]
  %nid1 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %i.09, i32 0
  %0 = load i32, i32* %nid1, align 8, !tbaa !48
  %cmp2 = icmp eq i32 %0, %nid
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.1, %for.inc, %for.body
  %i.09.lcssa = phi i64 [ %i.09, %for.body ], [ %inc, %for.inc ], [ %inc.1, %for.inc.1 ]
  %group_id = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %i.09.lcssa, i32 1
  %1 = load i16, i16* %group_id, align 4, !tbaa !46
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.09, 1
  %nid1.1 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %inc, i32 0
  %2 = load i32, i32* %nid1.1, align 8, !tbaa !48
  %cmp2.1 = icmp eq i32 %2, %nid
  br i1 %cmp2.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %inc.1 = add nuw nsw i64 %i.09, 2
  %nid1.2 = getelementptr inbounds [42 x %struct.anon.6], [42 x %struct.anon.6]* @nid_to_group, i64 0, i64 %inc.1, i32 0
  %3 = load i32, i32* %nid1.2, align 8, !tbaa !48
  %cmp2.2 = icmp eq i32 %3, %nid
  br i1 %cmp2.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %inc.2 = add nuw nsw i64 %i.09, 3
  %exitcond.not.2 = icmp eq i64 %inc.2, 42
  br i1 %exitcond.not.2, label %cleanup, label %for.body, !llvm.loop !50

cleanup:                                          ; preds = %for.inc.2, %if.then
  %retval.0 = phi i16 [ %1, %if.then ], [ 0, %for.inc.2 ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @tls1_get_supported_groups(%struct.ssl_st* nocapture noundef readonly %s, i16** nocapture noundef writeonly %pgroups, i64* nocapture noundef writeonly %pgroupslen) local_unnamed_addr #7 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %1, 196608
  switch i32 %and, label %sw.default [
    i32 196608, label %sw.bb
    i32 65536, label %sw.bb1
    i32 131072, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_curves, i64 0, i64 0), i16** %pgroups, align 8, !tbaa !55
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_curves, i64 0, i64 0), i16** %pgroups, align 8, !tbaa !55
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_curves, i64 0, i64 1), i16** %pgroups, align 8, !tbaa !55
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 16
  %2 = load i16*, i16** %supportedgroups, align 8, !tbaa !56
  %cmp = icmp eq i16* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %supported_groups_default = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 60, i32 14
  %4 = load i16*, i16** %supported_groups_default, align 8, !tbaa !40
  store i16* %4, i16** %pgroups, align 8, !tbaa !55
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %supported_groups_default_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 60, i32 15
  %6 = load i64, i64* %supported_groups_default_len, align 8, !tbaa !41
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  store i16* %2, i16** %pgroups, align 8, !tbaa !55
  %supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 15
  %7 = load i64, i64* %supportedgroups_len, align 8, !tbaa !58
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else, %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi i64 [ %6, %if.then ], [ %7, %if.else ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %sw.bb ]
  store i64 %.sink, i64* %pgroupslen, align 8, !tbaa !59
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define i32 @tls_valid_group(%struct.ssl_st* nocapture noundef readonly %s, i16 noundef zeroext %group_id, i32 noundef %minversion, i32 noundef %maxversion, i32 noundef %isec, i32* noundef writeonly %okfortls13) local_unnamed_addr #8 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %0, i16 noundef zeroext %group_id) #17
  %cmp = icmp ne i32* %okfortls13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %okfortls13, align 4, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq %struct.tls_group_info_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else44, label %if.then4

if.then4:                                         ; preds = %if.end3
  %mindtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 7
  %4 = load i32, i32* %mindtls, align 8, !tbaa !64
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %maxdtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 8
  %5 = load i32, i32* %maxdtls, align 4, !tbaa !65
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end8
  %cmp12 = icmp eq i32 %minversion, 256
  %cond = select i1 %cmp12, i32 65280, i32 %minversion
  %cmp14 = icmp eq i32 %5, 256
  %spec.select = select i1 %cmp14, i32 65280, i32 %5
  %cmp20 = icmp sge i32 %cond, %spec.select
  %conv = zext i1 %cmp20 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.end8, %if.else
  %ret.0 = phi i32 [ %conv, %if.else ], [ 1, %if.end8 ]
  %cmp23.not = icmp eq i32 %4, 0
  br i1 %cmp23.not, label %if.end84, label %if.then25

if.then25:                                        ; preds = %if.end21
  %cmp26 = icmp eq i32 %maxversion, 256
  %cond31 = select i1 %cmp26, i32 65280, i32 %maxversion
  %cmp33 = icmp eq i32 %4, 256
  %spec.select144 = select i1 %cmp33, i32 65280, i32 %4
  %cmp40 = icmp sle i32 %cond31, %spec.select144
  %conv41 = zext i1 %cmp40 to i32
  %and42 = and i32 %ret.0, %conv41
  br label %if.end84

if.else44:                                        ; preds = %if.end3
  %mintls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 5
  %6 = load i32, i32* %mintls, align 8, !tbaa !66
  %cmp45 = icmp slt i32 %6, 0
  br i1 %cmp45, label %cleanup, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.else44
  %maxtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 6
  %7 = load i32, i32* %maxtls, align 4, !tbaa !67
  %cmp48 = icmp slt i32 %7, 0
  br i1 %cmp48, label %cleanup, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false47
  %cmp53 = icmp eq i32 %7, 0
  %cmp58 = icmp sge i32 %7, %minversion
  %narrow = or i1 %cmp53, %cmp58
  %cmp62.not = icmp eq i32 %6, 0
  %cmp66 = icmp sle i32 %6, %maxversion
  %and68145 = or i1 %cmp62.not, %cmp66
  %ret.2.v = and i1 %and68145, %narrow
  %ret.2 = zext i1 %ret.2.v to i32
  %or.cond = and i1 %cmp, %ret.2.v
  %cmp74 = icmp eq i32 %maxversion, 772
  %or.cond104 = and i1 %cmp74, %or.cond
  br i1 %or.cond104, label %if.then76, label %if.end84

if.then76:                                        ; preds = %if.end51
  %8 = add nsw i32 %7, -772
  %9 = icmp ult i32 %8, -771
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %okfortls13, align 4, !tbaa !60
  br label %if.end84

if.end84:                                         ; preds = %if.end51, %if.then76, %if.end21, %if.then25
  %ret.3 = phi i32 [ %and42, %if.then25 ], [ %ret.0, %if.end21 ], [ 1, %if.then76 ], [ %ret.2, %if.end51 ]
  %tobool85.not = icmp eq i32 %isec, 0
  br i1 %tobool85.not, label %lor.end100, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end84
  %algorithm = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 2
  %11 = load i8*, i8** %algorithm, align 8, !tbaa !68
  %call87 = tail call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #18
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %lor.end100, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %call92 = tail call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #18
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %lor.end100, label %lor.rhs95

lor.rhs95:                                        ; preds = %lor.lhs.false90
  %call97 = tail call i32 @strcmp(i8* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #18
  %cmp98 = icmp eq i32 %call97, 0
  %phi.cast = zext i1 %cmp98 to i32
  br label %lor.end100

lor.end100:                                       ; preds = %lor.rhs95, %lor.lhs.false90, %lor.lhs.false86, %if.end84
  %12 = phi i32 [ 1, %lor.lhs.false90 ], [ 1, %lor.lhs.false86 ], [ 1, %if.end84 ], [ %phi.cast, %lor.rhs95 ]
  %and102 = and i32 %12, %ret.3
  br label %cleanup

cleanup:                                          ; preds = %if.else44, %lor.lhs.false47, %if.then4, %lor.lhs.false, %if.end, %lor.end100
  %retval.0 = phi i32 [ %and102, %lor.end100 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.then4 ], [ 0, %lor.lhs.false47 ], [ 0, %if.else44 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %group, i32 noundef %op) local_unnamed_addr #2 {
entry:
  %gtmp = alloca [2 x i8], align 1
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %0, i16 noundef zeroext %group) #17
  %1 = getelementptr inbounds [2 x i8], [2 x i8]* %gtmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #16
  %cmp = icmp eq %struct.tls_group_info_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = lshr i16 %group, 8
  %conv1 = trunc i16 %2 to i8
  store i8 %conv1, i8* %1, align 1, !tbaa !69
  %conv3 = trunc i16 %group to i8
  %arrayidx4 = getelementptr inbounds [2 x i8], [2 x i8]* %gtmp, i64 0, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !69
  %secbits = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 3
  %3 = load i32, i32* %secbits, align 8, !tbaa !70
  %group_id = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 4
  %4 = load i16, i16* %group_id, align 4, !tbaa !37
  %call5 = tail call i32 @tls1_group_id2nid(i16 noundef zeroext %4, i32 noundef 0) #17
  %call6 = call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef %op, i32 noundef %3, i32 noundef %call5, i8* noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #16
  ret i32 %retval.0
}

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef %s, i32 noundef %nmatch) local_unnamed_addr #2 {
entry:
  %pref = alloca i16*, align 8
  %supp = alloca i16*, align 8
  %num_pref = alloca i64, align 8
  %num_supp = alloca i64, align 8
  %0 = bitcast i16** %pref to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %1 = bitcast i16** %supp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  %2 = bitcast i64* %num_pref to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %3 = bitcast i64* %num_supp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %4 = load i32, i32* %server, align 8, !tbaa !71
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %nmatch, -2
  br i1 %cmp1, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 4
  %6 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %6, 196608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.then2
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %7 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %7, i64 0, i32 3
  %8 = load i32, i32* %id, align 8, !tbaa !73
  %switch.selectcmp = icmp eq i32 %8, 50380844
  %switch.select = select i1 %switch.selectcmp, i16 24, i16 0
  %switch.selectcmp64 = icmp eq i32 %8, 50380843
  %switch.select65 = select i1 %switch.selectcmp64, i16 23, i16 %switch.select
  br label %cleanup37

if.end13:                                         ; preds = %if.then2, %if.end
  %nmatch.addr.0 = phi i32 [ %nmatch, %if.end ], [ 0, %if.then2 ]
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %9 = load i64, i64* %options, align 8, !tbaa !75
  %and14 = and i64 %9, 4194304
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %pref, i64* noundef nonnull %num_pref) #17
  call fastcc void @tls1_get_peer_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %supp, i64* noundef nonnull %num_supp) #17
  br label %if.end17

if.else:                                          ; preds = %if.end13
  call fastcc void @tls1_get_peer_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %pref, i64* noundef nonnull %num_pref) #17
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %supp, i64* noundef nonnull %num_supp) #17
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %10 = load i64, i64* %num_pref, align 8, !tbaa !59
  %cmp1872.not = icmp eq i64 %10, 0
  br i1 %cmp1872.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end17
  %11 = load i16*, i16** %pref, align 8, !tbaa !55
  %12 = load i16*, i16** %supp, align 8, !tbaa !55
  %13 = load i64, i64* %num_supp, align 8, !tbaa !59
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %k.074 = phi i32 [ 0, %for.body.lr.ph ], [ %k.1.ph, %for.inc ]
  %i.073 = phi i64 [ 0, %for.body.lr.ph ], [ %inc31, %for.inc ]
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %i.073
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %call = tail call fastcc i32 @tls1_in_list(i16 noundef zeroext %14, i16* noundef %12, i64 noundef %13) #17
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call22 = tail call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %14, i32 noundef 131077) #17
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false
  %cmp26 = icmp eq i32 %nmatch.addr.0, %k.074
  br i1 %cmp26, label %cleanup37, label %if.end29

if.end29:                                         ; preds = %if.end25
  %inc = add nsw i32 %k.074, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %lor.lhs.false, %for.body
  %k.1.ph = phi i32 [ %k.074, %for.body ], [ %k.074, %lor.lhs.false ], [ %inc, %if.end29 ]
  %inc31 = add nuw i64 %i.073, 1
  %exitcond.not = icmp eq i64 %inc31, %10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !76

for.end:                                          ; preds = %for.inc, %if.end17
  %k.0.lcssa = phi i32 [ 0, %if.end17 ], [ %k.1.ph, %for.inc ]
  %cmp32 = icmp eq i32 %nmatch.addr.0, -1
  %conv35 = trunc i32 %k.0.lcssa to i16
  %spec.select = select i1 %cmp32, i16 %conv35, i16 0
  br label %cleanup37

cleanup37:                                        ; preds = %if.end25, %for.end, %if.then3, %entry
  %retval.3 = phi i16 [ 0, %entry ], [ %switch.select65, %if.then3 ], [ %spec.select, %for.end ], [ %14, %if.end25 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i16 %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @tls1_get_peer_groups(%struct.ssl_st* nocapture noundef readonly %s, i16** nocapture noundef writeonly %pgroups, i64* nocapture noundef writeonly %pgroupslen) unnamed_addr #7 {
entry:
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %0 = load i16*, i16** %peer_supportedgroups, align 8, !tbaa !77
  store i16* %0, i16** %pgroups, align 8, !tbaa !55
  %peer_supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 17
  %1 = load i64, i64* %peer_supportedgroups_len, align 8, !tbaa !78
  store i64 %1, i64* %pgroupslen, align 8, !tbaa !59
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @tls1_in_list(i16 noundef zeroext %id, i16* nocapture noundef readonly %list, i64 noundef %listlen) unnamed_addr #5 {
entry:
  %cmp7.not = icmp eq i64 %listlen, 0
  br i1 %cmp7.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %listlen
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !79

for.body:                                         ; preds = %entry, %for.cond
  %i.08 = phi i64 [ %inc, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, i16* %list, i64 %i.08
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %cmp2 = icmp eq i16 %0, %id
  %inc = add nuw i64 %i.08, 1
  br i1 %cmp2, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_groups(i16** nocapture noundef %pext, i64* nocapture noundef writeonly %pextlen, i32* nocapture noundef readonly %groups, i64 noundef %ngroups) local_unnamed_addr #2 {
entry:
  %dup_list_egrp = alloca i64, align 8
  %dup_list_dhgrp = alloca i64, align 8
  %dup_list_egrp.0.sroa_cast54 = bitcast i64* %dup_list_egrp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %dup_list_egrp.0.sroa_cast54)
  store i64 0, i64* %dup_list_egrp, align 8, !tbaa !59
  %dup_list_dhgrp.0.sroa_cast52 = bitcast i64* %dup_list_dhgrp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %dup_list_dhgrp.0.sroa_cast52)
  store i64 0, i64* %dup_list_dhgrp, align 8, !tbaa !59
  %cmp = icmp eq i64 %ngroups, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls1_set_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, i8* noundef null) #15
  br label %cleanup22

if.end:                                           ; preds = %entry
  %mul = shl i64 %ngroups, 1
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 668) #15
  %0 = bitcast i8* %call to i16*
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls1_set_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup22

for.body:                                         ; preds = %if.end, %for.inc
  %i.051 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32, i32* %groups, i64 %i.051
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !60
  %call5 = tail call zeroext i16 @tls1_nid2group_id(i32 noundef %1) #17
  %2 = and i16 %call5, 255
  %cmp7 = icmp ugt i16 %2, 63
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %for.body
  %sh_prom = zext i16 %2 to i64
  %shl = shl nuw i64 1, %sh_prom
  %cmp14 = icmp ult i16 %call5, 256
  %dup_list_egrp.dup_list_dhgrp = select i1 %cmp14, i64* %dup_list_egrp, i64* %dup_list_dhgrp
  %tobool.not = icmp eq i16 %call5, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %3 = load i64, i64* %dup_list_egrp.dup_list_dhgrp, align 8, !tbaa !59
  %and16 = and i64 %3, %shl
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %for.inc, label %err

for.inc:                                          ; preds = %lor.lhs.false
  %or = or i64 %3, %shl
  store i64 %or, i64* %dup_list_egrp.dup_list_dhgrp, align 8, !tbaa !59
  %arrayidx20 = getelementptr inbounds i16, i16* %0, i64 %i.051
  store i16 %call5, i16* %arrayidx20, align 2, !tbaa !34
  %inc = add nuw i64 %i.051, 1
  %exitcond.not = icmp eq i64 %inc, %ngroups
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !80

for.end:                                          ; preds = %for.inc
  %4 = bitcast i16** %pext to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !55
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 685) #15
  store i8* %call, i8** %4, align 8, !tbaa !55
  store i64 %ngroups, i64* %pextlen, align 8, !tbaa !59
  br label %cleanup22

err:                                              ; preds = %for.body, %lor.lhs.false, %if.end10
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 690) #15
  br label %cleanup22

cleanup22:                                        ; preds = %err, %for.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %err ], [ 1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %dup_list_dhgrp.0.sroa_cast52)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %dup_list_egrp.0.sroa_cast54)
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef %ctx, i16** noundef writeonly %pext, i64* nocapture noundef writeonly %pextlen, i8* noundef %str) local_unnamed_addr #2 {
entry:
  %gcb = alloca %struct.gid_cb_st, align 8
  %0 = bitcast %struct.gid_cb_st* %gcb to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  %gidcnt = getelementptr inbounds %struct.gid_cb_st, %struct.gid_cb_st* %gcb, i64 0, i32 1
  %1 = bitcast i64* %gidcnt to <2 x i64>*
  store <2 x i64> <i64 0, i64 40>, <2 x i64>* %1, align 8, !tbaa !59
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 80, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 745) #15
  %gid_arr = getelementptr inbounds %struct.gid_cb_st, %struct.gid_cb_st* %gcb, i64 0, i32 3
  %2 = bitcast i16** %gid_arr to i8**
  store i8* %call, i8** %2, align 8, !tbaa !81
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctx3 = getelementptr inbounds %struct.gid_cb_st, %struct.gid_cb_st* %gcb, i64 0, i32 0
  store %struct.ssl_ctx_st* %ctx, %struct.ssl_ctx_st** %ctx3, align 8, !tbaa !83
  %call4 = call i32 @CONF_parse_list(i8* noundef %str, i32 noundef 58, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @gid_cb, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %end, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i16** %pext, null
  br i1 %cmp7, label %end, label %if.end9

if.end9:                                          ; preds = %if.end6
  %3 = load i8*, i8** %2, align 8, !tbaa !81
  %4 = load i64, i64* %gidcnt, align 8, !tbaa !84
  %mul12 = shl i64 %4, 1
  %call13 = call i8* @CRYPTO_memdup(i8* noundef %3, i64 noundef %mul12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 760) #15
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %end, label %if.end16

if.end16:                                         ; preds = %if.end9
  %5 = bitcast i16** %pext to i8**
  store i8* %call13, i8** %5, align 8, !tbaa !55
  %6 = load i64, i64* %gidcnt, align 8, !tbaa !84
  store i64 %6, i64* %pextlen, align 8, !tbaa !59
  br label %end

end:                                              ; preds = %if.end6, %if.end9, %if.end, %if.end16
  %ret.0 = phi i32 [ 0, %if.end9 ], [ 1, %if.end16 ], [ 0, %if.end ], [ 1, %if.end6 ]
  %7 = load i8*, i8** %2, align 8, !tbaa !81
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 767) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @gid_cb(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef %arg) #2 {
entry:
  %etmp = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %etmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #16
  %cmp = icmp eq i8* %elem, null
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %gidcnt = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %gidcnt to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !84
  %gidmax = getelementptr inbounds i8, i8* %arg, i64 16
  %3 = bitcast i8* %gidmax to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !85
  %cmp1 = icmp eq i64 %2, %4
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %gid_arr = getelementptr inbounds i8, i8* %arg, i64 24
  %5 = bitcast i8* %gid_arr to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !81
  %add = add i64 %2, 40
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %6, i64 noundef %add, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 714) #15
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %cleanup37, label %if.end6

if.end6:                                          ; preds = %if.then2
  %7 = load i64, i64* %3, align 8, !tbaa !85
  %add8 = add i64 %7, 40
  store i64 %add8, i64* %3, align 8, !tbaa !85
  store i8* %call, i8** %5, align 8, !tbaa !81
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.end
  %cmp11 = icmp sgt i32 %len, 63
  br i1 %cmp11, label %cleanup37, label %if.end13

if.end13:                                         ; preds = %if.end10
  %conv = sext i32 %len to i64
  %call14 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %elem, i64 noundef %conv) #15
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %etmp, i64 0, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !69
  %ctx = bitcast i8* %arg to %struct.ssl_ctx_st**
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !83
  %call16 = call fastcc zeroext i16 @tls1_group_name2id(%struct.ssl_ctx_st* noundef %8, i8* noundef nonnull %0) #17
  %cmp18 = icmp eq i16 %call16, 0
  br i1 %cmp18, label %cleanup37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %9 = load i64, i64* %1, align 8, !tbaa !84
  %cmp2366.not = icmp eq i64 %9, 0
  %gid_arr33.phi.trans.insert = getelementptr inbounds i8, i8* %arg, i64 24
  %.phi.trans.insert = bitcast i8* %gid_arr33.phi.trans.insert to i16**
  %.pre = load i16*, i16** %.phi.trans.insert, align 8, !tbaa !81
  br i1 %cmp2366.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %9
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !86

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.067 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx26 = getelementptr inbounds i16, i16* %.pre, i64 %i.067
  %10 = load i16, i16* %arrayidx26, align 2, !tbaa !34
  %cmp29 = icmp eq i16 %10, %call16
  %inc = add nuw i64 %i.067, 1
  br i1 %cmp29, label %cleanup37, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %inc35 = add i64 %9, 1
  store i64 %inc35, i64* %1, align 8, !tbaa !84
  %arrayidx36 = getelementptr inbounds i16, i16* %.pre, i64 %9
  store i16 %call16, i16* %arrayidx36, align 2, !tbaa !34
  br label %cleanup37

cleanup37:                                        ; preds = %for.body, %if.then2, %if.end13, %if.end10, %entry, %for.end
  %retval.1 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %if.end10 ], [ 0, %if.end13 ], [ 0, %if.then2 ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #16
  ret i32 %retval.1
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_check_group_id(%struct.ssl_st* noundef %s, i16 noundef zeroext %group_id, i32 noundef %check_own_groups) local_unnamed_addr #2 {
entry:
  %groups = alloca i16*, align 8
  %groups_len = alloca i64, align 8
  %0 = bitcast i16** %groups to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %1 = bitcast i64* %groups_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  %cmp = icmp eq i16 %group_id, 0
  br i1 %cmp, label %cleanup47, label %if.end

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 4
  %3 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %3, 196608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %cmp2.not = icmp eq %struct.ssl_cipher_st* %4, null
  br i1 %cmp2.not, label %if.end28, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 3
  %5 = load i32, i32* %id, align 8, !tbaa !73
  switch i32 %5, label %cleanup47 [
    i32 50380843, label %if.then11
    i32 50380844, label %if.then19
  ]

if.then11:                                        ; preds = %if.then4
  %cmp13.not = icmp eq i16 %group_id, 23
  br i1 %cmp13.not, label %if.end28, label %cleanup47

if.then19:                                        ; preds = %if.then4
  %cmp21.not = icmp eq i16 %group_id, 24
  br i1 %cmp21.not, label %if.end28, label %cleanup47

if.end28:                                         ; preds = %if.then19, %if.then11, %land.lhs.true, %if.end
  %tobool29.not = icmp eq i32 %check_own_groups, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @tls1_get_supported_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %groups, i64* noundef nonnull %groups_len) #17
  %6 = load i16*, i16** %groups, align 8, !tbaa !55
  %7 = load i64, i64* %groups_len, align 8, !tbaa !59
  %call = tail call fastcc i32 @tls1_in_list(i16 noundef zeroext %group_id, i16* noundef %6, i64 noundef %7) #17
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %cleanup47, label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28
  %call35 = tail call i32 @tls_group_allowed(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %group_id, i32 noundef 131078) #17
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup47, label %if.end38

if.end38:                                         ; preds = %if.end34
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %8 = load i32, i32* %server, align 8, !tbaa !71
  %tobool39.not = icmp eq i32 %8, 0
  br i1 %tobool39.not, label %cleanup47, label %if.end41

if.end41:                                         ; preds = %if.end38
  call fastcc void @tls1_get_peer_groups(%struct.ssl_st* noundef nonnull %s, i16** noundef nonnull %groups, i64* noundef nonnull %groups_len) #17
  %9 = load i64, i64* %groups_len, align 8, !tbaa !59
  %cmp42 = icmp eq i64 %9, 0
  br i1 %cmp42, label %cleanup47, label %if.end45

if.end45:                                         ; preds = %if.end41
  %10 = load i16*, i16** %groups, align 8, !tbaa !55
  %call46 = tail call fastcc i32 @tls1_in_list(i16 noundef zeroext %group_id, i16* noundef %10, i64 noundef %9) #17
  br label %cleanup47

cleanup47:                                        ; preds = %if.end41, %if.end38, %if.end34, %if.then30, %if.then11, %if.then19, %if.then4, %entry, %if.end45
  %retval.1 = phi i32 [ %call46, %if.end45 ], [ 0, %entry ], [ 0, %if.then4 ], [ 0, %if.then19 ], [ 0, %if.then11 ], [ 0, %if.then30 ], [ 0, %if.end34 ], [ 1, %if.end38 ], [ 1, %if.end41 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @tls1_get_formatlist(%struct.ssl_st* nocapture noundef readonly %s, i8** nocapture noundef writeonly %pformats, i64* nocapture noundef writeonly %num_formats) local_unnamed_addr #7 {
entry:
  %ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 12
  %0 = load i8*, i8** %ecpointformats, align 8, !tbaa !87
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* %0, i8** %pformats, align 8, !tbaa !55
  %ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 11
  %1 = load i64, i64* %ecpointformats_len, align 8, !tbaa !88
  br label %if.end7

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ecformats_default, i64 0, i64 0), i8** %pformats, align 8, !tbaa !55
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 4
  %3 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %3, 196608
  %tobool4.not = icmp eq i32 %and, 0
  %. = select i1 %tobool4.not, i64 3, i64 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  %.sink = phi i64 [ %1, %if.then ], [ %., %if.else ]
  store i64 %.sink, i64* %num_formats, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_check_ec_tmp_key(%struct.ssl_st* noundef %s, i64 noundef %cid) local_unnamed_addr #2 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %1, 196608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #17
  %cmp = icmp ne i16 %call, 0
  %conv1 = zext i1 %cmp to i32
  br label %return

if.end:                                           ; preds = %entry
  switch i64 %cid, label %return [
    i64 50380843, label %if.then4
    i64 50380844, label %if.then9
  ]

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @tls1_check_group_id(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext 23, i32 noundef 1) #17
  br label %return

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @tls1_check_group_id(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext 24, i32 noundef 1) #17
  br label %return

return:                                           ; preds = %if.end, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %conv1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_setup_sig_algs(%struct.ssl_ctx_st* nocapture noundef %ctx) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 1120, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1145) #15
  %0 = bitcast i8* %call to %struct.sigalg_lookup_st*
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #15
  %cmp = icmp eq i8* %call, null
  %cmp2 = icmp eq %struct.evp_pkey_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ERR_set_mark() #15
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  br label %for.body

for.body:                                         ; preds = %if.end, %cleanup
  %i.058 = phi i64 [ 0, %if.end ], [ %inc, %cleanup ]
  %lu.056 = phi %struct.sigalg_lookup_st* [ getelementptr inbounds ([28 x %struct.sigalg_lookup_st], [28 x %struct.sigalg_lookup_st]* @sigalg_lookup_tbl, i64 0, i64 0), %if.end ], [ %incdec.ptr, %cleanup ]
  %arrayidx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 %i.058
  %1 = bitcast %struct.sigalg_lookup_st* %arrayidx to i8*
  %2 = bitcast %struct.sigalg_lookup_st* %lu.056 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !89
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.056, i64 0, i32 2
  %3 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %hash_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.056, i64 0, i32 3
  %4 = load i32, i32* %hash_idx, align 8, !tbaa !92
  %idxprom = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 88, i64 %idxprom
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx6, align 8, !tbaa !55
  %cmp7 = icmp eq %struct.evp_md_st* %5, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %enabled = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 %i.058, i32 8
  store i32 0, i32* %enabled, align 4, !tbaa !93
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.056, i64 0, i32 4
  %6 = load i32, i32* %sig, align 4, !tbaa !94
  %call11 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef %call1, i32 noundef %6) #15
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %enabled14 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 %i.058, i32 8
  store i32 0, i32* %enabled14, align 4, !tbaa !93
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %8 = load i8*, i8** %propq, align 8, !tbaa !95
  %call16 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %7, %struct.evp_pkey_st* noundef %call1, i8* noundef %8) #15
  %cmp17 = icmp eq %struct.evp_pkey_ctx_st* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %enabled20 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 %i.058, i32 8
  store i32 0, i32* %enabled20, align 4, !tbaa !93
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call16) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then12, %if.then8
  %incdec.ptr = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.056, i64 1
  %inc = add nuw nsw i64 %i.058, 1
  %exitcond.not = icmp eq i64 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !96

for.end:                                          ; preds = %cleanup
  %call22 = tail call i32 @ERR_pop_to_mark() #15
  %sigalg_lookup_cache = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 90
  %9 = bitcast %struct.sigalg_lookup_st** %sigalg_lookup_cache to i8**
  store i8* %call, i8** %9, align 8, !tbaa !97
  br label %err

err:                                              ; preds = %entry, %for.end
  %10 = phi i8* [ %call, %entry ], [ null, %for.end ]
  %ret.0 = phi i32 [ 0, %entry ], [ 1, %for.end ]
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1189) #15
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call1) #15
  ret i32 %ret.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #0

declare i32 @ERR_set_mark() local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #0

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #0

declare i32 @ERR_pop_to_mark() local_unnamed_addr #0

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %ctx, %struct.sigalg_lookup_st* noundef readonly %lu, %struct.evp_md_st** noundef writeonly %pmd) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.sigalg_lookup_st* %lu, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 2
  %0 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.end6, label %if.else

if.else:                                          ; preds = %if.end
  %hash_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 3
  %1 = load i32, i32* %hash_idx, align 8, !tbaa !92
  %call = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %1) #15
  %cmp3 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %if.else
  %md.0 = phi %struct.evp_md_st* [ %call, %if.else ], [ null, %if.end ]
  %tobool.not = icmp eq %struct.evp_md_st** %pmd, null
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end6
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** %pmd, align 8, !tbaa !55
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then7, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.else ], [ 1, %if.then7 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_peer_legacy_sigalg(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #2 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %call = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef %pkey, i64* noundef nonnull %idx) #15
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %idx, align 8, !tbaa !59
  %conv = trunc i64 %1 to i32
  %call1 = call fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef %s, i32 noundef %conv) #17
  %cmp2 = icmp eq %struct.sigalg_lookup_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  store %struct.sigalg_lookup_st* %call1, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !98
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef, i64* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef %s, i32 noundef %idx) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %idx, -1
  br i1 %cmp, label %if.then, label %if.end52

if.then:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !71
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else46, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %call = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 0) #15
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call, i64 0, i32 1
  %1 = load i32, i32* %amask, align 4, !tbaa !99
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !101
  %and = and i32 %3, %1
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.inc, label %if.end58

for.inc:                                          ; preds = %for.cond.preheader
  %call.1 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 1) #15
  %amask.1 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.1, i64 0, i32 1
  %4 = load i32, i32* %amask.1, align 4, !tbaa !99
  %5 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %5, i64 0, i32 5
  %6 = load i32, i32* %algorithm_auth.1, align 8, !tbaa !101
  %and.1 = and i32 %6, %4
  %tobool3.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool3.not.1, label %for.inc.1, label %if.end58

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 2) #15
  %amask.2 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.2, i64 0, i32 1
  %7 = load i32, i32* %amask.2, align 4, !tbaa !99
  %8 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 5
  %9 = load i32, i32* %algorithm_auth.2, align 8, !tbaa !101
  %and.2 = and i32 %9, %7
  %tobool3.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool3.not.2, label %for.inc.2, label %if.end58

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 3) #15
  %amask.3 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.3, i64 0, i32 1
  %10 = load i32, i32* %amask.3, align 4, !tbaa !99
  %11 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.3 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %11, i64 0, i32 5
  %12 = load i32, i32* %algorithm_auth.3, align 8, !tbaa !101
  %and.3 = and i32 %12, %10
  %tobool3.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool3.not.3, label %for.inc.3, label %if.end58

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 4) #15
  %amask.4 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.4, i64 0, i32 1
  %13 = load i32, i32* %amask.4, align 4, !tbaa !99
  %14 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.4 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %14, i64 0, i32 5
  %15 = load i32, i32* %algorithm_auth.4, align 8, !tbaa !101
  %and.4 = and i32 %15, %13
  %tobool3.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool3.not.4, label %for.inc.4, label %land.lhs.true

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 5) #15
  %amask.5 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.5, i64 0, i32 1
  %16 = load i32, i32* %amask.5, align 4, !tbaa !99
  %17 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.5 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %17, i64 0, i32 5
  %18 = load i32, i32* %algorithm_auth.5, align 8, !tbaa !101
  %and.5 = and i32 %18, %16
  %tobool3.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool3.not.5, label %for.inc.5, label %for.cond28.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 6) #15
  %amask.6 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.6, i64 0, i32 1
  %19 = load i32, i32* %amask.6, align 4, !tbaa !99
  %20 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.6 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %20, i64 0, i32 5
  %21 = load i32, i32* %algorithm_auth.6, align 8, !tbaa !101
  %and.6 = and i32 %21, %19
  %tobool3.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool3.not.6, label %for.inc.6, label %if.end58

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 7) #15
  %amask.7 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.7, i64 0, i32 1
  %22 = load i32, i32* %amask.7, align 4, !tbaa !99
  %23 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.7 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %23, i64 0, i32 5
  %24 = load i32, i32* %algorithm_auth.7, align 8, !tbaa !101
  %and.7 = and i32 %24, %22
  %tobool3.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool3.not.7, label %for.inc.7, label %if.end58

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef 8) #15
  %amask.8 = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call.8, i64 0, i32 1
  %25 = load i32, i32* %amask.8, align 4, !tbaa !99
  %26 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth.8 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %26, i64 0, i32 5
  %27 = load i32, i32* %algorithm_auth.8, align 8, !tbaa !101
  %and.8 = and i32 %27, %25
  %tobool3.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool3.not.8, label %return, label %if.end58

for.cond28.preheader:                             ; preds = %for.inc.4
  %cert32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %28 = load %struct.cert_st*, %struct.cert_st** %cert32, align 8, !tbaa !51
  %privatekey36 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %28, i64 0, i32 5, i64 6, i32 1
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey36, align 8, !tbaa !102
  %cmp37.not = icmp eq %struct.evp_pkey_st* %29, null
  %spec.select = select i1 %cmp37.not, i32 5, i32 6
  br label %if.end58

land.lhs.true:                                    ; preds = %for.inc.3
  %algorithm_auth10 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %14, i64 0, i32 5
  %30 = load i32, i32* %algorithm_auth10, align 8, !tbaa !101
  %cmp11.not = icmp eq i32 %30, 32
  br i1 %cmp11.not, label %if.end58, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %land.lhs.true
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %31 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %31, i64 0, i32 5, i64 6, i32 1
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %cmp18.not = icmp eq %struct.evp_pkey_st* %32, null
  br i1 %cmp18.not, label %for.inc22, label %if.end58

for.inc22:                                        ; preds = %for.cond14.preheader
  %privatekey.1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %31, i64 0, i32 5, i64 5, i32 1
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.1, align 8, !tbaa !102
  %cmp18.not.1 = icmp eq %struct.evp_pkey_st* %33, null
  %spec.select148 = select i1 %cmp18.not.1, i32 4, i32 5
  br label %if.end58

if.else46:                                        ; preds = %if.then
  %cert47 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %34 = load %struct.cert_st*, %struct.cert_st** %cert47, align 8, !tbaa !51
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %34, i64 0, i32 0
  %35 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !104
  %arraydecay = getelementptr inbounds %struct.cert_st, %struct.cert_st* %34, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cert_pkey_st* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv50 = trunc i64 %sub.ptr.div to i32
  br label %if.end52

if.end52:                                         ; preds = %if.else46, %entry
  %idx.addr.6 = phi i32 [ %conv50, %if.else46 ], [ %idx, %entry ]
  %36 = icmp ugt i32 %idx.addr.6, 8
  br i1 %36, label %return, label %if.end58

if.end58:                                         ; preds = %for.inc22, %for.cond28.preheader, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.2, %for.inc.1, %for.inc, %for.cond.preheader, %for.cond14.preheader, %land.lhs.true, %if.end52
  %idx.addr.6122 = phi i32 [ %idx.addr.6, %if.end52 ], [ 4, %land.lhs.true ], [ 6, %for.cond14.preheader ], [ 8, %for.inc.7 ], [ 7, %for.inc.6 ], [ 6, %for.inc.5 ], [ 3, %for.inc.2 ], [ 2, %for.inc.1 ], [ 1, %for.inc ], [ 0, %for.cond.preheader ], [ %spec.select148, %for.inc22 ], [ %spec.select, %for.cond28.preheader ]
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %37 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %37, i64 0, i32 25
  %38 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %38, i64 0, i32 12
  %39 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and59 = and i32 %39, 2
  %tobool60 = icmp ne i32 %and59, 0
  %cmp62 = icmp ne i32 %idx.addr.6122, 0
  %or.cond86 = select i1 %tobool60, i1 true, i1 %cmp62
  br i1 %or.cond86, label %if.then64, label %return.sink.split

if.then64:                                        ; preds = %if.end58
  %idxprom65123 = zext i32 %idx.addr.6122 to i64
  %arrayidx66 = getelementptr inbounds [9 x i16], [9 x i16]* @tls_default_sigalg, i64 0, i64 %idxprom65123
  %40 = load i16, i16* %arrayidx66, align 2, !tbaa !34
  %call67 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %40) #17
  %cmp68 = icmp eq %struct.sigalg_lookup_st* %call67, null
  br i1 %cmp68, label %return, label %if.end71

if.end71:                                         ; preds = %if.then64
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %41 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call72 = tail call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %41, %struct.sigalg_lookup_st* noundef nonnull %call67, %struct.evp_md_st** noundef null) #17
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end58, %if.end71
  %legacy_rsa_sigalg.sink149 = phi %struct.sigalg_lookup_st* [ %call67, %if.end71 ], [ @legacy_rsa_sigalg, %if.end58 ]
  %call82 = tail call fastcc i32 @tls12_sigalg_allowed(%struct.ssl_st* noundef nonnull %s, i32 noundef 327691, %struct.sigalg_lookup_st* noundef nonnull %legacy_rsa_sigalg.sink149) #17
  %tobool83.not = icmp eq i32 %call82, 0
  %.legacy_rsa_sigalg = select i1 %tobool83.not, %struct.sigalg_lookup_st* null, %struct.sigalg_lookup_st* %legacy_rsa_sigalg.sink149
  br label %return

return:                                           ; preds = %return.sink.split, %for.inc.7, %if.then64, %if.end71, %if.end52
  %retval.1 = phi %struct.sigalg_lookup_st* [ null, %if.end52 ], [ null, %if.then64 ], [ null, %if.end71 ], [ null, %for.inc.7 ], [ %.legacy_rsa_sigalg, %return.sink.split ]
  ret %struct.sigalg_lookup_st* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @tls12_get_psigalgs(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %sent, i16** nocapture noundef writeonly %psigs) local_unnamed_addr #7 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %1, 196608
  switch i32 %and, label %sw.epilog [
    i32 196608, label %sw.bb
    i32 65536, label %sw.bb1
    i32 131072, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_sigalgs, i64 0, i64 0), i16** %psigs, align 8, !tbaa !55
  br label %return

sw.bb1:                                           ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_sigalgs, i64 0, i64 0), i16** %psigs, align 8, !tbaa !55
  br label %return

sw.bb2:                                           ; preds = %entry
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @suiteb_sigalgs, i64 0, i64 1), i16** %psigs, align 8, !tbaa !55
  br label %return

sw.epilog:                                        ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !71
  %cmp = icmp eq i32 %2, %sent
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 10
  %3 = load i16*, i16** %client_sigalgs, align 8, !tbaa !105
  %cmp4.not = icmp eq i16* %3, null
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i16* %3, i16** %psigs, align 8, !tbaa !55
  %4 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %client_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %4, i64 0, i32 11
  %5 = load i64, i64* %client_sigalgslen, align 8, !tbaa !106
  br label %return

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 8
  %6 = load i16*, i16** %conf_sigalgs, align 8, !tbaa !107
  %tobool.not = icmp eq i16* %6, null
  br i1 %tobool.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %if.else
  store i16* %6, i16** %psigs, align 8, !tbaa !55
  %7 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %7, i64 0, i32 9
  %8 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !108
  br label %return

if.else13:                                        ; preds = %if.else
  store i16* getelementptr inbounds ([28 x i16], [28 x i16]* @tls12_sigalgs, i64 0, i64 0), i16** %psigs, align 8, !tbaa !55
  br label %return

return:                                           ; preds = %if.else13, %if.then9, %if.then, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %5, %if.then ], [ %8, %if.then9 ], [ 28, %if.else13 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @tls_check_sigalg_curve(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %curve) local_unnamed_addr #5 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 8
  %1 = load i16*, i16** %conf_sigalgs, align 8, !tbaa !107
  %tobool.not = icmp eq i16* %1, null
  br i1 %tobool.not, label %for.body.preheader, label %if.end

if.end:                                           ; preds = %entry
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 9
  %2 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !108
  %cmp32.not = icmp eq i64 %2, 0
  br i1 %cmp32.not, label %cleanup15, label %for.body.preheader

for.body.preheader:                               ; preds = %entry, %if.end
  %siglen.039 = phi i64 [ %2, %if.end ], [ 28, %entry ]
  %sigs.038 = phi i16* [ %1, %if.end ], [ getelementptr inbounds ([28 x i16], [28 x i16]* @tls12_sigalgs, i64 0, i64 0), %entry ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.033 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i16, i16* %sigs.038, i64 %i.033
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %call = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %3) #17
  %cmp4 = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp4, label %for.inc, label %if.end6

if.end6:                                          ; preds = %for.body
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 4
  %4 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp7 = icmp eq i32 %4, 408
  br i1 %cmp7, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %curve8 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 7
  %5 = load i32, i32* %curve8, align 8, !tbaa !109
  %cmp9.not = icmp ne i32 %5, 0
  %cmp12 = icmp eq i32 %5, %curve
  %or.cond = and i1 %cmp9.not, %cmp12
  br i1 %or.cond, label %cleanup15, label %for.inc

for.inc:                                          ; preds = %if.end6, %land.lhs.true, %for.body
  %inc = add nuw i64 %i.033, 1
  %exitcond.not = icmp eq i64 %inc, %siglen.039
  br i1 %exitcond.not, label %cleanup15, label %for.body, !llvm.loop !110

cleanup15:                                        ; preds = %for.inc, %land.lhs.true, %if.end
  %retval.2 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true ], [ 0, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* nocapture noundef readonly %s, i16 noundef zeroext %sigalg) unnamed_addr #5 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %sigalg_lookup_cache = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 90
  %1 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg_lookup_cache, align 8, !tbaa !97
  %sigalg1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 0, i32 1
  %2 = load i16, i16* %sigalg1, align 8, !tbaa !111
  %cmp3 = icmp eq i16 %2, %sigalg
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.26, %for.inc.25, %for.inc.24, %for.inc.23, %for.inc.22, %for.inc.21, %for.inc.20, %for.inc.19, %for.inc.18, %for.inc.17, %for.inc.16, %for.inc.15, %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %lu.016.lcssa = phi %struct.sigalg_lookup_st* [ %1, %entry ], [ %incdec.ptr, %for.inc ], [ %incdec.ptr.1, %for.inc.1 ], [ %incdec.ptr.2, %for.inc.2 ], [ %incdec.ptr.3, %for.inc.3 ], [ %incdec.ptr.4, %for.inc.4 ], [ %incdec.ptr.5, %for.inc.5 ], [ %incdec.ptr.6, %for.inc.6 ], [ %incdec.ptr.7, %for.inc.7 ], [ %incdec.ptr.8, %for.inc.8 ], [ %incdec.ptr.9, %for.inc.9 ], [ %incdec.ptr.10, %for.inc.10 ], [ %incdec.ptr.11, %for.inc.11 ], [ %incdec.ptr.12, %for.inc.12 ], [ %incdec.ptr.13, %for.inc.13 ], [ %incdec.ptr.14, %for.inc.14 ], [ %incdec.ptr.15, %for.inc.15 ], [ %incdec.ptr.16, %for.inc.16 ], [ %incdec.ptr.17, %for.inc.17 ], [ %incdec.ptr.18, %for.inc.18 ], [ %incdec.ptr.19, %for.inc.19 ], [ %incdec.ptr.20, %for.inc.20 ], [ %incdec.ptr.21, %for.inc.21 ], [ %incdec.ptr.22, %for.inc.22 ], [ %incdec.ptr.23, %for.inc.23 ], [ %incdec.ptr.24, %for.inc.24 ], [ %incdec.ptr.25, %for.inc.25 ], [ %incdec.ptr.26, %for.inc.26 ]
  %enabled = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.016.lcssa, i64 0, i32 8
  %3 = load i32, i32* %enabled, align 4, !tbaa !93
  %tobool.not = icmp eq i32 %3, 0
  %.lu.0 = select i1 %tobool.not, %struct.sigalg_lookup_st* null, %struct.sigalg_lookup_st* %lu.016.lcssa
  br label %cleanup

for.inc:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 1
  %sigalg1.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 1, i32 1
  %4 = load i16, i16* %sigalg1.1, align 8, !tbaa !111
  %cmp3.1 = icmp eq i16 %4, %sigalg
  br i1 %cmp3.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 2
  %sigalg1.2 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 2, i32 1
  %5 = load i16, i16* %sigalg1.2, align 8, !tbaa !111
  %cmp3.2 = icmp eq i16 %5, %sigalg
  br i1 %cmp3.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 3
  %sigalg1.3 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 3, i32 1
  %6 = load i16, i16* %sigalg1.3, align 8, !tbaa !111
  %cmp3.3 = icmp eq i16 %6, %sigalg
  br i1 %cmp3.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 4
  %sigalg1.4 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 4, i32 1
  %7 = load i16, i16* %sigalg1.4, align 8, !tbaa !111
  %cmp3.4 = icmp eq i16 %7, %sigalg
  br i1 %cmp3.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 5
  %sigalg1.5 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 5, i32 1
  %8 = load i16, i16* %sigalg1.5, align 8, !tbaa !111
  %cmp3.5 = icmp eq i16 %8, %sigalg
  br i1 %cmp3.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 6
  %sigalg1.6 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 6, i32 1
  %9 = load i16, i16* %sigalg1.6, align 8, !tbaa !111
  %cmp3.6 = icmp eq i16 %9, %sigalg
  br i1 %cmp3.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 7
  %sigalg1.7 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 7, i32 1
  %10 = load i16, i16* %sigalg1.7, align 8, !tbaa !111
  %cmp3.7 = icmp eq i16 %10, %sigalg
  br i1 %cmp3.7, label %if.then, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 8
  %sigalg1.8 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 8, i32 1
  %11 = load i16, i16* %sigalg1.8, align 8, !tbaa !111
  %cmp3.8 = icmp eq i16 %11, %sigalg
  br i1 %cmp3.8, label %if.then, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 9
  %sigalg1.9 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 9, i32 1
  %12 = load i16, i16* %sigalg1.9, align 8, !tbaa !111
  %cmp3.9 = icmp eq i16 %12, %sigalg
  br i1 %cmp3.9, label %if.then, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 10
  %sigalg1.10 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 10, i32 1
  %13 = load i16, i16* %sigalg1.10, align 8, !tbaa !111
  %cmp3.10 = icmp eq i16 %13, %sigalg
  br i1 %cmp3.10, label %if.then, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 11
  %sigalg1.11 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 11, i32 1
  %14 = load i16, i16* %sigalg1.11, align 8, !tbaa !111
  %cmp3.11 = icmp eq i16 %14, %sigalg
  br i1 %cmp3.11, label %if.then, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 12
  %sigalg1.12 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 12, i32 1
  %15 = load i16, i16* %sigalg1.12, align 8, !tbaa !111
  %cmp3.12 = icmp eq i16 %15, %sigalg
  br i1 %cmp3.12, label %if.then, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 13
  %sigalg1.13 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 13, i32 1
  %16 = load i16, i16* %sigalg1.13, align 8, !tbaa !111
  %cmp3.13 = icmp eq i16 %16, %sigalg
  br i1 %cmp3.13, label %if.then, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 14
  %sigalg1.14 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 14, i32 1
  %17 = load i16, i16* %sigalg1.14, align 8, !tbaa !111
  %cmp3.14 = icmp eq i16 %17, %sigalg
  br i1 %cmp3.14, label %if.then, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 15
  %sigalg1.15 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 15, i32 1
  %18 = load i16, i16* %sigalg1.15, align 8, !tbaa !111
  %cmp3.15 = icmp eq i16 %18, %sigalg
  br i1 %cmp3.15, label %if.then, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %incdec.ptr.15 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 16
  %sigalg1.16 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 16, i32 1
  %19 = load i16, i16* %sigalg1.16, align 8, !tbaa !111
  %cmp3.16 = icmp eq i16 %19, %sigalg
  br i1 %cmp3.16, label %if.then, label %for.inc.16

for.inc.16:                                       ; preds = %for.inc.15
  %incdec.ptr.16 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 17
  %sigalg1.17 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 17, i32 1
  %20 = load i16, i16* %sigalg1.17, align 8, !tbaa !111
  %cmp3.17 = icmp eq i16 %20, %sigalg
  br i1 %cmp3.17, label %if.then, label %for.inc.17

for.inc.17:                                       ; preds = %for.inc.16
  %incdec.ptr.17 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 18
  %sigalg1.18 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 18, i32 1
  %21 = load i16, i16* %sigalg1.18, align 8, !tbaa !111
  %cmp3.18 = icmp eq i16 %21, %sigalg
  br i1 %cmp3.18, label %if.then, label %for.inc.18

for.inc.18:                                       ; preds = %for.inc.17
  %incdec.ptr.18 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 19
  %sigalg1.19 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 19, i32 1
  %22 = load i16, i16* %sigalg1.19, align 8, !tbaa !111
  %cmp3.19 = icmp eq i16 %22, %sigalg
  br i1 %cmp3.19, label %if.then, label %for.inc.19

for.inc.19:                                       ; preds = %for.inc.18
  %incdec.ptr.19 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 20
  %sigalg1.20 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 20, i32 1
  %23 = load i16, i16* %sigalg1.20, align 8, !tbaa !111
  %cmp3.20 = icmp eq i16 %23, %sigalg
  br i1 %cmp3.20, label %if.then, label %for.inc.20

for.inc.20:                                       ; preds = %for.inc.19
  %incdec.ptr.20 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 21
  %sigalg1.21 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 21, i32 1
  %24 = load i16, i16* %sigalg1.21, align 8, !tbaa !111
  %cmp3.21 = icmp eq i16 %24, %sigalg
  br i1 %cmp3.21, label %if.then, label %for.inc.21

for.inc.21:                                       ; preds = %for.inc.20
  %incdec.ptr.21 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 22
  %sigalg1.22 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 22, i32 1
  %25 = load i16, i16* %sigalg1.22, align 8, !tbaa !111
  %cmp3.22 = icmp eq i16 %25, %sigalg
  br i1 %cmp3.22, label %if.then, label %for.inc.22

for.inc.22:                                       ; preds = %for.inc.21
  %incdec.ptr.22 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 23
  %sigalg1.23 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 23, i32 1
  %26 = load i16, i16* %sigalg1.23, align 8, !tbaa !111
  %cmp3.23 = icmp eq i16 %26, %sigalg
  br i1 %cmp3.23, label %if.then, label %for.inc.23

for.inc.23:                                       ; preds = %for.inc.22
  %incdec.ptr.23 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 24
  %sigalg1.24 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 24, i32 1
  %27 = load i16, i16* %sigalg1.24, align 8, !tbaa !111
  %cmp3.24 = icmp eq i16 %27, %sigalg
  br i1 %cmp3.24, label %if.then, label %for.inc.24

for.inc.24:                                       ; preds = %for.inc.23
  %incdec.ptr.24 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 25
  %sigalg1.25 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 25, i32 1
  %28 = load i16, i16* %sigalg1.25, align 8, !tbaa !111
  %cmp3.25 = icmp eq i16 %28, %sigalg
  br i1 %cmp3.25, label %if.then, label %for.inc.25

for.inc.25:                                       ; preds = %for.inc.24
  %incdec.ptr.25 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 26
  %sigalg1.26 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 26, i32 1
  %29 = load i16, i16* %sigalg1.26, align 8, !tbaa !111
  %cmp3.26 = icmp eq i16 %29, %sigalg
  br i1 %cmp3.26, label %if.then, label %for.inc.26

for.inc.26:                                       ; preds = %for.inc.25
  %incdec.ptr.26 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 27
  %sigalg1.27 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %1, i64 27, i32 1
  %30 = load i16, i16* %sigalg1.27, align 8, !tbaa !111
  %cmp3.27 = icmp eq i16 %30, %sigalg
  br i1 %cmp3.27, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.26, %if.then
  %retval.0 = phi %struct.sigalg_lookup_st* [ %.lu.0, %if.then ], [ null, %for.inc.26 ]
  ret %struct.sigalg_lookup_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls12_check_peer_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %sig, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #2 {
entry:
  %sent_sigs = alloca i16*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %sigalgstr = alloca [2 x i8], align 1
  %cidx = alloca i64, align 8
  %0 = bitcast i16** %sent_sigs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %1 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !55
  %2 = getelementptr inbounds [2 x i8], [2 x i8]* %sigalgstr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #16
  %3 = bitcast i64* %cidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  %call = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #15
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup179, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end14.thread

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !25
  %cmp2 = icmp slt i32 %7, 772
  %cmp6.not = icmp eq i32 %7, 65536
  %or.cond266 = or i1 %cmp2, %cmp6.not
  br i1 %or.cond266, label %if.end14, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %cmp8 = icmp eq i32 %call, 116
  br i1 %cmp8, label %if.then9, label %if.end14.thread291

if.then9:                                         ; preds = %if.then7
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1473, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end14:                                         ; preds = %land.lhs.true
  %call15 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %sig) #17
  %cmp16 = icmp eq %struct.sigalg_lookup_st* %call15, null
  br i1 %cmp16, label %if.then43, label %lor.lhs.false35

if.end14.thread291:                               ; preds = %if.then7
  %call15293 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %sig) #17
  %cmp16294 = icmp eq %struct.sigalg_lookup_st* %call15293, null
  br i1 %cmp16294, label %if.then43, label %land.lhs.true30

if.end14.thread:                                  ; preds = %if.end
  %call15273 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %sig) #17
  %cmp16274 = icmp eq %struct.sigalg_lookup_st* %call15273, null
  br i1 %cmp16274, label %if.then43, label %lor.lhs.false35

land.lhs.true30:                                  ; preds = %if.end14.thread291
  %cmp11 = icmp eq i32 %call, 6
  %spec.store.select = select i1 %cmp11, i32 912, i32 %call
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call15293, i64 0, i32 2
  %8 = load i32, i32* %hash, align 4, !tbaa !90
  switch i32 %8, label %lor.lhs.false35 [
    i32 64, label %if.then43
    i32 675, label %if.then43
  ]

lor.lhs.false35:                                  ; preds = %if.end14, %if.end14.thread, %land.lhs.true30
  %pkeyid.0275280 = phi i32 [ %spec.store.select, %land.lhs.true30 ], [ %call, %if.end14.thread ], [ %call, %if.end14 ]
  %call15277 = phi %struct.sigalg_lookup_st* [ %call15293, %land.lhs.true30 ], [ %call15273, %if.end14.thread ], [ %call15, %if.end14 ]
  %sig36 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call15277, i64 0, i32 4
  %9 = load i32, i32* %sig36, align 4, !tbaa !94
  %cmp37.not = icmp eq i32 %pkeyid.0275280, %9
  br i1 %cmp37.not, label %if.end44, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %cmp40 = icmp ne i32 %9, 912
  %cmp42 = icmp ne i32 %pkeyid.0275280, 6
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp42
  br i1 %or.cond, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end14.thread291, %if.end14.thread, %land.lhs.true30, %land.lhs.true30, %land.lhs.true38, %if.end14
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1489, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end44:                                         ; preds = %land.lhs.true38, %lor.lhs.false35
  %call45 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #15
  %call46 = call i32 @ssl_cert_lookup_by_nid(i32 noundef %call45, i64* noundef nonnull %cidx) #15
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call15277, i64 0, i32 5
  %10 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %11 = load i64, i64* %cidx, align 8, !tbaa !59
  %conv = trunc i64 %11 to i32
  %cmp49.not = icmp eq i32 %10, %conv
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false48, %if.end44
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1495, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end52:                                         ; preds = %lor.lhs.false48
  %cmp53 = icmp eq i32 %pkeyid.0275280, 408
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end52
  %call56 = call fastcc i32 @tls1_check_pkey_comp(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef %pkey) #17
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then55
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1504, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 162, i8* noundef null) #15
  br label %cleanup179

if.end59:                                         ; preds = %if.then55
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc61 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc61, align 8, !tbaa !61
  %enc_flags62 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags62, align 8, !tbaa !62
  %and63 = and i32 %14, 8
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %lor.lhs.false75

land.lhs.true65:                                  ; preds = %if.end59
  %version67 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version67, align 8, !tbaa !25
  %cmp68 = icmp slt i32 %15, 772
  %cmp73.not = icmp eq i32 %15, 65536
  %or.cond268 = or i1 %cmp68, %cmp73.not
  br i1 %or.cond268, label %lor.lhs.false75, label %if.then78

lor.lhs.false75:                                  ; preds = %land.lhs.true65, %if.end59
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %16 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %16, i64 0, i32 4
  %17 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and76 = and i32 %17, 196608
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end89, label %if.then78

if.then78:                                        ; preds = %land.lhs.true65, %lor.lhs.false75
  %call79 = call i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %pkey) #17
  %curve80 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call15277, i64 0, i32 7
  %18 = load i32, i32* %curve80, align 8, !tbaa !109
  %cmp81.not = icmp eq i32 %18, 0
  %cmp85.not = icmp eq i32 %call79, %18
  %or.cond269 = select i1 %cmp81.not, i1 true, i1 %cmp85.not
  br i1 %or.cond269, label %if.then78.if.end89_crit_edge, label %if.then87

if.then78.if.end89_crit_edge:                     ; preds = %if.then78
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc91.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre289 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc91.phi.trans.insert, align 8, !tbaa !61
  %enc_flags92.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre289, i64 0, i32 12
  %.pre290 = load i32, i32* %enc_flags92.phi.trans.insert, align 8, !tbaa !62
  br label %if.end89

if.then87:                                        ; preds = %if.then78
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1513, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 378, i8* noundef null) #15
  br label %cleanup179

if.end89:                                         ; preds = %if.then78.if.end89_crit_edge, %lor.lhs.false75
  %19 = phi i32 [ %.pre290, %if.then78.if.end89_crit_edge ], [ %14, %lor.lhs.false75 ]
  %20 = phi %struct.ssl_method_st* [ %.pre, %if.then78.if.end89_crit_edge ], [ %12, %lor.lhs.false75 ]
  %and93 = and i32 %19, 8
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.then105

land.lhs.true95:                                  ; preds = %if.end89
  %version97 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 0
  %21 = load i32, i32* %version97, align 8, !tbaa !25
  %cmp98 = icmp slt i32 %21, 772
  %cmp103.not = icmp eq i32 %21, 65536
  %or.cond270 = or i1 %cmp98, %cmp103.not
  br i1 %or.cond270, label %if.then105, label %if.end133

if.then105:                                       ; preds = %land.lhs.true95, %if.end89
  %call106 = call fastcc zeroext i16 @tls1_get_group_id(%struct.evp_pkey_st* noundef %pkey) #17
  %call107 = call i32 @tls1_check_group_id(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %call106, i32 noundef 1) #17
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.then105
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1520, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 378, i8* noundef null) #15
  br label %cleanup179

if.end110:                                        ; preds = %if.then105
  %cert111 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %22 = load %struct.cert_st*, %struct.cert_st** %cert111, align 8, !tbaa !51
  %cert_flags112 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %22, i64 0, i32 4
  %23 = load i32, i32* %cert_flags112, align 4, !tbaa !52
  %and113 = and i32 %23, 196608
  %tobool114.not = icmp eq i32 %and113, 0
  %24 = and i16 %sig, -257
  %.not = icmp eq i16 %24, 1027
  %or.cond271 = or i1 %.not, %tobool114.not
  br i1 %or.cond271, label %if.end133, label %if.then123

if.then123:                                       ; preds = %if.end110
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1528, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.else:                                          ; preds = %if.end52
  %cert127 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %25 = load %struct.cert_st*, %struct.cert_st** %cert127, align 8, !tbaa !51
  %cert_flags128 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %25, i64 0, i32 4
  %26 = load i32, i32* %cert_flags128, align 4, !tbaa !52
  %and129 = and i32 %26, 196608
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end133, label %if.then131

if.then131:                                       ; preds = %if.else
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end133:                                        ; preds = %land.lhs.true95, %if.else, %if.end110
  %call134 = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i16** noundef nonnull %sent_sigs) #17
  %sent_sigs.promoted = load i16*, i16** %sent_sigs, align 8, !tbaa !55
  %cmp135283.not = icmp eq i64 %call134, 0
  br i1 %cmp135283.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end133
  %scevgep = getelementptr i16, i16* %sent_sigs.promoted, i64 %call134
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.0285 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %incdec.ptr281284 = phi i16* [ %incdec.ptr, %for.inc ], [ %sent_sigs.promoted, %for.body.preheader ]
  %27 = load i16, i16* %incdec.ptr281284, align 2, !tbaa !34
  %cmp139 = icmp eq i16 %27, %sig
  br i1 %cmp139, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.0285, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %incdec.ptr281284, i64 1
  %exitcond.not = icmp eq i64 %inc, %call134
  br i1 %exitcond.not, label %for.end.thread, label %for.body, !llvm.loop !113

for.end.thread:                                   ; preds = %for.inc
  store i16* %scevgep, i16** %sent_sigs, align 8, !tbaa !55
  br label %land.lhs.true145

for.end:                                          ; preds = %for.body, %if.end133
  %incdec.ptr282 = phi i16* [ %sent_sigs.promoted, %if.end133 ], [ %incdec.ptr281284, %for.body ]
  %i.0.lcssa = phi i64 [ 0, %if.end133 ], [ %i.0285, %for.body ]
  store i16* %incdec.ptr282, i16** %sent_sigs, align 8, !tbaa !55
  %cmp143 = icmp eq i64 %i.0.lcssa, %call134
  br i1 %cmp143, label %land.lhs.true145, label %if.end155

land.lhs.true145:                                 ; preds = %for.end.thread, %for.end
  %hash146 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call15277, i64 0, i32 2
  %28 = load i32, i32* %hash146, align 4, !tbaa !90
  %cmp147.not = icmp eq i32 %28, 64
  br i1 %cmp147.not, label %lor.lhs.false149, label %if.then154

lor.lhs.false149:                                 ; preds = %land.lhs.true145
  %cert150 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %29 = load %struct.cert_st*, %struct.cert_st** %cert150, align 8, !tbaa !51
  %cert_flags151 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %29, i64 0, i32 4
  %30 = load i32, i32* %cert_flags151, align 4, !tbaa !52
  %and152 = and i32 %30, 196609
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end155, label %if.then154

if.then154:                                       ; preds = %lor.lhs.false149, %land.lhs.true145
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1547, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 40, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end155:                                        ; preds = %lor.lhs.false149, %for.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %31 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call156 = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %31, %struct.sigalg_lookup_st* noundef nonnull %call15277, %struct.evp_md_st** noundef nonnull %md) #17
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end155
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1551, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 368, i8* noundef null) #15
  br label %cleanup179

if.end159:                                        ; preds = %if.end155
  %32 = lshr i16 %sig, 8
  %conv162 = trunc i16 %32 to i8
  store i8 %conv162, i8* %2, align 1, !tbaa !69
  %conv165 = trunc i16 %sig to i8
  %arrayidx166 = getelementptr inbounds [2 x i8], [2 x i8]* %sigalgstr, i64 0, i64 1
  store i8 %conv165, i8* %arrayidx166, align 1, !tbaa !69
  %33 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call168 = call fastcc i32 @sigalg_security_bits(%struct.ssl_ctx_st* noundef %33, %struct.sigalg_lookup_st* noundef nonnull %call15277) #17
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then177, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %if.end159
  %34 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !55
  %cmp172.not = icmp eq %struct.evp_md_st* %34, null
  br i1 %cmp172.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false171
  %call174 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %34) #15
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false171, %cond.true
  %cond = phi i32 [ %call174, %cond.true ], [ 0, %lor.lhs.false171 ]
  %call175 = call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 327693, i32 noundef %call168, i32 noundef %cond, i8* noundef nonnull %2) #15
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.then177, label %if.end178

if.then177:                                       ; preds = %cond.end, %if.end159
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1565, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls12_check_peer_sigalg, i64 0, i64 0)) #15
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 370, i8* noundef null) #15
  br label %cleanup179

if.end178:                                        ; preds = %cond.end
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  store %struct.sigalg_lookup_st* %call15277, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !98
  br label %cleanup179

cleanup179:                                       ; preds = %if.then87, %entry, %if.end178, %if.then177, %if.then158, %if.then154, %if.then131, %if.then123, %if.then109, %if.then58, %if.then51, %if.then43, %if.then9
  %retval.1 = phi i32 [ 0, %if.then43 ], [ 0, %if.then51 ], [ 0, %if.then123 ], [ 0, %if.then154 ], [ 0, %if.then177 ], [ 1, %if.end178 ], [ 0, %if.then158 ], [ 0, %if.then109 ], [ 0, %if.then58 ], [ 0, %if.then131 ], [ 0, %if.then9 ], [ -1, %entry ], [ 0, %if.then87 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.1
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i32 @ssl_cert_lookup_by_nid(i32 noundef, i64* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_check_pkey_comp(%struct.ssl_st* nocapture noundef readonly %s, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #2 {
entry:
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup38, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_ec_point_conv_form(%struct.evp_pkey_st* noundef %pkey) #15
  switch i32 %call1, label %if.else [
    i32 0, label %cleanup38
    i32 4, label %if.end25
  ]

if.else:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %2, 8
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !25
  %cmp8 = icmp slt i32 %3, 772
  %cmp12.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp8, %cmp12.not
  br i1 %or.cond, label %if.else14, label %cleanup38

if.else14:                                        ; preds = %land.lhs.true, %if.else
  %call15 = tail call i32 @EVP_PKEY_get_field_type(%struct.evp_pkey_st* noundef %pkey) #15
  switch i32 %call15, label %cleanup38 [
    i32 406, label %if.end25
    i32 407, label %if.then20
  ]

if.then20:                                        ; preds = %if.else14
  br label %if.end25

if.end25:                                         ; preds = %if.else14, %if.then20, %if.end
  %comp_id.2 = phi i8 [ 0, %if.end ], [ 2, %if.then20 ], [ 1, %if.else14 ]
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %4 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !114
  %cmp26 = icmp eq i8* %4, null
  br i1 %cmp26, label %cleanup38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end25
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  %5 = load i64, i64* %peer_ecpointformats_len, align 8, !tbaa !115
  %cmp3057.not = icmp eq i64 %5, 0
  br i1 %cmp3057.not, label %cleanup38, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %5
  br i1 %exitcond.not, label %cleanup38, label %for.body, !llvm.loop !116

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.058 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %i.058
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !69
  %cmp34 = icmp eq i8 %6, %comp_id.2
  %inc = add nuw i64 %i.058, 1
  br i1 %cmp34, label %cleanup38, label %for.cond

cleanup38:                                        ; preds = %for.body, %for.cond, %for.cond.preheader, %if.else14, %if.end25, %land.lhs.true, %if.end, %entry
  %retval.1 = phi i32 [ 1, %entry ], [ %call1, %if.end ], [ 1, %land.lhs.true ], [ 1, %if.end25 ], [ 0, %if.else14 ], [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #2 {
entry:
  %gname = alloca [50 x i8], align 16
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %gname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #16
  %call = call i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef %pkey, i8* noundef nonnull %0, i64 noundef 50, i64* noundef null) #15
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call2 = call i32 @OBJ_txt2nid(i8* noundef nonnull %0) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i16 @tls1_get_group_id(%struct.evp_pkey_st* noundef %pkey) unnamed_addr #2 {
entry:
  %call = tail call i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %pkey) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @tls1_nid2group_id(i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i16 [ %call1, %if.end ], [ 0, %entry ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sigalg_security_bits(%struct.ssl_ctx_st* noundef %ctx, %struct.sigalg_lookup_st* noundef %lu) unnamed_addr #2 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !55
  %call = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %ctx, %struct.sigalg_lookup_st* noundef %lu, %struct.evp_md_st** noundef nonnull %md) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !55
  %cmp.not = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp.not, label %if.else14, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %1) #15
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !55
  %call3 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %2) #15
  switch i32 %call2, label %if.end13.fold.split [
    i32 64, label %cleanup
    i32 114, label %if.then7
    i32 4, label %if.then10
  ]

if.then7:                                         ; preds = %if.then1
  br label %cleanup

if.then10:                                        ; preds = %if.then1
  br label %cleanup

if.end13.fold.split:                              ; preds = %if.then1
  %mul = shl nsw i32 %call3, 2
  br label %cleanup

if.else14:                                        ; preds = %if.end
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 1
  %3 = load i16, i16* %sigalg, align 8, !tbaa !111
  %switch.selectcmp = icmp eq i16 %3, 2056
  %switch.select = select i1 %switch.selectcmp, i32 224, i32 0
  %switch.selectcmp34 = icmp eq i16 %3, 2055
  %switch.select35 = select i1 %switch.selectcmp34, i32 128, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.else14, %if.then1, %if.end13.fold.split, %if.then7, %if.then10, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 67, %if.then7 ], [ 39, %if.then10 ], [ %call2, %if.then1 ], [ %mul, %if.end13.fold.split ], [ %switch.select35, %if.else14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* nocapture noundef readonly %s, i32* nocapture noundef writeonly %pnid) local_unnamed_addr #7 {
entry:
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  %0 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !98
  %cmp = icmp eq %struct.sigalg_lookup_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 0, i32 4
  %1 = load i32, i32* %sig, align 4, !tbaa !94
  store i32 %1, i32* %pnid, align 4, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_get_signature_type_nid(%struct.ssl_st* nocapture noundef readonly %s, i32* nocapture noundef writeonly %pnid) local_unnamed_addr #7 {
entry:
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  %0 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !117
  %cmp = icmp eq %struct.sigalg_lookup_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %0, i64 0, i32 4
  %1 = load i32, i32* %sig, align 4, !tbaa !94
  store i32 %1, i32* %pnid, align 4, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_set_client_disabled(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %mask_a = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 35
  store i32 0, i32* %mask_a, align 8, !tbaa !118
  %mask_k = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 34
  store i32 0, i32* %mask_k, align 4, !tbaa !119
  tail call void @ssl_set_sig_mask(i32* noundef nonnull %mask_a, %struct.ssl_st* noundef %s, i32 noundef 327694) #17
  %min_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  %call = tail call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %min_ver, i32* noundef nonnull %max_ver, i32* noundef null) #15
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %psk_client_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 67
  %0 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !120
  %tobool.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %0, null
  br i1 %tobool.not, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end
  %1 = load i32, i32* %mask_a, align 8, !tbaa !118
  %or = or i32 %1, 16
  store i32 %or, i32* %mask_a, align 8, !tbaa !118
  %2 = load i32, i32* %mask_k, align 4, !tbaa !119
  %or17 = or i32 %2, 456
  store i32 %or17, i32* %mask_k, align 4, !tbaa !119
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.end
  %srp_Mask = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 15
  %3 = load i64, i64* %srp_Mask, align 8, !tbaa !121
  %and = and i64 %3, 32
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.then20, label %return

if.then20:                                        ; preds = %if.end18
  %4 = load i32, i32* %mask_a, align 8, !tbaa !118
  %or24 = or i32 %4, 64
  store i32 %or24, i32* %mask_a, align 8, !tbaa !118
  %5 = load i32, i32* %mask_k, align 4, !tbaa !119
  %or28 = or i32 %5, 32
  store i32 %or28, i32* %mask_k, align 4, !tbaa !119
  br label %return

return:                                           ; preds = %if.end18, %if.then20, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then20 ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_set_sig_mask(i32* nocapture noundef %pmask_a, %struct.ssl_st* noundef %s, i32 noundef %op) local_unnamed_addr #2 {
entry:
  %sigalgs = alloca i16*, align 8
  %0 = bitcast i16** %sigalgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %call = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef %s, i32 noundef 1, i16** noundef nonnull %sigalgs) #17
  %cmp31.not = icmp eq i64 %call, 0
  br i1 %cmp31.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %sigalgs.promoted = load i16*, i16** %sigalgs, align 8, !tbaa !55
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %i.034 = phi i64 [ %inc, %cleanup ], [ 0, %for.body.preheader ]
  %disabled_mask.033 = phi i32 [ %disabled_mask.2, %cleanup ], [ 11, %for.body.preheader ]
  %incdec.ptr3032 = phi i16* [ %incdec.ptr, %cleanup ], [ %sigalgs.promoted, %for.body.preheader ]
  %1 = load i16, i16* %incdec.ptr3032, align 2, !tbaa !34
  %call1 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %1) #17
  %cmp2 = icmp eq %struct.sigalg_lookup_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call1, i64 0, i32 5
  %2 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %conv = sext i32 %2 to i64
  %call3 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef %conv) #15
  %cmp4 = icmp eq %struct.SSL_CERT_LOOKUP* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call3, i64 0, i32 1
  %3 = load i32, i32* %amask, align 4, !tbaa !99
  %and = and i32 %3, %disabled_mask.033
  %cmp8.not = icmp eq i32 %and, 0
  br i1 %cmp8.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call10 = tail call fastcc i32 @tls12_sigalg_allowed(%struct.ssl_st* noundef %s, i32 noundef %op, %struct.sigalg_lookup_st* noundef nonnull %call1) #17
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %amask, align 4, !tbaa !99
  %neg = xor i32 %4, -1
  %and13 = and i32 %disabled_mask.033, %neg
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true, %if.then11, %if.end, %for.body
  %disabled_mask.2 = phi i32 [ %disabled_mask.033, %for.body ], [ %disabled_mask.033, %if.end ], [ %and13, %if.then11 ], [ %disabled_mask.033, %land.lhs.true ], [ %disabled_mask.033, %if.end7 ]
  %inc = add nuw i64 %i.034, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %incdec.ptr3032, i64 1
  %exitcond.not = icmp eq i64 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !122

for.end:                                          ; preds = %cleanup, %entry
  %disabled_mask.0.lcssa = phi i32 [ 11, %entry ], [ %disabled_mask.2, %cleanup ]
  %5 = load i32, i32* %pmask_a, align 4, !tbaa !60
  %or = or i32 %5, %disabled_mask.0.lcssa
  store i32 %or, i32* %pmask_a, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret void
}

declare i32 @ssl_get_min_max_version(%struct.ssl_st* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cipher_disabled(%struct.ssl_st* noundef %s, %struct.ssl_cipher_st* noundef %c, i32 noundef %op, i32 noundef %ecdhe) local_unnamed_addr #2 {
entry:
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 4
  %0 = load i32, i32* %algorithm_mkey, align 4, !tbaa !123
  %mask_k = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 34
  %1 = load i32, i32* %mask_k, align 4, !tbaa !119
  %and = and i32 %1, %0
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 5
  %2 = load i32, i32* %algorithm_auth, align 8, !tbaa !101
  %mask_a = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 35
  %3 = load i32, i32* %mask_a, align 8, !tbaa !118
  %and3 = and i32 %3, %2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  %4 = load i32, i32* %max_ver, align 8, !tbaa !124
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and9 = and i32 %7, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true37

if.then11:                                        ; preds = %if.end8
  %min_tls12 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 8
  %8 = load i32, i32* %min_tls12, align 4, !tbaa !125
  %cmp13 = icmp eq i32 %8, 769
  %tobool14 = icmp ne i32 %ecdhe, 0
  %or.cond = and i1 %tobool14, %cmp13
  %and17 = and i32 %0, 132
  %cmp18.not = icmp eq i32 %and17, 0
  %spec.select = select i1 %cmp18.not, i32 769, i32 768
  %min_tls.0 = select i1 %or.cond, i32 %spec.select, i32 %8
  %cmp24 = icmp sgt i32 %min_tls.0, %4
  br i1 %cmp24, label %return, label %cleanup

cleanup:                                          ; preds = %if.then11
  %max_tls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 9
  %9 = load i32, i32* %max_tls, align 8, !tbaa !126
  %min_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  %10 = load i32, i32* %min_ver, align 4, !tbaa !127
  %cmp28.not = icmp slt i32 %9, %10
  br i1 %cmp28.not, label %return, label %if.end72

land.lhs.true37:                                  ; preds = %if.end8
  %min_dtls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 10
  %11 = load i32, i32* %min_dtls, align 4, !tbaa !128
  %cmp38 = icmp eq i32 %11, 256
  %spec.select101 = select i1 %cmp38, i32 65280, i32 %11
  %cmp43 = icmp eq i32 %4, 256
  %cond50 = select i1 %cmp43, i32 65280, i32 %4
  %cmp51 = icmp slt i32 %spec.select101, %cond50
  br i1 %cmp51, label %return, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true37
  %max_dtls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 11
  %12 = load i32, i32* %max_dtls, align 8, !tbaa !129
  %cmp53 = icmp eq i32 %12, 256
  %spec.select102 = select i1 %cmp53, i32 65280, i32 %12
  %min_ver61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  %13 = load i32, i32* %min_ver61, align 4, !tbaa !127
  %cmp62 = icmp eq i32 %13, 256
  %cond69 = select i1 %cmp62, i32 65280, i32 %13
  %cmp70 = icmp sgt i32 %spec.select102, %cond69
  br i1 %cmp70, label %return, label %if.end72

if.end72:                                         ; preds = %cleanup, %lor.lhs.false52
  %strength_bits = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 14
  %14 = load i32, i32* %strength_bits, align 4, !tbaa !130
  %15 = bitcast %struct.ssl_cipher_st* %c to i8*
  %call = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef %op, i32 noundef %14, i32 noundef 0, i8* noundef %15) #15
  %tobool73.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool73.not to i32
  br label %return

return:                                           ; preds = %if.then11, %land.lhs.true37, %lor.lhs.false52, %cleanup, %if.end, %entry, %lor.lhs.false, %if.end72
  %retval.1 = phi i32 [ %lnot.ext, %if.end72 ], [ 1, %cleanup ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %if.end ], [ 1, %lor.lhs.false52 ], [ 1, %land.lhs.true37 ], [ 1, %if.then11 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_use_ticket(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !75
  %and = and i64 %0, 16384
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 0, i32 noundef 0, i8* noundef null) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_server_sigalgs(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %sent_sigs = alloca i16*, align 8
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %0 = bitcast %struct.sigalg_lookup_st*** %shared_sigalgs to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !131
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1672) #15
  store %struct.sigalg_lookup_st** null, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  store i64 0, i64* %shared_sigalgslen, align 8, !tbaa !132
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 0
  %2 = bitcast i32* %arrayidx to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2, align 4, !tbaa !60
  %arrayidx.4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 4
  %3 = bitcast i32* %arrayidx.4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3, align 4, !tbaa !60
  %arrayidx.8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 8
  store i32 0, i32* %arrayidx.8, align 4, !tbaa !60
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %4 = load i16*, i16** %peer_cert_sigalgs, align 8, !tbaa !133
  %cmp4 = icmp eq i16* %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %entry
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %5 = load i16*, i16** %peer_sigalgs, align 8, !tbaa !134
  %cmp7 = icmp eq i16* %5, null
  br i1 %cmp7, label %if.then, label %if.end39

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast i16** %sent_sigs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #16
  %call = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i16** noundef nonnull %sent_sigs) #17
  %cmp1675.not80 = icmp eq i64 %call, 0
  %7 = load i16*, i16** %sent_sigs, align 8
  br label %for.body10

for.body10:                                       ; preds = %if.then, %cleanup
  %i.177 = phi i64 [ 0, %if.then ], [ %inc35, %cleanup ]
  %conv = trunc i64 %i.177 to i32
  %call11 = tail call fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef %s, i32 noundef %conv) #17
  %cmp12 = icmp eq %struct.sigalg_lookup_st* %call11, null
  %brmerge = select i1 %cmp12, i1 true, i1 %cmp1675.not80
  br i1 %brmerge, label %cleanup, label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %for.body10
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call11, i64 0, i32 1
  %8 = load i16, i16* %sigalg, align 8, !tbaa !111
  br label %for.body18

for.cond15:                                       ; preds = %for.body18
  %exitcond.not = icmp eq i64 %inc31, %call
  br i1 %exitcond.not, label %cleanup, label %for.body18, !llvm.loop !135

for.body18:                                       ; preds = %for.body18.lr.ph, %for.cond15
  %j.076 = phi i64 [ 0, %for.body18.lr.ph ], [ %inc31, %for.cond15 ]
  %arrayidx20 = getelementptr inbounds i16, i16* %7, i64 %j.076
  %9 = load i16, i16* %arrayidx20, align 2, !tbaa !34
  %cmp22 = icmp eq i16 %8, %9
  %inc31 = add nuw i64 %j.076, 1
  br i1 %cmp22, label %if.then24, label %for.cond15

if.then24:                                        ; preds = %for.body18
  %arrayidx28 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 %i.177
  store i32 2, i32* %arrayidx28, align 4, !tbaa !60
  br label %cleanup

cleanup:                                          ; preds = %for.cond15, %for.body10, %if.then24
  %inc35 = add nuw nsw i64 %i.177, 1
  %exitcond81.not = icmp eq i64 %inc35, 9
  br i1 %exitcond81.not, label %for.end36, label %for.body10, !llvm.loop !136

for.end36:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #16
  br label %cleanup48

if.end39:                                         ; preds = %land.lhs.true, %entry
  %call40 = tail call i32 @tls1_process_sigalgs(%struct.ssl_st* noundef nonnull %s) #17
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end39
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1705, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls1_set_server_sigalgs, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #15
  br label %cleanup48

if.end42:                                         ; preds = %if.end39
  %10 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %cmp44.not = icmp eq %struct.sigalg_lookup_st** %10, null
  br i1 %cmp44.not, label %if.end47, label %cleanup48

if.end47:                                         ; preds = %if.end42
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1713, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls1_set_server_sigalgs, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 376, i8* noundef null) #15
  br label %cleanup48

cleanup48:                                        ; preds = %if.end42, %if.end47, %if.then41, %for.end36
  %retval.0 = phi i32 [ 1, %for.end36 ], [ 0, %if.end47 ], [ 0, %if.then41 ], [ 1, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_process_sigalgs(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @tls1_set_shared_sigalgs(%struct.ssl_st* noundef %s) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup29, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 0
  %0 = bitcast i32* %arrayidx to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %0, align 4, !tbaa !60
  %arrayidx.4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 4
  %1 = bitcast i32* %arrayidx.4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1, align 4, !tbaa !60
  %arrayidx.8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 8
  store i32 0, i32* %arrayidx.8, align 4, !tbaa !60
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  %2 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp253.not = icmp eq i64 %2, 0
  br i1 %cmp253.not, label %cleanup29, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.body.preheader
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %cleanup
  %i.154 = phi i64 [ 0, %for.body3.lr.ph ], [ %inc27, %cleanup ]
  %3 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %arrayidx4 = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %3, i64 %i.154
  %4 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx4, align 8, !tbaa !55
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %4, i64 0, i32 5
  %5 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %8, 8
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %for.body3
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !25
  %cmp7 = icmp slt i32 %9, 772
  %cmp11.not = icmp eq i32 %9, 65536
  %or.cond = or i1 %cmp7, %cmp11.not
  br i1 %or.cond, label %if.end15, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %4, i64 0, i32 4
  %10 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp13 = icmp eq i32 %10, 6
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true12, %land.lhs.true, %for.body3
  %idxprom = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 %idxprom
  %11 = load i32, i32* %arrayidx16, align 4, !tbaa !60
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %land.lhs.true18, label %cleanup

land.lhs.true18:                                  ; preds = %if.end15
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call19 = tail call i32 @ssl_cert_is_disabled(%struct.ssl_ctx_st* noundef %12, i64 noundef %idxprom) #15
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %cleanup

if.then21:                                        ; preds = %land.lhs.true18
  store i32 258, i32* %arrayidx16, align 4, !tbaa !60
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true18, %if.then21, %land.lhs.true12
  %inc27 = add nuw i64 %i.154, 1
  %13 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp2 = icmp ult i64 %inc27, %13
  br i1 %cmp2, label %for.body3, label %cleanup29, !llvm.loop !137

cleanup29:                                        ; preds = %cleanup, %for.body.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.body.preheader ], [ 1, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_get_ticket_from_client(%struct.ssl_st* noundef %s, %struct.CLIENTHELLO_MSG* noundef %hello, %struct.ssl_session_st** nocapture noundef writeonly %ret) local_unnamed_addr #2 {
entry:
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %ret, align 8, !tbaa !55
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 0, i32* %ticket_expected, align 8, !tbaa !138
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %0, 769
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @tls_use_ticket(%struct.ssl_st* noundef nonnull %s) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 12
  %1 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !139
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %1, i64 6, i32 1
  %2 = load i32, i32* %present, align 8, !tbaa !141
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %1, i64 6, i32 0
  %call4 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %data) #17
  %call6 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %data) #17
  %arraydecay = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 4, i64 0
  %session_id_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 3
  %3 = load i64, i64* %session_id_len, align 8, !tbaa !143
  %call7 = tail call i32 @tls_decrypt_ticket(%struct.ssl_st* noundef nonnull %s, i8* noundef %call6, i64 noundef %call4, i8* noundef nonnull %arraydecay, i64 noundef %3, %struct.ssl_session_st** noundef nonnull %ret) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end3
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ 2, %lor.lhs.false ], [ 2, %entry ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #11 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !144
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_decrypt_ticket(%struct.ssl_st* noundef %s, i8* noundef %etick, i64 noundef %eticklen, i8* noundef %sess_id, i64 noundef %sesslen, %struct.ssl_session_st** nocapture noundef writeonly %psess) local_unnamed_addr #2 {
entry:
  %p = alloca i8*, align 8
  %slen = alloca i32, align 4
  %declen = alloca i32, align 4
  %tick_hmac = alloca [64 x i8], align 16
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %1 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %2 = bitcast i32* %declen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %tick_hmac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #16
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !145
  %cmp = icmp eq i64 %eticklen, 0
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %7, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true7

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %8 = load i32, i32* %version, align 8, !tbaa !25
  %cmp2 = icmp slt i32 %8, 772
  %cmp6.not = icmp eq i32 %8, 65536
  %or.cond = or i1 %cmp2, %cmp6.not
  br i1 %or.cond, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true, %if.end
  %session_secret_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  %9 = load i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb, align 8, !tbaa !146
  %tobool8.not = icmp ne i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %9, null
  %cmp11 = icmp ult i64 %eticklen, 32
  %or.cond386 = or i1 %cmp11, %tobool8.not
  br i1 %or.cond386, label %end, label %if.end13

if.end10:                                         ; preds = %land.lhs.true
  %cmp11.old = icmp ult i64 %eticklen, 32
  br i1 %cmp11.old, label %end, label %if.end13

if.end13:                                         ; preds = %land.lhs.true7, %if.end10
  %call = tail call %struct.ssl_hmac_st* @ssl_hmac_new(%struct.ssl_ctx_st* noundef %4) #17
  %cmp14 = icmp eq %struct.ssl_hmac_st* %call, null
  br i1 %cmp14, label %end, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call17 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #15
  %cmp18 = icmp eq %struct.evp_cipher_ctx_st* %call17, null
  br i1 %cmp18, label %end, label %if.end20

if.end20:                                         ; preds = %if.end16
  %ticket_key_evp_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 60, i32 5
  %10 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)** %ticket_key_evp_cb, align 8, !tbaa !147
  %cmp22.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* %10, null
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then29

lor.lhs.false:                                    ; preds = %if.end20
  %ticket_key_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 60, i32 4
  %11 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)** %ticket_key_cb, align 8, !tbaa !148
  %cmp24.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)* %11, null
  br i1 %cmp24.not, label %if.else55, label %if.then37

if.then29:                                        ; preds = %if.end20
  %add.ptr = getelementptr inbounds i8, i8* %etick, i64 16
  %call32 = tail call %struct.evp_mac_ctx_st* @ssl_hmac_get0_EVP_MAC_CTX(%struct.ssl_hmac_st* noundef nonnull %call) #17
  %call33 = tail call i32 %10(%struct.ssl_st* noundef nonnull %s, i8* noundef %etick, i8* noundef nonnull %add.ptr, %struct.evp_cipher_ctx_st* noundef nonnull %call17, %struct.evp_mac_ctx_st* noundef %call32, i32 noundef 0) #15
  br label %if.end44

if.then37:                                        ; preds = %lor.lhs.false
  %add.ptr40 = getelementptr inbounds i8, i8* %etick, i64 16
  %call41 = tail call %struct.hmac_ctx_st* @ssl_hmac_get0_HMAC_CTX(%struct.ssl_hmac_st* noundef nonnull %call) #15
  %call42 = tail call i32 %11(%struct.ssl_st* noundef nonnull %s, i8* noundef %etick, i8* noundef nonnull %add.ptr40, %struct.evp_cipher_ctx_st* noundef nonnull %call17, %struct.hmac_ctx_st* noundef %call41, i32 noundef 0) #15
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.then29
  %rv.0 = phi i32 [ %call33, %if.then29 ], [ %call42, %if.then37 ]
  %cmp45 = icmp slt i32 %rv.0, 0
  br i1 %cmp45, label %end, label %if.end47

if.end47:                                         ; preds = %if.end44
  switch i32 %rv.0, label %if.end97 [
    i32 0, label %end
    i32 2, label %if.then52
  ]

if.then52:                                        ; preds = %if.end47
  br label %if.end97

if.else55:                                        ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 60, i32 2, i64 0
  %call57 = tail call i32 @memcmp(i8* noundef %etick, i8* noundef nonnull %arraydecay, i64 noundef 16) #18
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end60, label %end

if.end60:                                         ; preds = %if.else55
  %ctx61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx61, align 8, !tbaa !57
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 0
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 85
  %14 = load i8*, i8** %propq, align 8, !tbaa !95
  %call63 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* noundef %14) #15
  %cmp64 = icmp eq %struct.evp_cipher_st* %call63, null
  br i1 %cmp64, label %if.then77, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end60
  %secure = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 60, i32 3
  %15 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !149
  %arraydecay67 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %15, i64 0, i32 0, i64 0
  %call68 = tail call i32 @ssl_hmac_init(%struct.ssl_hmac_st* noundef nonnull %call, i8* noundef %arraydecay67, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #17
  %cmp69 = icmp slt i32 %call68, 1
  br i1 %cmp69, label %if.then77, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false65
  %16 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !149
  %arraydecay73 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %16, i64 0, i32 1, i64 0
  %add.ptr74 = getelementptr inbounds i8, i8* %etick, i64 16
  %call75 = tail call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call17, %struct.evp_cipher_st* noundef nonnull %call63, %struct.engine_st* noundef null, i8* noundef nonnull %arraydecay73, i8* noundef nonnull %add.ptr74) #15
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %lor.lhs.false70, %lor.lhs.false65, %if.end60
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call63) #15
  br label %end

if.end78:                                         ; preds = %lor.lhs.false70
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call63) #15
  %17 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc80 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %17, i64 0, i32 25
  %18 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc80, align 8, !tbaa !61
  %enc_flags81 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %18, i64 0, i32 12
  %19 = load i32, i32* %enc_flags81, align 8, !tbaa !62
  %and82 = and i32 %19, 8
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %land.lhs.true84, label %if.end97

land.lhs.true84:                                  ; preds = %if.end78
  %version86 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %17, i64 0, i32 0
  %20 = load i32, i32* %version86, align 8, !tbaa !25
  %cmp87 = icmp sgt i32 %20, 771
  %cmp91.not = icmp ne i32 %20, 65536
  %not.or.cond379 = and i1 %cmp87, %cmp91.not
  %spec.select387 = zext i1 %not.or.cond379 to i32
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true84, %if.end78, %if.end47, %if.then52
  %renew_ticket.4 = phi i32 [ 1, %if.then52 ], [ 0, %if.end47 ], [ %spec.select387, %land.lhs.true84 ], [ 0, %if.end78 ]
  %call98 = tail call i64 @ssl_hmac_size(%struct.ssl_hmac_st* noundef nonnull %call) #17
  %cmp99 = icmp eq i64 %call98, 0
  br i1 %cmp99, label %end, label %if.end101

if.end101:                                        ; preds = %if.end97
  %call102 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %call17) #15
  %add = add nsw i32 %call102, 16
  %conv = sext i32 %add to i64
  %add103 = add i64 %call98, %conv
  %cmp104.not = icmp ult i64 %add103, %eticklen
  br i1 %cmp104.not, label %if.end107, label %end

if.end107:                                        ; preds = %if.end101
  %sub = sub i64 %eticklen, %call98
  %call108 = tail call i32 @ssl_hmac_update(%struct.ssl_hmac_st* noundef nonnull %call, i8* noundef %etick, i64 noundef %sub) #17
  %cmp109 = icmp slt i32 %call108, 1
  br i1 %cmp109, label %end, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.end107
  %call113 = call i32 @ssl_hmac_final(%struct.ssl_hmac_st* noundef nonnull %call, i8* noundef nonnull %3, i64* noundef null, i64 noundef 64) #17
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %end, label %if.end117

if.end117:                                        ; preds = %lor.lhs.false111
  %add.ptr119 = getelementptr inbounds i8, i8* %etick, i64 %sub
  %call120 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %3, i8* noundef %add.ptr119, i64 noundef %call98) #15
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %end

if.end123:                                        ; preds = %if.end117
  %add.ptr124 = getelementptr inbounds i8, i8* %etick, i64 16
  %call125 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %call17) #15
  %idx.ext = sext i32 %call125 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr124, i64 %idx.ext
  store i8* %add.ptr126, i8** %p, align 8, !tbaa !55
  %call127 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %call17) #15
  %add128 = add nsw i32 %call127, 16
  %conv129 = sext i32 %add128 to i64
  %sub130 = sub i64 %sub, %conv129
  %call131 = call i8* @CRYPTO_malloc(i64 noundef %sub130, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1916) #15
  %cmp132 = icmp eq i8* %call131, null
  br i1 %cmp132, label %if.then139, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.end123
  %conv135 = trunc i64 %sub130 to i32
  %call136 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call17, i8* noundef nonnull %call131, i32* noundef nonnull %slen, i8* noundef nonnull %add.ptr126, i32 noundef %conv135) #15
  %cmp137 = icmp slt i32 %call136, 1
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %lor.lhs.false134, %if.end123
  call void @CRYPTO_free(i8* noundef %call131, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1919) #15
  br label %end

if.end140:                                        ; preds = %lor.lhs.false134
  %21 = load i32, i32* %slen, align 4, !tbaa !60
  %idx.ext141 = sext i32 %21 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %call131, i64 %idx.ext141
  %call143 = call i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef nonnull %call17, i8* noundef nonnull %add.ptr142, i32* noundef nonnull %declen) #15
  %cmp144 = icmp slt i32 %call143, 1
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end140
  call void @CRYPTO_free(i8* noundef nonnull %call131, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1924) #15
  br label %end

if.end147:                                        ; preds = %if.end140
  %22 = load i32, i32* %declen, align 4, !tbaa !60
  %23 = load i32, i32* %slen, align 4, !tbaa !60
  %add148 = add nsw i32 %23, %22
  store i32 %add148, i32* %slen, align 4, !tbaa !60
  store i8* %call131, i8** %p, align 8, !tbaa !55
  %conv149 = sext i32 %add148 to i64
  %call150 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv149) #15
  %24 = load i8*, i8** %p, align 8, !tbaa !55
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call131 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %25 = load i32, i32* %slen, align 4, !tbaa !60
  %26 = trunc i64 %sub.ptr.sub.neg to i32
  %conv153 = add i32 %25, %26
  store i32 %conv153, i32* %slen, align 4, !tbaa !60
  call void @CRYPTO_free(i8* noundef nonnull %call131, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1933) #15
  %tobool154.not = icmp eq %struct.ssl_session_st* %call150, null
  br i1 %tobool154.not, label %if.end169, label %if.then155

if.then155:                                       ; preds = %if.end147
  %27 = load i32, i32* %slen, align 4, !tbaa !60
  %cmp156.not = icmp eq i32 %27, 0
  br i1 %cmp156.not, label %if.end159, label %if.then158

if.then158:                                       ; preds = %if.then155
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call150) #15
  br label %end

if.end159:                                        ; preds = %if.then155
  %tobool160.not = icmp eq i64 %sesslen, 0
  br i1 %tobool160.not, label %if.end164, label %if.then161

if.then161:                                       ; preds = %if.end159
  %arraydecay162 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call150, i64 0, i32 5, i64 0
  %call163 = call i8* @memcpy(i8* noundef nonnull %arraydecay162, i8* noundef %sess_id, i64 noundef %sesslen) #15
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call150, i64 0, i32 4
  store i64 %sesslen, i64* %session_id_length, align 8, !tbaa !150
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end159
  %tobool165.not = icmp eq i32 %renew_ticket.4, 0
  %. = select i1 %tobool165.not, i32 5, i32 6
  br label %end

if.end169:                                        ; preds = %if.end147
  call void @ERR_clear_error() #15
  br label %end

end:                                              ; preds = %if.end47, %if.end44, %if.then77, %if.else55, %if.end164, %if.end117, %if.end107, %lor.lhs.false111, %if.end101, %if.end97, %if.end16, %if.end13, %if.end10, %land.lhs.true7, %entry, %if.end169, %if.then158, %if.then146, %if.then139
  %ret.2 = phi i32 [ 1, %if.then139 ], [ 4, %if.then146 ], [ 4, %if.then158 ], [ 4, %if.end169 ], [ 3, %entry ], [ 4, %land.lhs.true7 ], [ 4, %if.end10 ], [ 0, %if.end13 ], [ 0, %if.end16 ], [ 1, %if.end97 ], [ 4, %if.end101 ], [ 1, %lor.lhs.false111 ], [ 1, %if.end107 ], [ 4, %if.end117 ], [ %., %if.end164 ], [ 1, %if.then77 ], [ 4, %if.else55 ], [ 4, %if.end47 ], [ 1, %if.end44 ]
  %hctx.0 = phi %struct.ssl_hmac_st* [ %call, %if.then139 ], [ %call, %if.then146 ], [ %call, %if.then158 ], [ %call, %if.end169 ], [ null, %entry ], [ null, %land.lhs.true7 ], [ null, %if.end10 ], [ null, %if.end13 ], [ %call, %if.end16 ], [ %call, %if.end97 ], [ %call, %if.end101 ], [ %call, %lor.lhs.false111 ], [ %call, %if.end107 ], [ %call, %if.end117 ], [ %call, %if.end164 ], [ %call, %if.then77 ], [ %call, %if.else55 ], [ %call, %if.end47 ], [ %call, %if.end44 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call17, %if.then139 ], [ %call17, %if.then146 ], [ %call17, %if.then158 ], [ %call17, %if.end169 ], [ null, %entry ], [ null, %land.lhs.true7 ], [ null, %if.end10 ], [ null, %if.end13 ], [ null, %if.end16 ], [ %call17, %if.end97 ], [ %call17, %if.end101 ], [ %call17, %lor.lhs.false111 ], [ %call17, %if.end107 ], [ %call17, %if.end117 ], [ %call17, %if.end164 ], [ %call17, %if.then77 ], [ %call17, %if.else55 ], [ %call17, %if.end47 ], [ %call17, %if.end44 ]
  %sess.0 = phi %struct.ssl_session_st* [ null, %if.then139 ], [ null, %if.then146 ], [ null, %if.then158 ], [ null, %if.end169 ], [ null, %entry ], [ null, %land.lhs.true7 ], [ null, %if.end10 ], [ null, %if.end13 ], [ null, %if.end16 ], [ null, %if.end97 ], [ null, %if.end101 ], [ null, %lor.lhs.false111 ], [ null, %if.end107 ], [ null, %if.end117 ], [ %call150, %if.end164 ], [ null, %if.then77 ], [ null, %if.else55 ], [ null, %if.end47 ], [ null, %if.end44 ]
  %eticklen.addr.0 = phi i64 [ %sub130, %if.then139 ], [ %sub130, %if.then146 ], [ %sub130, %if.then158 ], [ %sub130, %if.end169 ], [ 0, %entry ], [ %eticklen, %land.lhs.true7 ], [ %eticklen, %if.end10 ], [ %eticklen, %if.end13 ], [ %eticklen, %if.end16 ], [ %eticklen, %if.end97 ], [ %eticklen, %if.end101 ], [ %sub, %lor.lhs.false111 ], [ %sub, %if.end107 ], [ %sub, %if.end117 ], [ %sub130, %if.end164 ], [ %eticklen, %if.then77 ], [ %eticklen, %if.else55 ], [ %eticklen, %if.end47 ], [ %eticklen, %if.end44 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #15
  call void @ssl_hmac_free(%struct.ssl_hmac_st* noundef %hctx.0) #17
  %28 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !145
  %decrypt_ticket_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %28, i64 0, i32 77
  %29 = load i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)** %decrypt_ticket_cb, align 8, !tbaa !153
  %cmp171.not = icmp ne i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* %29, null
  %30 = add nsw i32 %ret.2, -3
  %31 = icmp ult i32 %30, 4
  %or.cond383 = select i1 %cmp171.not, i1 %31, i1 false
  br i1 %or.cond383, label %if.then185, label %if.end217

if.then185:                                       ; preds = %end
  %32 = icmp ult i64 %eticklen.addr.0, 16
  %spec.store.select = select i1 %32, i64 %eticklen.addr.0, i64 16
  %ticket_cb_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %28, i64 0, i32 78
  %33 = load i8*, i8** %ticket_cb_data, align 8, !tbaa !154
  %call193 = call i32 %29(%struct.ssl_st* noundef nonnull %s, %struct.ssl_session_st* noundef %sess.0, i8* noundef %etick, i64 noundef %spec.store.select, i32 noundef %ret.2, i8* noundef %33) #15
  switch i32 %call193, label %if.end217 [
    i32 4, label %sw.bb203
    i32 1, label %sw.bb194
    i32 2, label %sw.bb195
    i32 3, label %sw.bb203
  ]

sw.bb194:                                         ; preds = %if.then185
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %sess.0) #15
  br label %if.end217

sw.bb195:                                         ; preds = %if.then185
  %34 = add nsw i32 %ret.2, -5
  %35 = icmp ult i32 %34, -2
  %spec.select = select i1 %35, i32 4, i32 %ret.2
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %sess.0) #15
  br label %if.end217

sw.bb203:                                         ; preds = %if.then185, %if.then185
  %36 = icmp ult i32 %ret.2, 5
  br i1 %36, label %if.end217, label %if.else210

if.else210:                                       ; preds = %sw.bb203
  %cmp211 = icmp eq i32 %call193, 3
  %.384 = select i1 %cmp211, i32 5, i32 6
  br label %if.end217

if.end217:                                        ; preds = %sw.bb194, %sw.bb195, %sw.bb203, %if.else210, %if.then185, %end
  %ret.5 = phi i32 [ %ret.2, %end ], [ %spec.select, %sw.bb195 ], [ 2, %sw.bb194 ], [ 1, %sw.bb203 ], [ %.384, %if.else210 ], [ 1, %if.then185 ]
  %sess.2 = phi %struct.ssl_session_st* [ %sess.0, %end ], [ null, %sw.bb195 ], [ null, %sw.bb194 ], [ %sess.0, %sw.bb203 ], [ %sess.0, %if.else210 ], [ %sess.0, %if.then185 ]
  %session_secret_cb219 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  %37 = load i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb219, align 8, !tbaa !146
  %cmp220 = icmp eq i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %37, null
  br i1 %cmp220, label %if.then238, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.end217
  %method223 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %38 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method223, align 8, !tbaa !4
  %ssl3_enc224 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %38, i64 0, i32 25
  %39 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc224, align 8, !tbaa !61
  %enc_flags225 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %39, i64 0, i32 12
  %40 = load i32, i32* %enc_flags225, align 8, !tbaa !62
  %and226 = and i32 %40, 8
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %land.lhs.true228, label %if.end242

land.lhs.true228:                                 ; preds = %lor.lhs.false222
  %version230 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %38, i64 0, i32 0
  %41 = load i32, i32* %version230, align 8, !tbaa !25
  %cmp231 = icmp slt i32 %41, 772
  %cmp236.not = icmp eq i32 %41, 65536
  %or.cond385 = or i1 %cmp231, %cmp236.not
  br i1 %or.cond385, label %if.end242, label %if.then238

if.then238:                                       ; preds = %land.lhs.true228, %if.end217
  switch i32 %ret.5, label %if.end242 [
    i32 4, label %sw.bb239
    i32 6, label %sw.bb239
    i32 3, label %sw.bb239
  ]

sw.bb239:                                         ; preds = %if.then238, %if.then238, %if.then238
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 1, i32* %ticket_expected, align 8, !tbaa !138
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %sw.bb239, %land.lhs.true228, %lor.lhs.false222
  store %struct.ssl_session_st* %sess.2, %struct.ssl_session_st** %psess, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %ret.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #11 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !155
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_hmac_st* @ssl_hmac_new(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3377) #15
  %0 = bitcast i8* %call to %struct.ssl_hmac_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ticket_key_evp_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 5
  %1 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)** %ticket_key_evp_cb, align 8, !tbaa !147
  %cmp1 = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %ticket_key_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 4
  %2 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)** %ticket_key_cb, align 8, !tbaa !148
  %cmp3.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)* %2, null
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @ssl_hmac_old_new(%struct.ssl_hmac_st* noundef nonnull %0) #15
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !95
  %call9 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %4) #15
  %cmp10 = icmp eq %struct.evp_mac_st* %call9, null
  br i1 %cmp10, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %call11 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call9) #15
  %ctx12 = bitcast i8* %call to %struct.evp_mac_ctx_st**
  store %struct.evp_mac_ctx_st* %call11, %struct.evp_mac_ctx_st** %ctx12, align 8, !tbaa !156
  %cmp13 = icmp eq %struct.evp_mac_ctx_st* %call11, null
  br i1 %cmp13, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call9) #15
  br label %cleanup

err:                                              ; preds = %if.end8, %lor.lhs.false, %if.then4
  %mac.0 = phi %struct.evp_mac_st* [ null, %if.then4 ], [ null, %if.end8 ], [ %call9, %lor.lhs.false ]
  %ctx16 = bitcast i8* %call to %struct.evp_mac_ctx_st**
  %5 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx16, align 8, !tbaa !156
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %5) #15
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef %mac.0) #15
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3398) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry, %err, %if.end15
  %retval.0 = phi %struct.ssl_hmac_st* [ null, %err ], [ %0, %if.end15 ], [ null, %entry ], [ %0, %if.then4 ]
  ret %struct.ssl_hmac_st* %retval.0
}

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_mac_ctx_st* @ssl_hmac_get0_EVP_MAC_CTX(%struct.ssl_hmac_st* nocapture noundef readonly %ctx) local_unnamed_addr #11 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  ret %struct.evp_mac_ctx_st* %0
}

declare %struct.hmac_ctx_st* @ssl_hmac_get0_HMAC_CTX(%struct.ssl_hmac_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_init(%struct.ssl_hmac_st* noundef %ctx, i8* noundef %key, i64 noundef %len, i8* noundef %md) local_unnamed_addr #2 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %1 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  %cmp.not = icmp eq %struct.evp_mac_ctx_st* %1, null
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params20 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %md, i64 noundef 0) #15
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #15
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #16
  %4 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  %call = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef %4, i8* noundef %key, i64 noundef %len, %struct.ossl_param_st* noundef nonnull %arraydecay) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then, %entry
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %5 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !159
  %cmp7.not = icmp eq %struct.hmac_ctx_st* %5, null
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @ssl_hmac_old_init(%struct.ssl_hmac_st* noundef nonnull %ctx, i8* noundef %key, i64 noundef %len, i8* noundef %md) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ 1, %if.then ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i64 @ssl_hmac_size(%struct.ssl_hmac_st* noundef %ctx) local_unnamed_addr #2 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  %cmp.not = icmp eq %struct.evp_mac_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* noundef nonnull %0) #15
  br label %return

if.end:                                           ; preds = %entry
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %1 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !159
  %cmp3.not = icmp eq %struct.hmac_ctx_st* %1, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i64 @ssl_hmac_old_size(%struct.ssl_hmac_st* noundef nonnull %ctx) #15
  br label %return

return:                                           ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i64 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_update(%struct.ssl_hmac_st* noundef %ctx, i8* noundef %data, i64 noundef %len) local_unnamed_addr #2 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  %cmp.not = icmp eq %struct.evp_mac_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %0, i8* noundef %data, i64 noundef %len) #15
  br label %return

if.end:                                           ; preds = %entry
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %1 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !159
  %cmp3.not = icmp eq %struct.hmac_ctx_st* %1, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ssl_hmac_old_update(%struct.ssl_hmac_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %len) #15
  br label %return

return:                                           ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_final(%struct.ssl_hmac_st* noundef %ctx, i8* noundef %md, i64* noundef %len, i64 noundef %max_size) local_unnamed_addr #2 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  %cmp.not = icmp eq %struct.evp_mac_ctx_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %0, i8* noundef %md, i64* noundef %len, i64 noundef %max_size) #15
  br label %return

if.end:                                           ; preds = %entry
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %1 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !159
  %cmp3.not = icmp eq %struct.hmac_ctx_st* %1, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ssl_hmac_old_final(%struct.ssl_hmac_st* noundef nonnull %ctx, i8* noundef %md, i64* noundef %len) #15
  br label %return

return:                                           ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #0

declare %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #0

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #0

declare void @ERR_clear_error() local_unnamed_addr #0

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define void @ssl_hmac_free(%struct.ssl_hmac_st* noundef %ctx) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ssl_hmac_st* %ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 0
  %0 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %ctx1, align 8, !tbaa !156
  tail call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %0) #15
  tail call void @ssl_hmac_old_free(%struct.ssl_hmac_st* noundef nonnull %ctx) #15
  %1 = bitcast %struct.ssl_hmac_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3409) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls12_sigalg_allowed(%struct.ssl_st* noundef %s, i32 noundef %op, %struct.sigalg_lookup_st* noundef %lu) unnamed_addr #2 {
entry:
  %sigalgstr = alloca [2 x i8], align 1
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %sigalgstr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #16
  %cmp = icmp eq %struct.sigalg_lookup_st* %lu, null
  br i1 %cmp, label %cleanup129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 8
  %1 = load i32, i32* %enabled, align 4, !tbaa !93
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup129, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %4, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end11.thread

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !25
  %cmp3 = icmp slt i32 %5, 772
  %cmp7.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp3, %cmp7.not
  br i1 %or.cond, label %if.end11, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 4
  %6 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp9 = icmp eq i32 %6, 116
  br i1 %cmp9, label %cleanup129, label %if.end11

if.end11:                                         ; preds = %land.lhs.true8, %land.lhs.true
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %7 = load i32, i32* %server, align 8, !tbaa !71
  %tobool12.not.not = icmp eq i32 %7, 0
  br i1 %tobool12.not.not, label %land.lhs.true19, label %if.end33

if.end11.thread:                                  ; preds = %if.end
  %server182 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  br label %if.end33

land.lhs.true19:                                  ; preds = %if.end11
  %min_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  %8 = load i32, i32* %min_ver, align 4, !tbaa !127
  %cmp20 = icmp sgt i32 %8, 771
  br i1 %cmp20, label %land.lhs.true21, label %if.end33

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %sig22 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 4
  %9 = load i32, i32* %sig22, align 4, !tbaa !94
  %cmp23 = icmp eq i32 %9, 116
  br i1 %cmp23, label %cleanup129, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true21
  %hash_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 3
  %10 = load i32, i32* %hash_idx, align 8, !tbaa !92
  switch i32 %10, label %if.end33 [
    i32 1, label %cleanup129
    i32 0, label %cleanup129
    i32 10, label %cleanup129
  ]

if.end33:                                         ; preds = %if.end11, %if.end11.thread, %lor.lhs.false24, %land.lhs.true19
  %server184 = phi i32* [ %server, %lor.lhs.false24 ], [ %server, %land.lhs.true19 ], [ %server, %if.end11 ], [ %server182, %if.end11.thread ]
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 5
  %12 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %conv = sext i32 %12 to i64
  %call = tail call i32 @ssl_cert_is_disabled(%struct.ssl_ctx_st* noundef %11, i64 noundef %conv) #15
  %tobool34.not = icmp eq i32 %call, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup129

if.end36:                                         ; preds = %if.end33
  %sig37 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 4
  %13 = load i32, i32* %sig37, align 4, !tbaa !94
  switch i32 %13, label %if.end117 [
    i32 979, label %if.then48
    i32 980, label %if.then48
    i32 811, label %if.then48
  ]

if.then48:                                        ; preds = %if.end36, %if.end36, %if.end36
  %14 = load i32, i32* %server184, align 8, !tbaa !71
  %tobool50.not = icmp eq i32 %14, 0
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  br i1 %tobool50.not, label %land.lhs.true71, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.then48
  %ssl3_enc53 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 25
  %16 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc53, align 8, !tbaa !61
  %enc_flags54 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %16, i64 0, i32 12
  %17 = load i32, i32* %enc_flags54, align 8, !tbaa !62
  %and55 = and i32 %17, 8
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.end117

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %version59 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 0
  %18 = load i32, i32* %version59, align 8, !tbaa !25
  %cmp60 = icmp slt i32 %18, 772
  %cmp65.not = icmp eq i32 %18, 65536
  %or.cond180 = or i1 %cmp60, %cmp65.not
  br i1 %or.cond180, label %if.end117, label %cleanup129

land.lhs.true71:                                  ; preds = %if.then48
  %version73 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 0
  %19 = load i32, i32* %version73, align 8, !tbaa !25
  %cmp74 = icmp eq i32 %19, 65536
  br i1 %cmp74, label %land.lhs.true76, label %if.end117

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  %20 = load i32, i32* %max_ver, align 8, !tbaa !124
  %cmp79 = icmp sgt i32 %20, 771
  br i1 %cmp79, label %if.then81, label %if.end117

if.then81:                                        ; preds = %land.lhs.true76
  %min_ver84 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  %21 = load i32, i32* %min_ver84, align 4, !tbaa !127
  %cmp85 = icmp sgt i32 %21, 771
  br i1 %cmp85, label %cleanup129, label %if.end88

if.end88:                                         ; preds = %if.then81
  %call89 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #15
  %cmp90.not = icmp eq %struct.stack_st_SSL_CIPHER* %call89, null
  br i1 %cmp90.not, label %cleanup129, label %cond.end

cond.end:                                         ; preds = %if.end88
  %call92 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call89) #17
  %call93 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call92) #15
  %cmp94190 = icmp sgt i32 %call93, 0
  br i1 %cmp94190, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %call96 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call89) #17
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call97 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call96, i32 noundef %i.0191) #15
  %22 = bitcast i8* %call97 to %struct.ssl_cipher_st*
  %call98 = tail call i32 @ssl_cipher_disabled(%struct.ssl_st* noundef %s, %struct.ssl_cipher_st* noundef %22, i32 noundef 65537, i32 noundef 0) #17
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  %algorithm_mkey = getelementptr inbounds i8, i8* %call97, i64 28
  %23 = bitcast i8* %algorithm_mkey to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !123
  %and102 = and i32 %24, 528
  %cmp103.not.not = icmp eq i32 %and102, 0
  br i1 %cmp103.not.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %cleanup
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, %call93
  br i1 %exitcond.not, label %cleanup129, label %for.body, !llvm.loop !160

for.end:                                          ; preds = %cleanup, %cond.end
  %i.0.lcssa = phi i32 [ 0, %cond.end ], [ %i.0191, %cleanup ]
  %cmp107.not = icmp eq i32 %i.0.lcssa, %call93
  br i1 %cmp107.not, label %cleanup129, label %if.end117

if.end117:                                        ; preds = %land.lhs.true51, %land.lhs.true57, %if.end36, %land.lhs.true71, %land.lhs.true76, %for.end
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call119 = tail call fastcc i32 @sigalg_security_bits(%struct.ssl_ctx_st* noundef %25, %struct.sigalg_lookup_st* noundef nonnull %lu) #17
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 1
  %26 = load i16, i16* %sigalg, align 8, !tbaa !111
  %27 = lshr i16 %26, 8
  %conv122 = trunc i16 %27 to i8
  store i8 %conv122, i8* %0, align 1, !tbaa !69
  %conv126 = trunc i16 %26 to i8
  %arrayidx127 = getelementptr inbounds [2 x i8], [2 x i8]* %sigalgstr, i64 0, i64 1
  store i8 %conv126, i8* %arrayidx127, align 1, !tbaa !69
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 2
  %28 = load i32, i32* %hash, align 4, !tbaa !90
  %call128 = call i32 @ssl_security(%struct.ssl_st* noundef %s, i32 noundef %op, i32 noundef %call119, i32 noundef %28, i8* noundef nonnull %0) #15
  br label %cleanup129

cleanup129:                                       ; preds = %for.inc, %if.end88, %if.then81, %land.lhs.true57, %if.end33, %land.lhs.true21, %lor.lhs.false24, %lor.lhs.false24, %lor.lhs.false24, %land.lhs.true8, %entry, %lor.lhs.false, %for.end, %if.end117
  %retval.1 = phi i32 [ %call128, %if.end117 ], [ 0, %for.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true8 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false24 ], [ 0, %land.lhs.true21 ], [ 0, %if.end33 ], [ 0, %land.lhs.true57 ], [ 0, %if.then81 ], [ 0, %if.end88 ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #16
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls12_copy_sigalgs(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i16* nocapture noundef readonly %psig, i64 noundef %psiglen) local_unnamed_addr #2 {
entry:
  %cmp58.not = icmp eq i64 %psiglen, 0
  br i1 %cmp58.not, label %if.then33, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %rv.062 = phi i32 [ 0, %for.body.lr.ph ], [ %rv.2.ph, %for.inc ]
  %i.061 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %psig.addr.059 = phi i16* [ %psig, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %0 = load i16, i16* %psig.addr.059, align 2, !tbaa !34
  %call = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %0) #17
  %cmp1 = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp1, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call2 = tail call fastcc i32 @tls12_sigalg_allowed(%struct.ssl_st* noundef %s, i32 noundef 327691, %struct.sigalg_lookup_st* noundef nonnull %call) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i16, i16* %psig.addr.059, align 2, !tbaa !34
  %conv = zext i16 %1 to i32
  %call3 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup35, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %rv.062, 0
  br i1 %cmp7, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %4, 8
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !25
  %cmp12 = icmp slt i32 %5, 772
  %cmp17.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp12, %cmp17.not
  br i1 %or.cond, label %for.inc, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true10
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 4
  %6 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp20.not = icmp eq i32 %6, 6
  br i1 %cmp20.not, label %for.inc, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %lor.lhs.false19
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 2
  %7 = load i32, i32* %hash, align 4, !tbaa !90
  %switch.selectcmp.case1 = icmp ne i32 %7, 64
  %switch.selectcmp.case2 = icmp ne i32 %7, 675
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = zext i1 %not.switch.selectcmp to i32
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true10, %land.lhs.true22, %lor.lhs.false, %for.body, %lor.lhs.false19, %if.end6
  %rv.2.ph = phi i32 [ 1, %if.end6 ], [ 0, %lor.lhs.false19 ], [ %rv.062, %for.body ], [ %rv.062, %lor.lhs.false ], [ %8, %land.lhs.true22 ], [ 1, %land.lhs.true10 ], [ 1, %land.lhs.true ]
  %inc = add nuw i64 %i.061, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %psig.addr.059, i64 1
  %exitcond.not = icmp eq i64 %inc, %psiglen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !161

for.end:                                          ; preds = %for.inc
  %cmp31 = icmp eq i32 %rv.2.ph, 0
  br i1 %cmp31, label %if.then33, label %cleanup35

if.then33:                                        ; preds = %entry, %for.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2166, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tls12_copy_sigalgs, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 118, i8* noundef null) #15
  br label %cleanup35

cleanup35:                                        ; preds = %if.end, %for.end, %if.then33
  %retval.2 = phi i32 [ 0, %if.then33 ], [ %rv.2.ph, %for.end ], [ 0, %if.end ]
  ret i32 %retval.2
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_save_u16(%struct.PACKET* nocapture noundef %pkt, i16** nocapture noundef %pdest, i64* nocapture noundef writeonly %pdestlen) local_unnamed_addr #2 {
entry:
  %stmp = alloca i32, align 4
  %0 = bitcast i32* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %cmp = icmp ne i64 %call, 0
  %and = and i64 %call, 1
  %cmp1.not = icmp eq i64 %and, 0
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %call, 1
  %mul = and i64 %call, -2
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2258) #15
  %1 = bitcast i8* %call2 to i16*
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp631.not = icmp ult i64 %call, 2
  br i1 %cmp631.not, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.cond.preheader
  %umax = call i64 @llvm.umax.i64(i64 %shr, i64 1)
  br label %land.rhs

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2259, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tls1_save_u16, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.preheader, %for.body
  %i.032 = phi i64 [ %inc, %for.body ], [ 0, %land.rhs.preheader ]
  %call7 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %stmp) #17
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %2 = load i32, i32* %stmp, align 4, !tbaa !60
  %conv = trunc i32 %2 to i16
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %i.032
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !34
  %inc = add nuw nsw i64 %i.032, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %land.rhs, !llvm.loop !162

for.end:                                          ; preds = %land.rhs, %for.body, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %umax, %for.body ], [ %i.032, %land.rhs ]
  %cmp8.not = icmp eq i64 %i.0.lcssa, %shr
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2266) #15
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %3 = bitcast i16** %pdest to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !55
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2270) #15
  store i8* %call2, i8** %3, align 8, !tbaa !55
  store i64 %shr, i64* %pdestlen, align 8, !tbaa !59
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11, %if.then10, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then10 ], [ 1, %if.end11 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_save_sigalgs(%struct.ssl_st* nocapture noundef %s, %struct.PACKET* nocapture noundef %pkt, i32 noundef %cert) local_unnamed_addr #2 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %2, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert1, align 8, !tbaa !51
  %cmp = icmp eq %struct.cert_st* %3, null
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq i32 %cert, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %peer_cert_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 31
  %call = tail call i32 @tls1_save_u16(%struct.PACKET* noundef %pkt, i16** noundef nonnull %peer_cert_sigalgs, i64* noundef nonnull %peer_cert_sigalgslen) #17
  br label %return

if.else:                                          ; preds = %if.end3
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %peer_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 30
  %call12 = tail call i32 @tls1_save_u16(%struct.PACKET* noundef %pkt, i16** noundef nonnull %peer_sigalgs, i64* noundef nonnull %peer_sigalgslen) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %if.else, %if.then5
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %call12, %if.else ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_set_shared_sigalgs(%struct.ssl_st* noundef %s) unnamed_addr #2 {
entry:
  %conf = alloca i16*, align 8
  %0 = bitcast i16** %conf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 4
  %2 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %2, 196608
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %3 = bitcast %struct.sigalg_lookup_st*** %shared_sigalgs to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !131
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2206) #15
  store %struct.sigalg_lookup_st** null, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  store i64 0, i64* %shared_sigalgslen, align 8, !tbaa !132
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %5 = load i32, i32* %server, align 8, !tbaa !71
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 10
  %6 = load i16*, i16** %client_sigalgs, align 8, !tbaa !105
  %tobool3 = icmp eq i16* %6, null
  %tobool5 = icmp ne i32 %and, 0
  %or.cond = select i1 %tobool3, i1 true, i1 %tobool5
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i16* %6, i16** %conf, align 8, !tbaa !55
  %client_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 11
  %7 = load i64, i64* %client_sigalgslen, align 8, !tbaa !106
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %entry
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 8
  %8 = load i16*, i16** %conf_sigalgs, align 8, !tbaa !107
  %tobool7 = icmp eq i16* %8, null
  %tobool9 = icmp ne i32 %and, 0
  %or.cond48 = select i1 %tobool7, i1 true, i1 %tobool9
  br i1 %or.cond48, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  store i16* %8, i16** %conf, align 8, !tbaa !55
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 9
  %9 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !108
  br label %if.end13

if.else12:                                        ; preds = %if.else
  %call = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 0, i16** noundef nonnull %conf) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else12, %if.then
  %conflen.0 = phi i64 [ %call, %if.else12 ], [ %9, %if.then10 ], [ %7, %if.then ]
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %10 = load i64, i64* %options, align 8, !tbaa !75
  %and14 = and i64 %10, 4194304
  %tobool15 = icmp ne i64 %and14, 0
  %tobool16 = icmp ne i32 %and, 0
  %or.cond49 = select i1 %tobool15, i1 true, i1 %tobool16
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %peer_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 30
  %11 = load i64, i64* %peer_sigalgslen, align 8, !tbaa !163
  %peer_sigalgs.conf = select i1 %or.cond49, i16** %peer_sigalgs, i16** %conf
  %conflen.0. = select i1 %or.cond49, i64 %conflen.0, i64 %11
  %.conflen.0 = select i1 %or.cond49, i64 %11, i64 %conflen.0
  %conf.peer_sigalgs = select i1 %or.cond49, i16** %conf, i16** %peer_sigalgs
  %pref.0 = load i16*, i16** %conf.peer_sigalgs, align 8, !tbaa !55
  %allow.0 = load i16*, i16** %peer_sigalgs.conf, align 8, !tbaa !55
  %call28 = tail call fastcc i64 @tls12_shared_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st** noundef null, i16* noundef %pref.0, i64 noundef %conflen.0., i16* noundef %allow.0, i64 noundef %.conflen.0) #17
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %if.end13
  %mul = shl i64 %call28, 3
  %call31 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2231) #15
  %12 = bitcast i8* %call31 to %struct.sigalg_lookup_st**
  %cmp = icmp eq i8* %call31, null
  br i1 %cmp, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2232, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls1_set_shared_sigalgs, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end33:                                         ; preds = %if.then30
  %call34 = tail call fastcc i64 @tls12_shared_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st** noundef nonnull %12, i16* noundef %pref.0, i64 noundef %conflen.0., i16* noundef %allow.0, i64 noundef %.conflen.0) #17
  br label %if.end36

if.end36:                                         ; preds = %if.end13, %if.end33
  %nmatch.0 = phi i64 [ %call34, %if.end33 ], [ 0, %if.end13 ]
  %salgs.0 = phi %struct.sigalg_lookup_st** [ %12, %if.end33 ], [ null, %if.end13 ]
  store %struct.sigalg_lookup_st** %salgs.0, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  store i64 %nmatch.0, i64* %shared_sigalgslen, align 8, !tbaa !132
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then32
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 1, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare i32 @ssl_cert_is_disabled(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @SSL_get_sigalgs(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx, i32* noundef writeonly %psign, i32* noundef writeonly %phash, i32* noundef writeonly %psignhash, i8* noundef writeonly %rsig, i8* noundef writeonly %rhash) local_unnamed_addr #12 {
entry:
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %0 = load i16*, i16** %peer_sigalgs, align 8, !tbaa !134
  %peer_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 30
  %1 = load i64, i64* %peer_sigalgslen, align 8, !tbaa !163
  %cmp = icmp eq i16* %0, null
  %cmp3 = icmp ugt i64 %1, 2147483647
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup51, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %idx, -1
  %conv = trunc i64 %1 to i32
  br i1 %cmp4, label %if.then5, label %cleanup51

if.then5:                                         ; preds = %if.end
  %cmp6.not = icmp ugt i32 %conv, %idx
  br i1 %cmp6.not, label %if.end9, label %cleanup51

if.end9:                                          ; preds = %if.then5
  %idx.ext78 = zext i32 %idx to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext78
  %cmp10.not = icmp eq i8* %rhash, null
  br i1 %cmp10.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end9
  %2 = load i16, i16* %add.ptr, align 2, !tbaa !34
  %3 = lshr i16 %2, 8
  %conv14 = trunc i16 %3 to i8
  store i8 %conv14, i8* %rhash, align 1, !tbaa !69
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9
  %cmp16.not = icmp eq i8* %rsig, null
  br i1 %cmp16.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end15
  %4 = load i16, i16* %add.ptr, align 2, !tbaa !34
  %conv21 = trunc i16 %4 to i8
  store i8 %conv21, i8* %rsig, align 1, !tbaa !69
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15
  %5 = load i16, i16* %add.ptr, align 2, !tbaa !34
  %call = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %5) #17
  %cmp23.not = icmp eq i32* %psign, null
  br i1 %cmp23.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end22
  %cmp26.not = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp26.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then25
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 4
  %6 = load i32, i32* %sig, align 4, !tbaa !94
  br label %cond.end

cond.end:                                         ; preds = %if.then25, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %if.then25 ]
  store i32 %cond, i32* %psign, align 4, !tbaa !60
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.end22
  %cmp29.not = icmp eq i32* %phash, null
  br i1 %cmp29.not, label %if.end38, label %if.then31

if.then31:                                        ; preds = %if.end28
  %cmp32.not = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp32.not, label %cond.end36, label %cond.true34

cond.true34:                                      ; preds = %if.then31
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 2
  %7 = load i32, i32* %hash, align 4, !tbaa !90
  br label %cond.end36

cond.end36:                                       ; preds = %if.then31, %cond.true34
  %cond37 = phi i32 [ %7, %cond.true34 ], [ 0, %if.then31 ]
  store i32 %cond37, i32* %phash, align 4, !tbaa !60
  br label %if.end38

if.end38:                                         ; preds = %cond.end36, %if.end28
  %cmp39.not = icmp eq i32* %psignhash, null
  br i1 %cmp39.not, label %cleanup51, label %if.then41

if.then41:                                        ; preds = %if.end38
  %cmp42.not = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp42.not, label %cond.end46, label %cond.true44

cond.true44:                                      ; preds = %if.then41
  %sigandhash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call, i64 0, i32 6
  %8 = load i32, i32* %sigandhash, align 4, !tbaa !164
  br label %cond.end46

cond.end46:                                       ; preds = %if.then41, %cond.true44
  %cond47 = phi i32 [ %8, %cond.true44 ], [ 0, %if.then41 ]
  store i32 %cond47, i32* %psignhash, align 4, !tbaa !60
  br label %cleanup51

cleanup51:                                        ; preds = %if.end, %if.end38, %cond.end46, %if.then5, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 0, %if.then5 ], [ %conv, %cond.end46 ], [ %conv, %if.end38 ], [ %conv, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_get_shared_sigalgs(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx, i32* noundef writeonly %psign, i32* noundef writeonly %phash, i32* noundef writeonly %psignhash, i8* noundef writeonly %rsig, i8* noundef writeonly %rhash) local_unnamed_addr #7 {
entry:
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %0 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %cmp = icmp eq %struct.sigalg_lookup_st** %0, null
  %cmp1 = icmp slt i32 %idx, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  %1 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %conv = trunc i64 %1 to i32
  %cmp3.not = icmp sle i32 %conv, %idx
  %cmp7 = icmp ugt i64 %1, 2147483647
  %or.cond54 = or i1 %cmp7, %cmp3.not
  br i1 %or.cond54, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom55 = zext i32 %idx to i64
  %arrayidx = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %0, i64 %idxprom55
  %2 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx, align 8, !tbaa !55
  %cmp10.not = icmp eq i32* %phash, null
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 2
  %3 = load i32, i32* %hash, align 4, !tbaa !90
  store i32 %3, i32* %phash, align 4, !tbaa !60
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %cmp14.not = icmp eq i32* %psign, null
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 4
  %4 = load i32, i32* %sig, align 4, !tbaa !94
  store i32 %4, i32* %psign, align 4, !tbaa !60
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %cmp18.not = icmp eq i32* %psignhash, null
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  %sigandhash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 6
  %5 = load i32, i32* %sigandhash, align 4, !tbaa !164
  store i32 %5, i32* %psignhash, align 4, !tbaa !60
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %cmp22.not = icmp eq i8* %rsig, null
  br i1 %cmp22.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end21
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 1
  %6 = load i16, i16* %sigalg, align 8, !tbaa !111
  %conv26 = trunc i16 %6 to i8
  store i8 %conv26, i8* %rsig, align 1, !tbaa !69
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21
  %cmp28.not = icmp eq i8* %rhash, null
  br i1 %cmp28.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end27
  %sigalg31 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 1
  %7 = load i16, i16* %sigalg31, align 8, !tbaa !111
  %8 = lshr i16 %7, 8
  %conv34 = trunc i16 %8 to i8
  store i8 %conv34, i8* %rhash, align 1, !tbaa !69
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27
  %9 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %conv37 = trunc i64 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false2, %if.end35
  %retval.0 = phi i32 [ %conv37, %if.end35 ], [ 0, %lor.lhs.false2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef %c, i8* noundef %str, i32 noundef %client) local_unnamed_addr #2 {
entry:
  %sig = alloca %struct.sig_cb_st, align 8
  %0 = bitcast %struct.sig_cb_st* %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #16
  %sigalgcnt = getelementptr inbounds %struct.sig_cb_st, %struct.sig_cb_st* %sig, i64 0, i32 0
  store i64 0, i64* %sigalgcnt, align 8, !tbaa !165
  %call = call i32 @CONF_parse_list(i8* noundef %str, i32 noundef 58, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @sig_cb, i8* noundef nonnull %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.cert_st* %c, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.sig_cb_st, %struct.sig_cb_st* %sig, i64 0, i32 1, i64 0
  %1 = load i64, i64* %sigalgcnt, align 8, !tbaa !165
  %call4 = call i32 @tls1_set_raw_sigalgs(%struct.cert_st* noundef nonnull %c, i16* noundef nonnull %arraydecay, i64 noundef %1, i32 noundef %client) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ 0, %entry ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sig_cb(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef %arg) #2 {
entry:
  %etmp = alloca [40 x i8], align 16
  %sig_alg = alloca i32, align 4
  %hash_alg = alloca i32, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %etmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  %1 = bitcast i32* %sig_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 0, i32* %sig_alg, align 4, !tbaa !60
  %2 = bitcast i32* %hash_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  store i32 0, i32* %hash_alg, align 4, !tbaa !60
  %cmp = icmp eq i8* %elem, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sigalgcnt = bitcast i8* %arg to i64*
  %3 = load i64, i64* %sigalgcnt, align 8, !tbaa !165
  %cmp1 = icmp eq i64 %3, 56
  %cmp4 = icmp sgt i32 %len, 39
  %or.cond130 = or i1 %cmp4, %cmp1
  br i1 %or.cond130, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %conv = sext i32 %len to i64
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %elem, i64 noundef %conv) #15
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %etmp, i64 0, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !69
  %call8 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 43) #18
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %for.body, label %if.else

for.body:                                         ; preds = %if.end6, %for.inc
  %s.0142 = phi %struct.sigalg_lookup_st* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([28 x %struct.sigalg_lookup_st], [28 x %struct.sigalg_lookup_st]* @sigalg_lookup_tbl, i64 0, i64 0), %if.end6 ]
  %i.0141 = phi i64 [ %inc25, %for.inc ], [ 0, %if.end6 ]
  %name = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.0142, i64 0, i32 0
  %4 = load i8*, i8** %name, align 8, !tbaa !167
  %cmp14.not = icmp eq i8* %4, null
  br i1 %cmp14.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call18 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull %4) #18
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %land.lhs.true
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.0142, i64 0, i32 1
  %5 = load i16, i16* %sigalg, align 8, !tbaa !111
  %sigalgs = getelementptr inbounds i8, i8* %arg, i64 8
  %6 = bitcast i8* %sigalgs to [56 x i16]*
  %7 = load i64, i64* %sigalgcnt, align 8, !tbaa !165
  %inc = add i64 %7, 1
  store i64 %inc, i64* %sigalgcnt, align 8, !tbaa !165
  %arrayidx23 = getelementptr inbounds [56 x i16], [56 x i16]* %6, i64 0, i64 %7
  store i16 %5, i16* %arrayidx23, align 2, !tbaa !34
  br label %if.end67

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc25 = add nuw nsw i64 %i.0141, 1
  %incdec.ptr = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.0142, i64 1
  %exitcond148.not = icmp eq i64 %inc25, 28
  br i1 %exitcond148.not, label %cleanup, label %for.body, !llvm.loop !168

if.else:                                          ; preds = %if.end6
  store i8 0, i8* %call8, align 1, !tbaa !69
  %incdec.ptr30 = getelementptr inbounds i8, i8* %call8, i64 1
  %8 = load i8, i8* %incdec.ptr30, align 1, !tbaa !69
  %cmp32 = icmp eq i8 %8, 0
  br i1 %cmp32, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.else
  call fastcc void @get_sigorhash(i32* noundef nonnull %sig_alg, i32* noundef nonnull %hash_alg, i8* noundef nonnull %0) #17
  call fastcc void @get_sigorhash(i32* noundef nonnull %sig_alg, i32* noundef nonnull %hash_alg, i8* noundef nonnull %incdec.ptr30) #17
  %9 = load i32, i32* %sig_alg, align 4, !tbaa !60
  %cmp37 = icmp eq i32 %9, 0
  %10 = load i32, i32* %hash_alg, align 4
  %cmp39 = icmp eq i32 %10, 0
  %or.cond = select i1 %cmp37, i1 true, i1 %cmp39
  br i1 %or.cond, label %cleanup, label %for.body46

for.body46:                                       ; preds = %if.end35, %for.inc59.1
  %s.1139 = phi %struct.sigalg_lookup_st* [ %incdec.ptr61.1, %for.inc59.1 ], [ getelementptr inbounds ([28 x %struct.sigalg_lookup_st], [28 x %struct.sigalg_lookup_st]* @sigalg_lookup_tbl, i64 0, i64 0), %if.end35 ]
  %i.1138 = phi i64 [ %inc60.1, %for.inc59.1 ], [ 0, %if.end35 ]
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 0, i32 2
  %11 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp47 = icmp eq i32 %11, %10
  br i1 %cmp47, label %land.lhs.true49, label %for.inc59

land.lhs.true49:                                  ; preds = %for.body46
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 0, i32 4
  %12 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp50 = icmp eq i32 %12, %9
  br i1 %cmp50, label %for.end62.thread, label %for.inc59

for.end62.thread.split.loop.exit:                 ; preds = %land.lhs.true49.1
  %incdec.ptr61.le = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 1
  br label %for.end62.thread

for.end62.thread:                                 ; preds = %land.lhs.true49, %for.end62.thread.split.loop.exit
  %s.1139.lcssa = phi %struct.sigalg_lookup_st* [ %incdec.ptr61.le, %for.end62.thread.split.loop.exit ], [ %s.1139, %land.lhs.true49 ]
  %sigalg53 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139.lcssa, i64 0, i32 1
  %13 = load i16, i16* %sigalg53, align 8, !tbaa !111
  %sigalgs54 = getelementptr inbounds i8, i8* %arg, i64 8
  %14 = bitcast i8* %sigalgs54 to [56 x i16]*
  %15 = load i64, i64* %sigalgcnt, align 8, !tbaa !165
  %inc56 = add i64 %15, 1
  store i64 %inc56, i64* %sigalgcnt, align 8, !tbaa !165
  %arrayidx57 = getelementptr inbounds [56 x i16], [56 x i16]* %14, i64 0, i64 %15
  store i16 %13, i16* %arrayidx57, align 2, !tbaa !34
  br label %if.end67

for.inc59:                                        ; preds = %for.body46, %land.lhs.true49
  %hash.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 1, i32 2
  %16 = load i32, i32* %hash.1, align 4, !tbaa !90
  %cmp47.1 = icmp eq i32 %16, %10
  br i1 %cmp47.1, label %land.lhs.true49.1, label %for.inc59.1

land.lhs.true49.1:                                ; preds = %for.inc59
  %sig.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 1, i32 4
  %17 = load i32, i32* %sig.1, align 4, !tbaa !94
  %cmp50.1 = icmp eq i32 %17, %9
  br i1 %cmp50.1, label %for.end62.thread.split.loop.exit, label %for.inc59.1

for.inc59.1:                                      ; preds = %land.lhs.true49.1, %for.inc59
  %inc60.1 = add nuw nsw i64 %i.1138, 2
  %incdec.ptr61.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %s.1139, i64 2
  %exitcond.not.1 = icmp eq i64 %inc60.1, 28
  br i1 %exitcond.not.1, label %cleanup, label %for.body46, !llvm.loop !169

if.end67:                                         ; preds = %for.end62.thread, %for.end.thread
  %18 = load i64, i64* %sigalgcnt, align 8, !tbaa !165
  %sub = add i64 %18, -1
  %cmp70144.not = icmp eq i64 %sub, 0
  br i1 %cmp70144.not, label %cleanup, label %for.body72.lr.ph

for.body72.lr.ph:                                 ; preds = %if.end67
  %sigalgs73 = getelementptr inbounds i8, i8* %arg, i64 8
  %19 = bitcast i8* %sigalgs73 to [56 x i16]*
  %arrayidx79 = getelementptr inbounds [56 x i16], [56 x i16]* %19, i64 0, i64 %sub
  %20 = load i16, i16* %arrayidx79, align 2, !tbaa !34
  br label %for.body72

for.cond68:                                       ; preds = %for.body72
  %exitcond149.not = icmp eq i64 %inc87, %sub
  br i1 %exitcond149.not, label %cleanup, label %for.body72, !llvm.loop !170

for.body72:                                       ; preds = %for.body72.lr.ph, %for.cond68
  %i.2145 = phi i64 [ 0, %for.body72.lr.ph ], [ %inc87, %for.cond68 ]
  %arrayidx74 = getelementptr inbounds [56 x i16], [56 x i16]* %19, i64 0, i64 %i.2145
  %21 = load i16, i16* %arrayidx74, align 2, !tbaa !34
  %cmp81 = icmp eq i16 %21, %20
  %inc87 = add nuw i64 %i.2145, 1
  br i1 %cmp81, label %if.then83, label %for.cond68

if.then83:                                        ; preds = %for.body72
  store i64 %sub, i64* %sigalgcnt, align 8, !tbaa !165
  br label %cleanup

cleanup:                                          ; preds = %for.inc59.1, %for.inc, %for.cond68, %if.end67, %if.end35, %if.else, %if.end, %entry, %if.then83
  %retval.0 = phi i32 [ 0, %if.then83 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %if.end35 ], [ 1, %if.end67 ], [ 1, %for.cond68 ], [ 0, %for.inc ], [ 0, %for.inc59.1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_raw_sigalgs(%struct.cert_st* nocapture noundef %c, i16* noundef %psigs, i64 noundef %salglen, i32 noundef %client) local_unnamed_addr #2 {
entry:
  %mul = shl i64 %salglen, 1
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2488) #15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2489, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls1_set_raw_sigalgs, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i16* %psigs to i8*
  %call2 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %0, i64 noundef %mul) #15
  %tobool.not = icmp eq i32 %client, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 10
  %1 = bitcast i16** %client_sigalgs to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !105
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2495) #15
  store i8* %call, i8** %1, align 8, !tbaa !105
  %client_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 11
  store i64 %salglen, i64* %client_sigalgslen, align 8, !tbaa !106
  br label %cleanup

if.else:                                          ; preds = %if.end
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 8
  %3 = bitcast i16** %conf_sigalgs to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !107
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2499) #15
  store i8* %call, i8** %3, align 8, !tbaa !107
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 9
  store i64 %salglen, i64* %conf_sigalgslen, align 8, !tbaa !108
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_set_sigalgs(%struct.cert_st* nocapture noundef %c, i32* nocapture noundef readonly %psig_nids, i64 noundef %salglen, i32 noundef %client) local_unnamed_addr #2 {
entry:
  %and = and i64 %salglen, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup29

if.end:                                           ; preds = %entry
  %div = lshr i64 %salglen, 1
  %mul = and i64 %salglen, -2
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2514) #15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2515, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tls1_set_sigalgs, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup29

if.end2:                                          ; preds = %if.end
  %cmp366.not = icmp eq i64 %salglen, 0
  br i1 %cmp366.not, label %for.end21, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end2
  %0 = bitcast i8* %call to i16*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc20
  %psig_nids.addr.069 = phi i32* [ %incdec.ptr4, %for.inc20 ], [ %psig_nids, %for.body.preheader ]
  %i.068 = phi i64 [ %add, %for.inc20 ], [ 0, %for.body.preheader ]
  %sptr.067 = phi i16* [ %incdec.ptr11, %for.inc20 ], [ %0, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds i32, i32* %psig_nids.addr.069, i64 1
  %1 = load i32, i32* %psig_nids.addr.069, align 4, !tbaa !60
  %incdec.ptr4 = getelementptr inbounds i32, i32* %psig_nids.addr.069, i64 2
  %2 = load i32, i32* %incdec.ptr, align 4, !tbaa !60
  br label %for.body7

for.body7:                                        ; preds = %for.inc.1, %for.body
  %curr.064 = phi %struct.sigalg_lookup_st* [ getelementptr inbounds ([28 x %struct.sigalg_lookup_st], [28 x %struct.sigalg_lookup_st]* @sigalg_lookup_tbl, i64 0, i64 0), %for.body ], [ %incdec.ptr13.1, %for.inc.1 ]
  %j.063 = phi i64 [ 0, %for.body ], [ %inc.1, %for.inc.1 ]
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 0, i32 2
  %3 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp8 = icmp eq i32 %3, %1
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 0, i32 4
  %4 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp9 = icmp eq i32 %4, %2
  br i1 %cmp9, label %for.inc20, label %for.inc

for.inc:                                          ; preds = %for.body7, %land.lhs.true
  %hash.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 1, i32 2
  %5 = load i32, i32* %hash.1, align 4, !tbaa !90
  %cmp8.1 = icmp eq i32 %5, %1
  br i1 %cmp8.1, label %land.lhs.true.1, label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %sig.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 1, i32 4
  %6 = load i32, i32* %sig.1, align 4, !tbaa !94
  %cmp9.1 = icmp eq i32 %6, %2
  br i1 %cmp9.1, label %for.inc20.split.loop.exit, label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc
  %inc.1 = add nuw nsw i64 %j.063, 2
  %incdec.ptr13.1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 2
  %exitcond.not.1 = icmp eq i64 %inc.1, 28
  br i1 %exitcond.not.1, label %err, label %for.body7, !llvm.loop !171

for.inc20.split.loop.exit:                        ; preds = %land.lhs.true.1
  %incdec.ptr13.le = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064, i64 1
  br label %for.inc20

for.inc20:                                        ; preds = %land.lhs.true, %for.inc20.split.loop.exit
  %curr.064.lcssa = phi %struct.sigalg_lookup_st* [ %incdec.ptr13.le, %for.inc20.split.loop.exit ], [ %curr.064, %land.lhs.true ]
  %sigalg = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %curr.064.lcssa, i64 0, i32 1
  %7 = load i16, i16* %sigalg, align 8, !tbaa !111
  %incdec.ptr11 = getelementptr inbounds i16, i16* %sptr.067, i64 1
  store i16 %7, i16* %sptr.067, align 2, !tbaa !34
  %add = add i64 %i.068, 2
  %cmp3 = icmp ult i64 %add, %salglen
  br i1 %cmp3, label %for.body, label %for.end21, !llvm.loop !172

for.end21:                                        ; preds = %for.inc20, %if.end2
  %tobool22.not = icmp eq i32 %client, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %for.end21
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 10
  %8 = bitcast i16** %client_sigalgs to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !105
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2537) #15
  store i8* %call, i8** %8, align 8, !tbaa !105
  %client_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 11
  store i64 %div, i64* %client_sigalgslen, align 8, !tbaa !106
  br label %cleanup29

if.else:                                          ; preds = %for.end21
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 8
  %10 = bitcast i16** %conf_sigalgs to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !107
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2541) #15
  store i8* %call, i8** %10, align 8, !tbaa !107
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 9
  store i64 %div, i64* %conf_sigalgslen, align 8, !tbaa !108
  br label %cleanup29

err:                                              ; preds = %for.inc.1
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2549) #15
  br label %cleanup29

cleanup29:                                        ; preds = %if.then23, %if.else, %entry, %err, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %err ], [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pk, %struct.stack_st_X509* noundef %chain, i32 noundef %idx) local_unnamed_addr #2 {
entry:
  %certidx = alloca i64, align 8
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %1, 196608
  switch i32 %idx, label %if.else [
    i32 -1, label %if.else15
    i32 -2, label %if.then3
  ]

if.then3:                                         ; preds = %entry
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %2 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !104
  %arraydecay = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cert_pkey_st* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  %sext624 = shl i64 %sub.ptr.div, 32
  %.pre = ashr exact i64 %sext624, 32
  br label %if.end

if.else:                                          ; preds = %entry
  %idx.ext = sext i32 %idx to i64
  %add.ptr = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idx.ext
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %idx.ext7.pre-phi = phi i64 [ %idx.ext, %if.else ], [ %.pre, %if.then3 ]
  %cpk.0 = phi %struct.cert_pkey_st* [ %add.ptr, %if.else ], [ %2, %if.then3 ]
  %idx.addr.0 = phi i32 [ %idx, %if.else ], [ %conv, %if.then3 ]
  %add.ptr8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 %idx.ext7.pre-phi
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cpk.0, i64 0, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !173
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cpk.0, i64 0, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %chain9 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cpk.0, i64 0, i32 2
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain9, align 8, !tbaa !174
  %and11 = and i32 %1, 196609
  %tobool = icmp ne %struct.x509_st* %3, null
  %tobool12 = icmp ne %struct.evp_pkey_st* %4, null
  %or.cond = select i1 %tobool, i1 %tobool12, i1 false
  br i1 %or.cond, label %if.end38, label %end

if.else15:                                        ; preds = %entry
  %6 = bitcast i64* %certidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #16
  %tobool16 = icmp ne %struct.x509_st* %x, null
  %tobool18 = icmp ne %struct.evp_pkey_st* %pk, null
  %or.cond369 = and i1 %tobool16, %tobool18
  br i1 %or.cond369, label %if.end20, label %cleanup.thread

if.end20:                                         ; preds = %if.else15
  %call = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef nonnull %pk, i64* noundef nonnull %certidx) #15
  %cmp21 = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp21, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else15, %if.end20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #16
  br label %cleanup358

cleanup:                                          ; preds = %if.end20
  %7 = load i64, i64* %certidx, align 8, !tbaa !59
  %conv25 = trunc i64 %7 to i32
  %sext = shl i64 %7, 32
  %idx.ext30 = ashr exact i64 %sext, 32
  %add.ptr31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 %idx.ext30
  %8 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and33 = and i32 %8, 196609
  %tobool34.not = icmp eq i32 %and33, 0
  %. = select i1 %tobool34.not, i32 80, i32 1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #16
  br label %if.end38

if.end38:                                         ; preds = %cleanup, %if.end
  %check_flags.2 = phi i32 [ 0, %if.end ], [ %., %cleanup ]
  %strict_mode.1 = phi i32 [ %and11, %if.end ], [ 1, %cleanup ]
  %pvalid.1 = phi i32* [ %add.ptr8, %if.end ], [ %add.ptr31, %cleanup ]
  %idx.addr.2 = phi i32 [ %idx.addr.0, %if.end ], [ %conv25, %cleanup ]
  %chain.addr.0 = phi %struct.stack_st_X509* [ %5, %if.end ], [ %chain, %cleanup ]
  %pk.addr.0 = phi %struct.evp_pkey_st* [ %4, %if.end ], [ %pk, %cleanup ]
  %x.addr.0 = phi %struct.x509_st* [ %3, %if.end ], [ %x, %cleanup ]
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end58, label %if.then40

if.then40:                                        ; preds = %if.end38
  %tobool41.not = icmp eq i32 %check_flags.2, 0
  %or = or i32 %check_flags.2, 2048
  %conv44 = zext i32 %and to i64
  %call45 = call i32 @X509_chain_check_suiteb(i32* noundef null, %struct.x509_st* noundef nonnull %x.addr.0, %struct.stack_st_X509* noundef %chain.addr.0, i64 noundef %conv44) #15
  %cmp46 = icmp eq i32 %call45, 0
  %tobool41.not.not = xor i1 %tobool41.not, true
  %brmerge = select i1 %cmp46, i1 true, i1 %tobool41.not.not
  %9 = select i1 %cmp46, i1 %tobool41.not, i1 false
  %spec.select.mux = select i1 %9, i32 0, i32 %or
  %.mux = select i1 %cmp46, i32 2048, i32 0
  br i1 %brmerge, label %if.end58, label %end

if.end58:                                         ; preds = %if.then40, %if.end38
  %check_flags.4 = phi i32 [ %check_flags.2, %if.end38 ], [ %spec.select.mux, %if.then40 ]
  %rv.2 = phi i32 [ 0, %if.end38 ], [ %.mux, %if.then40 ]
  %call59 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #15
  %shr.mask = and i32 %call59, -256
  %cmp60 = icmp eq i32 %shr.mask, 768
  br i1 %cmp60, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end58
  %tobool65557 = icmp ne i32 %strict_mode.1, 0
  br label %if.else172

cond.end:                                         ; preds = %if.end58
  %call62 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #15
  %cmp63 = icmp sgt i32 %call62, 770
  %tobool65 = icmp ne i32 %strict_mode.1, 0
  %or.cond370 = select i1 %cmp63, i1 %tobool65, i1 false
  br i1 %or.cond370, label %if.then66, label %if.else172

if.then66:                                        ; preds = %cond.end
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %10 = load i16*, i16** %peer_cert_sigalgs, align 8, !tbaa !133
  %cmp69.not = icmp eq i16* %10, null
  br i1 %cmp69.not, label %lor.lhs.false71, label %if.end118

lor.lhs.false71:                                  ; preds = %if.then66
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %11 = load i16*, i16** %peer_sigalgs, align 8, !tbaa !134
  %cmp74.not = icmp eq i16* %11, null
  br i1 %cmp74.not, label %if.else77, label %if.end118

if.else77:                                        ; preds = %lor.lhs.false71
  %12 = icmp ult i32 %idx.addr.2, 7
  br i1 %12, label %switch.hole_check, label %if.end118

switch.hole_check:                                ; preds = %if.else77
  %switch.maskindex = trunc i32 %idx.addr.2 to i8
  %switch.shifted = lshr i8 125, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %if.end118, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %14 = sext i32 %idx.addr.2 to i64
  %switch.gep = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.tls1_check_chain, i64 0, i64 %14
  %switch.load = load i32, i32* %switch.gep, align 4
  %15 = sext i32 %idx.addr.2 to i64
  %switch.gep638 = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.tls1_check_chain.46, i64 0, i64 %15
  %switch.load639 = load i32, i32* %switch.gep638, align 4
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 8
  %16 = load i16*, i16** %conf_sigalgs, align 8, !tbaa !107
  %tobool87.not = icmp eq i16* %16, null
  br i1 %tobool87.not, label %if.end118, label %for.cond.preheader

for.cond.preheader:                               ; preds = %switch.lookup
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 9
  %17 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !108
  %cmp90595.not = icmp eq i64 %17, 0
  br i1 %cmp90595.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %p.0598 = phi i16* [ %incdec.ptr, %for.inc ], [ %16, %for.cond.preheader ]
  %j.0596 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %18 = load i16, i16* %p.0598, align 2, !tbaa !34
  %call92 = call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %18) #17
  %cmp93.not = icmp eq %struct.sigalg_lookup_st* %call92, null
  br i1 %cmp93.not, label %for.inc, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %for.body
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call92, i64 0, i32 2
  %19 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp96 = icmp eq i32 %19, 64
  br i1 %cmp96, label %land.lhs.true98, label %for.inc

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call92, i64 0, i32 4
  %20 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp99 = icmp eq i32 %20, %switch.load639
  br i1 %cmp99, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true95, %land.lhs.true98
  %inc = add nuw i64 %j.0596, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %p.0598, i64 1
  %exitcond.not = icmp eq i64 %inc, %17
  br i1 %exitcond.not, label %cleanup168, label %for.body, !llvm.loop !175

for.end:                                          ; preds = %land.lhs.true98, %for.cond.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %j.0596, %land.lhs.true98 ]
  %cmp107 = icmp eq i64 %j.0.lcssa, %17
  br i1 %cmp107, label %cleanup168, label %if.end118

if.end118:                                        ; preds = %switch.hole_check, %if.else77, %lor.lhs.false71, %if.then66, %for.end, %switch.lookup
  %default_nid.0565 = phi i32 [ %switch.load, %for.end ], [ %switch.load, %switch.lookup ], [ 0, %lor.lhs.false71 ], [ 0, %if.then66 ], [ -1, %if.else77 ], [ -1, %switch.hole_check ]
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %21 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 25
  %22 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %22, i64 0, i32 12
  %23 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and119 = and i32 %23, 8
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %if.else137

land.lhs.true121:                                 ; preds = %if.end118
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 0
  %24 = load i32, i32* %version, align 8, !tbaa !25
  %cmp123 = icmp slt i32 %24, 772
  %cmp128.not = icmp eq i32 %24, 65536
  %or.cond529 = or i1 %cmp123, %cmp128.not
  br i1 %or.cond529, label %if.else137, label %if.then130

if.then130:                                       ; preds = %land.lhs.true121
  %call131 = call fastcc %struct.sigalg_lookup_st* @find_sig_alg(%struct.ssl_st* noundef nonnull %s, %struct.x509_st* noundef %x.addr.0, %struct.evp_pkey_st* noundef %pk.addr.0) #17
  %cmp132.not = icmp eq %struct.sigalg_lookup_st* %call131, null
  %or135 = or i32 %rv.2, 16
  %spec.select530 = select i1 %cmp132.not, i32 %rv.2, i32 %or135
  br label %if.end147

if.else137:                                       ; preds = %land.lhs.true121, %if.end118
  %call138 = call fastcc i32 @tls1_check_sig_alg(%struct.ssl_st* noundef nonnull %s, %struct.x509_st* noundef %x.addr.0, i32 noundef %default_nid.0565) #17
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %if.else144

if.then140:                                       ; preds = %if.else137
  %tobool141.not = icmp eq i32 %check_flags.4, 0
  br i1 %tobool141.not, label %end, label %if.end147

if.else144:                                       ; preds = %if.else137
  %or145 = or i32 %rv.2, 16
  br label %if.end147

if.end147:                                        ; preds = %if.then130, %if.else144, %if.then140
  %rv.3 = phi i32 [ %or145, %if.else144 ], [ %rv.2, %if.then140 ], [ %spec.select530, %if.then130 ]
  %or148 = or i32 %rv.3, 32
  %call150 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain.addr.0) #17
  %call151602 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call150) #15
  %cmp152603 = icmp sgt i32 %call151602, 0
  br i1 %cmp152603, label %for.body154, label %skip_sigs

for.cond149:                                      ; preds = %for.body154
  %call151 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call150) #15
  %cmp152 = icmp slt i32 %inc166, %call151
  br i1 %cmp152, label %for.body154, label %skip_sigs, !llvm.loop !176

for.body154:                                      ; preds = %if.end147, %for.cond149
  %i.0604 = phi i32 [ %inc166, %for.cond149 ], [ 0, %if.end147 ]
  %call156 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call150, i32 noundef %i.0604) #15
  %25 = bitcast i8* %call156 to %struct.x509_st*
  %call157 = call fastcc i32 @tls1_check_sig_alg(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %25, i32 noundef %default_nid.0565) #17
  %tobool158.not = icmp eq i32 %call157, 0
  %inc166 = add nuw nsw i32 %i.0604, 1
  br i1 %tobool158.not, label %if.then159, label %for.cond149

if.then159:                                       ; preds = %for.body154
  %tobool160.not = icmp eq i32 %check_flags.4, 0
  %and162 = and i32 %rv.3, -33
  br i1 %tobool160.not, label %end, label %skip_sigs

cleanup168:                                       ; preds = %for.inc, %for.end
  %tobool110.not = icmp eq i32 %check_flags.4, 0
  br i1 %tobool110.not, label %end, label %skip_sigs

if.else172:                                       ; preds = %cond.end.thread, %cond.end
  %tobool65560 = phi i1 [ %tobool65557, %cond.end.thread ], [ %tobool65, %cond.end ]
  %tobool173.not = icmp eq i32 %check_flags.4, 0
  %or175 = or i32 %rv.2, 48
  %spec.select531 = select i1 %tobool173.not, i32 %rv.2, i32 %or175
  br label %skip_sigs

skip_sigs:                                        ; preds = %for.cond149, %if.end147, %cleanup168, %if.then159, %if.else172
  %tobool65559 = phi i1 [ true, %cleanup168 ], [ %tobool65560, %if.else172 ], [ true, %if.then159 ], [ true, %if.end147 ], [ true, %for.cond149 ]
  %rv.6 = phi i32 [ %rv.2, %cleanup168 ], [ %spec.select531, %if.else172 ], [ %and162, %if.then159 ], [ %or148, %if.end147 ], [ %or148, %for.cond149 ]
  %call178 = call fastcc i32 @tls1_check_cert_param(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %x.addr.0, i32 noundef 1) #17
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.else182, label %if.then180

if.then180:                                       ; preds = %skip_sigs
  %or181 = or i32 %rv.6, 64
  br label %if.end186

if.else182:                                       ; preds = %skip_sigs
  %tobool183.not = icmp eq i32 %check_flags.4, 0
  br i1 %tobool183.not, label %end, label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then180
  %rv.7 = phi i32 [ %or181, %if.then180 ], [ %rv.6, %if.else182 ]
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %26 = load i32, i32* %server, align 8, !tbaa !71
  %tobool187.not = icmp eq i32 %26, 0
  br i1 %tobool187.not, label %if.then188, label %if.else190

if.then188:                                       ; preds = %if.end186
  %or189 = or i32 %rv.7, 128
  br label %if.end217

if.else190:                                       ; preds = %if.end186
  br i1 %tobool65559, label %if.then192, label %if.else321

if.then192:                                       ; preds = %if.else190
  %or193 = or i32 %rv.7, 128
  %call195 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain.addr.0) #17
  %call196605 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call195) #15
  %cmp197606 = icmp sgt i32 %call196605, 0
  br i1 %cmp197606, label %for.body199.lr.ph, label %if.end217

for.body199.lr.ph:                                ; preds = %if.then192
  %tobool205.not = icmp eq i32 %check_flags.4, 0
  %spec.select544 = select i1 %tobool205.not, i32 2, i32 11
  br label %for.body199

for.body199:                                      ; preds = %for.body199.lr.ph, %for.inc213
  %i.1608 = phi i32 [ 0, %for.body199.lr.ph ], [ %inc214, %for.inc213 ]
  %rv.8607 = phi i32 [ %or193, %for.body199.lr.ph ], [ %rv.9, %for.inc213 ]
  %call201 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call195, i32 noundef %i.1608) #15
  %27 = bitcast i8* %call201 to %struct.x509_st*
  %call202 = call fastcc i32 @tls1_check_cert_param(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %27, i32 noundef 0) #17
  %tobool203.not = icmp eq i32 %call202, 0
  %and207 = and i32 %rv.8607, -129
  %spec.select543 = select i1 %tobool205.not, i32 %rv.8607, i32 %and207
  %rv.9 = select i1 %tobool203.not, i32 %spec.select543, i32 %rv.8607
  %cleanup.dest.slot.5 = select i1 %tobool203.not, i32 %spec.select544, i32 0
  switch i32 %cleanup.dest.slot.5, label %cleanup358 [
    i32 0, label %for.inc213
    i32 11, label %if.end217
    i32 2, label %end
  ]

for.inc213:                                       ; preds = %for.body199
  %inc214 = add nuw nsw i32 %i.1608, 1
  %call196 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call195) #15
  %cmp197 = icmp slt i32 %inc214, %call196
  br i1 %cmp197, label %for.body199, label %if.end217, !llvm.loop !177

if.end217:                                        ; preds = %for.inc213, %for.body199, %if.then192, %if.then188
  %rv.10 = phi i32 [ %or189, %if.then188 ], [ %or193, %if.then192 ], [ %rv.9, %for.body199 ], [ %rv.9, %for.inc213 ]
  %28 = load i32, i32* %server, align 8, !tbaa !71
  %tobool219 = icmp eq i32 %28, 0
  %or.cond371 = select i1 %tobool219, i1 %tobool65559, i1 false
  br i1 %or.cond371, label %if.then222, label %if.else321

if.then222:                                       ; preds = %if.end217
  %call223 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk.addr.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #15
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.else226, label %if.then238

if.else226:                                       ; preds = %if.then222
  %call227 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk.addr.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #15
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end236, label %if.then238

if.end236:                                        ; preds = %if.else226
  %call231 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk.addr.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #15
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.else268, label %if.then238

if.then238:                                       ; preds = %if.else226, %if.then222, %if.end236
  %check_type.0585 = phi i32 [ 64, %if.end236 ], [ 2, %if.else226 ], [ 1, %if.then222 ]
  %ctype_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 10
  %29 = load i64, i64* %ctype_len, align 8, !tbaa !178
  %cmp245611.not = icmp eq i64 %29, 0
  br i1 %cmp245611.not, label %for.end257, label %for.body247.preheader

for.body247.preheader:                            ; preds = %if.then238
  %ctype = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %30 = load i8*, i8** %ctype, align 8, !tbaa !179
  br label %for.body247

for.body247:                                      ; preds = %for.body247.preheader, %for.inc254
  %j241.0613 = phi i64 [ %inc255, %for.inc254 ], [ 0, %for.body247.preheader ]
  %ctypes.0612 = phi i8* [ %incdec.ptr256, %for.inc254 ], [ %30, %for.body247.preheader ]
  %31 = load i8, i8* %ctypes.0612, align 1, !tbaa !69
  %conv248 = zext i8 %31 to i32
  %cmp249 = icmp eq i32 %check_type.0585, %conv248
  br i1 %cmp249, label %if.then251, label %for.inc254

if.then251:                                       ; preds = %for.body247
  %or252 = or i32 %rv.10, 1024
  br label %for.end257

for.inc254:                                       ; preds = %for.body247
  %inc255 = add nuw i64 %j241.0613, 1
  %incdec.ptr256 = getelementptr inbounds i8, i8* %ctypes.0612, i64 1
  %exitcond622.not = icmp eq i64 %inc255, %29
  br i1 %exitcond622.not, label %for.end257, label %for.body247, !llvm.loop !180

for.end257:                                       ; preds = %for.inc254, %if.then238, %if.then251
  %rv.11 = phi i32 [ %or252, %if.then251 ], [ %rv.10, %if.then238 ], [ %rv.10, %for.inc254 ]
  %and258 = and i32 %rv.11, 1024
  %32 = or i32 %and258, %check_flags.4
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %end, label %if.end270

if.else268:                                       ; preds = %if.end236
  %or269 = or i32 %rv.10, 1024
  br label %if.end270

if.end270:                                        ; preds = %for.end257, %if.else268
  %rv.12 = phi i32 [ %rv.11, %for.end257 ], [ %or269, %if.else268 ]
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %33 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !181
  %call273 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %33) #17
  %call274 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call273) #15
  %tobool275.not = icmp eq i32 %call274, 0
  %or277 = or i32 %rv.12, 512
  %spec.select535 = select i1 %tobool275.not, i32 %or277, i32 %rv.12
  %and279 = and i32 %spec.select535, 512
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.then281, label %if.end287

if.then281:                                       ; preds = %if.end270
  %call282 = call fastcc i32 @ssl_check_ca_name(%struct.stack_st_X509_NAME* noundef %33, %struct.x509_st* noundef %x.addr.0) #17
  %tobool283.not = icmp eq i32 %call282, 0
  %spec.select536 = select i1 %tobool283.not, i32 %spec.select535, i32 %or277
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %if.end270
  %rv.14 = phi i32 [ %spec.select535, %if.end270 ], [ %spec.select536, %if.then281 ]
  %and288 = and i32 %rv.14, 512
  %tobool289.not = icmp eq i32 %and288, 0
  br i1 %tobool289.not, label %for.cond291.preheader, label %if.end323

for.cond291.preheader:                            ; preds = %if.end287
  %call292 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain.addr.0) #17
  %call293616 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call292) #15
  %cmp294617 = icmp sgt i32 %call293616, 0
  br i1 %cmp294617, label %for.body296, label %if.end310

for.cond291:                                      ; preds = %for.body296
  %call293 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call292) #15
  %cmp294 = icmp slt i32 %inc308, %call293
  br i1 %cmp294, label %for.body296, label %if.end310, !llvm.loop !182

for.body296:                                      ; preds = %for.cond291.preheader, %for.cond291
  %i.2618 = phi i32 [ %inc308, %for.cond291 ], [ 0, %for.cond291.preheader ]
  %call298 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call292, i32 noundef %i.2618) #15
  %34 = bitcast i8* %call298 to %struct.x509_st*
  %call299 = call fastcc i32 @ssl_check_ca_name(%struct.stack_st_X509_NAME* noundef %33, %struct.x509_st* noundef %34) #17
  %tobool300.not = icmp eq i32 %call299, 0
  %inc308 = add nuw nsw i32 %i.2618, 1
  br i1 %tobool300.not, label %for.cond291, label %if.end310.loopexit.split.loop.exit614

if.end310.loopexit.split.loop.exit614:            ; preds = %for.body296
  %or302.le = or i32 %rv.14, 512
  br label %if.end323

if.end310:                                        ; preds = %for.cond291, %for.cond291.preheader
  %tobool311.not = icmp eq i32 %check_flags.4, 0
  br i1 %tobool311.not, label %end, label %if.end323

if.else321:                                       ; preds = %if.else190, %if.end217
  %rv.10582 = phi i32 [ %rv.10, %if.end217 ], [ %rv.7, %if.else190 ]
  %or322 = or i32 %rv.10582, 1536
  br label %if.end323

if.end323:                                        ; preds = %if.end287, %if.end310.loopexit.split.loop.exit614, %if.end310, %if.else321
  %rv.19 = phi i32 [ %or322, %if.else321 ], [ %rv.14, %if.end310 ], [ %rv.14, %if.end287 ], [ %or302.le, %if.end310.loopexit.split.loop.exit614 ]
  %tobool324.not = icmp eq i32 %check_flags.4, 0
  %and326 = and i32 %rv.19, %check_flags.4
  %cmp327 = icmp eq i32 %and326, %check_flags.4
  %or.cond540 = select i1 %tobool324.not, i1 true, i1 %cmp327
  %spec.select546 = select i1 %or.cond540, i32 %check_flags.4, i32 1
  %or330 = zext i1 %or.cond540 to i32
  %spec.select547 = or i32 %rv.19, %or330
  br label %end

end:                                              ; preds = %for.body199, %cleanup168, %for.end257, %if.then40, %if.end310, %if.then159, %if.then140, %if.end323, %if.else182, %if.end
  %check_flags.5 = phi i32 [ 0, %cleanup168 ], [ 0, %if.else182 ], [ 0, %if.end ], [ %spec.select546, %if.end323 ], [ 0, %if.then140 ], [ 0, %if.then159 ], [ 0, %if.end310 ], [ 0, %if.then40 ], [ %check_flags.4, %for.end257 ], [ %check_flags.4, %for.body199 ]
  %rv.20 = phi i32 [ %rv.2, %cleanup168 ], [ %rv.6, %if.else182 ], [ 0, %if.end ], [ %spec.select547, %if.end323 ], [ %rv.2, %if.then140 ], [ %or148, %if.then159 ], [ %rv.14, %if.end310 ], [ 0, %if.then40 ], [ %rv.11, %for.end257 ], [ %rv.9, %for.body199 ]
  %pvalid.2 = phi i32* [ %pvalid.1, %cleanup168 ], [ %pvalid.1, %if.else182 ], [ %add.ptr8, %if.end ], [ %pvalid.1, %if.end323 ], [ %pvalid.1, %if.then140 ], [ %pvalid.1, %if.then159 ], [ %pvalid.1, %if.end310 ], [ %pvalid.1, %if.then40 ], [ %pvalid.1, %for.end257 ], [ %pvalid.1, %for.body199 ]
  %call332 = call i32 @SSL_version(%struct.ssl_st* noundef %s) #15
  %shr333.mask = and i32 %call332, -256
  %cmp334 = icmp eq i32 %shr333.mask, 768
  br i1 %cmp334, label %cond.true336, label %if.end348

cond.true336:                                     ; preds = %end
  %call337 = call i32 @SSL_version(%struct.ssl_st* noundef %s) #15
  %phi.cmp = icmp sgt i32 %call337, 770
  br i1 %phi.cmp, label %if.then343, label %if.end348

if.then343:                                       ; preds = %cond.true336
  %35 = load i32, i32* %pvalid.2, align 4, !tbaa !60
  %and344 = and i32 %35, 258
  br label %if.end348

if.end348:                                        ; preds = %cond.true336, %end, %if.then343
  %and344.pn = phi i32 [ %and344, %if.then343 ], [ 258, %end ], [ 258, %cond.true336 ]
  %rv.21 = or i32 %and344.pn, %rv.20
  %tobool349.not = icmp eq i32 %check_flags.5, 0
  br i1 %tobool349.not, label %if.then350, label %cleanup358

if.then350:                                       ; preds = %if.end348
  %and351 = and i32 %rv.20, 1
  %tobool352.not = icmp eq i32 %and351, 0
  br i1 %tobool352.not, label %if.else354, label %if.then353

if.then353:                                       ; preds = %if.then350
  store i32 %rv.21, i32* %pvalid.2, align 4, !tbaa !60
  br label %cleanup358

if.else354:                                       ; preds = %if.then350
  %36 = load i32, i32* %pvalid.2, align 4, !tbaa !60
  %and355 = and i32 %36, 258
  store i32 %and355, i32* %pvalid.2, align 4, !tbaa !60
  br label %cleanup358

cleanup358:                                       ; preds = %for.body199, %cleanup.thread, %if.end348, %if.then353, %if.else354
  %retval.2 = phi i32 [ 0, %if.else354 ], [ %rv.21, %if.then353 ], [ %rv.21, %if.end348 ], [ 0, %cleanup.thread ], [ 0, %for.body199 ]
  ret i32 %retval.2
}

declare i32 @X509_chain_check_suiteb(i32* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.sigalg_lookup_st* @find_sig_alg(%struct.ssl_st* nocapture noundef readonly %s, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #2 {
entry:
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  %0 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp90.not = icmp eq i64 %0, 0
  br i1 %cmp90.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %cmp11 = icmp eq %struct.evp_pkey_st* %pkey, null
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %curve.093 = phi i32 [ -1, %for.body.lr.ph ], [ %curve.2, %for.inc ]
  %i.091 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %arrayidx = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %1, i64 %i.091
  %2 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx, align 8, !tbaa !55
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 2
  %3 = load i32, i32* %hash, align 4, !tbaa !90
  switch i32 %3, label %lor.lhs.false4 [
    i32 64, label %for.inc
    i32 675, label %for.inc
  ]

lor.lhs.false4:                                   ; preds = %for.body
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 4
  %4 = load i32, i32* %sig, align 4, !tbaa !94
  switch i32 %4, label %if.end [
    i32 116, label %for.inc
    i32 6, label %for.inc
  ]

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call = tail call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %5, %struct.sigalg_lookup_st* noundef nonnull %2, %struct.evp_md_st** noundef null) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end10

if.end10:                                         ; preds = %if.end
  br i1 %cmp11, label %land.lhs.true, label %land.lhs.true16

land.lhs.true:                                    ; preds = %if.end10
  %call12 = tail call fastcc i32 @has_usable_cert(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st* noundef nonnull %2, i32 noundef -1) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %cond.false

land.lhs.true16:                                  ; preds = %if.end10
  %call17 = tail call fastcc i32 @is_cert_usable(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st* noundef nonnull %2, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef nonnull %pkey) #17
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 5
  %7 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %idxprom = sext i32 %7 to i64
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 5, i64 %idxprom, i32 1
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true16, %cond.false
  %cond = phi %struct.evp_pkey_st* [ %8, %cond.false ], [ %pkey, %land.lhs.true16 ]
  %9 = load i32, i32* %sig, align 4, !tbaa !94
  switch i32 %9, label %for.end.loopexit [
    i32 408, label %if.then25
    i32 912, label %if.then39
  ]

if.then25:                                        ; preds = %cond.end
  %cmp26 = icmp eq i32 %curve.093, -1
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then25
  %call28 = tail call i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %cond) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25
  %curve.1 = phi i32 [ %call28, %if.then27 ], [ %curve.093, %if.then25 ]
  %curve30 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %2, i64 0, i32 7
  %10 = load i32, i32* %curve30, align 8, !tbaa !109
  %cmp31.not = icmp eq i32 %10, 0
  %cmp34.not = icmp eq i32 %curve.1, %10
  %or.cond = select i1 %cmp31.not, i1 true, i1 %cmp34.not
  br i1 %or.cond, label %for.end.loopexit, label %for.inc

if.then39:                                        ; preds = %cond.end
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call41 = tail call fastcc i32 @rsa_pss_check_min_key_size(%struct.ssl_ctx_st* noundef %11, %struct.evp_pkey_st* noundef %cond, %struct.sigalg_lookup_st* noundef nonnull %2) #17
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.inc, label %for.end.loopexit

for.inc:                                          ; preds = %if.end29, %lor.lhs.false4, %lor.lhs.false4, %for.body, %for.body, %if.then39, %land.lhs.true, %land.lhs.true16, %if.end
  %curve.2 = phi i32 [ %curve.093, %for.body ], [ %curve.093, %lor.lhs.false4 ], [ %curve.093, %if.then39 ], [ %curve.093, %land.lhs.true16 ], [ %curve.093, %land.lhs.true ], [ %curve.093, %if.end ], [ %curve.093, %for.body ], [ %curve.093, %lor.lhs.false4 ], [ %curve.1, %if.end29 ]
  %inc = add nuw i64 %i.091, 1
  %12 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp = icmp ult i64 %inc, %12
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !183

for.end.loopexit:                                 ; preds = %cond.end, %if.end29, %if.then39, %for.inc
  %i.0.lcssa.ph = phi i64 [ %inc, %for.inc ], [ %i.091, %if.then39 ], [ %i.091, %if.end29 ], [ %i.091, %cond.end ]
  %.pre = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %13 = phi i64 [ 0, %entry ], [ %.pre, %for.end.loopexit ]
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %i.0.lcssa.ph, %for.end.loopexit ]
  %lu.1 = phi %struct.sigalg_lookup_st* [ null, %entry ], [ %2, %for.end.loopexit ]
  %cmp48 = icmp eq i64 %i.0.lcssa, %13
  %.lu.1 = select i1 %cmp48, %struct.sigalg_lookup_st* null, %struct.sigalg_lookup_st* %lu.1
  ret %struct.sigalg_lookup_st* %.lu.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_check_sig_alg(%struct.ssl_st* nocapture noundef readonly %s, %struct.x509_st* noundef %x, i32 noundef %default_nid) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %default_nid, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef %x) #15
  %tobool.not = icmp eq i32 %default_nid, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %cmp2 = icmp eq i32 %call, %default_nid
  %cond = zext i1 %cmp2 to i32
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %2, 8
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !25
  %cmp6 = icmp slt i32 %3, 772
  %cmp10.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp6, %cmp10.not
  br i1 %or.cond, label %if.else, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %4 = load i16*, i16** %peer_cert_sigalgs, align 8, !tbaa !133
  %cmp12.not = icmp eq i16* %4, null
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  %peer_cert_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 31
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true, %if.end3
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %tobool18.not = phi i1 [ true, %if.else ], [ false, %if.then13 ]
  %sigalgslen.0.in = phi i64* [ %shared_sigalgslen, %if.else ], [ %peer_cert_sigalgslen, %if.then13 ]
  %sigalgslen.0 = load i64, i64* %sigalgslen.0.in, align 8, !tbaa !59
  %cmp1754.not = icmp eq i64 %sigalgslen.0, 0
  br i1 %cmp1754.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %peer_cert_sigalgs21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.055 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  br i1 %tobool18.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %5 = load i16*, i16** %peer_cert_sigalgs21, align 8, !tbaa !133
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %i.055
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %call22 = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %6) #17
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %arrayidx23 = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %7, i64 %i.055
  %8 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx23, align 8, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond24 = phi %struct.sigalg_lookup_st* [ %call22, %cond.true ], [ %8, %cond.false ]
  %cmp25.not = icmp eq %struct.sigalg_lookup_st* %cond24, null
  br i1 %cmp25.not, label %for.inc, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %cond.end
  %sigandhash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %cond24, i64 0, i32 6
  %9 = load i32, i32* %sigandhash, align 4, !tbaa !164
  %cmp27 = icmp eq i32 %call, %9
  br i1 %cmp27, label %cleanup, label %for.inc

for.inc:                                          ; preds = %cond.end, %land.lhs.true26
  %inc = add nuw i64 %i.055, 1
  %exitcond.not = icmp eq i64 %inc, %sigalgslen.0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !184

cleanup:                                          ; preds = %land.lhs.true26, %for.inc, %if.end16, %entry, %if.then1
  %retval.0 = phi i32 [ %cond, %if.then1 ], [ 1, %entry ], [ 0, %if.end16 ], [ 1, %land.lhs.true26 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_check_cert_param(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %x, i32 noundef %check_ee_md) unnamed_addr #2 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x) #15
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup35, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup35, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @tls1_check_pkey_comp(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef nonnull %call) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup35, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc zeroext i16 @tls1_get_group_id(%struct.evp_pkey_st* noundef nonnull %call) #17
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !71
  %tobool9.not = icmp eq i32 %0, 0
  %lnot.ext = zext i1 %tobool9.not to i32
  %call10 = tail call i32 @tls1_check_group_id(%struct.ssl_st* noundef %s, i16 noundef zeroext %call8, i32 noundef %lnot.ext) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup35, label %if.end13

if.end13:                                         ; preds = %if.end7
  %tobool14.not = icmp eq i32 %check_ee_md, 0
  br i1 %tobool14.not, label %cleanup35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 4
  %2 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and = and i32 %2, 196608
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %cleanup35, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  switch i16 %call8, label %cleanup35 [
    i16 23, label %if.end26
    i16 24, label %if.then23
  ]

if.then23:                                        ; preds = %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.then16, %if.then23
  %check_md.0 = phi i32 [ 795, %if.then23 ], [ 794, %if.then16 ]
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  %3 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp2753.not = icmp eq i64 %3, 0
  br i1 %cmp2753.not, label %cleanup35, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end26
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %4 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %3
  br i1 %exitcond.not, label %cleanup35, label %for.body, !llvm.loop !185

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.054 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %4, i64 %i.054
  %5 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx, align 8, !tbaa !55
  %sigandhash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %5, i64 0, i32 6
  %6 = load i32, i32* %sigandhash, align 4, !tbaa !164
  %cmp29 = icmp eq i32 %check_md.0, %6
  %inc = add nuw i64 %i.054, 1
  br i1 %cmp29, label %cleanup35, label %for.cond

cleanup35:                                        ; preds = %for.cond, %for.body, %if.end26, %if.end13, %land.lhs.true, %if.then16, %if.end7, %if.end3, %if.end, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end3 ], [ 0, %if.end7 ], [ 0, %if.then16 ], [ 1, %land.lhs.true ], [ 1, %if.end13 ], [ 0, %if.end26 ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.1
}

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_check_ca_name(%struct.stack_st_X509_NAME* noundef %names, %struct.x509_st* noundef %x) unnamed_addr #2 {
entry:
  %call = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #15
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %names) #17
  %call212 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp13 = icmp sgt i32 %call212, 0
  br i1 %cmp13, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !186

for.body:                                         ; preds = %entry, %for.cond
  %i.014 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.014) #15
  %0 = bitcast i8* %call4 to %struct.X509_name_st*
  %call5 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call, %struct.X509_name_st* noundef %0) #15
  %tobool.not = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.014, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @tls1_set_cert_validity(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 0) #17
  %call1 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 1) #17
  %call2 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 2) #17
  %call3 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 3) #17
  %call4 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 4) #17
  %call5 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 5) #17
  %call6 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 6) #17
  %call7 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 7) #17
  %call8 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 8) #17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pk, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef %s, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pk, %struct.stack_st_X509* noundef %chain, i32 noundef -1) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ssl_get_auto_dh(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %dhp = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %dhp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %dhp, align 8, !tbaa !55
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 3
  %2 = load i32, i32* %dh_tmp_auto, align 8, !tbaa !187
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %3 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %3, i64 0, i32 5
  %4 = load i32, i32* %algorithm_auth, align 8, !tbaa !101
  %and = and i32 %4, 20
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else7, label %if.then1

if.then1:                                         ; preds = %if.then
  %strength_bits = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %3, i64 0, i32 14
  %5 = load i32, i32* %strength_bits, align 4, !tbaa !130
  %cmp5 = icmp eq i32 %5, 256
  %. = select i1 %cmp5, i32 128, i32 80
  br label %if.end18

if.else7:                                         ; preds = %if.then
  %cert10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %6 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert10, align 8, !tbaa !188
  %cmp11 = icmp eq %struct.cert_pkey_st* %6, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.else7
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %6, i64 0, i32 1
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %call = tail call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %7) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then1, %if.end13, %entry
  %dh_secbits.0 = phi i32 [ %call, %if.end13 ], [ 80, %entry ], [ %., %if.then1 ]
  %call19 = tail call i32 @ssl_get_security_level_bits(%struct.ssl_st* noundef nonnull %s, %struct.ssl_ctx_st* noundef null, i32* noundef null) #15
  %cmp20 = icmp slt i32 %dh_secbits.0, %call19
  %spec.select = select i1 %cmp20, i32 %call19, i32 %dh_secbits.0
  %cmp23 = icmp sgt i32 %spec.select, 191
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end18
  %call25 = tail call %struct.bignum_st* @BN_get_rfc3526_prime_8192(%struct.bignum_st* noundef null) #15
  br label %if.end43

if.else26:                                        ; preds = %if.end18
  %cmp27 = icmp sgt i32 %spec.select, 151
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else26
  %call29 = tail call %struct.bignum_st* @BN_get_rfc3526_prime_4096(%struct.bignum_st* noundef null) #15
  br label %if.end43

if.else30:                                        ; preds = %if.else26
  %cmp31 = icmp sgt i32 %spec.select, 127
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else30
  %call33 = tail call %struct.bignum_st* @BN_get_rfc3526_prime_3072(%struct.bignum_st* noundef null) #15
  br label %if.end43

if.else34:                                        ; preds = %if.else30
  %cmp35 = icmp sgt i32 %spec.select, 111
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else34
  %call37 = tail call %struct.bignum_st* @BN_get_rfc3526_prime_2048(%struct.bignum_st* noundef null) #15
  br label %if.end43

if.else38:                                        ; preds = %if.else34
  %call39 = tail call %struct.bignum_st* @BN_get_rfc2409_prime_1024(%struct.bignum_st* noundef null) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then28, %if.then36, %if.else38, %if.then32, %if.then24
  %p.0 = phi %struct.bignum_st* [ %call25, %if.then24 ], [ %call29, %if.then28 ], [ %call33, %if.then32 ], [ %call37, %if.then36 ], [ %call39, %if.else38 ]
  %cmp44 = icmp eq %struct.bignum_st* %p.0, null
  br i1 %cmp44, label %err, label %if.end46

if.end46:                                         ; preds = %if.end43
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 0
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 85
  %10 = load i8*, i8** %propq, align 8, !tbaa !95
  %call48 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %10) #15
  %cmp49 = icmp eq %struct.evp_pkey_ctx_st* %call48, null
  br i1 %cmp49, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end46
  %call50 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call48) #15
  %cmp51.not = icmp eq i32 %call50, 1
  br i1 %cmp51.not, label %if.end53, label %err

if.end53:                                         ; preds = %lor.lhs.false
  %call54 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #15
  %cmp55 = icmp eq %struct.ossl_param_bld_st* %call54, null
  br i1 %cmp55, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end53
  %call57 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.bignum_st* noundef nonnull %p.0) #15
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %call60 = tail call i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* noundef nonnull %call54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef 2) #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %lor.lhs.false59
  %call64 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call54) #15
  %cmp65 = icmp eq %struct.ossl_param_st* %call64, null
  br i1 %cmp65, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end63
  %call67 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call48, %struct.evp_pkey_st** noundef nonnull %dhp, i32 noundef 132, %struct.ossl_param_st* noundef nonnull %call64) #15
  br label %err

err:                                              ; preds = %lor.lhs.false66, %if.end63, %if.end53, %lor.lhs.false56, %lor.lhs.false59, %if.end46, %lor.lhs.false, %if.end43
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.end43 ], [ null, %if.end46 ], [ %call48, %lor.lhs.false ], [ %call48, %if.end53 ], [ %call48, %if.end63 ], [ %call48, %lor.lhs.false66 ], [ %call48, %lor.lhs.false59 ], [ %call48, %lor.lhs.false56 ]
  %tmpl.0 = phi %struct.ossl_param_bld_st* [ null, %if.end43 ], [ null, %if.end46 ], [ null, %lor.lhs.false ], [ null, %if.end53 ], [ %call54, %if.end63 ], [ %call54, %lor.lhs.false66 ], [ %call54, %lor.lhs.false59 ], [ %call54, %lor.lhs.false56 ]
  %params.0 = phi %struct.ossl_param_st* [ null, %if.end43 ], [ null, %if.end46 ], [ null, %lor.lhs.false ], [ null, %if.end53 ], [ null, %if.end63 ], [ %call64, %lor.lhs.false66 ], [ null, %lor.lhs.false59 ], [ null, %lor.lhs.false56 ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #15
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %tmpl.0) #15
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #15
  call void @BN_free(%struct.bignum_st* noundef %p.0) #15
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dhp, align 8, !tbaa !55
  br label %cleanup

cleanup:                                          ; preds = %if.else7, %err
  %retval.0 = phi %struct.evp_pkey_st* [ %11, %err ], [ null, %if.else7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

declare i32 @ssl_get_security_level_bits(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, i32* noundef) local_unnamed_addr #0

declare %struct.bignum_st* @BN_get_rfc3526_prime_8192(%struct.bignum_st* noundef) local_unnamed_addr #0

declare %struct.bignum_st* @BN_get_rfc3526_prime_4096(%struct.bignum_st* noundef) local_unnamed_addr #0

declare %struct.bignum_st* @BN_get_rfc3526_prime_3072(%struct.bignum_st* noundef) local_unnamed_addr #0

declare %struct.bignum_st* @BN_get_rfc3526_prime_2048(%struct.bignum_st* noundef) local_unnamed_addr #0

declare %struct.bignum_st* @BN_get_rfc2409_prime_1024(%struct.bignum_st* noundef) local_unnamed_addr #0

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #0

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #0

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #0

declare i32 @OSSL_PARAM_BLD_push_uint(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #0

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #0

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #0

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %vfy, i32 noundef %is_ee) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i32 %vfy, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 4096
  %tobool1.not = icmp eq i32 %is_ee, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  %or = or i32 %spec.store.select, 393232
  %call = tail call fastcc i32 @ssl_security_cert_key(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %or) #17
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %return, label %if.end11

if.else:                                          ; preds = %entry
  %or6 = or i32 %spec.store.select, 393233
  %call7 = tail call fastcc i32 @ssl_security_cert_key(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %or6) #17
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.else, %if.then2
  %or12 = or i32 %spec.store.select, 393234
  %call13 = tail call fastcc i32 @ssl_security_cert_sig(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %or12) #17
  %tobool14.not = icmp eq i32 %call13, 0
  %. = select i1 %tobool14.not, i32 398, i32 1
  br label %return

return:                                           ; preds = %if.end11, %if.else, %if.then2
  %retval.0 = phi i32 [ 399, %if.then2 ], [ 397, %if.else ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_security_cert_key(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %op) unnamed_addr #2 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x) #15
  %tobool.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef nonnull %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %secbits.0 = phi i32 [ %call1, %if.then ], [ -1, %entry ]
  %tobool2.not = icmp eq %struct.ssl_st* %s, null
  %0 = bitcast %struct.x509_st* %x to i8*
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef %op, i32 noundef %secbits.0, i32 noundef 0, i8* noundef %0) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %secbits.0, i32 noundef 0, i8* noundef %0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_security_cert_sig(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %op) unnamed_addr #2 {
entry:
  %secbits = alloca i32, align 4
  %nid = alloca i32, align 4
  %pknid = alloca i32, align 4
  %0 = bitcast i32* %secbits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %1 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %2 = bitcast i32* %pknid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  %call = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %x) #15
  %and = and i32 %call, 8192
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @X509_get_signature_info(%struct.x509_st* noundef %x, i32* noundef nonnull %nid, i32* noundef nonnull %pknid, i32* noundef nonnull %secbits, i32* noundef null) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %secbits, align 4, !tbaa !60
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %nid, align 4, !tbaa !60
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, i32* %pknid, align 4, !tbaa !60
  store i32 %4, i32* %nid, align 4, !tbaa !60
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %5 = phi i32 [ %4, %if.then5 ], [ %3, %if.end3 ]
  %tobool7.not = icmp eq %struct.ssl_st* %s, null
  %6 = load i32, i32* %secbits, align 4, !tbaa !60
  %7 = bitcast %struct.x509_st* %x to i8*
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef %op, i32 noundef %6, i32 noundef %5, i8* noundef %7) #15
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %call10 = call i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %6, i32 noundef %5, i8* noundef %7) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_security_cert_chain(%struct.ssl_st* noundef %s, %struct.stack_st_X509* noundef %sk, %struct.x509_st* noundef %x, i32 noundef %vfy) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %sk) #17
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #15
  %0 = bitcast i8* %call1 to %struct.x509_st*
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0 = phi %struct.x509_st* [ %0, %if.then ], [ %x, %entry ]
  %start_idx.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %call2 = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef %x.addr.0, i32 noundef %vfy, i32 noundef 1) #17
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %sk) #17
  %call731 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #15
  %cmp832 = icmp slt i32 %start_idx.0, %call731
  br i1 %cmp832, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #15
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %cleanup, !llvm.loop !189

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.033 = phi i32 [ %inc, %for.cond ], [ %start_idx.0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.033) #15
  %1 = bitcast i8* %call10 to %struct.x509_st*
  %call11 = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef %1, i32 noundef %vfy, i32 noundef 0) #17
  %cmp12.not = icmp eq i32 %call11, 1
  %inc = add nuw nsw i32 %i.033, 1
  br i1 %cmp12.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 1, %for.cond.preheader ], [ %call11, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_choose_sigalg(%struct.ssl_st* noundef %s, i32 noundef %fatalerrs) local_unnamed_addr #2 {
entry:
  %sent_sigs = alloca i16*, align 8
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  store %struct.cert_pkey_st* null, %struct.cert_pkey_st** %cert, align 8, !tbaa !188
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  store %struct.sigalg_lookup_st* null, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !117
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !61
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !62
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !25
  %cmp = icmp slt i32 %3, 772
  %cmp7.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc %struct.sigalg_lookup_st* @find_sig_alg(%struct.ssl_st* noundef nonnull %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null) #17
  %cmp8 = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp8, label %if.then9, label %if.then189

if.then9:                                         ; preds = %if.then
  %tobool10.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool10.not, label %cleanup207, label %if.end

if.end:                                           ; preds = %if.then9
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3219, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 118, i8* noundef null) #15
  br label %cleanup207

if.else:                                          ; preds = %land.lhs.true, %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 5
  %5 = load i32, i32* %algorithm_auth, align 8, !tbaa !101
  %and15 = and i32 %5, 171
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %cleanup207, label %if.end18

if.end18:                                         ; preds = %if.else
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %6 = load i32, i32* %server, align 8, !tbaa !71
  %tobool19.not = icmp eq i32 %6, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %if.end18
  %cert21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %7 = load %struct.cert_st*, %struct.cert_st** %cert21, align 8, !tbaa !51
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %7, i64 0, i32 0
  %8 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !104
  %arraydecay = getelementptr inbounds %struct.cert_st, %struct.cert_st* %7, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cert_pkey_st* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv = trunc i64 %sub.ptr.div to i32
  %call23 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef %conv) #17
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup207, label %if.end26

if.end26:                                         ; preds = %land.lhs.true20, %if.end18
  %and30 = and i32 %2, 2
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else176, label %if.then32

if.then32:                                        ; preds = %if.end26
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %9 = load i16*, i16** %peer_sigalgs, align 8, !tbaa !134
  %cmp35.not = icmp eq i16* %9, null
  br i1 %cmp35.not, label %if.else133, label %if.then37

if.then37:                                        ; preds = %if.then32
  %cert38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %10 = load %struct.cert_st*, %struct.cert_st** %cert38, align 8, !tbaa !51
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %10, i64 0, i32 4
  %11 = load i32, i32* %cert_flags, align 4, !tbaa !52
  %and39 = and i32 %11, 196608
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end45, label %if.then41

if.then41:                                        ; preds = %if.then37
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %10, i64 0, i32 5, i64 3, i32 1
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %call44 = tail call i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %12) #17
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then37
  %curve.0 = phi i32 [ %call44, %if.then41 ], [ -1, %if.then37 ]
  %shared_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 129
  %13 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp46314.not = icmp eq i64 %13, 0
  br i1 %cmp46314.not, label %land.lhs.true103, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end45
  %shared_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 128
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %cmp93 = icmp eq i32 %curve.0, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0315 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %14 = load %struct.sigalg_lookup_st**, %struct.sigalg_lookup_st*** %shared_sigalgs, align 8, !tbaa !131
  %arrayidx48 = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %14, i64 %i.0315
  %15 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %arrayidx48, align 8, !tbaa !55
  %16 = load i32, i32* %server, align 8, !tbaa !71
  %tobool50.not = icmp eq i32 %16, 0
  br i1 %tobool50.not, label %if.else57, label %if.then51

if.then51:                                        ; preds = %for.body
  %call52 = tail call fastcc i32 @tls12_get_cert_sigalg_idx(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st* noundef %15) #17
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %for.inc, label %if.end73

if.else57:                                        ; preds = %for.body
  %17 = load %struct.cert_st*, %struct.cert_st** %cert38, align 8, !tbaa !51
  %key59 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %17, i64 0, i32 0
  %18 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key59, align 8, !tbaa !104
  %arraydecay62 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %17, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast63 = ptrtoint %struct.cert_pkey_st* %18 to i64
  %sub.ptr.rhs.cast64 = ptrtoint %struct.cert_pkey_st* %arraydecay62 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %sub.ptr.div66 = sdiv exact i64 %sub.ptr.sub65, 40
  %conv67 = trunc i64 %sub.ptr.div66 to i32
  %sig_idx68 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %15, i64 0, i32 5
  %19 = load i32, i32* %sig_idx68, align 8, !tbaa !112
  %cmp69.not = icmp eq i32 %19, %conv67
  br i1 %cmp69.not, label %if.end73, label %for.inc

if.end73:                                         ; preds = %if.else57, %if.then51
  %sig_idx.1 = phi i32 [ %call52, %if.then51 ], [ %conv67, %if.else57 ]
  %call74 = tail call fastcc i32 @has_usable_cert(%struct.ssl_st* noundef nonnull %s, %struct.sigalg_lookup_st* noundef %15, i32 noundef %sig_idx.1) #17
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.inc, label %if.end77

if.end77:                                         ; preds = %if.end73
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %15, i64 0, i32 4
  %20 = load i32, i32* %sig, align 4, !tbaa !94
  %cmp78 = icmp eq i32 %20, 912
  br i1 %cmp78, label %if.then80, label %if.end92

if.then80:                                        ; preds = %if.end77
  %21 = load %struct.cert_st*, %struct.cert_st** %cert38, align 8, !tbaa !51
  %idxprom = sext i32 %sig_idx.1 to i64
  %privatekey84 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %21, i64 0, i32 5, i64 %idxprom, i32 1
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey84, align 8, !tbaa !102
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %call85 = tail call fastcc i32 @rsa_pss_check_min_key_size(%struct.ssl_ctx_st* noundef %23, %struct.evp_pkey_st* noundef %22, %struct.sigalg_lookup_st* noundef nonnull %15) #17
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.inc, label %if.end92

if.end92:                                         ; preds = %if.then80, %if.end77
  br i1 %cmp93, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end92
  %curve95 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %15, i64 0, i32 7
  %24 = load i32, i32* %curve95, align 8, !tbaa !109
  %cmp96 = icmp eq i32 %24, %curve.0
  br i1 %cmp96, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.then80, %if.else57, %lor.lhs.false, %if.end73, %if.then51
  %sig_idx.2 = phi i32 [ -1, %if.then51 ], [ %sig_idx.1, %if.then80 ], [ %sig_idx.1, %lor.lhs.false ], [ %sig_idx.1, %if.end73 ], [ %19, %if.else57 ]
  %inc = add nuw i64 %i.0315, 1
  %25 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp46 = icmp ult i64 %inc, %25
  br i1 %cmp46, label %for.body, label %for.end, !llvm.loop !190

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %if.end92
  %i.0.lcssa.ph = phi i64 [ %inc, %for.inc ], [ %i.0315, %lor.lhs.false ], [ %i.0315, %if.end92 ]
  %sig_idx.3.ph = phi i32 [ %sig_idx.2, %for.inc ], [ %sig_idx.1, %lor.lhs.false ], [ %sig_idx.1, %if.end92 ]
  %.pre = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  %cmp101 = icmp eq i64 %i.0.lcssa.ph, %.pre
  br i1 %cmp101, label %land.lhs.true103, label %if.end121

land.lhs.true103:                                 ; preds = %if.end45, %for.end
  %26 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth107 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %26, i64 0, i32 5
  %27 = load i32, i32* %algorithm_auth107, align 8, !tbaa !101
  %and108 = and i32 %27, 160
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then125, label %if.then110

if.then110:                                       ; preds = %land.lhs.true103
  %call111 = tail call fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef nonnull %s, i32 noundef -1) #17
  %cmp112 = icmp eq %struct.sigalg_lookup_st* %call111, null
  br i1 %cmp112, label %if.then114, label %if.else118

if.then114:                                       ; preds = %if.then110
  %tobool115.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool115.not, label %cleanup207, label %if.end117

if.end117:                                        ; preds = %if.then114
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3280, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 118, i8* noundef null) #15
  br label %cleanup207

if.else118:                                       ; preds = %if.then110
  %sig_idx119 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call111, i64 0, i32 5
  %28 = load i32, i32* %sig_idx119, align 8, !tbaa !112
  %.pre336 = load i64, i64* %shared_sigalgslen, align 8, !tbaa !132
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %for.end
  %29 = phi i64 [ %.pre336, %if.else118 ], [ %.pre, %for.end ]
  %i.1 = phi i64 [ 0, %if.else118 ], [ %i.0.lcssa.ph, %for.end ]
  %sig_idx.4 = phi i32 [ %28, %if.else118 ], [ %sig_idx.3.ph, %for.end ]
  %lu.2 = phi %struct.sigalg_lookup_st* [ %call111, %if.else118 ], [ %15, %for.end ]
  %cmp123 = icmp eq i64 %i.1, %29
  br i1 %cmp123, label %if.then125, label %if.end186

if.then125:                                       ; preds = %land.lhs.true103, %if.end121
  %tobool126.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool126.not, label %cleanup207, label %if.end128

if.end128:                                        ; preds = %if.then125
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3292, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 118, i8* noundef null) #15
  br label %cleanup207

if.else133:                                       ; preds = %if.then32
  %30 = bitcast i16** %sent_sigs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #16
  %call134 = tail call fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef nonnull %s, i32 noundef -1) #17
  %cmp135 = icmp eq %struct.sigalg_lookup_st* %call134, null
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %if.else133
  %tobool138.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool138.not, label %cleanup168.thread, label %if.end140

if.end140:                                        ; preds = %if.then137
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3306, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 118, i8* noundef null) #15
  br label %cleanup168.thread

if.end141:                                        ; preds = %if.else133
  %call142 = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i16** noundef nonnull %sent_sigs) #17
  %sig_idx153 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call134, i64 0, i32 5
  %cmp144327.not = icmp eq i64 %call142, 0
  br i1 %cmp144327.not, label %for.end160, label %for.body146.lr.ph

for.body146.lr.ph:                                ; preds = %if.end141
  %sent_sigs.promoted = load i16*, i16** %sent_sigs, align 8, !tbaa !55
  %sigalg147 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call134, i64 0, i32 1
  br label %for.body146

for.body146:                                      ; preds = %for.body146.lr.ph, %for.inc158
  %i.2330 = phi i64 [ 0, %for.body146.lr.ph ], [ %inc159, %for.inc158 ]
  %incdec.ptr325328 = phi i16* [ %sent_sigs.promoted, %for.body146.lr.ph ], [ %incdec.ptr, %for.inc158 ]
  %31 = load i16, i16* %sigalg147, align 8, !tbaa !111
  %32 = load i16, i16* %incdec.ptr325328, align 2, !tbaa !34
  %cmp150 = icmp eq i16 %31, %32
  br i1 %cmp150, label %land.lhs.true152, label %for.inc158

land.lhs.true152:                                 ; preds = %for.body146
  %33 = load i32, i32* %sig_idx153, align 8, !tbaa !112
  %call154 = tail call fastcc i32 @has_usable_cert(%struct.ssl_st* noundef %s, %struct.sigalg_lookup_st* noundef nonnull %call134, i32 noundef %33) #17
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %for.inc158, label %for.end160

for.inc158:                                       ; preds = %for.body146, %land.lhs.true152
  %inc159 = add nuw i64 %i.2330, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %incdec.ptr325328, i64 1
  %exitcond.not = icmp eq i64 %inc159, %call142
  br i1 %exitcond.not, label %if.then163, label %for.body146, !llvm.loop !191

for.end160:                                       ; preds = %land.lhs.true152, %if.end141
  %i.2.lcssa = phi i64 [ 0, %if.end141 ], [ %i.2330, %land.lhs.true152 ]
  %cmp161 = icmp eq i64 %i.2.lcssa, %call142
  br i1 %cmp161, label %if.then163, label %if.end186.thread310

if.then163:                                       ; preds = %for.inc158, %for.end160
  %tobool164.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool164.not, label %cleanup168.thread, label %if.end166

if.end166:                                        ; preds = %if.then163
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3321, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 40, i32 noundef 370, i8* noundef null) #15
  br label %cleanup168.thread

cleanup168.thread:                                ; preds = %if.end166, %if.end140, %if.then137, %if.then163
  %retval.1.ph = phi i32 [ 1, %if.then163 ], [ 1, %if.then137 ], [ 0, %if.end140 ], [ 0, %if.end166 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #16
  br label %cleanup207

if.end186.thread310:                              ; preds = %for.end160
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #16
  br label %if.then189

if.else176:                                       ; preds = %if.end26
  %call177 = tail call fastcc %struct.sigalg_lookup_st* @tls1_get_legacy_sigalg(%struct.ssl_st* noundef nonnull %s, i32 noundef -1) #17
  %cmp178 = icmp eq %struct.sigalg_lookup_st* %call177, null
  br i1 %cmp178, label %if.then180, label %if.then189

if.then180:                                       ; preds = %if.else176
  %tobool181.not = icmp eq i32 %fatalerrs, 0
  br i1 %tobool181.not, label %cleanup207, label %if.end183

if.end183:                                        ; preds = %if.then180
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3330, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls_choose_sigalg, i64 0, i64 0)) #15
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 118, i8* noundef null) #15
  br label %cleanup207

if.end186:                                        ; preds = %if.end121
  %cmp187 = icmp eq i32 %sig_idx.4, -1
  br i1 %cmp187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.then, %if.else176, %if.end186.thread310, %if.end186
  %lu.6308 = phi %struct.sigalg_lookup_st* [ %lu.2, %if.end186 ], [ %call134, %if.end186.thread310 ], [ %call, %if.then ], [ %call177, %if.else176 ]
  %sig_idx190 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.6308, i64 0, i32 5
  %34 = load i32, i32* %sig_idx190, align 8, !tbaa !112
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end186
  %lu.6309 = phi %struct.sigalg_lookup_st* [ %lu.6308, %if.then189 ], [ %lu.2, %if.end186 ]
  %sig_idx.9 = phi i32 [ %34, %if.then189 ], [ %sig_idx.4, %if.end186 ]
  %cert192 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %35 = load %struct.cert_st*, %struct.cert_st** %cert192, align 8, !tbaa !51
  %idxprom194 = sext i32 %sig_idx.9 to i64
  %arrayidx195 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %35, i64 0, i32 5, i64 %idxprom194
  store %struct.cert_pkey_st* %arrayidx195, %struct.cert_pkey_st** %cert, align 8, !tbaa !188
  %key203 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %35, i64 0, i32 0
  store %struct.cert_pkey_st* %arrayidx195, %struct.cert_pkey_st** %key203, align 8, !tbaa !104
  store %struct.sigalg_lookup_st* %lu.6309, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !117
  br label %cleanup207

cleanup207:                                       ; preds = %if.then125, %if.then114, %if.end117, %if.end128, %cleanup168.thread, %if.then180, %land.lhs.true20, %if.else, %if.then9, %if.end191, %if.end183, %if.end
  %retval.4 = phi i32 [ 1, %if.end191 ], [ 0, %if.end183 ], [ 0, %if.end ], [ 1, %if.then9 ], [ 1, %if.else ], [ 1, %land.lhs.true20 ], [ 1, %if.then180 ], [ %retval.1.ph, %cleanup168.thread ], [ 1, %if.then125 ], [ 1, %if.then114 ], [ 0, %if.end117 ], [ 0, %if.end128 ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl_has_cert(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx) unnamed_addr #11 {
entry:
  %0 = icmp ugt i32 %idx, 8
  br i1 %0, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %idxprom12 = zext i32 %idx to i64
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 5, i64 %idxprom12, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !173
  %cmp2.not = icmp eq %struct.x509_st* %2, null
  br i1 %cmp2.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 5, i64 %idxprom12, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %cmp7 = icmp ne %struct.evp_pkey_st* %3, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls12_get_cert_sigalg_idx(%struct.ssl_st* nocapture noundef readonly %s, %struct.sigalg_lookup_st* nocapture noundef readonly %lu) unnamed_addr #2 {
entry:
  %sig_idx1 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu, i64 0, i32 5
  %0 = load i32, i32* %sig_idx1, align 8, !tbaa !112
  %conv = sext i32 %0 to i64
  %call = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef %conv) #15
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call, i64 0, i32 1
  %1 = load i32, i32* %amask, align 4, !tbaa !99
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !72
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !101
  %and = and i32 %3, %1
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %nid = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call, i64 0, i32 0
  %4 = load i32, i32* %nid, align 4, !tbaa !192
  %cmp6 = icmp eq i32 %4, 912
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 4
  %5 = load i32, i32* %algorithm_mkey, align 4, !tbaa !123
  %and11 = and i32 %5, 1
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false5
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 %conv
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !60
  %and16 = and i32 %6, 1
  %tobool.not = icmp eq i32 %and16, 0
  %cond = select i1 %tobool.not, i32 -1, i32 %0
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ -1, %land.lhs.true ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @has_usable_cert(%struct.ssl_st* nocapture noundef readonly %s, %struct.sigalg_lookup_st* nocapture noundef readonly %sig, i32 noundef %idx) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %idx, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %sig, i64 0, i32 5
  %0 = load i32, i32* %sig_idx, align 8, !tbaa !112
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idx.addr.0 = phi i32 [ %0, %if.then ], [ %idx, %entry ]
  %call = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef %s, i32 noundef %idx.addr.0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %idxprom = sext i32 %idx.addr.0 to i64
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 5, i64 %idxprom, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !173
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 5, i64 %idxprom, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !102
  %call7 = tail call fastcc i32 @check_cert_usable(%struct.ssl_st* noundef %s, %struct.sigalg_lookup_st* noundef %sig, %struct.x509_st* noundef %2, %struct.evp_pkey_st* noundef %3) #17
  br label %return

return:                                           ; preds = %if.end, %if.end2
  %retval.0 = phi i32 [ %call7, %if.end2 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_pss_check_min_key_size(%struct.ssl_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey, %struct.sigalg_lookup_st* noundef %lu) unnamed_addr #2 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %ctx, %struct.sigalg_lookup_st* noundef %lu, %struct.evp_md_st** noundef nonnull %md) #17
  %tobool = icmp eq i32 %call, 0
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8
  %cmp1 = icmp eq %struct.evp_md_st* %1, null
  %or.cond = select i1 %tobool, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %pkey) #15
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !55
  %call5 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %2) #15
  %mul = shl nsw i32 %call5, 1
  %add = add nsw i32 %mul, 2
  %cmp6 = icmp sge i32 %call4, %add
  %. = zext i1 %cmp6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_tlsext_max_fragment_length(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i8 noundef zeroext %mode) local_unnamed_addr #2 {
entry:
  %switch = icmp ult i8 %mode, 5
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3347, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.SSL_CTX_set_tlsext_max_fragment_length, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 232, i8* noundef null) #15
  br label %return

if.end:                                           ; preds = %entry
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 9
  store i8 %mode, i8* %max_fragment_len_mode, align 4, !tbaa !193
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_tlsext_max_fragment_length(%struct.ssl_st* nocapture noundef writeonly %ssl, i8 noundef zeroext %mode) local_unnamed_addr #2 {
entry:
  %switch = icmp ult i8 %mode, 5
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3359, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.SSL_set_tlsext_max_fragment_length, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 232, i8* noundef null) #15
  br label %return

if.end:                                           ; preds = %entry
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 88, i32 35
  store i8 %mode, i8* %max_fragment_len_mode, align 4, !tbaa !194
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define zeroext i8 @SSL_SESSION_get_max_fragment_length(%struct.ssl_session_st* nocapture noundef readonly %session) local_unnamed_addr #11 {
entry:
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 26, i32 8
  %0 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !195
  ret i8 %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @ssl_hmac_old_new(%struct.ssl_hmac_st* noundef) local_unnamed_addr #0

declare %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #0

declare void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #0

declare void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #0

declare void @ssl_hmac_old_free(%struct.ssl_hmac_st* noundef) local_unnamed_addr #0

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #0

declare i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #0

declare i32 @ssl_hmac_old_init(%struct.ssl_hmac_st* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #0

declare i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @ssl_hmac_old_update(%struct.ssl_hmac_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #0

declare i32 @ssl_hmac_old_final(%struct.ssl_hmac_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #0

declare i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #0

declare i64 @ssl_hmac_old_size(%struct.ssl_hmac_st* noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #0

declare i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #0

declare i32 @OSSL_PROVIDER_get_capabilities(%struct.ossl_provider_st* noundef, i8* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_provider_groups(%struct.ossl_param_st* noundef %params, i8* nocapture noundef readonly %data) #2 {
entry:
  %gid = alloca i32, align 4
  %is_kem = alloca i32, align 4
  %ctx1 = bitcast i8* %data to %struct.ssl_ctx_st**
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !42
  %provider2 = getelementptr inbounds i8, i8* %data, i64 8
  %1 = bitcast i8* %provider2 to %struct.ossl_provider_st**
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %1, align 8, !tbaa !44
  %3 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16
  %4 = bitcast i32* %is_kem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16
  store i32 0, i32* %is_kem, align 4, !tbaa !60
  %group_list_max_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 93
  %5 = load i64, i64* %group_list_max_len, align 8, !tbaa !196
  %group_list_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 92
  %6 = load i64, i64* %group_list_len, align 8, !tbaa !32
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 560, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 244) #15
  br label %if.end

if.else:                                          ; preds = %if.then
  %group_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 91
  %7 = bitcast %struct.tls_group_info_st** %group_list to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !33
  %9 = mul i64 %5, 56
  %mul = add i64 %9, 560
  %call7 = tail call i8* @CRYPTO_realloc(i8* noundef %8, i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 249) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %tmp.0.in = phi i8* [ %call, %if.then5 ], [ %call7, %if.else ]
  %cmp8 = icmp eq i8* %tmp.0.in, null
  br i1 %cmp8, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup140

cleanup:                                          ; preds = %if.end
  %tmp.0 = bitcast i8* %tmp.0.in to %struct.tls_group_info_st*
  %group_list11 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 91
  %10 = bitcast %struct.tls_group_info_st** %group_list11 to i8**
  store i8* %tmp.0.in, i8** %10, align 8, !tbaa !33
  %11 = load i64, i64* %group_list_max_len, align 8, !tbaa !196
  %add.ptr = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %tmp.0, i64 %11
  %12 = bitcast %struct.tls_group_info_st* %add.ptr to i8*
  %call13 = tail call i8* @memset(i8* noundef nonnull %12, i32 noundef 0, i64 noundef 560) #15
  %13 = load i64, i64* %group_list_max_len, align 8, !tbaa !196
  %add15 = add i64 %13, 10
  store i64 %add15, i64* %group_list_max_len, align 8, !tbaa !196
  %.pre = load i64, i64* %group_list_len, align 8, !tbaa !32
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %entry
  %14 = phi i64 [ %.pre, %cleanup ], [ %6, %entry ]
  %group_list17 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 91
  %15 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list17, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14
  %call19 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #15
  %cmp20 = icmp eq %struct.ossl_param_st* %call19, null
  br i1 %cmp20, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call19, i64 0, i32 1
  %16 = load i32, i32* %data_type, align 8, !tbaa !197
  %cmp21.not = icmp eq i32 %16, 4
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %err

if.end23:                                         ; preds = %lor.lhs.false
  %data24 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call19, i64 0, i32 2
  %17 = load i8*, i8** %data24, align 8, !tbaa !199
  %call25 = tail call i8* @CRYPTO_strdup(i8* noundef %17, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 268) #15
  %tlsname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %arrayidx, i64 0, i32 0
  store i8* %call25, i8** %tlsname, align 8, !tbaa !200
  %cmp27 = icmp eq i8* %call25, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %if.then133

if.end29:                                         ; preds = %if.end23
  %call30 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #15
  %cmp31 = icmp eq %struct.ossl_param_st* %call30, null
  br i1 %cmp31, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end29
  %data_type33 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call30, i64 0, i32 1
  %18 = load i32, i32* %data_type33, align 8, !tbaa !197
  %cmp34.not = icmp eq i32 %18, 4
  br i1 %cmp34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false32, %if.end29
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end36:                                         ; preds = %lor.lhs.false32
  %data37 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call30, i64 0, i32 2
  %19 = load i8*, i8** %data37, align 8, !tbaa !199
  %call38 = tail call i8* @CRYPTO_strdup(i8* noundef %19, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279) #15
  %realname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 1
  store i8* %call38, i8** %realname, align 8, !tbaa !201
  %cmp40 = icmp eq i8* %call38, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %if.then133

if.end42:                                         ; preds = %if.end36
  %call43 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #15
  %cmp44 = icmp eq %struct.ossl_param_st* %call43, null
  br i1 %cmp44, label %if.then49, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end42
  %call46 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %call43, i32* noundef nonnull %gid) #15
  %tobool = icmp eq i32 %call46, 0
  %20 = load i32, i32* %gid, align 4
  %cmp48 = icmp ugt i32 %20, 65535
  %or.cond = select i1 %tobool, i1 true, i1 %cmp48
  br i1 %or.cond, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false45, %if.end42
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end50:                                         ; preds = %lor.lhs.false45
  %conv = trunc i32 %20 to i16
  %group_id = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 4
  store i16 %conv, i16* %group_id, align 4, !tbaa !37
  %call51 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0)) #15
  %cmp52 = icmp eq %struct.ossl_param_st* %call51, null
  br i1 %cmp52, label %if.then58, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end50
  %data_type55 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call51, i64 0, i32 1
  %21 = load i32, i32* %data_type55, align 8, !tbaa !197
  %cmp56.not = icmp eq i32 %21, 4
  br i1 %cmp56.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54, %if.end50
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end59:                                         ; preds = %lor.lhs.false54
  %data60 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call51, i64 0, i32 2
  %22 = load i8*, i8** %data60, align 8, !tbaa !199
  %call61 = call i8* @CRYPTO_strdup(i8* noundef %22, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 297) #15
  %algorithm = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 2
  store i8* %call61, i8** %algorithm, align 8, !tbaa !68
  %cmp63 = icmp eq i8* %call61, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end59
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #15
  br label %if.then133

if.end66:                                         ; preds = %if.end59
  %call67 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0)) #15
  %cmp68 = icmp eq %struct.ossl_param_st* %call67, null
  br i1 %cmp68, label %if.then73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end66
  %secbits = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 3
  %call71 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %call67, i32* noundef nonnull %secbits) #15
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false70, %if.end66
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end74:                                         ; preds = %lor.lhs.false70
  %call75 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0)) #15
  %cmp76.not = icmp eq %struct.ossl_param_st* %call75, null
  br i1 %cmp76.not, label %if.end84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end74
  %call78 = call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %call75, i32* noundef nonnull %is_kem) #15
  %tobool79 = icmp eq i32 %call78, 0
  %23 = load i32, i32* %is_kem, align 4
  %cmp81 = icmp ugt i32 %23, 1
  %or.cond149 = select i1 %tobool79, i1 true, i1 %cmp81
  br i1 %or.cond149, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end84:                                         ; preds = %land.lhs.true, %if.end74
  %24 = phi i32 [ %23, %land.lhs.true ], [ 0, %if.end74 ]
  %25 = trunc i32 %24 to i8
  %is_kem86 = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 9
  store i8 %25, i8* %is_kem86, align 8, !tbaa !202
  %call87 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #15
  %cmp88 = icmp eq %struct.ossl_param_st* %call87, null
  br i1 %cmp88, label %if.then93, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end84
  %mintls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 5
  %call91 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call87, i32* noundef nonnull %mintls) #15
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false90, %if.end84
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end94:                                         ; preds = %lor.lhs.false90
  %call95 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)) #15
  %cmp96 = icmp eq %struct.ossl_param_st* %call95, null
  br i1 %cmp96, label %if.then101, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end94
  %maxtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 6
  %call99 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call95, i32* noundef nonnull %maxtls) #15
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end102

if.then101:                                       ; preds = %lor.lhs.false98, %if.end94
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end102:                                        ; preds = %lor.lhs.false98
  %call103 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0)) #15
  %cmp104 = icmp eq %struct.ossl_param_st* %call103, null
  br i1 %cmp104, label %if.then109, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.end102
  %mindtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 7
  %call107 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call103, i32* noundef nonnull %mindtls) #15
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %if.end110

if.then109:                                       ; preds = %lor.lhs.false106, %if.end102
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end110:                                        ; preds = %lor.lhs.false106
  %call111 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #15
  %cmp112 = icmp eq %struct.ossl_param_st* %call111, null
  br i1 %cmp112, label %if.then117, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end110
  %maxdtls = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %15, i64 %14, i32 8
  %call115 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call111, i32* noundef nonnull %maxdtls) #15
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %if.end118

if.then117:                                       ; preds = %lor.lhs.false114, %if.end110
  call void @ERR_new() #15
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.add_provider_groups, i64 0, i64 0)) #15
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, i8* noundef null) #15
  br label %if.then133

if.end118:                                        ; preds = %lor.lhs.false114
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 0
  %26 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %27 = load i8*, i8** %algorithm, align 8, !tbaa !68
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 85
  %28 = load i8*, i8** %propq, align 8, !tbaa !95
  %call120 = call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %26, i8* noundef %27, i8* noundef %28) #15
  %cmp121.not = icmp eq %struct.evp_keymgmt_st* %call120, null
  br i1 %cmp121.not, label %if.then133, label %if.then123

if.then123:                                       ; preds = %if.end118
  %call124 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %call120) #15
  %cmp125 = icmp eq %struct.ossl_provider_st* %call124, %2
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.then123
  %29 = load i64, i64* %group_list_len, align 8, !tbaa !32
  %inc = add i64 %29, 1
  store i64 %inc, i64* %group_list_len, align 8, !tbaa !32
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.then123
  %ginf.0 = phi %struct.tls_group_info_st* [ null, %if.then127 ], [ %arrayidx, %if.then123 ]
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %call120) #15
  br label %err

err:                                              ; preds = %if.end129, %if.then22
  %ginf.1 = phi %struct.tls_group_info_st* [ %arrayidx, %if.then22 ], [ %ginf.0, %if.end129 ]
  %ret.0 = phi i32 [ 0, %if.then22 ], [ 1, %if.end129 ]
  %cmp131.not = icmp eq %struct.tls_group_info_st* %ginf.1, null
  br i1 %cmp131.not, label %cleanup140, label %if.then133

if.then133:                                       ; preds = %if.end118, %if.then117, %if.then109, %if.then101, %if.then93, %if.then83, %if.then73, %if.then65, %if.then58, %if.then49, %if.then41, %if.then35, %if.then28, %err
  %ret.0230 = phi i32 [ %ret.0, %err ], [ 1, %if.end118 ], [ 0, %if.then117 ], [ 0, %if.then109 ], [ 0, %if.then101 ], [ 0, %if.then93 ], [ 0, %if.then83 ], [ 0, %if.then73 ], [ 0, %if.then65 ], [ 0, %if.then58 ], [ 0, %if.then49 ], [ 0, %if.then41 ], [ 0, %if.then35 ], [ 0, %if.then28 ]
  %ginf.1229 = phi %struct.tls_group_info_st* [ %ginf.1, %err ], [ %arrayidx, %if.end118 ], [ %arrayidx, %if.then117 ], [ %arrayidx, %if.then109 ], [ %arrayidx, %if.then101 ], [ %arrayidx, %if.then93 ], [ %arrayidx, %if.then83 ], [ %arrayidx, %if.then73 ], [ %arrayidx, %if.then65 ], [ %arrayidx, %if.then58 ], [ %arrayidx, %if.then49 ], [ %arrayidx, %if.then41 ], [ %arrayidx, %if.then35 ], [ %arrayidx, %if.then28 ]
  %tlsname134 = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %ginf.1229, i64 0, i32 0
  %30 = load i8*, i8** %tlsname134, align 8, !tbaa !200
  call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 369) #15
  %realname135 = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %ginf.1229, i64 0, i32 1
  %31 = load i8*, i8** %realname135, align 8, !tbaa !201
  call void @CRYPTO_free(i8* noundef %31, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 370) #15
  %algorithm136 = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %ginf.1229, i64 0, i32 2
  %32 = load i8*, i8** %algorithm136, align 8, !tbaa !68
  call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 371) #15
  %33 = bitcast %struct.tls_group_info_st* %ginf.1229 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %33, align 8, !tbaa !55
  br label %cleanup140

cleanup140:                                       ; preds = %cleanup.thread, %err, %if.then133
  %retval.1 = phi i32 [ %ret.0230, %if.then133 ], [ %ret.0, %err ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16
  ret i32 %retval.1
}

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #0

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

declare i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #0

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #0

declare %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #0

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc zeroext i16 @tls1_group_name2id(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef readonly %name) unnamed_addr #13 {
entry:
  %group_list_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 92
  %0 = load i64, i64* %group_list_len, align 8, !tbaa !32
  %cmp18.not = icmp eq i64 %0, 0
  br i1 %cmp18.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %group_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 91
  %1 = load %struct.tls_group_info_st*, %struct.tls_group_info_st** %group_list, align 8, !tbaa !33
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %tlsname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %1, i64 %i.019, i32 0
  %2 = load i8*, i8** %tlsname, align 8, !tbaa !200
  %call = tail call i32 @strcmp(i8* noundef %2, i8* noundef %name) #18
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %realname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %1, i64 %i.019, i32 1
  %3 = load i8*, i8** %realname, align 8, !tbaa !201
  %call4 = tail call i32 @strcmp(i8* noundef %3, i8* noundef %name) #18
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %group_id = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %1, i64 %i.019, i32 4
  %4 = load i16, i16* %group_id, align 4, !tbaa !37
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !203

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i16 [ %4, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i16 %retval.0
}

declare i32 @EVP_PKEY_get_ec_point_conv_form(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_field_type(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #0

declare %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #17
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !155
  %1 = load i8, i8* %0, align 1, !tbaa !69
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !60
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !69
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !155
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !155
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !144
  %sub = add i64 %1, -2
  store i64 %sub, i64* %remaining, align 8, !tbaa !144
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @tls12_shared_sigalgs(%struct.ssl_st* noundef %s, %struct.sigalg_lookup_st** noundef writeonly %shsig, i16* nocapture noundef readonly %pref, i64 noundef %preflen, i16* nocapture noundef readonly %allow, i64 noundef %allowlen) unnamed_addr #2 {
entry:
  %cmp44.not = icmp eq i64 %preflen, 0
  br i1 %cmp44.not, label %for.end19, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp441.not51 = icmp eq i64 %allowlen, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %shsig.addr.050 = phi %struct.sigalg_lookup_st** [ %shsig, %for.body.lr.ph ], [ %shsig.addr.2, %cleanup ]
  %nmatch.049 = phi i64 [ 0, %for.body.lr.ph ], [ %nmatch.2, %cleanup ]
  %i.048 = phi i64 [ 0, %for.body.lr.ph ], [ %inc17, %cleanup ]
  %ptmp.045 = phi i16* [ %pref, %for.body.lr.ph ], [ %incdec.ptr18, %cleanup ]
  %0 = load i16, i16* %ptmp.045, align 2, !tbaa !34
  %call = tail call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef %s, i16 noundef zeroext %0) #17
  %cmp1 = icmp eq %struct.sigalg_lookup_st* %call, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call2 = tail call fastcc i32 @tls12_sigalg_allowed(%struct.ssl_st* noundef %s, i32 noundef 327692, %struct.sigalg_lookup_st* noundef nonnull %call) #17
  %tobool.not = icmp eq i32 %call2, 0
  %brmerge = or i1 %tobool.not, %cmp441.not51
  br i1 %brmerge, label %cleanup, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %lor.lhs.false
  %1 = load i16, i16* %ptmp.045, align 2, !tbaa !34
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc
  %j.043 = phi i64 [ 0, %for.body5.lr.ph ], [ %inc14, %for.inc ]
  %atmp.042 = phi i16* [ %allow, %for.body5.lr.ph ], [ %incdec.ptr15, %for.inc ]
  %2 = load i16, i16* %atmp.042, align 2, !tbaa !34
  %cmp7 = icmp eq i16 %1, %2
  br i1 %cmp7, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body5
  %inc = add i64 %nmatch.049, 1
  %tobool10.not = icmp eq %struct.sigalg_lookup_st** %shsig.addr.050, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.then9
  %incdec.ptr = getelementptr inbounds %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %shsig.addr.050, i64 1
  store %struct.sigalg_lookup_st* %call, %struct.sigalg_lookup_st** %shsig.addr.050, align 8, !tbaa !55
  br label %cleanup

for.inc:                                          ; preds = %for.body5
  %inc14 = add nuw i64 %j.043, 1
  %incdec.ptr15 = getelementptr inbounds i16, i16* %atmp.042, i64 1
  %exitcond.not = icmp eq i64 %inc14, %allowlen
  br i1 %exitcond.not, label %cleanup, label %for.body5, !llvm.loop !204

cleanup:                                          ; preds = %for.inc, %lor.lhs.false, %if.then11, %if.then9, %for.body
  %nmatch.2 = phi i64 [ %nmatch.049, %lor.lhs.false ], [ %nmatch.049, %for.body ], [ %inc, %if.then11 ], [ %inc, %if.then9 ], [ %nmatch.049, %for.inc ]
  %shsig.addr.2 = phi %struct.sigalg_lookup_st** [ %shsig.addr.050, %lor.lhs.false ], [ %shsig.addr.050, %for.body ], [ %incdec.ptr, %if.then11 ], [ null, %if.then9 ], [ %shsig.addr.050, %for.inc ]
  %inc17 = add nuw i64 %i.048, 1
  %incdec.ptr18 = getelementptr inbounds i16, i16* %ptmp.045, i64 1
  %exitcond52.not = icmp eq i64 %inc17, %preflen
  br i1 %exitcond52.not, label %for.end19, label %for.body, !llvm.loop !205

for.end19:                                        ; preds = %cleanup, %entry
  %nmatch.0.lcssa = phi i64 [ 0, %entry ], [ %nmatch.2, %cleanup ]
  ret i64 %nmatch.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_sigorhash(i32* nocapture noundef writeonly %psig, i32* nocapture noundef writeonly %phash, i8* noundef %str) unnamed_addr #2 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #18
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 6, i32* %psig, align 4, !tbaa !60
  br label %if.end22

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0)) #18
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call3 = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #18
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  store i32 912, i32* %psig, align 4, !tbaa !60
  br label %if.end22

if.else6:                                         ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #18
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else6
  store i32 116, i32* %psig, align 4, !tbaa !60
  br label %if.end22

if.else10:                                        ; preds = %if.else6
  %call11 = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #18
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else10
  store i32 408, i32* %psig, align 4, !tbaa !60
  br label %if.end22

if.else14:                                        ; preds = %if.else10
  %call15 = tail call i32 @OBJ_sn2nid(i8* noundef %str) #15
  store i32 %call15, i32* %phash, align 4, !tbaa !60
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.else14
  %call18 = tail call i32 @OBJ_ln2nid(i8* noundef %str) #15
  store i32 %call18, i32* %phash, align 4, !tbaa !60
  br label %if.end22

if.end22:                                         ; preds = %if.then5, %if.then13, %if.then17, %if.else14, %if.then9, %if.then
  ret void
}

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #0

declare i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_nid(%struct.x509_st* noundef) local_unnamed_addr #0

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #0

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #0

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #0

declare i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare i32 @X509_get_extension_flags(%struct.x509_st* noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_info(%struct.x509_st* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_cert_usable(%struct.ssl_st* nocapture noundef readonly %s, %struct.sigalg_lookup_st* nocapture noundef readonly %sig, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #2 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %call = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef %pkey, i64* noundef nonnull %idx) #15
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %idx, align 8, !tbaa !59
  %conv = trunc i64 %1 to i32
  %sig_idx = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %sig, i64 0, i32 5
  %2 = load i32, i32* %sig_idx, align 8, !tbaa !112
  %cmp1.not = icmp eq i32 %2, %conv
  br i1 %cmp1.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @check_cert_usable(%struct.ssl_st* noundef %s, %struct.sigalg_lookup_st* noundef nonnull %sig, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_cert_usable(%struct.ssl_st* nocapture noundef readonly %s, %struct.sigalg_lookup_st* nocapture noundef readonly %sig, %struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #2 {
entry:
  %mdnid = alloca i32, align 4
  %pknid = alloca i32, align 4
  %0 = bitcast i32* %mdnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %1 = bitcast i32* %pknid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %sig, i64 0, i32 2
  %2 = load i32, i32* %hash, align 4, !tbaa !90
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mdname.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !57
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !27
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 85
  %5 = load i8*, i8** %propq, align 8, !tbaa !95
  %call3 = tail call i32 @EVP_PKEY_digestsign_supports_digest(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %mdname.0, i8* noundef %5) #15
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %6 = load i16*, i16** %peer_cert_sigalgs, align 8, !tbaa !133
  %cmp7.not = icmp eq i16* %6, null
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @X509_get_signature_info(%struct.x509_st* noundef %x, i32* noundef nonnull %mdnid, i32* noundef nonnull %pknid, i32* noundef null, i32* noundef null) #15
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then8
  %peer_cert_sigalgslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 31
  %7 = load i64, i64* %peer_cert_sigalgslen, align 8, !tbaa !206
  %cmp1448.not = icmp eq i64 %7, 0
  br i1 %cmp1448.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = load i16*, i16** %peer_cert_sigalgs, align 8, !tbaa !133
  %9 = load i32, i32* %mdnid, align 4
  %10 = load i32, i32* %pknid, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.049 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %i.049
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %call18 = call fastcc %struct.sigalg_lookup_st* @tls1_lookup_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %11) #17
  %cmp19 = icmp eq %struct.sigalg_lookup_st* %call18, null
  br i1 %cmp19, label %for.inc, label %if.end21

if.end21:                                         ; preds = %for.body
  %hash22 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call18, i64 0, i32 2
  %12 = load i32, i32* %hash22, align 4, !tbaa !90
  %cmp23 = icmp eq i32 %9, %12
  br i1 %cmp23, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end21
  %sig24 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %call18, i64 0, i32 4
  %13 = load i32, i32* %sig24, align 4, !tbaa !94
  %cmp25 = icmp eq i32 %10, %13
  br i1 %cmp25, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end21, %land.lhs.true, %for.body
  %inc = add nuw i64 %i.049, 1
  %exitcond.not = icmp eq i64 %inc, %7
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !207

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %for.cond.preheader, %if.end6, %if.then8, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then8 ], [ 1, %if.end6 ], [ 0, %for.cond.preheader ], [ 1, %land.lhs.true ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_digestsign_supports_digest(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!22 = !{!23, !9, i64 24}
!23 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!24 = !{!5, !9, i64 2784}
!25 = !{!23, !6, i64 0}
!26 = !{!5, !6, i64 0}
!27 = !{!28, !9, i64 0}
!28 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !29, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !30, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !31, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!30 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!31 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!32 = !{!28, !11, i64 1584}
!33 = !{!28, !9, i64 1576}
!34 = !{!14, !14, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !14, i64 28}
!38 = !{!"tls_group_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !14, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48}
!39 = distinct !{!39, !36}
!40 = !{!28, !9, i64 648}
!41 = !{!28, !11, i64 656}
!42 = !{!43, !9, i64 0}
!43 = !{!"provider_group_data_st", !9, i64 0, !9, i64 8}
!44 = !{!43, !9, i64 8}
!45 = distinct !{!45, !36}
!46 = !{!47, !14, i64 4}
!47 = !{!"", !6, i64 0, !14, i64 4}
!48 = !{!47, !6, i64 0}
!49 = distinct !{!49, !36}
!50 = distinct !{!50, !36}
!51 = !{!5, !9, i64 2200}
!52 = !{!53, !6, i64 28}
!53 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !54, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!54 = !{!"", !9, i64 0, !11, i64 8}
!55 = !{!9, !9, i64 0}
!56 = !{!5, !9, i64 2760}
!57 = !{!5, !9, i64 2472}
!58 = !{!5, !11, i64 2752}
!59 = !{!11, !11, i64 0}
!60 = !{!6, !6, i64 0}
!61 = !{!23, !9, i64 192}
!62 = !{!63, !6, i64 96}
!63 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!64 = !{!38, !6, i64 40}
!65 = !{!38, !6, i64 44}
!66 = !{!38, !6, i64 32}
!67 = !{!38, !6, i64 36}
!68 = !{!38, !9, i64 16}
!69 = !{!7, !7, i64 0}
!70 = !{!38, !6, i64 24}
!71 = !{!5, !6, i64 56}
!72 = !{!5, !9, i64 736}
!73 = !{!74, !6, i64 24}
!74 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!75 = !{!5, !11, i64 2536}
!76 = distinct !{!76, !36}
!77 = !{!5, !9, i64 2776}
!78 = !{!5, !11, i64 2768}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!82, !9, i64 24}
!82 = !{!"", !9, i64 0, !11, i64 8, !11, i64 16, !9, i64 24}
!83 = !{!82, !9, i64 0}
!84 = !{!82, !11, i64 8}
!85 = !{!82, !11, i64 16}
!86 = distinct !{!86, !36}
!87 = !{!5, !9, i64 2728}
!88 = !{!5, !11, i64 2720}
!89 = !{i64 0, i64 8, !55, i64 8, i64 2, !34, i64 12, i64 4, !60, i64 16, i64 4, !60, i64 20, i64 4, !60, i64 24, i64 4, !60, i64 28, i64 4, !60, i64 32, i64 4, !60, i64 36, i64 4, !60}
!90 = !{!91, !6, i64 12}
!91 = !{!"sigalg_lookup_st", !9, i64 0, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!92 = !{!91, !6, i64 16}
!93 = !{!91, !6, i64 36}
!94 = !{!91, !6, i64 20}
!95 = !{!28, !9, i64 1088}
!96 = distinct !{!96, !36}
!97 = !{!28, !9, i64 1568}
!98 = !{!5, !9, i64 944}
!99 = !{!100, !6, i64 4}
!100 = !{!"", !6, i64 0, !6, i64 4}
!101 = !{!74, !6, i64 32}
!102 = !{!103, !9, i64 8}
!103 = !{!"cert_pkey_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!104 = !{!53, !9, i64 0}
!105 = !{!53, !9, i64 424}
!106 = !{!53, !11, i64 432}
!107 = !{!53, !9, i64 408}
!108 = !{!53, !11, i64 416}
!109 = !{!91, !6, i64 32}
!110 = distinct !{!110, !36}
!111 = !{!91, !14, i64 8}
!112 = !{!91, !6, i64 24}
!113 = distinct !{!113, !36}
!114 = !{!5, !9, i64 2744}
!115 = !{!5, !11, i64 2736}
!116 = distinct !{!116, !36}
!117 = !{!5, !9, i64 896}
!118 = !{!5, !6, i64 992}
!119 = !{!5, !6, i64 988}
!120 = !{!5, !9, i64 2440}
!121 = !{!5, !11, i64 3144}
!122 = distinct !{!122, !36}
!123 = !{!74, !6, i64 28}
!124 = !{!5, !6, i64 1000}
!125 = !{!74, !6, i64 44}
!126 = !{!74, !6, i64 48}
!127 = !{!5, !6, i64 996}
!128 = !{!74, !6, i64 52}
!129 = !{!74, !6, i64 56}
!130 = !{!74, !6, i64 68}
!131 = !{!5, !9, i64 7592}
!132 = !{!5, !11, i64 7600}
!133 = !{!5, !9, i64 920}
!134 = !{!5, !9, i64 912}
!135 = distinct !{!135, !36}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36}
!138 = !{!5, !6, i64 2712}
!139 = !{!140, !9, i64 648}
!140 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 40, !7, i64 48, !11, i64 80, !7, i64 88, !54, i64 344, !11, i64 360, !7, i64 368, !54, i64 624, !11, i64 640, !9, i64 648}
!141 = !{!142, !6, i64 16}
!142 = !{!"raw_extension_st", !54, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32}
!143 = !{!140, !11, i64 40}
!144 = !{!54, !11, i64 8}
!145 = !{!5, !9, i64 2952}
!146 = !{!5, !9, i64 2808}
!147 = !{!28, !9, i64 584}
!148 = !{!28, !9, i64 576}
!149 = !{!28, !9, i64 568}
!150 = !{!151, !11, i64 592}
!151 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !152, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!152 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!153 = !{!28, !9, i64 1024}
!154 = !{!28, !9, i64 1032}
!155 = !{!54, !9, i64 0}
!156 = !{!157, !9, i64 0}
!157 = !{!"ssl_hmac_st", !9, i64 0, !9, i64 8}
!158 = !{i64 0, i64 8, !55, i64 8, i64 4, !60, i64 16, i64 8, !55, i64 24, i64 8, !59, i64 32, i64 8, !59}
!159 = !{!157, !9, i64 8}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = !{!5, !11, i64 928}
!164 = !{!91, !6, i64 28}
!165 = !{!166, !11, i64 0}
!166 = !{!"", !11, i64 0, !7, i64 8}
!167 = !{!91, !9, i64 0}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = !{!103, !9, i64 0}
!174 = !{!103, !9, i64 16}
!175 = distinct !{!175, !36}
!176 = distinct !{!176, !36}
!177 = distinct !{!177, !36}
!178 = !{!5, !11, i64 768}
!179 = !{!5, !9, i64 760}
!180 = distinct !{!180, !36}
!181 = !{!5, !9, i64 776}
!182 = distinct !{!182, !36}
!183 = distinct !{!183, !36}
!184 = distinct !{!184, !36}
!185 = distinct !{!185, !36}
!186 = distinct !{!186, !36}
!187 = !{!53, !6, i64 24}
!188 = !{!5, !9, i64 904}
!189 = distinct !{!189, !36}
!190 = distinct !{!190, !36}
!191 = distinct !{!191, !36}
!192 = !{!100, !6, i64 0}
!193 = !{!28, !7, i64 612}
!194 = !{!5, !7, i64 2892}
!195 = !{!151, !7, i64 872}
!196 = !{!28, !11, i64 1592}
!197 = !{!198, !6, i64 8}
!198 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !11, i64 24, !11, i64 32}
!199 = !{!198, !9, i64 16}
!200 = !{!38, !9, i64 0}
!201 = !{!38, !9, i64 8}
!202 = !{!38, !7, i64 48}
!203 = distinct !{!203, !36}
!204 = distinct !{!204, !36}
!205 = distinct !{!205, !36}
!206 = !{!5, !11, i64 936}
!207 = distinct !{!207, !36}
