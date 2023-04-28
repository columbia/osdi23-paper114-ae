; ModuleID = 'ssl/statem/statem_lib.c'
source_filename = "ssl/statem/statem_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509err2alert_st = type { i32, i32 }
%struct.version_info = type { i32, %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()* }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, {}*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, {}*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon.2 = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.3, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.3 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
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
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.0, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.1, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, {}*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
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
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, {}*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl_mac_buf_st = type { i8*, i32 }
%struct.stack_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.SSL_CERT_LOOKUP = type { i32, i32 }
%struct.X509_name_st = type opaque

@hrrrandom = constant [32 x i8] c"\CF!\ADt\E5\9Aa\11\BE\1D\8C\02\1Ee\B8\91\C2\A2\11\16z\BB\8C^\07\9E\09\E2\C8\A83\9C", align 16
@.str = private unnamed_addr constant [24 x i8] c"ssl/statem/statem_lib.c\00", align 1
@__func__.tls_setup_handshake = private unnamed_addr constant [20 x i8] c"tls_setup_handshake\00", align 1
@.str.1 = private unnamed_addr constant [162 x i8] c"The max supported SSL/TLS version needs the MD5-SHA1 digest but it is not available in the loaded providers. Use (D)TLSv1.2 or above, or load different providers\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"No ciphers enabled for max supported SSL/TLS version\00", align 1
@__func__.tls_construct_cert_verify = private unnamed_addr constant [26 x i8] c"tls_construct_cert_verify\00", align 1
@__func__.tls_process_cert_verify = private unnamed_addr constant [24 x i8] c"tls_process_cert_verify\00", align 1
@__func__.tls_construct_finished = private unnamed_addr constant [23 x i8] c"tls_construct_finished\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CLIENT_RANDOM\00", align 1
@__func__.tls_construct_key_update = private unnamed_addr constant [25 x i8] c"tls_construct_key_update\00", align 1
@__func__.tls_process_key_update = private unnamed_addr constant [23 x i8] c"tls_process_key_update\00", align 1
@__func__.tls_process_change_cipher_spec = private unnamed_addr constant [31 x i8] c"tls_process_change_cipher_spec\00", align 1
@__func__.tls_process_finished = private unnamed_addr constant [21 x i8] c"tls_process_finished\00", align 1
@__func__.tls_construct_change_cipher_spec = private unnamed_addr constant [33 x i8] c"tls_construct_change_cipher_spec\00", align 1
@__func__.ssl3_output_cert_chain = private unnamed_addr constant [23 x i8] c"ssl3_output_cert_chain\00", align 1
@__func__.tls_finish_handshake = private unnamed_addr constant [21 x i8] c"tls_finish_handshake\00", align 1
@__func__.tls_get_message_header = private unnamed_addr constant [23 x i8] c"tls_get_message_header\00", align 1
@x509table = internal unnamed_addr constant [41 x %struct.x509err2alert_st] [%struct.x509err2alert_st { i32 50, i32 40 }, %struct.x509err2alert_st { i32 67, i32 42 }, %struct.x509err2alert_st { i32 94, i32 42 }, %struct.x509err2alert_st { i32 68, i32 42 }, %struct.x509err2alert_st { i32 22, i32 48 }, %struct.x509err2alert_st { i32 10, i32 45 }, %struct.x509err2alert_st { i32 9, i32 42 }, %struct.x509err2alert_st { i32 28, i32 42 }, %struct.x509err2alert_st { i32 23, i32 44 }, %struct.x509err2alert_st { i32 7, i32 51 }, %struct.x509err2alert_st { i32 27, i32 42 }, %struct.x509err2alert_st { i32 12, i32 45 }, %struct.x509err2alert_st { i32 11, i32 42 }, %struct.x509err2alert_st { i32 8, i32 51 }, %struct.x509err2alert_st { i32 65, i32 42 }, %struct.x509err2alert_st { i32 18, i32 48 }, %struct.x509err2alert_st { i32 66, i32 42 }, %struct.x509err2alert_st { i32 63, i32 42 }, %struct.x509err2alert_st { i32 14, i32 42 }, %struct.x509err2alert_st { i32 13, i32 42 }, %struct.x509err2alert_st { i32 15, i32 42 }, %struct.x509err2alert_st { i32 16, i32 42 }, %struct.x509err2alert_st { i32 62, i32 42 }, %struct.x509err2alert_st { i32 79, i32 48 }, %struct.x509err2alert_st { i32 69, i32 80 }, %struct.x509err2alert_st { i32 26, i32 43 }, %struct.x509err2alert_st { i32 64, i32 42 }, %struct.x509err2alert_st { i32 17, i32 80 }, %struct.x509err2alert_st { i32 25, i32 48 }, %struct.x509err2alert_st { i32 19, i32 48 }, %struct.x509err2alert_st { i32 70, i32 80 }, %struct.x509err2alert_st { i32 6, i32 42 }, %struct.x509err2alert_st { i32 4, i32 42 }, %struct.x509err2alert_st { i32 5, i32 42 }, %struct.x509err2alert_st { i32 3, i32 48 }, %struct.x509err2alert_st { i32 33, i32 48 }, %struct.x509err2alert_st { i32 2, i32 48 }, %struct.x509err2alert_st { i32 20, i32 48 }, %struct.x509err2alert_st { i32 21, i32 48 }, %struct.x509err2alert_st { i32 1, i32 80 }, %struct.x509err2alert_st { i32 0, i32 46 }], align 16
@tls_version_table = internal unnamed_addr constant [6 x %struct.version_info] [%struct.version_info { i32 772, %struct.ssl_method_st* ()* @tlsv1_3_client_method, %struct.ssl_method_st* ()* @tlsv1_3_server_method }, %struct.version_info { i32 771, %struct.ssl_method_st* ()* @tlsv1_2_client_method, %struct.ssl_method_st* ()* @tlsv1_2_server_method }, %struct.version_info { i32 770, %struct.ssl_method_st* ()* @tlsv1_1_client_method, %struct.ssl_method_st* ()* @tlsv1_1_server_method }, %struct.version_info { i32 769, %struct.ssl_method_st* ()* @tlsv1_client_method, %struct.ssl_method_st* ()* @tlsv1_server_method }, %struct.version_info { i32 768, %struct.ssl_method_st* ()* null, %struct.ssl_method_st* ()* null }, %struct.version_info zeroinitializer], align 16
@dtls_version_table = internal unnamed_addr constant [4 x %struct.version_info] [%struct.version_info { i32 65277, %struct.ssl_method_st* ()* @dtlsv1_2_client_method, %struct.ssl_method_st* ()* @dtlsv1_2_server_method }, %struct.version_info { i32 65279, %struct.ssl_method_st* ()* @dtlsv1_client_method, %struct.ssl_method_st* ()* @dtlsv1_server_method }, %struct.version_info { i32 256, %struct.ssl_method_st* ()* @dtls_bad_ver_client_method, %struct.ssl_method_st* ()* null }, %struct.version_info zeroinitializer], align 16
@__func__.ssl_choose_client_version = private unnamed_addr constant [26 x i8] c"ssl_choose_client_version\00", align 1
@tls12downgrade = external constant [8 x i8], align 1
@tls11downgrade = external constant [8 x i8], align 1
@__func__.parse_ca_names = private unnamed_addr constant [15 x i8] c"parse_ca_names\00", align 1
@__func__.construct_ca_names = private unnamed_addr constant [19 x i8] c"construct_ca_names\00", align 1
@__func__.construct_key_exchange_tbs = private unnamed_addr constant [27 x i8] c"construct_key_exchange_tbs\00", align 1
@__func__.tls13_save_handshake_digest_for_pha = private unnamed_addr constant [36 x i8] c"tls13_save_handshake_digest_for_pha\00", align 1
@__func__.tls13_restore_handshake_digest_for_pha = private unnamed_addr constant [39 x i8] c"tls13_restore_handshake_digest_for_pha\00", align 1
@get_cert_verify_tbs_data.servercontext = internal constant [34 x i8] c"TLS 1.3, server CertificateVerify\00", align 16
@get_cert_verify_tbs_data.clientcontext = internal constant [34 x i8] c"TLS 1.3, client CertificateVerify\00", align 16
@__func__.get_cert_verify_tbs_data = private unnamed_addr constant [25 x i8] c"get_cert_verify_tbs_data\00", align 1
@__func__.ssl_add_cert_chain = private unnamed_addr constant [19 x i8] c"ssl_add_cert_chain\00", align 1
@__func__.ssl_add_cert_to_wpacket = private unnamed_addr constant [24 x i8] c"ssl_add_cert_to_wpacket\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_do_write(%struct.ssl_st* noundef %s, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %written, align 8, !tbaa !4
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !23
  %init_off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  %3 = load i64, i64* %init_off, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %4 = load i64, i64* %init_num, align 8, !tbaa !26
  %call = call i32 @ssl3_write_bytes(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %arrayidx, i64 noundef %4, i64* noundef nonnull %written) #13
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %type, 22
  br i1 %cmp1, label %if.then2, label %if.end28

if.then2:                                         ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %7, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then18

land.lhs.true:                                    ; preds = %if.then2
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %8 = load i32, i32* %version, align 8, !tbaa !32
  %cmp4 = icmp slt i32 %8, 772
  %cmp8.not = icmp eq i32 %8, 65536
  %or.cond = or i1 %cmp4, %cmp8.not
  br i1 %or.cond, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %9 = load i32, i32* %hand_state, align 4, !tbaa !33
  switch i32 %9, label %if.then18 [
    i32 33, label %if.end28
    i32 43, label %if.end28
    i32 42, label %if.end28
  ]

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.then2
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data20 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %10, i64 0, i32 1
  %11 = load i8*, i8** %data20, align 8, !tbaa !23
  %12 = load i64, i64* %init_off, align 8, !tbaa !25
  %arrayidx22 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i64, i64* %written, align 8, !tbaa !4
  %call23 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef %arrayidx22, i64 noundef %13) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %if.then18, %if.end
  %14 = load i64, i64* %written, align 8, !tbaa !4
  %15 = load i64, i64* %init_num, align 8, !tbaa !26
  %cmp30 = icmp eq i64 %15, %14
  br i1 %cmp30, label %if.then31, label %if.end41

if.then31:                                        ; preds = %if.end28
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %16 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !34
  %tobool32.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %16, null
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.then31
  %version35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %17 = load i32, i32* %version35, align 8, !tbaa !35
  %18 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data37 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %18, i64 0, i32 1
  %19 = load i8*, i8** %data37, align 8, !tbaa !23
  %20 = load i64, i64* %init_off, align 8, !tbaa !25
  %add = add i64 %20, %14
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %21 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !36
  call void %16(i32 noundef 1, i32 noundef %17, i32 noundef %type, i8* noundef %19, i64 noundef %add, %struct.ssl_st* noundef nonnull %s, i8* noundef %21) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %22 = load i64, i64* %init_off, align 8, !tbaa !25
  %add43 = add i64 %22, %14
  store i64 %add43, i64* %init_off, align 8, !tbaa !25
  %sub = sub i64 %15, %14
  store i64 %sub, i64* %init_num, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then33, %if.then18, %entry, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -1, %entry ], [ -1, %if.then18 ], [ 1, %if.then33 ], [ 1, %if.then31 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ssl3_write_bytes(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i32 @ssl3_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_close_construct_packet(%struct.ssl_st* nocapture noundef writeonly %s, %struct.wpacket_st* noundef %pkt, i32 noundef %htype) local_unnamed_addr #0 {
entry:
  %msglen = alloca i64, align 8
  %0 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %cmp.not = icmp eq i32 %htype, 257
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %call1 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %msglen) #13
  %tobool2 = icmp eq i32 %call1, 0
  %1 = load i64, i64* %msglen, align 8
  %cmp4 = icmp ugt i64 %1, 2147483647
  %or.cond = select i1 %tobool2, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 %1, i64* %init_num, align 8, !tbaa !26
  %init_off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  store i64 0, i64* %init_off, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_setup_handshake(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %ver_min = alloca i32, align 4
  %ver_max = alloca i32, align 4
  %0 = bitcast i32* %ver_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i32* %ver_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %call = tail call i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef %s) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup167, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 0, i64 0
  %call1 = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef 26) #13
  %call2 = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* noundef nonnull %ver_min, i32* noundef nonnull %ver_max, i32* noundef null) #14
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_setup_handshake, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 70, i32 noundef 191, i8* noundef null) #13
  br label %cleanup167

if.end4:                                          ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 88, i64 9
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx, align 8, !tbaa !38
  %cmp5 = icmp eq %struct.evp_md_st* %3, null
  br i1 %cmp5, label %if.then6, label %if.end46

if.then6:                                         ; preds = %if.end4
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %6, 8
  %tobool7.not = icmp eq i32 %and, 0
  %7 = load i32, i32* %ver_max, align 4, !tbaa !39
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.then6
  %cmp9 = icmp ne i32 %7, 256
  %cmp10220 = icmp slt i32 %7, 65279
  %not.cmp10 = and i1 %cmp9, %cmp10220
  br i1 %not.cmp10, label %if.then25, label %if.then18

if.end16:                                         ; preds = %if.then6
  %cmp13 = icmp sgt i32 %7, 770
  br i1 %cmp13, label %if.else35, label %if.then18

if.then18:                                        ; preds = %if.then8, %if.end16
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_setup_handshake, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 297, i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0)) #13
  br label %cleanup167

if.then25:                                        ; preds = %if.then8
  %8 = load i32, i32* %ver_min, align 4, !tbaa !39
  %cmp26 = icmp eq i32 %8, 256
  %cmp31219 = icmp sgt i32 %8, 65277
  %cmp31 = or i1 %cmp26, %cmp31219
  br i1 %cmp31, label %if.end42, label %if.end46

if.else35:                                        ; preds = %if.end16
  %9 = load i32, i32* %ver_min, align 4, !tbaa !39
  %cmp36 = icmp slt i32 %9, 771
  br i1 %cmp36, label %if.end42, label %if.end46

if.end42:                                         ; preds = %if.else35, %if.then25
  %.sink = phi i64 [ 65277, %if.then25 ], [ 771, %if.else35 ]
  %call39 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %s, i32 noundef 123, i64 noundef %.sink, i8* noundef null) #13
  %ok.0 = trunc i64 %call39 to i32
  %tobool43.not = icmp eq i32 %ok.0, 0
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end42
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_setup_handshake, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup167

if.end46:                                         ; preds = %if.else35, %if.then25, %if.end42, %if.end4
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %10 = load i32, i32* %server, align 8, !tbaa !40
  %tobool47.not = icmp eq i32 %10, 0
  br i1 %tobool47.not, label %if.else131, label %if.then48

if.then48:                                        ; preds = %if.end46
  %call49 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #13
  %call50 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call49) #14
  %call51238 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call50) #13
  %cmp52239 = icmp sgt i32 %call51238, 0
  br i1 %cmp52239, label %for.body.lr.ph, label %cleanup127

for.body.lr.ph:                                   ; preds = %if.then48
  %method56 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %11 = load i32, i32* %ver_max, align 4
  %cmp62 = icmp eq i32 %11, 256
  %cond67 = select i1 %cmp62, i32 65280, i32 %11
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0240 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call55 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call50, i32 noundef %i.0240) #13
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method56, align 8, !tbaa !27
  %ssl3_enc57 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc57, align 8, !tbaa !28
  %enc_flags58 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags58, align 8, !tbaa !30
  %and59 = and i32 %14, 8
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else94, label %if.then61

if.then61:                                        ; preds = %for.body
  %min_dtls = getelementptr inbounds i8, i8* %call55, i64 52
  %15 = bitcast i8* %min_dtls to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !41
  %cmp68 = icmp eq i32 %16, 256
  %spec.select223 = select i1 %cmp68, i32 65280, i32 %16
  %cmp75.not = icmp sgt i32 %cond67, %spec.select223
  br i1 %cmp75.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then61
  %max_dtls = getelementptr inbounds i8, i8* %call55, i64 56
  %17 = bitcast i8* %max_dtls to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !43
  %cmp83 = icmp eq i32 %18, 256
  %spec.select224 = select i1 %cmp83, i32 65280, i32 %18
  %cmp90.not = icmp slt i32 %cond67, %spec.select224
  br i1 %cmp90.not, label %for.inc, label %if.end111

if.else94:                                        ; preds = %for.body
  %min_tls = getelementptr inbounds i8, i8* %call55, i64 44
  %19 = bitcast i8* %min_tls to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !44
  %cmp95.not = icmp slt i32 %11, %20
  br i1 %cmp95.not, label %for.inc, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.else94
  %max_tls = getelementptr inbounds i8, i8* %call55, i64 48
  %21 = bitcast i8* %max_tls to i32*
  %22 = load i32, i32* %21, align 8, !tbaa !45
  %cmp98.not = icmp sgt i32 %11, %22
  br i1 %cmp98.not, label %for.inc, label %if.end111

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true97, %if.then61, %if.else94
  %inc = add nuw nsw i32 %i.0240, 1
  %call51 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call50) #13
  %cmp52 = icmp slt i32 %inc, %call51
  br i1 %cmp52, label %for.body, label %cleanup127, !llvm.loop !46

if.end111:                                        ; preds = %land.lhs.true97, %land.lhs.true
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %23 = load i64, i64* %finish_md_len, align 8, !tbaa !48
  %cmp112 = icmp eq i64 %23, 0
  br i1 %cmp112, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end111
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %24 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !49
  %cmp116 = icmp eq i64 %24, 0
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %lor.lhs.false, %if.end111
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !50
  %sess_accept = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %25, i64 0, i32 15, i32 3
  %26 = atomicrmw add i32* %sess_accept, i32 1 monotonic, align 4
  br label %cleanup167

if.else119:                                       ; preds = %lor.lhs.false
  %27 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %sess_accept_renegotiate = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %27, i64 0, i32 15, i32 4
  %28 = atomicrmw add i32* %sess_accept_renegotiate, i32 1 monotonic, align 4
  %cert_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 19
  store i32 0, i32* %cert_request, align 8, !tbaa !51
  br label %cleanup167

cleanup127:                                       ; preds = %for.inc, %if.then48
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_setup_handshake, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 181, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0)) #13
  br label %cleanup167

if.else131:                                       ; preds = %if.end46
  %finish_md_len134 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %29 = load i64, i64* %finish_md_len134, align 8, !tbaa !48
  %cmp135 = icmp eq i64 %29, 0
  br i1 %cmp135, label %if.then143, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.else131
  %peer_finish_md_len140 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %30 = load i64, i64* %peer_finish_md_len140, align 8, !tbaa !49
  %cmp141 = icmp eq i64 %30, 0
  br i1 %cmp141, label %if.then143, label %if.else148

if.then143:                                       ; preds = %lor.lhs.false137, %if.else131
  %session_ctx144 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %31 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx144, align 8, !tbaa !50
  %sess_connect = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %31, i64 0, i32 15, i32 0
  br label %if.end153

if.else148:                                       ; preds = %lor.lhs.false137
  %session_ctx149 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx149, align 8, !tbaa !50
  %sess_connect_renegotiate = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %32, i64 0, i32 15, i32 1
  br label %if.end153

if.end153:                                        ; preds = %if.else148, %if.then143
  %sess_connect_renegotiate.sink = phi i32* [ %sess_connect_renegotiate, %if.else148 ], [ %sess_connect, %if.then143 ]
  %33 = atomicrmw add i32* %sess_connect_renegotiate.sink, i32 1 monotonic, align 4
  %arraydecay155 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %call156 = tail call i8* @memset(i8* noundef nonnull %arraydecay155, i32 noundef 0, i64 noundef 32) #13
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 0, i32* %hit, align 8, !tbaa !52
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  store i32 0, i32* %cert_req, align 8, !tbaa !53
  %method159 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %34 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method159, align 8, !tbaa !27
  %ssl3_enc160 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %34, i64 0, i32 25
  %35 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc160, align 8, !tbaa !28
  %enc_flags161 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %35, i64 0, i32 12
  %36 = load i32, i32* %enc_flags161, align 8, !tbaa !30
  %and162 = and i32 %36, 8
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %cleanup167, label %if.then164

if.then164:                                       ; preds = %if.end153
  %use_timer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 1, i32* %use_timer, align 8, !tbaa !54
  br label %cleanup167

cleanup167:                                       ; preds = %if.else119, %if.then118, %if.then164, %if.end153, %cleanup127, %if.then18, %if.then44, %entry, %if.then3
  %retval.3 = phi i32 [ 0, %if.then3 ], [ 0, %cleanup127 ], [ 0, %entry ], [ 0, %if.then44 ], [ 0, %if.then18 ], [ 1, %if.end153 ], [ 1, %if.then164 ], [ 1, %if.then118 ], [ 1, %if.else119 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.3
}

declare i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_get_min_max_version(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %min_version, i32* nocapture noundef writeonly %max_version, i32* noundef writeonly %real_max) local_unnamed_addr #0 {
entry:
  %method1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method1, align 8, !tbaa !27
  %version2 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %version2, align 8, !tbaa !32
  switch i32 %1, label %sw.default [
    i32 65536, label %sw.epilog
    i32 131071, label %sw.bb6
  ]

sw.default:                                       ; preds = %entry
  %version3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %2 = load i32, i32* %version3, align 8, !tbaa !35
  store i32 %2, i32* %max_version, align 4, !tbaa !39
  store i32 %2, i32* %min_version, align 4, !tbaa !39
  %cmp = icmp eq i32* %real_max, null
  %. = select i1 %cmp, i32 0, i32 786691
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6
  %table.0 = phi %struct.version_info* [ getelementptr inbounds ([4 x %struct.version_info], [4 x %struct.version_info]* @dtls_version_table, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %entry ]
  store i32 0, i32* %min_version, align 4, !tbaa !39
  %cmp7 = icmp ne i32* %real_max, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.epilog
  store i32 0, i32* %real_max, align 4, !tbaa !39
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.epilog
  %version1191 = getelementptr inbounds %struct.version_info, %struct.version_info* %table.0, i64 0, i32 0
  %3 = load i32, i32* %version1191, align 8, !tbaa !55
  %cmp12.not92 = icmp eq i32 %3, 0
  br i1 %cmp12.not92, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %if.end10
  store i32 0, i32* %max_version, align 4, !tbaa !39
  br label %10

for.body:                                         ; preds = %if.end10, %for.inc
  %version1197 = phi i32* [ %incdec.ptr, %for.inc ], [ %version1191, %if.end10 ]
  %hole.095 = phi i32 [ %hole.1, %for.inc ], [ 1, %if.end10 ]
  %tmp_real_max.094 = phi i32 [ %tmp_real_max.2, %for.inc ], [ 0, %if.end10 ]
  %version.093 = phi i32 [ %version.1, %for.inc ], [ 0, %if.end10 ]
  %cmeth = getelementptr inbounds i32, i32* %version1197, i64 2
  %4 = bitcast i32* %cmeth to %struct.ssl_method_st* ()**
  %5 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %4, align 8, !tbaa !57
  %cmp14 = icmp eq %struct.ssl_method_st* ()* %5, null
  br i1 %cmp14, label %for.inc, label %if.end17

if.end17:                                         ; preds = %for.body
  %call = tail call %struct.ssl_method_st* %5() #13
  %cmp19 = icmp eq i32 %hole.095, 1
  %cmp21 = icmp eq i32 %tmp_real_max.094, 0
  %or.cond = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.end25.thread, label %if.end25

if.end25:                                         ; preds = %if.end17
  %call26 = tail call fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %call) #14
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.else, label %for.inc

if.end25.thread:                                  ; preds = %if.end17
  %6 = load i32, i32* %version1197, align 8, !tbaa !55
  %call2684 = tail call fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %call) #14
  %cmp27.not85 = icmp eq i32 %call2684, 0
  br i1 %cmp27.not85, label %if.else32, label %for.inc

if.else:                                          ; preds = %if.end25
  %tobool.not = icmp eq i32 %hole.095, 0
  br i1 %tobool.not, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else
  %version31 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %call, i64 0, i32 0
  %7 = load i32, i32* %version31, align 8, !tbaa !32
  br label %for.inc.sink.split

if.else32:                                        ; preds = %if.end25.thread, %if.else
  %tmp_real_max.18690 = phi i32 [ %tmp_real_max.094, %if.else ], [ %6, %if.end25.thread ]
  %cmp36 = icmp ne i32 %tmp_real_max.18690, 0
  %or.cond53 = select i1 %cmp7, i1 %cmp36, i1 false
  br i1 %or.cond53, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else32
  store i32 %tmp_real_max.18690, i32* %real_max, align 4, !tbaa !39
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else32
  %version40 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %call, i64 0, i32 0
  %8 = load i32, i32* %version40, align 8, !tbaa !32
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then30, %if.end39
  %.sink = phi i32 [ %8, %if.end39 ], [ %7, %if.then30 ]
  %version.1.ph = phi i32 [ %8, %if.end39 ], [ %version.093, %if.then30 ]
  %tmp_real_max.2.ph = phi i32 [ %tmp_real_max.18690, %if.end39 ], [ %tmp_real_max.094, %if.then30 ]
  store i32 %.sink, i32* %min_version, align 4, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end25.thread, %if.end25, %for.body
  %version.1 = phi i32 [ %version.093, %for.body ], [ %version.093, %if.end25 ], [ %version.093, %if.end25.thread ], [ %version.1.ph, %for.inc.sink.split ]
  %tmp_real_max.2 = phi i32 [ 0, %for.body ], [ %tmp_real_max.094, %if.end25 ], [ %6, %if.end25.thread ], [ %tmp_real_max.2.ph, %for.inc.sink.split ]
  %hole.1 = phi i32 [ 1, %for.body ], [ 1, %if.end25 ], [ 1, %if.end25.thread ], [ 0, %for.inc.sink.split ]
  %incdec.ptr = getelementptr inbounds i32, i32* %version1197, i64 6
  %9 = load i32, i32* %incdec.ptr, align 8, !tbaa !55
  %cmp12.not = icmp eq i32 %9, 0
  br i1 %cmp12.not, label %for.end, label %for.body, !llvm.loop !58

for.end:                                          ; preds = %for.inc
  store i32 %version.1, i32* %max_version, align 4, !tbaa !39
  %cmp43 = icmp eq i32 %version.1, 0
  br i1 %cmp43, label %10, label %cleanup

10:                                               ; preds = %for.end.thread, %for.end
  br label %cleanup

cleanup:                                          ; preds = %10, %for.end, %sw.default
  %retval.0 = phi i32 [ %., %sw.default ], [ 191, %10 ], [ 0, %for.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_cert_verify(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %hdatalen = alloca i64, align 8
  %siglen = alloca i64, align 8
  %hdata = alloca i8*, align 8
  %tls13tbs = alloca [162 x i8], align 16
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !38
  %1 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %2 = bitcast i64* %hdatalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store i64 0, i64* %hdatalen, align 8, !tbaa !4
  %3 = bitcast i64* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i64 0, i64* %siglen, align 8, !tbaa !4
  %4 = bitcast i8** %hdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = getelementptr inbounds [162 x i8], [162 x i8]* %tls13tbs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 162, i8* nonnull %5) #12
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  %6 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !59
  %cmp = icmp eq %struct.sigalg_lookup_st* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %7 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert, align 8, !tbaa !60
  %cmp3 = icmp eq %struct.cert_pkey_st* %7, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %7, i64 0, i32 1
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !61
  %cmp7 = icmp eq %struct.evp_pkey_st* %8, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %call = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %9, %struct.sigalg_lookup_st* noundef nonnull %6, %struct.evp_md_st** noundef nonnull %md) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false8, %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end10:                                         ; preds = %lor.lhs.false8
  %call11 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %cmp12 = icmp eq %struct.evp_md_ctx_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @get_cert_verify_tbs_data(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %5, i8** noundef nonnull %hdata, i64* noundef nonnull %hdatalen) #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 25
  %11 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 12
  %12 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %12, 2
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %sigalg20 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %6, i64 0, i32 1
  %13 = load i16, i16* %sigalg20, align 8, !tbaa !63
  %conv = zext i16 %13 to i32
  %call21 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #13
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end24:                                         ; preds = %land.lhs.true, %if.end18
  %14 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !38
  %cmp25 = icmp eq %struct.evp_md_st* %14, null
  br i1 %cmp25, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end24
  %call27 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %14) #13
  br label %cond.end

cond.end:                                         ; preds = %if.end24, %cond.false
  %cond = phi i8* [ %call27, %cond.false ], [ null, %if.end24 ]
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 0
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !65
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 85
  %17 = load i8*, i8** %propq, align 8, !tbaa !70
  %call30 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call11, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %cond, %struct.ossl_lib_ctx_st* noundef %16, i8* noundef %17, %struct.evp_pkey_st* noundef nonnull %8, %struct.ossl_param_st* noundef null) #13
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %cond.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end34:                                         ; preds = %cond.end
  %sig35 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %6, i64 0, i32 4
  %18 = load i32, i32* %sig35, align 4, !tbaa !71
  %cmp36 = icmp eq i32 %18, 912
  br i1 %cmp36, label %if.then38, label %if.end48

if.then38:                                        ; preds = %if.end34
  %19 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %call39 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %19, i32 noundef 6) #13
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.then46, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.then38
  %20 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %call43 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %20, i32 noundef -1) #13
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %lor.lhs.false42, %if.then38
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end48:                                         ; preds = %lor.lhs.false42, %if.end34
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %21 = load i32, i32* %version, align 8, !tbaa !35
  %cmp49 = icmp eq i32 %21, 768
  %22 = load i8*, i8** %hdata, align 8, !tbaa !38
  %23 = load i64, i64* %hdatalen, align 8, !tbaa !4
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end48
  %call52 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef nonnull %call11, i8* noundef %22, i64 noundef %23) #13
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %if.then66, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.then51
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %24 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !72
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %24, i64 0, i32 1
  %25 = load i64, i64* %master_key_length, align 8, !tbaa !73
  %conv56 = trunc i64 %25 to i32
  %arraydecay58 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %24, i64 0, i32 3, i64 0
  %call59 = call i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef nonnull %call11, i32 noundef 29, i32 noundef %conv56, i8* noundef nonnull %arraydecay58) #13
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %if.then66, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false55
  %call63 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %call11, i8* noundef null, i64* noundef nonnull %siglen) #13
  %cmp64 = icmp slt i32 %call63, 1
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false62, %lor.lhs.false55, %if.then51
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end67:                                         ; preds = %lor.lhs.false62
  %26 = load i64, i64* %siglen, align 8, !tbaa !4
  %call68 = call i8* @CRYPTO_malloc(i64 noundef %26, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 342) #13
  %cmp69 = icmp eq i8* %call68, null
  br i1 %cmp69, label %if.then75, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end67
  %call72 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %call11, i8* noundef nonnull %call68, i64* noundef nonnull %siglen) #13
  %cmp73 = icmp slt i32 %call72, 1
  br i1 %cmp73, label %if.then75, label %if.end91

if.then75:                                        ; preds = %lor.lhs.false71, %if.end67
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.else:                                          ; preds = %if.end48
  %call77 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call11, i8* noundef null, i64* noundef nonnull %siglen, i8* noundef %22, i64 noundef %23) #13
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.else
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end81:                                         ; preds = %if.else
  %27 = load i64, i64* %siglen, align 8, !tbaa !4
  %call82 = call i8* @CRYPTO_malloc(i64 noundef %27, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #13
  %cmp83 = icmp eq i8* %call82, null
  br i1 %cmp83, label %if.then89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.end81
  %28 = load i8*, i8** %hdata, align 8, !tbaa !38
  %call86 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call11, i8* noundef nonnull %call82, i64* noundef nonnull %siglen, i8* noundef %28, i64 noundef %23) #13
  %cmp87 = icmp slt i32 %call86, 1
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %lor.lhs.false85, %if.end81
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end91:                                         ; preds = %lor.lhs.false85, %lor.lhs.false71
  %sig.0 = phi i8* [ %call68, %lor.lhs.false71 ], [ %call82, %lor.lhs.false85 ]
  %29 = load i32, i32* %sig35, align 4, !tbaa !71
  switch i32 %29, label %if.end102 [
    i32 980, label %if.then101
    i32 979, label %if.then101
    i32 811, label %if.then101
  ]

if.then101:                                       ; preds = %if.end91, %if.end91, %if.end91
  %30 = load i64, i64* %siglen, align 8, !tbaa !4
  call void @BUF_reverse(i8* noundef nonnull %sig.0, i8* noundef null, i64 noundef %30) #13
  br label %if.end102

if.end102:                                        ; preds = %if.end91, %if.then101
  %31 = load i64, i64* %siglen, align 8, !tbaa !4
  %call103 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %sig.0, i64 noundef %31, i64 noundef 2) #13
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end102
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_construct_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end106:                                        ; preds = %if.end102
  %call107 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %if.end110

if.end110:                                        ; preds = %if.end106
  call void @CRYPTO_free(i8* noundef nonnull %sig.0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 387) #13
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call11) #13
  br label %cleanup

err:                                              ; preds = %if.end106, %if.end14, %if.then105, %if.then89, %if.then80, %if.then75, %if.then66, %if.then46, %if.then33, %if.then23, %if.then13, %if.then9, %if.then
  %mctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %if.then9 ], [ null, %if.then13 ], [ %call11, %if.then33 ], [ %call11, %if.then46 ], [ %call11, %if.then66 ], [ %call11, %if.then75 ], [ %call11, %if.end106 ], [ %call11, %if.then105 ], [ %call11, %if.then80 ], [ %call11, %if.then89 ], [ %call11, %if.then23 ], [ %call11, %if.end14 ]
  %sig.1 = phi i8* [ null, %if.then ], [ null, %if.then9 ], [ null, %if.then13 ], [ null, %if.then33 ], [ null, %if.then46 ], [ null, %if.then66 ], [ %call68, %if.then75 ], [ %sig.0, %if.end106 ], [ %sig.0, %if.then105 ], [ null, %if.then80 ], [ %call82, %if.then89 ], [ null, %if.then23 ], [ null, %if.end14 ]
  call void @CRYPTO_free(i8* noundef %sig.1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 391) #13
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end110
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end110 ]
  call void @llvm.lifetime.end.p0i8(i64 162, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef, %struct.sigalg_lookup_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_cert_verify_tbs_data(%struct.ssl_st* noundef %s, i8* noundef %tls13tbs, i8** noundef %hdata, i64* nocapture noundef writeonly %hdatalen) unnamed_addr #0 {
entry:
  %hashlen = alloca i64, align 8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else32

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !32
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.else32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %call = tail call i8* @memset(i8* noundef %tls13tbs, i32 noundef 32, i64 noundef 64) #13
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %5 = load i32, i32* %hand_state, align 4, !tbaa !33
  %.off = add i32 %5, -39
  %switch67 = icmp ult i32 %.off, 2
  %add.ptr = getelementptr inbounds i8, i8* %tls13tbs, i64 64
  %. = select i1 %switch67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @get_cert_verify_tbs_data.servercontext, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @get_cert_verify_tbs_data.clientcontext, i64 0, i64 0)
  %call13 = tail call i8* @strcpy(i8* noundef nonnull %add.ptr, i8* noundef %.) #13
  %6 = load i32, i32* %hand_state, align 4, !tbaa !33
  switch i32 %6, label %if.else25 [
    i32 39, label %if.then21
    i32 29, label %if.then21
  ]

if.then21:                                        ; preds = %if.then, %if.then
  %add.ptr22 = getelementptr inbounds i8, i8* %tls13tbs, i64 98
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 50, i64 0
  %cert_verify_hash_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 51
  %7 = load i64, i64* %cert_verify_hash_len, align 8, !tbaa !76
  %call23 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr22, i8* noundef nonnull %arraydecay, i64 noundef %7) #13
  br label %cleanup.thread

if.else25:                                        ; preds = %if.then
  %add.ptr26 = getelementptr inbounds i8, i8* %tls13tbs, i64 98
  %call27 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %add.ptr26, i64 noundef 64, i64* noundef nonnull %hashlen) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else25, %if.then21
  %.in = phi i64* [ %cert_verify_hash_len, %if.then21 ], [ %hashlen, %if.else25 ]
  %8 = load i64, i64* %.in, align 8, !tbaa !4
  store i8* %tls13tbs, i8** %hdata, align 8, !tbaa !38
  %add = add i64 %8, 98
  store i64 %add, i64* %hdatalen, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  br label %return

cleanup:                                          ; preds = %if.else25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  br label %return

if.else32:                                        ; preds = %land.lhs.true, %entry
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %9 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !77
  %10 = bitcast i8** %hdata to i8*
  %call33 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %9, i32 noundef 3, i64 noundef 0, i8* noundef %10) #13
  %cmp34 = icmp slt i64 %call33, 1
  br i1 %cmp34, label %cleanup37, label %cleanup37.thread

cleanup37.thread:                                 ; preds = %if.else32
  store i64 %call33, i64* %hdatalen, align 8, !tbaa !4
  br label %return

cleanup37:                                        ; preds = %if.else32
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.get_cert_verify_tbs_data, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %cleanup.thread, %cleanup37.thread, %cleanup37, %cleanup
  %retval.2 = phi i32 [ 0, %cleanup37 ], [ 0, %cleanup ], [ 1, %cleanup37.thread ], [ 1, %cleanup.thread ]
  ret i32 %retval.2
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @BUF_reverse(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_cert_verify(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i32, align 4
  %md = alloca %struct.evp_md_st*, align 8
  %hdatalen = alloca i64, align 8
  %hdata = alloca i8*, align 8
  %tls13tbs = alloca [162 x i8], align 16
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %sigalg = alloca i32, align 4
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !38
  %3 = bitcast i64* %hdatalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store i64 0, i64* %hdatalen, align 8, !tbaa !4
  %4 = bitcast i8** %hdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  %5 = getelementptr inbounds [162 x i8], [162 x i8]* %tls13tbs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 162, i8* nonnull %5) #12
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %6 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !72
  %peer1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 11
  %8 = load %struct.x509_st*, %struct.x509_st** %peer1, align 8, !tbaa !78
  %call2 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %8) #13
  %cmp3 = icmp eq %struct.evp_pkey_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef nonnull %call2, i64* noundef null) #13
  %cmp7 = icmp eq %struct.SSL_CERT_LOOKUP* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 220, i8* noundef null) #13
  br label %err

if.end9:                                          ; preds = %if.end5
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 12
  %11 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %11, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  %12 = bitcast i32* %sigalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #12
  %call11 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %sigalg) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 240, i8* noundef null) #13
  br label %cleanup.thread

if.end14:                                         ; preds = %if.then10
  %13 = load i32, i32* %sigalg, align 4, !tbaa !39
  %conv = trunc i32 %13 to i16
  %call15 = tail call i32 @tls12_check_peer_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv, %struct.evp_pkey_st* noundef nonnull %call2) #13
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then13, %if.end14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #12
  br label %err

cleanup:                                          ; preds = %if.end14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #12
  br label %if.end24

if.else:                                          ; preds = %if.end9
  %call20 = tail call i32 @tls1_set_peer_legacy_sigalg(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %call2) #13
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end24:                                         ; preds = %cleanup, %if.else
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  %15 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !79
  %call25 = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %14, %struct.sigalg_lookup_st* noundef %15, %struct.evp_md_st** noundef nonnull %md) #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end28:                                         ; preds = %if.end24
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc30 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 25
  %17 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc30, align 8, !tbaa !28
  %enc_flags31 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 12
  %18 = load i32, i32* %enc_flags31, align 8, !tbaa !30
  %and32 = and i32 %18, 2
  %tobool40.not = icmp eq i32 %and32, 0
  br i1 %tobool40.not, label %land.lhs.true, label %if.else62

land.lhs.true:                                    ; preds = %if.end28
  %call41 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp42 = icmp eq i64 %call41, 64
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false51

land.lhs.true44:                                  ; preds = %land.lhs.true
  %call45 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call2) #13
  %cmp46 = icmp eq i32 %call45, 811
  br i1 %cmp46, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true44
  %call48 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call2) #13
  %cmp49 = icmp eq i32 %call48, 979
  br i1 %cmp49, label %if.then59, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %call52 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp53 = icmp eq i64 %call52, 128
  br i1 %cmp53, label %land.lhs.true55, label %if.else62

land.lhs.true55:                                  ; preds = %lor.lhs.false51
  %call56 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call2) #13
  %cmp57 = icmp eq i32 %call56, 980
  br i1 %cmp57, label %if.then59, label %if.else62

if.then59:                                        ; preds = %land.lhs.true55, %lor.lhs.false, %land.lhs.true44
  %call60 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %conv61 = trunc i64 %call60 to i32
  store i32 %conv61, i32* %len, align 4, !tbaa !39
  br label %if.end67

if.else62:                                        ; preds = %land.lhs.true55, %lor.lhs.false51, %if.end28
  %call63 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %len) #14
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.else62.if.end67_crit_edge

if.else62.if.end67_crit_edge:                     ; preds = %if.else62
  %.pre = load i32, i32* %len, align 4, !tbaa !39
  br label %if.end67

if.then65:                                        ; preds = %if.else62
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %err

if.end67:                                         ; preds = %if.else62.if.end67_crit_edge, %if.then59
  %19 = phi i32 [ %.pre, %if.else62.if.end67_crit_edge ], [ %conv61, %if.then59 ]
  %conv68 = zext i32 %19 to i64
  %call69 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %conv68) #14
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %err

if.end72:                                         ; preds = %if.end67
  %call73 = call fastcc i32 @get_cert_verify_tbs_data(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %5, i8** noundef nonnull %hdata, i64* noundef nonnull %hdatalen) #14
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end72
  %20 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !38
  %cmp77 = icmp eq %struct.evp_md_st* %20, null
  br i1 %cmp77, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end76
  %call79 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %20) #13
  br label %cond.end

cond.end:                                         ; preds = %if.end76, %cond.false
  %cond = phi i8* [ %call79, %cond.false ], [ null, %if.end76 ]
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %21, i64 0, i32 0
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !65
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %21, i64 0, i32 85
  %23 = load i8*, i8** %propq, align 8, !tbaa !70
  %call82 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %cond, %struct.ossl_lib_ctx_st* noundef %22, i8* noundef %23, %struct.evp_pkey_st* noundef nonnull %call2, %struct.ossl_param_st* noundef null) #13
  %cmp83 = icmp slt i32 %call82, 1
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %cond.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end86:                                         ; preds = %cond.end
  %call87 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call2) #13
  switch i32 %call87, label %cleanup.cont107 [
    i32 980, label %if.then96
    i32 979, label %if.then96
    i32 811, label %if.then96
  ]

if.then96:                                        ; preds = %if.end86, %if.end86, %if.end86
  %call98 = call i8* @CRYPTO_malloc(i64 noundef %conv68, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 503) #13
  %cmp99 = icmp eq i8* %call98, null
  br i1 %cmp99, label %cleanup105, label %if.end102

if.end102:                                        ; preds = %if.then96
  %24 = load i8*, i8** %data, align 8, !tbaa !38
  call void @BUF_reverse(i8* noundef nonnull %call98, i8* noundef %24, i64 noundef %conv68) #13
  store i8* %call98, i8** %data, align 8, !tbaa !38
  br label %cleanup.cont107

cleanup105:                                       ; preds = %if.then96
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

cleanup.cont107:                                  ; preds = %if.end86, %if.end102
  %gost_data.1.ph = phi i8* [ null, %if.end86 ], [ %call98, %if.end102 ]
  %25 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !79
  %cmp111.not = icmp eq %struct.sigalg_lookup_st* %25, null
  br i1 %cmp111.not, label %if.end129, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %cleanup.cont107
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %25, i64 0, i32 4
  %26 = load i32, i32* %sig, align 4, !tbaa !71
  %cmp117 = icmp eq i32 %26, 912
  br i1 %cmp117, label %if.then119, label %if.end129

if.then119:                                       ; preds = %land.lhs.true113
  %27 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %call120 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %27, i32 noundef 6) #13
  %cmp121 = icmp slt i32 %call120, 1
  br i1 %cmp121, label %if.then127, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %if.then119
  %28 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !38
  %call124 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %28, i32 noundef -1) #13
  %cmp125 = icmp slt i32 %call124, 1
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %lor.lhs.false123, %if.then119
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end129:                                        ; preds = %lor.lhs.false123, %land.lhs.true113, %cleanup.cont107
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %29 = load i32, i32* %version, align 8, !tbaa !35
  %cmp130 = icmp eq i32 %29, 768
  br i1 %cmp130, label %if.then132, label %if.else152

if.then132:                                       ; preds = %if.end129
  %30 = load i8*, i8** %hdata, align 8, !tbaa !38
  %31 = load i64, i64* %hdatalen, align 8, !tbaa !4
  %call133 = call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %30, i64 noundef %31) #13
  %cmp134 = icmp slt i32 %call133, 1
  br i1 %cmp134, label %if.then144, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.then132
  %32 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !72
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %32, i64 0, i32 1
  %33 = load i64, i64* %master_key_length, align 8, !tbaa !73
  %conv138 = trunc i64 %33 to i32
  %arraydecay140 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %32, i64 0, i32 3, i64 0
  %call141 = call i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef nonnull %call, i32 noundef 29, i32 noundef %conv138, i8* noundef nonnull %arraydecay140) #13
  %cmp142 = icmp slt i32 %call141, 1
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %lor.lhs.false136, %if.then132
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #13
  br label %err

if.end145:                                        ; preds = %lor.lhs.false136
  %34 = load i8*, i8** %data, align 8, !tbaa !38
  %call147 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %34, i64 noundef %conv68) #13
  %cmp148 = icmp slt i32 %call147, 1
  br i1 %cmp148, label %if.then150, label %if.end159

if.then150:                                       ; preds = %if.end145
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 123, i8* noundef null) #13
  br label %err

if.else152:                                       ; preds = %if.end129
  %35 = load i8*, i8** %data, align 8, !tbaa !38
  %36 = load i8*, i8** %hdata, align 8, !tbaa !38
  %37 = load i64, i64* %hdatalen, align 8, !tbaa !4
  %call154 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %35, i64 noundef %conv68, i8* noundef %36, i64 noundef %37) #13
  %cmp155 = icmp slt i32 %call154, 1
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.else152
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_cert_verify, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 123, i8* noundef null) #13
  br label %err

if.end159:                                        ; preds = %if.else152, %if.end145
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %38 = load i32, i32* %server, align 8, !tbaa !40
  %tobool160.not = icmp eq i32 %38, 0
  br i1 %tobool160.not, label %land.lhs.true161, label %if.else183

land.lhs.true161:                                 ; preds = %if.end159
  %39 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc163 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %39, i64 0, i32 25
  %40 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc163, align 8, !tbaa !28
  %enc_flags164 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %40, i64 0, i32 12
  %41 = load i32, i32* %enc_flags164, align 8, !tbaa !30
  %and165 = and i32 %41, 8
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %land.lhs.true167, label %if.else183

land.lhs.true167:                                 ; preds = %land.lhs.true161
  %version169 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %39, i64 0, i32 0
  %42 = load i32, i32* %version169, align 8, !tbaa !32
  %cmp170 = icmp slt i32 %42, 772
  %cmp175.not = icmp eq i32 %42, 65536
  %or.cond = or i1 %cmp170, %cmp175.not
  br i1 %or.cond, label %if.else183, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %land.lhs.true167
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %43 = load i32, i32* %cert_req, align 8, !tbaa !53
  %cmp180 = icmp eq i32 %43, 1
  br i1 %cmp180, label %err, label %if.else183

if.else183:                                       ; preds = %land.lhs.true177, %land.lhs.true167, %land.lhs.true161, %if.end159
  br label %err

err:                                              ; preds = %cleanup105, %cleanup.thread, %land.lhs.true177, %if.else183, %if.end72, %if.then157, %if.then150, %if.then144, %if.then127, %if.then85, %if.then71, %if.then65, %if.then27, %if.then22, %if.then8, %if.then4, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then85 ], [ 0, %cleanup105 ], [ 0, %if.then127 ], [ 0, %if.then144 ], [ 0, %if.then150 ], [ 3, %if.else183 ], [ 0, %if.then157 ], [ 0, %if.end72 ], [ 0, %if.then71 ], [ 0, %if.then65 ], [ 0, %if.then27 ], [ 0, %if.then22 ], [ 2, %land.lhs.true177 ], [ 0, %cleanup.thread ]
  %gost_data.2 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then8 ], [ null, %if.then85 ], [ null, %cleanup105 ], [ %gost_data.1.ph, %if.then127 ], [ %gost_data.1.ph, %if.then144 ], [ %gost_data.1.ph, %if.then150 ], [ %gost_data.1.ph, %if.else183 ], [ %gost_data.1.ph, %if.then157 ], [ null, %if.end72 ], [ null, %if.then71 ], [ null, %if.then65 ], [ null, %if.then27 ], [ null, %if.then22 ], [ %gost_data.1.ph, %land.lhs.true177 ], [ null, %cleanup.thread ]
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %44 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !77
  %call186 = call i32 @BIO_free(%struct.bio_st* noundef %44) #13
  store %struct.bio_st* null, %struct.bio_st** %handshake_buffer, align 8, !tbaa !77
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #13
  call void @CRYPTO_free(i8* noundef %gost_data.2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 558) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 162, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
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

declare i32 @tls12_check_peer_sigalg(%struct.ssl_st* noundef, i16 noundef zeroext, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @tls1_set_peer_legacy_sigalg(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !80
  ret i64 %0
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
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

declare i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_finished(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !40
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %1 = load i32, i32* %post_handshake_auth, align 8, !tbaa !82
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %cleanuphand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 10
  store i32 1, i32* %cleanuphand, align 8, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %4, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.end20

land.lhs.true2:                                   ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !32
  %cmp4 = icmp slt i32 %5, 772
  %cmp8.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp4, %cmp8.not
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end20, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true2
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %6 = load i32, i32* %cert_req, align 8, !tbaa !53
  %cmp13 = icmp eq i32 %6, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 4
  %change_cipher_state17 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %7 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state17, align 8, !tbaa !84
  %call = tail call i32 %7(%struct.ssl_st* noundef nonnull %s, i32 noundef 146) #13
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %cleanup, label %land.lhs.true14.if.end20_crit_edge

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  %.pre = load i32, i32* %server, align 8, !tbaa !40
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %land.lhs.true2, %land.lhs.true12, %if.end
  %8 = phi i32 [ %.pre, %land.lhs.true14.if.end20_crit_edge ], [ %0, %land.lhs.true2 ], [ %0, %land.lhs.true12 ], [ %0, %if.end ]
  %tobool22.not = icmp eq i32 %8, 0
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc29 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc29, align 8, !tbaa !28
  %server_finished_label = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 8
  %server_finished_label_len = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 9
  %client_finished_label = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 6
  %client_finished_label_len = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 7
  %sender.0.in = select i1 %tobool22.not, i8** %client_finished_label, i8** %server_finished_label
  %slen.0.in = select i1 %tobool22.not, i64* %client_finished_label_len, i64* %server_finished_label_len
  %slen.0 = load i64, i64* %slen.0.in, align 8, !tbaa !4
  %sender.0 = load i8*, i8** %sender.0.in, align 8, !tbaa !38
  %final_finish_mac = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 5
  %11 = load i64 (%struct.ssl_st*, i8*, i64, i8*)*, i64 (%struct.ssl_st*, i8*, i64, i8*)** %final_finish_mac, align 8, !tbaa !85
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 0, i64 0
  %call37 = tail call i64 %11(%struct.ssl_st* noundef nonnull %s, i8* noundef %sender.0, i64 noundef %slen.0, i8* noundef nonnull %arraydecay) #13
  %cmp38 = icmp eq i64 %call37, 0
  br i1 %cmp38, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.end20
  %finish_md_len43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  store i64 %call37, i64* %finish_md_len43, align 8, !tbaa !48
  %call48 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef %call37) #13
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end40
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc53 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc53, align 8, !tbaa !28
  %enc_flags54 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags54, align 8, !tbaa !30
  %and55 = and i32 %14, 8
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %land.lhs.true65

land.lhs.true57:                                  ; preds = %if.end51
  %version59 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version59, align 8, !tbaa !32
  %cmp60 = icmp slt i32 %15, 772
  %cmp64.not = icmp eq i32 %15, 65536
  %or.cond145 = or i1 %cmp60, %cmp64.not
  br i1 %or.cond145, label %land.lhs.true65, label %if.end71

land.lhs.true65:                                  ; preds = %land.lhs.true57, %if.end51
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %16 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !72
  %arraydecay66 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %16, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %16, i64 0, i32 1
  %17 = load i64, i64* %master_key_length, align 8, !tbaa !73
  %call68 = tail call i32 @ssl_log_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %arraydecay66, i64 noundef %17) #13
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup, label %if.end71

if.end71:                                         ; preds = %land.lhs.true57, %land.lhs.true65
  %cmp72 = icmp ult i64 %call37, 65
  br i1 %cmp72, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end71
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %18 = load i32, i32* %server, align 8, !tbaa !40
  %tobool78.not = icmp eq i32 %18, 0
  br i1 %tobool78.not, label %if.then79, label %if.else88

if.then79:                                        ; preds = %if.end76
  %arraydecay81 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %call86 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay81, i8* noundef nonnull %arraydecay, i64 noundef %call37) #13
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  store i64 %call37, i64* %previous_client_finished_len, align 8, !tbaa !86
  br label %cleanup

if.else88:                                        ; preds = %if.end76
  %arraydecay90 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 23, i64 0
  %call95 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay90, i8* noundef nonnull %arraydecay, i64 noundef %call37) #13
  %previous_server_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 24
  store i64 %call37, i64* %previous_server_finished_len, align 8, !tbaa !87
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.else88, %land.lhs.true65, %if.end20, %land.lhs.true14, %if.then75, %if.then50
  %retval.0 = phi i32 [ 0, %if.then75 ], [ 0, %if.then50 ], [ 0, %land.lhs.true14 ], [ 0, %if.end20 ], [ 0, %land.lhs.true65 ], [ 1, %if.else88 ], [ 1, %if.then79 ]
  ret i32 %retval.0
}

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_log_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_key_update(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  %0 = load i32, i32* %key_update, align 4, !tbaa !88
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %0, i64 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_key_update, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, i32* %key_update, align 4, !tbaa !88
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_key_update(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %updatetype = alloca i32, align 4
  %0 = bitcast i32* %updatetype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call = tail call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 660, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_key_update, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 10, i32 noundef 182, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %updatetype) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call3, 0
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 666, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_key_update, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 122, i8* noundef null) #13
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %1 = load i32, i32* %updatetype, align 4, !tbaa !39
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 676, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_key_update, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 122, i8* noundef null) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp eq i32 %1, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  store i32 0, i32* %key_update, align 4, !tbaa !88
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %call13 = tail call i32 @tls13_update_key(%struct.ssl_st* noundef %s, i32 noundef 0) #13
  %tobool14.not = icmp ne i32 %call13, 0
  %. = zext i1 %tobool14.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ %., %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
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

declare i32 @tls13_update_key(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_take_mac(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !40
  %tobool.not = icmp eq i32 %0, 0
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %client_finished_label = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 6
  %client_finished_label_len = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 7
  %server_finished_label = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 8
  %server_finished_label_len = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 9
  %sender.0.in = select i1 %tobool.not, i8** %server_finished_label, i8** %client_finished_label
  %slen.0.in = select i1 %tobool.not, i64* %server_finished_label_len, i64* %client_finished_label_len
  %slen.0 = load i64, i64* %slen.0.in, align 8, !tbaa !4
  %sender.0 = load i8*, i8** %sender.0.in, align 8, !tbaa !38
  %final_finish_mac = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 5
  %3 = load i64 (%struct.ssl_st*, i8*, i64, i8*)*, i64 (%struct.ssl_st*, i8*, i64, i8*)** %final_finish_mac, align 8, !tbaa !85
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 2, i64 0
  %call = tail call i64 %3(%struct.ssl_st* noundef nonnull %s, i8* noundef %sender.0, i64 noundef %slen.0, i8* noundef nonnull %arraydecay) #13
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  store i64 %call, i64* %peer_finish_md_len, align 8, !tbaa !49
  %cmp = icmp ne i64 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_change_cipher_spec(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !35
  %cmp = icmp eq i32 %3, 256
  %cmp1 = icmp ne i64 %call, 2
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %cmp3 = icmp ne i32 %3, 256
  %cmp5 = icmp ne i64 %call, 0
  %or.cond30 = select i1 %cmp3, i1 %cmp5, i1 false
  br i1 %or.cond30, label %if.then6, label %if.end10

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 740, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_change_cipher_spec, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 103, i8* noundef null) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp7.not = icmp eq i64 %call, 0
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_change_cipher_spec, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 103, i8* noundef null) #13
  br label %cleanup

if.end10:                                         ; preds = %if.else, %lor.lhs.false
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !89
  %cmp11 = icmp eq %struct.ssl_cipher_st* %4, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_change_cipher_spec, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 133, i8* noundef null) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %change_cipher_spec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  store i32 1, i32* %change_cipher_spec, align 8, !tbaa !90
  %call15 = tail call i32 @ssl3_do_change_cipher_spec(%struct.ssl_st* noundef nonnull %s) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_change_cipher_spec, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc20 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc20, align 8, !tbaa !28
  %enc_flags21 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags21, align 8, !tbaa !30
  %and22 = and i32 %7, 8
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end18
  tail call void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %version25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %8 = load i32, i32* %version25, align 8, !tbaa !35
  %cmp26 = icmp eq i32 %8, 256
  br i1 %cmp26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.then24
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %9 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !91
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %9, i64 0, i32 5
  %10 = load i16, i16* %handshake_read_seq, align 8, !tbaa !92
  %inc = add i16 %10, 1
  store i16 %inc, i16* %handshake_read_seq, align 8, !tbaa !92
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then27, %if.then24, %if.then17, %if.then12, %if.then8, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %if.then8 ], [ 3, %if.then24 ], [ 3, %if.then27 ], [ 3, %if.end18 ]
  ret i32 %retval.0
}

declare i32 @ssl3_do_change_cipher_spec(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_finished(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) local_unnamed_addr #0 {
entry:
  %dummy = alloca i64, align 8
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !40
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %enc_read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 14
  store i32 0, i32* %enc_read_state, align 8, !tbaa !97
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %1 = load i32, i32* %post_handshake_auth, align 8, !tbaa !82
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %cleanuphand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 10
  store i32 1, i32* %cleanuphand, align 8, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %4, 8
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !32
  %cmp5 = icmp slt i32 %5, 772
  %cmp9.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp5, %cmp9.not
  br i1 %or.cond, label %if.end14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call = tail call i32 @tls13_save_handshake_digest_for_pha(%struct.ssl_st* noundef nonnull %s) #14
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %cleanup142, label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true, %land.lhs.true10, %entry
  %method15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method15, align 8, !tbaa !27
  %ssl3_enc16 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc16, align 8, !tbaa !28
  %enc_flags17 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags17, align 8, !tbaa !30
  %and18 = and i32 %8, 8
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end32

land.lhs.true20:                                  ; preds = %if.end14
  %version22 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %9 = load i32, i32* %version22, align 8, !tbaa !32
  %cmp23 = icmp slt i32 %9, 772
  %cmp27.not = icmp eq i32 %9, 65536
  %or.cond199 = or i1 %cmp23, %cmp27.not
  br i1 %or.cond199, label %if.end32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true20
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call29 = tail call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end32_crit_edge, label %if.then31

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method15, align 8, !tbaa !27
  %ssl3_enc34.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre203 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc34.phi.trans.insert, align 8, !tbaa !28
  %enc_flags35.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre203, i64 0, i32 12
  %.pre204 = load i32, i32* %enc_flags35.phi.trans.insert, align 8, !tbaa !30
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true28
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 807, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 182, i8* noundef null) #13
  br label %cleanup142

if.end32:                                         ; preds = %land.lhs.true28.if.end32_crit_edge, %land.lhs.true20, %if.end14
  %10 = phi i32 [ %.pre204, %land.lhs.true28.if.end32_crit_edge ], [ %8, %land.lhs.true20 ], [ %8, %if.end14 ]
  %11 = phi %struct.ssl_method_st* [ %.pre, %land.lhs.true28.if.end32_crit_edge ], [ %6, %land.lhs.true20 ], [ %6, %if.end14 ]
  %and36 = and i32 %10, 8
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %land.lhs.true46

land.lhs.true38:                                  ; preds = %if.end32
  %version40 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 0
  %12 = load i32, i32* %version40, align 8, !tbaa !32
  %cmp41 = icmp slt i32 %12, 772
  %cmp45.not = icmp eq i32 %12, 65536
  %or.cond200 = or i1 %cmp41, %cmp45.not
  br i1 %or.cond200, label %land.lhs.true46, label %if.end49

land.lhs.true46:                                  ; preds = %land.lhs.true38, %if.end32
  %change_cipher_spec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  %13 = load i32, i32* %change_cipher_spec, align 8, !tbaa !90
  %tobool47.not = icmp eq i32 %13, 0
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true46
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 813, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 154, i8* noundef null) #13
  br label %cleanup142

if.end49:                                         ; preds = %land.lhs.true38, %land.lhs.true46
  %change_cipher_spec51 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  store i32 0, i32* %change_cipher_spec51, align 8, !tbaa !90
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %14 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !49
  %call53 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp54.not = icmp eq i64 %14, %call53
  br i1 %cmp54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end49
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 821, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 111, i8* noundef null) #13
  br label %cleanup142

if.end56:                                         ; preds = %if.end49
  %call57 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 2, i64 0
  %call60 = tail call i32 @CRYPTO_memcmp(i8* noundef %call57, i8* noundef nonnull %arraydecay, i64 noundef %14) #13
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end56
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 827, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 149, i8* noundef null) #13
  br label %cleanup142

if.end63:                                         ; preds = %if.end56
  %cmp64 = icmp ult i64 %14, 65
  br i1 %cmp64, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end63
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 835, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_finished, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup142

if.end68:                                         ; preds = %if.end63
  %15 = load i32, i32* %server, align 8, !tbaa !40
  %tobool70.not = icmp eq i32 %15, 0
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end68
  %arraydecay73 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 21, i64 0
  %call78 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay73, i8* noundef nonnull %arraydecay, i64 noundef %14) #13
  %previous_client_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 22
  br label %if.end88

if.else:                                          ; preds = %if.end68
  %arraydecay81 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 23, i64 0
  %call86 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay81, i8* noundef nonnull %arraydecay, i64 noundef %14) #13
  %previous_server_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 24
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then71
  %previous_server_finished_len.sink = phi i64* [ %previous_server_finished_len, %if.else ], [ %previous_client_finished_len, %if.then71 ]
  store i64 %14, i64* %previous_server_finished_len.sink, align 8, !tbaa !4
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method15, align 8, !tbaa !27
  %ssl3_enc90 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 25
  %17 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc90, align 8, !tbaa !28
  %enc_flags91 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 12
  %18 = load i32, i32* %enc_flags91, align 8, !tbaa !30
  %and92 = and i32 %18, 8
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %if.end141

land.lhs.true94:                                  ; preds = %if.end88
  %version96 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 0
  %19 = load i32, i32* %version96, align 8, !tbaa !32
  %cmp97 = icmp slt i32 %19, 772
  %cmp102.not = icmp eq i32 %19, 65536
  %or.cond201 = or i1 %cmp97, %cmp102.not
  br i1 %or.cond201, label %if.end141, label %if.then104

if.then104:                                       ; preds = %land.lhs.true94
  %20 = load i32, i32* %server, align 8, !tbaa !40
  %tobool106.not = icmp eq i32 %20, 0
  br i1 %tobool106.not, label %if.else119, label %if.then107

if.then107:                                       ; preds = %if.then104
  %post_handshake_auth108 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %21 = load i32, i32* %post_handshake_auth108, align 8, !tbaa !82
  %cmp109.not = icmp eq i32 %21, 4
  br i1 %cmp109.not, label %if.end141, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.then107
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 4
  %change_cipher_state114 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %22 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state114, align 8, !tbaa !84
  %call115 = tail call i32 %22(%struct.ssl_st* noundef nonnull %s, i32 noundef 289) #13
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %cleanup142, label %if.end141

if.else119:                                       ; preds = %if.then104
  %23 = bitcast i64* %dummy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12
  %generate_master_secret = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 3
  %24 = load i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)** %generate_master_secret, align 8, !tbaa !98
  %arraydecay122 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 31, i64 0
  %arraydecay123 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 30, i64 0
  %call124 = call i32 %24(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay122, i8* noundef nonnull %arraydecay123, i64 noundef 0, i64* noundef nonnull %dummy) #13
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %cleanup142.critedge, label %if.end127

if.end127:                                        ; preds = %if.else119
  %25 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method15, align 8, !tbaa !27
  %ssl3_enc129 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %25, i64 0, i32 25
  %26 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc129, align 8, !tbaa !28
  %change_cipher_state130 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %26, i64 0, i32 4
  %change_cipher_state131 = bitcast {}** %change_cipher_state130 to i32 (%struct.ssl_st*, i32)**
  %27 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state131, align 8, !tbaa !84
  %call132 = call i32 %27(%struct.ssl_st* noundef nonnull %s, i32 noundef 273) #13
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %cleanup142.critedge202, label %if.end135

if.end135:                                        ; preds = %if.end127
  %call136 = call i32 @tls_process_initial_server_flight(%struct.ssl_st* noundef nonnull %s) #13
  %tobool137.not.not = icmp eq i32 %call136, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12
  br i1 %tobool137.not.not, label %cleanup142, label %if.end141

if.end141:                                        ; preds = %land.lhs.true111, %if.then107, %if.end135, %land.lhs.true94, %if.end88
  br label %cleanup142

cleanup142.critedge:                              ; preds = %if.else119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12
  br label %cleanup142

cleanup142.critedge202:                           ; preds = %if.end127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12
  br label %cleanup142

cleanup142:                                       ; preds = %cleanup142.critedge202, %cleanup142.critedge, %land.lhs.true111, %land.lhs.true10, %if.end135, %if.end141, %if.then67, %if.then62, %if.then55, %if.then48, %if.then31
  %retval.1 = phi i32 [ 0, %if.then55 ], [ 0, %if.then62 ], [ 1, %if.end141 ], [ 0, %if.end135 ], [ 0, %if.then67 ], [ 0, %if.then48 ], [ 0, %if.then31 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true111 ], [ 0, %cleanup142.critedge ], [ 0, %cleanup142.critedge202 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls13_save_handshake_digest_for_pha(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %pha_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 105
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !99
  %cmp = icmp eq %struct.evp_md_ctx_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  store %struct.evp_md_ctx_st* %call2, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !99
  %cmp5 = icmp eq %struct.evp_md_ctx_st* %call2, null
  br i1 %cmp5, label %return.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !100
  %call9 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call2, %struct.evp_md_ctx_st* noundef %1) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end7, %if.end
  %.sink = phi i32 [ 2378, %if.end ], [ 2383, %if.end7 ]
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls13_save_handshake_digest_for_pha, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %return.sink.split, %entry, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end7 ], [ 1, %entry ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !101
  ret i8* %0
}

declare i32 @tls_process_initial_server_flight(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_change_cipher_spec(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 887, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_change_cipher_spec, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @ssl3_output_cert_chain(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.cert_pkey_st* noundef %cpk) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 3) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ssl_add_cert_chain(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.cert_pkey_st* noundef %cpk) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end4, %entry
  %.sink = phi i32 [ 1020, %entry ], [ 1028, %if.end4 ]
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl3_output_cert_chain, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end4, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ 1, %if.end4 ], [ 0, %return.sink.split ]
  ret i64 %retval.0
}

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_add_cert_chain(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.cert_pkey_st* noundef readonly %cpk) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.cert_pkey_st* %cpk, null
  br i1 %cmp, label %cleanup72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cpk, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !102
  %cmp1 = icmp eq %struct.x509_st* %0, null
  br i1 %cmp1, label %cleanup72, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %chain3 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cpk, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain3, align 8, !tbaa !103
  %cmp4.not = icmp eq %struct.stack_st_X509* %1, null
  br i1 %cmp4.not, label %if.end8, label %if.else48

if.end8:                                          ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %extra_certs7 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 29
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extra_certs7, align 8, !tbaa !104
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %4 = load i32, i32* %mode, align 8, !tbaa !105
  %and = and i32 %4, 8
  %tobool = icmp ne i32 %and, 0
  %tobool10 = icmp ne %struct.stack_st_X509* %3, null
  %or.cond = select i1 %tobool, i1 true, i1 %tobool10
  br i1 %or.cond, label %if.else48, label %if.else12

if.else12:                                        ; preds = %if.end8
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !106
  %chain_store13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 14
  %6 = load %struct.x509_store_st*, %struct.x509_store_st** %chain_store13, align 8, !tbaa !107
  %tobool14.not = icmp eq %struct.x509_store_st* %6, null
  br i1 %tobool14.not, label %if.end21, label %if.then23

if.end21:                                         ; preds = %if.else12
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 5
  %7 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !109
  %cmp22.not = icmp eq %struct.x509_store_st* %7, null
  br i1 %cmp22.not, label %if.else48, label %if.then23

if.then23:                                        ; preds = %if.else12, %if.end21
  %chain_store.0151 = phi %struct.x509_store_st* [ %7, %if.end21 ], [ %6, %if.else12 ]
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !65
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %9 = load i8*, i8** %propq, align 8, !tbaa !70
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef %9) #13
  %cmp26 = icmp eq %struct.x509_store_ctx_st* %call, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 955, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_add_cert_chain, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup72

if.end28:                                         ; preds = %if.then23
  %call29 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.x509_store_st* noundef nonnull %chain_store.0151, %struct.x509_st* noundef nonnull %0, %struct.stack_st_X509* noundef null) #13
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 960, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_add_cert_chain, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524299, i8* noundef null) #13
  br label %cleanup72

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  tail call void @ERR_clear_error() #13
  %call34 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get0_chain(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  %call35 = tail call i32 @ssl_security_cert_chain(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_X509* noundef %call34, %struct.x509_st* noundef null, i32 noundef 0) #13
  %cmp36.not = icmp eq i32 %call35, 1
  br i1 %cmp36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end32
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 982, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_add_cert_chain, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %call35, i8* noundef null) #13
  br label %cleanup72

if.end38:                                         ; preds = %if.end32
  %call39 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %call34) #14
  %call40 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call39) #13
  %cmp41152 = icmp sgt i32 %call40, 0
  br i1 %cmp41152, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call40
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !110

for.body:                                         ; preds = %if.end38, %for.cond
  %i.0153 = phi i32 [ %inc, %for.cond ], [ 0, %if.end38 ]
  %call43 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call39, i32 noundef %i.0153) #13
  %10 = bitcast i8* %call43 to %struct.x509_st*
  %call44 = tail call fastcc i32 @ssl_add_cert_to_wpacket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef %10, i32 noundef %i.0153) #14
  %tobool45.not = icmp eq i32 %call44, 0
  %inc = add nuw nsw i32 %i.0153, 1
  br i1 %tobool45.not, label %if.then46, label %for.cond

if.then46:                                        ; preds = %for.body
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  br label %cleanup72

for.end:                                          ; preds = %for.cond, %if.end38
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call) #13
  br label %cleanup72

if.else48:                                        ; preds = %if.end, %if.end8, %if.end21
  %extra_certs.0142146 = phi %struct.stack_st_X509* [ null, %if.end21 ], [ %3, %if.end8 ], [ %1, %if.end ]
  %call49 = tail call i32 @ssl_security_cert_chain(%struct.ssl_st* noundef %s, %struct.stack_st_X509* noundef %extra_certs.0142146, %struct.x509_st* noundef nonnull %0, i32 noundef 0) #13
  %cmp50.not = icmp eq i32 %call49, 1
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.else48
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 999, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl_add_cert_chain, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef %call49, i8* noundef null) #13
  br label %cleanup72

if.end52:                                         ; preds = %if.else48
  %call53 = tail call fastcc i32 @ssl_add_cert_to_wpacket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef nonnull %0, i32 noundef 0) #14
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup72, label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %if.end52
  %call58 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %extra_certs.0142146) #14
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %for.body61
  %i.1 = phi i32 [ %add, %for.body61 ], [ 0, %for.cond57.preheader ]
  %call59 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call58) #13
  %cmp60 = icmp slt i32 %i.1, %call59
  br i1 %cmp60, label %for.body61, label %cleanup72

for.body61:                                       ; preds = %for.cond57
  %call63 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call58, i32 noundef %i.1) #13
  %11 = bitcast i8* %call63 to %struct.x509_st*
  %add = add nuw nsw i32 %i.1, 1
  %call64 = tail call fastcc i32 @ssl_add_cert_to_wpacket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef %11, i32 noundef %add) #14
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup72, label %for.cond57, !llvm.loop !111

cleanup72:                                        ; preds = %for.cond57, %for.body61, %for.end, %if.end52, %if.then27, %if.then31, %if.then37, %if.then46, %entry, %lor.lhs.false, %if.then51
  %retval.1 = phi i32 [ 0, %if.then51 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.then46 ], [ 0, %if.then37 ], [ 0, %if.then31 ], [ 0, %if.then27 ], [ 0, %if.end52 ], [ 1, %for.end ], [ 1, %for.cond57 ], [ 0, %for.body61 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_finish_handshake(%struct.ssl_st* noundef %s, i32 noundef %wst, i32 noundef %clearbufs, i32 noundef %stop) local_unnamed_addr #0 {
entry:
  %cleanuphand1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 10
  %0 = load i32, i32* %cleanuphand1, align 8, !tbaa !83
  %tobool.not = icmp eq i32 %clearbufs, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %3, 8
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %4) #13
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %call = tail call i32 @ssl_free_wbio_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1067, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_finish_handshake, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !26
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %method9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !27
  %ssl3_enc10 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc10, align 8, !tbaa !28
  %enc_flags11 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags11, align 8, !tbaa !30
  %and12 = and i32 %7, 8
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end8
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 0
  %8 = load i32, i32* %version, align 8, !tbaa !32
  %cmp = icmp slt i32 %8, 772
  %cmp18.not = icmp eq i32 %8, 65536
  %or.cond = or i1 %cmp, %cmp18.not
  br i1 %or.cond, label %if.end25, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %9 = load i32, i32* %server, align 8, !tbaa !40
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %10 = load i32, i32* %post_handshake_auth, align 8, !tbaa !82
  %cmp22 = icmp eq i32 %10, 4
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  store i32 1, i32* %post_handshake_auth, align 8, !tbaa !82
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21, %land.lhs.true19, %land.lhs.true, %if.end8
  %tobool26.not = icmp eq i32 %0, 0
  br i1 %tobool26.not, label %if.end92, label %if.then27

if.then27:                                        ; preds = %if.end25
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  store i32 0, i32* %renegotiate, align 8, !tbaa !112
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  store i32 0, i32* %new_session, align 4, !tbaa !113
  store i32 0, i32* %cleanuphand1, align 8, !tbaa !83
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 0, i32* %ticket_expected, align 8, !tbaa !114
  tail call void @ssl3_cleanup_key_block(%struct.ssl_st* noundef nonnull %s) #13
  %server30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %11 = load i32, i32* %server30, align 8, !tbaa !40
  %tobool31.not = icmp eq i32 %11, 0
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !27
  %ssl3_enc49 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc49, align 8, !tbaa !28
  %enc_flags50 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags50, align 8, !tbaa !30
  %and51 = and i32 %14, 8
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then27
  br i1 %tobool52.not, label %land.lhs.true38, label %if.then46

land.lhs.true38:                                  ; preds = %if.then32
  %version40 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version40, align 8, !tbaa !32
  %cmp41 = icmp slt i32 %15, 772
  %cmp45.not = icmp eq i32 %15, 65536
  %or.cond195 = or i1 %cmp41, %cmp45.not
  br i1 %or.cond195, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true38, %if.then32
  tail call void @ssl_update_cache(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #13
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true38, %if.then46
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %sess_accept_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %16, i64 0, i32 15, i32 5
  %17 = atomicrmw add i32* %sess_accept_good, i32 1 monotonic, align 4
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  store i32 (%struct.ssl_st*)* @ossl_statem_accept, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !115
  br label %if.end82

if.else:                                          ; preds = %if.then27
  br i1 %tobool52.not, label %land.lhs.true53, label %if.else68

land.lhs.true53:                                  ; preds = %if.else
  %version55 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %18 = load i32, i32* %version55, align 8, !tbaa !32
  %cmp56 = icmp slt i32 %18, 772
  %cmp60.not = icmp eq i32 %18, 65536
  %or.cond196 = or i1 %cmp56, %cmp60.not
  br i1 %or.cond196, label %if.else68, label %if.then61

if.then61:                                        ; preds = %land.lhs.true53
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !50
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 10
  %20 = load i32, i32* %session_cache_mode, align 8, !tbaa !116
  %and62 = and i32 %20, 1
  %cmp63.not = icmp eq i32 %and62, 0
  br i1 %cmp63.not, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.then61
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %21 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !72
  %call66 = tail call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef nonnull %19, %struct.ssl_session_st* noundef %21) #13
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true53, %if.else
  tail call void @ssl_update_cache(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %if.then64, %if.else68
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %22 = load i32, i32* %hit, align 8, !tbaa !52
  %tobool70.not = icmp eq i32 %22, 0
  br i1 %tobool70.not, label %if.end76, label %if.then71

if.then71:                                        ; preds = %if.end69
  %session_ctx72 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx72, align 8, !tbaa !50
  %sess_hit = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %23, i64 0, i32 15, i32 9
  %24 = atomicrmw add i32* %sess_hit, i32 1 monotonic, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end69
  %handshake_func77 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  store i32 (%struct.ssl_st*)* @ossl_statem_connect, i32 (%struct.ssl_st*)** %handshake_func77, align 8, !tbaa !115
  %session_ctx78 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %25 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx78, align 8, !tbaa !50
  %sess_connect_good = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %25, i64 0, i32 15, i32 2
  %26 = atomicrmw add i32* %sess_connect_good, i32 1 monotonic, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %if.end47
  %27 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !27
  %ssl3_enc84 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 25
  %28 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc84, align 8, !tbaa !28
  %enc_flags85 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %28, i64 0, i32 12
  %29 = load i32, i32* %enc_flags85, align 8, !tbaa !30
  %and86 = and i32 %29, 8
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end92, label %if.then88

if.then88:                                        ; preds = %if.end82
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %30 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !91
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %30, i64 0, i32 5
  store i16 0, i16* %handshake_read_seq, align 8, !tbaa !92
  %handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %30, i64 0, i32 3
  store i16 0, i16* %handshake_write_seq, align 4, !tbaa !117
  %next_handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %30, i64 0, i32 4
  store i16 0, i16* %next_handshake_write_seq, align 2, !tbaa !118
  tail call void @dtls1_clear_received_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end92

if.end92:                                         ; preds = %if.end82, %if.then88, %if.end25
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 64
  %31 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !119
  %cmp93.not = icmp eq void (%struct.ssl_st*, i32, i32)* %31, null
  br i1 %cmp93.not, label %if.end104, label %if.end104.thread

if.end104.thread:                                 ; preds = %if.end92
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  br label %if.then106

if.end104:                                        ; preds = %if.end92
  %ctx97 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx97, align 8, !tbaa !37
  %info_callback98 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %32, i64 0, i32 31
  %33 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback98, align 8, !tbaa !120
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %cmp105.not = icmp eq void (%struct.ssl_st*, i32, i32)* %33, null
  br i1 %cmp105.not, label %if.end129, label %if.then106

if.then106:                                       ; preds = %if.end104.thread, %if.end104
  %cb.0200 = phi void (%struct.ssl_st*, i32, i32)* [ %31, %if.end104.thread ], [ %33, %if.end104 ]
  br i1 %tobool26.not, label %lor.lhs.false, label %if.then127

lor.lhs.false:                                    ; preds = %if.then106
  %34 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !27
  %ssl3_enc109 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %34, i64 0, i32 25
  %35 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc109, align 8, !tbaa !28
  %enc_flags110 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %35, i64 0, i32 12
  %36 = load i32, i32* %enc_flags110, align 8, !tbaa !30
  %and111 = and i32 %36, 8
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %if.then127

land.lhs.true113:                                 ; preds = %lor.lhs.false
  %version115 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %34, i64 0, i32 0
  %37 = load i32, i32* %version115, align 8, !tbaa !32
  %cmp116 = icmp slt i32 %37, 772
  %cmp120.not = icmp eq i32 %37, 65536
  %or.cond197 = or i1 %cmp116, %cmp120.not
  br i1 %or.cond197, label %if.then127, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %land.lhs.true113
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %38 = load i64, i64* %finish_md_len, align 8, !tbaa !48
  %cmp122 = icmp eq i64 %38, 0
  br i1 %cmp122, label %if.then127, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false121
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %39 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !49
  %cmp126 = icmp eq i64 %39, 0
  br i1 %cmp126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %lor.lhs.false123, %lor.lhs.false121, %land.lhs.true113, %lor.lhs.false, %if.then106
  tail call void %cb.0200(%struct.ssl_st* noundef nonnull %s, i32 noundef 32, i32 noundef 1) #13
  br label %if.end129

if.end129:                                        ; preds = %lor.lhs.false123, %if.then127, %if.end104
  %tobool130.not = icmp eq i32 %stop, 0
  br i1 %tobool130.not, label %if.then131, label %cleanup

if.then131:                                       ; preds = %if.end129
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then131, %if.then6
  %retval.0 = phi i32 [ 2, %if.then131 ], [ 0, %if.then6 ], [ 1, %if.end129 ]
  ret i32 %retval.0
}

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

declare i32 @ssl_free_wbio_buffer(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @ssl3_cleanup_key_block(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @ssl_update_cache(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_statem_accept(%struct.ssl_st* noundef) #2

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare i32 @ossl_statem_connect(%struct.ssl_st* noundef) #2

declare void @dtls1_clear_received_buffer(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @ossl_statem_set_in_init(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_get_message_header(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %mt) local_unnamed_addr #0 {
entry:
  %recvd_type = alloca i32, align 4
  %readbytes = alloca i64, align 8
  %0 = bitcast i32* %recvd_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8, !tbaa !23
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %hand_state36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %arrayidx45 = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx50 = getelementptr inbounds i8, i8* %3, i64 2
  %arrayidx55 = getelementptr inbounds i8, i8* %3, i64 3
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %4 = load i64, i64* %init_num, align 8, !tbaa !26
  %cmp179 = icmp ult i64 %4, 4
  br i1 %cmp179, label %while.body, label %while.end

while.body:                                       ; preds = %do.body, %if.end32
  %5 = phi i64 [ %add, %if.end32 ], [ %4, %do.body ]
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 14
  %7 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !121
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %5
  %sub = sub nuw nsw i64 4, %5
  %call = call i32 %7(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef nonnull %recvd_type, i8* noundef %arrayidx, i64 noundef %sub, i32 noundef 0, i64* noundef nonnull %readbytes) #13
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate, align 8, !tbaa !122
  br label %cleanup

if.end:                                           ; preds = %while.body
  %8 = load i32, i32* %recvd_type, align 4, !tbaa !39
  switch i32 %8, label %if.then30 [
    i32 20, label %if.then5
    i32 22, label %if.end32
  ]

if.then5:                                         ; preds = %if.end
  %9 = load i64, i64* %init_num, align 8, !tbaa !26
  %cmp7 = icmp ne i64 %9, 0
  %10 = load i64, i64* %readbytes, align 8
  %cmp8 = icmp ne i64 %10, 1
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then5
  %11 = load i8, i8* %3, align 1, !tbaa !123
  %cmp11.not = icmp eq i8 %11, 1
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9, %if.then5
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1183, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_get_message_header, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 103, i8* noundef null) #13
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false9
  %12 = load i32, i32* %hand_state36, align 4, !tbaa !33
  %cmp15 = icmp eq i32 %12, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %13 = load i64, i64* %flags, align 8, !tbaa !124
  %and = and i64 %13, 2048
  %cmp17.not = icmp eq i64 %and, 0
  br i1 %cmp17.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %if.end14
  store i32 257, i32* %mt, align 4, !tbaa !39
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  store i32 257, i32* %message_type, align 8, !tbaa !125
  store i64 0, i64* %init_num, align 8, !tbaa !26
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data25 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %14, i64 0, i32 1
  %15 = load i8*, i8** %data25, align 8, !tbaa !23
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  store i8* %15, i8** %init_msg, align 8, !tbaa !126
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  store i64 1, i64* %message_size, align 8, !tbaa !127
  br label %cleanup

if.then30:                                        ; preds = %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1204, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_get_message_header, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 133, i8* noundef null) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %16 = load i64, i64* %readbytes, align 8, !tbaa !4
  %17 = load i64, i64* %init_num, align 8, !tbaa !26
  %add = add i64 %17, %16
  store i64 %add, i64* %init_num, align 8, !tbaa !26
  %cmp = icmp ult i64 %add, 4
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !128

while.end:                                        ; preds = %if.end32, %do.body
  %18 = load i32, i32* %server, align 8, !tbaa !40
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then34, label %do.end

if.then34:                                        ; preds = %while.end
  %19 = load i32, i32* %hand_state36, align 4, !tbaa !33
  %cmp37.not = icmp eq i32 %19, 1
  br i1 %cmp37.not, label %do.end, label %land.lhs.true39, !llvm.loop !129

land.lhs.true39:                                  ; preds = %if.then34
  %20 = load i8, i8* %3, align 1, !tbaa !123
  %cmp42 = icmp eq i8 %20, 0
  br i1 %cmp42, label %if.then44, label %do.end, !llvm.loop !129

if.then44:                                        ; preds = %land.lhs.true39
  %21 = load i8, i8* %arrayidx45, align 1, !tbaa !123
  %cmp47 = icmp eq i8 %21, 0
  br i1 %cmp47, label %land.lhs.true49, label %do.end

land.lhs.true49:                                  ; preds = %if.then44
  %22 = load i8, i8* %arrayidx50, align 1, !tbaa !123
  %cmp52 = icmp eq i8 %22, 0
  br i1 %cmp52, label %land.lhs.true54, label %do.end

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %23 = load i8, i8* %arrayidx55, align 1, !tbaa !123
  %cmp57 = icmp eq i8 %23, 0
  br i1 %cmp57, label %if.then59, label %do.end

if.then59:                                        ; preds = %land.lhs.true54
  store i64 0, i64* %init_num, align 8, !tbaa !26
  %24 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !34
  %tobool61.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %24, null
  br i1 %tobool61.not, label %do.body.backedge, label %if.then62

if.then62:                                        ; preds = %if.then59
  %25 = load i32, i32* %version, align 8, !tbaa !35
  %26 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !36
  call void %24(i32 noundef 0, i32 noundef %25, i32 noundef 22, i8* noundef nonnull %3, i64 noundef 4, %struct.ssl_st* noundef nonnull %s, i8* noundef %26) #13
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.then62, %if.then59
  br label %do.body

do.end:                                           ; preds = %land.lhs.true54, %land.lhs.true49, %if.then44, %while.end, %if.then34, %land.lhs.true39
  %27 = load i8, i8* %3, align 1, !tbaa !123
  %conv69 = zext i8 %27 to i32
  store i32 %conv69, i32* %mt, align 4, !tbaa !39
  %28 = load i8, i8* %3, align 1, !tbaa !123
  %conv70 = zext i8 %28 to i32
  %message_type73 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  store i32 %conv70, i32* %message_type73, align 8, !tbaa !125
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call74 = call i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end99, label %if.then76

if.then76:                                        ; preds = %do.end
  %call78 = call i64 @RECORD_LAYER_get_rrec_length(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %add79 = add i64 %call78, 4
  %29 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data84 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %29, i64 0, i32 1
  %30 = load i8*, i8** %data84, align 8, !tbaa !23
  br label %if.end108

if.end99:                                         ; preds = %do.end
  %31 = load i8, i8* %arrayidx45, align 1, !tbaa !123
  %conv89 = zext i8 %31 to i64
  %shl = shl nuw nsw i64 %conv89, 16
  %32 = load i8, i8* %arrayidx50, align 1, !tbaa !123
  %conv91 = zext i8 %32 to i64
  %shl92 = shl nuw nsw i64 %conv91, 8
  %or = or i64 %shl92, %shl
  %33 = load i8, i8* %arrayidx55, align 1, !tbaa !123
  %conv94 = zext i8 %33 to i64
  %or95 = or i64 %or, %conv94
  %34 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data104 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %34, i64 0, i32 1
  %35 = load i8*, i8** %data104, align 8, !tbaa !23
  %add.ptr105 = getelementptr inbounds i8, i8* %35, i64 4
  br label %if.end108

if.end108:                                        ; preds = %if.end99, %if.then76
  %add79.sink = phi i64 [ %or95, %if.end99 ], [ %add79, %if.then76 ]
  %.sink = phi i8* [ %add.ptr105, %if.end99 ], [ %30, %if.then76 ]
  %storemerge = phi i64 [ 0, %if.end99 ], [ 4, %if.then76 ]
  %36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  store i64 %add79.sink, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  store i8* %.sink, i8** %37, align 8
  store i64 %storemerge, i64* %init_num, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end108, %if.then30, %if.end20, %if.then13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ 1, %if.end20 ], [ 0, %if.then30 ], [ 1, %if.end108 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare i64 @RECORD_LAYER_get_rrec_length(%struct.record_layer_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_get_message_body(%struct.ssl_st* noundef %s, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  %1 = load i32, i32* %message_type, align 8, !tbaa !125
  %cmp = icmp eq i32 %1, 257
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %2 = load i64, i64* %init_num, align 8, !tbaa !26
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  %3 = load i8*, i8** %init_msg, align 8, !tbaa !126
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  %4 = load i64, i64* %message_size, align 8, !tbaa !127
  %init_num3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %5 = load i64, i64* %init_num3, align 8, !tbaa !26
  %sub = sub i64 %4, %5
  %cmp4.not151 = icmp eq i64 %sub, 0
  br i1 %cmp4.not151, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end8
  %6 = phi i64 [ %5, %while.body.lr.ph ], [ %add, %if.end8 ]
  %n.0152 = phi i64 [ %sub, %while.body.lr.ph ], [ %sub10, %if.end8 ]
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 14
  %8 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !121
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %6
  %call = call i32 %8(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef %arrayidx, i64 noundef %n.0152, i32 noundef 0, i64* noundef nonnull %readbytes) #13
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate, align 8, !tbaa !122
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %9 = load i64, i64* %readbytes, align 8, !tbaa !4
  %10 = load i64, i64* %init_num3, align 8, !tbaa !26
  %add = add i64 %10, %9
  store i64 %add, i64* %init_num3, align 8, !tbaa !26
  %sub10 = sub i64 %n.0152, %9
  %cmp4.not = icmp eq i64 %sub10, 0
  br i1 %cmp4.not, label %while.end, label %while.body, !llvm.loop !130

while.end:                                        ; preds = %if.end8, %if.end
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %11 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %11, i64 0, i32 1
  %12 = load i8*, i8** %data, align 8, !tbaa !23
  %13 = load i8, i8* %12, align 1, !tbaa !123
  %cmp11 = icmp eq i8 %13, 20
  br i1 %cmp11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %while.end
  %call13 = call i32 @ssl3_take_mac(%struct.ssl_st* noundef nonnull %s) #14
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %while.end
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call16 = call i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data20 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %14, i64 0, i32 1
  %15 = load i8*, i8** %data20, align 8, !tbaa !23
  %16 = load i64, i64* %init_num3, align 8, !tbaa !26
  %call22 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef %15, i64 noundef %16) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.then18
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %17 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !34
  %tobool26.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %17, null
  br i1 %tobool26.not, label %if.end93, label %if.then27

if.then27:                                        ; preds = %if.end25
  %18 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data30 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %18, i64 0, i32 1
  %19 = load i8*, i8** %data30, align 8, !tbaa !23
  %20 = load i64, i64* %init_num3, align 8, !tbaa !26
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %21 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !36
  call void %17(i32 noundef 0, i32 noundef 2, i32 noundef 0, i8* noundef %19, i64 noundef %20, %struct.ssl_st* noundef nonnull %s, i8* noundef %21) #13
  br label %if.end93

if.else:                                          ; preds = %if.end15
  %method33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method33, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 25
  %23 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %23, i64 0, i32 12
  %24 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %24, 8
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.then55thread-pre-split

land.lhs.true35:                                  ; preds = %if.else
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 0
  %25 = load i32, i32* %version, align 8, !tbaa !32
  %cmp37 = icmp slt i32 %25, 772
  %cmp42.not = icmp eq i32 %25, 65536
  %or.cond = or i1 %cmp37, %cmp42.not
  br i1 %or.cond, label %if.then55thread-pre-split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %26 = load i32, i32* %message_type, align 8, !tbaa !125
  switch i32 %26, label %if.then55 [
    i32 4, label %if.end81
    i32 24, label %if.end81
  ]

if.then55thread-pre-split:                        ; preds = %if.else, %land.lhs.true35
  %.pr = load i32, i32* %message_type, align 8, !tbaa !125
  br label %if.then55

if.then55:                                        ; preds = %if.then55thread-pre-split, %lor.lhs.false
  %27 = phi i32 [ %.pr, %if.then55thread-pre-split ], [ %26, %lor.lhs.false ]
  %cmp59.not = icmp ne i32 %27, 2
  %28 = load i64, i64* %init_num3, align 8, !tbaa !26
  %cmp63 = icmp ult i64 %28, 38
  %or.cond153 = select i1 %cmp59.not, i1 true, i1 %cmp63
  br i1 %or.cond153, label %if.then71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.then55
  %29 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data67 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %29, i64 0, i32 1
  %30 = load i8*, i8** %data67, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 6
  %call68 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @hrrrandom, i64 0, i64 0), i8* noundef nonnull %add.ptr, i64 noundef 32) #15
  %cmp69.not = icmp eq i32 %call68, 0
  br i1 %cmp69.not, label %if.end81, label %if.then71

if.then71:                                        ; preds = %if.then55, %lor.lhs.false65
  %31 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data73 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %31, i64 0, i32 1
  %32 = load i8*, i8** %data73, align 8, !tbaa !23
  %add75 = add i64 %28, 4
  %call76 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef %32, i64 noundef %add75) #13
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false65, %if.then71
  %msg_callback82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %33 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback82, align 8, !tbaa !34
  %tobool83.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %33, null
  br i1 %tobool83.not, label %if.end93, label %if.then84

if.then84:                                        ; preds = %if.end81
  %version86 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %34 = load i32, i32* %version86, align 8, !tbaa !35
  %35 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data88 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %35, i64 0, i32 1
  %36 = load i8*, i8** %data88, align 8, !tbaa !23
  %37 = load i64, i64* %init_num3, align 8, !tbaa !26
  %add90 = add i64 %37, 4
  %msg_callback_arg91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %38 = load i8*, i8** %msg_callback_arg91, align 8, !tbaa !36
  call void %33(i32 noundef 0, i32 noundef %34, i32 noundef 22, i8* noundef %36, i64 noundef %add90, %struct.ssl_st* noundef nonnull %s, i8* noundef %38) #13
  br label %if.end93

if.end93:                                         ; preds = %if.end81, %if.then84, %if.end25, %if.then27
  %39 = load i64, i64* %init_num3, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then18, %land.lhs.true, %if.end93, %if.then7, %if.then
  %.sink = phi i64 [ %39, %if.end93 ], [ 0, %if.then7 ], [ %2, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.then18 ], [ 0, %if.then71 ]
  %retval.0 = phi i32 [ 1, %if.end93 ], [ 0, %if.then7 ], [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.then18 ], [ 0, %if.then71 ]
  store i64 %.sink, i64* %len, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @ssl_x509err2alert(i32 noundef %x509err) local_unnamed_addr #8 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %tp.0 = phi %struct.x509err2alert_st* [ getelementptr inbounds ([41 x %struct.x509err2alert_st], [41 x %struct.x509err2alert_st]* @x509table, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.cond ]
  %x509err1 = getelementptr inbounds %struct.x509err2alert_st, %struct.x509err2alert_st* %tp.0, i64 0, i32 0
  %0 = load i32, i32* %x509err1, align 4, !tbaa !131
  %cmp.not = icmp eq i32 %0, 0
  %cmp3 = icmp eq i32 %0, %x509err
  %or.cond = or i1 %cmp.not, %cmp3
  %incdec.ptr = getelementptr inbounds %struct.x509err2alert_st, %struct.x509err2alert_st* %tp.0, i64 1
  br i1 %or.cond, label %for.end, label %for.cond, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  %alert = getelementptr inbounds %struct.x509err2alert_st, %struct.x509err2alert_st* %tp.0, i64 0, i32 1
  %1 = load i32, i32* %alert, align 4, !tbaa !134
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_allow_compression(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !135
  %and = and i64 %0, 131072
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 15, i32 noundef 0, i32 noundef 0, i8* noundef null) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_version_supported(%struct.ssl_st* noundef %s, i32 noundef %version, %struct.ssl_method_st** noundef writeonly %meth) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %version1 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %version1, align 8, !tbaa !32
  switch i32 %1, label %sw.default [
    i32 65536, label %sw.epilog
    i32 131071, label %sw.bb3
  ]

sw.default:                                       ; preds = %entry
  %version2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %2 = load i32, i32* %version2, align 8, !tbaa !35
  %call = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef nonnull %s, i32 noundef %version, i32 noundef %2) #14
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3
  %table.0 = phi %struct.version_info* [ getelementptr inbounds ([4 x %struct.version_info], [4 x %struct.version_info]* @dtls_version_table, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %entry ]
  %version456 = getelementptr inbounds %struct.version_info, %struct.version_info* %table.0, i64 0, i32 0
  %3 = load i32, i32* %version456, align 8, !tbaa !55
  %cmp5.not57 = icmp eq i32 %3, 0
  br i1 %cmp5.not57, label %cleanup, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %sw.epilog
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %cmp24 = icmp ne i32 %version, 772
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %4 = phi i32 [ %3, %land.rhs.lr.ph ], [ %8, %for.inc ]
  %vent.058 = phi %struct.version_info* [ %table.0, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call8 = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef %s, i32 noundef %version, i32 noundef %4) #14
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %for.body, label %cleanup

for.body:                                         ; preds = %land.rhs
  %cmeth = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.058, i64 0, i32 1
  %5 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %cmeth, align 8, !tbaa !57
  %cmp11.not = icmp ne %struct.ssl_method_st* ()* %5, null
  %cmp15 = icmp eq i32 %call8, 0
  %or.cond55 = select i1 %cmp11.not, i1 %cmp15, i1 false
  br i1 %or.cond55, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %call19 = tail call %struct.ssl_method_st* %5() #13
  %call20 = tail call fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %call19) #14
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true23, label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %6 = load i32, i32* %server, align 8, !tbaa !40
  %tobool = icmp eq i32 %6, 0
  %or.cond = or i1 %cmp24, %tobool
  br i1 %or.cond, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true23
  %call27 = tail call fastcc i32 @is_tls13_capable(%struct.ssl_st* noundef nonnull %s) #14
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc, label %if.then

if.then:                                          ; preds = %lor.lhs.false26, %land.lhs.true23
  %cmp29.not = icmp eq %struct.ssl_method_st** %meth, null
  br i1 %cmp29.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %if.then
  %cmeth.le = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.058, i64 0, i32 1
  %7 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %cmeth.le, align 8, !tbaa !57
  %call33 = tail call %struct.ssl_method_st* %7() #13
  store %struct.ssl_method_st* %call33, %struct.ssl_method_st** %meth, align 8, !tbaa !38
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true17, %lor.lhs.false26
  %incdec.ptr = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.058, i64 1
  %version4 = getelementptr inbounds %struct.version_info, %struct.version_info* %incdec.ptr, i64 0, i32 0
  %8 = load i32, i32* %version4, align 8, !tbaa !55
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %cleanup, label %land.rhs, !llvm.loop !136

cleanup:                                          ; preds = %for.inc, %land.rhs, %sw.epilog, %if.then, %if.then31, %sw.default
  %retval.0 = phi i32 [ %conv, %sw.default ], [ 1, %if.then31 ], [ 1, %if.then ], [ 0, %sw.epilog ], [ 0, %land.rhs ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @version_cmp(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
entry:
  %cmp = icmp eq i32 %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %cmp2 = icmp slt i32 %a, %b
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %a, 256
  %cond5 = select i1 %cmp4, i32 65280, i32 %a
  %cmp6 = icmp eq i32 %b, 256
  %cond10 = select i1 %cmp6, i32 65280, i32 %b
  %cmp11 = icmp sgt i32 %cond5, %cond10
  %cond12 = select i1 %cmp11, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then1
  %retval.0 = phi i32 [ %cond12, %if.end3 ], [ %cond, %if.then1 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* nocapture noundef readonly %method) unnamed_addr #0 {
entry:
  %version1 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %method, i64 0, i32 0
  %0 = load i32, i32* %version1, align 8, !tbaa !32
  %min_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 80
  %1 = load i32, i32* %min_proto_version, align 4, !tbaa !137
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef nonnull %s, i32 noundef %0, i32 noundef %1) #14
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %call4 = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 9, i32 noundef 0, i32 noundef %0, i8* noundef null) #13
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %max_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %2 = load i32, i32* %max_proto_version, align 8, !tbaa !138
  %cmp6.not = icmp eq i32 %2, 0
  br i1 %cmp6.not, label %if.end12, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %call9 = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef nonnull %s, i32 noundef %0, i32 noundef %2) #14
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true7, %if.end
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %3 = load i64, i64* %options, align 8, !tbaa !135
  %mask = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %method, i64 0, i32 2
  %4 = load i64, i64* %mask, align 8, !tbaa !139
  %and = and i64 %4, %3
  %cmp13.not = icmp eq i64 %and, 0
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end12
  %flags = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %method, i64 0, i32 1
  %5 = load i32, i32* %flags, align 4, !tbaa !140
  %and16 = and i32 %5, 2
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %if.end21, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end15
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !106
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 4
  %7 = load i32, i32* %cert_flags, align 4, !tbaa !141
  %and19 = and i32 %7, 196608
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %land.lhs.true18, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true18, %if.end12, %land.lhs.true7, %land.lhs.true, %lor.lhs.false, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 396, %lor.lhs.false ], [ 396, %land.lhs.true ], [ 166, %land.lhs.true7 ], [ 258, %if.end12 ], [ 158, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @is_tls13_capable(%struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %cmp.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !50
  %cmp3.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %servername_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 60, i32 0
  %2 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %servername_cb, align 8, !tbaa !142
  %cmp8.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %2, null
  br i1 %cmp8.not, label %lor.lhs.false10, label %cleanup

lor.lhs.false10:                                  ; preds = %if.end
  %servername_cb13 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 0
  %3 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %servername_cb13, align 8, !tbaa !142
  %cmp14.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %3, null
  br i1 %cmp14.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %lor.lhs.false10
  %psk_server_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  %4 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !143
  %cmp18.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32)* %4, null
  br i1 %cmp18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end17
  %psk_find_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 69
  %5 = load i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)** %psk_find_session_cb, align 8, !tbaa !144
  %cmp22.not = icmp eq i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)* %5, null
  br i1 %cmp22.not, label %lor.lhs.false24, label %cleanup

lor.lhs.false24:                                  ; preds = %if.end21
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !106
  %cert_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 12
  %7 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %cert_cb, align 8, !tbaa !145
  %cmp25.not = icmp eq i32 (%struct.ssl_st*, i8*)* %7, null
  br i1 %cmp25.not, label %for.body, label %cleanup

for.body:                                         ; preds = %lor.lhs.false24, %for.inc
  %i.060 = phi i32 [ %inc, %for.inc ], [ 0, %lor.lhs.false24 ]
  switch i32 %i.060, label %sw.epilog [
    i32 2, label %for.inc
    i32 4, label %for.inc
    i32 5, label %for.inc
    i32 6, label %for.inc
  ]

sw.epilog:                                        ; preds = %for.body
  %call = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef %s, i32 noundef %i.060) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.end32

if.end32:                                         ; preds = %sw.epilog
  %cmp33.not = icmp eq i32 %i.060, 3
  br i1 %cmp33.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.end32
  %8 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !106
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %8, i64 0, i32 5, i64 3, i32 1
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !61
  %call38 = tail call i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef %9) #13
  %call39 = tail call i32 @tls_check_sigalg_curve(%struct.ssl_st* noundef %s, i32 noundef %call38) #13
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end36, %sw.epilog, %for.body, %for.body, %for.body, %for.body
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !146

cleanup:                                          ; preds = %for.inc, %if.end36, %if.end32, %if.end21, %lor.lhs.false24, %if.end17, %if.end, %lor.lhs.false10, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %lor.lhs.false10 ], [ 1, %if.end ], [ 1, %if.end17 ], [ 1, %lor.lhs.false24 ], [ 1, %if.end21 ], [ 0, %for.inc ], [ 1, %if.end36 ], [ 1, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_check_version_downgrade(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !35
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !147
  %version1 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %version1, align 8, !tbaa !32
  %cmp = icmp eq i32 %0, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ssl_method_st* @TLS_method() #13
  %version5 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %call, i64 0, i32 0
  %4 = load i32, i32* %version5, align 8, !tbaa !32
  %cmp6 = icmp eq i32 %3, %4
  br i1 %cmp6, label %if.end17, label %if.else

if.else:                                          ; preds = %if.end
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !37
  %method9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !147
  %version10 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %version10, align 8, !tbaa !32
  %call11 = tail call %struct.ssl_method_st* @DTLS_method() #13
  %version12 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %call11, i64 0, i32 0
  %8 = load i32, i32* %version12, align 8, !tbaa !32
  %cmp13 = icmp eq i32 %7, %8
  br i1 %cmp13, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.else, %if.end
  %table.0 = phi %struct.version_info* [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([4 x %struct.version_info], [4 x %struct.version_info]* @dtls_version_table, i64 0, i64 0), %if.else ]
  %version1844 = getelementptr inbounds %struct.version_info, %struct.version_info* %table.0, i64 0, i32 0
  %9 = load i32, i32* %version1844, align 8, !tbaa !55
  %cmp19.not45 = icmp eq i32 %9, 0
  br i1 %cmp19.not45, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end17, %for.inc
  %vent.046 = phi %struct.version_info* [ %incdec.ptr, %for.inc ], [ %table.0, %if.end17 ]
  %smeth = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.046, i64 0, i32 2
  %10 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %smeth, align 8, !tbaa !148
  %cmp20.not = icmp eq %struct.ssl_method_st* ()* %10, null
  br i1 %cmp20.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call22 = tail call %struct.ssl_method_st* %10() #13
  %call23 = tail call fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %call22) #14
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %land.lhs.true
  %version18.le = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.046, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !35
  %12 = load i32, i32* %version18.le, align 8, !tbaa !55
  %cmp28 = icmp eq i32 %11, %12
  %conv = zext i1 %cmp28 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %incdec.ptr = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.046, i64 1
  %version18 = getelementptr inbounds %struct.version_info, %struct.version_info* %incdec.ptr, i64 0, i32 0
  %13 = load i32, i32* %version18, align 8, !tbaa !55
  %cmp19.not = icmp eq i32 %13, 0
  br i1 %cmp19.not, label %cleanup, label %for.body, !llvm.loop !149

cleanup:                                          ; preds = %for.inc, %if.end17, %if.else, %entry, %if.then25
  %retval.0 = phi i32 [ %conv, %if.then25 ], [ 1, %entry ], [ 0, %if.else ], [ 0, %if.end17 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare %struct.ssl_method_st* @TLS_method() local_unnamed_addr #2

declare %struct.ssl_method_st* @DTLS_method() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ssl_set_version_bound(i32 noundef %method_version, i32 noundef %version, i32* nocapture noundef writeonly %bound) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq i32 %version, 0
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = add i32 %version, -768
  %1 = icmp ult i32 %0, 5
  switch i32 %version, label %cleanup [
    i32 65280, label %if.end16
    i32 65279, label %if.end16
    i32 65278, label %if.end16
    i32 65277, label %if.end16
    i32 772, label %if.end16
    i32 771, label %if.end16
    i32 770, label %if.end16
    i32 769, label %if.end16
    i32 768, label %if.end16
    i32 256, label %if.end16
  ]

if.end16:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  switch i32 %method_version, label %cleanup [
    i32 65536, label %sw.bb
    i32 131071, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end16
  br i1 %1, label %cleanup.sink.split, label %cleanup

sw.bb20:                                          ; preds = %if.end16
  switch i32 %version, label %cleanup [
    i32 65280, label %cleanup.sink.split
    i32 65279, label %cleanup.sink.split
    i32 65278, label %cleanup.sink.split
    i32 65277, label %cleanup.sink.split
    i32 256, label %cleanup.sink.split
  ]

cleanup.sink.split:                               ; preds = %sw.bb20, %sw.bb20, %sw.bb20, %sw.bb20, %sw.bb20, %sw.bb, %entry
  %version.sink = phi i32 [ 0, %entry ], [ %version, %sw.bb ], [ %version, %sw.bb20 ], [ %version, %sw.bb20 ], [ %version, %sw.bb20 ], [ %version, %sw.bb20 ], [ %version, %sw.bb20 ]
  store i32 %version.sink, i32* %bound, align 4, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb20, %if.end, %if.end16, %sw.bb
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %sw.bb20 ], [ 1, %sw.bb ], [ 1, %if.end16 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_choose_server_version(%struct.ssl_st* noundef %s, %struct.CLIENTHELLO_MSG* nocapture noundef readonly %hello, i32* nocapture noundef writeonly %dgrd) local_unnamed_addr #0 {
entry:
  %candidate_vers = alloca i32, align 4
  %best_method = alloca %struct.ssl_method_st*, align 8
  %versionslist = alloca %struct.PACKET, align 8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !32
  %legacy_version = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 1
  %2 = load i32, i32* %legacy_version, align 4, !tbaa !150
  %client_version1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 %2, i32* %client_version1, align 4, !tbaa !152
  switch i32 %1, label %sw.default [
    i32 65536, label %sw.epilog
    i32 131071, label %sw.bb13
  ]

sw.default:                                       ; preds = %entry
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %4, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %sw.default
  %cmp = icmp slt i32 %1, 772
  %cmp8.not = icmp eq i32 %1, 65536
  %or.cond = or i1 %cmp, %cmp8.not
  br i1 %or.cond, label %if.then, label %sw.epilog

if.then:                                          ; preds = %land.lhs.true, %sw.default
  %version9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %5 = load i32, i32* %version9, align 8, !tbaa !35
  %call = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef nonnull %s, i32 noundef %2, i32 noundef %5) #14
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %cleanup90, label %if.end

if.end:                                           ; preds = %if.then
  store i32 0, i32* %dgrd, align 4, !tbaa !123
  br label %cleanup90

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %land.lhs.true, %sw.bb13
  %table.0 = phi %struct.version_info* [ getelementptr inbounds ([4 x %struct.version_info], [4 x %struct.version_info]* @dtls_version_table, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %entry ]
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 12
  %6 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !153
  %present = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %6, i64 17, i32 1
  %7 = load i32, i32* %present, align 8, !tbaa !154
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true21

land.lhs.true15:                                  ; preds = %sw.epilog
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %8 = load i32, i32* %hello_retry_request, align 8, !tbaa !156
  %cmp16.not = icmp eq i32 %8, 0
  br i1 %cmp16.not, label %if.end64, label %cleanup90

land.lhs.true21:                                  ; preds = %sw.epilog
  %ssl3_enc23 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc23, align 8, !tbaa !28
  %enc_flags24 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 12
  %10 = load i32, i32* %enc_flags24, align 8, !tbaa !30
  %and25 = and i32 %10, 8
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end64

if.then27:                                        ; preds = %land.lhs.true21
  %11 = bitcast i32* %candidate_vers to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #12
  store i32 0, i32* %candidate_vers, align 4, !tbaa !39
  %12 = bitcast %struct.ssl_method_st** %best_method to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #12
  store %struct.ssl_method_st* null, %struct.ssl_method_st** %best_method, align 8, !tbaa !38
  %13 = bitcast %struct.PACKET* %versionslist to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #12
  %parsed = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %6, i64 17, i32 2
  store i32 1, i32* %parsed, align 4, !tbaa !157
  %data = getelementptr inbounds %struct.raw_extension_st, %struct.raw_extension_st* %6, i64 17, i32 0
  %call28 = call fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* noundef nonnull %data, %struct.PACKET* noundef nonnull %versionslist) #14
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.then27
  %cmp32 = icmp slt i32 %2, 769
  br i1 %cmp32, label %cleanup, label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end31, %if.end40
  %best_vers.0.ph = phi i32 [ %spec.select, %if.end40 ], [ 0, %if.end31 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call35 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %versionslist, i32* noundef nonnull %candidate_vers) #14
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %candidate_vers, align 4, !tbaa !39
  %call37 = call fastcc i32 @version_cmp(%struct.ssl_st* noundef %s, i32 noundef %14, i32 noundef %best_vers.0.ph) #14
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %while.cond, label %if.end40, !llvm.loop !158

if.end40:                                         ; preds = %while.body
  %call41 = call i32 @ssl_version_supported(%struct.ssl_st* noundef %s, i32 noundef %14, %struct.ssl_method_st** noundef nonnull %best_method) #14
  %tobool42.not = icmp eq i32 %call41, 0
  %spec.select = select i1 %tobool42.not, i32 %best_vers.0.ph, i32 %14
  br label %while.cond.outer, !llvm.loop !158

while.end:                                        ; preds = %while.cond
  %call45 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %versionslist) #14
  %cmp46.not = icmp eq i64 %call45, 0
  br i1 %cmp46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %while.end
  %cmp49.not = icmp eq i32 %best_vers.0.ph, 0
  br i1 %cmp49.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %if.end48
  %hello_retry_request51 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %15 = load i32, i32* %hello_retry_request51, align 8, !tbaa !156
  %cmp52.not = icmp eq i32 %15, 0
  br i1 %cmp52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.then50
  %cmp54.not = icmp eq i32 %best_vers.0.ph, 772
  %. = select i1 %cmp54.not, i32 0, i32 258
  br label %cleanup

if.end57:                                         ; preds = %if.then50
  call fastcc void @check_for_downgrade(%struct.ssl_st* noundef nonnull %s, i32 noundef %best_vers.0.ph, i32* noundef %dgrd) #14
  %version58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %best_vers.0.ph, i32* %version58, align 8, !tbaa !35
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %best_method, align 8, !tbaa !38
  store %struct.ssl_method_st* %16, %struct.ssl_method_st** %method, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then53, %while.end, %if.end31, %if.then27, %if.end57
  %retval.0 = phi i32 [ 0, %if.end57 ], [ 159, %if.then27 ], [ 292, %if.end31 ], [ 159, %while.end ], [ %., %if.then53 ], [ 258, %if.end48 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #12
  br label %cleanup90

if.end64:                                         ; preds = %land.lhs.true15, %land.lhs.true21
  %call65 = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef nonnull %s, i32 noundef %2, i32 noundef 772) #14
  %cmp66 = icmp sgt i32 %call65, -1
  %spec.select146 = select i1 %cmp66, i32 771, i32 %2
  %version69152 = getelementptr inbounds %struct.version_info, %struct.version_info* %table.0, i64 0, i32 0
  %17 = load i32, i32* %version69152, align 8, !tbaa !55
  %cmp70.not153 = icmp eq i32 %17, 0
  br i1 %cmp70.not153, label %for.end.thread, label %for.body

for.body:                                         ; preds = %if.end64, %for.inc
  %18 = phi i32 [ %22, %for.inc ], [ %17, %if.end64 ]
  %disabled.0156 = phi i32 [ %disabled.1.ph, %for.inc ], [ 0, %if.end64 ]
  %vent.0154 = phi %struct.version_info* [ %incdec.ptr, %for.inc ], [ %table.0, %if.end64 ]
  %smeth = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.0154, i64 0, i32 2
  %19 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %smeth, align 8, !tbaa !148
  %cmp72 = icmp eq %struct.ssl_method_st* ()* %19, null
  br i1 %cmp72, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call74 = tail call fastcc i32 @version_cmp(%struct.ssl_st* noundef %s, i32 noundef %spec.select146, i32 noundef %18) #14
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %for.inc, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false
  %call79 = tail call %struct.ssl_method_st* %19() #13
  %call80 = tail call fastcc i32 @ssl_method_error(%struct.ssl_st* noundef %s, %struct.ssl_method_st* noundef %call79) #14
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %cleanup88, label %for.inc

cleanup88:                                        ; preds = %if.end77
  %version69.le = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.0154, i64 0, i32 0
  %20 = load i32, i32* %version69.le, align 8, !tbaa !55
  tail call fastcc void @check_for_downgrade(%struct.ssl_st* noundef %s, i32 noundef %20, i32* noundef %dgrd) #14
  %21 = load i32, i32* %version69.le, align 8, !tbaa !55
  %version85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %21, i32* %version85, align 8, !tbaa !35
  store %struct.ssl_method_st* %call79, %struct.ssl_method_st** %method, align 8, !tbaa !27
  br label %cleanup90

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.end77
  %disabled.1.ph = phi i32 [ 1, %if.end77 ], [ %disabled.0156, %for.body ], [ %disabled.0156, %lor.lhs.false ]
  %incdec.ptr = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.0154, i64 1
  %version69 = getelementptr inbounds %struct.version_info, %struct.version_info* %incdec.ptr, i64 0, i32 0
  %22 = load i32, i32* %version69, align 8, !tbaa !55
  %cmp70.not = icmp eq i32 %22, 0
  br i1 %cmp70.not, label %for.end, label %for.body, !llvm.loop !159

for.end:                                          ; preds = %for.inc
  %tobool89.not = icmp eq i32 %disabled.1.ph, 0
  br i1 %tobool89.not, label %for.end.thread, label %cleanup90

for.end.thread:                                   ; preds = %if.end64, %for.end
  br label %cleanup90

cleanup90:                                        ; preds = %for.end.thread, %for.end, %cleanup88, %land.lhs.true15, %if.then, %cleanup, %if.end
  %retval.3 = phi i32 [ 0, %if.end ], [ 0, %cleanup88 ], [ %retval.0, %cleanup ], [ 266, %if.then ], [ 258, %land.lhs.true15 ], [ 396, %for.end.thread ], [ 258, %for.end ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #10 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !160
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !39
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #14
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !160
  %5 = load i8*, i8** %data, align 8, !tbaa !38
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !101
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !80
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @check_for_downgrade(%struct.ssl_st* noundef %s, i32 noundef %vers, i32* nocapture noundef writeonly %dgrd) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %vers, 771
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ssl_version_supported(%struct.ssl_st* noundef %s, i32 noundef 772, %struct.ssl_method_st** noundef null) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %2, 8
  %tobool1 = icmp eq i32 %and, 0
  %cmp3 = icmp slt i32 %vers, 771
  %or.cond = and i1 %cmp3, %tobool1
  br i1 %or.cond, label %land.lhs.true4, label %if.else8

land.lhs.true4:                                   ; preds = %if.else
  %call5 = tail call i32 @ssl_version_supported(%struct.ssl_st* noundef nonnull %s, i32 noundef 771, %struct.ssl_method_st** noundef null) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else8, label %if.end9

if.else8:                                         ; preds = %land.lhs.true4, %if.else
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.else8
  %.sink = phi i32 [ 0, %if.else8 ], [ 1, %land.lhs.true ], [ 2, %land.lhs.true4 ]
  store i32 %.sink, i32* %dgrd, align 4, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_choose_client_version(%struct.ssl_st* noundef %s, i32 noundef %version, %struct.raw_extension_st* noundef %extensions) local_unnamed_addr #0 {
entry:
  %ver_min = alloca i32, align 4
  %ver_max = alloca i32, align 4
  %real_max = alloca i32, align 4
  %0 = bitcast i32* %ver_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i32* %ver_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %2 = bitcast i32* %real_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #12
  %version1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %3 = load i32, i32* %version1, align 8, !tbaa !35
  store i32 %version, i32* %version1, align 8, !tbaa !35
  %call = tail call i32 @tls_parse_extension(%struct.ssl_st* noundef %s, i32 noundef 17, i32 noundef 768, %struct.raw_extension_st* noundef %extensions, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %3, i32* %version1, align 8, !tbaa !35
  br label %cleanup

if.end:                                           ; preds = %entry
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %4 = load i32, i32* %hello_retry_request, align 8, !tbaa !156
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %version1, align 8, !tbaa !35
  %cmp5.not = icmp eq i32 %5, 772
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i32 %3, i32* %version1, align 8, !tbaa !35
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1913, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 266, i8* noundef null) #13
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %version9 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %version9, align 8, !tbaa !32
  switch i32 %7, label %sw.default [
    i32 65536, label %sw.epilog
    i32 131071, label %sw.bb17
  ]

sw.default:                                       ; preds = %if.end8
  %8 = load i32, i32* %version1, align 8, !tbaa !35
  %cmp13.not = icmp eq i32 %8, %7
  br i1 %cmp13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %sw.default
  store i32 %3, i32* %version1, align 8, !tbaa !35
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1921, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 266, i8* noundef null) #13
  br label %cleanup

sw.bb17:                                          ; preds = %if.end8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb17
  %table.0 = phi %struct.version_info* [ getelementptr inbounds ([4 x %struct.version_info], [4 x %struct.version_info]* @dtls_version_table, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([6 x %struct.version_info], [6 x %struct.version_info]* @tls_version_table, i64 0, i64 0), %if.end8 ]
  %call18 = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %ver_min, i32* noundef nonnull %ver_max, i32* noundef nonnull %real_max) #14
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %sw.epilog
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1943, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef %call18, i8* noundef null) #13
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 12
  %11 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %11, 8
  %tobool24.not = icmp eq i32 %and, 0
  %12 = load i32, i32* %version1, align 8, !tbaa !35
  br i1 %tobool24.not, label %cond.false35, label %cond.true

cond.true:                                        ; preds = %if.end22
  %cmp26 = icmp eq i32 %12, 256
  %spec.select = select i1 %cmp26, i32 65280, i32 %12
  %13 = load i32, i32* %ver_min, align 4, !tbaa !39
  %cmp29 = icmp eq i32 %13, 256
  %cond33 = select i1 %cmp29, i32 65280, i32 %13
  %cmp34 = icmp sgt i32 %spec.select, %cond33
  br i1 %cmp34, label %if.then38, label %cond.true45

cond.false35:                                     ; preds = %if.end22
  %14 = load i32, i32* %ver_min, align 4, !tbaa !39
  %cmp37 = icmp slt i32 %12, %14
  br i1 %cmp37, label %if.then38, label %cond.false59

if.then38:                                        ; preds = %cond.false35, %cond.true
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1949, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 258, i8* noundef null) #13
  br label %cleanup

cond.true45:                                      ; preds = %cond.true
  %15 = load i32, i32* %ver_max, align 4, !tbaa !39
  %cmp53 = icmp eq i32 %15, 256
  %cond57 = select i1 %cmp53, i32 65280, i32 %15
  %cmp58 = icmp slt i32 %spec.select, %cond57
  br i1 %cmp58, label %if.then62, label %if.end65

cond.false59:                                     ; preds = %cond.false35
  %16 = load i32, i32* %ver_max, align 4, !tbaa !39
  %cmp61 = icmp sgt i32 %12, %16
  br i1 %cmp61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %cond.false59, %cond.true45
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1954, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 258, i8* noundef null) #13
  br label %cleanup

if.end65:                                         ; preds = %cond.true45, %cond.false59
  %17 = phi i32 [ %15, %cond.true45 ], [ %16, %cond.false59 ]
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %18 = load i32, i32* %mode, align 8, !tbaa !105
  %and66 = and i32 %18, 128
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then68, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  %.pre = load i32, i32* %real_max, align 4
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  store i32 %17, i32* %real_max, align 4, !tbaa !39
  br label %if.end69

if.end69:                                         ; preds = %if.end65.if.end69_crit_edge, %if.then68
  %19 = phi i32 [ %.pre, %if.end65.if.end69_crit_edge ], [ %17, %if.then68 ]
  %cmp71 = icmp eq i32 %12, 771
  %cmp74 = icmp sgt i32 %19, 771
  %or.cond = select i1 %cmp71, i1 %cmp74, i1 false
  br i1 %or.cond, label %if.then75, label %if.else82

if.then75:                                        ; preds = %if.end69
  %add.ptr76 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 24
  %call77 = call i32 @memcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @tls12downgrade, i64 0, i64 0), i8* noundef nonnull %add.ptr76, i64 noundef 8) #15
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end106

if.then79:                                        ; preds = %if.then75
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1969, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 373, i8* noundef null) #13
  br label %cleanup

if.else82:                                        ; preds = %if.end69
  br i1 %tobool24.not, label %land.lhs.true88, label %if.end106

land.lhs.true88:                                  ; preds = %if.else82
  %cmp90 = icmp slt i32 %12, 771
  %cmp93 = icmp sgt i32 %19, %12
  %or.cond191 = select i1 %cmp90, i1 %cmp93, i1 false
  br i1 %or.cond191, label %if.then94, label %if.end106

if.then94:                                        ; preds = %land.lhs.true88
  %add.ptr99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 24
  %call100 = call i32 @memcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @tls11downgrade, i64 0, i64 0), i8* noundef nonnull %add.ptr99, i64 noundef 8) #15
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end106

if.then102:                                       ; preds = %if.then94
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1981, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 373, i8* noundef null) #13
  br label %cleanup

if.end106:                                        ; preds = %if.else82, %land.lhs.true88, %if.then94, %if.then75
  %version107193 = getelementptr inbounds %struct.version_info, %struct.version_info* %table.0, i64 0, i32 0
  %20 = load i32, i32* %version107193, align 8, !tbaa !55
  %cmp108.not194 = icmp eq i32 %20, 0
  br i1 %cmp108.not194, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %version107 = getelementptr inbounds %struct.version_info, %struct.version_info* %incdec.ptr, i64 0, i32 0
  %21 = load i32, i32* %version107, align 8, !tbaa !55
  %cmp108.not = icmp eq i32 %21, 0
  br i1 %cmp108.not, label %for.end, label %for.body, !llvm.loop !161

for.body:                                         ; preds = %if.end106, %for.cond
  %22 = phi i32 [ %21, %for.cond ], [ %20, %if.end106 ]
  %vent.0195 = phi %struct.version_info* [ %incdec.ptr, %for.cond ], [ %table.0, %if.end106 ]
  %cmeth = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.0195, i64 0, i32 1
  %23 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %cmeth, align 8, !tbaa !57
  %cmp109 = icmp ne %struct.ssl_method_st* ()* %23, null
  %cmp112.not = icmp eq i32 %12, %22
  %or.cond192 = select i1 %cmp109, i1 %cmp112.not, i1 false
  %incdec.ptr = getelementptr inbounds %struct.version_info, %struct.version_info* %vent.0195, i64 1
  br i1 %or.cond192, label %if.end114, label %for.cond

if.end114:                                        ; preds = %for.body
  %call116 = call %struct.ssl_method_st* %23() #13
  store %struct.ssl_method_st* %call116, %struct.ssl_method_st** %method, align 8, !tbaa !27
  br label %cleanup

for.end:                                          ; preds = %for.cond, %if.end106
  store i32 %3, i32* %version1, align 8, !tbaa !35
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 1995, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ssl_choose_client_version, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 70, i32 noundef 258, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end, %if.end114, %if.then102, %if.then79, %if.then62, %if.then38, %if.then20, %if.then14, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then14 ], [ 0, %if.then20 ], [ 0, %if.then38 ], [ 0, %if.then62 ], [ 0, %if.then79 ], [ 1, %if.end114 ], [ 0, %for.end ], [ 0, %if.then102 ], [ 0, %if.then ], [ 1, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @tls_parse_extension(%struct.ssl_st* noundef, i32 noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_set_client_hello_version(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %ver_min = alloca i32, align 4
  %ver_max = alloca i32, align 4
  %0 = bitcast i32* %ver_min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i32* %ver_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %2 = load i64, i64* %finish_md_len, align 8, !tbaa !48
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %3 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !49
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call = call i32 @ssl_get_min_max_version(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %ver_min, i32* noundef nonnull %ver_max, i32* noundef null) #14
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %ver_max, align 4, !tbaa !39
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %4, i32* %version, align 8, !tbaa !35
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %7, 8
  %tobool = icmp eq i32 %and, 0
  %cmp7 = icmp sgt i32 %4, 771
  %or.cond = select i1 %tobool, i1 %cmp7, i1 false
  %spec.select = select i1 %or.cond, i32 771, i32 %4
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 %spec.select, i32* %client_version, align 4, !tbaa !152
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %lor.lhs.false ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @check_in_list(%struct.ssl_st* noundef %s, i16 noundef zeroext %group_id, i16* noundef readonly %groups, i64 noundef %num_groups, i32 noundef %checkallow) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i16* %groups, null
  %cmp1 = icmp ne i64 %num_groups, 0
  %or.cond.not = and i1 %cmp, %cmp1
  br i1 %or.cond.not, label %for.body.lr.ph, label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq i32 %checkallow, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  %arrayidx = getelementptr inbounds i16, i16* %groups, i64 %i.019
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !162
  %cmp4 = icmp eq i16 %0, %group_id
  br i1 %cmp4, label %land.lhs.true, label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool.not, label %cleanup10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true
  %call = tail call i32 @tls_group_allowed(%struct.ssl_st* noundef %s, i16 noundef zeroext %group_id, i32 noundef 131078) #13
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.inc.critedge, label %cleanup10

for.inc.critedge:                                 ; preds = %for.body, %lor.lhs.false6
  %inc = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc, %num_groups
  br i1 %exitcond.not, label %cleanup10, label %for.body, !llvm.loop !163

cleanup10:                                        ; preds = %land.lhs.true, %lor.lhs.false6, %for.inc.critedge, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false6 ], [ 0, %for.inc.critedge ]
  ret i32 %retval.2
}

declare i32 @tls_group_allowed(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @create_synthetic_message_hash(%struct.ssl_st* noundef %s, i8* noundef %hashval, i64 noundef %hashlen, i8* noundef %hrr, i64 noundef %hrrlen) local_unnamed_addr #0 {
entry:
  %hashlen.addr = alloca i64, align 8
  %hashvaltmp = alloca [64 x i8], align 16
  %msghdr = alloca [4 x i8], align 1
  store i64 %hashlen, i64* %hashlen.addr, align 8, !tbaa !4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hashvaltmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #12
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %msghdr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 4) #13
  %cmp = icmp eq i8* %hashval, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  store i64 0, i64* %hashlen.addr, align 8, !tbaa !4
  %call2 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef %s, i32 noundef 0) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call4 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef %s, i8* noundef nonnull %0, i64 noundef 64, i64* noundef nonnull %hashlen.addr) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %entry
  %hashval.addr.0 = phi i8* [ %0, %lor.lhs.false ], [ %hashval, %entry ]
  %call8 = call i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef %s) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  store i8 -2, i8* %1, align 1, !tbaa !123
  %2 = load i64, i64* %hashlen.addr, align 8, !tbaa !4
  %conv = trunc i64 %2 to i8
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %msghdr, i64 0, i64 3
  store i8 %conv, i8* %arrayidx12, align 1, !tbaa !123
  %call14 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef %s, i8* noundef nonnull %1, i64 noundef 4) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end11
  %3 = load i64, i64* %hashlen.addr, align 8, !tbaa !4
  %call17 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef %s, i8* noundef nonnull %hashval.addr.0, i64 noundef %3) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false16
  %cmp21.not = icmp eq i8* %hrr, null
  br i1 %cmp21.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %call23 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef %s, i8* noundef nonnull %hrr, i64 noundef %hrrlen) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !23
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  %6 = load i64, i64* %message_size, align 8, !tbaa !127
  %add = add i64 %6, 4
  %call26 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef %s, i8* noundef %5, i64 noundef %add) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false25, %if.end20
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false25, %if.end11, %lor.lhs.false16, %if.end7, %if.then, %lor.lhs.false, %if.end29
  %retval.0 = phi i32 [ 1, %if.end29 ], [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 0, %if.end7 ], [ 0, %lor.lhs.false16 ], [ 0, %if.end11 ], [ 0, %lor.lhs.false25 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @parse_ca_names(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %cadns = alloca %struct.PACKET, align 8
  %namebytes = alloca i8*, align 8
  %name_len = alloca i32, align 4
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.X509_name_st**, %struct.X509_name_st**)* @ca_dn_cmp to i32 (i8*, i8*)*)) #13
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509_NAME*
  %1 = bitcast %struct.PACKET* %cadns to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2247, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %cadns) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %call568 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %cadns) #14
  %tobool6.not69 = icmp eq i64 %call568, 0
  br i1 %tobool6.not69, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %2 = bitcast i8** %namebytes to i8*
  %3 = bitcast i32* %name_len to i8*
  br label %while.body

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2252, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %err

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  %call7 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %cadns, i32* noundef nonnull %name_len) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i32, i32* %name_len, align 4, !tbaa !39
  %conv = zext i32 %4 to i64
  %call9 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %cadns, i8** noundef nonnull %namebytes, i64 noundef %conv) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %while.body
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2262, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %cleanup.thread

if.end12:                                         ; preds = %lor.lhs.false
  %5 = load i8*, i8** %namebytes, align 8, !tbaa !38
  %call14 = call %struct.X509_name_st* @d2i_X509_NAME(%struct.X509_name_st** noundef null, i8** noundef nonnull %namebytes, i64 noundef %conv) #13
  %cmp15 = icmp eq %struct.X509_name_st* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2268, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 524301, i8* noundef null) #13
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end12
  %6 = load i8*, i8** %namebytes, align 8, !tbaa !38
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %conv
  %cmp19.not = icmp eq i8* %6, %add.ptr
  br i1 %cmp19.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2272, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 131, i8* noundef null) #13
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %0) #14
  %7 = bitcast %struct.X509_name_st* %call14 to i8*
  %call25 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call23, i8* noundef nonnull %7) #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end22
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2277, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then17, %if.then21, %if.then27, %if.then11
  %xn.1.ph = phi %struct.X509_name_st* [ null, %if.then11 ], [ %call14, %if.then27 ], [ %call14, %if.then21 ], [ null, %if.then17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  br label %err

cleanup:                                          ; preds = %if.end22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  %call5 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %cadns) #14
  %tobool6.not = icmp eq i64 %call5, 0
  br i1 %tobool6.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.cond.preheader
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %8 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !164
  %call31 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %8) #14
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call31, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #13
  %9 = bitcast %struct.stack_st_X509_NAME** %peer_ca_names to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %9, align 8, !tbaa !164
  br label %cleanup38

err:                                              ; preds = %cleanup.thread, %if.then3, %if.then
  %xn.2 = phi %struct.X509_name_st* [ null, %if.then ], [ null, %if.then3 ], [ %xn.1.ph, %cleanup.thread ]
  %call36 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %0) #14
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call36, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #13
  call void @X509_NAME_free(%struct.X509_name_st* noundef %xn.2) #13
  br label %cleanup38

cleanup38:                                        ; preds = %err, %while.end
  %retval.0 = phi i32 [ 0, %err ], [ 1, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ca_dn_cmp(%struct.X509_name_st** nocapture noundef readonly %a, %struct.X509_name_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %a, align 8, !tbaa !38
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %b, align 8, !tbaa !38
  %call = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #10 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !160
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !39
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !160
  %5 = load i8*, i8** %data, align 8, !tbaa !38
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !101
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !80
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare %struct.X509_name_st* @d2i_X509_NAME(%struct.X509_name_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_NAME* @get_ca_names(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !40
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st_X509_NAME* @SSL_get_client_CA_list(%struct.ssl_st* noundef nonnull %s) #13
  %cmp.not = icmp eq %struct.stack_st_X509_NAME* %call, null
  br i1 %cmp.not, label %if.then7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %call) #14
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #13
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true, %if.then, %entry
  %call8 = tail call %struct.stack_st_X509_NAME* @SSL_get0_CA_list(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.then7
  %ca_sk.1 = phi %struct.stack_st_X509_NAME* [ %call8, %if.then7 ], [ %call, %land.lhs.true ]
  ret %struct.stack_st_X509_NAME* %ca_sk.1
}

declare %struct.stack_st_X509_NAME* @SSL_get_client_CA_list(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st_X509_NAME* @SSL_get0_CA_list(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @construct_ca_names(%struct.ssl_st* noundef %s, %struct.stack_st_X509_NAME* noundef %ca_sk, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %namebytes = alloca i8*, align 8
  %call = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2314, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.construct_ca_names, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.stack_st_X509_NAME* %ca_sk, null
  br i1 %cmp.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !135
  %and = and i64 %0, 512
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end25

for.cond.preheader:                               ; preds = %land.lhs.true
  %call3 = call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %ca_sk) #14
  %call448 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #13
  %cmp549 = icmp sgt i32 %call448, 0
  br i1 %cmp549, label %for.body.lr.ph, label %if.end25

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = bitcast i8** %namebytes to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %call7 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.050) #13
  %2 = bitcast i8* %call7 to %struct.X509_name_st*
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %cleanup22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call9 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %2, i8** noundef null) #13
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %cleanup22, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %conv47 = zext i32 %call9 to i64
  %call12 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %conv47, i8** noundef nonnull %namebytes, i64 noundef 2) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup22, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef nonnull %2, i8** noundef nonnull %namebytes) #13
  %cmp16.not = icmp eq i32 %call15, %call9
  br i1 %cmp16.not, label %cleanup, label %cleanup22

cleanup:                                          ; preds = %lor.lhs.false14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  %inc = add nuw nsw i32 %i.050, 1
  %call4 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #13
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %if.end25, !llvm.loop !165

cleanup22:                                        ; preds = %for.body, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false14
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2331, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.construct_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  br label %return

if.end25:                                         ; preds = %cleanup, %for.cond.preheader, %land.lhs.true, %if.end
  %call26 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %return

if.then28:                                        ; preds = %if.end25
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2338, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.construct_ca_names, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %cleanup22, %if.end25, %if.then28, %if.then
  %retval.3 = phi i32 [ 0, %if.then28 ], [ 0, %cleanup22 ], [ 0, %if.then ], [ 1, %if.end25 ]
  ret i32 %retval.3
}

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @construct_key_exchange_tbs(%struct.ssl_st* noundef %s, i8** nocapture noundef writeonly %ptbs, i8* noundef %param, i64 noundef %paramlen) local_unnamed_addr #0 {
entry:
  %add = add i64 %paramlen, 64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2350) #13
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 2353, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_key_exchange_tbs, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %arraydecay, i64 noundef 32) #13
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 32
  %arraydecay3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %arraydecay3, i64 noundef 32) #13
  %add.ptr5 = getelementptr inbounds i8, i8* %call, i64 64
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr5, i8* noundef %param, i64 noundef %paramlen) #13
  store i8* %call, i8** %ptbs, align 8, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %add, %if.end ]
  ret i64 %retval.0
}

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls13_restore_handshake_digest_for_pha(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %pha_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 105
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %pha_dgst, align 8, !tbaa !99
  %cmp = icmp eq %struct.evp_md_ctx_st* %0, null
  br i1 %cmp, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !100
  %call = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %1, %struct.evp_md_ctx_st* noundef nonnull %0) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end, %entry
  %.sink = phi i32 [ 2397, %entry ], [ 2402, %if.end ]
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.tls13_restore_handshake_digest_for_pha, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !101
  %1 = load i8, i8* %0, align 1, !tbaa !123
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !39
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !123
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !39
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !101
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !101
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !80
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !101
  store i8* %0, i8** %data, align 8, !tbaa !38
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !101
  %1 = load i8, i8* %0, align 1, !tbaa !123
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !39
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_STORE_CTX_get0_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ssl_security_cert_chain(%struct.ssl_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_add_cert_to_wpacket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef %x, i32 noundef %chain) unnamed_addr #0 {
entry:
  %outbytes = alloca i8*, align 8
  %0 = bitcast i8** %outbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %call = tail call i32 @i2d_X509(%struct.x509_st* noundef %x, i8** noundef null) #13
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 902, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_add_cert_to_wpacket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 524295, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv34 = zext i32 %call to i64
  %call1 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %conv34, i8** noundef nonnull %outbytes, i64 noundef 3) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call i32 @i2d_X509(%struct.x509_st* noundef %x, i8** noundef nonnull %outbytes) #13
  %cmp3.not = icmp eq i32 %call2, %call
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_add_cert_to_wpacket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !27
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !28
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !30
  %and = and i32 %3, 8
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end6
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !32
  %cmp9 = icmp slt i32 %4, 772
  %cmp14.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp9, %cmp14.not
  br i1 %or.cond, label %if.end21, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %conv17 = sext i32 %chain to i64
  %call18 = call i32 @tls_construct_extensions(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef 4096, %struct.x509_st* noundef %x, i64 noundef %conv17) #13
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true16, %land.lhs.true, %if.end6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true16, %if.end21, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end21 ], [ 0, %land.lhs.true16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare i32 @i2d_X509(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @tls_construct_extensions(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ssl_method_st* @tlsv1_3_client_method() #2

declare %struct.ssl_method_st* @tlsv1_3_server_method() #2

declare %struct.ssl_method_st* @tlsv1_2_client_method() #2

declare %struct.ssl_method_st* @tlsv1_2_server_method() #2

declare %struct.ssl_method_st* @tlsv1_1_client_method() #2

declare %struct.ssl_method_st* @tlsv1_1_server_method() #2

declare %struct.ssl_method_st* @tlsv1_client_method() #2

declare %struct.ssl_method_st* @tlsv1_server_method() #2

declare %struct.ssl_method_st* @dtlsv1_2_client_method() #2

declare %struct.ssl_method_st* @dtlsv1_2_server_method() #2

declare %struct.ssl_method_st* @dtlsv1_client_method() #2

declare %struct.ssl_method_st* @dtlsv1_server_method() #2

declare %struct.ssl_method_st* @dtls_bad_ver_client_method() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl_has_cert(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx) unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !106
  %idxprom12 = zext i32 %idx to i64
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom12, i32 0
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !102
  %cmp2.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp2.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom12, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !61
  %cmp7 = icmp ne %struct.evp_pkey_st* %2, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare i32 @ssl_get_EC_curve_nid(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @tls_check_sigalg_curve(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 136}
!9 = !{!"ssl_st", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !11, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !12, i64 72, !6, i64 132, !11, i64 136, !11, i64 144, !5, i64 152, !5, i64 160, !13, i64 168, !11, i64 1208, !11, i64 1216, !11, i64 1224, !10, i64 1232, !11, i64 1240, !16, i64 1248, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !10, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !11, i64 2120, !6, i64 2128, !11, i64 2144, !11, i64 2152, !11, i64 2160, !11, i64 2168, !6, i64 2176, !11, i64 2192, !11, i64 2200, !6, i64 2208, !5, i64 2272, !6, i64 2280, !5, i64 2288, !6, i64 2296, !11, i64 2328, !11, i64 2336, !11, i64 2344, !5, i64 2352, !11, i64 2360, !6, i64 2368, !5, i64 2400, !10, i64 2408, !11, i64 2416, !11, i64 2424, !10, i64 2432, !10, i64 2436, !11, i64 2440, !11, i64 2448, !11, i64 2456, !11, i64 2464, !11, i64 2472, !11, i64 2480, !5, i64 2488, !17, i64 2496, !11, i64 2512, !11, i64 2520, !6, i64 2528, !5, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !5, i64 2560, !10, i64 2568, !10, i64 2572, !5, i64 2576, !5, i64 2584, !5, i64 2592, !18, i64 2600, !11, i64 2904, !10, i64 2912, !11, i64 2920, !11, i64 2928, !11, i64 2936, !10, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !10, i64 2976, !10, i64 2980, !6, i64 2984, !10, i64 2988, !11, i64 2992, !5, i64 3000, !10, i64 3008, !11, i64 3016, !20, i64 3024, !11, i64 3152, !21, i64 3160, !11, i64 7448, !11, i64 7456, !11, i64 7464, !11, i64 7472, !5, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !11, i64 7504, !11, i64 7512, !5, i64 7520, !11, i64 7528, !5, i64 7536, !5, i64 7544, !5, i64 7552, !11, i64 7560, !11, i64 7568, !11, i64 7576, !11, i64 7584, !11, i64 7592, !5, i64 7600}
!10 = !{!"int", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !6, i64 52, !6, i64 56}
!13 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !10, i64 216, !10, i64 220, !11, i64 224, !11, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !6, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !14, i64 280, !6, i64 840, !5, i64 904, !6, i64 912, !5, i64 976, !10, i64 984, !10, i64 988, !11, i64 992, !5, i64 1000, !11, i64 1008, !5, i64 1016, !10, i64 1024, !6, i64 1028, !6, i64 1029, !15, i64 1030, !11, i64 1032}
!14 = !{!"", !6, i64 0, !5, i64 128, !6, i64 136, !5, i64 264, !5, i64 272, !10, i64 280, !11, i64 288, !11, i64 296, !10, i64 304, !11, i64 312, !5, i64 320, !11, i64 328, !5, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !10, i64 368, !5, i64 376, !11, i64 384, !10, i64 392, !11, i64 400, !5, i64 408, !11, i64 416, !5, i64 424, !11, i64 432, !5, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !5, i64 480, !5, i64 488, !11, i64 496, !6, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!15 = !{!"short", !6, i64 0}
!16 = !{!"ssl_dane_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !5, i64 56}
!17 = !{!"crypto_ex_data_st", !11, i64 0, !11, i64 8}
!18 = !{!"", !6, i64 0, !11, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !11, i64 64, !15, i64 72, !10, i64 76, !19, i64 80, !10, i64 112, !10, i64 116, !5, i64 120, !11, i64 128, !5, i64 136, !11, i64 144, !5, i64 152, !11, i64 160, !5, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !5, i64 232, !11, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !11, i64 272, !5, i64 280, !10, i64 288, !6, i64 292, !10, i64 296}
!19 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !5, i64 24}
!20 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !10, i64 112, !5, i64 120}
!21 = !{!"record_layer_st", !11, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 24, !22, i64 32, !6, i64 80, !6, i64 1616, !11, i64 4176, !5, i64 4184, !5, i64 4192, !6, i64 4200, !5, i64 4208, !5, i64 4216, !5, i64 4224, !10, i64 4232, !5, i64 4240, !11, i64 4248, !6, i64 4256, !6, i64 4264, !10, i64 4272, !10, i64 4276, !11, i64 4280}
!22 = !{!"ssl3_buffer_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40}
!23 = !{!24, !11, i64 8}
!24 = !{!"buf_mem_st", !5, i64 0, !11, i64 8, !5, i64 16, !5, i64 24}
!25 = !{!9, !5, i64 160}
!26 = !{!9, !5, i64 152}
!27 = !{!9, !11, i64 8}
!28 = !{!29, !11, i64 192}
!29 = !{!"ssl_method_st", !10, i64 0, !10, i64 4, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!30 = !{!31, !10, i64 96}
!31 = !{!"ssl3_enc_method", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !11, i64 88, !10, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!32 = !{!29, !10, i64 0}
!33 = !{!9, !6, i64 92}
!34 = !{!9, !11, i64 1216}
!35 = !{!9, !10, i64 0}
!36 = !{!9, !11, i64 1224}
!37 = !{!9, !11, i64 2472}
!38 = !{!11, !11, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{!9, !10, i64 56}
!41 = !{!42, !10, i64 52}
!42 = !{!"ssl_cipher_st", !10, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72}
!43 = !{!42, !10, i64 56}
!44 = !{!42, !10, i64 44}
!45 = !{!42, !10, i64 48}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!9, !5, i64 576}
!49 = !{!9, !5, i64 712}
!50 = !{!9, !11, i64 2952}
!51 = !{!9, !10, i64 840}
!52 = !{!9, !10, i64 1232}
!53 = !{!9, !10, i64 752}
!54 = !{!9, !10, i64 120}
!55 = !{!56, !10, i64 0}
!56 = !{!"", !10, i64 0, !11, i64 8, !11, i64 16}
!57 = !{!56, !11, i64 8}
!58 = distinct !{!58, !47}
!59 = !{!9, !11, i64 896}
!60 = !{!9, !11, i64 904}
!61 = !{!62, !11, i64 8}
!62 = !{!"cert_pkey_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32}
!63 = !{!64, !15, i64 8}
!64 = !{!"sigalg_lookup_st", !11, i64 0, !15, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!65 = !{!66, !11, i64 0}
!66 = !{!"ssl_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !5, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !67, i64 120, !6, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !17, i64 240, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !5, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !5, i64 336, !11, i64 344, !10, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !5, i64 384, !6, i64 392, !11, i64 424, !11, i64 432, !11, i64 440, !10, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !11, i64 512, !11, i64 520, !11, i64 528, !68, i64 536, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !20, i64 792, !69, i64 920, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !10, i64 984, !10, i64 988, !11, i64 992, !11, i64 1000, !5, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !5, i64 1040, !11, i64 1048, !11, i64 1056, !10, i64 1064, !11, i64 1072, !11, i64 1080, !11, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !11, i64 1568, !11, i64 1576, !5, i64 1584, !5, i64 1592, !10, i64 1600, !10, i64 1604, !10, i64 1608, !10, i64 1612}
!67 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!68 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !10, i64 72, !6, i64 76, !5, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !5, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !5, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !6, i64 192}
!69 = !{!"dane_ctx_st", !11, i64 0, !11, i64 8, !6, i64 16, !5, i64 24}
!70 = !{!66, !11, i64 1088}
!71 = !{!64, !10, i64 20}
!72 = !{!9, !11, i64 2328}
!73 = !{!74, !5, i64 8}
!74 = !{!"ssl_session_st", !10, i64 0, !5, i64 8, !6, i64 16, !6, i64 80, !5, i64 592, !6, i64 600, !5, i64 632, !6, i64 640, !11, i64 672, !11, i64 680, !10, i64 688, !11, i64 696, !11, i64 704, !5, i64 712, !6, i64 720, !5, i64 728, !5, i64 736, !5, i64 744, !10, i64 752, !10, i64 756, !11, i64 760, !5, i64 768, !10, i64 776, !17, i64 784, !11, i64 800, !11, i64 808, !75, i64 816, !11, i64 880, !11, i64 888, !5, i64 896, !10, i64 904, !11, i64 912, !11, i64 920}
!75 = !{!"", !11, i64 0, !11, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !11, i64 40, !5, i64 48, !6, i64 56}
!76 = !{!9, !5, i64 2272}
!77 = !{!9, !11, i64 392}
!78 = !{!74, !11, i64 696}
!79 = !{!9, !11, i64 944}
!80 = !{!81, !5, i64 8}
!81 = !{!"", !11, i64 0, !5, i64 8}
!82 = !{!9, !6, i64 2984}
!83 = !{!9, !10, i64 112}
!84 = !{!31, !11, i64 32}
!85 = !{!31, !11, i64 40}
!86 = !{!9, !5, i64 1072}
!87 = !{!9, !5, i64 1144}
!88 = !{!9, !10, i64 2980}
!89 = !{!9, !11, i64 736}
!90 = !{!9, !10, i64 408}
!91 = !{!9, !11, i64 1208}
!92 = !{!93, !15, i64 272}
!93 = !{!"dtls1_state_st", !6, i64 0, !5, i64 256, !10, i64 264, !15, i64 268, !15, i64 270, !15, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 304, !94, i64 312, !94, i64 400, !10, i64 488, !96, i64 496, !10, i64 512, !10, i64 516, !11, i64 520}
!94 = !{!"hm_header_st", !6, i64 0, !5, i64 8, !15, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !95, i64 48}
!95 = !{!"dtls1_retransmit_state", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !15, i64 32}
!96 = !{!"timeval", !5, i64 0, !5, i64 8}
!97 = !{!9, !6, i64 128}
!98 = !{!31, !11, i64 24}
!99 = !{!9, !11, i64 3016}
!100 = !{!9, !11, i64 400}
!101 = !{!81, !11, i64 0}
!102 = !{!62, !11, i64 0}
!103 = !{!62, !11, i64 16}
!104 = !{!66, !11, i64 272}
!105 = !{!9, !10, i64 2544}
!106 = !{!9, !11, i64 2200}
!107 = !{!108, !11, i64 456}
!108 = !{!"cert_st", !11, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 28, !6, i64 32, !11, i64 392, !5, i64 400, !11, i64 408, !5, i64 416, !11, i64 424, !5, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !81, i64 472, !11, i64 488, !10, i64 496, !11, i64 504, !11, i64 512, !6, i64 520, !11, i64 528}
!109 = !{!66, !11, i64 40}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = !{!9, !10, i64 2976}
!113 = !{!9, !10, i64 60}
!114 = !{!9, !10, i64 2712}
!115 = !{!9, !11, i64 48}
!116 = !{!66, !10, i64 80}
!117 = !{!93, !15, i64 268}
!118 = !{!93, !15, i64 270}
!119 = !{!9, !11, i64 2424}
!120 = !{!66, !11, i64 288}
!121 = !{!29, !11, i64 104}
!122 = !{!9, !10, i64 40}
!123 = !{!6, !6, i64 0}
!124 = !{!9, !5, i64 168}
!125 = !{!9, !10, i64 728}
!126 = !{!9, !11, i64 144}
!127 = !{!9, !5, i64 720}
!128 = distinct !{!128, !47}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = !{!132, !10, i64 0}
!132 = !{!"x509err2alert_st", !10, i64 0, !10, i64 4}
!133 = distinct !{!133, !47}
!134 = !{!132, !10, i64 4}
!135 = !{!9, !5, i64 2536}
!136 = distinct !{!136, !47}
!137 = !{!9, !10, i64 2548}
!138 = !{!9, !10, i64 2552}
!139 = !{!29, !5, i64 8}
!140 = !{!29, !10, i64 4}
!141 = !{!108, !10, i64 28}
!142 = !{!66, !11, i64 536}
!143 = !{!9, !11, i64 2448}
!144 = !{!9, !11, i64 2456}
!145 = !{!108, !11, i64 440}
!146 = distinct !{!146, !47}
!147 = !{!66, !11, i64 8}
!148 = !{!56, !11, i64 16}
!149 = distinct !{!149, !47}
!150 = !{!151, !10, i64 4}
!151 = !{!"", !10, i64 0, !10, i64 4, !6, i64 8, !5, i64 40, !6, i64 48, !5, i64 80, !6, i64 88, !81, i64 344, !5, i64 360, !6, i64 368, !81, i64 624, !5, i64 640, !11, i64 648}
!152 = !{!9, !10, i64 2572}
!153 = !{!151, !11, i64 648}
!154 = !{!155, !10, i64 16}
!155 = !{!"raw_extension_st", !81, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !5, i64 32}
!156 = !{!9, !6, i64 2280}
!157 = !{!155, !10, i64 20}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !47}
!160 = !{i64 0, i64 8, !38, i64 8, i64 8, !4}
!161 = distinct !{!161, !47}
!162 = !{!15, !15, i64 0}
!163 = distinct !{!163, !47}
!164 = !{!9, !11, i64 776}
!165 = distinct !{!165, !47}
