; ModuleID = 'ssl/ssl_conf.c'
source_filename = "ssl/ssl_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_conf_cmd_tbl = type { i32 (%struct.ssl_conf_ctx_st*, i8*)*, i8*, i8*, i16, i16 }
%struct.ssl_conf_ctx_st = type { i32, i8*, i64, %struct.ssl_ctx_st*, %struct.ssl_st*, i64*, [9 x i8*], i32*, i32*, i32*, i32*, %struct.ssl_flag_tbl*, i64, %struct.stack_st_X509_NAME* }
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.ssl_mac_buf_st = type { i8*, i32 }
%struct.stack_st_SSL_CIPHER = type opaque
%struct.x509_store_st = type opaque
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon.1, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.anon.1 = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x509_store_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.cert_st = type { %struct.cert_pkey_st*, %struct.evp_pkey_st*, %struct.dh_st* (%struct.ssl_st*, i32, i32)*, i32, i32, [9 x %struct.cert_pkey_st], i8*, i64, i16*, i64, i16*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.x509_store_st*, %struct.x509_store_st*, %struct.custom_ext_methods, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32, i8*, i8*, i32, i8* }
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i8*, i64 }
%struct.dh_st = type opaque
%struct.custom_ext_methods = type { %struct.custom_ext_method*, i64 }
%struct.custom_ext_method = type { i16, i32, i32, i32, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)*, i8*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i8* }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.ctlog_store_st = type opaque
%struct.ct_policy_eval_ctx_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.engine_st = type opaque
%struct.anon.5 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
%struct.ssl_ctx_ext_secure_st = type { [32 x i8], [32 x i8] }
%struct.evp_cipher_ctx_st = type opaque
%struct.hmac_ctx_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.bignum_st = type opaque
%struct.dane_ctx_st = type { %struct.evp_md_st**, i8*, i8, i64 }
%struct.stack_st_SRTP_PROTECTION_PROFILE = type opaque
%struct.evp_cipher_st = type opaque
%struct.sigalg_lookup_st = type { i8*, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.tls_group_info_st = type { i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, i8 }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type opaque
%struct.dtls1_state_st = type { [255 x i8], i64, i32, i16, i16, i16, %struct.pqueue_st*, %struct.pqueue_st*, i64, i64, %struct.hm_header_st, %struct.hm_header_st, i32, %struct.timeval, i32, i32, i32 (%struct.ssl_st*, i32)* }
%struct.pqueue_st = type opaque
%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { %struct.evp_cipher_ctx_st*, %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.ssl_session_st*, i16 }
%struct.timeval = type { i64, i64 }
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }
%struct.comp_ctx_st = type opaque
%struct.anon.2 = type { [26 x i8], void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i8*, i16, i32, %struct.anon.3, i32, i32, i64, i8*, i64, i8*, i64, i16*, i64, i16*, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32, i8, i32 }
%struct.anon.3 = type { %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i64 }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.CLIENTHELLO_MSG = type { i32, i32, [32 x i8], i64, [32 x i8], i64, [255 x i8], %struct.PACKET, i64, [255 x i8], %struct.PACKET, i64, %struct.raw_extension_st* }
%struct.PACKET = type { i8*, i64 }
%struct.raw_extension_st = type { %struct.PACKET, i32, i32, i32, i64 }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.record_layer_st = type { %struct.ssl_st*, i32, i32, i64, i64, %struct.ssl3_buffer_st, [32 x %struct.ssl3_buffer_st], [32 x %struct.ssl3_record_st], i8*, i64, i64, [4 x i8], i64, i64, i64, i32, i64, i8*, [8 x i8], [8 x i8], i32, i32, %struct.dtls_record_layer_st* }
%struct.ssl3_buffer_st = type { i8*, i64, i64, i64, i64, i32 }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ssl_flag_tbl = type { i8*, i32, i32, i64 }
%struct.stack_st_X509_NAME = type opaque
%struct.protocol_versions = type { i8*, i32 }
%struct.ssl_switch_tbl = type { i64, i32 }
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.ossl_decoder_ctx_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_conf.c\00", align 1
@__func__.SSL_CONF_cmd = private unnamed_addr constant [13 x i8] c"SSL_CONF_cmd\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cmd=%s, value=%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cmd=%s\00", align 1
@ssl_conf_cmds = internal constant [54 x %struct.ssl_conf_cmd_tbl] [%struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i16 4, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i16 8, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i16 0, i16 4 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_SignatureAlgorithms, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ClientSignatureAlgorithms, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Curves, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Groups, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ECDHParameters, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i16 8, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_CipherString, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Ciphersuites, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Protocol, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* null, i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_MinProtocol, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_MaxProtocol, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Options, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* null, i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_VerifyMode, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* null, i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_Certificate, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i16 32, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_PrivateKey, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i16 32, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ServerInfoFile, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null, i16 40, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ChainCAPath, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i16 32, i16 3 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ChainCAFile, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i16 32, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ChainCAStore, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i16 32, i16 5 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_VerifyCAPath, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i16 32, i16 3 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_VerifyCAFile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i16 32, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_VerifyCAStore, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i16 32, i16 5 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_RequestCAFile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i16 32, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ClientCAFile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i8* null, i16 40, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_RequestCAPath, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i8* null, i16 32, i16 3 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ClientCAPath, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* null, i16 40, i16 3 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_RequestCAStore, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i16 32, i16 5 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_ClientCAStore, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i8* null, i16 40, i16 5 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_DHParameters, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i16 40, i16 2 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_RecordPadding, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i16 0, i16 1 }, %struct.ssl_conf_cmd_tbl { i32 (%struct.ssl_conf_ctx_st*, i8*)* @cmd_NumTickets, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i16 8, i16 1 }], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"no_ssl3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no_tls1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no_tls1_1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no_tls1_2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no_tls1_3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"bugs\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"no_comp\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ecdh_single\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"no_ticket\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"serverpref\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"legacy_renegotiation\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"client_renegotiation\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"legacy_server_connect\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"no_renegotiation\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"no_resumption_on_reneg\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"no_legacy_server_connect\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"allow_no_dhe_kex\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"prioritize_chacha\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"no_middlebox\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"anti_replay\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"no_anti_replay\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"no_etm\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SignatureAlgorithms\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"sigalgs\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"ClientSignatureAlgorithms\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"client_sigalgs\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Curves\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"ECDHParameters\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"CipherString\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Ciphersuites\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"ciphersuites\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"MinProtocol\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"min_protocol\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"MaxProtocol\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"max_protocol\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"VerifyMode\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"PrivateKey\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"ServerInfoFile\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"ChainCAPath\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"chainCApath\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"ChainCAFile\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"chainCAfile\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"ChainCAStore\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"chainCAstore\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"VerifyCAPath\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"verifyCApath\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"VerifyCAFile\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"verifyCAfile\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"VerifyCAStore\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"verifyCAstore\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"RequestCAFile\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"requestCAFile\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"ClientCAFile\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"RequestCAPath\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"ClientCAPath\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"RequestCAStore\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"requestCAStore\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"ClientCAStore\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"DHParameters\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"dhparam\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"RecordPadding\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"record_padding\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"NumTickets\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"num_tickets\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"+automatic\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c":\00", align 1
@cmd_Protocol.ssl_protocol_list = internal constant [9 x %struct.ssl_flag_tbl] [%struct.ssl_flag_tbl { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i32 3, i32 13, i64 1040187392 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 5, i32 13, i64 0 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 5, i32 13, i64 33554432 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 5, i32 13, i64 67108864 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 7, i32 13, i64 268435456 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i32 7, i32 13, i64 134217728 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 7, i32 13, i64 536870912 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6, i32 13, i64 67108864 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 8, i32 13, i64 134217728 }], align 16
@.str.83 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"SSLv2\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@protocol_from_string.versions = internal unnamed_addr constant [8 x %struct.protocol_versions] [%struct.protocol_versions { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 0 }, %struct.protocol_versions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 768 }, %struct.protocol_versions { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 769 }, %struct.protocol_versions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 770 }, %struct.protocol_versions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i32 771 }, %struct.protocol_versions { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 772 }, %struct.protocol_versions { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 65279 }, %struct.protocol_versions { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 65277 }], align 16
@.str.92 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@cmd_Options.ssl_option_list = internal constant [19 x %struct.ssl_flag_tbl] [%struct.ssl_flag_tbl { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i32 13, i32 13, i64 16384 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i32 14, i32 13, i64 2048 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 4, i32 12, i64 2147485776 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i32 11, i32 13, i64 131072 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i32 16, i32 8, i64 4194304 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i32 27, i32 8, i64 65536 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i32 8, i32 8, i64 0 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 10, i32 8, i64 0 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.101, i32 0, i32 0), i32 25, i32 12, i64 262144 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i32 19, i32 12, i64 256 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i32 14, i32 13, i64 524288 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0), i32 15, i32 12, i64 1073741824 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0), i32 13, i32 12, i64 1024 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i32 16, i32 12, i64 2097152 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i32 15, i32 12, i64 1048576 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i32 10, i32 13, i64 16777216 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0), i32 20, i32 13, i64 1 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i32 7, i32 13, i64 512 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 4, i32 12, i64 8 }], align 16
@.str.93 = private unnamed_addr constant [14 x i8] c"SessionTicket\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"EmptyFragments\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Bugs\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"ServerPreference\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"NoResumptionOnRenegotiation\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"DHSingle\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"ECDHSingle\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"UnsafeLegacyRenegotiation\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"ClientRenegotiation\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"EncryptThenMac\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"NoRenegotiation\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"AllowNoDHEKEX\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"PrioritizeChaCha\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"MiddleboxCompat\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"AntiReplay\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"ExtendedMasterSecret\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"CANames\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"KTLS\00", align 1
@cmd_VerifyMode.ssl_vfy_list = internal constant [6 x %struct.ssl_flag_tbl] [%struct.ssl_flag_tbl { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 4, i32 516, i64 1 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i32 7, i32 520, i64 1 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i32 7, i32 520, i64 3 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 4, i32 520, i64 5 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0), i32 20, i32 520, i64 9 }, %struct.ssl_flag_tbl { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.117, i32 0, i32 0), i32 20, i32 520, i64 11 }], align 16
@.str.112 = private unnamed_addr constant [5 x i8] c"Peer\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"Require\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Once\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"RequestPostHandshake\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"RequirePostHandshake\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@ssl_cmd_switches = internal unnamed_addr constant [24 x %struct.ssl_switch_tbl] [%struct.ssl_switch_tbl { i64 33554432, i32 0 }, %struct.ssl_switch_tbl { i64 67108864, i32 0 }, %struct.ssl_switch_tbl { i64 268435456, i32 0 }, %struct.ssl_switch_tbl { i64 134217728, i32 0 }, %struct.ssl_switch_tbl { i64 536870912, i32 0 }, %struct.ssl_switch_tbl { i64 2147485776, i32 0 }, %struct.ssl_switch_tbl { i64 131072, i32 0 }, %struct.ssl_switch_tbl { i64 131072, i32 1 }, %struct.ssl_switch_tbl zeroinitializer, %struct.ssl_switch_tbl { i64 16384, i32 0 }, %struct.ssl_switch_tbl { i64 4194304, i32 0 }, %struct.ssl_switch_tbl { i64 262144, i32 0 }, %struct.ssl_switch_tbl { i64 256, i32 0 }, %struct.ssl_switch_tbl { i64 4, i32 0 }, %struct.ssl_switch_tbl { i64 1073741824, i32 0 }, %struct.ssl_switch_tbl { i64 65536, i32 0 }, %struct.ssl_switch_tbl { i64 4, i32 1 }, %struct.ssl_switch_tbl { i64 1024, i32 0 }, %struct.ssl_switch_tbl { i64 2097152, i32 0 }, %struct.ssl_switch_tbl { i64 1, i32 256 }, %struct.ssl_switch_tbl { i64 1048576, i32 1 }, %struct.ssl_switch_tbl { i64 16777216, i32 1 }, %struct.ssl_switch_tbl { i64 16777216, i32 0 }, %struct.ssl_switch_tbl { i64 524288, i32 0 }], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %cmd, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8, !tbaa !4
  %cmp = icmp eq i8* %cmd, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_CONF_cmd, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 385, i8* noundef null) #11
  br label %cleanup34

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @ssl_conf_cmd_skip_prefix(%struct.ssl_conf_ctx_st* noundef %cctx, i8** noundef nonnull %cmd.addr) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup34, label %if.end2

if.end2:                                          ; preds = %if.end
  %0 = load i8*, i8** %cmd.addr, align 8, !tbaa !4
  %call3 = call fastcc %struct.ssl_conf_cmd_tbl* @ssl_conf_cmd_lookup(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %0) #12
  %tobool4.not = icmp eq %struct.ssl_conf_cmd_tbl* %call3, null
  br i1 %tobool4.not, label %if.end28, label %if.then5

if.then5:                                         ; preds = %if.end2
  %value_type = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %call3, i64 0, i32 4
  %1 = load i16, i16* %value_type, align 2, !tbaa !8
  %cmp6 = icmp eq i16 %1, 4
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %call9 = call fastcc i32 @ctrl_switch_option(%struct.ssl_conf_ctx_st* noundef %cctx, %struct.ssl_conf_cmd_tbl* noundef nonnull %call3) #12
  br label %cleanup34

if.end10:                                         ; preds = %if.then5
  %cmp11 = icmp eq i8* %value, null
  br i1 %cmp11, label %cleanup34, label %if.end14

if.end14:                                         ; preds = %if.end10
  %cmd15 = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %call3, i64 0, i32 0
  %2 = load i32 (%struct.ssl_conf_ctx_st*, i8*)*, i32 (%struct.ssl_conf_ctx_st*, i8*)** %cmd15, align 8, !tbaa !11
  %call16 = call i32 %2(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef nonnull %value) #11
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %cleanup34, label %if.end20

if.end20:                                         ; preds = %if.end14
  %cmp21 = icmp eq i32 %call16, -2
  br i1 %cmp21, label %cleanup34, label %if.end24

if.end24:                                         ; preds = %if.end20
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %3 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %3, 16
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %cleanup34, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 901, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_CONF_cmd, i64 0, i64 0)) #11
  %4 = load i8*, i8** %cmd.addr, align 8, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 384, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, i8* noundef nonnull %value) #11
  br label %cleanup34

if.end28:                                         ; preds = %if.end2
  %flags29 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %5 = load i32, i32* %flags29, align 8, !tbaa !12
  %and30 = and i32 %5, 16
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cleanup34, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SSL_CONF_cmd, i64 0, i64 0)) #11
  %6 = load i8*, i8** %cmd.addr, align 8, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 386, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6) #11
  br label %cleanup34

cleanup34:                                        ; preds = %if.end28, %if.then32, %if.then8, %if.end10, %if.end14, %if.end20, %if.then26, %if.end24, %if.end, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -2, %if.end ], [ %call9, %if.then8 ], [ -3, %if.end10 ], [ 2, %if.end14 ], [ -2, %if.end20 ], [ 0, %if.then26 ], [ 0, %if.end24 ], [ -2, %if.then32 ], [ -2, %if.end28 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal fastcc i32 @ssl_conf_cmd_skip_prefix(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8** noundef %pcmd) unnamed_addr #3 {
entry:
  %cmp = icmp eq i8** %pcmd, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8*, i8** %pcmd, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %prefix = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 1
  %1 = load i8*, i8** %prefix, align 8, !tbaa !16
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %0) #13
  %prefixlen = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 2
  %2 = load i64, i64* %prefixlen, align 8, !tbaa !17
  %cmp3.not = icmp ugt i64 %call, %2
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.then2
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %3 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %3, 1
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call9 = tail call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true, %if.end5
  %and14 = and i32 %3, 2
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end22, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end12
  %call19 = tail call i32 @strncasecmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %return

if.end22:                                         ; preds = %land.lhs.true16, %if.end12
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %flags24 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %4 = load i32, i32* %flags24, align 8, !tbaa !12
  %and25 = and i32 %4, 1
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %return, label %if.then27

if.then27:                                        ; preds = %if.else
  %5 = load i8, i8* %0, align 1, !tbaa !18
  %cmp28.not = icmp eq i8 %5, 45
  br i1 %cmp28.not, label %lor.lhs.false30, label %return

lor.lhs.false30:                                  ; preds = %if.then27
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %tobool31.not = icmp eq i8 %6, 0
  br i1 %tobool31.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %lor.lhs.false30, %if.end22
  %add.ptr.sink = phi i8* [ %add.ptr, %if.end22 ], [ %arrayidx, %lor.lhs.false30 ]
  store i8* %add.ptr.sink, i8** %pcmd, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else, %if.then27, %lor.lhs.false30, %land.lhs.true16, %land.lhs.true, %if.then2, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true16 ], [ 0, %lor.lhs.false30 ], [ 0, %if.then27 ], [ 1, %if.else ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc %struct.ssl_conf_cmd_tbl* @ssl_conf_cmd_lookup(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef readonly %cmd) unnamed_addr #4 {
entry:
  %cmp = icmp eq i8* %cmd, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.044 = phi i64 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %t.041 = phi %struct.ssl_conf_cmd_tbl* [ getelementptr inbounds ([54 x %struct.ssl_conf_cmd_tbl], [54 x %struct.ssl_conf_cmd_tbl]* @ssl_conf_cmds, i64 0, i64 0), %for.cond.preheader ], [ %incdec.ptr, %for.inc ]
  %call = tail call fastcc i32 @ssl_conf_cmd_allowed(%struct.ssl_conf_ctx_st* noundef %cctx, %struct.ssl_conf_cmd_tbl* noundef nonnull %t.041) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 1
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.then2
  %str_cmdline = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %t.041, i64 0, i32 2
  %1 = load i8*, i8** %str_cmdline, align 8, !tbaa !19
  %tobool5.not = icmp eq i8* %1, null
  br i1 %tobool5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %call7 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull %cmd) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then4, %land.lhs.true, %if.then2
  %and13 = and i32 %0, 2
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %if.end11
  %str_file = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %t.041, i64 0, i32 1
  %2 = load i8*, i8** %str_file, align 8, !tbaa !20
  %tobool16.not = icmp eq i8* %2, null
  br i1 %tobool16.not, label %for.inc, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then15
  %call19 = tail call i32 @strcasecmp(i8* noundef nonnull %2, i8* noundef nonnull %cmd) #13
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then15, %land.lhs.true17, %if.end11
  %inc = add nuw nsw i64 %i.044, 1
  %incdec.ptr = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %t.041, i64 1
  %exitcond.not = icmp eq i64 %inc, 54
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !21

cleanup:                                          ; preds = %for.inc, %land.lhs.true17, %land.lhs.true, %entry
  %retval.0 = phi %struct.ssl_conf_cmd_tbl* [ null, %entry ], [ null, %for.inc ], [ %t.041, %land.lhs.true17 ], [ %t.041, %land.lhs.true ]
  ret %struct.ssl_conf_cmd_tbl* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @ctrl_switch_option(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, %struct.ssl_conf_cmd_tbl* noundef %cmd) unnamed_addr #5 {
entry:
  %sub.ptr.lhs.cast = ptrtoint %struct.ssl_conf_cmd_tbl* %cmd to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([54 x %struct.ssl_conf_cmd_tbl]* @ssl_conf_cmds to i64)
  %cmp = icmp ugt i64 %sub.ptr.sub, 736
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub.ptr.div6 = lshr exact i64 %sub.ptr.sub, 5
  %name_flags = getelementptr inbounds [24 x %struct.ssl_switch_tbl], [24 x %struct.ssl_switch_tbl]* @ssl_cmd_switches, i64 0, i64 %sub.ptr.div6, i32 1
  %0 = load i32, i32* %name_flags, align 8, !tbaa !23
  %option_value = getelementptr inbounds [24 x %struct.ssl_switch_tbl], [24 x %struct.ssl_switch_tbl]* @ssl_cmd_switches, i64 0, i64 %sub.ptr.div6, i32 0
  %1 = load i64, i64* %option_value, align 16, !tbaa !25
  tail call fastcc void @ssl_set_option(%struct.ssl_conf_ctx_st* noundef %cctx, i32 noundef %0, i64 noundef %1, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CONF_cmd_argv(%struct.ssl_conf_ctx_st* noundef %cctx, i32* noundef %pargc, i8*** nocapture noundef %pargv) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32* %pargc, null
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* %pargc, align 4, !tbaa !26
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %if.end5.thread51, label %cleanup

if.end5:                                          ; preds = %entry
  %1 = load i8**, i8*** %pargv, align 8, !tbaa !4
  %2 = load i8*, i8** %1, align 8, !tbaa !4
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %cleanup, label %if.then12

if.end5.thread51:                                 ; preds = %land.lhs.true
  %3 = load i8**, i8*** %pargv, align 8, !tbaa !4
  %4 = load i8*, i8** %3, align 8, !tbaa !4
  %cmp652 = icmp eq i8* %4, null
  br i1 %cmp652, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end5.thread51
  %cmp11 = icmp ugt i32 %0, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5, %lor.lhs.false10
  %5 = phi i8** [ %3, %lor.lhs.false10 ], [ %1, %if.end5 ]
  %6 = phi i8* [ %4, %lor.lhs.false10 ], [ %2, %if.end5 ]
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %lor.lhs.false10, %if.then12
  %8 = phi i8* [ %6, %if.then12 ], [ %4, %lor.lhs.false10 ]
  %argn.0 = phi i8* [ %7, %if.then12 ], [ null, %lor.lhs.false10 ]
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %9 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %9, -4
  %or = or i32 %and, 1
  store i32 %or, i32* %flags, align 8, !tbaa !12
  %call = tail call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef nonnull %8, i8* noundef %argn.0) #12
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %10 = load i8**, i8*** %pargv, align 8, !tbaa !4
  %idx.ext53 = zext i32 %call to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext53
  store i8** %add.ptr, i8*** %pargv, align 8, !tbaa !4
  br i1 %cmp.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.then16
  %11 = load i32, i32* %pargc, align 4, !tbaa !26
  %sub = sub nsw i32 %11, %call
  store i32 %sub, i32* %pargc, align 4, !tbaa !26
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  switch i32 %call, label %if.end25 [
    i32 -2, label %cleanup
    i32 0, label %if.then24
  ]

if.then24:                                        ; preds = %if.end19
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  br label %cleanup

cleanup:                                          ; preds = %if.end5.thread51, %if.end19, %if.then16, %if.then17, %if.end5, %land.lhs.true, %if.end25, %if.then24
  %retval.0 = phi i32 [ -1, %if.then24 ], [ %call, %if.end25 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], [ %call, %if.then17 ], [ %call, %if.then16 ], [ 0, %if.end19 ], [ 0, %if.end5.thread51 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define i32 @SSL_CONF_cmd_value_type(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %cmd) local_unnamed_addr #6 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8, !tbaa !4
  %call = call fastcc i32 @ssl_conf_cmd_skip_prefix(%struct.ssl_conf_ctx_st* noundef %cctx, i8** noundef nonnull %cmd.addr) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %cmd.addr, align 8, !tbaa !4
  %call1 = call fastcc %struct.ssl_conf_cmd_tbl* @ssl_conf_cmd_lookup(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %0) #12
  %tobool2.not = icmp eq %struct.ssl_conf_cmd_tbl* %call1, null
  br i1 %tobool2.not, label %return, label %cleanup

cleanup:                                          ; preds = %if.then
  %value_type = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %call1, i64 0, i32 4
  %1 = load i16, i16* %value_type, align 2, !tbaa !8
  %conv = zext i16 %1 to i32
  br label %return

return:                                           ; preds = %if.then, %entry, %cleanup
  %retval.1 = phi i32 [ %conv, %cleanup ], [ 0, %entry ], [ 0, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 176, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 959) #11
  %0 = bitcast i8* %call to %struct.ssl_conf_ctx_st*
  ret %struct.ssl_conf_ctx_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* nocapture noundef %cctx) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 39
  br label %if.end6

if.else:                                          ; preds = %entry
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool2.not = icmp eq %struct.ssl_st* %1, null
  br i1 %tobool2.not, label %if.end19, label %if.then3

if.then3:                                         ; preds = %if.else
  %cert5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i64 0, i32 49
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then
  %c.0.in = phi %struct.cert_st** [ %cert, %if.then ], [ %cert5, %if.then3 ]
  %c.0 = load %struct.cert_st*, %struct.cert_st** %c.0.in, align 8, !tbaa !4
  %tobool7.not = icmp eq %struct.cert_st* %c.0, null
  br i1 %tobool7.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %2, 64
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end19, label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 0
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  %tobool10.not = icmp eq i8* %3, null
  br i1 %tobool10.not, label %for.inc.critedge, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %for.body.preheader
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 0, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !29
  %tobool13.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %tobool13.not, label %if.then14, label %for.inc.critedge

if.then14:                                        ; preds = %land.lhs.true11
  %call = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %3) #12
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %cleanup41, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %for.body.preheader, %land.lhs.true11, %if.then14
  %arrayidx.1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 1
  %5 = load i8*, i8** %arrayidx.1, align 8, !tbaa !4
  %tobool10.not.1 = icmp eq i8* %5, null
  br i1 %tobool10.not.1, label %for.inc.critedge.1, label %land.lhs.true11.1

land.lhs.true11.1:                                ; preds = %for.inc.critedge
  %privatekey.1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 1, i32 1
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.1, align 8, !tbaa !29
  %tobool13.not.1 = icmp eq %struct.evp_pkey_st* %6, null
  br i1 %tobool13.not.1, label %if.then14.1, label %for.inc.critedge.1

if.then14.1:                                      ; preds = %land.lhs.true11.1
  %call.1 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %5) #12
  %tobool15.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool15.not.1, label %cleanup41, label %for.inc.critedge.1

for.inc.critedge.1:                               ; preds = %if.then14.1, %land.lhs.true11.1, %for.inc.critedge
  %arrayidx.2 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 2
  %7 = load i8*, i8** %arrayidx.2, align 8, !tbaa !4
  %tobool10.not.2 = icmp eq i8* %7, null
  br i1 %tobool10.not.2, label %for.inc.critedge.2, label %land.lhs.true11.2

land.lhs.true11.2:                                ; preds = %for.inc.critedge.1
  %privatekey.2 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 2, i32 1
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.2, align 8, !tbaa !29
  %tobool13.not.2 = icmp eq %struct.evp_pkey_st* %8, null
  br i1 %tobool13.not.2, label %if.then14.2, label %for.inc.critedge.2

if.then14.2:                                      ; preds = %land.lhs.true11.2
  %call.2 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %7) #12
  %tobool15.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool15.not.2, label %cleanup41, label %for.inc.critedge.2

for.inc.critedge.2:                               ; preds = %if.then14.2, %land.lhs.true11.2, %for.inc.critedge.1
  %arrayidx.3 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 3
  %9 = load i8*, i8** %arrayidx.3, align 8, !tbaa !4
  %tobool10.not.3 = icmp eq i8* %9, null
  br i1 %tobool10.not.3, label %for.inc.critedge.3, label %land.lhs.true11.3

land.lhs.true11.3:                                ; preds = %for.inc.critedge.2
  %privatekey.3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 3, i32 1
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.3, align 8, !tbaa !29
  %tobool13.not.3 = icmp eq %struct.evp_pkey_st* %10, null
  br i1 %tobool13.not.3, label %if.then14.3, label %for.inc.critedge.3

if.then14.3:                                      ; preds = %land.lhs.true11.3
  %call.3 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %9) #12
  %tobool15.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool15.not.3, label %cleanup41, label %for.inc.critedge.3

for.inc.critedge.3:                               ; preds = %if.then14.3, %land.lhs.true11.3, %for.inc.critedge.2
  %arrayidx.4 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 4
  %11 = load i8*, i8** %arrayidx.4, align 8, !tbaa !4
  %tobool10.not.4 = icmp eq i8* %11, null
  br i1 %tobool10.not.4, label %for.inc.critedge.4, label %land.lhs.true11.4

land.lhs.true11.4:                                ; preds = %for.inc.critedge.3
  %privatekey.4 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 4, i32 1
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.4, align 8, !tbaa !29
  %tobool13.not.4 = icmp eq %struct.evp_pkey_st* %12, null
  br i1 %tobool13.not.4, label %if.then14.4, label %for.inc.critedge.4

if.then14.4:                                      ; preds = %land.lhs.true11.4
  %call.4 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %11) #12
  %tobool15.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool15.not.4, label %cleanup41, label %for.inc.critedge.4

for.inc.critedge.4:                               ; preds = %if.then14.4, %land.lhs.true11.4, %for.inc.critedge.3
  %arrayidx.5 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 5
  %13 = load i8*, i8** %arrayidx.5, align 8, !tbaa !4
  %tobool10.not.5 = icmp eq i8* %13, null
  br i1 %tobool10.not.5, label %for.inc.critedge.5, label %land.lhs.true11.5

land.lhs.true11.5:                                ; preds = %for.inc.critedge.4
  %privatekey.5 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 5, i32 1
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.5, align 8, !tbaa !29
  %tobool13.not.5 = icmp eq %struct.evp_pkey_st* %14, null
  br i1 %tobool13.not.5, label %if.then14.5, label %for.inc.critedge.5

if.then14.5:                                      ; preds = %land.lhs.true11.5
  %call.5 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %13) #12
  %tobool15.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool15.not.5, label %cleanup41, label %for.inc.critedge.5

for.inc.critedge.5:                               ; preds = %if.then14.5, %land.lhs.true11.5, %for.inc.critedge.4
  %arrayidx.6 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 6
  %15 = load i8*, i8** %arrayidx.6, align 8, !tbaa !4
  %tobool10.not.6 = icmp eq i8* %15, null
  br i1 %tobool10.not.6, label %for.inc.critedge.6, label %land.lhs.true11.6

land.lhs.true11.6:                                ; preds = %for.inc.critedge.5
  %privatekey.6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 6, i32 1
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.6, align 8, !tbaa !29
  %tobool13.not.6 = icmp eq %struct.evp_pkey_st* %16, null
  br i1 %tobool13.not.6, label %if.then14.6, label %for.inc.critedge.6

if.then14.6:                                      ; preds = %land.lhs.true11.6
  %call.6 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %15) #12
  %tobool15.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool15.not.6, label %cleanup41, label %for.inc.critedge.6

for.inc.critedge.6:                               ; preds = %if.then14.6, %land.lhs.true11.6, %for.inc.critedge.5
  %arrayidx.7 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 7
  %17 = load i8*, i8** %arrayidx.7, align 8, !tbaa !4
  %tobool10.not.7 = icmp eq i8* %17, null
  br i1 %tobool10.not.7, label %for.inc.critedge.7, label %land.lhs.true11.7

land.lhs.true11.7:                                ; preds = %for.inc.critedge.6
  %privatekey.7 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 7, i32 1
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.7, align 8, !tbaa !29
  %tobool13.not.7 = icmp eq %struct.evp_pkey_st* %18, null
  br i1 %tobool13.not.7, label %if.then14.7, label %for.inc.critedge.7

if.then14.7:                                      ; preds = %land.lhs.true11.7
  %call.7 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %17) #12
  %tobool15.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool15.not.7, label %cleanup41, label %for.inc.critedge.7

for.inc.critedge.7:                               ; preds = %if.then14.7, %land.lhs.true11.7, %for.inc.critedge.6
  %arrayidx.8 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 8
  %19 = load i8*, i8** %arrayidx.8, align 8, !tbaa !4
  %tobool10.not.8 = icmp eq i8* %19, null
  br i1 %tobool10.not.8, label %if.end19, label %land.lhs.true11.8

land.lhs.true11.8:                                ; preds = %for.inc.critedge.7
  %privatekey.8 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.0, i64 0, i32 5, i64 8, i32 1
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.8, align 8, !tbaa !29
  %tobool13.not.8 = icmp eq %struct.evp_pkey_st* %20, null
  br i1 %tobool13.not.8, label %if.then14.8, label %if.end19

if.then14.8:                                      ; preds = %land.lhs.true11.8
  %call.8 = tail call i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i8* noundef nonnull %19) #12
  %tobool15.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool15.not.8, label %cleanup41, label %if.end19

if.end19:                                         ; preds = %for.inc.critedge.7, %land.lhs.true11.8, %if.then14.8, %if.else, %land.lhs.true, %if.end6
  %canames = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 13
  %21 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  %tobool20.not = icmp eq %struct.stack_st_X509_NAME* %21, null
  br i1 %tobool20.not, label %cleanup41, label %if.then21

if.then21:                                        ; preds = %if.end19
  %ssl22 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %22 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !28
  %tobool23.not = icmp eq %struct.ssl_st* %22, null
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.then21
  tail call void @SSL_set0_CA_list(%struct.ssl_st* noundef nonnull %22, %struct.stack_st_X509_NAME* noundef nonnull %21) #11
  br label %if.end38

if.else27:                                        ; preds = %if.then21
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool29.not = icmp eq %struct.ssl_ctx_st* %23, null
  br i1 %tobool29.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.else27
  tail call void @SSL_CTX_set0_CA_list(%struct.ssl_ctx_st* noundef nonnull %23, %struct.stack_st_X509_NAME* noundef nonnull %21) #11
  br label %if.end38

if.else33:                                        ; preds = %if.else27
  %call35 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %21) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call35, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.else33, %if.then24
  store %struct.stack_st_X509_NAME* null, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  br label %cleanup41

cleanup41:                                        ; preds = %if.then14, %if.then14.1, %if.then14.2, %if.then14.3, %if.then14.4, %if.then14.5, %if.then14.6, %if.then14.7, %if.then14.8, %if.end19, %if.end38
  %retval.2 = phi i32 [ 1, %if.end38 ], [ 1, %if.end19 ], [ 0, %if.then14.8 ], [ 0, %if.then14.7 ], [ 0, %if.then14.6 ], [ 0, %if.then14.5 ], [ 0, %if.then14.4 ], [ 0, %if.then14.3 ], [ 0, %if.then14.2 ], [ 0, %if.then14.1 ], [ 0, %if.then14 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_PrivateKey(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool1.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef nonnull %1, i8* noundef %value, i32 noundef 1) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %rv.0 = phi i32 [ %call, %if.then2 ], [ 1, %if.end ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %2 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool5.not = icmp eq %struct.ssl_st* %2, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 @SSL_use_PrivateKey_file(%struct.ssl_st* noundef nonnull %2, i8* noundef %value, i32 noundef 1) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4
  %rv.1 = phi i32 [ %call8, %if.then6 ], [ %rv.0, %if.end4 ]
  %cmp = icmp sgt i32 %rv.1, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi i32 [ %conv, %if.end9 ], [ -2, %entry ]
  ret i32 %retval.0
}

declare void @SSL_set0_CA_list(%struct.ssl_st* noundef, %struct.stack_st_X509_NAME* noundef) local_unnamed_addr #2

declare void @SSL_CTX_set0_CA_list(%struct.ssl_ctx_st* noundef, %struct.stack_st_X509_NAME* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %cctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ssl_conf_ctx_st* %cctx, null
  br i1 %tobool.not, label %if.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 0
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 1
  %1 = load i8*, i8** %arrayidx.1, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.2 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 2
  %2 = load i8*, i8** %arrayidx.2, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.3 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 3
  %3 = load i8*, i8** %arrayidx.3, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.4 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 4
  %4 = load i8*, i8** %arrayidx.4, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.5 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 5
  %5 = load i8*, i8** %arrayidx.5, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.6 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 6
  %6 = load i8*, i8** %arrayidx.6, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.7 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 7
  %7 = load i8*, i8** %arrayidx.7, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %arrayidx.8 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 8
  %8 = load i8*, i8** %arrayidx.8, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1002) #11
  %prefix = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 1
  %9 = load i8*, i8** %prefix, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1003) #11
  %canames = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 13
  %10 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %10) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #11
  %11 = bitcast %struct.ssl_conf_ctx_st* %cctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1005) #11
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %flags1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 8, !tbaa !12
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 8, !tbaa !12
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_CONF_CTX_clear_flags(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %neg = xor i32 %flags, -1
  %flags1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 8, !tbaa !12
  %and = and i32 %0, %neg
  store i32 %and, i32* %flags1, align 8, !tbaa !12
  ret i32 %and
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CONF_CTX_set1_prefix(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %pre) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %pre, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %pre, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1025) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.then, %entry
  %tmp.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  %prefix = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 1
  %0 = load i8*, i8** %prefix, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1029) #11
  store i8* %tmp.0, i8** %prefix, align 8, !tbaa !16
  %tobool4.not = icmp eq i8* %tmp.0, null
  br i1 %tobool4.not, label %cleanup.sink.split, label %if.then5

if.then5:                                         ; preds = %if.end2
  %call6 = tail call i64 @strlen(i8* noundef nonnull %tmp.0) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end2, %if.then5
  %call6.sink = phi i64 [ %call6, %if.then5 ], [ 0, %if.end2 ]
  %prefixlen = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 2
  store i64 %call6.sink, i64* %prefixlen, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_CONF_CTX_set_ssl(%struct.ssl_conf_ctx_st* nocapture noundef writeonly %cctx, %struct.ssl_st* noundef %ssl) local_unnamed_addr #5 {
entry:
  %ssl1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  store %struct.ssl_st* %ssl, %struct.ssl_st** %ssl1, align 8, !tbaa !28
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_st* %ssl, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 78
  %min_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 80
  %max_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 81
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !32
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 62
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %options.sink = phi i64* [ %options, %if.then ], [ null, %entry ]
  %min_proto_version.sink = phi i32* [ %min_proto_version, %if.then ], [ null, %entry ]
  %max_proto_version.sink = phi i32* [ %max_proto_version, %if.then ], [ null, %entry ]
  %cert_flags.sink = phi i32* [ %cert_flags, %if.then ], [ null, %entry ]
  %verify_mode.sink = phi i32* [ %verify_mode, %if.then ], [ null, %entry ]
  %1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 5
  store i64* %options.sink, i64** %1, align 8
  %2 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 9
  store i32* %min_proto_version.sink, i32** %2, align 8
  %3 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 10
  store i32* %max_proto_version.sink, i32** %3, align 8
  %4 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 7
  store i32* %cert_flags.sink, i32** %4, align 8
  %5 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 8
  store i32* %verify_mode.sink, i32** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* nocapture noundef writeonly %cctx, %struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #5 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  store %struct.ssl_ctx_st* %ctx, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !27
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  store %struct.ssl_st* null, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool.not = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 34
  %min_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 36
  %max_proto_version = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 37
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !44
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %verify_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 43
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %options.sink = phi i64* [ %options, %if.then ], [ null, %entry ]
  %min_proto_version.sink = phi i32* [ %min_proto_version, %if.then ], [ null, %entry ]
  %max_proto_version.sink = phi i32* [ %max_proto_version, %if.then ], [ null, %entry ]
  %cert_flags.sink = phi i32* [ %cert_flags, %if.then ], [ null, %entry ]
  %verify_mode.sink = phi i32* [ %verify_mode, %if.then ], [ null, %entry ]
  %1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 5
  store i64* %options.sink, i64** %1, align 8
  %2 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 9
  store i32* %min_proto_version.sink, i32** %2, align 8
  %3 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 10
  store i32* %max_proto_version.sink, i32** %3, align 8
  %4 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 7
  store i32* %cert_flags.sink, i32** %4, align 8
  %5 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 8
  store i32* %verify_mode.sink, i32** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl_conf_cmd_allowed(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, %struct.ssl_conf_cmd_tbl* nocapture noundef readonly %t) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.ssl_conf_cmd_tbl, %struct.ssl_conf_cmd_tbl* %t, i64 0, i32 3
  %0 = load i16, i16* %flags, align 8, !tbaa !49
  %conv = zext i16 %0 to i32
  %flags1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %1 = load i32, i32* %flags1, align 8, !tbaa !12
  %and = and i32 %conv, 8
  %tobool.not = icmp ne i32 %and, 0
  %and2 = and i32 %1, 8
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 4
  %tobool5.not = icmp ne i32 %and4, 0
  %and7 = and i32 %1, 4
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond25 = select i1 %tobool5.not, i1 %tobool8.not, i1 false
  br i1 %or.cond25, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %and11 = and i32 %conv, 32
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %1, 32
  %tobool15.not = icmp ne i32 %and14, 0
  %or.cond26 = select i1 %tobool12.not, i1 true, i1 %tobool15.not
  %spec.select = zext i1 %or.cond26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %spec.select, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_SignatureAlgorithms(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool.not = icmp eq %struct.ssl_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %0, i32 noundef 98, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %1, i32 noundef 98, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rv.0.in = phi i64 [ %call, %if.then ], [ %call2, %if.else ]
  %rv.0 = trunc i64 %rv.0.in to i32
  %cmp = icmp sgt i32 %rv.0, 0
  %conv4 = zext i1 %cmp to i32
  ret i32 %conv4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ClientSignatureAlgorithms(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool.not = icmp eq %struct.ssl_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %0, i32 noundef 102, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %1, i32 noundef 102, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rv.0.in = phi i64 [ %call, %if.then ], [ %call2, %if.else ]
  %rv.0 = trunc i64 %rv.0.in to i32
  %cmp = icmp sgt i32 %rv.0, 0
  %conv4 = zext i1 %cmp to i32
  ret i32 %conv4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Curves(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call i32 @cmd_Groups(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Groups(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool.not = icmp eq %struct.ssl_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %0, i32 noundef 92, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %1, i32 noundef 92, i64 noundef 0, i8* noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rv.0.in = phi i64 [ %call, %if.then ], [ %call2, %if.else ]
  %rv.0 = trunc i64 %rv.0.in to i32
  %cmp = icmp sgt i32 %rv.0, 0
  %conv4 = zext i1 %cmp to i32
  ret i32 %conv4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ECDHParameters(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* noundef %value, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = tail call i32 @strcasecmp(i8* noundef %value, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0)) #13
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %and4 = and i32 %0, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true6, %if.end
  %call11 = tail call i8* @strstr(i8* noundef %value, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #13
  %cmp12.not = icmp eq i8* %call11, null
  br i1 %cmp12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end10
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool15.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %1, i32 noundef 92, i64 noundef 0, i8* noundef %value) #11
  %conv = trunc i64 %call18 to i32
  br label %if.end25

if.else:                                          ; preds = %if.end14
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %2 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool19.not = icmp eq %struct.ssl_st* %2, null
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.else
  %call22 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %2, i32 noundef 92, i64 noundef 0, i8* noundef %value) #11
  %conv23 = trunc i64 %call22 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20, %if.then16
  %rv.0 = phi i32 [ %conv, %if.then16 ], [ %conv23, %if.then20 ], [ 1, %if.else ]
  %cmp26 = icmp sgt i32 %rv.0, 0
  %conv27 = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true6, %land.lhs.true, %lor.lhs.false, %if.end25
  %retval.0 = phi i32 [ %conv27, %if.end25 ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true6 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_CipherString(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef nonnull %0, i8* noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool2.not = icmp eq %struct.ssl_st* %1, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef nonnull %1, i8* noundef %value) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %rv.1 = phi i32 [ %call5, %if.then3 ], [ %rv.0, %if.end ]
  %cmp = icmp sgt i32 %rv.1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Ciphersuites(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef nonnull %0, i8* noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool2.not = icmp eq %struct.ssl_st* %1, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call i32 @SSL_set_ciphersuites(%struct.ssl_st* noundef nonnull %1, i8* noundef %value) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %rv.1 = phi i32 [ %call5, %if.then3 ], [ %rv.0, %if.end ]
  %cmp = icmp sgt i32 %rv.1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Protocol(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #0 {
entry:
  %tbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 11
  store %struct.ssl_flag_tbl* getelementptr inbounds ([9 x %struct.ssl_flag_tbl], [9 x %struct.ssl_flag_tbl]* @cmd_Protocol.ssl_protocol_list, i64 0, i64 0), %struct.ssl_flag_tbl** %tbl, align 8, !tbaa !50
  %ntbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 12
  store i64 9, i64* %ntbl, align 8, !tbaa !51
  %0 = bitcast %struct.ssl_conf_ctx_st* %cctx to i8*
  %call = tail call i32 @CONF_parse_list(i8* noundef %value, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @ssl_set_option_list, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_MinProtocol(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %min_version = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 9
  %0 = load i32*, i32** %min_version, align 8, !tbaa !52
  %call = tail call fastcc i32 @min_max_proto(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value, i32* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_MaxProtocol(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %max_version = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 10
  %0 = load i32*, i32** %max_version, align 8, !tbaa !53
  %call = tail call fastcc i32 @min_max_proto(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value, i32* noundef %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Options(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #0 {
entry:
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 11
  store %struct.ssl_flag_tbl* getelementptr inbounds ([19 x %struct.ssl_flag_tbl], [19 x %struct.ssl_flag_tbl]* @cmd_Options.ssl_option_list, i64 0, i64 0), %struct.ssl_flag_tbl** %tbl, align 8, !tbaa !50
  %ntbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 12
  store i64 19, i64* %ntbl, align 8, !tbaa !51
  %0 = bitcast %struct.ssl_conf_ctx_st* %cctx to i8*
  %call = tail call i32 @CONF_parse_list(i8* noundef nonnull %value, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @ssl_set_option_list, i8* noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_VerifyMode(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #0 {
entry:
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 11
  store %struct.ssl_flag_tbl* getelementptr inbounds ([6 x %struct.ssl_flag_tbl], [6 x %struct.ssl_flag_tbl]* @cmd_VerifyMode.ssl_vfy_list, i64 0, i64 0), %struct.ssl_flag_tbl** %tbl, align 8, !tbaa !50
  %ntbl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 12
  store i64 6, i64* %ntbl, align 8, !tbaa !51
  %0 = bitcast %struct.ssl_conf_ctx_st* %cctx to i8*
  %call = tail call i32 @CONF_parse_list(i8* noundef nonnull %value, i32 noundef 44, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @ssl_set_option_list, i8* noundef %0) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_Certificate(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_use_certificate_chain_file(%struct.ssl_ctx_st* noundef nonnull %0, i8* noundef %value) #11
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 39
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %c.0 = phi %struct.cert_st* [ %2, %if.then ], [ null, %entry ]
  %rv.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %3 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool3.not = icmp eq %struct.ssl_st* %3, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @SSL_use_certificate_chain_file(%struct.ssl_st* noundef nonnull %3, i8* noundef %value) #11
  %4 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %cert8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %4, i64 0, i32 49
  %5 = load %struct.cert_st*, %struct.cert_st** %cert8, align 8, !tbaa !32
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %c.1 = phi %struct.cert_st* [ %5, %if.then4 ], [ %c.0, %if.end ]
  %rv.1 = phi i32 [ %call6, %if.then4 ], [ %rv.0, %if.end ]
  %cmp = icmp sgt i32 %rv.1, 0
  %tobool10 = icmp ne %struct.cert_st* %c.1, null
  %or.cond = select i1 %cmp, i1 %tobool10, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %if.end18

land.lhs.true11:                                  ; preds = %if.end9
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %6 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %6, 64
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.1, i64 0, i32 0
  %7 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !54
  %arraydecay = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c.1, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cert_pkey_st* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %arrayidx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 6, i64 %sub.ptr.div
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 440) #11
  %call14 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 441) #11
  store i8* %call14, i8** %arrayidx, align 8, !tbaa !4
  %cmp15 = icmp eq i8* %call14, null
  %spec.select = select i1 %cmp15, i32 0, i32 %rv.1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true11, %if.end9
  %rv.3 = phi i32 [ %spec.select, %if.then13 ], [ %rv.1, %land.lhs.true11 ], [ %rv.1, %if.end9 ]
  %cmp19 = icmp sgt i32 %rv.3, 0
  %conv = zext i1 %cmp19 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ServerInfoFile(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef nonnull %0, i8* noundef %value) #11
  %phi.cmp = icmp sgt i32 %call, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %phi.cast, %if.then ], [ 1, %entry ]
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ChainCAPath(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef null, i8* noundef %value, i8* noundef null, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ChainCAFile(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value, i8* noundef null, i8* noundef null, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ChainCAStore(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef null, i8* noundef null, i8* noundef %value, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_VerifyCAPath(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef null, i8* noundef %value, i8* noundef null, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_VerifyCAFile(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value, i8* noundef null, i8* noundef null, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_VerifyCAStore(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call fastcc i32 @do_store(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef null, i8* noundef null, i8* noundef %value, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_RequestCAFile(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %canames = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 13
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  %cmp = icmp eq %struct.stack_st_X509_NAME* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %1 = bitcast %struct.stack_st_X509_NAME** %canames to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !31
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_NAME*
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %3 = phi %struct.stack_st_X509_NAME* [ %2, %if.end ], [ %0, %entry ]
  %call7 = tail call i32 @SSL_add_file_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef nonnull %3, i8* noundef %value) #11
  br label %return

return:                                           ; preds = %if.end, %if.end5
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ClientCAFile(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call i32 @cmd_RequestCAFile(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_RequestCAPath(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %canames = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 13
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  %cmp = icmp eq %struct.stack_st_X509_NAME* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %1 = bitcast %struct.stack_st_X509_NAME** %canames to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !31
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_NAME*
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %3 = phi %struct.stack_st_X509_NAME* [ %2, %if.end ], [ %0, %entry ]
  %call7 = tail call i32 @SSL_add_dir_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef nonnull %3, i8* noundef %value) #11
  br label %return

return:                                           ; preds = %if.end, %if.end5
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ClientCAPath(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call i32 @cmd_RequestCAPath(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_RequestCAStore(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %canames = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 13
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %canames, align 8, !tbaa !31
  %cmp = icmp eq %struct.stack_st_X509_NAME* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %1 = bitcast %struct.stack_st_X509_NAME** %canames to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !31
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_NAME*
  %cmp3 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %3 = phi %struct.stack_st_X509_NAME* [ %2, %if.end ], [ %0, %entry ]
  %call7 = tail call i32 @SSL_add_store_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef nonnull %3, i8* noundef %value) #11
  br label %return

return:                                           ; preds = %if.end, %if.end5
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_ClientCAStore(%struct.ssl_conf_ctx_st* nocapture noundef %cctx, i8* noundef %value) #0 {
entry:
  %call = tail call i32 @cmd_RequestCAStore(%struct.ssl_conf_ctx_st* noundef %cctx, i8* noundef %value) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_DHParameters(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value) #0 {
entry:
  %dhpkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %dhpkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %cmp.not = icmp eq %struct.ssl_st* %1, null
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i64 0, i32 71
  %ctx2 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %cond.in = select i1 %cmp.not, %struct.ssl_ctx_st** %ctx2, %struct.ssl_ctx_st** %ctx
  %cond = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cond.in, align 8, !tbaa !4
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx2, align 8, !tbaa !27
  %cmp4.not = icmp ne %struct.ssl_ctx_st* %2, null
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %cmp4.not, i1 true, i1 %cmp.not.not
  br i1 %brmerge, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_file() #11
  %call7 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #11
  %cmp8 = icmp eq %struct.bio_st* %call7, null
  br i1 %cmp8, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %call10 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call7, i32 noundef 108, i64 noundef 3, i8* noundef %value) #11
  %conv = trunc i64 %call10 to i32
  %cmp11 = icmp slt i32 %conv, 1
  br i1 %cmp11, label %end, label %if.end14

if.end14:                                         ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !57
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !58
  %call15 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %dhpkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i32 noundef 4, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #11
  %cmp16 = icmp eq %struct.ossl_decoder_ctx_st* %call15, null
  br i1 %cmp16, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end14
  %call19 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef nonnull %call15, %struct.bio_st* noundef nonnull %call7) #11
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false18, %if.end14
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call15) #11
  br label %end

if.end21:                                         ; preds = %lor.lhs.false18
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call15) #11
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  %cmp22 = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp22, label %end, label %if.end26

if.end26:                                         ; preds = %if.end21
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx2, align 8, !tbaa !27
  %cmp28.not = icmp eq %struct.ssl_ctx_st* %6, null
  br i1 %cmp28.not, label %if.end37, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call32 = call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef nonnull %6, %struct.evp_pkey_st* noundef nonnull %5) #11
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then30
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.then35, %if.end26
  %rv.0 = phi i32 [ %call32, %if.then35 ], [ %call32, %if.then30 ], [ 0, %if.end26 ]
  %7 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %cmp39.not = icmp eq %struct.ssl_st* %7, null
  br i1 %cmp39.not, label %end, label %if.then41

if.then41:                                        ; preds = %if.end37
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  %call43 = call i32 @SSL_set0_tmp_dh_pkey(%struct.ssl_st* noundef nonnull %7, %struct.evp_pkey_st* noundef %8) #11
  %cmp44 = icmp sgt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %end

if.then46:                                        ; preds = %if.then41
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  br label %end

end:                                              ; preds = %if.end37, %if.then46, %if.then41, %if.end21, %if.end, %if.then, %if.then20
  %rv.1 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ 0, %if.then20 ], [ 0, %if.end21 ], [ %call43, %if.then46 ], [ %call43, %if.then41 ], [ %rv.0, %if.end37 ]
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dhpkey, align 8, !tbaa !4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %9) #11
  %call49 = call i32 @BIO_free(%struct.bio_st* noundef %call7) #11
  %cmp50 = icmp sgt i32 %rv.1, 0
  %conv51 = zext i1 %cmp50 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %conv51, %end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_RecordPadding(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef nonnull %value) #0 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #13
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %conv20 = zext i32 %call to i64
  %call3 = tail call i32 @SSL_CTX_set_block_padding(%struct.ssl_ctx_st* noundef nonnull %0, i64 noundef %conv20) #11
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %rv.0 = phi i32 [ %call3, %if.then1 ], [ 0, %if.then ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool4.not = icmp eq %struct.ssl_st* %1, null
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv719 = zext i32 %call to i64
  %call8 = tail call i32 @SSL_set_block_padding(%struct.ssl_st* noundef nonnull %1, i64 noundef %conv719) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5, %entry
  %rv.1 = phi i32 [ %call8, %if.then5 ], [ %rv.0, %if.end ], [ 0, %entry ]
  ret i32 %rv.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cmd_NumTickets(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef nonnull %value) #0 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #13
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %tobool.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %conv20 = zext i32 %call to i64
  %call3 = tail call i32 @SSL_CTX_set_num_tickets(%struct.ssl_ctx_st* noundef nonnull %0, i64 noundef %conv20) #11
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %rv.0 = phi i32 [ %call3, %if.then1 ], [ 0, %if.then ]
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %tobool4.not = icmp eq %struct.ssl_st* %1, null
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv719 = zext i32 %call to i64
  %call8 = tail call i32 @SSL_set_num_tickets(%struct.ssl_st* noundef nonnull %1, i64 noundef %conv719) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5, %entry
  %rv.1 = phi i32 [ %call8, %if.then5 ], [ %rv.0, %if.end ], [ 0, %entry ]
  ret i32 %rv.1
}

declare i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #8

declare i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_set_cipher_list(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_set_ciphersuites(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @ssl_set_option_list(i8* noundef %elem, i32 noundef %len, i8* nocapture noundef readonly %usr) #6 {
entry:
  %0 = bitcast i8* %usr to %struct.ssl_conf_ctx_st*
  %cmp = icmp eq i8* %elem, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 %len, -1
  br i1 %cmp1.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load i8, i8* %elem, align 1, !tbaa !18
  switch i8 %1, label %if.end14 [
    i8 43, label %if.then5
    i8 45, label %if.then9
  ]

if.then5:                                         ; preds = %if.then2
  %incdec.ptr = getelementptr inbounds i8, i8* %elem, i64 1
  %dec = add nsw i32 %len, -1
  br label %if.end14

if.then9:                                         ; preds = %if.then2
  %incdec.ptr10 = getelementptr inbounds i8, i8* %elem, i64 1
  %dec11 = add nsw i32 %len, -1
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %if.then5, %if.then9, %if.end
  %len.addr.0 = phi i32 [ %dec, %if.then5 ], [ %dec11, %if.then9 ], [ -1, %if.end ], [ %len, %if.then2 ]
  %elem.addr.0 = phi i8* [ %incdec.ptr, %if.then5 ], [ %incdec.ptr10, %if.then9 ], [ %elem, %if.end ], [ %elem, %if.then2 ]
  %onoff.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.then9 ], [ 1, %if.end ], [ 1, %if.then2 ]
  %ntbl = getelementptr inbounds i8, i8* %usr, i64 160
  %2 = bitcast i8* %ntbl to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !51
  %cmp1640.not = icmp eq i64 %3, 0
  br i1 %cmp1640.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end14
  %tbl15 = getelementptr inbounds i8, i8* %usr, i64 152
  %4 = bitcast i8* %tbl15 to %struct.ssl_flag_tbl**
  %5 = load %struct.ssl_flag_tbl*, %struct.ssl_flag_tbl** %4, align 8, !tbaa !50
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %tbl.042 = phi %struct.ssl_flag_tbl* [ %incdec.ptr20, %for.inc ], [ %5, %for.body.preheader ]
  %i.041 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %call = tail call fastcc i32 @ssl_match_option(%struct.ssl_conf_ctx_st* noundef nonnull %0, %struct.ssl_flag_tbl* noundef %tbl.042, i8* noundef nonnull %elem.addr.0, i32 noundef %len.addr.0, i32 noundef %onoff.0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.041, 1
  %incdec.ptr20 = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl.042, i64 1
  %6 = load i64, i64* %2, align 8, !tbaa !51
  %cmp16 = icmp ult i64 %inc, %6
  br i1 %cmp16, label %for.body, label %cleanup, !llvm.loop !59

cleanup:                                          ; preds = %for.body, %for.inc, %if.end14, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end14 ], [ 1, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal fastcc i32 @ssl_match_option(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, %struct.ssl_flag_tbl* nocapture noundef readonly %tbl, i8* noundef readonly %name, i32 noundef %namelen, i32 noundef %onoff) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %name_flags = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl, i64 0, i32 2
  %1 = load i32, i32* %name_flags, align 4, !tbaa !60
  %and = and i32 %0, 12
  %and1 = and i32 %and, %1
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %namelen, -1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %name3 = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl, i64 0, i32 0
  %2 = load i8*, i8** %name3, align 8, !tbaa !62
  %call = tail call i32 @strcmp(i8* noundef %2, i8* noundef %name) #13
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end14, label %return

if.else:                                          ; preds = %if.end
  %namelen7 = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl, i64 0, i32 1
  %3 = load i32, i32* %namelen7, align 8, !tbaa !63
  %cmp8.not = icmp eq i32 %3, %namelen
  br i1 %cmp8.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.else
  %name9 = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl, i64 0, i32 0
  %4 = load i8*, i8** %name9, align 8, !tbaa !62
  %conv = sext i32 %namelen to i64
  %call10 = tail call i32 @strncasecmp(i8* noundef %4, i8* noundef %name, i64 noundef %conv) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %return

if.end14:                                         ; preds = %lor.lhs.false, %if.then2
  %option_value = getelementptr inbounds %struct.ssl_flag_tbl, %struct.ssl_flag_tbl* %tbl, i64 0, i32 3
  %5 = load i64, i64* %option_value, align 8, !tbaa !64
  tail call fastcc void @ssl_set_option(%struct.ssl_conf_ctx_st* noundef nonnull %cctx, i32 noundef %1, i64 noundef %5, i32 noundef %onoff) #12
  br label %return

return:                                           ; preds = %if.else, %lor.lhs.false, %if.then2, %entry, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %lor.lhs.false ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @ssl_set_option(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i32 noundef %name_flags, i64 noundef %option_value, i32 noundef %onoff) unnamed_addr #5 {
entry:
  %poptions = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 5
  %0 = load i64*, i64** %poptions, align 8, !tbaa !65
  %cmp = icmp eq i64* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %name_flags, 1
  %spec.select = xor i32 %and, %onoff
  %and3 = and i32 %name_flags, 3840
  switch i32 %and3, label %cleanup [
    i32 256, label %sw.bb
    i32 512, label %sw.bb4
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %pcert_flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %pvfy_flags = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %tobool6.not = icmp eq i32 %spec.select, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb5
  %1 = load i64, i64* %0, align 8, !tbaa !66
  %or = or i64 %1, %option_value
  store i64 %or, i64* %0, align 8, !tbaa !66
  br label %cleanup

if.else:                                          ; preds = %sw.bb5
  %neg = xor i64 %option_value, -1
  %2 = load i64, i64* %0, align 8, !tbaa !66
  %and10 = and i64 %2, %neg
  store i64 %and10, i64* %0, align 8, !tbaa !66
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %pflags.0.in = phi i32** [ %pvfy_flags, %sw.bb4 ], [ %pcert_flags, %sw.bb ]
  %pflags.0 = load i32*, i32** %pflags.0.in, align 8, !tbaa !4
  %tobool12.not = icmp eq i32 %spec.select, 0
  %3 = load i32, i32* %pflags.0, align 4, !tbaa !26
  %4 = trunc i64 %option_value to i32
  %5 = xor i32 %4, -1
  %conv20 = and i32 %3, %5
  %conv15 = or i32 %3, %4
  %storemerge = select i1 %tobool12.not, i32 %conv20, i32 %conv15
  store i32 %storemerge, i32* %pflags.0, align 4, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %if.else, %entry, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @min_max_proto(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %value, i32* noundef %bound) unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !27
  %cmp.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.end9

if.else:                                          ; preds = %entry
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %cmp2.not = icmp eq %struct.ssl_st* %1, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.else
  %ctx5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx5, align 8, !tbaa !67
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then3
  %.pn21 = phi %struct.ssl_ctx_st* [ %2, %if.then3 ], [ %0, %entry ]
  %call = tail call fastcc i32 @protocol_from_string(i8* noundef %value) #12
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end9
  %.pn.in = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %.pn21, i64 0, i32 1
  %.pn = load %struct.ssl_method_st*, %struct.ssl_method_st** %.pn.in, align 8, !tbaa !68
  %method_version.0.in = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pn, i64 0, i32 0
  %method_version.0 = load i32, i32* %method_version.0.in, align 8, !tbaa !69
  %call13 = tail call i32 @ssl_set_version_bound(i32 noundef %method_version.0, i32 noundef %call, i32* noundef %bound) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else, %if.end12
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ 0, %if.else ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @protocol_from_string(i8* noundef readonly %value) unnamed_addr #4 {
entry:
  %call = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), i8* noundef %value) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.010.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ]
  %version = getelementptr inbounds [8 x %struct.protocol_versions], [8 x %struct.protocol_versions]* @protocol_from_string.versions, i64 0, i64 %i.010.lcssa, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !71
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.4 = icmp eq i32 %call.4, 0
  br i1 %cmp1.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.5 = icmp eq i32 %call.5, 0
  br i1 %cmp1.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.6 = icmp eq i32 %call.6, 0
  br i1 %cmp1.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i64 0, i64 0), i8* noundef %value) #13
  %cmp1.7 = icmp eq i32 %call.7, 0
  br i1 %cmp1.7, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.6, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %for.inc.6 ]
  ret i32 %retval.0
}

declare i32 @ssl_set_version_bound(i32 noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_certificate_chain_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_use_certificate_chain_file(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_store(%struct.ssl_conf_ctx_st* nocapture noundef readonly %cctx, i8* noundef %CAfile, i8* noundef %CApath, i8* noundef %CAstore, i32 noundef %verify_store) unnamed_addr #0 {
entry:
  %ctx1 = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 3
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !27
  %cmp.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.end12.thread

if.end12.thread:                                  ; preds = %entry
  %cert3 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 39
  %cert.072 = load %struct.cert_st*, %struct.cert_st** %cert3, align 8, !tbaa !4
  br label %if.then14

if.else:                                          ; preds = %entry
  %ssl = getelementptr inbounds %struct.ssl_conf_ctx_st, %struct.ssl_conf_ctx_st* %cctx, i64 0, i32 4
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !28
  %cmp5.not = icmp eq %struct.ssl_st* %1, null
  br i1 %cmp5.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.else
  %cert8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i64 0, i32 49
  %ctx10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx10, align 8, !tbaa !67
  %cert.0 = load %struct.cert_st*, %struct.cert_st** %cert8, align 8, !tbaa !4
  %cmp13.not = icmp eq %struct.ssl_ctx_st* %2, null
  br i1 %cmp13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end12.thread, %if.end12
  %cert.075 = phi %struct.cert_st* [ %cert.072, %if.end12.thread ], [ %cert.0, %if.end12 ]
  %ctx.074 = phi %struct.ssl_ctx_st* [ %0, %if.end12.thread ], [ %2, %if.end12 ]
  %libctx15 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx.074, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx15, align 8, !tbaa !57
  %propq16 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx.074, i64 0, i32 85
  %4 = load i8*, i8** %propq16, align 8, !tbaa !58
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %cert.076 = phi %struct.cert_st* [ %cert.075, %if.then14 ], [ %cert.0, %if.end12 ]
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %3, %if.then14 ], [ null, %if.end12 ]
  %propq.0 = phi i8* [ %4, %if.then14 ], [ null, %if.end12 ]
  %tobool.not = icmp eq i32 %verify_store, 0
  %verify_store18 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert.076, i64 0, i32 15
  %chain_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert.076, i64 0, i32 14
  %cond = select i1 %tobool.not, %struct.x509_store_st** %chain_store, %struct.x509_store_st** %verify_store18
  %5 = load %struct.x509_store_st*, %struct.x509_store_st** %cond, align 8, !tbaa !4
  %cmp19 = icmp eq %struct.x509_store_st* %5, null
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end17
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #11
  store %struct.x509_store_st* %call, %struct.x509_store_st** %cond, align 8, !tbaa !4
  %cmp21 = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17
  %6 = phi %struct.x509_store_st* [ %call, %if.then20 ], [ %5, %if.end17 ]
  %cmp25.not = icmp eq i8* %CAfile, null
  br i1 %cmp25.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %call26 = tail call i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef nonnull %6, i8* noundef nonnull %CAfile, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end24
  %cmp30.not = icmp eq i8* %CApath, null
  br i1 %cmp30.not, label %if.end35, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29
  %7 = load %struct.x509_store_st*, %struct.x509_store_st** %cond, align 8, !tbaa !4
  %call32 = tail call i32 @X509_STORE_load_path(%struct.x509_store_st* noundef %7, i8* noundef nonnull %CApath) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %land.lhs.true31, %if.end29
  %cmp36.not = icmp eq i8* %CAstore, null
  br i1 %cmp36.not, label %if.end41, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end35
  %8 = load %struct.x509_store_st*, %struct.x509_store_st** %cond, align 8, !tbaa !4
  %call38 = tail call i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef %8, i8* noundef nonnull %CAstore, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propq.0) #11
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %land.lhs.true37, %if.end35
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true37, %land.lhs.true31, %land.lhs.true, %if.then20, %if.else, %if.end41
  %retval.0 = phi i32 [ 1, %if.end41 ], [ 1, %if.else ], [ 0, %if.then20 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true31 ], [ 0, %land.lhs.true37 ]
  ret i32 %retval.0
}

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare i32 @X509_STORE_load_file_ex(%struct.x509_store_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_load_path(%struct.x509_store_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_load_store_ex(%struct.x509_store_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @SSL_add_file_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_add_dir_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SSL_add_store_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @SSL_set0_tmp_dh_pkey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #10

declare i32 @SSL_CTX_set_block_padding(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_set_block_padding(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_num_tickets(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_set_num_tickets(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_use_PrivateKey_file(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 26}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !10, i64 26}
!10 = !{!"short", !6, i64 0}
!11 = !{!9, !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"ssl_conf_ctx_st", !14, i64 0, !5, i64 8, !15, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !6, i64 48, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !15, i64 160, !5, i64 168}
!14 = !{!"int", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!13, !5, i64 8}
!17 = !{!13, !15, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!9, !5, i64 16}
!20 = !{!9, !5, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !14, i64 8}
!24 = !{!"", !15, i64 0, !14, i64 8}
!25 = !{!24, !15, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!13, !5, i64 24}
!28 = !{!13, !5, i64 32}
!29 = !{!30, !5, i64 8}
!30 = !{!"cert_pkey_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !15, i64 32}
!31 = !{!13, !5, i64 168}
!32 = !{!33, !5, i64 2200}
!33 = !{!"ssl_st", !14, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !14, i64 40, !5, i64 48, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !34, i64 72, !6, i64 132, !5, i64 136, !5, i64 144, !15, i64 152, !15, i64 160, !35, i64 168, !5, i64 1208, !5, i64 1216, !5, i64 1224, !14, i64 1232, !5, i64 1240, !37, i64 1248, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !14, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !5, i64 2120, !6, i64 2128, !5, i64 2144, !5, i64 2152, !5, i64 2160, !5, i64 2168, !6, i64 2176, !5, i64 2192, !5, i64 2200, !6, i64 2208, !15, i64 2272, !6, i64 2280, !15, i64 2288, !6, i64 2296, !5, i64 2328, !5, i64 2336, !5, i64 2344, !15, i64 2352, !5, i64 2360, !6, i64 2368, !15, i64 2400, !14, i64 2408, !5, i64 2416, !5, i64 2424, !14, i64 2432, !14, i64 2436, !5, i64 2440, !5, i64 2448, !5, i64 2456, !5, i64 2464, !5, i64 2472, !5, i64 2480, !15, i64 2488, !38, i64 2496, !5, i64 2512, !5, i64 2520, !6, i64 2528, !15, i64 2536, !14, i64 2544, !14, i64 2548, !14, i64 2552, !15, i64 2560, !14, i64 2568, !14, i64 2572, !15, i64 2576, !15, i64 2584, !15, i64 2592, !39, i64 2600, !5, i64 2904, !14, i64 2912, !5, i64 2920, !5, i64 2928, !5, i64 2936, !14, i64 2944, !5, i64 2952, !5, i64 2960, !5, i64 2968, !14, i64 2976, !14, i64 2980, !6, i64 2984, !14, i64 2988, !5, i64 2992, !15, i64 3000, !14, i64 3008, !5, i64 3016, !41, i64 3024, !5, i64 3152, !42, i64 3160, !5, i64 7448, !5, i64 7456, !5, i64 7464, !5, i64 7472, !15, i64 7480, !14, i64 7488, !14, i64 7492, !14, i64 7496, !5, i64 7504, !5, i64 7512, !15, i64 7520, !5, i64 7528, !15, i64 7536, !15, i64 7544, !15, i64 7552, !5, i64 7560, !5, i64 7568, !5, i64 7576, !5, i64 7584, !5, i64 7592, !15, i64 7600}
!34 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !6, i64 52, !6, i64 56}
!35 = !{!"", !15, i64 0, !15, i64 8, !6, i64 16, !15, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !14, i64 216, !14, i64 220, !5, i64 224, !5, i64 232, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !6, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !36, i64 280, !6, i64 840, !15, i64 904, !6, i64 912, !15, i64 976, !14, i64 984, !14, i64 988, !5, i64 992, !15, i64 1000, !5, i64 1008, !15, i64 1016, !14, i64 1024, !6, i64 1028, !6, i64 1029, !10, i64 1030, !5, i64 1032}
!36 = !{!"", !6, i64 0, !15, i64 128, !6, i64 136, !15, i64 264, !15, i64 272, !14, i64 280, !5, i64 288, !5, i64 296, !14, i64 304, !5, i64 312, !15, i64 320, !5, i64 328, !15, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !14, i64 368, !15, i64 376, !5, i64 384, !14, i64 392, !5, i64 400, !15, i64 408, !5, i64 416, !15, i64 424, !5, i64 432, !15, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !15, i64 480, !15, i64 488, !5, i64 496, !6, i64 504, !14, i64 540, !14, i64 544, !14, i64 548, !14, i64 552}
!37 = !{!"ssl_dane_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !15, i64 56}
!38 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!39 = !{!"", !6, i64 0, !5, i64 32, !5, i64 40, !5, i64 48, !14, i64 56, !5, i64 64, !10, i64 72, !14, i64 76, !40, i64 80, !14, i64 112, !14, i64 116, !15, i64 120, !5, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !15, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !15, i64 232, !5, i64 240, !15, i64 248, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !5, i64 272, !15, i64 280, !14, i64 288, !6, i64 292, !14, i64 296}
!40 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !15, i64 24}
!41 = !{!"srp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !14, i64 112, !15, i64 120}
!42 = !{!"record_layer_st", !5, i64 0, !14, i64 8, !14, i64 12, !15, i64 16, !15, i64 24, !43, i64 32, !6, i64 80, !6, i64 1616, !5, i64 4176, !15, i64 4184, !15, i64 4192, !6, i64 4200, !15, i64 4208, !15, i64 4216, !15, i64 4224, !14, i64 4232, !15, i64 4240, !5, i64 4248, !6, i64 4256, !6, i64 4264, !14, i64 4272, !14, i64 4276, !5, i64 4280}
!43 = !{!"ssl3_buffer_st", !5, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !14, i64 40}
!44 = !{!45, !5, i64 344}
!45 = !{!"ssl_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !15, i64 56, !5, i64 64, !5, i64 72, !14, i64 80, !15, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !46, i64 120, !6, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !38, i64 240, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !15, i64 312, !14, i64 320, !14, i64 324, !14, i64 328, !15, i64 336, !5, i64 344, !14, i64 352, !5, i64 360, !5, i64 368, !14, i64 376, !15, i64 384, !6, i64 392, !5, i64 424, !5, i64 432, !5, i64 440, !14, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !47, i64 536, !5, i64 760, !5, i64 768, !5, i64 776, !5, i64 784, !41, i64 792, !48, i64 920, !5, i64 952, !5, i64 960, !5, i64 968, !5, i64 976, !14, i64 984, !14, i64 988, !5, i64 992, !5, i64 1000, !15, i64 1008, !5, i64 1016, !5, i64 1024, !5, i64 1032, !15, i64 1040, !5, i64 1048, !5, i64 1056, !14, i64 1064, !5, i64 1072, !5, i64 1080, !5, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !5, i64 1568, !5, i64 1576, !15, i64 1584, !15, i64 1592, !14, i64 1600, !14, i64 1604, !14, i64 1608, !14, i64 1612}
!46 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!47 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !14, i64 72, !6, i64 76, !15, i64 80, !5, i64 88, !15, i64 96, !5, i64 104, !5, i64 112, !15, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !6, i64 192}
!48 = !{!"dane_ctx_st", !5, i64 0, !5, i64 8, !6, i64 16, !15, i64 24}
!49 = !{!9, !10, i64 24}
!50 = !{!13, !5, i64 152}
!51 = !{!13, !15, i64 160}
!52 = !{!13, !5, i64 136}
!53 = !{!13, !5, i64 144}
!54 = !{!55, !5, i64 0}
!55 = !{!"cert_st", !5, i64 0, !5, i64 8, !5, i64 16, !14, i64 24, !14, i64 28, !6, i64 32, !5, i64 392, !15, i64 400, !5, i64 408, !15, i64 416, !5, i64 424, !15, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !56, i64 472, !5, i64 488, !14, i64 496, !5, i64 504, !5, i64 512, !6, i64 520, !5, i64 528}
!56 = !{!"", !5, i64 0, !15, i64 8}
!57 = !{!45, !5, i64 0}
!58 = !{!45, !5, i64 1088}
!59 = distinct !{!59, !22}
!60 = !{!61, !14, i64 12}
!61 = !{!"", !5, i64 0, !14, i64 8, !14, i64 12, !15, i64 16}
!62 = !{!61, !5, i64 0}
!63 = !{!61, !14, i64 8}
!64 = !{!61, !15, i64 16}
!65 = !{!13, !5, i64 40}
!66 = !{!15, !15, i64 0}
!67 = !{!33, !5, i64 2472}
!68 = !{!45, !5, i64 8}
!69 = !{!70, !14, i64 0}
!70 = !{!"ssl_method_st", !14, i64 0, !14, i64 4, !15, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216}
!71 = !{!72, !14, i64 8}
!72 = !{!"protocol_versions", !5, i64 0, !14, i64 8}
