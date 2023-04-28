; ModuleID = 'test/tls13encryptiontest.c'
source_filename = "test/tls13encryptiontest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RECORD_DATA = type { [3 x i8*], [3 x i8*], i8*, i8*, i8* }
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.evp_cipher_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.anon.2 = type { [26 x i8], void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i8*, i16, i32, %struct.anon.3, i32, i32, i64, i8*, i64, i8*, i64, i16*, i64, i16*, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32, i8, i32 }
%struct.anon.3 = type { %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i64 }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.CLIENTHELLO_MSG = type { i32, i32, [32 x i8], i64, [32 x i8], i64, [255 x i8], %struct.PACKET, i64, [255 x i8], %struct.PACKET, i64, %struct.raw_extension_st* }
%struct.PACKET = type { i8*, i64 }
%struct.raw_extension_st = type { %struct.PACKET, i32, i32, i32, i64 }
%struct.ct_policy_eval_ctx_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ctlog_store_st = type opaque
%struct.engine_st = type opaque
%struct.anon.5 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
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
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl_mac_buf_st = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"test_tls13_encryption\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"test/tls13encryptiontest.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed creating SSL_CTX\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed creating SSL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"s->enc_read_ctx\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"s->enc_write_ctx\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\13\01\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"s->s3.tmp.new_cipher\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Failed to find cipher\00", align 1
@refdata = internal global [7 x %struct.RECORD_DATA] [%struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([449 x i8], [449 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([449 x i8], [449 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.25, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([449 x i8], [449 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([449 x i8], [449 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([453 x i8], [453 x i8]* @.str.28, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([413 x i8], [413 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([445 x i8], [445 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }, %struct.RECORD_DATA { [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)], i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0) }], align 16
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed loading key into EVP_CIPHER_CTX\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed loading key into EVP_CIPHER_CTX\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"tls13_enc(s, &rec, 1, 1, NULL, 0)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to encrypt record %zu\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"test_record(&rec, &refdata[ctr], 1)\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Record %zu encryption test failed\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"tls13_enc(s, &rec, 1, 0, NULL, 0)\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Failed to decrypt record %zu\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"test_record(&rec, &refdata[ctr], 0)\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Record %zu decryption test failed\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"PASS: %zu records tested\00", align 1
@.str.23 = private unnamed_addr constant [449 x i8] c"080000240022000a00140012001d00170018001901000101010201030104001c00024001000000000b0001b9000001b50001b0308201ac30820115a003020102020102300d06092a864886f70d01010b0500300e310c300a06035504031303727361301e170d3136303733303031323335395a170d3236303733303031323335395a300e310c300a0603550403130372736130819f300d06092a864886f70d010101050003818d0030818902818100b4bb498f8279303d980836399b36c6988c0c68de55e1bdb826d3901a2461eafd2de49a91d015abbc9a95137ace6c1af19e\00", align 1
@.str.24 = private unnamed_addr constant [449 x i8] c"aa6af98c7ced43120998e187a80ee0ccb0524b1b018c3e0b63264d449a6d38e22a5fda430846748030530ef0461c8ca9d9efbfae8ea6d1d03e2bd193eff0ab9a8002c47428a6d35a8d88d79f7f1e3f0203010001a31a301830090603551d1304023000300b0603551d0f0404030205a0300d06092a864886f70d01010b05000381810085aad2a0e5b9276b908c65f73a7267170618a54c5f8a7b337d2df7a594365417f2eae8f8a58c8f8172f9319cf36b7fd6c55b80f21a03015156726096fd335e5e67f2dbf102702e608ccae6bec1fc63a42a99be5c3eb7107c3c54e9b9eb\00", align 1
@.str.25 = private unnamed_addr constant [421 x i8] c"2bd5203b1c3b84e0a8b2f759409ba3eac9d91d402dcc0cc8f8961229ac9187b42b4de100000f00008408040080754040d0ddab8cf0e2da2bc4995b868ad745c8e1564e33cde17880a42392cc624aeef6b67bb3f0ae71d9d54a2309731d87dc59f642d733be2eb27484ad8a8c8eb3516a7ac57f2625e2b5c0888a8541f4e734f73d054761df1dd02f0e3e9a33cfa10b6e3eb4ebf7ac053b01fdabbddfc54133bcd24c8bbdceb223b2aa03452a2914000020ac86acbc9cd25a45b57ad5b64db15d4405cf8c80e314583ebf3283ef9a99310c16\00", align 1
@.str.26 = private unnamed_addr constant [449 x i8] c"f10b26d8fcaf67b5b828f712122216a1cd14187465b77637cbcd78539128bb93246dcca1af56f1eaa271666077455bc54965d85f05f9bd36d6996171eb536aff613eeddc42bad5a2d2227c4606f1215f980e7afaf56bd3b85a51be130003101a758d077b1c891d8e7a22947e5a229851fd42a9dd422608f868272abf92b3d43fb46ac420259346067f66322fd708885680f4b4433c29116f2dfa529e09bba53c7cd920121724809eaddcc84307ef46fc51a0b33d99d39db337fcd761ce0f2b02dc73dedb6fddb77c4f8099bde93d5bee08bcf2131f29a2a37ff07949e8f8bcdd\00", align 1
@.str.27 = private unnamed_addr constant [449 x i8] c"3e8310b8bf8b3444c85aaf0d2aeb2d4f36fd14d5cb51fcebff418b3827136ab9529e9a3d3f35e4c0ae749ea2dbc94982a1281d3e6daab719aa4460889321a008bf10fa06ac0c61cc122cc90d5e22c0030c986ae84a33a0c47df174bcfbd50bf78ffdf24051ab423db63d5815db2f830040f30521131c98c66f16c362addce2fba0602cf0a7dddf22e8def7516cdfee95b4056cc9ad38c95352335421b5b1ffbadf75e5212fdad7a75f52a2801486a1eec3539580bee0e4b337cda6085ac9eccd1a0f1a46cebfbb5cdfa3251ac28c3bc826148c6d8c1eb6a06f77f6ff632c6a83\00", align 1
@.str.28 = private unnamed_addr constant [453 x i8] c"e283e8f9df7c6dbabf1c6ea40629a85b43ab0c73d34f9d5072832a104eda3f75f5d83da6e14822a18e14099d749eafd823ca2ac7542086501eca206ce7887920008573757ce2f230a890782b99cc682377beee812756d04f9025135fb599d746fefe7316c922ac265ca0d29021375adb63c1509c3e242dfb92b8dee891f7368c4058399b8db9075f2dcc8216194e503b6652d87d2cb41f99adfdcc5be5ec7e1e6326ac22d70bd3ba652827532d669aff005173597f8039c3ea4922d3ec757670222f6ac29b93e90d7ad3f6dd96328e429cfcfd5cca22707fe2d86ad1dcb0be756e8e\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"c66cb1aec519df44c91e10995511ac8b\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"f7f6884c4981716c2d0d29a4\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"0000000000000000\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"14000020b9027a0204b972b52cdefa58950fa1580d68c9cb124dbe691a7178f25c554b2316\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [107 x i8] c"9539b4ae2f87fd8e616b295628ea953d9e3858db274970d19813ec136cae7d96e0417775fcabd3d8858fdc60240912d218f5afb21c\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"2679a43e1d76784034ea1797d5ad2649\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"5482405290dd0d2f81c0d942\00", align 1
@.str.37 = private unnamed_addr constant [413 x i8] c"040000c90000001e2fd3992f02000000b2ff099f9676cdff8b0bf8825d000000007905a9d28efeef4a47c6f9b06a0cecdb0070d920b898997c75b79636943ed42046a96142bd084a04acfa0c490f452d756dea02c0f927259f1f3231ac0d541a769129b740ce38090842b828c27fd729f59737ba98aa7b42e043c5da28f8dca8590b2df410d5134fd6c4cacad8b30370602afa35d265bf4d127976bb36dbda6a626f0270e20eebc73d6fcae2b1a0da122ee9042f76be56ebf41aa469c3d2c9da9197d80008002a00040000040016\00", align 1
@.str.38 = private unnamed_addr constant [445 x i8] c"3680c2b2109d25caa26c3b06eea9fdc5cb31613ba702176596da2e886bf6af93507bd68161ad9cb4780653842e1041ecbf0088a65ac4ef438419dd1d95ddd9bd2ad4484e7e167d0e6c008448ae58a0418713b6fc6c51e4bb23a537fb75a74f73de31fe6aa0bc522515f8b25f8955428b5de5ac06762cec22b0aa78c94385ef8e70fa24945b7c1f268510871689bbbbfaf2e7f4a19277024f95f1143ab12a31ec63adb128cb390711fd6d06a498df3e98615d8eb102e23353b480efcca5e8e0267a6d0fe2441f14c8c9664aefb2cfff6ae9e0442728b6a0940c1e824fda06\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"a688ebb5ac826d6f42d45c0cc44b9b7d\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"c1cad4425a438b5de714830a\00", align 1
@.str.41 = private unnamed_addr constant [103 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303117\00", align 1
@.str.42 = private unnamed_addr constant [135 x i8] c"8c3497da00ae023e53c01b4324b665404c1b49e78fe2bf4d17f6348ae8340551e363a0cd05f2179c4fef5ad689b5cae0bae94adc63632e571fb79aa91544c6394d28a1\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"88b96ad686c84be55ace18a59cce5c87\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"b99dc58cd5ff5ab082fdad19\00", align 1
@.str.45 = private unnamed_addr constant [135 x i8] c"f65f49fd2df6cd2347c3d30166e3cfddb6308a5906c076112c6a37ff1dbd406b5813c0abd734883017a6b2833186b13c14da5d75f33d8760789994e27d82043ab88d65\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"0000000000000001\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"010015\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"2c2148163d7938a35f6acf2a6606f8cbd1d9f2\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"f8141ebdb5eda511e0bce639a56ff9ea825a21\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"0000000000000002\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"refd\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Failed to get reference data\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"rec->data\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_tls13_encryption) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_tls13_encryption() #0 {
entry:
  %rec = alloca %struct.ssl3_record_st, align 8
  %key = alloca i8*, align 8
  %0 = bitcast %struct.ssl3_record_st* %rec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %1 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store i8* null, i8** %key, align 8, !tbaa !3
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #5
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 5
  store i8* null, i8** %data, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 1
  store i32 23, i32* %type, align 4, !tbaa !11
  %rec_version = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 0
  store i32 771, i32* %rec_version, align 8, !tbaa !12
  %call1 = tail call %struct.ssl_method_st* @TLS_method() #5
  %call2 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call1) #5
  %2 = bitcast %struct.ssl_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %err

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call2) #5
  %3 = bitcast %struct.ssl_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %err

if.end8:                                          ; preds = %if.end
  %call9 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 41
  store %struct.evp_cipher_ctx_st* %call9, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !13
  %4 = bitcast %struct.evp_cipher_ctx_st* %call9 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end8
  %call15 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 46
  store %struct.evp_cipher_ctx_st* %call15, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !26
  %5 = bitcast %struct.evp_cipher_ctx_st* %call15 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* noundef %5) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end14
  %call21 = tail call %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef nonnull %call4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #5
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 17, i32 20, i32 6
  store %struct.ssl_cipher_st* %call21, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !27
  %6 = bitcast %struct.ssl_cipher_st* %call21 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* noundef %6) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end20
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 42, i64 0
  %arraydecay30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 108, i32 18, i64 0
  %arraydecay36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 108, i32 19, i64 0
  %arraydecay41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call4, i64 0, i32 47, i64 0
  br label %for.body

if.then27:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %err

for.body:                                         ; preds = %for.cond.preheader, %if.end81
  %ctr.0133 = phi i64 [ 0, %for.cond.preheader ], [ %inc, %if.end81 ]
  %call29 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %call) #5
  %conv = sext i32 %call29 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.RECORD_DATA], [7 x %struct.RECORD_DATA]* @refdata, i64 0, i64 %ctr.0133
  %call31 = call fastcc i32 @load_record(%struct.ssl3_record_st* noundef nonnull %rec, %struct.RECORD_DATA* noundef nonnull %arrayidx, i8** noundef nonnull %key, i8* noundef nonnull %arraydecay, i64 noundef %conv, i8* noundef nonnull %arraydecay30) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0)) #5
  %.pre = load i8*, i8** %key, align 8, !tbaa !3
  br label %err

if.end34:                                         ; preds = %for.body
  %call40 = call i8* @memcpy(i8* noundef nonnull %arraydecay36, i8* noundef nonnull %arraydecay30, i64 noundef 8) #5
  %call44 = call i8* @memcpy(i8* noundef nonnull %arraydecay41, i8* noundef nonnull %arraydecay, i64 noundef %conv) #5
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !26
  %8 = load i8*, i8** %key, align 8, !tbaa !3
  %call46 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %7, %struct.evp_cipher_st* noundef %call, %struct.engine_st* noundef null, i8* noundef %8, i8* noundef null, i32 noundef 1) #5
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %9 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !13
  %call50 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %9, %struct.evp_cipher_st* noundef %call, %struct.engine_st* noundef null, i8* noundef %8, i8* noundef null, i32 noundef 0) #5
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end34
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %err

if.end54:                                         ; preds = %lor.lhs.false
  %call55 = call i32 @tls13_enc(%struct.ssl_st* noundef nonnull %call4, %struct.ssl3_record_st* noundef nonnull %rec, i64 noundef 1, i32 noundef 1, %struct.ssl_mac_buf_st* noundef null, i64 noundef 0) #5
  %conv56 = sext i32 %call55 to i64
  %call57 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %conv56, i64 noundef 1) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end54
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 noundef %ctr.0133) #5
  br label %err

if.end60:                                         ; preds = %if.end54
  %call62 = call fastcc i32 @test_record(%struct.ssl3_record_st* noundef nonnull %rec, %struct.RECORD_DATA* noundef nonnull %arrayidx, i32 noundef 1) #7
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv64) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end60
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i64 noundef %ctr.0133) #5
  br label %err

if.end68:                                         ; preds = %if.end60
  %call69 = call i32 @tls13_enc(%struct.ssl_st* noundef %call4, %struct.ssl3_record_st* noundef nonnull %rec, i64 noundef 1, i32 noundef 0, %struct.ssl_mac_buf_st* noundef null, i64 noundef 0) #5
  %call70 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call69, i32 noundef 1) #5
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end68
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i64 noundef %ctr.0133) #5
  br label %err

if.end73:                                         ; preds = %if.end68
  %call75 = call fastcc i32 @test_record(%struct.ssl3_record_st* noundef nonnull %rec, %struct.RECORD_DATA* noundef nonnull %arrayidx, i32 noundef 0) #7
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv77) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end73
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i64 noundef %ctr.0133) #5
  br label %err

if.end81:                                         ; preds = %if.end73
  %10 = load i8*, i8** %data, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 390) #5
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 391) #5
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 392) #5
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 393) #5
  store i8* null, i8** %data, align 8, !tbaa !7
  store i8* null, i8** %key, align 8, !tbaa !3
  %inc = add nuw nsw i64 %ctr.0133, 1
  %exitcond.not = icmp eq i64 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !28

for.end:                                          ; preds = %if.end81
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i64 noundef 7) #5
  br label %err

err:                                              ; preds = %if.end14, %if.end8, %for.end, %if.then80, %if.then72, %if.then67, %if.then59, %if.then53, %if.then33, %if.then27, %if.then7, %if.then
  %11 = phi i8* [ %8, %if.then53 ], [ %8, %if.then80 ], [ %8, %if.then72 ], [ %8, %if.then67 ], [ %8, %if.then59 ], [ %.pre, %if.then33 ], [ null, %for.end ], [ null, %if.then27 ], [ null, %if.end14 ], [ null, %if.end8 ], [ null, %if.then7 ], [ null, %if.then ]
  %s.0 = phi %struct.ssl_st* [ %call4, %if.then53 ], [ %call4, %if.then80 ], [ %call4, %if.then72 ], [ %call4, %if.then67 ], [ %call4, %if.then59 ], [ %call4, %if.then33 ], [ %call4, %for.end ], [ %call4, %if.then27 ], [ %call4, %if.end14 ], [ %call4, %if.end8 ], [ %call4, %if.then7 ], [ null, %if.then ]
  %ret.0 = phi i32 [ 0, %if.then53 ], [ 0, %if.then80 ], [ 0, %if.then72 ], [ 0, %if.then67 ], [ 0, %if.then59 ], [ 0, %if.then33 ], [ 1, %for.end ], [ 0, %if.then27 ], [ 0, %if.end14 ], [ 0, %if.end8 ], [ 0, %if.then7 ], [ 0, %if.then ]
  %12 = load i8*, i8** %data, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 404) #5
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 405) #5
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 406) #5
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 407) #5
  call void @SSL_free(%struct.ssl_st* noundef %s.0) #5
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_gcm() local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load_record(%struct.ssl3_record_st* nocapture noundef %rec, %struct.RECORD_DATA* nocapture noundef readonly %recd, i8** nocapture noundef %key, i8* noundef %iv, i64 noundef %ivlen, i8* noundef %seq) unnamed_addr #0 {
entry:
  %ptlen = alloca i64, align 8
  %0 = bitcast i64* %ptlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %key1 = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 2
  %1 = load i8*, i8** %key1, align 8, !tbaa !30
  %call = tail call i8* @OPENSSL_hexstr2buf(i8* noundef %1, i64* noundef null) #5
  store i8* %call, i8** %key, align 8, !tbaa !3
  %iv2 = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 3
  %2 = load i8*, i8** %iv2, align 8, !tbaa !32
  %call3 = tail call i8* @OPENSSL_hexstr2buf(i8* noundef %2, i64* noundef null) #5
  %seq4 = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 4
  %3 = load i8*, i8** %seq4, align 8, !tbaa !33
  %call5 = tail call i8* @OPENSSL_hexstr2buf(i8* noundef %3, i64* noundef null) #5
  %arraydecay = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 0, i64 0
  %call6 = call fastcc i8* @multihexstr2buf(i8** noundef %arraydecay, i64* noundef nonnull %ptlen) #7
  %4 = load i8*, i8** %key, align 8, !tbaa !3
  %cmp = icmp eq i8* %4, null
  %cmp7 = icmp eq i8* %call3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  %cmp9 = icmp eq i8* %call5, null
  %or.cond24 = select i1 %or.cond, i1 true, i1 %cmp9
  %cmp11 = icmp eq i8* %call6, null
  %or.cond25 = select i1 %or.cond24, i1 true, i1 %cmp11
  br i1 %or.cond25, label %err, label %if.end

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %ptlen, align 8, !tbaa !34
  %add = add i64 %5, 16
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 253) #5
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 6
  store i8* %call12, i8** %input, align 8, !tbaa !35
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 5
  store i8* %call12, i8** %data, align 8, !tbaa !7
  %cmp14 = icmp eq i8* %call12, null
  br i1 %cmp14, label %if.end.err_crit_edge, label %if.end16

if.end.err_crit_edge:                             ; preds = %if.end
  %.pre = load i8*, i8** %key, align 8, !tbaa !3
  br label %err

if.end16:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 2
  store i64 %5, i64* %length, align 8, !tbaa !36
  %call18 = tail call i8* @memcpy(i8* noundef nonnull %call12, i8* noundef nonnull %call6, i64 noundef %5) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260) #5
  %call19 = tail call i8* @memcpy(i8* noundef %seq, i8* noundef nonnull %call5, i64 noundef 8) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call5, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 262) #5
  %call20 = tail call i8* @memcpy(i8* noundef %iv, i8* noundef nonnull %call3, i64 noundef %ivlen) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 264) #5
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry
  %6 = phi i8* [ %.pre, %if.end.err_crit_edge ], [ %4, %entry ]
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 268) #5
  store i8* null, i8** %key, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 270) #5
  tail call void @CRYPTO_free(i8* noundef %call5, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 271) #5
  tail call void @CRYPTO_free(i8* noundef %call6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 272) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @tls13_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_record(%struct.ssl3_record_st* nocapture noundef readonly %rec, %struct.RECORD_DATA* nocapture noundef readonly %recd, i32 noundef %enc) unnamed_addr #0 {
entry:
  %refdatalen = alloca i64, align 8
  %0 = bitcast i64* %refdatalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i64 0, i64* %refdatalen, align 8, !tbaa !34
  %tobool.not = icmp eq i32 %enc, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 1, i64 0
  %call = call fastcc i8* @multihexstr2buf(i8** noundef nonnull %arraydecay, i64* noundef nonnull %refdatalen) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds %struct.RECORD_DATA, %struct.RECORD_DATA* %recd, i64 0, i32 0, i64 0
  %call2 = call fastcc i8* @multihexstr2buf(i8** noundef %arraydecay1, i64* noundef nonnull %refdatalen) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %refd.0 = phi i8* [ %call, %if.then ], [ %call2, %if.else ]
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef %refd.0) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0)) #5
  br label %err

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 5
  %1 = load i8*, i8** %data, align 8, !tbaa !7
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 2
  %2 = load i64, i64* %length, align 8, !tbaa !36
  %3 = load i64, i64* %refdatalen, align 8, !tbaa !34
  %call7 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef %1, i64 noundef %2, i8* noundef %refd.0, i64 noundef %3) #5
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.then5
  %ret.0 = phi i32 [ 0, %if.then5 ], [ %spec.select, %if.end6 ]
  tail call void @CRYPTO_free(i8* noundef %refd.0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 298) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @multihexstr2buf(i8** nocapture noundef readonly %str, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %str, align 8, !tbaa !3
  %call = tail call i64 @strlen(i8* noundef %0) #8
  %and = and i64 %call, 1
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %for.cond, label %cleanup38

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i8*, i8** %str, i64 1
  %1 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %call.1 = tail call i64 @strlen(i8* noundef %1) #8
  %add.1 = add i64 %call.1, %call
  %and.1 = and i64 %add.1, 1
  %cmp1.not.1 = icmp eq i64 %and.1, 0
  br i1 %cmp1.not.1, label %for.cond.1, label %cleanup38

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr inbounds i8*, i8** %str, i64 2
  %2 = load i8*, i8** %arrayidx.2, align 8, !tbaa !3
  %call.2 = tail call i64 @strlen(i8* noundef %2) #8
  %add.2 = add i64 %call.2, %add.1
  %and.2 = and i64 %add.2, 1
  %cmp1.not.2 = icmp eq i64 %and.2, 0
  br i1 %cmp1.not.2, label %for.cond.2, label %cleanup38

for.cond.2:                                       ; preds = %for.cond.1
  %div = lshr i64 %add.2, 1
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 216) #5
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cleanup38, label %for.cond9.preheader.preheader

for.cond9.preheader.preheader:                    ; preds = %for.cond.2
  %3 = load i8*, i8** %str, align 8, !tbaa !3
  %4 = load i8, i8* %3, align 1, !tbaa !37
  %cmp12.not78 = icmp eq i8 %4, 0
  br i1 %cmp12.not78, label %for.inc35, label %for.body14

for.body14:                                       ; preds = %for.cond9.preheader.preheader, %for.inc32
  %5 = phi i8 [ %9, %for.inc32 ], [ %4, %for.cond9.preheader.preheader ]
  %inner.080 = phi i64 [ %add33, %for.inc32 ], [ 0, %for.cond9.preheader.preheader ]
  %curr.179 = phi i64 [ %inc29, %for.inc32 ], [ 0, %for.cond9.preheader.preheader ]
  %call17 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %5) #5
  %6 = load i8*, i8** %str, align 8, !tbaa !3
  %add19 = or i64 %inner.080, 1
  %arrayidx20 = getelementptr inbounds i8, i8* %6, i64 %add19
  %7 = load i8, i8* %arrayidx20, align 1, !tbaa !37
  %call21 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %7) #5
  %cmp22 = icmp slt i32 %call17, 0
  %cmp24 = icmp slt i32 %call21, 0
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp24
  br i1 %or.cond, label %cleanup.thread, label %for.inc32

cleanup.thread:                                   ; preds = %for.body14, %for.body14.1, %for.body14.2
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef 228) #5
  br label %cleanup38

for.inc32:                                        ; preds = %for.body14
  %shl = shl i32 %call17, 4
  %or = or i32 %call21, %shl
  %conv28 = trunc i32 %or to i8
  %inc29 = add i64 %curr.179, 1
  %arrayidx30 = getelementptr inbounds i8, i8* %call2, i64 %curr.179
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !37
  %add33 = add i64 %inner.080, 2
  %8 = load i8*, i8** %str, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 %add33
  %9 = load i8, i8* %arrayidx11, align 1, !tbaa !37
  %cmp12.not = icmp eq i8 %9, 0
  br i1 %cmp12.not, label %for.inc35, label %for.body14, !llvm.loop !38

for.inc35:                                        ; preds = %for.inc32, %for.cond9.preheader.preheader
  %curr.1.lcssa = phi i64 [ 0, %for.cond9.preheader.preheader ], [ %inc29, %for.inc32 ]
  %10 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %11 = load i8, i8* %10, align 1, !tbaa !37
  %cmp12.not78.1 = icmp eq i8 %11, 0
  br i1 %cmp12.not78.1, label %for.inc35.1, label %for.body14.1

for.body14.1:                                     ; preds = %for.inc35, %for.inc32.1
  %12 = phi i8 [ %16, %for.inc32.1 ], [ %11, %for.inc35 ]
  %inner.080.1 = phi i64 [ %add33.1, %for.inc32.1 ], [ 0, %for.inc35 ]
  %curr.179.1 = phi i64 [ %inc29.1, %for.inc32.1 ], [ %curr.1.lcssa, %for.inc35 ]
  %call17.1 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %12) #5
  %13 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %add19.1 = or i64 %inner.080.1, 1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %13, i64 %add19.1
  %14 = load i8, i8* %arrayidx20.1, align 1, !tbaa !37
  %call21.1 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %14) #5
  %cmp22.1 = icmp slt i32 %call17.1, 0
  %cmp24.1 = icmp slt i32 %call21.1, 0
  %or.cond.1 = select i1 %cmp22.1, i1 true, i1 %cmp24.1
  br i1 %or.cond.1, label %cleanup.thread, label %for.inc32.1

for.inc32.1:                                      ; preds = %for.body14.1
  %shl.1 = shl i32 %call17.1, 4
  %or.1 = or i32 %call21.1, %shl.1
  %conv28.1 = trunc i32 %or.1 to i8
  %inc29.1 = add i64 %curr.179.1, 1
  %arrayidx30.1 = getelementptr inbounds i8, i8* %call2, i64 %curr.179.1
  store i8 %conv28.1, i8* %arrayidx30.1, align 1, !tbaa !37
  %add33.1 = add i64 %inner.080.1, 2
  %15 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %arrayidx11.1 = getelementptr inbounds i8, i8* %15, i64 %add33.1
  %16 = load i8, i8* %arrayidx11.1, align 1, !tbaa !37
  %cmp12.not.1 = icmp eq i8 %16, 0
  br i1 %cmp12.not.1, label %for.inc35.1, label %for.body14.1, !llvm.loop !38

for.inc35.1:                                      ; preds = %for.inc32.1, %for.inc35
  %curr.1.lcssa.1 = phi i64 [ %curr.1.lcssa, %for.inc35 ], [ %inc29.1, %for.inc32.1 ]
  %17 = load i8*, i8** %arrayidx.2, align 8, !tbaa !3
  %18 = load i8, i8* %17, align 1, !tbaa !37
  %cmp12.not78.2 = icmp eq i8 %18, 0
  br i1 %cmp12.not78.2, label %for.inc35.2, label %for.body14.2

for.body14.2:                                     ; preds = %for.inc35.1, %for.inc32.2
  %19 = phi i8 [ %23, %for.inc32.2 ], [ %18, %for.inc35.1 ]
  %inner.080.2 = phi i64 [ %add33.2, %for.inc32.2 ], [ 0, %for.inc35.1 ]
  %curr.179.2 = phi i64 [ %inc29.2, %for.inc32.2 ], [ %curr.1.lcssa.1, %for.inc35.1 ]
  %call17.2 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %19) #5
  %20 = load i8*, i8** %arrayidx.2, align 8, !tbaa !3
  %add19.2 = or i64 %inner.080.2, 1
  %arrayidx20.2 = getelementptr inbounds i8, i8* %20, i64 %add19.2
  %21 = load i8, i8* %arrayidx20.2, align 1, !tbaa !37
  %call21.2 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %21) #5
  %cmp22.2 = icmp slt i32 %call17.2, 0
  %cmp24.2 = icmp slt i32 %call21.2, 0
  %or.cond.2 = select i1 %cmp22.2, i1 true, i1 %cmp24.2
  br i1 %or.cond.2, label %cleanup.thread, label %for.inc32.2

for.inc32.2:                                      ; preds = %for.body14.2
  %shl.2 = shl i32 %call17.2, 4
  %or.2 = or i32 %call21.2, %shl.2
  %conv28.2 = trunc i32 %or.2 to i8
  %inc29.2 = add i64 %curr.179.2, 1
  %arrayidx30.2 = getelementptr inbounds i8, i8* %call2, i64 %curr.179.2
  store i8 %conv28.2, i8* %arrayidx30.2, align 1, !tbaa !37
  %add33.2 = add i64 %inner.080.2, 2
  %22 = load i8*, i8** %arrayidx.2, align 8, !tbaa !3
  %arrayidx11.2 = getelementptr inbounds i8, i8* %22, i64 %add33.2
  %23 = load i8, i8* %arrayidx11.2, align 1, !tbaa !37
  %cmp12.not.2 = icmp eq i8 %23, 0
  br i1 %cmp12.not.2, label %for.inc35.2, label %for.body14.2, !llvm.loop !38

for.inc35.2:                                      ; preds = %for.inc32.2, %for.inc35.1
  store i64 %div, i64* %len, align 8, !tbaa !34
  br label %cleanup38

cleanup38:                                        ; preds = %entry, %for.cond, %for.cond.1, %cleanup.thread, %for.cond.2, %for.inc35.2
  %retval.3 = phi i8* [ %call2, %for.inc35.2 ], [ null, %for.cond.2 ], [ null, %cleanup.thread ], [ null, %for.cond.1 ], [ null, %for.cond ], [ null, %entry ]
  ret i8* %retval.3
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 32}
!8 = !{!"ssl3_record_st", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !9, i64 56, !10, i64 64, !5, i64 72}
!9 = !{!"int", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !9, i64 4}
!12 = !{!8, !9, i64 0}
!13 = !{!14, !4, i64 2120}
!14 = !{!"ssl_st", !9, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !4, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !15, i64 72, !5, i64 132, !4, i64 136, !4, i64 144, !10, i64 152, !10, i64 160, !16, i64 168, !4, i64 1208, !4, i64 1216, !4, i64 1224, !9, i64 1232, !4, i64 1240, !19, i64 1248, !4, i64 1312, !4, i64 1320, !4, i64 1328, !4, i64 1336, !9, i64 1344, !5, i64 1348, !5, i64 1412, !5, i64 1476, !5, i64 1540, !5, i64 1604, !5, i64 1668, !5, i64 1732, !5, i64 1796, !5, i64 1860, !5, i64 1924, !5, i64 1988, !5, i64 2052, !4, i64 2120, !5, i64 2128, !4, i64 2144, !4, i64 2152, !4, i64 2160, !4, i64 2168, !5, i64 2176, !4, i64 2192, !4, i64 2200, !5, i64 2208, !10, i64 2272, !5, i64 2280, !10, i64 2288, !5, i64 2296, !4, i64 2328, !4, i64 2336, !4, i64 2344, !10, i64 2352, !4, i64 2360, !5, i64 2368, !10, i64 2400, !9, i64 2408, !4, i64 2416, !4, i64 2424, !9, i64 2432, !9, i64 2436, !4, i64 2440, !4, i64 2448, !4, i64 2456, !4, i64 2464, !4, i64 2472, !4, i64 2480, !10, i64 2488, !20, i64 2496, !4, i64 2512, !4, i64 2520, !5, i64 2528, !10, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !10, i64 2560, !9, i64 2568, !9, i64 2572, !10, i64 2576, !10, i64 2584, !10, i64 2592, !21, i64 2600, !4, i64 2904, !9, i64 2912, !4, i64 2920, !4, i64 2928, !4, i64 2936, !9, i64 2944, !4, i64 2952, !4, i64 2960, !4, i64 2968, !9, i64 2976, !9, i64 2980, !5, i64 2984, !9, i64 2988, !4, i64 2992, !10, i64 3000, !9, i64 3008, !4, i64 3016, !23, i64 3024, !4, i64 3152, !24, i64 3160, !4, i64 7448, !4, i64 7456, !4, i64 7464, !4, i64 7472, !10, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !4, i64 7504, !4, i64 7512, !10, i64 7520, !4, i64 7528, !10, i64 7536, !10, i64 7544, !10, i64 7552, !4, i64 7560, !4, i64 7568, !4, i64 7576, !4, i64 7584, !4, i64 7592, !10, i64 7600}
!15 = !{!"ossl_statem_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !5, i64 56}
!16 = !{!"", !10, i64 0, !10, i64 8, !5, i64 16, !10, i64 80, !5, i64 88, !5, i64 152, !5, i64 184, !9, i64 216, !9, i64 220, !4, i64 224, !4, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !5, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !17, i64 280, !5, i64 840, !10, i64 904, !5, i64 912, !10, i64 976, !9, i64 984, !9, i64 988, !4, i64 992, !10, i64 1000, !4, i64 1008, !10, i64 1016, !9, i64 1024, !5, i64 1028, !5, i64 1029, !18, i64 1030, !4, i64 1032}
!17 = !{!"", !5, i64 0, !10, i64 128, !5, i64 136, !10, i64 264, !10, i64 272, !9, i64 280, !4, i64 288, !4, i64 296, !9, i64 304, !4, i64 312, !10, i64 320, !4, i64 328, !10, i64 336, !4, i64 344, !4, i64 352, !4, i64 360, !9, i64 368, !10, i64 376, !4, i64 384, !9, i64 392, !4, i64 400, !10, i64 408, !4, i64 416, !10, i64 424, !4, i64 432, !10, i64 440, !4, i64 448, !4, i64 456, !4, i64 464, !4, i64 472, !10, i64 480, !10, i64 488, !4, i64 496, !5, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!18 = !{!"short", !5, i64 0}
!19 = !{!"ssl_dane_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 56}
!20 = !{!"crypto_ex_data_st", !4, i64 0, !4, i64 8}
!21 = !{!"", !5, i64 0, !4, i64 32, !4, i64 40, !4, i64 48, !9, i64 56, !4, i64 64, !18, i64 72, !9, i64 76, !22, i64 80, !9, i64 112, !9, i64 116, !10, i64 120, !4, i64 128, !10, i64 136, !4, i64 144, !10, i64 152, !4, i64 160, !10, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !10, i64 232, !4, i64 240, !10, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !4, i64 272, !10, i64 280, !9, i64 288, !5, i64 292, !9, i64 296}
!22 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !10, i64 24}
!23 = !{!"srp_ctx_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !9, i64 112, !10, i64 120}
!24 = !{!"record_layer_st", !4, i64 0, !9, i64 8, !9, i64 12, !10, i64 16, !10, i64 24, !25, i64 32, !5, i64 80, !5, i64 1616, !4, i64 4176, !10, i64 4184, !10, i64 4192, !5, i64 4200, !10, i64 4208, !10, i64 4216, !10, i64 4224, !9, i64 4232, !10, i64 4240, !4, i64 4248, !5, i64 4256, !5, i64 4264, !9, i64 4272, !9, i64 4276, !4, i64 4280}
!25 = !{!"ssl3_buffer_st", !4, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40}
!26 = !{!14, !4, i64 2168}
!27 = !{!14, !4, i64 736}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !4, i64 48}
!31 = !{!"", !5, i64 0, !5, i64 24, !4, i64 48, !4, i64 56, !4, i64 64}
!32 = !{!31, !4, i64 56}
!33 = !{!31, !4, i64 64}
!34 = !{!10, !10, i64 0}
!35 = !{!8, !4, i64 40}
!36 = !{!8, !10, i64 8}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !29}
