; ModuleID = 'ssl/s3_lib.c'
source_filename = "ssl/s3_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
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
%struct.X509_name_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@tls11downgrade = constant [8 x i8] c"DOWNGRD\00", align 1
@tls12downgrade = constant [8 x i8] c"DOWNGRD\01", align 1
@tls13_ciphers = internal global [5 x %struct.ssl_cipher_st] [%struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 50336513, i32 0, i32 0, i32 4096, i32 64, i32 772, i32 772, i32 0, i32 0, i32 8, i32 4, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 50336514, i32 0, i32 0, i32 8192, i32 64, i32 772, i32 772, i32 0, i32 0, i32 8, i32 5, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 50336515, i32 0, i32 0, i32 524288, i32 64, i32 772, i32 772, i32 0, i32 0, i32 8, i32 4, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 50336516, i32 0, i32 0, i32 16384, i32 64, i32 772, i32 772, i32 0, i32 0, i32 40, i32 4, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 50336517, i32 0, i32 0, i32 65536, i32 64, i32 772, i32 772, i32 0, i32 0, i32 40, i32 4, i32 128, i32 128 }], align 16
@ssl3_ciphers = internal global [167 x %struct.ssl_cipher_st] [%struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 50331649, i32 1, i32 1, i32 32, i32 1, i32 768, i32 771, i32 256, i32 65277, i32 1, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 50331650, i32 1, i32 1, i32 32, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 50331695, i32 1, i32 1, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 50331698, i32 2, i32 2, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i32 50331699, i32 2, i32 1, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 50331700, i32 2, i32 4, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32 50331701, i32 1, i32 1, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32 50331704, i32 2, i32 2, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i32 50331705, i32 2, i32 1, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i32 50331706, i32 2, i32 4, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 50331707, i32 1, i32 1, i32 32, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i32 50331708, i32 1, i32 1, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i32 50331709, i32 1, i32 1, i32 128, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0), i32 50331712, i32 2, i32 2, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i32 50331751, i32 2, i32 1, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i32 50331754, i32 2, i32 2, i32 128, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i32 50331755, i32 2, i32 1, i32 128, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i32 50331756, i32 2, i32 4, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i32 50331757, i32 2, i32 4, i32 128, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0), i32 50331804, i32 1, i32 1, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), i32 50331805, i32 1, i32 1, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0), i32 50331806, i32 2, i32 1, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i32 50331807, i32 2, i32 1, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0), i32 50331810, i32 2, i32 2, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), i32 50331811, i32 2, i32 2, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i32 50331814, i32 2, i32 4, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i32 50331815, i32 2, i32 4, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 56, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i32 50380956, i32 1, i32 1, i32 16384, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i32 50380957, i32 1, i32 1, i32 32768, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0), i32 50380958, i32 2, i32 1, i32 16384, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i32 50380959, i32 2, i32 1, i32 32768, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0), i32 50380960, i32 1, i32 1, i32 65536, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0), i32 50380961, i32 1, i32 1, i32 131072, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i32 0, i32 0), i32 50380962, i32 2, i32 1, i32 65536, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0), i32 50380963, i32 2, i32 1, i32 131072, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i32 0, i32 0), i32 50380964, i32 8, i32 16, i32 16384, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0), i32 50380965, i32 8, i32 16, i32 32768, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0), i32 50380966, i32 256, i32 16, i32 16384, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0), i32 50380967, i32 256, i32 16, i32 32768, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0), i32 50380968, i32 8, i32 16, i32 65536, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), i32 50380969, i32 8, i32 16, i32 131072, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.93, i32 0, i32 0), i32 50380970, i32 256, i32 16, i32 65536, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i32 0, i32 0), i32 50380971, i32 256, i32 16, i32 131072, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.97, i32 0, i32 0), i32 50380972, i32 4, i32 8, i32 16384, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0), i32 50380973, i32 4, i32 8, i32 32768, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i32 0, i32 0), i32 50380974, i32 4, i32 8, i32 65536, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.103, i32 0, i32 0), i32 50380975, i32 4, i32 8, i32 131072, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i32 0, i32 0), i32 50380806, i32 4, i32 8, i32 32, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.107, i32 0, i32 0), i32 50380809, i32 4, i32 8, i32 64, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.109, i32 0, i32 0), i32 50380810, i32 4, i32 8, i32 128, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0), i32 50380816, i32 4, i32 1, i32 32, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.113, i32 0, i32 0), i32 50380819, i32 4, i32 1, i32 64, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.115, i32 0, i32 0), i32 50380820, i32 4, i32 1, i32 128, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i32 0, i32 0), i32 50380821, i32 4, i32 4, i32 32, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i32 0, i32 0), i32 50380824, i32 4, i32 4, i32 64, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i32 0, i32 0), i32 50380825, i32 4, i32 4, i32 128, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 56, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.123, i32 0, i32 0), i32 50380835, i32 4, i32 8, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.125, i32 0, i32 0), i32 50380836, i32 4, i32 8, i32 128, i32 32, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.127, i32 0, i32 0), i32 50380839, i32 4, i32 1, i32 64, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.129, i32 0, i32 0), i32 50380840, i32 4, i32 1, i32 128, i32 32, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.131, i32 0, i32 0), i32 50380843, i32 4, i32 8, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.133, i32 0, i32 0), i32 50380844, i32 4, i32 8, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.135, i32 0, i32 0), i32 50380847, i32 4, i32 1, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.137, i32 0, i32 0), i32 50380848, i32 4, i32 1, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.139, i32 0, i32 0), i32 50331692, i32 8, i32 16, i32 32, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.141, i32 0, i32 0), i32 50331693, i32 256, i32 16, i32 32, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.143, i32 0, i32 0), i32 50331694, i32 64, i32 1, i32 32, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.145, i32 0, i32 0), i32 50331788, i32 8, i32 16, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.147, i32 0, i32 0), i32 50331789, i32 8, i32 16, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.149, i32 0, i32 0), i32 50331792, i32 256, i32 16, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.151, i32 0, i32 0), i32 50331793, i32 256, i32 16, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.153, i32 0, i32 0), i32 50331796, i32 64, i32 1, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i32 0, i32 0), i32 50331797, i32 64, i32 1, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.157, i32 0, i32 0), i32 50331816, i32 8, i32 16, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.159, i32 0, i32 0), i32 50331817, i32 8, i32 16, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.161, i32 0, i32 0), i32 50331818, i32 256, i32 16, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.163, i32 0, i32 0), i32 50331819, i32 256, i32 16, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.165, i32 0, i32 0), i32 50331820, i32 64, i32 1, i32 4096, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.167, i32 0, i32 0), i32 50331821, i32 64, i32 1, i32 8192, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i32 0, i32 0), i32 50331822, i32 8, i32 16, i32 64, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i32 0, i32 0), i32 50331823, i32 8, i32 16, i32 128, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.173, i32 0, i32 0), i32 50331824, i32 8, i32 16, i32 32, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.175, i32 0, i32 0), i32 50331825, i32 8, i32 16, i32 32, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 1285, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.177, i32 0, i32 0), i32 50331826, i32 256, i32 16, i32 64, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.179, i32 0, i32 0), i32 50331827, i32 256, i32 16, i32 128, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.181, i32 0, i32 0), i32 50331828, i32 256, i32 16, i32 32, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.183, i32 0, i32 0), i32 50331829, i32 256, i32 16, i32 32, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 1285, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.185, i32 0, i32 0), i32 50331830, i32 64, i32 1, i32 64, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.187, i32 0, i32 0), i32 50331831, i32 64, i32 1, i32 128, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.189, i32 0, i32 0), i32 50331832, i32 64, i32 1, i32 32, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.191, i32 0, i32 0), i32 50331833, i32 64, i32 1, i32 32, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 1285, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.193, i32 0, i32 0), i32 50380853, i32 128, i32 16, i32 64, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.195, i32 0, i32 0), i32 50380854, i32 128, i32 16, i32 128, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.197, i32 0, i32 0), i32 50380855, i32 128, i32 16, i32 64, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.199, i32 0, i32 0), i32 50380856, i32 128, i32 16, i32 128, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 24, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.201, i32 0, i32 0), i32 50380857, i32 128, i32 16, i32 32, i32 2, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i32 0, i32 0), i32 50380858, i32 128, i32 16, i32 32, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 2313, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i32 0, i32 0), i32 50380859, i32 128, i32 16, i32 32, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 17, i32 1285, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.207, i32 0, i32 0), i32 50380829, i32 32, i32 64, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 8, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.209, i32 0, i32 0), i32 50380830, i32 32, i32 1, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 8, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.211, i32 0, i32 0), i32 50380831, i32 32, i32 2, i32 64, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.213, i32 0, i32 0), i32 50380832, i32 32, i32 64, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 8, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.215, i32 0, i32 0), i32 50380833, i32 32, i32 1, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 8, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.217, i32 0, i32 0), i32 50380834, i32 32, i32 2, i32 128, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.219, i32 0, i32 0), i32 50384042, i32 2, i32 1, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.221, i32 0, i32 0), i32 50384040, i32 4, i32 1, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.223, i32 0, i32 0), i32 50384041, i32 4, i32 8, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.225, i32 0, i32 0), i32 50384043, i32 8, i32 16, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.227, i32 0, i32 0), i32 50384044, i32 128, i32 16, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.229, i32 0, i32 0), i32 50384045, i32 256, i32 16, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.231, i32 0, i32 0), i32 50384046, i32 64, i32 1, i32 524288, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 8, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.233, i32 0, i32 0), i32 50331834, i32 1, i32 1, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.235, i32 0, i32 0), i32 50331837, i32 2, i32 2, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.237, i32 0, i32 0), i32 50331838, i32 2, i32 1, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.239, i32 0, i32 0), i32 50331839, i32 2, i32 4, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.241, i32 0, i32 0), i32 50331840, i32 1, i32 1, i32 512, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.243, i32 0, i32 0), i32 50331843, i32 2, i32 2, i32 512, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.245, i32 0, i32 0), i32 50331844, i32 2, i32 1, i32 512, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.247, i32 0, i32 0), i32 50331845, i32 2, i32 4, i32 512, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.249, i32 0, i32 0), i32 50331780, i32 1, i32 1, i32 512, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.251, i32 0, i32 0), i32 50331783, i32 2, i32 2, i32 512, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.253, i32 0, i32 0), i32 50331784, i32 2, i32 1, i32 512, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.255, i32 0, i32 0), i32 50331785, i32 2, i32 4, i32 512, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.257, i32 0, i32 0), i32 50331713, i32 1, i32 1, i32 256, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.259, i32 0, i32 0), i32 50331716, i32 2, i32 2, i32 256, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.261, i32 0, i32 0), i32 50331717, i32 2, i32 1, i32 256, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.263, i32 0, i32 0), i32 50331718, i32 2, i32 4, i32 256, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.265, i32 0, i32 0), i32 50380914, i32 4, i32 8, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.267, i32 0, i32 0), i32 50380915, i32 4, i32 8, i32 512, i32 32, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.269, i32 0, i32 0), i32 50380918, i32 4, i32 1, i32 256, i32 16, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.271, i32 0, i32 0), i32 50380919, i32 4, i32 1, i32 512, i32 32, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.273, i32 0, i32 0), i32 50380948, i32 8, i32 16, i32 256, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.275, i32 0, i32 0), i32 50380949, i32 8, i32 16, i32 512, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.277, i32 0, i32 0), i32 50380950, i32 256, i32 16, i32 256, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.279, i32 0, i32 0), i32 50380951, i32 256, i32 16, i32 512, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.281, i32 0, i32 0), i32 50380952, i32 64, i32 1, i32 256, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.283, i32 0, i32 0), i32 50380953, i32 64, i32 1, i32 512, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.285, i32 0, i32 0), i32 50380954, i32 128, i32 16, i32 256, i32 16, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.287, i32 0, i32 0), i32 50380955, i32 128, i32 16, i32 512, i32 32, i32 769, i32 771, i32 256, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.289, i32 0, i32 0), i32 50331777, i32 16, i32 32, i32 1024, i32 8, i32 769, i32 771, i32 0, i32 0, i32 8, i32 66050, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.291, i32 0, i32 0), i32 50331779, i32 16, i32 32, i32 32, i32 4, i32 769, i32 771, i32 0, i32 0, i32 1, i32 514, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.292, i32 0, i32 0), i8* null, i32 50381058, i32 16, i32 160, i32 262144, i32 256, i32 769, i32 771, i32 0, i32 0, i32 8, i32 67078, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.293, i32 0, i32 0), i8* null, i32 50397061, i32 16, i32 160, i32 262144, i32 256, i32 769, i32 771, i32 0, i32 0, i32 8, i32 67078, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.294, i32 0, i32 0), i8* null, i32 50397063, i32 16, i32 160, i32 32, i32 128, i32 769, i32 771, i32 0, i32 0, i32 1, i32 67078, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.295, i32 0, i32 0), i8* null, i32 50381056, i32 512, i32 128, i32 8388608, i32 2048, i32 771, i32 771, i32 0, i32 0, i32 8, i32 132614, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.296, i32 0, i32 0), i8* null, i32 50381057, i32 512, i32 128, i32 4194304, i32 1024, i32 771, i32 771, i32 0, i32 0, i32 8, i32 132614, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i32 0, i32 0), i32 50331655, i32 1, i32 1, i32 16, i32 2, i32 768, i32 770, i32 256, i32 65279, i32 36, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.300, i32 0, i32 0), i32 50331798, i32 1, i32 1, i32 2048, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 36, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.302, i32 0, i32 0), i32 50331801, i32 2, i32 2, i32 2048, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 36, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.304, i32 0, i32 0), i32 50331802, i32 2, i32 1, i32 2048, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 36, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.306, i32 0, i32 0), i32 50331803, i32 2, i32 4, i32 2048, i32 2, i32 768, i32 771, i32 256, i32 65277, i32 36, i32 2313, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.308, i32 0, i32 0), i32 50380880, i32 1, i32 1, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.310, i32 0, i32 0), i32 50380881, i32 1, i32 1, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.312, i32 0, i32 0), i32 50380882, i32 2, i32 1, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.314, i32 0, i32 0), i32 50380883, i32 2, i32 1, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.316, i32 0, i32 0), i32 50380886, i32 2, i32 2, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.318, i32 0, i32 0), i32 50380887, i32 2, i32 2, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.320, i32 0, i32 0), i32 50380892, i32 4, i32 8, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.322, i32 0, i32 0), i32 50380893, i32 4, i32 8, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.324, i32 0, i32 0), i32 50380896, i32 4, i32 1, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.326, i32 0, i32 0), i32 50380897, i32 4, i32 1, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.328, i32 0, i32 0), i32 50380906, i32 8, i32 16, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.330, i32 0, i32 0), i32 50380907, i32 8, i32 16, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.332, i32 0, i32 0), i32 50380908, i32 256, i32 16, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.334, i32 0, i32 0), i32 50380909, i32 256, i32 16, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.336, i32 0, i32 0), i32 50380910, i32 64, i32 1, i32 1048576, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1028, i32 128, i32 128 }, %struct.ssl_cipher_st { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.338, i32 0, i32 0), i32 50380911, i32 64, i32 1, i32 2097152, i32 64, i32 771, i32 771, i32 65277, i32 65277, i32 40, i32 1285, i32 256, i32 256 }], align 16
@ssl3_scsvs = internal global [2 x %struct.ssl_cipher_st] [%struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.339, i32 0, i32 0), i32 50331903, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.340, i32 0, i32 0), i32 50353664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"CLNT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SRVR\00", align 1
@SSLv3_enc_data = local_unnamed_addr constant { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* } { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)* @ssl3_enc, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)* @n_ssl3_mac, i32 (%struct.ssl_st*)* @ssl3_setup_key_block, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)* @ssl3_generate_master_secret, i32 (%struct.ssl_st*, i32)* @ssl3_change_cipher_state, i64 (%struct.ssl_st*, i8*, i64, i8*)* @ssl3_final_finish_mac, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4, i32 (i32)* @ssl3_alert_code, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)* @ssl_undefined_function_1, i32 0, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @ssl3_set_handshake_header, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)* @tls_close_construct_packet, i32 (%struct.ssl_st*)* @ssl3_handshake_write }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"ssl/s3_lib.c\00", align 1
@__func__.ssl3_ctrl = private unnamed_addr constant [10 x i8] c"ssl3_ctrl\00", align 1
@__func__.ssl3_ctx_ctrl = private unnamed_addr constant [14 x i8] c"ssl3_ctx_ctrl\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@__func__.ssl_generate_pkey_group = private unnamed_addr constant [24 x i8] c"ssl_generate_pkey_group\00", align 1
@__func__.ssl_generate_param_group = private unnamed_addr constant [25 x i8] c"ssl_generate_param_group\00", align 1
@__func__.ssl_derive = private unnamed_addr constant [11 x i8] c"ssl_derive\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@__func__.ssl_decapsulate = private unnamed_addr constant [16 x i8] c"ssl_decapsulate\00", align 1
@__func__.ssl_encapsulate = private unnamed_addr constant [16 x i8] c"ssl_encapsulate\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"TLS_AES_256_GCM_SHA384\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"TLS_CHACHA20_POLY1305_SHA256\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_CCM_SHA256\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"TLS_AES_128_CCM_8_SHA256\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NULL-MD5\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"TLS_RSA_WITH_NULL_MD5\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"NULL-SHA\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"TLS_RSA_WITH_NULL_SHA\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"DHE-DSS-AES128-SHA\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"TLS_DHE_DSS_WITH_AES_128_CBC_SHA\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES128-SHA\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"ADH-AES128-SHA\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"TLS_DH_anon_WITH_AES_128_CBC_SHA\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"TLS_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"DHE-DSS-AES256-SHA\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"TLS_DHE_DSS_WITH_AES_256_CBC_SHA\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES256-SHA\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"TLS_DHE_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"ADH-AES256-SHA\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"TLS_DH_anon_WITH_AES_256_CBC_SHA\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"NULL-SHA256\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_NULL_SHA256\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"AES128-SHA256\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"AES256-SHA256\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_256_CBC_SHA256\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"DHE-DSS-AES128-SHA256\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_128_CBC_SHA256\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"DHE-RSA-AES128-SHA256\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"DHE-DSS-AES256-SHA256\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_256_CBC_SHA256\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"DHE-RSA-AES256-SHA256\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_256_CBC_SHA256\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"ADH-AES128-SHA256\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_128_CBC_SHA256\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"ADH-AES256-SHA256\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_256_CBC_SHA256\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"AES128-GCM-SHA256\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"AES256-GCM-SHA384\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"TLS_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"DHE-RSA-AES128-GCM-SHA256\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"DHE-RSA-AES256-GCM-SHA384\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"TLS_DHE_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"DHE-DSS-AES128-GCM-SHA256\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_128_GCM_SHA256\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"DHE-DSS-AES256-GCM-SHA384\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"TLS_DHE_DSS_WITH_AES_256_GCM_SHA384\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"ADH-AES128-GCM-SHA256\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_128_GCM_SHA256\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"ADH-AES256-GCM-SHA384\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"TLS_DH_anon_WITH_AES_256_GCM_SHA384\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"AES128-CCM\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_AES_128_CCM\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"AES256-CCM\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"TLS_RSA_WITH_AES_256_CCM\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES128-CCM\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"TLS_DHE_RSA_WITH_AES_128_CCM\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES256-CCM\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"TLS_DHE_RSA_WITH_AES_256_CCM\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"AES128-CCM8\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"TLS_RSA_WITH_AES_128_CCM_8\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"AES256-CCM8\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"TLS_RSA_WITH_AES_256_CCM_8\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"DHE-RSA-AES128-CCM8\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"TLS_DHE_RSA_WITH_AES_128_CCM_8\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"DHE-RSA-AES256-CCM8\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"TLS_DHE_RSA_WITH_AES_256_CCM_8\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"PSK-AES128-CCM\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_AES_128_CCM\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"PSK-AES256-CCM\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_AES_256_CCM\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"DHE-PSK-AES128-CCM\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_AES_128_CCM\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"DHE-PSK-AES256-CCM\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_AES_256_CCM\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"PSK-AES128-CCM8\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"TLS_PSK_WITH_AES_128_CCM_8\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"PSK-AES256-CCM8\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"TLS_PSK_WITH_AES_256_CCM_8\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"DHE-PSK-AES128-CCM8\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"TLS_PSK_DHE_WITH_AES_128_CCM_8\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"DHE-PSK-AES256-CCM8\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"TLS_PSK_DHE_WITH_AES_256_CCM_8\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"ECDHE-ECDSA-AES128-CCM\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CCM\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"ECDHE-ECDSA-AES256-CCM\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CCM\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"ECDHE-ECDSA-AES128-CCM8\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"ECDHE-ECDSA-AES256-CCM8\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"ECDHE-ECDSA-NULL-SHA\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"TLS_ECDHE_ECDSA_WITH_NULL_SHA\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"ECDHE-ECDSA-AES128-SHA\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"ECDHE-ECDSA-AES256-SHA\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"ECDHE-RSA-NULL-SHA\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"TLS_ECDHE_RSA_WITH_NULL_SHA\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"ECDHE-RSA-AES128-SHA\00", align 1
@.str.113 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"ECDHE-RSA-AES256-SHA\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"AECDH-NULL-SHA\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"TLS_ECDH_anon_WITH_NULL_SHA\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"AECDH-AES128-SHA\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"TLS_ECDH_anon_WITH_AES_128_CBC_SHA\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"AECDH-AES256-SHA\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"TLS_ECDH_anon_WITH_AES_256_CBC_SHA\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"ECDHE-ECDSA-AES128-SHA256\00", align 1
@.str.123 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.124 = private unnamed_addr constant [26 x i8] c"ECDHE-ECDSA-AES256-SHA384\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"ECDHE-RSA-AES128-SHA256\00", align 1
@.str.127 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"ECDHE-RSA-AES256-SHA384\00", align 1
@.str.129 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES128-GCM-SHA256\00", align 1
@.str.131 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.133 = private unnamed_addr constant [40 x i8] c"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.134 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-AES128-GCM-SHA256\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256\00", align 1
@.str.136 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-AES256-GCM-SHA384\00", align 1
@.str.137 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"PSK-NULL-SHA\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"TLS_PSK_WITH_NULL_SHA\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"DHE-PSK-NULL-SHA\00", align 1
@.str.141 = private unnamed_addr constant [26 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"RSA-PSK-NULL-SHA\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"PSK-AES128-CBC-SHA\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"TLS_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"PSK-AES256-CBC-SHA\00", align 1
@.str.147 = private unnamed_addr constant [29 x i8] c"TLS_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"DHE-PSK-AES128-CBC-SHA\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"TLS_DHE_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"DHE-PSK-AES256-CBC-SHA\00", align 1
@.str.151 = private unnamed_addr constant [33 x i8] c"TLS_DHE_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"RSA-PSK-AES128-CBC-SHA\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"TLS_RSA_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"RSA-PSK-AES256-CBC-SHA\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"TLS_RSA_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"PSK-AES128-GCM-SHA256\00", align 1
@.str.157 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"PSK-AES256-GCM-SHA384\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"DHE-PSK-AES128-GCM-SHA256\00", align 1
@.str.161 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"DHE-PSK-AES256-GCM-SHA384\00", align 1
@.str.163 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.164 = private unnamed_addr constant [26 x i8] c"RSA-PSK-AES128-GCM-SHA256\00", align 1
@.str.165 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_128_GCM_SHA256\00", align 1
@.str.166 = private unnamed_addr constant [26 x i8] c"RSA-PSK-AES256-GCM-SHA384\00", align 1
@.str.167 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_256_GCM_SHA384\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"PSK-AES128-CBC-SHA256\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"PSK-AES256-CBC-SHA384\00", align 1
@.str.171 = private unnamed_addr constant [32 x i8] c"TLS_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"PSK-NULL-SHA256\00", align 1
@.str.173 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_NULL_SHA256\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"PSK-NULL-SHA384\00", align 1
@.str.175 = private unnamed_addr constant [25 x i8] c"TLS_PSK_WITH_NULL_SHA384\00", align 1
@.str.176 = private unnamed_addr constant [26 x i8] c"DHE-PSK-AES128-CBC-SHA256\00", align 1
@.str.177 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"DHE-PSK-AES256-CBC-SHA384\00", align 1
@.str.179 = private unnamed_addr constant [36 x i8] c"TLS_DHE_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"DHE-PSK-NULL-SHA256\00", align 1
@.str.181 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA256\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"DHE-PSK-NULL-SHA384\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"TLS_DHE_PSK_WITH_NULL_SHA384\00", align 1
@.str.184 = private unnamed_addr constant [26 x i8] c"RSA-PSK-AES128-CBC-SHA256\00", align 1
@.str.185 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"RSA-PSK-AES256-CBC-SHA384\00", align 1
@.str.187 = private unnamed_addr constant [36 x i8] c"TLS_RSA_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.188 = private unnamed_addr constant [20 x i8] c"RSA-PSK-NULL-SHA256\00", align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA256\00", align 1
@.str.190 = private unnamed_addr constant [20 x i8] c"RSA-PSK-NULL-SHA384\00", align 1
@.str.191 = private unnamed_addr constant [29 x i8] c"TLS_RSA_PSK_WITH_NULL_SHA384\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"ECDHE-PSK-AES128-CBC-SHA\00", align 1
@.str.193 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"ECDHE-PSK-AES256-CBC-SHA\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"ECDHE-PSK-AES128-CBC-SHA256\00", align 1
@.str.197 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"ECDHE-PSK-AES256-CBC-SHA384\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"ECDHE-PSK-NULL-SHA\00", align 1
@.str.201 = private unnamed_addr constant [28 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA\00", align 1
@.str.202 = private unnamed_addr constant [22 x i8] c"ECDHE-PSK-NULL-SHA256\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA256\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"ECDHE-PSK-NULL-SHA384\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"TLS_ECDHE_PSK_WITH_NULL_SHA384\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"SRP-AES-128-CBC-SHA\00", align 1
@.str.207 = private unnamed_addr constant [33 x i8] c"TLS_SRP_SHA_WITH_AES_128_CBC_SHA\00", align 1
@.str.208 = private unnamed_addr constant [24 x i8] c"SRP-RSA-AES-128-CBC-SHA\00", align 1
@.str.209 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA\00", align 1
@.str.210 = private unnamed_addr constant [24 x i8] c"SRP-DSS-AES-128-CBC-SHA\00", align 1
@.str.211 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA\00", align 1
@.str.212 = private unnamed_addr constant [20 x i8] c"SRP-AES-256-CBC-SHA\00", align 1
@.str.213 = private unnamed_addr constant [33 x i8] c"TLS_SRP_SHA_WITH_AES_256_CBC_SHA\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"SRP-RSA-AES-256-CBC-SHA\00", align 1
@.str.215 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA\00", align 1
@.str.216 = private unnamed_addr constant [24 x i8] c"SRP-DSS-AES-256-CBC-SHA\00", align 1
@.str.217 = private unnamed_addr constant [37 x i8] c"TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA\00", align 1
@.str.218 = private unnamed_addr constant [26 x i8] c"DHE-RSA-CHACHA20-POLY1305\00", align 1
@.str.219 = private unnamed_addr constant [42 x i8] c"TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.220 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-CHACHA20-POLY1305\00", align 1
@.str.221 = private unnamed_addr constant [44 x i8] c"TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.222 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-CHACHA20-POLY1305\00", align 1
@.str.223 = private unnamed_addr constant [46 x i8] c"TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"PSK-CHACHA20-POLY1305\00", align 1
@.str.225 = private unnamed_addr constant [38 x i8] c"TLS_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.226 = private unnamed_addr constant [28 x i8] c"ECDHE-PSK-CHACHA20-POLY1305\00", align 1
@.str.227 = private unnamed_addr constant [44 x i8] c"TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"DHE-PSK-CHACHA20-POLY1305\00", align 1
@.str.229 = private unnamed_addr constant [42 x i8] c"TLS_DHE_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"RSA-PSK-CHACHA20-POLY1305\00", align 1
@.str.231 = private unnamed_addr constant [42 x i8] c"TLS_RSA_PSK_WITH_CHACHA20_POLY1305_SHA256\00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"CAMELLIA128-SHA256\00", align 1
@.str.233 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.234 = private unnamed_addr constant [27 x i8] c"DHE-DSS-CAMELLIA128-SHA256\00", align 1
@.str.235 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.236 = private unnamed_addr constant [27 x i8] c"DHE-RSA-CAMELLIA128-SHA256\00", align 1
@.str.237 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.238 = private unnamed_addr constant [23 x i8] c"ADH-CAMELLIA128-SHA256\00", align 1
@.str.239 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.240 = private unnamed_addr constant [19 x i8] c"CAMELLIA256-SHA256\00", align 1
@.str.241 = private unnamed_addr constant [37 x i8] c"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.242 = private unnamed_addr constant [27 x i8] c"DHE-DSS-CAMELLIA256-SHA256\00", align 1
@.str.243 = private unnamed_addr constant [41 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.244 = private unnamed_addr constant [27 x i8] c"DHE-RSA-CAMELLIA256-SHA256\00", align 1
@.str.245 = private unnamed_addr constant [41 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"ADH-CAMELLIA256-SHA256\00", align 1
@.str.247 = private unnamed_addr constant [41 x i8] c"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"CAMELLIA256-SHA\00", align 1
@.str.249 = private unnamed_addr constant [34 x i8] c"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"DHE-DSS-CAMELLIA256-SHA\00", align 1
@.str.251 = private unnamed_addr constant [38 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.252 = private unnamed_addr constant [24 x i8] c"DHE-RSA-CAMELLIA256-SHA\00", align 1
@.str.253 = private unnamed_addr constant [38 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.254 = private unnamed_addr constant [20 x i8] c"ADH-CAMELLIA256-SHA\00", align 1
@.str.255 = private unnamed_addr constant [38 x i8] c"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA\00", align 1
@.str.256 = private unnamed_addr constant [16 x i8] c"CAMELLIA128-SHA\00", align 1
@.str.257 = private unnamed_addr constant [34 x i8] c"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.258 = private unnamed_addr constant [24 x i8] c"DHE-DSS-CAMELLIA128-SHA\00", align 1
@.str.259 = private unnamed_addr constant [38 x i8] c"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.260 = private unnamed_addr constant [24 x i8] c"DHE-RSA-CAMELLIA128-SHA\00", align 1
@.str.261 = private unnamed_addr constant [38 x i8] c"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"ADH-CAMELLIA128-SHA\00", align 1
@.str.263 = private unnamed_addr constant [38 x i8] c"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA\00", align 1
@.str.264 = private unnamed_addr constant [31 x i8] c"ECDHE-ECDSA-CAMELLIA128-SHA256\00", align 1
@.str.265 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.266 = private unnamed_addr constant [31 x i8] c"ECDHE-ECDSA-CAMELLIA256-SHA384\00", align 1
@.str.267 = private unnamed_addr constant [45 x i8] c"TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.268 = private unnamed_addr constant [29 x i8] c"ECDHE-RSA-CAMELLIA128-SHA256\00", align 1
@.str.269 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.270 = private unnamed_addr constant [29 x i8] c"ECDHE-RSA-CAMELLIA256-SHA384\00", align 1
@.str.271 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"PSK-CAMELLIA128-SHA256\00", align 1
@.str.273 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.274 = private unnamed_addr constant [23 x i8] c"PSK-CAMELLIA256-SHA384\00", align 1
@.str.275 = private unnamed_addr constant [37 x i8] c"TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.276 = private unnamed_addr constant [27 x i8] c"DHE-PSK-CAMELLIA128-SHA256\00", align 1
@.str.277 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.278 = private unnamed_addr constant [27 x i8] c"DHE-PSK-CAMELLIA256-SHA384\00", align 1
@.str.279 = private unnamed_addr constant [41 x i8] c"TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.280 = private unnamed_addr constant [27 x i8] c"RSA-PSK-CAMELLIA128-SHA256\00", align 1
@.str.281 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.282 = private unnamed_addr constant [27 x i8] c"RSA-PSK-CAMELLIA256-SHA384\00", align 1
@.str.283 = private unnamed_addr constant [41 x i8] c"TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.284 = private unnamed_addr constant [29 x i8] c"ECDHE-PSK-CAMELLIA128-SHA256\00", align 1
@.str.285 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256\00", align 1
@.str.286 = private unnamed_addr constant [29 x i8] c"ECDHE-PSK-CAMELLIA256-SHA384\00", align 1
@.str.287 = private unnamed_addr constant [43 x i8] c"TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384\00", align 1
@.str.288 = private unnamed_addr constant [23 x i8] c"GOST2001-GOST89-GOST89\00", align 1
@.str.289 = private unnamed_addr constant [36 x i8] c"TLS_GOSTR341001_WITH_28147_CNT_IMIT\00", align 1
@.str.290 = private unnamed_addr constant [21 x i8] c"GOST2001-NULL-GOST94\00", align 1
@.str.291 = private unnamed_addr constant [36 x i8] c"TLS_GOSTR341001_WITH_NULL_GOSTR3411\00", align 1
@.str.292 = private unnamed_addr constant [32 x i8] c"IANA-GOST2012-GOST8912-GOST8912\00", align 1
@.str.293 = private unnamed_addr constant [34 x i8] c"LEGACY-GOST2012-GOST8912-GOST8912\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"GOST2012-NULL-GOST12\00", align 1
@.str.295 = private unnamed_addr constant [35 x i8] c"GOST2012-KUZNYECHIK-KUZNYECHIKOMAC\00", align 1
@.str.296 = private unnamed_addr constant [25 x i8] c"GOST2012-MAGMA-MAGMAOMAC\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"IDEA-CBC-SHA\00", align 1
@.str.298 = private unnamed_addr constant [26 x i8] c"TLS_RSA_WITH_IDEA_CBC_SHA\00", align 1
@.str.299 = private unnamed_addr constant [9 x i8] c"SEED-SHA\00", align 1
@.str.300 = private unnamed_addr constant [26 x i8] c"TLS_RSA_WITH_SEED_CBC_SHA\00", align 1
@.str.301 = private unnamed_addr constant [17 x i8] c"DHE-DSS-SEED-SHA\00", align 1
@.str.302 = private unnamed_addr constant [30 x i8] c"TLS_DHE_DSS_WITH_SEED_CBC_SHA\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"DHE-RSA-SEED-SHA\00", align 1
@.str.304 = private unnamed_addr constant [30 x i8] c"TLS_DHE_RSA_WITH_SEED_CBC_SHA\00", align 1
@.str.305 = private unnamed_addr constant [13 x i8] c"ADH-SEED-SHA\00", align 1
@.str.306 = private unnamed_addr constant [30 x i8] c"TLS_DH_anon_WITH_SEED_CBC_SHA\00", align 1
@.str.307 = private unnamed_addr constant [19 x i8] c"ARIA128-GCM-SHA256\00", align 1
@.str.308 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"ARIA256-GCM-SHA384\00", align 1
@.str.310 = private unnamed_addr constant [33 x i8] c"TLS_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.311 = private unnamed_addr constant [27 x i8] c"DHE-RSA-ARIA128-GCM-SHA256\00", align 1
@.str.312 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.313 = private unnamed_addr constant [27 x i8] c"DHE-RSA-ARIA256-GCM-SHA384\00", align 1
@.str.314 = private unnamed_addr constant [37 x i8] c"TLS_DHE_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.315 = private unnamed_addr constant [27 x i8] c"DHE-DSS-ARIA128-GCM-SHA256\00", align 1
@.str.316 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.317 = private unnamed_addr constant [27 x i8] c"DHE-DSS-ARIA256-GCM-SHA384\00", align 1
@.str.318 = private unnamed_addr constant [37 x i8] c"TLS_DHE_DSS_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.319 = private unnamed_addr constant [31 x i8] c"ECDHE-ECDSA-ARIA128-GCM-SHA256\00", align 1
@.str.320 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.321 = private unnamed_addr constant [31 x i8] c"ECDHE-ECDSA-ARIA256-GCM-SHA384\00", align 1
@.str.322 = private unnamed_addr constant [41 x i8] c"TLS_ECDHE_ECDSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.323 = private unnamed_addr constant [25 x i8] c"ECDHE-ARIA128-GCM-SHA256\00", align 1
@.str.324 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.325 = private unnamed_addr constant [25 x i8] c"ECDHE-ARIA256-GCM-SHA384\00", align 1
@.str.326 = private unnamed_addr constant [39 x i8] c"TLS_ECDHE_RSA_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.327 = private unnamed_addr constant [23 x i8] c"PSK-ARIA128-GCM-SHA256\00", align 1
@.str.328 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.329 = private unnamed_addr constant [23 x i8] c"PSK-ARIA256-GCM-SHA384\00", align 1
@.str.330 = private unnamed_addr constant [33 x i8] c"TLS_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.331 = private unnamed_addr constant [27 x i8] c"DHE-PSK-ARIA128-GCM-SHA256\00", align 1
@.str.332 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.333 = private unnamed_addr constant [27 x i8] c"DHE-PSK-ARIA256-GCM-SHA384\00", align 1
@.str.334 = private unnamed_addr constant [37 x i8] c"TLS_DHE_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.335 = private unnamed_addr constant [27 x i8] c"RSA-PSK-ARIA128-GCM-SHA256\00", align 1
@.str.336 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_128_GCM_SHA256\00", align 1
@.str.337 = private unnamed_addr constant [27 x i8] c"RSA-PSK-ARIA256-GCM-SHA384\00", align 1
@.str.338 = private unnamed_addr constant [37 x i8] c"TLS_RSA_PSK_WITH_ARIA_256_GCM_SHA384\00", align 1
@.str.339 = private unnamed_addr constant [34 x i8] c"TLS_EMPTY_RENEGOTIATION_INFO_SCSV\00", align 1
@.str.340 = private unnamed_addr constant [18 x i8] c"TLS_FALLBACK_SCSV\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ssl_sort_cipher_list() local_unnamed_addr #0 {
entry:
  tail call void @qsort(i8* noundef bitcast ([5 x %struct.ssl_cipher_st]* @tls13_ciphers to i8*), i64 noundef 5, i64 noundef 80, i32 (i8*, i8*)* noundef nonnull @cipher_compare) #11
  tail call void @qsort(i8* noundef bitcast ([167 x %struct.ssl_cipher_st]* @ssl3_ciphers to i8*), i64 noundef 167, i64 noundef 80, i32 (i8*, i8*)* noundef nonnull @cipher_compare) #11
  tail call void @qsort(i8* noundef bitcast ([2 x %struct.ssl_cipher_st]* @ssl3_scsvs to i8*), i64 noundef 2, i64 noundef 80, i32 (i8*, i8*)* noundef nonnull @cipher_compare) #11
  ret void
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cipher_compare(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b) #2 {
entry:
  %id = getelementptr inbounds i8, i8* %a, i64 24
  %0 = bitcast i8* %id to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !4
  %id1 = getelementptr inbounds i8, i8* %b, i64 24
  %2 = bitcast i8* %id1 to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !4
  %cmp = icmp eq i32 %1, %3
  %cmp4 = icmp ult i32 %1, %3
  %cond = select i1 %cmp4, i32 -1, i32 1
  %retval.0 = select i1 %cmp, i32 0, i32 %cond
  ret i32 %retval.0
}

declare i32 @ssl3_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) #1

declare i32 @n_ssl3_mac(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i8* noundef, i32 noundef) #1

declare i32 @ssl3_setup_key_block(%struct.ssl_st* noundef) #1

declare i32 @ssl3_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare i32 @ssl3_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) #1

declare i64 @ssl3_final_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef) #1

declare i32 @ssl3_alert_code(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_undefined_function_1(%struct.ssl_st* noundef %ssl, i8* nocapture noundef readnone %r, i64 noundef %s, i8* nocapture noundef readnone %t, i64 noundef %u, i8* nocapture noundef readnone %v, i64 noundef %w, i32 noundef %x) #0 {
entry:
  %call = tail call i32 @ssl_undefined_function(%struct.ssl_st* noundef %ssl) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_set_handshake_header(%struct.ssl_st* nocapture readnone %s, %struct.wpacket_st* noundef %pkt, i32 noundef %htype) #0 {
entry:
  %cmp = icmp eq i32 %htype, 257
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %htype, i64 noundef 1) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 3) #11
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @tls_close_construct_packet(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_handshake_write(%struct.ssl_st* noundef %s) #0 {
entry:
  %call = tail call i32 @ssl3_do_write(%struct.ssl_st* noundef %s, i32 noundef 22) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @ssl3_default_timeout() local_unnamed_addr #3 {
entry:
  ret i64 7200
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ssl3_num_ciphers() local_unnamed_addr #3 {
entry:
  ret i32 167
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.ssl_cipher_st* @ssl3_get_cipher(i32 noundef %u) local_unnamed_addr #3 {
entry:
  %cmp = icmp ult i32 %u, 167
  %conv = zext i32 %u to i64
  %sub = sub nsw i64 166, %conv
  %arrayidx = getelementptr inbounds [167 x %struct.ssl_cipher_st], [167 x %struct.ssl_cipher_st]* @ssl3_ciphers, i64 0, i64 %sub
  %retval.0 = select i1 %cmp, %struct.ssl_cipher_st* %arrayidx, %struct.ssl_cipher_st* null
  ret %struct.ssl_cipher_st* %retval.0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ssl3_do_write(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_new(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_srp_ctx_init_intern(%struct.ssl_st* noundef %s) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl_clear = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_clear, align 8, !tbaa !24
  %call1 = tail call i32 %1(%struct.ssl_st* noundef %s) #11
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare i32 @ssl_srp_ctx_init_intern(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ssl3_free(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ssl3_cleanup_key_block(%struct.ssl_st* noundef nonnull %s) #11
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !26
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #11
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !26
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #11
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !28
  tail call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %2) #11
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !29
  tail call void @ssl_evp_md_free(%struct.evp_md_st* noundef %3) #11
  %ctype = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %4 = load i8*, i8** %ctype, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3358) #11
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %5 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !31
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %5) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #11
  %ciphers_raw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 20
  %6 = load i8*, i8** %ciphers_raw, align 8, !tbaa !32
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3360) #11
  %pms = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  %7 = load i8*, i8** %pms, align 8, !tbaa !33
  %pmslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  %8 = load i64, i64* %pmslen, align 8, !tbaa !34
  tail call void @CRYPTO_clear_free(i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3361) #11
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %9 = bitcast i16** %peer_sigalgs to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3362) #11
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %11 = bitcast i16** %peer_cert_sigalgs to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3363) #11
  tail call void @ssl3_free_digest_list(%struct.ssl_st* noundef nonnull %s) #11
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %13 = load i8*, i8** %alpn_selected, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3365) #11
  %alpn_proposed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 29
  %14 = load i8*, i8** %alpn_proposed, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3366) #11
  %call28 = tail call i32 @ssl_srp_ctx_free_intern(%struct.ssl_st* noundef nonnull %s) #11
  %15 = bitcast %struct.anon.2* %s3 to i8*
  %call30 = tail call i8* @memset(i8* noundef nonnull %15, i32 noundef 0, i64 noundef 1040) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @ssl3_cleanup_key_block(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ssl3_free_digest_list(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ssl_srp_ctx_free_intern(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_clear(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  tail call void @ssl3_cleanup_key_block(%struct.ssl_st* noundef %s) #11
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17
  %ctype = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %0 = load i8*, i8** %ctype, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3377) #11
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %1 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !31
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %1) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #11
  %ciphers_raw = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 20
  %2 = load i8*, i8** %ciphers_raw, align 8, !tbaa !32
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3379) #11
  %pms = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  %3 = load i8*, i8** %pms, align 8, !tbaa !33
  %pmslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  %4 = load i64, i64* %pmslen, align 8, !tbaa !34
  tail call void @CRYPTO_clear_free(i8* noundef %3, i64 noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3380) #11
  %peer_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 28
  %5 = bitcast i16** %peer_sigalgs to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3381) #11
  %peer_cert_sigalgs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 29
  %7 = bitcast i16** %peer_cert_sigalgs to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3382) #11
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %9) #11
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !26
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #11
  tail call void @ssl3_free_digest_list(%struct.ssl_st* noundef %s) #11
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %11 = load i8*, i8** %alpn_selected, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3389) #11
  %alpn_proposed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 29
  %12 = load i8*, i8** %alpn_proposed, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3390) #11
  %13 = bitcast %struct.anon.2* %s3 to i8*
  %call20 = tail call i8* @memset(i8* noundef nonnull %13, i32 noundef 0, i64 noundef 1040) #11
  %call21 = tail call i32 @ssl_free_wbio_buffer(%struct.ssl_st* noundef %s) #11
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 768, i32* %version, align 8, !tbaa !39
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %14 = load i8*, i8** %npn, align 8, !tbaa !40
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3401) #11
  store i8* null, i8** %npn, align 8, !tbaa !40
  %npn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  store i64 0, i64* %npn_len, align 8, !tbaa !41
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ssl_free_wbio_buffer(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @ssl3_ctrl(%struct.ssl_st* noundef %s, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %sw.epilog [
    i32 111, label %sw.bb346
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 12, label %sw.bb6
    i32 13, label %sw.bb8
    i32 3, label %sw.bb10
    i32 6, label %sw.bb18
    i32 118, label %sw.bb20
    i32 4, label %sw.bb22
    i32 55, label %sw.bb30
    i32 57, label %sw.bb57
    i32 127, label %sw.bb59
    i32 65, label %sw.bb61
    i32 66, label %sw.bb65
    i32 67, label %sw.bb67
    i32 68, label %sw.bb71
    i32 69, label %sw.bb74
    i32 70, label %sw.bb78
    i32 71, label %sw.bb96
    i32 88, label %sw.bb106
    i32 89, label %sw.bb113
    i32 115, label %sw.bb121
    i32 116, label %sw.bb123
    i32 117, label %sw.bb127
    i32 90, label %sw.bb159
    i32 91, label %sw.bb185
    i32 92, label %sw.bb192
    i32 93, label %sw.bb200
    i32 134, label %sw.bb211
    i32 97, label %sw.bb237
    i32 98, label %sw.bb241
    i32 101, label %sw.bb245
    i32 102, label %sw.bb249
    i32 103, label %sw.bb253
    i32 104, label %sw.bb270
    i32 105, label %sw.bb278
    i32 106, label %sw.bb282
    i32 107, label %sw.bb287
    i32 108, label %sw.bb292
    i32 132, label %sw.bb302
    i32 109, label %sw.bb313
    i32 133, label %sw.bb328
  ]

sw.bb:                                            ; preds = %entry
  %num_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 18
  %0 = load i32, i32* %num_renegotiations, align 4, !tbaa !42
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %num_renegotiations3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 18
  %1 = load i32, i32* %num_renegotiations3, align 4, !tbaa !42
  store i32 0, i32* %num_renegotiations3, align 4, !tbaa !42
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %total_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 17
  %2 = load i32, i32* %total_renegotiations, align 8, !tbaa !43
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %3 = load i64, i64* %flags, align 8, !tbaa !44
  %conv = trunc i64 %3 to i32
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %cmp = icmp eq i8* %parg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb10
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3443, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup359

if.end:                                           ; preds = %sw.bb10
  %4 = bitcast i8* %parg to %struct.dh_st*
  %call = tail call %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef nonnull %4) #11
  %cmp12 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3448, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup359

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @SSL_set0_tmp_dh_pkey(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef nonnull %call) #11
  %conv17 = sext i32 %call16 to i64
  br label %cleanup359

sw.bb18:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3456, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #11
  br label %cleanup359

sw.bb20:                                          ; preds = %entry
  %conv21 = trunc i64 %larg to i32
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !45
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 3
  store i32 %conv21, i32* %dh_tmp_auto, align 8, !tbaa !46
  br label %cleanup359

sw.bb22:                                          ; preds = %entry
  %cmp23 = icmp eq i8* %parg, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb22
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3467, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup359

if.end26:                                         ; preds = %sw.bb22
  %supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 16
  %supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 15
  %call28 = tail call i32 @ssl_set_tmp_ecdh_groups(i16** noundef nonnull %supportedgroups, i64* noundef nonnull %supportedgroups_len, i8* noundef nonnull %parg) #11
  %conv29 = sext i32 %call28 to i64
  br label %cleanup359

sw.bb30:                                          ; preds = %entry
  %cmp31 = icmp eq i64 %larg, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %sw.bb30
  %hostname = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 3
  %6 = load i8*, i8** %hostname, align 8, !tbaa !49
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3487) #11
  store i8* null, i8** %hostname, align 8, !tbaa !49
  %cmp37 = icmp eq i8* %parg, null
  br i1 %cmp37, label %sw.epilog, label %if.end40

if.end40:                                         ; preds = %if.then33
  %call41 = tail call i64 @strlen(i8* noundef nonnull %parg) #13
  %7 = add i64 %call41, -256
  %8 = icmp ult i64 %7, -255
  br i1 %8, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end40
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3495, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 319, i8* noundef null) #11
  br label %cleanup359

if.end47:                                         ; preds = %if.end40
  %call48 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %parg, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3498) #11
  store i8* %call48, i8** %hostname, align 8, !tbaa !49
  %cmp51 = icmp eq i8* %call48, null
  br i1 %cmp51, label %if.then53, label %sw.epilog

if.then53:                                        ; preds = %if.end47
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3499, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup359

if.else:                                          ; preds = %sw.bb30
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3503, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ssl3_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 320, i8* noundef null) #11
  br label %cleanup359

sw.bb57:                                          ; preds = %entry
  %debug_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 2
  store i8* %parg, i8** %debug_arg, align 8, !tbaa !50
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %9 = load i32, i32* %status_type, align 8, !tbaa !51
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  %conv62 = trunc i64 %larg to i32
  %status_type64 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  store i32 %conv62, i32* %status_type64, align 8, !tbaa !51
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %exts = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 1
  %10 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %exts, align 8, !tbaa !52
  %11 = bitcast i8* %parg to %struct.stack_st_X509_EXTENSION**
  store %struct.stack_st_X509_EXTENSION* %10, %struct.stack_st_X509_EXTENSION** %11, align 8, !tbaa !53
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %exts70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 1
  %12 = bitcast %struct.stack_st_X509_EXTENSION** %exts70 to i8**
  store i8* %parg, i8** %12, align 8, !tbaa !52
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %ids = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 0
  %13 = load %struct.stack_st_OCSP_RESPID*, %struct.stack_st_OCSP_RESPID** %ids, align 8, !tbaa !54
  %14 = bitcast i8* %parg to %struct.stack_st_OCSP_RESPID**
  store %struct.stack_st_OCSP_RESPID* %13, %struct.stack_st_OCSP_RESPID** %14, align 8, !tbaa !53
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  %ids77 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 0
  %15 = bitcast %struct.stack_st_OCSP_RESPID** %ids77 to i8**
  store i8* %parg, i8** %15, align 8, !tbaa !54
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %16 = load i8*, i8** %resp, align 8, !tbaa !55
  %17 = bitcast i8* %parg to i8**
  store i8* %16, i8** %17, align 8, !tbaa !53
  %resp_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  %18 = load i64, i64* %resp_len, align 8, !tbaa !56
  %19 = icmp slt i64 %18, 1
  %spec.select = select i1 %19, i64 -1, i64 %18
  br label %cleanup359

sw.bb96:                                          ; preds = %entry
  %resp99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %20 = load i8*, i8** %resp99, align 8, !tbaa !55
  tail call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3549) #11
  store i8* %parg, i8** %resp99, align 8, !tbaa !55
  %resp_len105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  store i64 %larg, i64* %resp_len105, align 8, !tbaa !56
  br label %sw.epilog

sw.bb106:                                         ; preds = %entry
  %tobool.not = icmp eq i64 %larg, 0
  %21 = bitcast i8* %parg to %struct.stack_st_X509*
  br i1 %tobool.not, label %if.else110, label %if.then107

if.then107:                                       ; preds = %sw.bb106
  %call108 = tail call i32 @ssl_cert_set1_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.stack_st_X509* noundef %21) #11
  %conv109 = sext i32 %call108 to i64
  br label %cleanup359

if.else110:                                       ; preds = %sw.bb106
  %call111 = tail call i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.stack_st_X509* noundef %21) #11
  %conv112 = sext i32 %call111 to i64
  br label %cleanup359

sw.bb113:                                         ; preds = %entry
  %tobool114.not = icmp eq i64 %larg, 0
  %22 = bitcast i8* %parg to %struct.x509_st*
  br i1 %tobool114.not, label %if.else118, label %if.then115

if.then115:                                       ; preds = %sw.bb113
  %call116 = tail call i32 @ssl_cert_add1_chain_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef %22) #11
  %conv117 = sext i32 %call116 to i64
  br label %cleanup359

if.else118:                                       ; preds = %sw.bb113
  %call119 = tail call i32 @ssl_cert_add0_chain_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef %22) #11
  %conv120 = sext i32 %call119 to i64
  br label %cleanup359

sw.bb121:                                         ; preds = %entry
  %cert122 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %23 = load %struct.cert_st*, %struct.cert_st** %cert122, align 8, !tbaa !45
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %23, i64 0, i32 0
  %24 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !57
  %chain = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %24, i64 0, i32 2
  %25 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !58
  %26 = bitcast i8* %parg to %struct.stack_st_X509**
  store %struct.stack_st_X509* %25, %struct.stack_st_X509** %26, align 8, !tbaa !53
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry
  %cert124 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %27 = load %struct.cert_st*, %struct.cert_st** %cert124, align 8, !tbaa !45
  %28 = bitcast i8* %parg to %struct.x509_st*
  %call125 = tail call i32 @ssl_cert_select_current(%struct.cert_st* noundef %27, %struct.x509_st* noundef %28) #11
  %conv126 = sext i32 %call125 to i64
  br label %cleanup359

sw.bb127:                                         ; preds = %entry
  %cmp128 = icmp eq i64 %larg, 3
  br i1 %cmp128, label %if.then130, label %if.end155

if.then130:                                       ; preds = %sw.bb127
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %29 = load i32, i32* %server, align 8, !tbaa !60
  %tobool131.not = icmp eq i32 %29, 0
  br i1 %tobool131.not, label %cleanup359, label %if.end133

if.end133:                                        ; preds = %if.then130
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %30 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !61
  %cmp135 = icmp eq %struct.ssl_cipher_st* %30, null
  br i1 %cmp135, label %cleanup359, label %if.end138

if.end138:                                        ; preds = %if.end133
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %30, i64 0, i32 5
  %31 = load i32, i32* %algorithm_auth, align 8, !tbaa !62
  %and = and i32 %31, 68
  %tobool139.not = icmp eq i32 %and, 0
  br i1 %tobool139.not, label %if.end141, label %cleanup359

if.end141:                                        ; preds = %if.end138
  %cert144 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %32 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert144, align 8, !tbaa !63
  %cmp145 = icmp eq %struct.cert_pkey_st* %32, null
  br i1 %cmp145, label %cleanup359, label %if.end148

if.end148:                                        ; preds = %if.end141
  %cert152 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %33 = load %struct.cert_st*, %struct.cert_st** %cert152, align 8, !tbaa !45
  %key153 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %33, i64 0, i32 0
  store %struct.cert_pkey_st* %32, %struct.cert_pkey_st** %key153, align 8, !tbaa !57
  br label %cleanup359

if.end155:                                        ; preds = %sw.bb127
  %cert156 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %34 = load %struct.cert_st*, %struct.cert_st** %cert156, align 8, !tbaa !45
  %call157 = tail call i32 @ssl_cert_set_current(%struct.cert_st* noundef %34, i64 noundef %larg) #11
  %conv158 = sext i32 %call157 to i64
  br label %cleanup359

sw.bb159:                                         ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %35 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !64
  %tobool160.not = icmp eq %struct.ssl_session_st* %35, null
  br i1 %tobool160.not, label %cleanup359, label %if.end162

if.end162:                                        ; preds = %sw.bb159
  %peer_supportedgroups = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 18
  %36 = load i16*, i16** %peer_supportedgroups, align 8, !tbaa !65
  %peer_supportedgroups_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 17
  %37 = load i64, i64* %peer_supportedgroups_len, align 8, !tbaa !66
  %tobool165.not = icmp eq i8* %parg, null
  br i1 %tobool165.not, label %if.end180, label %if.then166

if.then166:                                       ; preds = %if.end162
  %38 = bitcast i8* %parg to i32*
  %cmp167533.not = icmp eq i64 %37, 0
  br i1 %cmp167533.not, label %if.end180, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then166
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end179
  %i.0534 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end179 ]
  %39 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds i16, i16* %36, i64 %i.0534
  %40 = load i16, i16* %arrayidx, align 2, !tbaa !68
  %call169 = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %39, i16 noundef zeroext %40) #11
  %cmp170.not = icmp eq %struct.tls_group_info_st* %call169, null
  br i1 %cmp170.not, label %if.else175, label %if.then172

if.then172:                                       ; preds = %for.body
  %group_id = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call169, i64 0, i32 4
  %41 = load i16, i16* %group_id, align 4, !tbaa !69
  %call173 = tail call i32 @tls1_group_id2nid(i16 noundef zeroext %41, i32 noundef 1) #11
  br label %if.end179

if.else175:                                       ; preds = %for.body
  %42 = load i16, i16* %arrayidx, align 2, !tbaa !68
  %conv177 = zext i16 %42 to i32
  %or = or i32 %conv177, 16777216
  br label %if.end179

if.end179:                                        ; preds = %if.else175, %if.then172
  %call173.sink = phi i32 [ %or, %if.else175 ], [ %call173, %if.then172 ]
  %43 = getelementptr inbounds i32, i32* %38, i64 %i.0534
  store i32 %call173.sink, i32* %43, align 4
  %inc = add nuw i64 %i.0534, 1
  %exitcond.not = icmp eq i64 %inc, %37
  br i1 %exitcond.not, label %if.end180, label %for.body, !llvm.loop !71

if.end180:                                        ; preds = %if.end179, %if.then166, %if.end162
  %sext = shl i64 %37, 32
  %conv182 = ashr exact i64 %sext, 32
  br label %cleanup359

sw.bb185:                                         ; preds = %entry
  %supportedgroups187 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 16
  %supportedgroups_len189 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 15
  %44 = bitcast i8* %parg to i32*
  %call190 = tail call i32 @tls1_set_groups(i16** noundef nonnull %supportedgroups187, i64* noundef nonnull %supportedgroups_len189, i32* noundef %44, i64 noundef %larg) #11
  %conv191 = sext i32 %call190 to i64
  br label %cleanup359

sw.bb192:                                         ; preds = %entry
  %ctx193 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %45 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx193, align 8, !tbaa !67
  %supportedgroups195 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 16
  %supportedgroups_len197 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 15
  %call198 = tail call i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef %45, i16** noundef nonnull %supportedgroups195, i64* noundef nonnull %supportedgroups_len197, i8* noundef %parg) #11
  %conv199 = sext i32 %call198 to i64
  br label %cleanup359

sw.bb200:                                         ; preds = %entry
  %conv201 = trunc i64 %larg to i32
  %call202 = tail call zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef %s, i32 noundef %conv201) #11
  %cmp203.not = icmp eq i64 %larg, -1
  br i1 %cmp203.not, label %if.end208, label %if.then205

if.then205:                                       ; preds = %sw.bb200
  %call206 = tail call i32 @tls1_group_id2nid(i16 noundef zeroext %call202, i32 noundef 1) #11
  %conv207 = sext i32 %call206 to i64
  br label %cleanup359

if.end208:                                        ; preds = %sw.bb200
  %conv209 = zext i16 %call202 to i64
  br label %cleanup359

sw.bb211:                                         ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %46 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %46, i64 0, i32 25
  %47 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %47, i64 0, i32 12
  %48 = load i32, i32* %enc_flags, align 8, !tbaa !74
  %and213 = and i32 %48, 8
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %land.lhs.true, label %if.else231

land.lhs.true:                                    ; preds = %sw.bb211
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %46, i64 0, i32 0
  %49 = load i32, i32* %version, align 8, !tbaa !76
  %cmp216 = icmp slt i32 %49, 772
  %cmp221.not = icmp eq i32 %49, 65536
  %or.cond531 = or i1 %cmp216, %cmp221.not
  br i1 %or.cond531, label %if.else231, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %land.lhs.true
  %did_kex = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 33
  %50 = load i8, i8* %did_kex, align 1, !tbaa !77
  %tobool226.not = icmp eq i8 %50, 0
  br i1 %tobool226.not, label %if.else231, label %if.then227

if.then227:                                       ; preds = %land.lhs.true223
  %group_id229 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 34
  %51 = load i16, i16* %group_id229, align 2, !tbaa !78
  %conv230 = zext i16 %51 to i32
  br label %if.end233

if.else231:                                       ; preds = %land.lhs.true223, %land.lhs.true, %sw.bb211
  %session232 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %52 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session232, align 8, !tbaa !64
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %52, i64 0, i32 22
  %53 = load i32, i32* %kex_group, align 8, !tbaa !79
  br label %if.end233

if.end233:                                        ; preds = %if.else231, %if.then227
  %id212.0 = phi i32 [ %53, %if.else231 ], [ %conv230, %if.then227 ]
  %conv234 = trunc i32 %id212.0 to i16
  %call235 = tail call i32 @tls1_group_id2nid(i16 noundef zeroext %conv234, i32 noundef 1) #11
  br label %sw.epilog

sw.bb237:                                         ; preds = %entry
  %cert238 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %54 = load %struct.cert_st*, %struct.cert_st** %cert238, align 8, !tbaa !45
  %55 = bitcast i8* %parg to i32*
  %call239 = tail call i32 @tls1_set_sigalgs(%struct.cert_st* noundef %54, i32* noundef %55, i64 noundef %larg, i32 noundef 0) #11
  %conv240 = sext i32 %call239 to i64
  br label %cleanup359

sw.bb241:                                         ; preds = %entry
  %cert242 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %56 = load %struct.cert_st*, %struct.cert_st** %cert242, align 8, !tbaa !45
  %call243 = tail call i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef %56, i8* noundef %parg, i32 noundef 0) #11
  %conv244 = sext i32 %call243 to i64
  br label %cleanup359

sw.bb245:                                         ; preds = %entry
  %cert246 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %57 = load %struct.cert_st*, %struct.cert_st** %cert246, align 8, !tbaa !45
  %58 = bitcast i8* %parg to i32*
  %call247 = tail call i32 @tls1_set_sigalgs(%struct.cert_st* noundef %57, i32* noundef %58, i64 noundef %larg, i32 noundef 1) #11
  %conv248 = sext i32 %call247 to i64
  br label %cleanup359

sw.bb249:                                         ; preds = %entry
  %cert250 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %59 = load %struct.cert_st*, %struct.cert_st** %cert250, align 8, !tbaa !45
  %call251 = tail call i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef %59, i8* noundef %parg, i32 noundef 1) #11
  %conv252 = sext i32 %call251 to i64
  br label %cleanup359

sw.bb253:                                         ; preds = %entry
  %60 = bitcast i8* %parg to i8**
  %server254 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %61 = load i32, i32* %server254, align 8, !tbaa !60
  %tobool255.not = icmp eq i32 %61, 0
  br i1 %tobool255.not, label %lor.lhs.false256, label %cleanup359

lor.lhs.false256:                                 ; preds = %sw.bb253
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %62 = load i32, i32* %cert_req, align 8, !tbaa !82
  %tobool259.not = icmp eq i32 %62, 0
  br i1 %tobool259.not, label %cleanup359, label %if.end261

if.end261:                                        ; preds = %lor.lhs.false256
  %tobool262.not = icmp eq i8* %parg, null
  br i1 %tobool262.not, label %if.end266, label %if.then263

if.then263:                                       ; preds = %if.end261
  %ctype = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %63 = load i8*, i8** %ctype, align 8, !tbaa !30
  store i8* %63, i8** %60, align 8, !tbaa !53
  br label %if.end266

if.end266:                                        ; preds = %if.then263, %if.end261
  %ctype_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 10
  %64 = load i64, i64* %ctype_len, align 8, !tbaa !83
  br label %cleanup359

sw.bb270:                                         ; preds = %entry
  %server271 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %65 = load i32, i32* %server271, align 8, !tbaa !60
  %tobool272.not = icmp eq i32 %65, 0
  br i1 %tobool272.not, label %cleanup359, label %if.end274

if.end274:                                        ; preds = %sw.bb270
  %cert275 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %66 = load %struct.cert_st*, %struct.cert_st** %cert275, align 8, !tbaa !45
  %call276 = tail call fastcc i32 @ssl3_set_req_cert_type(%struct.cert_st* noundef %66, i8* noundef %parg, i64 noundef %larg) #12
  %67 = zext i32 %call276 to i64
  br label %cleanup359

sw.bb278:                                         ; preds = %entry
  %conv279 = trunc i64 %larg to i32
  %call280 = tail call i32 @ssl_build_cert_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, i32 noundef %conv279) #11
  %conv281 = sext i32 %call280 to i64
  br label %cleanup359

sw.bb282:                                         ; preds = %entry
  %cert283 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %68 = load %struct.cert_st*, %struct.cert_st** %cert283, align 8, !tbaa !45
  %69 = bitcast i8* %parg to %struct.x509_store_st*
  %conv284 = trunc i64 %larg to i32
  %call285 = tail call i32 @ssl_cert_set_cert_store(%struct.cert_st* noundef %68, %struct.x509_store_st* noundef %69, i32 noundef 0, i32 noundef %conv284) #11
  %conv286 = sext i32 %call285 to i64
  br label %cleanup359

sw.bb287:                                         ; preds = %entry
  %cert288 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %70 = load %struct.cert_st*, %struct.cert_st** %cert288, align 8, !tbaa !45
  %71 = bitcast i8* %parg to %struct.x509_store_st*
  %conv289 = trunc i64 %larg to i32
  %call290 = tail call i32 @ssl_cert_set_cert_store(%struct.cert_st* noundef %70, %struct.x509_store_st* noundef %71, i32 noundef 1, i32 noundef %conv289) #11
  %conv291 = sext i32 %call290 to i64
  br label %cleanup359

sw.bb292:                                         ; preds = %entry
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  %72 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !84
  %cmp295 = icmp eq %struct.sigalg_lookup_st* %72, null
  br i1 %cmp295, label %cleanup359, label %if.end298

if.end298:                                        ; preds = %sw.bb292
  %hash = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %72, i64 0, i32 2
  %73 = load i32, i32* %hash, align 4, !tbaa !85
  %74 = bitcast i8* %parg to i32*
  store i32 %73, i32* %74, align 4, !tbaa !87
  br label %cleanup359

sw.bb302:                                         ; preds = %entry
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  %75 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !88
  %cmp305 = icmp eq %struct.sigalg_lookup_st* %75, null
  br i1 %cmp305, label %cleanup359, label %if.end308

if.end308:                                        ; preds = %sw.bb302
  %hash312 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %75, i64 0, i32 2
  %76 = load i32, i32* %hash312, align 4, !tbaa !85
  %77 = bitcast i8* %parg to i32*
  store i32 %76, i32* %77, align 4, !tbaa !87
  br label %cleanup359

sw.bb313:                                         ; preds = %entry
  %session314 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %78 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session314, align 8, !tbaa !64
  %cmp315 = icmp eq %struct.ssl_session_st* %78, null
  br i1 %cmp315, label %cleanup359, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %sw.bb313
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %79 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !26
  %cmp319 = icmp eq %struct.evp_pkey_st* %79, null
  br i1 %cmp319, label %cleanup359, label %if.else322

if.else322:                                       ; preds = %lor.lhs.false317
  %call325 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %79) #11
  %80 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !26
  %81 = bitcast i8* %parg to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %80, %struct.evp_pkey_st** %81, align 8, !tbaa !53
  br label %cleanup359

sw.bb328:                                         ; preds = %entry
  %session329 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %82 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session329, align 8, !tbaa !64
  %cmp330 = icmp eq %struct.ssl_session_st* %82, null
  br i1 %cmp330, label %cleanup359, label %lor.lhs.false332

lor.lhs.false332:                                 ; preds = %sw.bb328
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %83 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  %cmp335 = icmp eq %struct.evp_pkey_st* %83, null
  br i1 %cmp335, label %cleanup359, label %if.else338

if.else338:                                       ; preds = %lor.lhs.false332
  %call342 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %83) #11
  %84 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !27
  %85 = bitcast i8* %parg to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %84, %struct.evp_pkey_st** %85, align 8, !tbaa !53
  br label %cleanup359

sw.bb346:                                         ; preds = %entry
  %peer_ecpointformats = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 14
  %86 = load i8*, i8** %peer_ecpointformats, align 8, !tbaa !89
  %cmp348 = icmp eq i8* %86, null
  br i1 %cmp348, label %cleanup359, label %if.end351

if.end351:                                        ; preds = %sw.bb346
  %87 = bitcast i8* %parg to i8**
  store i8* %86, i8** %87, align 8, !tbaa !53
  %peer_ecpointformats_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 13
  %88 = load i64, i64* %peer_ecpointformats_len, align 8, !tbaa !90
  %sext530 = shl i64 %88, 32
  %conv356 = ashr exact i64 %sext530, 32
  br label %cleanup359

sw.epilog:                                        ; preds = %if.then33, %if.end47, %entry, %if.end233, %sw.bb121, %sw.bb96, %sw.bb74, %sw.bb71, %sw.bb67, %sw.bb65, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb8, %sw.bb6, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ 0, %entry ], [ %call235, %if.end233 ], [ 1, %sw.bb121 ], [ 1, %sw.bb96 ], [ 1, %sw.bb74 ], [ 1, %sw.bb71 ], [ 1, %sw.bb67 ], [ 1, %sw.bb65 ], [ 1, %sw.bb61 ], [ %9, %sw.bb59 ], [ 1, %sw.bb57 ], [ %conv, %sw.bb8 ], [ %2, %sw.bb6 ], [ %1, %sw.bb1 ], [ %0, %sw.bb ], [ 1, %if.end47 ], [ 1, %if.then33 ]
  %conv358 = sext i32 %ret.0 to i64
  br label %cleanup359

cleanup359:                                       ; preds = %if.then53, %if.then46, %sw.bb78, %if.end351, %sw.bb346, %sw.bb328, %lor.lhs.false332, %sw.bb313, %lor.lhs.false317, %sw.bb302, %sw.bb292, %sw.bb270, %if.end266, %lor.lhs.false256, %sw.bb253, %if.then205, %if.end208, %if.end180, %sw.bb159, %if.end148, %if.then130, %if.end133, %if.end138, %if.end141, %if.then, %if.then14, %if.end15, %sw.epilog, %if.else338, %if.else322, %if.end308, %if.end298, %sw.bb287, %sw.bb282, %sw.bb278, %if.end274, %sw.bb249, %sw.bb245, %sw.bb241, %sw.bb237, %sw.bb192, %sw.bb185, %if.end155, %sw.bb123, %if.else118, %if.then115, %if.else110, %if.then107, %if.else, %if.end26, %if.then25, %sw.bb20, %sw.bb18
  %retval.7 = phi i64 [ %conv358, %sw.epilog ], [ 1, %if.else338 ], [ 1, %if.else322 ], [ 1, %if.end308 ], [ 1, %if.end298 ], [ %conv291, %sw.bb287 ], [ %conv286, %sw.bb282 ], [ %conv281, %sw.bb278 ], [ %67, %if.end274 ], [ %conv252, %sw.bb249 ], [ %conv248, %sw.bb245 ], [ %conv244, %sw.bb241 ], [ %conv240, %sw.bb237 ], [ %conv199, %sw.bb192 ], [ %conv191, %sw.bb185 ], [ %conv158, %if.end155 ], [ %conv126, %sw.bb123 ], [ %conv117, %if.then115 ], [ %conv120, %if.else118 ], [ %conv109, %if.then107 ], [ %conv112, %if.else110 ], [ 0, %if.else ], [ 0, %if.then25 ], [ %conv29, %if.end26 ], [ 1, %sw.bb20 ], [ 0, %sw.bb18 ], [ 0, %if.then ], [ 0, %if.then14 ], [ %conv17, %if.end15 ], [ 1, %if.end148 ], [ 0, %if.then130 ], [ 0, %if.end133 ], [ 2, %if.end138 ], [ 0, %if.end141 ], [ %conv182, %if.end180 ], [ 0, %sw.bb159 ], [ %conv207, %if.then205 ], [ %conv209, %if.end208 ], [ %64, %if.end266 ], [ 0, %lor.lhs.false256 ], [ 0, %sw.bb253 ], [ 0, %sw.bb270 ], [ 0, %sw.bb292 ], [ 0, %sw.bb302 ], [ 0, %lor.lhs.false317 ], [ 0, %sw.bb313 ], [ 0, %lor.lhs.false332 ], [ 0, %sw.bb328 ], [ %conv356, %if.end351 ], [ 0, %sw.bb346 ], [ %spec.select, %sw.bb78 ], [ 0, %if.then46 ], [ 0, %if.then53 ]
  ret i64 %retval.7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef) local_unnamed_addr #1

declare i32 @SSL_set0_tmp_dh_pkey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

declare i32 @ssl_set_tmp_ecdh_groups(i16** noundef, i64* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_cert_set1_chain(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare i32 @ssl_cert_add1_chain_cert(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ssl_cert_add0_chain_cert(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ssl_cert_select_current(%struct.cert_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i32 @ssl_cert_set_current(%struct.cert_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @tls1_group_id2nid(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare i32 @tls1_set_groups(i16** noundef, i64* noundef, i32* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef, i16** noundef, i64* noundef, i8* noundef) local_unnamed_addr #1

declare zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @tls1_set_sigalgs(%struct.cert_st* noundef, i32* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl3_set_req_cert_type(%struct.cert_st* nocapture noundef %c, i8* noundef %p, i64 noundef %len) unnamed_addr #0 {
entry:
  %ctype = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 6
  %0 = load i8*, i8** %ctype, align 8, !tbaa !91
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4357) #11
  store i8* null, i8** %ctype, align 8, !tbaa !91
  %ctype_len = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 7
  store i64 0, i64* %ctype_len, align 8, !tbaa !92
  %cmp = icmp eq i8* %p, null
  %cmp2 = icmp eq i64 %len, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp ugt i64 %len, 255
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %p, i64 noundef %len, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4364) #11
  store i8* %call, i8** %ctype, align 8, !tbaa !91
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end5
  store i64 %len, i64* %ctype_len, align 8, !tbaa !92
  br label %return

return:                                           ; preds = %if.end5, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

declare i32 @ssl_build_cert_chain(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_cert_set_cert_store(%struct.cert_st* noundef, %struct.x509_store_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @ssl3_callback_ctrl(%struct.ssl_st* nocapture noundef %s, i32 noundef %cmd, void ()* noundef %fp) local_unnamed_addr #7 {
entry:
  switch i32 %cmd, label %sw.epilog [
    i32 6, label %sw.bb
    i32 56, label %sw.bb1
    i32 79, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !45
  %dh_tmp_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 2
  %1 = bitcast %struct.dh_st* (%struct.ssl_st*, i32, i32)** %dh_tmp_cb to void ()**
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %debug_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 1
  %2 = bitcast void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)** %debug_cb to void ()**
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %not_resumable_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 107
  %3 = bitcast i32 (%struct.ssl_st*, i32)** %not_resumable_session_cb to void ()**
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb1, %sw.bb2
  %.sink = phi void ()** [ %3, %sw.bb2 ], [ %2, %sw.bb1 ], [ %1, %sw.bb ]
  store void ()* %fp, void ()** %.sink, align 8, !tbaa !53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %ret.0 = phi i64 [ 0, %entry ], [ 1, %sw.epilog.sink.split ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %return [
    i32 3, label %sw.bb
    i32 6, label %sw.bb5
    i32 118, label %sw.bb6
    i32 4, label %sw.bb8
    i32 54, label %sw.bb16
    i32 59, label %sw.bb18
    i32 58, label %sw.bb18
    i32 127, label %sw.bb61
    i32 65, label %sw.bb64
    i32 64, label %sw.bb68
    i32 129, label %sw.bb70
    i32 128, label %sw.bb73
    i32 79, label %sw.bb75
    i32 81, label %sw.bb98
    i32 78, label %sw.bb114
    i32 80, label %sw.bb119
    i32 91, label %sw.bb122
    i32 92, label %sw.bb129
    i32 97, label %sw.bb136
    i32 98, label %sw.bb140
    i32 101, label %sw.bb144
    i32 102, label %sw.bb148
    i32 104, label %sw.bb152
    i32 105, label %sw.bb156
    i32 106, label %sw.bb160
    i32 107, label %sw.bb165
    i32 14, label %sw.bb170
    i32 82, label %sw.bb187
    i32 83, label %sw.bb198
    i32 88, label %sw.bb203
    i32 89, label %sw.bb211
    i32 115, label %sw.bb219
    i32 116, label %sw.bb223
    i32 117, label %sw.bb227
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i8* %parg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3766, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #11
  br label %return

if.end:                                           ; preds = %sw.bb
  %0 = bitcast i8* %parg to %struct.dh_st*
  %call = tail call %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef nonnull %0) #11
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3771, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef nonnull %call) #11
  %conv = sext i32 %call4 to i64
  br label %return

sw.bb5:                                           ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3778, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #11
  br label %return

sw.bb6:                                           ; preds = %entry
  %conv7 = trunc i64 %larg to i32
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !93
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 3
  store i32 %conv7, i32* %dh_tmp_auto, align 8, !tbaa !46
  br label %return

sw.bb8:                                           ; preds = %entry
  %cmp9 = icmp eq i8* %parg, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb8
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3789, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #11
  br label %return

if.end12:                                         ; preds = %sw.bb8
  %supportedgroups = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 13
  %supportedgroups_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 12
  %call14 = tail call i32 @ssl_set_tmp_ecdh_groups(i16** noundef nonnull %supportedgroups, i64* noundef nonnull %supportedgroups_len, i8* noundef nonnull %parg) #11
  %conv15 = sext i32 %call14 to i64
  br label %return

sw.bb16:                                          ; preds = %entry
  %servername_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 1
  store i8* %parg, i8** %servername_arg, align 8, !tbaa !98
  br label %return

sw.bb18:                                          ; preds = %entry, %entry
  %cmp19 = icmp eq i8* %parg, null
  br i1 %cmp19, label %return, label %if.end22

if.end22:                                         ; preds = %sw.bb18
  %cmp23.not = icmp eq i64 %larg, 80
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3810, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 325, i8* noundef null) #11
  br label %return

if.end26:                                         ; preds = %if.end22
  %cmp27 = icmp eq i32 %cmd, 59
  %arraydecay = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 2, i64 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  %call31 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %parg, i64 noundef 16) #11
  %secure = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 3
  %2 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !99
  %arraydecay33 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %2, i64 0, i32 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %parg, i64 16
  %call34 = tail call i8* @memcpy(i8* noundef %arraydecay33, i8* noundef nonnull %add.ptr, i64 noundef 32) #11
  %3 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !99
  %arraydecay37 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %3, i64 0, i32 1, i64 0
  %add.ptr39 = getelementptr inbounds i8, i8* %parg, i64 48
  %call40 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay37, i8* noundef nonnull %add.ptr39, i64 noundef 32) #11
  br label %return

if.else:                                          ; preds = %if.end26
  %call44 = tail call i8* @memcpy(i8* noundef nonnull %parg, i8* noundef nonnull %arraydecay, i64 noundef 16) #11
  %add.ptr45 = getelementptr inbounds i8, i8* %parg, i64 16
  %secure47 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 3
  %4 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure47, align 8, !tbaa !99
  %arraydecay49 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %4, i64 0, i32 0, i64 0
  %call50 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr45, i8* noundef %arraydecay49, i64 noundef 32) #11
  %add.ptr52 = getelementptr inbounds i8, i8* %parg, i64 48
  %5 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure47, align 8, !tbaa !99
  %arraydecay56 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %5, i64 0, i32 1, i64 0
  %call57 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr52, i8* noundef nonnull %arraydecay56, i64 noundef 32) #11
  br label %return

sw.bb61:                                          ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 8
  %6 = load i32, i32* %status_type, align 8, !tbaa !100
  %conv63 = sext i32 %6 to i64
  br label %return

sw.bb64:                                          ; preds = %entry
  %conv65 = trunc i64 %larg to i32
  %status_type67 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 8
  store i32 %conv65, i32* %status_type67, align 8, !tbaa !100
  br label %return

sw.bb68:                                          ; preds = %entry
  %status_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 7
  store i8* %parg, i8** %status_arg, align 8, !tbaa !101
  br label %return

sw.bb70:                                          ; preds = %entry
  %status_arg72 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 7
  %7 = load i8*, i8** %status_arg72, align 8, !tbaa !101
  %8 = bitcast i8* %parg to i8**
  store i8* %7, i8** %8, align 8, !tbaa !53
  br label %return

sw.bb73:                                          ; preds = %entry
  %status_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 6
  %9 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %status_cb, align 8, !tbaa !102
  %10 = bitcast i8* %parg to i32 (%struct.ssl_st*, i8*)**
  store i32 (%struct.ssl_st*, i8*)* %9, i32 (%struct.ssl_st*, i8*)** %10, align 8, !tbaa !53
  br label %return

sw.bb75:                                          ; preds = %entry
  %srp_Mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 15
  %11 = load i64, i64* %srp_Mask, align 8, !tbaa !103
  %or = or i64 %11, 32
  store i64 %or, i64* %srp_Mask, align 8, !tbaa !103
  %login = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 4
  %12 = load i8*, i8** %login, align 8, !tbaa !104
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3859) #11
  store i8* null, i8** %login, align 8, !tbaa !104
  %cmp79 = icmp eq i8* %parg, null
  br i1 %cmp79, label %return, label %if.end82

if.end82:                                         ; preds = %sw.bb75
  %call83 = tail call i64 @strlen(i8* noundef nonnull %parg) #13
  %13 = add i64 %call83, -256
  %14 = icmp ult i64 %13, -255
  br i1 %14, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end82
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3864, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 357, i8* noundef null) #11
  br label %return

if.end90:                                         ; preds = %if.end82
  %call91 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %parg, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3867) #11
  store i8* %call91, i8** %login, align 8, !tbaa !104
  %cmp94 = icmp eq i8* %call91, null
  br i1 %cmp94, label %if.then96, label %return

if.then96:                                        ; preds = %if.end90
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3868, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #11
  br label %return

sw.bb98:                                          ; preds = %entry
  %SRP_give_srp_client_pwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 3
  store i8* (%struct.ssl_st*, i8*)* @srp_password_from_info_cb, i8* (%struct.ssl_st*, i8*)** %SRP_give_srp_client_pwd_callback, align 8, !tbaa !105
  %info = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 13
  %15 = load i8*, i8** %info, align 8, !tbaa !106
  %cmp101.not = icmp eq i8* %15, null
  br i1 %cmp101.not, label %if.end106, label %if.then103

if.then103:                                       ; preds = %sw.bb98
  tail call void @CRYPTO_free(i8* noundef nonnull %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3876) #11
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %sw.bb98
  %call107 = tail call i8* @CRYPTO_strdup(i8* noundef %parg, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3877) #11
  store i8* %call107, i8** %info, align 8, !tbaa !106
  %cmp110 = icmp eq i8* %call107, null
  br i1 %cmp110, label %if.then112, label %return

if.then112:                                       ; preds = %if.end106
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3878, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #11
  br label %return

sw.bb114:                                         ; preds = %entry
  %srp_Mask116 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 15
  %16 = load i64, i64* %srp_Mask116, align 8, !tbaa !103
  %or117 = or i64 %16, 32
  store i64 %or117, i64* %srp_Mask116, align 8, !tbaa !103
  %SRP_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 0
  store i8* %parg, i8** %SRP_cb_arg, align 8, !tbaa !107
  br label %return

sw.bb119:                                         ; preds = %entry
  %conv120 = trunc i64 %larg to i32
  %strength = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 14
  store i32 %conv120, i32* %strength, align 8, !tbaa !108
  br label %return

sw.bb122:                                         ; preds = %entry
  %supportedgroups124 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 13
  %supportedgroups_len126 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 12
  %17 = bitcast i8* %parg to i32*
  %call127 = tail call i32 @tls1_set_groups(i16** noundef nonnull %supportedgroups124, i64* noundef nonnull %supportedgroups_len126, i32* noundef %17, i64 noundef %larg) #11
  %conv128 = sext i32 %call127 to i64
  br label %return

sw.bb129:                                         ; preds = %entry
  %supportedgroups131 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 13
  %supportedgroups_len133 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 12
  %call134 = tail call i32 @tls1_set_groups_list(%struct.ssl_ctx_st* noundef %ctx, i16** noundef nonnull %supportedgroups131, i64* noundef nonnull %supportedgroups_len133, i8* noundef %parg) #11
  %conv135 = sext i32 %call134 to i64
  br label %return

sw.bb136:                                         ; preds = %entry
  %cert137 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %18 = load %struct.cert_st*, %struct.cert_st** %cert137, align 8, !tbaa !93
  %19 = bitcast i8* %parg to i32*
  %call138 = tail call i32 @tls1_set_sigalgs(%struct.cert_st* noundef %18, i32* noundef %19, i64 noundef %larg, i32 noundef 0) #11
  %conv139 = sext i32 %call138 to i64
  br label %return

sw.bb140:                                         ; preds = %entry
  %cert141 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %20 = load %struct.cert_st*, %struct.cert_st** %cert141, align 8, !tbaa !93
  %call142 = tail call i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef %20, i8* noundef %parg, i32 noundef 0) #11
  %conv143 = sext i32 %call142 to i64
  br label %return

sw.bb144:                                         ; preds = %entry
  %cert145 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %21 = load %struct.cert_st*, %struct.cert_st** %cert145, align 8, !tbaa !93
  %22 = bitcast i8* %parg to i32*
  %call146 = tail call i32 @tls1_set_sigalgs(%struct.cert_st* noundef %21, i32* noundef %22, i64 noundef %larg, i32 noundef 1) #11
  %conv147 = sext i32 %call146 to i64
  br label %return

sw.bb148:                                         ; preds = %entry
  %cert149 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %23 = load %struct.cert_st*, %struct.cert_st** %cert149, align 8, !tbaa !93
  %call150 = tail call i32 @tls1_set_sigalgs_list(%struct.cert_st* noundef %23, i8* noundef %parg, i32 noundef 1) #11
  %conv151 = sext i32 %call150 to i64
  br label %return

sw.bb152:                                         ; preds = %entry
  %cert153 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %24 = load %struct.cert_st*, %struct.cert_st** %cert153, align 8, !tbaa !93
  %call154 = tail call fastcc i32 @ssl3_set_req_cert_type(%struct.cert_st* noundef %24, i8* noundef %parg, i64 noundef %larg) #12
  %25 = zext i32 %call154 to i64
  br label %return

sw.bb156:                                         ; preds = %entry
  %conv157 = trunc i64 %larg to i32
  %call158 = tail call i32 @ssl_build_cert_chain(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %conv157) #11
  %conv159 = sext i32 %call158 to i64
  br label %return

sw.bb160:                                         ; preds = %entry
  %cert161 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %26 = load %struct.cert_st*, %struct.cert_st** %cert161, align 8, !tbaa !93
  %27 = bitcast i8* %parg to %struct.x509_store_st*
  %conv162 = trunc i64 %larg to i32
  %call163 = tail call i32 @ssl_cert_set_cert_store(%struct.cert_st* noundef %26, %struct.x509_store_st* noundef %27, i32 noundef 0, i32 noundef %conv162) #11
  %conv164 = sext i32 %call163 to i64
  br label %return

sw.bb165:                                         ; preds = %entry
  %cert166 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %28 = load %struct.cert_st*, %struct.cert_st** %cert166, align 8, !tbaa !93
  %29 = bitcast i8* %parg to %struct.x509_store_st*
  %conv167 = trunc i64 %larg to i32
  %call168 = tail call i32 @ssl_cert_set_cert_store(%struct.cert_st* noundef %28, %struct.x509_store_st* noundef %29, i32 noundef 1, i32 noundef %conv167) #11
  %conv169 = sext i32 %call168 to i64
  br label %return

sw.bb170:                                         ; preds = %entry
  %extra_certs = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 29
  %30 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extra_certs, align 8, !tbaa !109
  %cmp171 = icmp eq %struct.stack_st_X509* %30, null
  br i1 %cmp171, label %if.then173, label %if.end180

if.then173:                                       ; preds = %sw.bb170
  %call174 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %31 = bitcast %struct.stack_st_X509** %extra_certs to %struct.stack_st**
  store %struct.stack_st* %call174, %struct.stack_st** %31, align 8, !tbaa !109
  %cmp176 = icmp eq %struct.stack_st* %call174, null
  %32 = bitcast %struct.stack_st* %call174 to %struct.stack_st_X509*
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then173
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3930, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %return

if.end180:                                        ; preds = %if.then173, %sw.bb170
  %33 = phi %struct.stack_st_X509* [ %32, %if.then173 ], [ %30, %sw.bb170 ]
  %call182 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %33) #12
  %call184 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call182, i8* noundef %parg) #11
  %tobool.not = icmp eq i32 %call184, 0
  br i1 %tobool.not, label %if.then185, label %return

if.then185:                                       ; preds = %if.end180
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3935, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl3_ctx_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %return

sw.bb187:                                         ; preds = %entry
  %extra_certs188 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 29
  %34 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extra_certs188, align 8, !tbaa !109
  %cmp189 = icmp eq %struct.stack_st_X509* %34, null
  %cmp191 = icmp eq i64 %larg, 0
  %or.cond = and i1 %cmp191, %cmp189
  br i1 %or.cond, label %if.then193, label %if.else195

if.then193:                                       ; preds = %sw.bb187
  %cert194 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %35 = load %struct.cert_st*, %struct.cert_st** %cert194, align 8, !tbaa !93
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %35, i64 0, i32 0
  %36 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !57
  %chain = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %36, i64 0, i32 2
  %37 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !58
  %38 = bitcast i8* %parg to %struct.stack_st_X509**
  store %struct.stack_st_X509* %37, %struct.stack_st_X509** %38, align 8, !tbaa !53
  br label %return

if.else195:                                       ; preds = %sw.bb187
  %39 = bitcast i8* %parg to %struct.stack_st_X509**
  store %struct.stack_st_X509* %34, %struct.stack_st_X509** %39, align 8, !tbaa !53
  br label %return

sw.bb198:                                         ; preds = %entry
  %extra_certs199 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 29
  %40 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extra_certs199, align 8, !tbaa !109
  %call200 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %40) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call200, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #11
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %extra_certs199, align 8, !tbaa !109
  br label %return

sw.bb203:                                         ; preds = %entry
  %tobool204.not = icmp eq i64 %larg, 0
  %41 = bitcast i8* %parg to %struct.stack_st_X509*
  br i1 %tobool204.not, label %if.else208, label %if.then205

if.then205:                                       ; preds = %sw.bb203
  %call206 = tail call i32 @ssl_cert_set1_chain(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %41) #11
  %conv207 = sext i32 %call206 to i64
  br label %return

if.else208:                                       ; preds = %sw.bb203
  %call209 = tail call i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %41) #11
  %conv210 = sext i32 %call209 to i64
  br label %return

sw.bb211:                                         ; preds = %entry
  %tobool212.not = icmp eq i64 %larg, 0
  %42 = bitcast i8* %parg to %struct.x509_st*
  br i1 %tobool212.not, label %if.else216, label %if.then213

if.then213:                                       ; preds = %sw.bb211
  %call214 = tail call i32 @ssl_cert_add1_chain_cert(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %42) #11
  %conv215 = sext i32 %call214 to i64
  br label %return

if.else216:                                       ; preds = %sw.bb211
  %call217 = tail call i32 @ssl_cert_add0_chain_cert(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %42) #11
  %conv218 = sext i32 %call217 to i64
  br label %return

sw.bb219:                                         ; preds = %entry
  %cert220 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %43 = load %struct.cert_st*, %struct.cert_st** %cert220, align 8, !tbaa !93
  %key221 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %43, i64 0, i32 0
  %44 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key221, align 8, !tbaa !57
  %chain222 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %44, i64 0, i32 2
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain222, align 8, !tbaa !58
  %46 = bitcast i8* %parg to %struct.stack_st_X509**
  store %struct.stack_st_X509* %45, %struct.stack_st_X509** %46, align 8, !tbaa !53
  br label %return

sw.bb223:                                         ; preds = %entry
  %cert224 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %47 = load %struct.cert_st*, %struct.cert_st** %cert224, align 8, !tbaa !93
  %48 = bitcast i8* %parg to %struct.x509_st*
  %call225 = tail call i32 @ssl_cert_select_current(%struct.cert_st* noundef %47, %struct.x509_st* noundef %48) #11
  %conv226 = sext i32 %call225 to i64
  br label %return

sw.bb227:                                         ; preds = %entry
  %cert228 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %49 = load %struct.cert_st*, %struct.cert_st** %cert228, align 8, !tbaa !93
  %call229 = tail call i32 @ssl_cert_set_current(%struct.cert_st* noundef %49, i64 noundef %larg) #11
  %conv230 = sext i32 %call229 to i64
  br label %return

return:                                           ; preds = %sw.bb16, %sw.bb64, %sw.bb70, %sw.bb73, %sw.bb114, %sw.bb119, %sw.bb198, %sw.bb219, %sw.bb75, %if.end90, %if.end106, %if.end180, %if.else195, %if.then193, %entry, %if.then25, %sw.bb18, %if.else, %if.then29, %if.then, %if.then2, %if.end3, %sw.bb227, %sw.bb223, %if.else216, %if.then213, %if.else208, %if.then205, %if.then185, %if.then178, %sw.bb165, %sw.bb160, %sw.bb156, %sw.bb152, %sw.bb148, %sw.bb144, %sw.bb140, %sw.bb136, %sw.bb129, %sw.bb122, %if.then112, %if.then96, %if.then89, %sw.bb68, %sw.bb61, %if.end12, %if.then11, %sw.bb6, %sw.bb5
  %retval.2 = phi i64 [ %conv230, %sw.bb227 ], [ %conv226, %sw.bb223 ], [ %conv215, %if.then213 ], [ %conv218, %if.else216 ], [ %conv207, %if.then205 ], [ %conv210, %if.else208 ], [ 0, %if.then178 ], [ 0, %if.then185 ], [ %conv169, %sw.bb165 ], [ %conv164, %sw.bb160 ], [ %conv159, %sw.bb156 ], [ %25, %sw.bb152 ], [ %conv151, %sw.bb148 ], [ %conv147, %sw.bb144 ], [ %conv143, %sw.bb140 ], [ %conv139, %sw.bb136 ], [ %conv135, %sw.bb129 ], [ %conv128, %sw.bb122 ], [ 0, %if.then112 ], [ 0, %if.then89 ], [ 0, %if.then96 ], [ 1, %sw.bb68 ], [ %conv63, %sw.bb61 ], [ 0, %if.then11 ], [ %conv15, %if.end12 ], [ 1, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %if.then ], [ 0, %if.then2 ], [ %conv, %if.end3 ], [ 0, %if.then25 ], [ 80, %sw.bb18 ], [ 1, %if.else ], [ 1, %if.then29 ], [ 0, %entry ], [ 1, %if.then193 ], [ 1, %if.else195 ], [ 1, %if.end180 ], [ 1, %if.end106 ], [ 1, %if.end90 ], [ 1, %sw.bb75 ], [ 1, %sw.bb219 ], [ 1, %sw.bb198 ], [ 1, %sw.bb119 ], [ 1, %sw.bb114 ], [ 1, %sw.bb73 ], [ 1, %sw.bb70 ], [ 1, %sw.bb64 ], [ 1, %sw.bb16 ]
  ret i64 %retval.2
}

declare i32 @SSL_CTX_set0_tmp_dh_pkey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @srp_password_from_info_cb(%struct.ssl_st* nocapture noundef readonly %s, i8* nocapture noundef readnone %arg) #0 {
entry:
  %info = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  %0 = load i8*, i8** %info, align 8, !tbaa !110
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3412) #11
  ret i8* %call
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* nocapture noundef %ctx, i32 noundef %cmd, void ()* noundef %fp) local_unnamed_addr #7 {
entry:
  switch i32 %cmd, label %return [
    i32 6, label %sw.bb
    i32 53, label %sw.bb1
    i32 63, label %sw.bb2
    i32 72, label %sw.bb4
    i32 76, label %sw.bb6
    i32 75, label %sw.bb8
    i32 77, label %sw.bb13
    i32 79, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !93
  %dh_tmp_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 2
  %1 = bitcast %struct.dh_st* (%struct.ssl_st*, i32, i32)** %dh_tmp_cb to void ()**
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %servername_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 0
  %2 = bitcast i32 (%struct.ssl_st*, i32*, i8*)** %servername_cb to void ()**
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  %status_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 6
  %3 = bitcast i32 (%struct.ssl_st*, i8*)** %status_cb to void ()**
  br label %return.sink.split

sw.bb4:                                           ; preds = %entry
  %ticket_key_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 4
  %4 = bitcast i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)** %ticket_key_cb to void ()**
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  %srp_Mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 15
  %5 = load i64, i64* %srp_Mask, align 8, !tbaa !103
  %or = or i64 %5, 32
  store i64 %or, i64* %srp_Mask, align 8, !tbaa !103
  %SRP_verify_param_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 2
  %6 = bitcast i32 (%struct.ssl_st*, i8*)** %SRP_verify_param_callback to void ()**
  br label %return.sink.split

sw.bb8:                                           ; preds = %entry
  %srp_Mask10 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 15
  %7 = load i64, i64* %srp_Mask10, align 8, !tbaa !103
  %or11 = or i64 %7, 32
  store i64 %or11, i64* %srp_Mask10, align 8, !tbaa !103
  %TLS_ext_srp_username_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 1
  %8 = bitcast i32 (%struct.ssl_st*, i32*, i8*)** %TLS_ext_srp_username_callback to void ()**
  br label %return.sink.split

sw.bb13:                                          ; preds = %entry
  %srp_Mask15 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 15
  %9 = load i64, i64* %srp_Mask15, align 8, !tbaa !103
  %or16 = or i64 %9, 32
  store i64 %or16, i64* %srp_Mask15, align 8, !tbaa !103
  %SRP_give_srp_client_pwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 3
  %10 = bitcast i8* (%struct.ssl_st*, i8*)** %SRP_give_srp_client_pwd_callback to void ()**
  br label %return.sink.split

sw.bb18:                                          ; preds = %entry
  %not_resumable_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 68
  %11 = bitcast i32 (%struct.ssl_st*, i32)** %not_resumable_session_cb to void ()**
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb18, %sw.bb13, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi void ()** [ %1, %sw.bb ], [ %2, %sw.bb1 ], [ %3, %sw.bb2 ], [ %4, %sw.bb4 ], [ %6, %sw.bb6 ], [ %8, %sw.bb8 ], [ %10, %sw.bb13 ], [ %11, %sw.bb18 ]
  store void ()* %fp, void ()** %.sink, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 1, %return.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_CTX_set_tlsext_ticket_key_evp_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* noundef %fp) local_unnamed_addr #8 {
entry:
  %ticket_key_evp_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 60, i32 5
  store i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* %fp, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)** %ticket_key_evp_cb, align 8, !tbaa !111
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @ssl3_get_cipher_by_id(i32 noundef %id) local_unnamed_addr #0 {
entry:
  %c = alloca %struct.ssl_cipher_st, align 8
  %0 = bitcast %struct.ssl_cipher_st* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #14
  %id1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 3
  store i32 %id, i32* %id1, align 8, !tbaa !4
  %call = call %struct.ssl_cipher_st* @OBJ_bsearch_ssl_cipher_id(%struct.ssl_cipher_st* noundef nonnull %c, %struct.ssl_cipher_st* noundef getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 0), i32 noundef 5) #11
  %cmp.not = icmp eq %struct.ssl_cipher_st* %call, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.ssl_cipher_st* @OBJ_bsearch_ssl_cipher_id(%struct.ssl_cipher_st* noundef nonnull %c, %struct.ssl_cipher_st* noundef getelementptr inbounds ([167 x %struct.ssl_cipher_st], [167 x %struct.ssl_cipher_st]* @ssl3_ciphers, i64 0, i64 0), i32 noundef 167) #11
  %cmp3.not = icmp eq %struct.ssl_cipher_st* %call2, null
  br i1 %cmp3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call %struct.ssl_cipher_st* @OBJ_bsearch_ssl_cipher_id(%struct.ssl_cipher_st* noundef nonnull %c, %struct.ssl_cipher_st* noundef getelementptr inbounds ([2 x %struct.ssl_cipher_st], [2 x %struct.ssl_cipher_st]* @ssl3_scsvs, i64 0, i64 0), i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi %struct.ssl_cipher_st* [ %call6, %if.end5 ], [ %call, %entry ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14
  ret %struct.ssl_cipher_st* %retval.0
}

declare %struct.ssl_cipher_st* @OBJ_bsearch_ssl_cipher_id(%struct.ssl_cipher_st* noundef, %struct.ssl_cipher_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.ssl_cipher_st* @ssl3_get_cipher_by_std_name(i8* noundef readonly %stdname) local_unnamed_addr #9 {
for.body4.preheader:
  %0 = load i8*, i8** getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 0, i32 2), align 16, !tbaa !112
  %cmp6 = icmp eq i8* %0, null
  br i1 %cmp6, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body4.preheader
  %call = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %0) #13
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %cleanup.loopexit, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body4.preheader
  %1 = load i8*, i8** getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 1, i32 2), align 16, !tbaa !112
  %cmp6.145 = icmp eq i8* %1, null
  br i1 %cmp6.145, label %for.inc.153, label %if.end.149

if.end.149:                                       ; preds = %for.inc
  %call.147 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %1) #13
  %cmp8.148 = icmp eq i32 %call.147, 0
  br i1 %cmp8.148, label %cleanup.loopexit, label %for.inc.153

for.inc.153:                                      ; preds = %if.end.149, %for.inc
  %2 = load i8*, i8** getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 2, i32 2), align 16, !tbaa !112
  %cmp6.254 = icmp eq i8* %2, null
  br i1 %cmp6.254, label %for.inc.259, label %if.end.258

if.end.258:                                       ; preds = %for.inc.153
  %call.256 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %2) #13
  %cmp8.257 = icmp eq i32 %call.256, 0
  br i1 %cmp8.257, label %cleanup.loopexit, label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258, %for.inc.153
  %3 = load i8*, i8** getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 3, i32 2), align 16, !tbaa !112
  %cmp6.3 = icmp eq i8* %3, null
  br i1 %cmp6.3, label %for.inc.3, label %if.end.3

if.end.3:                                         ; preds = %for.inc.259
  %call.3 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %3) #13
  %cmp8.3 = icmp eq i32 %call.3, 0
  br i1 %cmp8.3, label %cleanup.loopexit, label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.259
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 4, i32 2), align 16, !tbaa !112
  %cmp6.4 = icmp eq i8* %4, null
  br i1 %cmp6.4, label %for.body4.1.preheader, label %if.end.4

if.end.4:                                         ; preds = %for.inc.3
  %call.4 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %4) #13
  %cmp8.4 = icmp eq i32 %call.4, 0
  br i1 %cmp8.4, label %cleanup.loopexit, label %for.body4.1.preheader

for.body4.1.preheader:                            ; preds = %if.end.4, %for.inc.3
  br label %for.body4.1

for.body4.1:                                      ; preds = %for.body4.1.preheader, %for.inc.1
  %i.033.1 = phi i64 [ %inc.1, %for.inc.1 ], [ 0, %for.body4.1.preheader ]
  %tbl.031.1 = phi %struct.ssl_cipher_st* [ %incdec.ptr.1, %for.inc.1 ], [ getelementptr inbounds ([167 x %struct.ssl_cipher_st], [167 x %struct.ssl_cipher_st]* @ssl3_ciphers, i64 0, i64 0), %for.body4.1.preheader ]
  %stdname5.1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %tbl.031.1, i64 0, i32 2
  %5 = load i8*, i8** %stdname5.1, align 8, !tbaa !112
  %cmp6.1 = icmp eq i8* %5, null
  br i1 %cmp6.1, label %for.inc.1, label %if.end.1

if.end.1:                                         ; preds = %for.body4.1
  %call.1 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %5) #13
  %cmp8.1 = icmp eq i32 %call.1, 0
  br i1 %cmp8.1, label %cleanup.loopexit, label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.body4.1
  %inc.1 = add nuw nsw i64 %i.033.1, 1
  %incdec.ptr.1 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %tbl.031.1, i64 1
  %exitcond.1.not = icmp eq i64 %inc.1, 167
  br i1 %exitcond.1.not, label %for.body4.preheader.2, label %for.body4.1, !llvm.loop !113

for.body4.preheader.2:                            ; preds = %for.inc.1
  %6 = load i8*, i8** getelementptr inbounds ([2 x %struct.ssl_cipher_st], [2 x %struct.ssl_cipher_st]* @ssl3_scsvs, i64 0, i64 0, i32 2), align 16, !tbaa !112
  %cmp6.2 = icmp eq i8* %6, null
  br i1 %cmp6.2, label %for.inc.2, label %if.end.2

if.end.2:                                         ; preds = %for.body4.preheader.2
  %call.2 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %6) #13
  %cmp8.2 = icmp eq i32 %call.2, 0
  br i1 %cmp8.2, label %cleanup.loopexit, label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.body4.preheader.2
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.ssl_cipher_st], [2 x %struct.ssl_cipher_st]* @ssl3_scsvs, i64 0, i64 1, i32 2), align 16, !tbaa !112
  %cmp6.2.1 = icmp eq i8* %7, null
  br i1 %cmp6.2.1, label %cleanup, label %if.end.2.1

if.end.2.1:                                       ; preds = %for.inc.2
  %call.2.1 = tail call i32 @strcmp(i8* noundef %stdname, i8* noundef nonnull %7) #13
  %cmp8.2.1 = icmp eq i32 %call.2.1, 0
  br i1 %cmp8.2.1, label %cleanup.loopexit, label %cleanup

cleanup.loopexit:                                 ; preds = %if.end.1, %if.end.2, %if.end.2.1, %if.end, %if.end.149, %if.end.258, %if.end.3, %if.end.4
  %tbl.031.lcssa = phi %struct.ssl_cipher_st* [ getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 1), %if.end.149 ], [ getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 2), %if.end.258 ], [ getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 3), %if.end.3 ], [ getelementptr inbounds ([5 x %struct.ssl_cipher_st], [5 x %struct.ssl_cipher_st]* @tls13_ciphers, i64 0, i64 4), %if.end.4 ], [ getelementptr inbounds ([2 x %struct.ssl_cipher_st], [2 x %struct.ssl_cipher_st]* @ssl3_scsvs, i64 0, i64 0), %if.end.2 ], [ getelementptr inbounds ([2 x %struct.ssl_cipher_st], [2 x %struct.ssl_cipher_st]* @ssl3_scsvs, i64 0, i64 1), %if.end.2.1 ], [ %tbl.031.1, %if.end.1 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end.2.1, %for.inc.2, %cleanup.loopexit
  %retval.0 = phi %struct.ssl_cipher_st* [ %tbl.031.lcssa, %cleanup.loopexit ], [ null, %for.inc.2 ], [ null, %if.end.2.1 ]
  ret %struct.ssl_cipher_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @ssl3_get_cipher_by_char(i8* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !114
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr inbounds i8, i8* %p, i64 1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !114
  %conv2 = zext i8 %1 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 50331648
  %call = tail call %struct.ssl_cipher_st* @ssl3_get_cipher_by_id(i32 noundef %or3) #12
  ret %struct.ssl_cipher_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_put_cipher_by_char(%struct.ssl_cipher_st* nocapture noundef readonly %c, %struct.wpacket_st* noundef %pkt, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 3
  %0 = load i32, i32* %id, align 8, !tbaa !4
  %and = and i32 %0, -16777216
  %cmp.not = icmp eq i32 %and, 50331648
  br i1 %cmp.not, label %if.end, label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 65535
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %and2, i64 noundef 2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end, %entry
  %.sink = phi i64 [ 0, %entry ], [ 2, %if.end ]
  store i64 %.sink, i64* %len, align 8, !tbaa !115
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @ssl3_choose_cipher(%struct.ssl_st* noundef %s, %struct.stack_st_SSL_CIPHER* noundef %clnt, %struct.stack_st_SSL_CIPHER* noundef %srvr) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !45
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !116
  %and = and i32 %1, 196608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end67

if.else:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %2 = load i64, i64* %options, align 8, !tbaa !117
  %and1 = and i64 %2, 4194304
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end67, label %if.then3

if.then3:                                         ; preds = %if.else
  %and5 = and i64 %2, 2097152
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %clnt) #12
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp = icmp sgt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end67

if.then8:                                         ; preds = %land.lhs.true
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #11
  %algorithm_enc = getelementptr inbounds i8, i8* %call10, i64 36
  %3 = bitcast i8* %algorithm_enc to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !118
  %cmp11 = icmp eq i32 %4, 524288
  br i1 %cmp11, label %if.then12, label %if.end67

if.then12:                                        ; preds = %if.then8
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %srvr) #12
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #11
  %cmp15393 = icmp sgt i32 %call14, 0
  br i1 %cmp15393, label %for.body, label %if.end67

for.body:                                         ; preds = %if.then12, %for.inc
  %i.0394 = phi i32 [ %inc, %for.inc ], [ 0, %if.then12 ]
  %call17 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.0394) #11
  %algorithm_enc18 = getelementptr inbounds i8, i8* %call17, i64 36
  %5 = bitcast i8* %algorithm_enc18 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !118
  %cmp19 = icmp eq i32 %6, 524288
  br i1 %cmp19, label %if.then22, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0394, 1
  %exitcond.not = icmp eq i32 %inc, %call14
  br i1 %exitcond.not, label %if.end67, label %for.body, !llvm.loop !119

if.then22:                                        ; preds = %for.body
  %call24 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef %call14) #11
  %7 = bitcast %struct.stack_st* %call24 to %struct.stack_st_SSL_CIPHER*
  %cmp25.not = icmp eq %struct.stack_st* %call24, null
  br i1 %cmp25.not, label %if.end67, label %if.then26

if.then26:                                        ; preds = %if.then22
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %7) #12
  %call29 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef nonnull %call17) #11
  %i.1395 = add nuw nsw i32 %i.0394, 1
  %cmp32396 = icmp slt i32 %i.1395, %call14
  br i1 %cmp32396, label %for.body33, label %for.body48.preheader

for.body33:                                       ; preds = %if.then26, %for.inc43
  %i.1397 = phi i32 [ %i.1, %for.inc43 ], [ %i.1395, %if.then26 ]
  %call35 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.1397) #11
  %algorithm_enc36 = getelementptr inbounds i8, i8* %call35, i64 36
  %8 = bitcast i8* %algorithm_enc36 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !118
  %cmp37 = icmp eq i32 %9, 524288
  br i1 %cmp37, label %if.then38, label %for.inc43

if.then38:                                        ; preds = %for.body33
  %call41 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef nonnull %call35) #11
  br label %for.inc43

for.inc43:                                        ; preds = %for.body33, %if.then38
  %i.1 = add nuw i32 %i.1397, 1
  %exitcond414.not = icmp eq i32 %i.1, %call14
  br i1 %exitcond414.not, label %for.body48.preheader, label %for.body33, !llvm.loop !120

for.body48.preheader:                             ; preds = %for.inc43, %if.then26
  br label %for.body48

for.body48:                                       ; preds = %for.body48.preheader, %for.inc58
  %i.2399 = phi i32 [ %inc59, %for.inc58 ], [ 0, %for.body48.preheader ]
  %call50 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.2399) #11
  %algorithm_enc51 = getelementptr inbounds i8, i8* %call50, i64 36
  %10 = bitcast i8* %algorithm_enc51 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !118
  %cmp52.not = icmp eq i32 %11, 524288
  br i1 %cmp52.not, label %for.inc58, label %if.then53

if.then53:                                        ; preds = %for.body48
  %call56 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef nonnull %call50) #11
  br label %for.inc58

for.inc58:                                        ; preds = %for.body48, %if.then53
  %inc59 = add nuw nsw i32 %i.2399, 1
  %exitcond415.not = icmp eq i32 %inc59, %call14
  br i1 %exitcond415.not, label %if.end67, label %for.body48, !llvm.loop !121

if.end67:                                         ; preds = %for.inc, %for.inc58, %if.then12, %if.else, %if.then22, %entry, %if.then8, %land.lhs.true, %if.then3
  %allow.0 = phi %struct.stack_st_SSL_CIPHER* [ %clnt, %if.then8 ], [ %clnt, %land.lhs.true ], [ %clnt, %if.then3 ], [ %clnt, %entry ], [ %clnt, %if.then22 ], [ %srvr, %if.else ], [ %clnt, %if.then12 ], [ %clnt, %for.inc58 ], [ %clnt, %for.inc ]
  %prio_chacha.1 = phi %struct.stack_st_SSL_CIPHER* [ null, %if.then8 ], [ null, %land.lhs.true ], [ null, %if.then3 ], [ null, %entry ], [ null, %if.then22 ], [ null, %if.else ], [ null, %if.then12 ], [ %7, %for.inc58 ], [ null, %for.inc ]
  %prio.1 = phi %struct.stack_st_SSL_CIPHER* [ %srvr, %if.then8 ], [ %srvr, %land.lhs.true ], [ %srvr, %if.then3 ], [ %srvr, %entry ], [ %srvr, %if.then22 ], [ %clnt, %if.else ], [ %srvr, %if.then12 ], [ %7, %for.inc58 ], [ %srvr, %for.inc ]
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags, align 8, !tbaa !74
  %and68 = and i32 %14, 8
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.else92

land.lhs.true70:                                  ; preds = %if.end67
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 0
  %15 = load i32, i32* %version, align 8, !tbaa !76
  %cmp72 = icmp slt i32 %15, 772
  %cmp76.not = icmp eq i32 %15, 65536
  %or.cond = or i1 %cmp72, %cmp76.not
  br i1 %or.cond, label %if.else92, label %if.then77

if.then77:                                        ; preds = %land.lhs.true70
  %psk_server_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  %16 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !122
  %cmp78.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32)* %16, null
  br i1 %cmp78.not, label %if.end93, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then77
  %call82 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.inc85, label %if.end93

for.inc85:                                        ; preds = %land.rhs.preheader
  %call82.1 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #12
  %tobool83.not.1 = icmp eq i32 %call82.1, 0
  br i1 %tobool83.not.1, label %for.inc85.1, label %if.end93

for.inc85.1:                                      ; preds = %for.inc85
  %call82.2 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #12
  %tobool83.not.2 = icmp eq i32 %call82.2, 0
  br i1 %tobool83.not.2, label %for.inc85.2, label %if.end93

for.inc85.2:                                      ; preds = %for.inc85.1
  %call82.3 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 3) #12
  %tobool83.not.3 = icmp eq i32 %call82.3, 0
  br i1 %tobool83.not.3, label %for.inc85.3, label %if.end93

for.inc85.3:                                      ; preds = %for.inc85.2
  %call82.4 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 4) #12
  %tobool83.not.4 = icmp eq i32 %call82.4, 0
  br i1 %tobool83.not.4, label %for.inc85.4, label %if.end93

for.inc85.4:                                      ; preds = %for.inc85.3
  %call82.5 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 5) #12
  %tobool83.not.5 = icmp eq i32 %call82.5, 0
  br i1 %tobool83.not.5, label %for.inc85.5, label %if.end93

for.inc85.5:                                      ; preds = %for.inc85.4
  %call82.6 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 6) #12
  %tobool83.not.6 = icmp eq i32 %call82.6, 0
  br i1 %tobool83.not.6, label %for.inc85.6, label %if.end93

for.inc85.6:                                      ; preds = %for.inc85.5
  %call82.7 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 7) #12
  %tobool83.not.7 = icmp eq i32 %call82.7, 0
  br i1 %tobool83.not.7, label %for.inc85.7, label %if.end93

for.inc85.7:                                      ; preds = %for.inc85.6
  %call82.8 = tail call fastcc i32 @ssl_has_cert(%struct.ssl_st* noundef nonnull %s, i32 noundef 8) #12
  %tobool83.not.8 = icmp eq i32 %call82.8, 0
  %spec.select = zext i1 %tobool83.not.8 to i32
  br label %if.end93

if.else92:                                        ; preds = %land.lhs.true70, %if.end67
  tail call void @tls1_set_cert_validity(%struct.ssl_st* noundef nonnull %s) #11
  tail call void @ssl_set_masks(%struct.ssl_st* noundef nonnull %s) #11
  br label %if.end93

if.end93:                                         ; preds = %for.inc85.7, %land.rhs.preheader, %for.inc85, %for.inc85.1, %for.inc85.2, %for.inc85.3, %for.inc85.4, %for.inc85.5, %for.inc85.6, %if.then77, %if.else92
  %prefer_sha256.1 = phi i32 [ 0, %if.else92 ], [ 0, %if.then77 ], [ 0, %for.inc85.6 ], [ 0, %for.inc85.5 ], [ 0, %for.inc85.4 ], [ 0, %for.inc85.3 ], [ 0, %for.inc85.2 ], [ 0, %for.inc85.1 ], [ 0, %for.inc85 ], [ 0, %land.rhs.preheader ], [ %spec.select, %for.inc85.7 ]
  %call95 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %prio.1) #12
  %call96403 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call95) #11
  %cmp97404 = icmp sgt i32 %call96403, 0
  br i1 %cmp97404, label %for.body98.lr.ph, label %for.end247

for.body98.lr.ph:                                 ; preds = %if.end93
  %version119 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %mask_k160 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 34
  %mask_a163 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 35
  %srp_Mask = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 15
  %psk_server_callback175 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  %is_probably_safari = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 32
  %tobool227.not = icmp eq i32 %prefer_sha256.1, 0
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %for.inc245
  %ret.0408 = phi %struct.ssl_cipher_st* [ null, %for.body98.lr.ph ], [ %ret.3, %for.inc245 ]
  %alg_a.0407 = phi i64 [ 0, %for.body98.lr.ph ], [ %alg_a.2, %for.inc245 ]
  %alg_k.0406 = phi i64 [ 0, %for.body98.lr.ph ], [ %alg_k.2, %for.inc245 ]
  %i.3405 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc246, %for.inc245 ]
  %call100 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call95, i32 noundef %i.3405) #11
  %17 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc102 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %17, i64 0, i32 25
  %18 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc102, align 8, !tbaa !73
  %enc_flags103 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %18, i64 0, i32 12
  %19 = load i32, i32* %enc_flags103, align 8, !tbaa !74
  %and104 = and i32 %19, 8
  %tobool105.not = icmp eq i32 %and104, 0
  %20 = load i32, i32* %version119, align 8, !tbaa !39
  br i1 %tobool105.not, label %land.lhs.true106, label %land.lhs.true118

land.lhs.true106:                                 ; preds = %for.body98
  %min_tls = getelementptr inbounds i8, i8* %call100, i64 44
  %21 = bitcast i8* %min_tls to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !123
  %cmp108 = icmp slt i32 %20, %22
  br i1 %cmp108, label %for.inc245, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true106
  %max_tls = getelementptr inbounds i8, i8* %call100, i64 48
  %23 = bitcast i8* %max_tls to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !124
  %cmp110 = icmp sgt i32 %20, %24
  br i1 %cmp110, label %for.inc245, label %land.lhs.true151

land.lhs.true118:                                 ; preds = %for.body98
  %cmp120 = icmp eq i32 %20, 256
  %spec.select384 = select i1 %cmp120, i32 65280, i32 %20
  %min_dtls = getelementptr inbounds i8, i8* %call100, i64 52
  %25 = bitcast i8* %min_dtls to i32*
  %26 = load i32, i32* %25, align 4, !tbaa !125
  %cmp122 = icmp eq i32 %26, 256
  %cond127 = select i1 %cmp122, i32 65280, i32 %26
  %cmp128 = icmp sgt i32 %spec.select384, %cond127
  br i1 %cmp128, label %for.inc245, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %land.lhs.true118
  %max_dtls = getelementptr inbounds i8, i8* %call100, i64 56
  %27 = bitcast i8* %max_dtls to i32*
  %28 = load i32, i32* %27, align 8, !tbaa !126
  %cmp137 = icmp eq i32 %28, 256
  %cond142 = select i1 %cmp137, i32 65280, i32 %28
  %cmp143 = icmp slt i32 %spec.select384, %cond142
  br i1 %cmp143, label %for.inc245, label %if.then159

land.lhs.true151:                                 ; preds = %lor.lhs.false
  %version153 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %17, i64 0, i32 0
  %29 = load i32, i32* %version153, align 8, !tbaa !76
  %cmp154 = icmp slt i32 %29, 772
  %cmp158.not = icmp eq i32 %29, 65536
  %or.cond386 = or i1 %cmp154, %cmp158.not
  br i1 %or.cond386, label %if.then159, label %if.end200

if.then159:                                       ; preds = %lor.lhs.false129, %land.lhs.true151
  %30 = load i32, i32* %mask_k160, align 4, !tbaa !127
  %conv = zext i32 %30 to i64
  %31 = load i32, i32* %mask_a163, align 8, !tbaa !128
  %conv164 = zext i32 %31 to i64
  %32 = load i64, i64* %srp_Mask, align 8, !tbaa !129
  %and165 = and i64 %32, 32
  %33 = or i64 %and165, %conv
  %34 = shl nuw nsw i64 %and165, 1
  %35 = or i64 %34, %conv164
  %algorithm_mkey = getelementptr inbounds i8, i8* %call100, i64 28
  %36 = bitcast i8* %algorithm_mkey to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !130
  %conv170 = zext i32 %37 to i64
  %algorithm_auth = getelementptr inbounds i8, i8* %call100, i64 32
  %38 = bitcast i8* %algorithm_auth to i32*
  %39 = load i32, i32* %38, align 8, !tbaa !62
  %conv171 = zext i32 %39 to i64
  %and172 = and i64 %conv170, 456
  %tobool173.not = icmp eq i64 %and172, 0
  br i1 %tobool173.not, label %if.end179, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.then159
  %40 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback175, align 8, !tbaa !122
  %cmp176 = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32)* %40, null
  br i1 %cmp176, label %for.inc245, label %if.end179

if.end179:                                        ; preds = %land.lhs.true174, %if.then159
  %and180 = and i64 %33, %conv170
  %tobool181 = icmp ne i64 %and180, 0
  %and183 = and i64 %35, %conv171
  %tobool184 = icmp ne i64 %and183, 0
  %41 = select i1 %tobool181, i1 %tobool184, i1 false
  %and186 = and i64 %conv170, 4
  %tobool187.not = icmp eq i64 %and186, 0
  br i1 %tobool187.not, label %if.end196, label %if.then188

if.then188:                                       ; preds = %if.end179
  br i1 %41, label %land.rhs190, label %for.inc245

land.rhs190:                                      ; preds = %if.then188
  %id = getelementptr inbounds i8, i8* %call100, i64 24
  %42 = bitcast i8* %id to i32*
  %43 = load i32, i32* %42, align 8, !tbaa !4
  %conv191 = zext i32 %43 to i64
  %call192 = tail call i32 @tls1_check_ec_tmp_key(%struct.ssl_st* noundef nonnull %s, i64 noundef %conv191) #11
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %for.inc245, label %if.end200

if.end196:                                        ; preds = %if.end179
  br i1 %41, label %if.end200, label %for.inc245

if.end200:                                        ; preds = %land.rhs190, %land.lhs.true151, %if.end196
  %alg_k.1 = phi i64 [ %conv170, %if.end196 ], [ %alg_k.0406, %land.lhs.true151 ], [ %conv170, %land.rhs190 ]
  %alg_a.1 = phi i64 [ %conv171, %if.end196 ], [ %alg_a.0407, %land.lhs.true151 ], [ %conv171, %land.rhs190 ]
  %call201 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %allow.0) #12
  %call203 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call201, i8* noundef nonnull %call100) #11
  %cmp204 = icmp sgt i32 %call203, -1
  br i1 %cmp204, label %if.then206, label %for.inc245

if.then206:                                       ; preds = %if.end200
  %strength_bits = getelementptr inbounds i8, i8* %call100, i64 68
  %44 = bitcast i8* %strength_bits to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !131
  %call207 = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 65538, i32 noundef %45, i32 noundef 0, i8* noundef nonnull %call100) #11
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %for.inc245, label %if.end210

if.end210:                                        ; preds = %if.then206
  %and211 = and i64 %alg_k.1, 4
  %tobool212.not = icmp eq i64 %and211, 0
  %and214 = and i64 %alg_a.1, 8
  %tobool215.not = icmp eq i64 %and214, 0
  %or.cond387 = select i1 %tobool212.not, i1 true, i1 %tobool215.not
  br i1 %or.cond387, label %if.end226, label %land.lhs.true216

land.lhs.true216:                                 ; preds = %if.end210
  %46 = load i8, i8* %is_probably_safari, align 4, !tbaa !132
  %tobool219.not = icmp eq i8 %46, 0
  br i1 %tobool219.not, label %if.end226, label %if.then220

if.then220:                                       ; preds = %land.lhs.true216
  %tobool221.not = icmp eq %struct.ssl_cipher_st* %ret.0408, null
  br i1 %tobool221.not, label %if.then222, label %for.inc245

if.then222:                                       ; preds = %if.then220
  %call223 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %allow.0) #12
  %call224 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call223, i32 noundef %call203) #11
  %47 = bitcast i8* %call224 to %struct.ssl_cipher_st*
  br label %for.inc245

if.end226:                                        ; preds = %land.lhs.true216, %if.end210
  %call242 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %allow.0) #12
  %call243 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call242, i32 noundef %call203) #11
  %48 = bitcast i8* %call243 to %struct.ssl_cipher_st*
  br i1 %tobool227.not, label %for.end247.loopexit.split.loop.exit431, label %if.then228

if.then228:                                       ; preds = %if.end226
  %49 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %algorithm2 = getelementptr inbounds i8, i8* %call243, i64 64
  %50 = bitcast i8* %algorithm2 to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !133
  %call232 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %49, i32 noundef %51) #11
  %call233 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call232, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #11
  %tobool234.not = icmp eq i32 %call233, 0
  %cmp237 = icmp eq %struct.ssl_cipher_st* %ret.0408, null
  %spec.select388 = select i1 %cmp237, %struct.ssl_cipher_st* %48, %struct.ssl_cipher_st* %ret.0408
  br i1 %tobool234.not, label %for.inc245, label %for.end247.loopexit.split.loop.exit

for.inc245:                                       ; preds = %land.rhs190, %if.then228, %if.then188, %if.end200, %if.then220, %if.then222, %if.then206, %if.end196, %land.lhs.true174, %land.lhs.true118, %lor.lhs.false129, %land.lhs.true106, %lor.lhs.false
  %alg_k.2 = phi i64 [ %alg_k.0406, %land.lhs.true118 ], [ %alg_k.0406, %lor.lhs.false129 ], [ %conv170, %land.lhs.true174 ], [ %alg_k.1, %if.then220 ], [ %alg_k.1, %if.then222 ], [ %alg_k.1, %if.then228 ], [ %alg_k.1, %if.then206 ], [ %alg_k.1, %if.end200 ], [ %conv170, %if.end196 ], [ %alg_k.0406, %land.lhs.true106 ], [ %alg_k.0406, %lor.lhs.false ], [ %conv170, %if.then188 ], [ %conv170, %land.rhs190 ]
  %alg_a.2 = phi i64 [ %alg_a.0407, %land.lhs.true118 ], [ %alg_a.0407, %lor.lhs.false129 ], [ %conv171, %land.lhs.true174 ], [ %alg_a.1, %if.then220 ], [ %alg_a.1, %if.then222 ], [ %alg_a.1, %if.then228 ], [ %alg_a.1, %if.then206 ], [ %alg_a.1, %if.end200 ], [ %conv171, %if.end196 ], [ %alg_a.0407, %land.lhs.true106 ], [ %alg_a.0407, %lor.lhs.false ], [ %conv171, %if.then188 ], [ %conv171, %land.rhs190 ]
  %ret.3 = phi %struct.ssl_cipher_st* [ %ret.0408, %land.lhs.true118 ], [ %ret.0408, %lor.lhs.false129 ], [ %ret.0408, %land.lhs.true174 ], [ %ret.0408, %if.then220 ], [ %47, %if.then222 ], [ %spec.select388, %if.then228 ], [ %ret.0408, %if.then206 ], [ %ret.0408, %if.end200 ], [ %ret.0408, %if.end196 ], [ %ret.0408, %land.lhs.true106 ], [ %ret.0408, %lor.lhs.false ], [ %ret.0408, %if.then188 ], [ %ret.0408, %land.rhs190 ]
  %inc246 = add nuw nsw i32 %i.3405, 1
  %call96 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call95) #11
  %cmp97 = icmp slt i32 %inc246, %call96
  br i1 %cmp97, label %for.body98, label %for.end247, !llvm.loop !134

for.end247.loopexit.split.loop.exit:              ; preds = %if.then228
  %52 = bitcast i8* %call243 to %struct.ssl_cipher_st*
  br label %for.end247

for.end247.loopexit.split.loop.exit431:           ; preds = %if.end226
  %53 = bitcast i8* %call243 to %struct.ssl_cipher_st*
  br label %for.end247

for.end247:                                       ; preds = %for.end247.loopexit.split.loop.exit431, %for.inc245, %for.end247.loopexit.split.loop.exit, %if.end93
  %ret.4 = phi %struct.ssl_cipher_st* [ null, %if.end93 ], [ %52, %for.end247.loopexit.split.loop.exit ], [ %53, %for.end247.loopexit.split.loop.exit431 ], [ %ret.3, %for.inc245 ]
  %call248 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %prio_chacha.1) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call248) #11
  ret %struct.ssl_cipher_st* %ret.4
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl_has_cert(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %idx) unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !45
  %idxprom12 = zext i32 %idx to i64
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom12, i32 0
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !135
  %cmp2.not = icmp eq %struct.x509_st* %1, null
  br i1 %cmp2.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 5, i64 %idxprom12, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !136
  %cmp7 = icmp ne %struct.evp_pkey_st* %2, null
  %phi.cast = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare void @tls1_set_cert_validity(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @ssl_set_masks(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @tls1_check_ec_tmp_key(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_get_req_cert_type(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %alg_a = alloca i32, align 4
  %0 = bitcast i32* %alg_a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %alg_a, align 4, !tbaa !87
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !45
  %ctype = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 6
  %2 = load i8*, i8** %ctype, align 8, !tbaa !91
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctype_len = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 7
  %3 = load i64, i64* %ctype_len, align 8, !tbaa !92
  %call = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %2, i64 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ssl_set_sig_mask(i32* noundef nonnull %alg_a, %struct.ssl_st* noundef nonnull %s, i32 noundef 327694) #11
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !61
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 4
  %5 = load i32, i32* %algorithm_mkey, align 4, !tbaa !130
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %6 = load i32, i32* %version, align 8, !tbaa !39
  %cmp = icmp slt i32 %6, 769
  %and = and i32 %5, 16
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end21, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 22, i64 noundef 1) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %call8 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 67, i64 noundef 1) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 68, i64 noundef 1) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 238, i64 noundef 1) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 239, i64 noundef 1) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false16.if.end21_crit_edge

lor.lhs.false16.if.end21_crit_edge:               ; preds = %lor.lhs.false16
  %.pre = load i32, i32* %version, align 8, !tbaa !39
  br label %if.end21

if.end21:                                         ; preds = %lor.lhs.false16.if.end21_crit_edge, %if.end
  %7 = phi i32 [ %.pre, %lor.lhs.false16.if.end21_crit_edge ], [ %6, %if.end ]
  %cmp23 = icmp slt i32 %7, 771
  %and25 = and i32 %5, 512
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond102 = select i1 %cmp23, i1 true, i1 %tobool26.not
  br i1 %or.cond102, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end21
  %call28 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 67, i64 noundef 1) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.then27
  %call31 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 68, i64 noundef 1) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %lor.lhs.false30.if.end35_crit_edge

lor.lhs.false30.if.end35_crit_edge:               ; preds = %lor.lhs.false30
  %.pre104 = load i32, i32* %version, align 8, !tbaa !39
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false30.if.end35_crit_edge, %if.end21
  %8 = phi i32 [ %.pre104, %lor.lhs.false30.if.end35_crit_edge ], [ %7, %if.end21 ]
  %cmp37 = icmp ne i32 %8, 768
  %and39 = and i32 %5, 2
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond103 = select i1 %cmp37, i1 true, i1 %tobool40.not
  br i1 %or.cond103, label %if.end53, label %if.then41

if.then41:                                        ; preds = %if.end35
  %call42 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 5, i64 noundef 1) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.then41
  %9 = load i32, i32* %alg_a, align 4, !tbaa !87
  %and46 = and i32 %9, 2
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end53

land.lhs.true48:                                  ; preds = %if.end45
  %call49 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 6, i64 noundef 1) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.end45, %land.lhs.true48, %if.end35
  %10 = load i32, i32* %alg_a, align 4, !tbaa !87
  %and54 = and i32 %10, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end60

land.lhs.true56:                                  ; preds = %if.end53
  %call57 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %land.lhs.true56.if.end60_crit_edge

land.lhs.true56.if.end60_crit_edge:               ; preds = %land.lhs.true56
  %.pre105 = load i32, i32* %alg_a, align 4, !tbaa !87
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true56.if.end60_crit_edge, %if.end53
  %11 = phi i32 [ %.pre105, %land.lhs.true56.if.end60_crit_edge ], [ %10, %if.end53 ]
  %and61 = and i32 %11, 2
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.end67

land.lhs.true63:                                  ; preds = %if.end60
  %call64 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 2, i64 noundef 1) #11
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %land.lhs.true63, %if.end60
  %12 = load i32, i32* %version, align 8, !tbaa !39
  %cmp69 = icmp sgt i32 %12, 768
  br i1 %cmp69, label %land.lhs.true70, label %if.end77

land.lhs.true70:                                  ; preds = %if.end67
  %13 = load i32, i32* %alg_a, align 4, !tbaa !87
  %and71 = and i32 %13, 8
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %if.end77

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %call74 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 64, i64 noundef 1) #11
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup, label %if.end77

if.end77:                                         ; preds = %land.lhs.true73, %land.lhs.true70, %if.end67
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true73, %land.lhs.true63, %land.lhs.true56, %land.lhs.true48, %if.then41, %if.then27, %lor.lhs.false30, %if.then5, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false16, %if.end77, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %if.end77 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.then5 ], [ 0, %lor.lhs.false30 ], [ 0, %if.then27 ], [ 0, %if.then41 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true63 ], [ 0, %land.lhs.true73 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @ssl_set_sig_mask(i32* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_shutdown(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %quiet_shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 9
  %0 = load i32, i32* %quiet_shutdown, align 8, !tbaa !137
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #11
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 3, i32* %shutdown, align 4, !tbaa !138
  br label %cleanup39

if.end:                                           ; preds = %lor.lhs.false
  %shutdown2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown2, align 4, !tbaa !138
  %and = and i32 %1, 1
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %or = or i32 %1, 1
  store i32 %or, i32* %shutdown2, align 4, !tbaa !138
  %call6 = tail call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i32 noundef 0) #11
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %2 = load i32, i32* %alert_dispatch, align 4, !tbaa !139
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %if.end31thread-pre-split, label %cleanup39

if.else:                                          ; preds = %if.end
  %alert_dispatch11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %3 = load i32, i32* %alert_dispatch11, align 4, !tbaa !139
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.else17, label %if.then13

if.then13:                                        ; preds = %if.else
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl_dispatch_alert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 16
  %5 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_dispatch_alert, align 8, !tbaa !140
  %call14 = tail call i32 %5(%struct.ssl_st* noundef nonnull %s) #11
  %cmp = icmp eq i32 %call14, -1
  br i1 %cmp, label %cleanup39, label %if.end31thread-pre-split

if.else17:                                        ; preds = %if.else
  %and19 = and i32 %1, 2
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end31thread-pre-split

if.then21:                                        ; preds = %if.else17
  %6 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #14
  %method22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method22, align 8, !tbaa !10
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 14
  %8 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !141
  %call23 = call i32 %8(%struct.ssl_st* noundef nonnull %s, i32 noundef 0, i32* noundef null, i8* noundef null, i64 noundef 0, i32 noundef 0, i64* noundef nonnull %readbytes) #11
  %9 = load i32, i32* %shutdown2, align 4, !tbaa !138
  %and25 = and i32 %9, 2
  %tobool26.not = icmp eq i32 %and25, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #14
  br i1 %tobool26.not, label %cleanup39, label %if.end31

if.end31thread-pre-split:                         ; preds = %if.then4, %if.else17, %if.then13
  %.pr = load i32, i32* %shutdown2, align 4, !tbaa !138
  br label %if.end31

if.end31:                                         ; preds = %if.end31thread-pre-split, %if.then21
  %10 = phi i32 [ %.pr, %if.end31thread-pre-split ], [ %9, %if.then21 ]
  %cmp33 = icmp eq i32 %10, 3
  br i1 %cmp33, label %land.lhs.true, label %if.else38

land.lhs.true:                                    ; preds = %if.end31
  %alert_dispatch35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %11 = load i32, i32* %alert_dispatch35, align 4, !tbaa !139
  %tobool36.not = icmp eq i32 %11, 0
  br i1 %tobool36.not, label %cleanup39, label %if.else38

if.else38:                                        ; preds = %land.lhs.true, %if.end31
  br label %cleanup39

cleanup39:                                        ; preds = %land.lhs.true, %if.then13, %if.then4, %if.then21, %if.else38, %if.then
  %retval.1 = phi i32 [ 1, %if.then ], [ 0, %if.else38 ], [ -1, %if.then21 ], [ -1, %if.then4 ], [ -1, %if.then13 ], [ 1, %land.lhs.true ]
  ret i32 %retval.1
}

declare i32 @SSL_in_before(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ssl3_send_alert(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_write(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %call = tail call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4, !tbaa !87
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 16
  %0 = load i32, i32* %renegotiate, align 4, !tbaa !142
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl_write_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 15
  %2 = load i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)** %ssl_write_bytes, align 8, !tbaa !143
  %call2 = tail call i32 %2(%struct.ssl_st* noundef nonnull %s, i32 noundef 23, i8* noundef %buf, i64 noundef %len, i64* noundef %written) #11
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef %s, i32 noundef %initok) local_unnamed_addr #0 {
entry:
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 16
  %0 = load i32, i32* %renegotiate, align 4, !tbaa !142
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call = tail call i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #11
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %if.end15

land.lhs.true5:                                   ; preds = %land.lhs.true
  %tobool6.not = icmp eq i32 %initok, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call7 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true5
  tail call void @ossl_statem_set_renegotiate(%struct.ssl_st* noundef nonnull %s) #11
  store i32 0, i32* %renegotiate, align 4, !tbaa !142
  %num_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 18
  %1 = load i32, i32* %num_renegotiations, align 4, !tbaa !42
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %num_renegotiations, align 4, !tbaa !42
  %total_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 17
  %2 = load i32, i32* %total_renegotiations, align 8, !tbaa !43
  %inc14 = add nsw i32 %2, 1
  store i32 %inc14, i32* %total_renegotiations, align 8, !tbaa !43
  br label %if.end15

if.end15:                                         ; preds = %if.then, %land.lhs.true, %lor.lhs.false, %if.then9, %entry
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true ], [ 1, %if.then9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_read(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ssl3_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i32 noundef 0, i64* noundef %readbytes) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl3_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i32 noundef %peek, i64* noundef %readbytes) unnamed_addr #0 {
entry:
  %call = tail call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4, !tbaa !87
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 16
  %0 = load i32, i32* %renegotiate, align 4, !tbaa !142
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %in_read_app_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 19
  store i32 1, i32* %in_read_app_data, align 8, !tbaa !144
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 14
  %2 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !141
  %call3 = tail call i32 %2(%struct.ssl_st* noundef nonnull %s, i32 noundef 23, i32* noundef null, i8* noundef %buf, i64 noundef %len, i32 noundef %peek, i64* noundef %readbytes) #11
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %in_read_app_data, align 8, !tbaa !144
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  tail call void @ossl_statem_set_in_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #11
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl_read_bytes9 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 14
  %5 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes9, align 8, !tbaa !141
  %call10 = tail call i32 %5(%struct.ssl_st* noundef nonnull %s, i32 noundef 23, i32* noundef null, i8* noundef %buf, i64 noundef %len, i32 noundef %peek, i64* noundef %readbytes) #11
  tail call void @ossl_statem_set_in_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #11
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %in_read_app_data, align 8, !tbaa !144
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ %call3, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_peek(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ssl3_read_internal(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len, i32 noundef 1, i64* noundef %readbytes) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ssl3_renegotiate(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #7 {
entry:
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %0 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !145
  %cmp = icmp eq i32 (%struct.ssl_st*)* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 16
  store i32 1, i32* %renegotiate, align 4, !tbaa !142
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i32 1
}

declare i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #1

declare i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef) local_unnamed_addr #1

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @ossl_statem_set_renegotiate(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ssl_get_algorithm2(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #2 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !61
  %cmp = icmp eq %struct.ssl_cipher_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 13
  %1 = load i32, i32* %algorithm2, align 8, !tbaa !133
  %conv = zext i32 %1 to i64
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !74
  %and = and i32 %4, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i32 %1, 2313
  br i1 %cmp5, label %cleanup, label %if.end20

if.else:                                          ; preds = %if.end
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %5 = load i32, i32* %algorithm_mkey, align 4, !tbaa !130
  %and12 = and i32 %5, 456
  %tobool13 = icmp ne i32 %and12, 0
  %cmp15 = icmp eq i32 %1, 1285
  %or.cond = select i1 %tobool13, i1 %cmp15, i1 false
  br i1 %or.cond, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.else, %if.then4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry, %if.end20
  %retval.0 = phi i64 [ %conv, %if.end20 ], [ -1, %entry ], [ 1028, %if.then4 ], [ 2313, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_fill_hello_random(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %server, i8* noundef %result, i64 noundef %len, i32 noundef %dgrd) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %len, 4
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %server, 0
  %mode3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %0 = load i32, i32* %mode3, align 8, !tbaa !146
  %1 = select i1 %tobool.not, i32 32, i32 64
  %2 = and i32 %0, %1
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %if.else24, label %if.then9

if.then9:                                         ; preds = %if.end
  %call = tail call i64 @time(i64* noundef null) #11
  %shr = lshr i64 %call, 24
  %conv11 = trunc i64 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %result, i64 1
  store i8 %conv11, i8* %result, align 1, !tbaa !114
  %shr12 = lshr i64 %call, 16
  %conv14 = trunc i64 %shr12 to i8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %result, i64 2
  store i8 %conv14, i8* %incdec.ptr, align 1, !tbaa !114
  %shr16 = lshr i64 %call, 8
  %conv18 = trunc i64 %shr16 to i8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %result, i64 3
  store i8 %conv18, i8* %incdec.ptr15, align 1, !tbaa !114
  %conv21 = trunc i64 %call to i8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %result, i64 4
  store i8 %conv21, i8* %incdec.ptr19, align 1, !tbaa !114
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %sub = add i64 %len, -4
  %call23 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef nonnull %incdec.ptr22, i64 noundef %sub, i32 noundef 0) #11
  br label %if.end28

if.else24:                                        ; preds = %if.end
  %ctx25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx25, align 8, !tbaa !67
  %libctx26 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx26, align 8, !tbaa !147
  %call27 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef %result, i64 noundef %len, i32 noundef 0) #11
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then9
  %ret.0 = phi i32 [ %call23, %if.then9 ], [ %call27, %if.else24 ]
  %cmp29 = icmp sgt i32 %ret.0, 0
  br i1 %cmp29, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end28
  %cmp32 = icmp ugt i64 %len, 8
  br i1 %cmp32, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.then31
  switch i32 %dgrd, label %cleanup [
    i32 1, label %cleanup.sink.split
    i32 2, label %if.then50
  ]

if.then50:                                        ; preds = %if.end41
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %if.then50
  %.sink83 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @tls11downgrade, i64 0, i64 0), %if.then50 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @tls12downgrade, i64 0, i64 0), %if.end41 ]
  %add.ptr51 = getelementptr inbounds i8, i8* %result, i64 %len
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i64 -8
  %call53 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr52, i8* noundef %.sink83, i64 noundef 8) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28, %if.end41, %if.then31, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then31 ], [ %ret.0, %if.end41 ], [ %ret.0, %if.end28 ], [ %ret.0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_generate_master_secret(%struct.ssl_st* noundef %s, i8* noundef %pms, i64 noundef %pmslen, i32 noundef %free_pms) local_unnamed_addr #0 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !61
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !130
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else51, label %if.then

if.then:                                          ; preds = %entry
  %psklen3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 25
  %2 = load i64, i64* %psklen3, align 8, !tbaa !148
  %and4 = and i64 %conv, 8
  %tobool5.not = icmp eq i64 %and4, 0
  %spec.select = select i1 %tobool5.not, i64 %pmslen, i64 %2
  %add = add i64 %2, 4
  %add7 = add i64 %add, %spec.select
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4594) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end10

if.end10:                                         ; preds = %if.then
  %shr = lshr i64 %spec.select, 8
  %conv12 = trunc i64 %shr to i8
  store i8 %conv12, i8* %call, align 1, !tbaa !114
  %conv14 = trunc i64 %spec.select to i8
  %arrayidx15 = getelementptr inbounds i8, i8* %call, i64 1
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !114
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 2
  br i1 %tobool5.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end10
  %call19 = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %spec.select) #11
  br label %if.end21

if.else:                                          ; preds = %if.end10
  %call20 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %pms, i64 noundef %spec.select) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr, i64 %spec.select
  %shr23 = lshr i64 %2, 8
  %conv25 = trunc i64 %shr23 to i8
  store i8 %conv25, i8* %add.ptr22, align 1, !tbaa !114
  %conv28 = trunc i64 %2 to i8
  %arrayidx29 = getelementptr inbounds i8, i8* %add.ptr22, i64 1
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !114
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr22, i64 2
  %psk = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 24
  %3 = load i8*, i8** %psk, align 8, !tbaa !149
  %call33 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr30, i8* noundef %3, i64 noundef %2) #11
  %4 = load i8*, i8** %psk, align 8, !tbaa !149
  tail call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4607) #11
  store i8* null, i8** %psk, align 8, !tbaa !149
  store i64 0, i64* %psklen3, align 8, !tbaa !148
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %generate_master_secret = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 3
  %7 = load i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)** %generate_master_secret, align 8, !tbaa !150
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %8 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !64
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 1
  %call44 = tail call i32 %7(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i8* noundef nonnull %call, i64 noundef %add7, i64* noundef nonnull %master_key_length) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %cleanup

if.then46:                                        ; preds = %if.end21
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call, i64 noundef %add7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4613) #11
  br label %err

cleanup:                                          ; preds = %if.end21
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call, i64 noundef %add7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4617) #11
  br label %if.end64

if.else51:                                        ; preds = %entry
  %method52 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method52, align 8, !tbaa !10
  %ssl3_enc53 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc53, align 8, !tbaa !73
  %generate_master_secret54 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 3
  %11 = load i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)** %generate_master_secret54, align 8, !tbaa !150
  %session55 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %12 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session55, align 8, !tbaa !64
  %arraydecay57 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %12, i64 0, i32 3, i64 0
  %master_key_length59 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %12, i64 0, i32 1
  %call60 = tail call i32 %11(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay57, i8* noundef %pms, i64 noundef %pmslen, i64* noundef nonnull %master_key_length59) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end64

if.end64:                                         ; preds = %cleanup, %if.else51
  %pmslen.addr.1 = phi i64 [ %spec.select, %cleanup ], [ %pmslen, %if.else51 ]
  br label %err

err:                                              ; preds = %if.then, %if.then46, %if.else51, %if.end64
  %ret.0 = phi i32 [ 1, %if.end64 ], [ 0, %if.else51 ], [ 0, %if.then46 ], [ 0, %if.then ]
  %pmslen.addr.2 = phi i64 [ %pmslen.addr.1, %if.end64 ], [ %pmslen, %if.else51 ], [ %spec.select, %if.then46 ], [ %spec.select, %if.then ]
  %tobool65.not = icmp eq i8* %pms, null
  br i1 %tobool65.not, label %if.end71, label %if.then66

if.then66:                                        ; preds = %err
  %tobool67.not = icmp eq i32 %free_pms, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.then66
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %pms, i64 noundef %pmslen.addr.2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4635) #11
  br label %if.end71

if.else69:                                        ; preds = %if.then66
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %pms, i64 noundef %pmslen.addr.2) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.else69, %err
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %13 = load i32, i32* %server, align 8, !tbaa !60
  %cmp72 = icmp eq i32 %13, 0
  br i1 %cmp72, label %if.then74, label %cleanup82

if.then74:                                        ; preds = %if.end71
  %pms77 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* null, i8** %pms77, align 8, !tbaa !33
  %pmslen80 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 0, i64* %pmslen80, align 8, !tbaa !34
  br label %cleanup82

cleanup82:                                        ; preds = %if.end71, %if.then74
  ret i32 %ret.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* nocapture noundef readonly %s, %struct.evp_pkey_st* noundef %pm) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %cmp = icmp eq %struct.evp_pkey_st* %pm, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !151
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %2, %struct.evp_pkey_st* noundef nonnull %pm, i8* noundef %3) #11
  %cmp2 = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #11
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %err

if.then11:                                        ; preds = %if.end8
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #11
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  br label %err

err:                                              ; preds = %if.end8, %if.then11, %if.end4, %if.end
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #11
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi %struct.evp_pkey_st* [ %5, %err ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ssl_generate_pkey_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %id) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %call = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %0, i16 noundef zeroext %id) #11
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %cmp = icmp eq %struct.tls_group_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4677, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_pkey_group, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end:                                           ; preds = %entry
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %algorithm = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 2
  %4 = load i8*, i8** %algorithm, align 8, !tbaa !152
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %5 = load i8*, i8** %propq, align 8, !tbaa !151
  %call3 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4, i8* noundef %5) #11
  %cmp4 = icmp eq %struct.evp_pkey_ctx_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4685, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_pkey_group, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call3) #11
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4689, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_pkey_group, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #11
  br label %err

if.end10:                                         ; preds = %if.end6
  %realname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 1
  %6 = load i8*, i8** %realname, align 8, !tbaa !153
  %call11 = tail call i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef nonnull %call3, i8* noundef %6) #11
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4693, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_pkey_group, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #11
  br label %err

if.end13:                                         ; preds = %if.end10
  %call14 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call3, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %err

if.then16:                                        ; preds = %if.end13
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4697, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_pkey_group, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #11
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #11
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  br label %err

err:                                              ; preds = %if.end13, %if.then16, %if.then12, %if.then9, %if.then5, %if.then
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then ], [ null, %if.then5 ], [ %call3, %if.then9 ], [ %call3, %if.then16 ], [ %call3, %if.end13 ], [ %call3, %if.then12 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #11
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  ret %struct.evp_pkey_st* %8
}

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ssl_generate_param_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %id) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %call = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %1, i16 noundef zeroext %id) #11
  %cmp = icmp eq %struct.tls_group_info_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %algorithm = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 2
  %4 = load i8*, i8** %algorithm, align 8, !tbaa !152
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %5 = load i8*, i8** %propq, align 8, !tbaa !151
  %call3 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4, i8* noundef %5) #11
  %cmp4 = icmp eq %struct.evp_pkey_ctx_st* %call3, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call3) #11
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  %realname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call, i64 0, i32 1
  %6 = load i8*, i8** %realname, align 8, !tbaa !153
  %call11 = tail call i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef nonnull %call3, i8* noundef %6) #11
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4727, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_generate_param_group, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #11
  br label %err

if.end13:                                         ; preds = %if.end10
  %call14 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %call3, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %err

if.then16:                                        ; preds = %if.end13
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #11
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  br label %err

err:                                              ; preds = %if.end13, %if.then16, %if.end6, %if.end, %entry, %if.then12
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %entry ], [ null, %if.end ], [ %call3, %if.end6 ], [ %call3, %if.then16 ], [ %call3, %if.end13 ], [ %call3, %if.then12 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #11
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret %struct.evp_pkey_st* %8
}

declare i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_gensecret(%struct.ssl_st* noundef %s, i8* noundef %pms, i64 noundef %pmslen) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !74
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !76
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.else12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %4 = load i32, i32* %hit, align 8, !tbaa !154
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then7, label %land.rhs

if.then7:                                         ; preds = %if.then
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #11
  %5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 29, i64 0
  %call8 = tail call i32 @tls13_generate_secret(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call, i8* noundef null, i8* noundef null, i64 noundef 0, i8* noundef nonnull %5) #11
  %phi.cmp = icmp eq i32 %call8, 0
  br i1 %phi.cmp, label %if.end14, label %land.rhs

land.rhs:                                         ; preds = %if.then, %if.then7
  %call10 = tail call i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef %pms, i64 noundef %pmslen) #11
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %if.end14

if.else12:                                        ; preds = %land.lhs.true, %entry
  %call13 = tail call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef %pms, i64 noundef %pmslen, i32 noundef 0) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %land.rhs, %if.else12
  %rv.1 = phi i32 [ %call13, %if.else12 ], [ 0, %if.then7 ], [ %phi.cast, %land.rhs ]
  ret i32 %rv.1
}

declare i32 @tls13_generate_secret(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_derive(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef %privkey, %struct.evp_pkey_st* noundef %pubkey, i32 noundef %gensecret) local_unnamed_addr #0 {
entry:
  %pmslen = alloca i64, align 8
  %0 = bitcast i64* %pmslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pmslen, align 8, !tbaa !115
  %cmp = icmp eq %struct.evp_pkey_st* %privkey, null
  %cmp1 = icmp eq %struct.evp_pkey_st* %pubkey, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4775, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ssl_derive, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !151
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %2, %struct.evp_pkey_st* noundef nonnull %privkey, i8* noundef %3) #11
  %call3 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call) #11
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then11, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st* noundef nonnull %pubkey) #11
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef null, i64* noundef nonnull %pmslen) #11
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false5, %if.end
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4784, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ssl_derive, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end12:                                         ; preds = %lor.lhs.false8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !73
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !74
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end12
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !76
  %cmp14 = icmp slt i32 %7, 772
  %cmp18.not = icmp eq i32 %7, 65536
  %or.cond70 = or i1 %cmp14, %cmp18.not
  br i1 %or.cond70, label %if.end24, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %call20 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %privkey, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %call23 = call i32 @EVP_PKEY_CTX_set_dh_pad(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef 1) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true19, %land.lhs.true, %if.end12
  %8 = load i64, i64* %pmslen, align 8, !tbaa !115
  %call25 = call i8* @CRYPTO_malloc(i64 noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4791) #11
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4793, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ssl_derive, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %call25, i64* noundef nonnull %pmslen) #11
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4798, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ssl_derive, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end32:                                         ; preds = %if.end28
  %tobool33.not = icmp eq i32 %gensecret, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end32
  %9 = load i64, i64* %pmslen, align 8, !tbaa !115
  %call35 = call i32 @ssl_gensecret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call25, i64 noundef %9) #12
  br label %err

if.else:                                          ; preds = %if.end32
  %pms36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call25, i8** %pms36, align 8, !tbaa !33
  %10 = load i64, i64* %pmslen, align 8, !tbaa !115
  %pmslen39 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 %10, i64* %pmslen39, align 8, !tbaa !34
  br label %err

err:                                              ; preds = %if.then34, %if.else, %if.then31, %if.then27, %if.then11
  %rv.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then27 ], [ 0, %if.then31 ], [ %call35, %if.then34 ], [ 1, %if.else ]
  %pms.0 = phi i8* [ null, %if.then11 ], [ null, %if.then27 ], [ %call25, %if.then31 ], [ %call25, %if.then34 ], [ null, %if.else ]
  %11 = load i64, i64* %pmslen, align 8, !tbaa !115
  call void @CRYPTO_clear_free(i8* noundef %pms.0, i64 noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4814) #11
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rv.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_dh_pad(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_decapsulate(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef %privkey, i8* noundef %ct, i64 noundef %ctlen, i32 noundef %gensecret) local_unnamed_addr #0 {
entry:
  %pmslen = alloca i64, align 8
  %0 = bitcast i64* %pmslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pmslen, align 8, !tbaa !115
  %cmp = icmp eq %struct.evp_pkey_st* %privkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4830, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_decapsulate, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !151
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %2, %struct.evp_pkey_st* noundef nonnull %privkey, i8* noundef %3) #11
  %call2 = tail call i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef %call, %struct.ossl_param_st* noundef null) #11
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef null, i64* noundef nonnull %pmslen, i8* noundef %ct, i64 noundef %ctlen) #11
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4838, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_decapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end7:                                          ; preds = %lor.lhs.false
  %4 = load i64, i64* %pmslen, align 8, !tbaa !115
  %call8 = call i8* @CRYPTO_malloc(i64 noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4842) #11
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4844, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_decapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %call8, i64* noundef nonnull %pmslen, i8* noundef %ct, i64 noundef %ctlen) #11
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4849, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_decapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end15:                                         ; preds = %if.end11
  %tobool.not = icmp eq i32 %gensecret, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end15
  %5 = load i64, i64* %pmslen, align 8, !tbaa !115
  %call17 = call i32 @ssl_gensecret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call8, i64 noundef %5) #12
  br label %err

if.else:                                          ; preds = %if.end15
  %pms18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call8, i8** %pms18, align 8, !tbaa !33
  %6 = load i64, i64* %pmslen, align 8, !tbaa !115
  %pmslen21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 %6, i64* %pmslen21, align 8, !tbaa !34
  br label %err

err:                                              ; preds = %if.then16, %if.else, %if.then14, %if.then10, %if.then6
  %rv.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then10 ], [ 0, %if.then14 ], [ %call17, %if.then16 ], [ 1, %if.else ]
  %pms.0 = phi i8* [ null, %if.then6 ], [ null, %if.then10 ], [ %call8, %if.then14 ], [ %call8, %if.then16 ], [ null, %if.else ]
  %7 = load i64, i64* %pmslen, align 8, !tbaa !115
  call void @CRYPTO_clear_free(i8* noundef %pms.0, i64 noundef %7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4865) #11
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rv.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_encapsulate(%struct.ssl_st* noundef %s, %struct.evp_pkey_st* noundef %pubkey, i8** nocapture noundef writeonly %ctp, i64* nocapture noundef writeonly %ctlenp, i32 noundef %gensecret) local_unnamed_addr #0 {
entry:
  %pmslen = alloca i64, align 8
  %ctlen = alloca i64, align 8
  %0 = bitcast i64* %pmslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %pmslen, align 8, !tbaa !115
  %1 = bitcast i64* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %ctlen, align 8, !tbaa !115
  %cmp = icmp eq %struct.evp_pkey_st* %pubkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4880, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_encapsulate, i64 0, i64 0)) #11
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !147
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !151
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %3, %struct.evp_pkey_st* noundef nonnull %pubkey, i8* noundef %4) #11
  %call2 = tail call i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef %call, %struct.ossl_param_st* noundef null) #11
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef null, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef nonnull %pmslen) #11
  %cmp5 = icmp slt i32 %call4, 1
  %5 = load i64, i64* %pmslen, align 8
  %cmp7 = icmp eq i64 %5, 0
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  %6 = load i64, i64* %ctlen, align 8
  %cmp9 = icmp eq i64 %6, 0
  %or.cond38 = select i1 %or.cond, i1 true, i1 %cmp9
  br i1 %or.cond38, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4889, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_encapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call i8* @CRYPTO_malloc(i64 noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4893) #11
  %7 = load i64, i64* %ctlen, align 8, !tbaa !115
  %call13 = call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4894) #11
  %cmp14 = icmp eq i8* %call12, null
  %cmp16 = icmp eq i8* %call13, null
  %or.cond39 = select i1 %cmp14, i1 true, i1 %cmp16
  br i1 %or.cond39, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4896, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_encapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #11
  br label %err

if.end18:                                         ; preds = %if.end11
  %call19 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %call13, i64* noundef nonnull %ctlen, i8* noundef nonnull %call12, i64* noundef nonnull %pmslen) #11
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4901, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_encapsulate, i64 0, i64 0)) #11
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #11
  br label %err

if.end22:                                         ; preds = %if.end18
  %tobool.not = icmp eq i32 %gensecret, 0
  br i1 %tobool.not, label %if.end29.thread, label %if.end29

if.end29.thread:                                  ; preds = %if.end22
  %pms25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call12, i8** %pms25, align 8, !tbaa !33
  %8 = load i64, i64* %pmslen, align 8, !tbaa !115
  %pmslen28 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 %8, i64* %pmslen28, align 8, !tbaa !34
  br label %if.then31

if.end29:                                         ; preds = %if.end22
  %9 = load i64, i64* %pmslen, align 8, !tbaa !115
  %call24 = call i32 @ssl_gensecret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call12, i64 noundef %9) #12
  %phi.cmp = icmp sgt i32 %call24, 0
  br i1 %phi.cmp, label %if.then31, label %err

if.then31:                                        ; preds = %if.end29.thread, %if.end29
  %pms.066 = phi i8* [ null, %if.end29.thread ], [ %call12, %if.end29 ]
  store i8* %call13, i8** %ctp, align 8, !tbaa !53
  %10 = load i64, i64* %ctlen, align 8, !tbaa !115
  store i64 %10, i64* %ctlenp, align 8, !tbaa !115
  br label %err

err:                                              ; preds = %if.end29, %if.then31, %if.then21, %if.then17, %if.then10
  %rv.1 = phi i32 [ 0, %if.then10 ], [ 0, %if.then17 ], [ 0, %if.then21 ], [ 1, %if.then31 ], [ 0, %if.end29 ]
  %pms.1 = phi i8* [ null, %if.then10 ], [ %call12, %if.then17 ], [ %call12, %if.then21 ], [ %pms.066, %if.then31 ], [ %call12, %if.end29 ]
  %ct.0 = phi i8* [ null, %if.then10 ], [ %call13, %if.then17 ], [ %call13, %if.then21 ], [ null, %if.then31 ], [ %call13, %if.end29 ]
  %11 = load i64, i64* %pmslen, align 8, !tbaa !115
  call void @CRYPTO_clear_free(i8* noundef %pms.1, i64 noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4924) #11
  call void @CRYPTO_free(i8* noundef %ct.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 4925) #11
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rv.1, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_group_to_name(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %and = and i32 %nid, 16777216
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %nid, 65535
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call zeroext i16 @tls1_nid2group_id(i32 noundef %nid) #11
  %conv = zext i16 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %group_id.0 = phi i32 [ %and1, %if.then ], [ %conv, %if.else ]
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !67
  %conv2 = trunc i32 %group_id.0 to i16
  %call3 = tail call %struct.tls_group_info_st* @tls1_group_id_lookup(%struct.ssl_ctx_st* noundef %0, i16 noundef zeroext %conv2) #11
  %cmp.not = icmp eq %struct.tls_group_info_st* %call3, null
  br i1 %cmp.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %tlsname = getelementptr inbounds %struct.tls_group_info_st, %struct.tls_group_info_st* %call3, i64 0, i32 0
  %1 = load i8*, i8** %tlsname, align 8, !tbaa !155
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  %retval.0 = phi i8* [ %1, %if.then5 ], [ null, %if.end ]
  ret i8* %retval.0
}

declare zeroext i16 @tls1_nid2group_id(i32 noundef) local_unnamed_addr #1

declare i32 @ssl_undefined_function(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_statem_set_in_handshake(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"ssl_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !12, i64 72, !7, i64 132, !9, i64 136, !9, i64 144, !13, i64 152, !13, i64 160, !14, i64 168, !9, i64 1208, !9, i64 1216, !9, i64 1224, !6, i64 1232, !9, i64 1240, !17, i64 1248, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !6, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !9, i64 2120, !7, i64 2128, !9, i64 2144, !9, i64 2152, !9, i64 2160, !9, i64 2168, !7, i64 2176, !9, i64 2192, !9, i64 2200, !7, i64 2208, !13, i64 2272, !7, i64 2280, !13, i64 2288, !7, i64 2296, !9, i64 2328, !9, i64 2336, !9, i64 2344, !13, i64 2352, !9, i64 2360, !7, i64 2368, !13, i64 2400, !6, i64 2408, !9, i64 2416, !9, i64 2424, !6, i64 2432, !6, i64 2436, !9, i64 2440, !9, i64 2448, !9, i64 2456, !9, i64 2464, !9, i64 2472, !9, i64 2480, !13, i64 2488, !18, i64 2496, !9, i64 2512, !9, i64 2520, !7, i64 2528, !13, i64 2536, !6, i64 2544, !6, i64 2548, !6, i64 2552, !13, i64 2560, !6, i64 2568, !6, i64 2572, !13, i64 2576, !13, i64 2584, !13, i64 2592, !19, i64 2600, !9, i64 2904, !6, i64 2912, !9, i64 2920, !9, i64 2928, !9, i64 2936, !6, i64 2944, !9, i64 2952, !9, i64 2960, !9, i64 2968, !6, i64 2976, !6, i64 2980, !7, i64 2984, !6, i64 2988, !9, i64 2992, !13, i64 3000, !6, i64 3008, !9, i64 3016, !21, i64 3024, !9, i64 3152, !22, i64 3160, !9, i64 7448, !9, i64 7456, !9, i64 7464, !9, i64 7472, !13, i64 7480, !6, i64 7488, !6, i64 7492, !6, i64 7496, !9, i64 7504, !9, i64 7512, !13, i64 7520, !9, i64 7528, !13, i64 7536, !13, i64 7544, !13, i64 7552, !9, i64 7560, !9, i64 7568, !9, i64 7576, !9, i64 7584, !9, i64 7592, !13, i64 7600}
!12 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !7, i64 56}
!13 = !{!"long", !7, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !6, i64 216, !6, i64 220, !9, i64 224, !9, i64 232, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !7, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !15, i64 280, !7, i64 840, !13, i64 904, !7, i64 912, !13, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !13, i64 1000, !9, i64 1008, !13, i64 1016, !6, i64 1024, !7, i64 1028, !7, i64 1029, !16, i64 1030, !9, i64 1032}
!15 = !{!"", !7, i64 0, !13, i64 128, !7, i64 136, !13, i64 264, !13, i64 272, !6, i64 280, !9, i64 288, !9, i64 296, !6, i64 304, !9, i64 312, !13, i64 320, !9, i64 328, !13, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !6, i64 368, !13, i64 376, !9, i64 384, !6, i64 392, !9, i64 400, !13, i64 408, !9, i64 416, !13, i64 424, !9, i64 432, !13, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !13, i64 480, !13, i64 488, !9, i64 496, !7, i64 504, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552}
!16 = !{!"short", !7, i64 0}
!17 = !{!"ssl_dane_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !13, i64 56}
!18 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!19 = !{!"", !7, i64 0, !9, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !9, i64 64, !16, i64 72, !6, i64 76, !20, i64 80, !6, i64 112, !6, i64 116, !13, i64 120, !9, i64 128, !13, i64 136, !9, i64 144, !13, i64 152, !9, i64 160, !13, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !13, i64 232, !9, i64 240, !13, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !9, i64 272, !13, i64 280, !6, i64 288, !7, i64 292, !6, i64 296}
!20 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !13, i64 24}
!21 = !{!"srp_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !13, i64 120}
!22 = !{!"record_layer_st", !9, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !13, i64 24, !23, i64 32, !7, i64 80, !7, i64 1616, !9, i64 4176, !13, i64 4184, !13, i64 4192, !7, i64 4200, !13, i64 4208, !13, i64 4216, !13, i64 4224, !6, i64 4232, !13, i64 4240, !9, i64 4248, !7, i64 4256, !7, i64 4264, !6, i64 4272, !6, i64 4276, !9, i64 4280}
!23 = !{!"ssl3_buffer_st", !9, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !6, i64 40}
!24 = !{!25, !9, i64 24}
!25 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !13, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!26 = !{!11, !9, i64 1200}
!27 = !{!11, !9, i64 744}
!28 = !{!11, !9, i64 800}
!29 = !{!11, !9, i64 808}
!30 = !{!11, !9, i64 760}
!31 = !{!11, !9, i64 776}
!32 = !{!11, !9, i64 848}
!33 = !{!11, !9, i64 864}
!34 = !{!11, !13, i64 872}
!35 = !{!11, !9, i64 912}
!36 = !{!11, !9, i64 920}
!37 = !{!11, !9, i64 1160}
!38 = !{!11, !9, i64 1176}
!39 = !{!11, !6, i64 0}
!40 = !{!11, !9, i64 2840}
!41 = !{!11, !13, i64 2848}
!42 = !{!11, !6, i64 436}
!43 = !{!11, !6, i64 432}
!44 = !{!11, !13, i64 168}
!45 = !{!11, !9, i64 2200}
!46 = !{!47, !6, i64 24}
!47 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !13, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !48, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!48 = !{!"", !9, i64 0, !13, i64 8}
!49 = !{!11, !9, i64 2648}
!50 = !{!11, !9, i64 2640}
!51 = !{!11, !6, i64 2656}
!52 = !{!11, !9, i64 2688}
!53 = !{!9, !9, i64 0}
!54 = !{!11, !9, i64 2680}
!55 = !{!11, !9, i64 2696}
!56 = !{!11, !13, i64 2704}
!57 = !{!47, !9, i64 0}
!58 = !{!59, !9, i64 16}
!59 = !{!"cert_pkey_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !13, i64 32}
!60 = !{!11, !6, i64 56}
!61 = !{!11, !9, i64 736}
!62 = !{!5, !6, i64 32}
!63 = !{!11, !9, i64 904}
!64 = !{!11, !9, i64 2328}
!65 = !{!11, !9, i64 2776}
!66 = !{!11, !13, i64 2768}
!67 = !{!11, !9, i64 2472}
!68 = !{!16, !16, i64 0}
!69 = !{!70, !16, i64 28}
!70 = !{!"tls_group_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !16, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!25, !9, i64 192}
!74 = !{!75, !6, i64 96}
!75 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !13, i64 56, !9, i64 64, !13, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!76 = !{!25, !6, i64 0}
!77 = !{!11, !7, i64 1197}
!78 = !{!11, !16, i64 1198}
!79 = !{!80, !6, i64 776}
!80 = !{!"ssl_session_st", !6, i64 0, !13, i64 8, !7, i64 16, !7, i64 80, !13, i64 592, !7, i64 600, !13, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !13, i64 712, !7, i64 720, !13, i64 728, !13, i64 736, !13, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !13, i64 768, !6, i64 776, !18, i64 784, !9, i64 800, !9, i64 808, !81, i64 816, !9, i64 880, !9, i64 888, !13, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!81 = !{!"", !9, i64 0, !9, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !13, i64 48, !7, i64 56}
!82 = !{!11, !6, i64 752}
!83 = !{!11, !13, i64 768}
!84 = !{!11, !9, i64 944}
!85 = !{!86, !6, i64 12}
!86 = !{!"sigalg_lookup_st", !9, i64 0, !16, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!87 = !{!6, !6, i64 0}
!88 = !{!11, !9, i64 896}
!89 = !{!11, !9, i64 2744}
!90 = !{!11, !13, i64 2736}
!91 = !{!47, !9, i64 392}
!92 = !{!47, !13, i64 400}
!93 = !{!94, !9, i64 344}
!94 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !13, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !13, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !95, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !18, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !13, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !13, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !13, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !96, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !21, i64 792, !97, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !13, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !13, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !13, i64 1584, !13, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!95 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!96 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !13, i64 80, !9, i64 88, !13, i64 96, !9, i64 104, !9, i64 112, !13, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !13, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!97 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !13, i64 24}
!98 = !{!94, !9, i64 544}
!99 = !{!94, !9, i64 568}
!100 = !{!94, !6, i64 608}
!101 = !{!94, !9, i64 600}
!102 = !{!94, !9, i64 592}
!103 = !{!94, !13, i64 912}
!104 = !{!94, !9, i64 824}
!105 = !{!94, !9, i64 816}
!106 = !{!94, !9, i64 896}
!107 = !{!94, !9, i64 792}
!108 = !{!94, !6, i64 904}
!109 = !{!94, !9, i64 272}
!110 = !{!11, !9, i64 3128}
!111 = !{!94, !9, i64 584}
!112 = !{!5, !9, i64 16}
!113 = distinct !{!113, !72}
!114 = !{!7, !7, i64 0}
!115 = !{!13, !13, i64 0}
!116 = !{!47, !6, i64 28}
!117 = !{!11, !13, i64 2536}
!118 = !{!5, !6, i64 36}
!119 = distinct !{!119, !72}
!120 = distinct !{!120, !72}
!121 = distinct !{!121, !72}
!122 = !{!11, !9, i64 2448}
!123 = !{!5, !6, i64 44}
!124 = !{!5, !6, i64 48}
!125 = !{!5, !6, i64 52}
!126 = !{!5, !6, i64 56}
!127 = !{!11, !6, i64 988}
!128 = !{!11, !6, i64 992}
!129 = !{!11, !13, i64 3144}
!130 = !{!5, !6, i64 28}
!131 = !{!5, !6, i64 68}
!132 = !{!11, !7, i64 1196}
!133 = !{!5, !6, i64 64}
!134 = distinct !{!134, !72}
!135 = !{!59, !9, i64 0}
!136 = !{!59, !9, i64 8}
!137 = !{!11, !6, i64 64}
!138 = !{!11, !6, i64 68}
!139 = !{!11, !6, i64 420}
!140 = !{!25, !9, i64 120}
!141 = !{!25, !9, i64 104}
!142 = !{!11, !6, i64 428}
!143 = !{!25, !9, i64 112}
!144 = !{!11, !6, i64 440}
!145 = !{!11, !9, i64 48}
!146 = !{!11, !6, i64 2544}
!147 = !{!94, !9, i64 0}
!148 = !{!11, !13, i64 888}
!149 = !{!11, !9, i64 880}
!150 = !{!75, !9, i64 24}
!151 = !{!94, !9, i64 1088}
!152 = !{!70, !9, i64 16}
!153 = !{!70, !9, i64 8}
!154 = !{!11, !6, i64 1232}
!155 = !{!70, !9, i64 0}
