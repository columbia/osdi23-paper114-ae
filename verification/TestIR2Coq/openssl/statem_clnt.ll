; ModuleID = 'ssl/statem/statem_clnt.c'
source_filename = "ssl/statem/statem_clnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, {}*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, {}*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, {}*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
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
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.SSL_CERT_LOOKUP = type { i32, i32 }
%struct.ossl_param_bld_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"ssl/statem/statem_clnt.c\00", align 1
@__func__.ossl_statem_client_read_transition = private unnamed_addr constant [35 x i8] c"ossl_statem_client_read_transition\00", align 1
@__func__.ossl_statem_client_write_transition = private unnamed_addr constant [36 x i8] c"ossl_statem_client_write_transition\00", align 1
@__func__.ossl_statem_client_construct_message = private unnamed_addr constant [37 x i8] c"ossl_statem_client_construct_message\00", align 1
@__func__.ossl_statem_client_process_message = private unnamed_addr constant [35 x i8] c"ossl_statem_client_process_message\00", align 1
@__func__.ossl_statem_client_post_process_message = private unnamed_addr constant [40 x i8] c"ossl_statem_client_post_process_message\00", align 1
@__func__.tls_construct_client_hello = private unnamed_addr constant [27 x i8] c"tls_construct_client_hello\00", align 1
@__func__.dtls_process_hello_verify = private unnamed_addr constant [26 x i8] c"dtls_process_hello_verify\00", align 1
@__func__.tls_process_server_hello = private unnamed_addr constant [25 x i8] c"tls_process_server_hello\00", align 1
@hrrrandom = external constant [0 x i8], align 1
@__func__.tls_process_server_certificate = private unnamed_addr constant [31 x i8] c"tls_process_server_certificate\00", align 1
@__func__.tls_post_process_server_certificate = private unnamed_addr constant [36 x i8] c"tls_post_process_server_certificate\00", align 1
@__func__.tls_process_key_exchange = private unnamed_addr constant [25 x i8] c"tls_process_key_exchange\00", align 1
@__func__.tls_process_certificate_request = private unnamed_addr constant [32 x i8] c"tls_process_certificate_request\00", align 1
@__func__.tls_process_new_session_ticket = private unnamed_addr constant [31 x i8] c"tls_process_new_session_ticket\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@tls_process_new_session_ticket.nonce_label = internal constant [11 x i8] c"resumption\00", align 1
@__func__.tls_process_cert_status_body = private unnamed_addr constant [29 x i8] c"tls_process_cert_status_body\00", align 1
@__func__.tls_process_initial_server_flight = private unnamed_addr constant [34 x i8] c"tls_process_initial_server_flight\00", align 1
@__func__.tls_process_server_done = private unnamed_addr constant [24 x i8] c"tls_process_server_done\00", align 1
@__func__.tls_construct_client_key_exchange = private unnamed_addr constant [34 x i8] c"tls_construct_client_key_exchange\00", align 1
@__func__.tls_client_key_exchange_post_work = private unnamed_addr constant [34 x i8] c"tls_client_key_exchange_post_work\00", align 1
@__func__.tls_prepare_client_certificate = private unnamed_addr constant [31 x i8] c"tls_prepare_client_certificate\00", align 1
@__func__.tls_construct_client_certificate = private unnamed_addr constant [33 x i8] c"tls_construct_client_certificate\00", align 1
@__func__.ssl3_check_cert_and_algorithm = private unnamed_addr constant [30 x i8] c"ssl3_check_cert_and_algorithm\00", align 1
@__func__.tls_construct_next_proto = private unnamed_addr constant [25 x i8] c"tls_construct_next_proto\00", align 1
@__func__.tls_process_hello_req = private unnamed_addr constant [22 x i8] c"tls_process_hello_req\00", align 1
@__func__.tls_construct_end_of_early_data = private unnamed_addr constant [32 x i8] c"tls_construct_end_of_early_data\00", align 1
@__func__.ossl_statem_client13_write_transition = private unnamed_addr constant [38 x i8] c"ossl_statem_client13_write_transition\00", align 1
@__func__.set_client_ciphersuite = private unnamed_addr constant [23 x i8] c"set_client_ciphersuite\00", align 1
@__func__.tls_process_as_hello_retry_request = private unnamed_addr constant [35 x i8] c"tls_process_as_hello_retry_request\00", align 1
@__func__.tls_process_ske_psk_preamble = private unnamed_addr constant [29 x i8] c"tls_process_ske_psk_preamble\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1
@__func__.tls_process_ske_srp = private unnamed_addr constant [20 x i8] c"tls_process_ske_srp\00", align 1
@__func__.tls_process_ske_dhe = private unnamed_addr constant [20 x i8] c"tls_process_ske_dhe\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@__func__.tls_process_ske_ecdhe = private unnamed_addr constant [22 x i8] c"tls_process_ske_ecdhe\00", align 1
@__func__.tls_construct_cke_psk_preamble = private unnamed_addr constant [31 x i8] c"tls_construct_cke_psk_preamble\00", align 1
@__func__.tls_construct_cke_rsa = private unnamed_addr constant [22 x i8] c"tls_construct_cke_rsa\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@__func__.tls_construct_cke_dhe = private unnamed_addr constant [22 x i8] c"tls_construct_cke_dhe\00", align 1
@__func__.tls_construct_cke_ecdhe = private unnamed_addr constant [24 x i8] c"tls_construct_cke_ecdhe\00", align 1
@__func__.tls_construct_cke_gost = private unnamed_addr constant [23 x i8] c"tls_construct_cke_gost\00", align 1
@__func__.tls_construct_cke_gost18 = private unnamed_addr constant [25 x i8] c"tls_construct_cke_gost18\00", align 1
@__func__.tls_construct_cke_srp = private unnamed_addr constant [22 x i8] c"tls_construct_cke_srp\00", align 1
@__func__.tls_process_encrypted_extensions = private unnamed_addr constant [33 x i8] c"tls_process_encrypted_extensions\00", align 1
@__func__.ssl_cipher_list_to_bytes = private unnamed_addr constant [25 x i8] c"ssl_cipher_list_to_bytes\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"No ciphers enabled for max supported SSL/TLS version\00", align 1
@ssl_cipher_list_to_bytes.scsv = internal global %struct.ssl_cipher_st { i32 0, i8* null, i8* null, i32 50331903, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8
@ssl_cipher_list_to_bytes.scsv.9 = internal global %struct.ssl_cipher_st { i32 0, i8* null, i8* null, i32 50353664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_read_transition(%struct.ssl_st* noundef %s, i32 noundef %mt) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond269 = or i1 %cmp, %cmp5.not
  br i1 %or.cond269, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @ossl_statem_client13_read_transition(%struct.ssl_st* noundef nonnull %s, i32 noundef %mt) #11
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.err_crit_edge, label %cleanup

if.then.err_crit_edge:                            ; preds = %if.then
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc179.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre272 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc179.phi.trans.insert, align 8, !tbaa !22
  %enc_flags180.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre272, i64 0, i32 12
  %.pre273 = load i32, i32* %enc_flags180.phi.trans.insert, align 8, !tbaa !24
  %.pre274 = and i32 %.pre273, 8
  br label %err

if.end8:                                          ; preds = %land.lhs.true, %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %4, label %err [
    i32 12, label %sw.bb
    i32 46, label %sw.bb24
    i32 3, label %sw.bb29
    i32 4, label %sw.bb108
    i32 5, label %sw.bb116
    i32 6, label %sw.bb134
    i32 7, label %sw.bb143
    i32 18, label %sw.bb148
    i32 9, label %sw.bb163
    i32 10, label %sw.bb168
    i32 1, label %sw.bb173
  ]

sw.bb:                                            ; preds = %if.end8
  %cmp9 = icmp eq i32 %mt, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %sw.bb
  store i32 3, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %tobool17 = icmp ne i32 %and, 0
  %cmp19 = icmp eq i32 %mt, 3
  %or.cond194 = and i1 %cmp19, %tobool17
  br i1 %or.cond194, label %if.then20, label %err

if.then20:                                        ; preds = %if.end12
  store i32 2, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb24:                                          ; preds = %if.end8
  %cmp25 = icmp eq i32 %mt, 2
  br i1 %cmp25, label %if.then26, label %err

if.then26:                                        ; preds = %sw.bb24
  store i32 3, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb29:                                          ; preds = %if.end8
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %5 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %if.else43, label %if.then31

if.then31:                                        ; preds = %sw.bb29
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %6 = load i32, i32* %ticket_expected, align 8, !tbaa !29
  %tobool32.not = icmp eq i32 %6, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then31
  %cmp34 = icmp eq i32 %mt, 4
  br i1 %cmp34, label %if.then35, label %err

if.then35:                                        ; preds = %if.then33
  store i32 9, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else:                                          ; preds = %if.then31
  %cmp38 = icmp eq i32 %mt, 257
  br i1 %cmp38, label %if.then39, label %if.end187

if.then39:                                        ; preds = %if.else
  store i32 10, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else43:                                        ; preds = %sw.bb29
  %tobool48 = icmp ne i32 %and, 0
  %cmp50 = icmp eq i32 %mt, 3
  %or.cond = and i1 %cmp50, %tobool48
  br i1 %or.cond, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else43
  store i32 2, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else53:                                        ; preds = %if.else43
  %version54 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %7 = load i32, i32* %version54, align 8, !tbaa !30
  %cmp55 = icmp sgt i32 %7, 768
  br i1 %cmp55, label %land.lhs.true56, label %if.else67

land.lhs.true56:                                  ; preds = %if.else53
  %session_secret_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  %8 = load i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb, align 8, !tbaa !31
  %cmp58.not = icmp eq i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %8, null
  br i1 %cmp58.not, label %if.else67, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 26, i32 1
  %10 = load i8*, i8** %tick, align 8, !tbaa !33
  %cmp61 = icmp ne i8* %10, null
  %cmp63 = icmp eq i32 %mt, 257
  %or.cond189 = and i1 %cmp63, %cmp61
  br i1 %or.cond189, label %if.then64, label %if.else67

if.then64:                                        ; preds = %land.lhs.true59
  store i32 1, i32* %hit, align 8, !tbaa !28
  store i32 10, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else67:                                        ; preds = %land.lhs.true59, %land.lhs.true56, %if.else53
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %11 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %11, i64 0, i32 5
  %12 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and68 = and i32 %12, 84
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then70, label %if.else75

if.then70:                                        ; preds = %if.else67
  %cmp71 = icmp eq i32 %mt, 11
  br i1 %cmp71, label %if.then72, label %err

if.then72:                                        ; preds = %if.then70
  store i32 4, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else75:                                        ; preds = %if.else67
  %call76 = tail call fastcc i32 @key_exchange_expected(%struct.ssl_st* noundef nonnull %s) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %lor.lhs.false, label %if.then85

lor.lhs.false:                                    ; preds = %if.else75
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %11, i64 0, i32 4
  %13 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %and81 = and i32 %13, 456
  %tobool82 = icmp ne i32 %and81, 0
  %cmp84 = icmp eq i32 %mt, 12
  %or.cond190 = and i1 %cmp84, %tobool82
  br i1 %or.cond190, label %if.then87, label %if.else90

if.then85:                                        ; preds = %if.else75
  %cmp86 = icmp eq i32 %mt, 12
  br i1 %cmp86, label %if.then87, label %err

if.then87:                                        ; preds = %lor.lhs.false, %if.then85
  store i32 6, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else90:                                        ; preds = %lor.lhs.false
  switch i32 %mt, label %err [
    i32 13, label %land.lhs.true92
    i32 14, label %if.then99
  ]

land.lhs.true92:                                  ; preds = %if.else90
  %call93 = tail call fastcc i32 @cert_req_allowed(%struct.ssl_st* noundef nonnull %s) #11
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end187, label %if.then95

if.then95:                                        ; preds = %land.lhs.true92
  store i32 7, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.then99:                                        ; preds = %if.else90
  store i32 8, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb108:                                         ; preds = %if.end8
  %status_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 7
  %14 = load i32, i32* %status_expected, align 4, !tbaa !40
  %tobool110 = icmp ne i32 %14, 0
  %cmp112 = icmp eq i32 %mt, 22
  %or.cond191 = and i1 %cmp112, %tobool110
  br i1 %or.cond191, label %if.then113, label %sw.bb116

if.then113:                                       ; preds = %sw.bb108
  store i32 5, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb116:                                         ; preds = %sw.bb108, %if.end8
  %call117 = tail call fastcc i32 @key_exchange_expected(%struct.ssl_st* noundef nonnull %s) #11
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %lor.lhs.false119, label %if.then128

lor.lhs.false119:                                 ; preds = %sw.bb116
  %new_cipher122 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %15 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher122, align 8, !tbaa !36
  %algorithm_mkey123 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %15, i64 0, i32 4
  %16 = load i32, i32* %algorithm_mkey123, align 4, !tbaa !39
  %and124 = and i32 %16, 456
  %tobool125 = icmp ne i32 %and124, 0
  %cmp127 = icmp eq i32 %mt, 12
  %or.cond192 = and i1 %cmp127, %tobool125
  br i1 %or.cond192, label %if.then130, label %sw.bb134

if.then128:                                       ; preds = %sw.bb116
  %cmp129 = icmp eq i32 %mt, 12
  br i1 %cmp129, label %if.then130, label %err

if.then130:                                       ; preds = %lor.lhs.false119, %if.then128
  store i32 6, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb134:                                         ; preds = %lor.lhs.false119, %if.end8
  switch i32 %mt, label %err [
    i32 13, label %if.then136
    i32 14, label %if.then145
  ]

if.then136:                                       ; preds = %sw.bb134
  %call137 = tail call fastcc i32 @cert_req_allowed(%struct.ssl_st* noundef nonnull %s) #11
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end187, label %if.then139

if.then139:                                       ; preds = %if.then136
  store i32 7, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb143:                                         ; preds = %if.end8
  %cmp144 = icmp eq i32 %mt, 14
  br i1 %cmp144, label %if.then145, label %err

if.then145:                                       ; preds = %sw.bb134, %sw.bb143
  store i32 8, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb148:                                         ; preds = %if.end8
  %ticket_expected150 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %17 = load i32, i32* %ticket_expected150, align 8, !tbaa !29
  %tobool151.not = icmp eq i32 %17, 0
  br i1 %tobool151.not, label %if.else157, label %if.then152

if.then152:                                       ; preds = %sw.bb148
  %cmp153 = icmp eq i32 %mt, 4
  br i1 %cmp153, label %if.then154, label %err

if.then154:                                       ; preds = %if.then152
  store i32 9, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else157:                                       ; preds = %sw.bb148
  %cmp158 = icmp eq i32 %mt, 257
  br i1 %cmp158, label %if.then159, label %if.end187

if.then159:                                       ; preds = %if.else157
  store i32 10, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb163:                                         ; preds = %if.end8
  %cmp164 = icmp eq i32 %mt, 257
  br i1 %cmp164, label %if.then165, label %if.end187

if.then165:                                       ; preds = %sw.bb163
  store i32 10, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb168:                                         ; preds = %if.end8
  %cmp169 = icmp eq i32 %mt, 20
  br i1 %cmp169, label %if.then170, label %err

if.then170:                                       ; preds = %sw.bb168
  store i32 11, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb173:                                         ; preds = %if.end8
  %cmp174 = icmp eq i32 %mt, 0
  br i1 %cmp174, label %if.then175, label %err

if.then175:                                       ; preds = %sw.bb173
  store i32 41, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

err:                                              ; preds = %if.then.err_crit_edge, %sw.bb134, %if.else90, %if.end8, %if.end12, %sw.bb24, %if.then70, %if.then85, %if.then33, %sw.bb143, %if.then152, %sw.bb168, %sw.bb173, %if.then128
  %and181.pre-phi = phi i32 [ %.pre274, %if.then.err_crit_edge ], [ %and, %sw.bb134 ], [ %and, %if.else90 ], [ %and, %if.end8 ], [ %and, %if.end12 ], [ %and, %sw.bb24 ], [ %and, %if.then70 ], [ %and, %if.then85 ], [ %and, %if.then33 ], [ %and, %sw.bb143 ], [ %and, %if.then152 ], [ %and, %sw.bb168 ], [ %and, %sw.bb173 ], [ %and, %if.then128 ]
  %tobool182 = icmp ne i32 %and181.pre-phi, 0
  %cmp184 = icmp eq i32 %mt, 257
  %or.cond193 = and i1 %cmp184, %tobool182
  br i1 %or.cond193, label %if.then185, label %if.end187

if.then185:                                       ; preds = %err
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !41
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate, align 8, !tbaa !42
  %call186 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #12
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %call186, i32 noundef 15) #12
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call186, i32 noundef 9) #12
  br label %cleanup

if.end187:                                        ; preds = %if.then136, %sw.bb163, %if.else157, %if.else, %land.lhs.true92, %err
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_statem_client_read_transition, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end187, %if.then185, %if.then175, %if.then170, %if.then165, %if.then159, %if.then154, %if.then145, %if.then139, %if.then130, %if.then113, %if.then99, %if.then95, %if.then87, %if.then72, %if.then64, %if.then51, %if.then39, %if.then35, %if.then26, %if.then20, %if.then10
  %retval.0 = phi i32 [ 0, %if.then185 ], [ 0, %if.end187 ], [ 1, %if.then175 ], [ 1, %if.then170 ], [ 1, %if.then165 ], [ 1, %if.then154 ], [ 1, %if.then159 ], [ 1, %if.then145 ], [ 1, %if.then139 ], [ 1, %if.then130 ], [ 1, %if.then113 ], [ 1, %if.then35 ], [ 1, %if.then39 ], [ 1, %if.then51 ], [ 1, %if.then64 ], [ 1, %if.then87 ], [ 1, %if.then95 ], [ 1, %if.then99 ], [ 1, %if.then72 ], [ 1, %if.then26 ], [ 1, %if.then10 ], [ 1, %if.then20 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_statem_client13_read_transition(%struct.ssl_st* noundef %s, i32 noundef %mt) unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %cleanup [
    i32 12, label %sw.bb
    i32 3, label %sw.bb2
    i32 38, label %sw.bb7
    i32 7, label %sw.bb22
    i32 4, label %sw.bb27
    i32 39, label %sw.bb32
    i32 1, label %sw.bb37
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i32 %mt, 2
  br i1 %cmp, label %cleanup.sink.split, label %cleanup

sw.bb2:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %mt, 8
  br i1 %cmp3, label %cleanup.sink.split, label %cleanup

sw.bb7:                                           ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb7
  %cmp9 = icmp eq i32 %mt, 20
  br i1 %cmp9, label %cleanup.sink.split, label %cleanup

if.else:                                          ; preds = %sw.bb7
  switch i32 %mt, label %cleanup [
    i32 13, label %cleanup.sink.split
    i32 11, label %if.then18
  ]

if.then18:                                        ; preds = %if.else
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %entry
  %cmp23 = icmp eq i32 %mt, 11
  br i1 %cmp23, label %cleanup.sink.split, label %cleanup

sw.bb27:                                          ; preds = %entry
  %cmp28 = icmp eq i32 %mt, 15
  br i1 %cmp28, label %cleanup.sink.split, label %cleanup

sw.bb32:                                          ; preds = %entry
  %cmp33 = icmp eq i32 %mt, 20
  br i1 %cmp33, label %cleanup.sink.split, label %cleanup

sw.bb37:                                          ; preds = %entry
  switch i32 %mt, label %cleanup [
    i32 4, label %cleanup.sink.split
    i32 24, label %if.then43
    i32 13, label %if.then47
  ]

if.then43:                                        ; preds = %sw.bb37
  br label %cleanup.sink.split

if.then47:                                        ; preds = %sw.bb37
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %4, 8
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then47
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %5 = load i32, i32* %post_handshake_auth, align 8, !tbaa !43
  %cmp49 = icmp eq i32 %5, 1
  br i1 %cmp49, label %if.then50, label %cleanup

if.then50:                                        ; preds = %land.lhs.true
  store i32 4, i32* %post_handshake_auth, align 8, !tbaa !43
  %call = tail call i32 @tls13_restore_handshake_digest_for_pha(%struct.ssl_st* noundef nonnull %s) #12
  %tobool52.not = icmp eq i32 %call, 0
  br i1 %tobool52.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then50, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb22, %if.else, %if.then8, %sw.bb2, %sw.bb, %if.then18, %if.then43
  %.sink = phi i32 [ 45, %if.then43 ], [ 4, %if.then18 ], [ 3, %sw.bb ], [ 38, %sw.bb2 ], [ 11, %if.then8 ], [ 7, %if.else ], [ 4, %sw.bb22 ], [ 39, %sw.bb27 ], [ 11, %sw.bb32 ], [ 9, %sw.bb37 ], [ 7, %if.then50 ]
  store i32 %.sink, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %sw.bb, %sw.bb2, %if.then8, %sw.bb22, %sw.bb27, %sw.bb32, %if.then47, %land.lhs.true, %if.else, %sw.bb37, %if.then50
  %retval.0 = phi i32 [ 0, %if.then50 ], [ 0, %sw.bb37 ], [ 0, %if.else ], [ 0, %land.lhs.true ], [ 0, %if.then47 ], [ 0, %sw.bb32 ], [ 0, %sw.bb27 ], [ 0, %sw.bb22 ], [ 0, %if.then8 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ 0, %entry ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @key_exchange_expected(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #2 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %2 = and i32 %1, 422
  %tobool.not = icmp ne i32 %2, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @cert_req_allowed(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #2 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !30
  %cmp = icmp slt i32 %0, 769
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 5
  %2 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %and5 = and i32 %2, 80
  %tobool6.not = icmp eq i32 %and5, 0
  %narrow = select i1 %or.cond, i1 %tobool6.not, i1 false
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #3

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_write_transition(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @ossl_statem_client13_write_transition(%struct.ssl_st* noundef nonnull %s) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
    i32 12, label %sw.bb11
    i32 3, label %sw.bb21
    i32 46, label %cleanup
    i32 2, label %sw.bb34
    i32 8, label %sw.bb36
    i32 13, label %sw.bb43
    i32 14, label %sw.bb45
    i32 15, label %sw.bb61
    i32 16, label %sw.bb63
    i32 17, label %sw.bb88
    i32 18, label %sw.bb90
    i32 11, label %sw.bb95
    i32 41, label %sw.bb102
  ]

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_statem_client_write_transition, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %5 = load i32, i32* %renegotiate, align 8, !tbaa !44
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %cleanup, label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb, %if.end
  store i32 12, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %6 = load i32, i32* %early_data_state, align 4, !tbaa !45
  %cmp12 = icmp eq i32 %6, 2
  br i1 %cmp12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %sw.bb11
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %7 = load i64, i64* %options, align 8, !tbaa !46
  %and14 = and i64 %7, 1048576
  %cmp15.not = icmp eq i64 %and14, 0
  %. = select i1 %cmp15.not, i32 46, i32 16
  store i32 %., i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %options22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %8 = load i64, i64* %options22, align 8, !tbaa !46
  %and23 = and i64 %8, 1048576
  %cmp24.not = icmp eq i64 %and23, 0
  br i1 %cmp24.not, label %if.else30, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %sw.bb21
  %early_data_state26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %9 = load i32, i32* %early_data_state26, align 4, !tbaa !45
  %cmp27.not = icmp eq i32 %9, 7
  br i1 %cmp27.not, label %if.else30, label %if.end32

if.else30:                                        ; preds = %land.lhs.true25, %sw.bb21
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true25, %if.else30
  %storemerge159 = phi i32 [ 12, %if.else30 ], [ 16, %land.lhs.true25 ]
  store i32 %storemerge159, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  store i32 12, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %10 = load i32, i32* %cert_req, align 8, !tbaa !47
  %tobool37.not = icmp eq i32 %10, 0
  %.161 = select i1 %tobool37.not, i32 14, i32 13
  store i32 %.161, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  store i32 14, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  %cert_req48 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %11 = load i32, i32* %cert_req48, align 8, !tbaa !47
  %cmp49 = icmp eq i32 %11, 1
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %12 = load i64, i64* %flags, align 8, !tbaa !48
  %and56 = and i64 %12, 16
  %tobool57.not = icmp eq i64 %and56, 0
  %13 = select i1 %tobool57.not, i1 %cmp49, i1 false
  %spec.store.select = select i1 %13, i32 15, i32 16
  store i32 %spec.store.select, i32* %hand_state, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  store i32 16, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %14 = load i32, i32* %hello_retry_request, align 8, !tbaa !49
  %cmp64 = icmp eq i32 %14, 1
  br i1 %cmp64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %sw.bb63
  store i32 12, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else67:                                        ; preds = %sw.bb63
  %early_data_state68 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %15 = load i32, i32* %early_data_state68, align 4, !tbaa !45
  %cmp69 = icmp eq i32 %15, 2
  br i1 %cmp69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.else67
  store i32 46, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else72:                                        ; preds = %if.else67
  br i1 %tobool.not, label %land.lhs.true78, label %if.else83

land.lhs.true78:                                  ; preds = %if.else72
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  %16 = load i32, i32* %npn_seen, align 4, !tbaa !50
  %tobool80.not = icmp eq i32 %16, 0
  br i1 %tobool80.not, label %if.else83, label %if.then81

if.then81:                                        ; preds = %land.lhs.true78
  store i32 17, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else83:                                        ; preds = %land.lhs.true78, %if.else72
  store i32 18, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb88:                                          ; preds = %if.end
  store i32 18, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb90:                                          ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %17 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool91.not = icmp eq i32 %17, 0
  br i1 %tobool91.not, label %cleanup, label %if.then92

if.then92:                                        ; preds = %sw.bb90
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  %hit96 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %18 = load i32, i32* %hit96, align 8, !tbaa !28
  %tobool97.not = icmp eq i32 %18, 0
  br i1 %tobool97.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %sw.bb95
  store i32 16, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else100:                                       ; preds = %sw.bb95
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb102:                                         ; preds = %if.end
  %call103 = tail call i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #12
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end111, label %if.then105

if.then105:                                       ; preds = %sw.bb102
  %call106 = tail call i32 @tls_setup_handshake(%struct.ssl_st* noundef nonnull %s) #12
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %if.end109

if.end109:                                        ; preds = %if.then105
  store i32 12, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end111:                                        ; preds = %sw.bb102
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %sw.bb45, %if.then105, %sw.bb90, %if.then65, %if.then81, %if.else83, %if.then70, %if.end, %sw.bb11, %sw.bb, %if.end111, %if.end109, %if.else100, %if.then98, %if.then92, %sw.bb88, %sw.bb61, %sw.bb43, %sw.bb36, %sw.bb34, %if.end32, %if.then13, %sw.bb9, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %if.end109 ], [ 1, %if.end111 ], [ 1, %if.then98 ], [ 1, %if.else100 ], [ 1, %if.then92 ], [ 1, %sw.bb88 ], [ 1, %sw.bb61 ], [ 1, %sw.bb43 ], [ 1, %sw.bb36 ], [ 1, %sw.bb34 ], [ 1, %if.end32 ], [ 1, %if.then13 ], [ 1, %sw.bb9 ], [ %call, %if.then ], [ 2, %sw.bb ], [ 2, %sw.bb11 ], [ 2, %if.end ], [ 1, %if.then70 ], [ 1, %if.else83 ], [ 1, %if.then81 ], [ 1, %if.then65 ], [ 2, %sw.bb90 ], [ 0, %if.then105 ], [ 1, %sw.bb45 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_statem_client13_write_transition(%struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 11, label %sw.bb8
    i32 47, label %sw.bb29
    i32 48, label %sw.bb35
    i32 16, label %sw.bb35
    i32 13, label %sw.bb43
    i32 15, label %sw.bb51
    i32 45, label %sw.bb53
    i32 43, label %sw.bb53
    i32 9, label %sw.bb53
    i32 18, label %sw.bb53
    i32 1, label %sw.bb55
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.ossl_statem_client13_write_transition, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %1 = load i32, i32* %post_handshake_auth, align 8, !tbaa !43
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 13, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %2 = load i32, i32* %shutdown, align 4, !tbaa !51
  %and = and i32 %2, 1
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.ossl_statem_client13_write_transition, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %3 = load i32, i32* %early_data_state, align 4, !tbaa !45
  switch i32 %3, label %if.else [
    i32 3, label %if.then14
    i32 7, label %if.then14
  ]

if.then14:                                        ; preds = %sw.bb8, %sw.bb8
  store i32 47, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else:                                          ; preds = %sw.bb8
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %4 = load i64, i64* %options, align 8, !tbaa !46
  %and16 = and i64 %4, 1048576
  %cmp17.not = icmp eq i64 %and16, 0
  br i1 %cmp17.not, label %if.else23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %5 = load i32, i32* %hello_retry_request, align 8, !tbaa !49
  %cmp19 = icmp eq i32 %5, 0
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true
  store i32 16, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else23:                                        ; preds = %land.lhs.true, %if.else
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %6 = load i32, i32* %cert_req, align 8, !tbaa !47
  %cmp24.not = icmp eq i32 %6, 0
  %cond = select i1 %cmp24.not, i32 18, i32 13
  store i32 %cond, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %7 = load i32, i32* %early_data, align 8, !tbaa !52
  %cmp30 = icmp eq i32 %7, 2
  br i1 %cmp30, label %if.then32, label %sw.bb35

if.then32:                                        ; preds = %sw.bb29
  store i32 48, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb29, %entry, %entry
  %cert_req38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %8 = load i32, i32* %cert_req38, align 8, !tbaa !47
  %cmp39.not = icmp eq i32 %8, 0
  %cond41 = select i1 %cmp39.not, i32 18, i32 13
  store i32 %cond41, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %cert_req46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %9 = load i32, i32* %cert_req46, align 8, !tbaa !47
  %cmp47 = icmp eq i32 %9, 1
  %cond49 = select i1 %cmp47, i32 15, i32 18
  store i32 %cond49, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  store i32 18, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb53:                                          ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  %10 = load i32, i32* %key_update, align 4, !tbaa !53
  %cmp56.not = icmp eq i32 %10, -1
  br i1 %cmp56.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  store i32 43, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %sw.bb55, %if.then14, %if.else23, %if.then21, %if.then58, %sw.bb53, %sw.bb51, %sw.bb43, %sw.bb35, %if.then32, %if.end6, %if.then5, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %if.then58 ], [ 1, %sw.bb53 ], [ 1, %sw.bb51 ], [ 1, %sw.bb43 ], [ 1, %sw.bb35 ], [ 1, %if.then32 ], [ 1, %if.then ], [ 1, %if.end6 ], [ 0, %if.then5 ], [ 1, %if.then21 ], [ 1, %if.else23 ], [ 1, %if.then14 ], [ 2, %sw.bb55 ]
  ret i32 %retval.0
}

declare i32 @ssl3_renegotiate_check(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tls_setup_handshake(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_pre_work(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.epilog [
    i32 12, label %sw.bb
    i32 16, label %sw.bb4
    i32 47, label %sw.bb15
    i32 46, label %sw.bb20
    i32 1, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown, align 4, !tbaa !51
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb
  %call = tail call i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef nonnull %s) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %method5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method5, align 8, !tbaa !4
  %ssl3_enc6 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc6, align 8, !tbaa !22
  %enc_flags7 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags7, align 8, !tbaa !24
  %and8 = and i32 %6, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.epilog, label %if.then10

if.then10:                                        ; preds = %sw.bb4
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %7 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %sw.epilog, label %if.then12

if.then12:                                        ; preds = %if.then10
  %use_timer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 0, i32* %use_timer, align 4, !tbaa !54
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %8 = load i32, i32* %early_data_state, align 4, !tbaa !45
  switch i32 %8, label %sw.bb20 [
    i32 7, label %cleanup
    i32 0, label %cleanup
  ]

sw.bb20:                                          ; preds = %sw.bb15, %entry
  %call21 = tail call i32 @tls_finish_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst, i32 noundef 0, i32 noundef 1) #12
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %call23 = tail call i32 @tls_finish_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst, i32 noundef 1, i32 noundef 1) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %if.then12, %if.then10, %sw.bb, %if.then, %entry
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb15, %if.then, %sw.epilog, %sw.bb22, %sw.bb20
  %retval.0 = phi i32 [ 2, %sw.epilog ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb20 ], [ 0, %if.then ], [ 2, %sw.bb15 ], [ 2, %sw.bb15 ]
  ret i32 %retval.0
}

declare i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls_finish_handshake(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_post_work(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #0 {
entry:
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !41
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.epilog [
    i32 12, label %sw.bb
    i32 48, label %sw.bb15
    i32 14, label %sw.bb17
    i32 16, label %sw.bb22
    i32 18, label %sw.bb81
    i32 43, label %sw.bb116
  ]

sw.bb:                                            ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %1 = load i32, i32* %early_data_state, align 4, !tbaa !45
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %2 = load i32, i32* %max_early_data, align 8, !tbaa !55
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %3 = load i64, i64* %options, align 8, !tbaa !46
  %and = and i64 %3, 1048576
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.then
  %call = tail call i32 @tls13_change_cipher_state(%struct.ssl_st* noundef nonnull %s, i32 noundef 82) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %call6 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.else, %if.then, %if.then3
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and11 = and i32 %6, 8
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %sw.epilog, label %if.then13

if.then13:                                        ; preds = %if.end10
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  store i32 1, i32* %first_packet, align 8, !tbaa !56
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !57
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %7) #12
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !57
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %call18 = tail call i32 @tls_client_key_exchange_post_work(%struct.ssl_st* noundef nonnull %s) #11
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup, label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %method23 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method23, align 8, !tbaa !4
  %ssl3_enc24 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc24, align 8, !tbaa !22
  %enc_flags25 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 12
  %10 = load i32, i32* %enc_flags25, align 8, !tbaa !24
  %and26 = and i32 %10, 8
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %lor.lhs.false

land.lhs.true28:                                  ; preds = %sw.bb22
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !26
  %cmp30 = icmp slt i32 %11, 772
  %cmp34.not = icmp eq i32 %11, 65536
  %or.cond = or i1 %cmp30, %cmp34.not
  br i1 %or.cond, label %lor.lhs.false, label %sw.epilog

lor.lhs.false:                                    ; preds = %land.lhs.true28, %sw.bb22
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %12 = load i32, i32* %hello_retry_request, align 8, !tbaa !49
  %cmp35 = icmp eq i32 %12, 1
  br i1 %cmp35, label %sw.epilog, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false
  %early_data_state38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %13 = load i32, i32* %early_data_state38, align 4, !tbaa !45
  %cmp39 = icmp eq i32 %13, 2
  br i1 %cmp39, label %land.lhs.true40, label %if.end48

land.lhs.true40:                                  ; preds = %if.end37
  %max_early_data41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %14 = load i32, i32* %max_early_data41, align 8, !tbaa !55
  %cmp42.not = icmp eq i32 %14, 0
  br i1 %cmp42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  %call44 = tail call i32 @tls13_change_cipher_state(%struct.ssl_st* noundef nonnull %s, i32 noundef 82) #12
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %sw.epilog

if.end48:                                         ; preds = %land.lhs.true40, %if.end37
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %15 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %16 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %16, i64 0, i32 20
  store %struct.ssl_cipher_st* %15, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !58
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  %17 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !59
  %cmp51 = icmp eq %struct.ssl_comp_st* %17, null
  br i1 %cmp51, label %if.end60, label %if.else54

if.else54:                                        ; preds = %if.end48
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %17, i64 0, i32 0
  %18 = load i32, i32* %id, align 8, !tbaa !60
  br label %if.end60

if.end60:                                         ; preds = %if.end48, %if.else54
  %.sink = phi i32 [ %18, %if.else54 ], [ 0, %if.end48 ]
  %19 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %16, i64 0, i32 19
  store i32 %.sink, i32* %19, align 4
  %setup_key_block = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 2
  %20 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %setup_key_block, align 8, !tbaa !62
  %call63 = tail call i32 %20(%struct.ssl_st* noundef nonnull %s) #12
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup, label %if.end66

if.end66:                                         ; preds = %if.end60
  %21 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method23, align 8, !tbaa !4
  %ssl3_enc68 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 25
  %22 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc68, align 8, !tbaa !22
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %22, i64 0, i32 4
  %change_cipher_state69 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %23 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state69, align 8, !tbaa !63
  %call70 = tail call i32 %23(%struct.ssl_st* noundef nonnull %s, i32 noundef 18) #12
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cleanup, label %if.end73

if.end73:                                         ; preds = %if.end66
  %24 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method23, align 8, !tbaa !4
  %ssl3_enc75 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %24, i64 0, i32 25
  %25 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc75, align 8, !tbaa !22
  %enc_flags76 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %25, i64 0, i32 12
  %26 = load i32, i32* %enc_flags76, align 8, !tbaa !24
  %and77 = and i32 %26, 8
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %sw.epilog, label %if.then79

if.then79:                                        ; preds = %if.end73
  tail call void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #12
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  %call82 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #12
  %cmp83.not = icmp eq i32 %call82, 1
  br i1 %cmp83.not, label %if.end85, label %cleanup

if.end85:                                         ; preds = %sw.bb81
  %method86 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %27 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method86, align 8, !tbaa !4
  %ssl3_enc87 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 25
  %28 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc87, align 8, !tbaa !22
  %enc_flags88 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %28, i64 0, i32 12
  %29 = load i32, i32* %enc_flags88, align 8, !tbaa !24
  %and89 = and i32 %29, 8
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %sw.epilog

land.lhs.true91:                                  ; preds = %if.end85
  %version93 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 0
  %30 = load i32, i32* %version93, align 8, !tbaa !26
  %cmp94 = icmp slt i32 %30, 772
  %cmp98.not = icmp eq i32 %30, 65536
  %or.cond168 = or i1 %cmp94, %cmp98.not
  br i1 %or.cond168, label %sw.epilog, label %if.then99

if.then99:                                        ; preds = %land.lhs.true91
  %call100 = tail call i32 @tls13_save_handshake_digest_for_pha(%struct.ssl_st* noundef nonnull %s) #12
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %cleanup, label %if.end103

if.end103:                                        ; preds = %if.then99
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %31 = load i32, i32* %post_handshake_auth, align 8, !tbaa !43
  %cmp104.not = icmp eq i32 %31, 4
  br i1 %cmp104.not, label %sw.epilog, label %if.then105

if.then105:                                       ; preds = %if.end103
  %32 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method86, align 8, !tbaa !4
  %ssl3_enc107 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %32, i64 0, i32 25
  %33 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc107, align 8, !tbaa !22
  %change_cipher_state108 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %33, i64 0, i32 4
  %change_cipher_state109 = bitcast {}** %change_cipher_state108 to i32 (%struct.ssl_st*, i32)**
  %34 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state109, align 8, !tbaa !63
  %call110 = tail call i32 %34(%struct.ssl_st* noundef nonnull %s, i32 noundef 274) #12
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup, label %sw.epilog

sw.bb116:                                         ; preds = %entry
  %call117 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #12
  %cmp118.not = icmp eq i32 %call117, 1
  br i1 %cmp118.not, label %if.end120, label %cleanup

if.end120:                                        ; preds = %sw.bb116
  %call121 = tail call i32 @tls13_update_key(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #12
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true28, %if.end120, %if.end85, %land.lhs.true91, %if.then105, %if.end103, %if.end73, %if.then79, %if.then43, %lor.lhs.false, %sw.bb17, %if.end10, %if.then13, %entry, %sw.bb15
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %sw.bb116, %if.then105, %if.then99, %sw.bb81, %if.end66, %if.end60, %if.then43, %sw.bb17, %if.else, %if.then3, %sw.epilog
  %retval.0 = phi i32 [ 2, %sw.epilog ], [ 0, %if.then3 ], [ 3, %if.else ], [ 0, %sw.bb17 ], [ 0, %if.then43 ], [ 0, %if.end60 ], [ 0, %if.end66 ], [ 4, %sw.bb81 ], [ 0, %if.then99 ], [ 0, %if.then105 ], [ 3, %sw.bb116 ], [ 0, %if.end120 ]
  ret i32 %retval.0
}

declare i32 @tls13_change_cipher_state(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @statem_flush(%struct.ssl_st* noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_client_key_exchange_post_work(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %pms1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  %0 = load i8*, i8** %pms1, align 8, !tbaa !64
  %pmslen4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  %1 = load i64, i64* %pmslen4, align 8, !tbaa !65
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 4
  %3 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %and = and i32 %3, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @srp_generate_client_master_secret(%struct.ssl_st* noundef nonnull %s) #12
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %err, label %cleanup

if.end9:                                          ; preds = %entry
  %cmp = icmp eq i8* %0, null
  %and14 = and i32 %3, 8
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3342, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_client_key_exchange_post_work, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef %0, i64 noundef %1, i32 noundef 1) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %cleanup

err:                                              ; preds = %if.end17, %if.then, %if.then16
  %pms.0 = phi i8* [ %0, %if.then ], [ null, %if.then16 ], [ null, %if.end17 ]
  %pmslen.0 = phi i64 [ %1, %if.then ], [ %1, %if.then16 ], [ 0, %if.end17 ]
  tail call void @CRYPTO_clear_free(i8* noundef %pms.0, i64 noundef %pmslen.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3387) #12
  store i8* null, i8** %pms1, align 8, !tbaa !64
  store i64 0, i64* %pmslen4, align 8, !tbaa !65
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.then ], [ 1, %if.end17 ]
  ret i32 %retval.0
}

declare void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tls13_save_handshake_digest_for_pha(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls13_update_key(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_construct_message(%struct.ssl_st* noundef %s, %struct.wpacket_st* nocapture noundef readnone %pkt, i32 (%struct.ssl_st*, %struct.wpacket_st*)** nocapture noundef writeonly %confunc, i32* nocapture noundef writeonly %mt) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 16, label %sw.bb
    i32 12, label %sw.bb1
    i32 48, label %sw.bb2
    i32 47, label %sw.bb3
    i32 13, label %sw.bb4
    i32 14, label %sw.bb5
    i32 15, label %sw.bb6
    i32 17, label %sw.bb7
    i32 18, label %sw.bb8
    i32 43, label %sw.bb9
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 890, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_statem_client_construct_message, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 236, i8* noundef null) #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  %tls_construct_change_cipher_spec.dtls_construct_change_cipher_spec = select i1 %tobool.not, i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_change_cipher_spec, i32 (%struct.ssl_st*, %struct.wpacket_st*)* @dtls_construct_change_cipher_spec
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* %tls_construct_change_cipher_spec.dtls_construct_change_cipher_spec, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 257, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_client_hello, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 1, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_end_of_early_data, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 5, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 -1, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_client_certificate, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 11, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_client_key_exchange, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 16, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_cert_verify, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 15, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_next_proto, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 67, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_finished, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 20, i32* %mt, align 4, !tbaa !67
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_key_update, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !66
  store i32 24, i32* %mt, align 4, !tbaa !67
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb5, %sw.bb6, %sw.bb7, %sw.bb8, %sw.bb9, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @dtls_construct_change_cipher_spec(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #3

declare i32 @tls_construct_change_cipher_spec(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_client_hello(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %call = tail call i32 @ssl_set_client_hello_version(%struct.ssl_st* noundef %s) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %call, i8* noundef null) #12
  br label %cleanup180

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp1, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 0
  %1 = load i32, i32* %ssl_version, align 8, !tbaa !68
  %call2 = tail call i32 @ssl_version_supported(%struct.ssl_st* noundef nonnull %s, i32 noundef %1, %struct.ssl_method_st** noundef null) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then6, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @SSL_SESSION_is_resumable(%struct.ssl_session_st* noundef nonnull %0) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %2 = load i32, i32* %hello_retry_request, align 8, !tbaa !49
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then6
  %call8 = tail call i32 @ssl_get_new_session(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup180, label %if.end12

if.end12:                                         ; preds = %if.then6, %land.lhs.true, %lor.lhs.false3
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 25
  %4 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %4, i64 0, i32 12
  %5 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %5, 8
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end21, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %6 = load i8, i8* %arraydecay, align 1, !tbaa !69
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %for.cond, label %if.end28

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 1
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !69
  %tobool16.not.1 = icmp eq i8 %7, 0
  br i1 %tobool16.not.1, label %for.cond.1, label %if.end28

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !69
  %tobool16.not.2 = icmp eq i8 %8, 0
  br i1 %tobool16.not.2, label %for.cond.2, label %if.end28

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 3
  %9 = load i8, i8* %arrayidx.3, align 1, !tbaa !69
  %tobool16.not.3 = icmp eq i8 %9, 0
  br i1 %tobool16.not.3, label %for.cond.3, label %if.end28

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 4
  %10 = load i8, i8* %arrayidx.4, align 1, !tbaa !69
  %tobool16.not.4 = icmp eq i8 %10, 0
  br i1 %tobool16.not.4, label %for.cond.4, label %if.end28

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 5
  %11 = load i8, i8* %arrayidx.5, align 1, !tbaa !69
  %tobool16.not.5 = icmp eq i8 %11, 0
  br i1 %tobool16.not.5, label %for.cond.5, label %if.end28

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !69
  %tobool16.not.6 = icmp eq i8 %12, 0
  br i1 %tobool16.not.6, label %for.cond.6, label %if.end28

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 7
  %13 = load i8, i8* %arrayidx.7, align 1, !tbaa !69
  %tobool16.not.7 = icmp eq i8 %13, 0
  br i1 %tobool16.not.7, label %for.cond.7, label %if.end28

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 8
  %14 = load i8, i8* %arrayidx.8, align 1, !tbaa !69
  %tobool16.not.8 = icmp eq i8 %14, 0
  br i1 %tobool16.not.8, label %for.cond.8, label %if.end28

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 9
  %15 = load i8, i8* %arrayidx.9, align 1, !tbaa !69
  %tobool16.not.9 = icmp eq i8 %15, 0
  br i1 %tobool16.not.9, label %for.cond.9, label %if.end28

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 10
  %16 = load i8, i8* %arrayidx.10, align 1, !tbaa !69
  %tobool16.not.10 = icmp eq i8 %16, 0
  br i1 %tobool16.not.10, label %for.cond.10, label %if.end28

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 11
  %17 = load i8, i8* %arrayidx.11, align 1, !tbaa !69
  %tobool16.not.11 = icmp eq i8 %17, 0
  br i1 %tobool16.not.11, label %for.cond.11, label %if.end28

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 12
  %18 = load i8, i8* %arrayidx.12, align 1, !tbaa !69
  %tobool16.not.12 = icmp eq i8 %18, 0
  br i1 %tobool16.not.12, label %for.cond.12, label %if.end28

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 13
  %19 = load i8, i8* %arrayidx.13, align 1, !tbaa !69
  %tobool16.not.13 = icmp eq i8 %19, 0
  br i1 %tobool16.not.13, label %for.cond.13, label %if.end28

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 14
  %20 = load i8, i8* %arrayidx.14, align 1, !tbaa !69
  %tobool16.not.14 = icmp eq i8 %20, 0
  br i1 %tobool16.not.14, label %for.cond.14, label %if.end28

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 15
  %21 = load i8, i8* %arrayidx.15, align 1, !tbaa !69
  %tobool16.not.15 = icmp eq i8 %21, 0
  br i1 %tobool16.not.15, label %for.cond.15, label %if.end28

for.cond.15:                                      ; preds = %for.cond.14
  %arrayidx.16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 16
  %22 = load i8, i8* %arrayidx.16, align 1, !tbaa !69
  %tobool16.not.16 = icmp eq i8 %22, 0
  br i1 %tobool16.not.16, label %for.cond.16, label %if.end28

for.cond.16:                                      ; preds = %for.cond.15
  %arrayidx.17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 17
  %23 = load i8, i8* %arrayidx.17, align 1, !tbaa !69
  %tobool16.not.17 = icmp eq i8 %23, 0
  br i1 %tobool16.not.17, label %for.cond.17, label %if.end28

for.cond.17:                                      ; preds = %for.cond.16
  %arrayidx.18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 18
  %24 = load i8, i8* %arrayidx.18, align 1, !tbaa !69
  %tobool16.not.18 = icmp eq i8 %24, 0
  br i1 %tobool16.not.18, label %for.cond.18, label %if.end28

for.cond.18:                                      ; preds = %for.cond.17
  %arrayidx.19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 19
  %25 = load i8, i8* %arrayidx.19, align 1, !tbaa !69
  %tobool16.not.19 = icmp eq i8 %25, 0
  br i1 %tobool16.not.19, label %for.cond.19, label %if.end28

for.cond.19:                                      ; preds = %for.cond.18
  %arrayidx.20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 20
  %26 = load i8, i8* %arrayidx.20, align 1, !tbaa !69
  %tobool16.not.20 = icmp eq i8 %26, 0
  br i1 %tobool16.not.20, label %for.cond.20, label %if.end28

for.cond.20:                                      ; preds = %for.cond.19
  %arrayidx.21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 21
  %27 = load i8, i8* %arrayidx.21, align 1, !tbaa !69
  %tobool16.not.21 = icmp eq i8 %27, 0
  br i1 %tobool16.not.21, label %for.cond.21, label %if.end28

for.cond.21:                                      ; preds = %for.cond.20
  %arrayidx.22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 22
  %28 = load i8, i8* %arrayidx.22, align 1, !tbaa !69
  %tobool16.not.22 = icmp eq i8 %28, 0
  br i1 %tobool16.not.22, label %for.cond.22, label %if.end28

for.cond.22:                                      ; preds = %for.cond.21
  %arrayidx.23 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 23
  %29 = load i8, i8* %arrayidx.23, align 1, !tbaa !69
  %tobool16.not.23 = icmp eq i8 %29, 0
  br i1 %tobool16.not.23, label %for.cond.23, label %if.end28

for.cond.23:                                      ; preds = %for.cond.22
  %arrayidx.24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 24
  %30 = load i8, i8* %arrayidx.24, align 1, !tbaa !69
  %tobool16.not.24 = icmp eq i8 %30, 0
  br i1 %tobool16.not.24, label %for.cond.24, label %if.end28

for.cond.24:                                      ; preds = %for.cond.23
  %arrayidx.25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 25
  %31 = load i8, i8* %arrayidx.25, align 1, !tbaa !69
  %tobool16.not.25 = icmp eq i8 %31, 0
  br i1 %tobool16.not.25, label %for.cond.25, label %if.end28

for.cond.25:                                      ; preds = %for.cond.24
  %arrayidx.26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 26
  %32 = load i8, i8* %arrayidx.26, align 1, !tbaa !69
  %tobool16.not.26 = icmp eq i8 %32, 0
  br i1 %tobool16.not.26, label %for.cond.26, label %if.end28

for.cond.26:                                      ; preds = %for.cond.25
  %arrayidx.27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 27
  %33 = load i8, i8* %arrayidx.27, align 1, !tbaa !69
  %tobool16.not.27 = icmp eq i8 %33, 0
  br i1 %tobool16.not.27, label %for.cond.27, label %if.end28

for.cond.27:                                      ; preds = %for.cond.26
  %arrayidx.28 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 28
  %34 = load i8, i8* %arrayidx.28, align 1, !tbaa !69
  %tobool16.not.28 = icmp eq i8 %34, 0
  br i1 %tobool16.not.28, label %for.cond.28, label %if.end28

for.cond.28:                                      ; preds = %for.cond.27
  %arrayidx.29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 29
  %35 = load i8, i8* %arrayidx.29, align 1, !tbaa !69
  %tobool16.not.29 = icmp eq i8 %35, 0
  br i1 %tobool16.not.29, label %for.cond.29, label %if.end28

for.cond.29:                                      ; preds = %for.cond.28
  %arrayidx.30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 30
  %36 = load i8, i8* %arrayidx.30, align 1, !tbaa !69
  %tobool16.not.30 = icmp eq i8 %36, 0
  br i1 %tobool16.not.30, label %for.cond.30, label %if.end28

for.cond.30:                                      ; preds = %for.cond.29
  %arrayidx.31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 31
  %37 = load i8, i8* %arrayidx.31, align 1, !tbaa !69
  %tobool16.not.31 = icmp eq i8 %37, 0
  br i1 %tobool16.not.31, label %land.lhs.true23, label %if.end28

if.end21:                                         ; preds = %if.end12
  %hello_retry_request19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %38 = load i32, i32* %hello_retry_request19, align 8, !tbaa !49
  %cmp20.not = icmp eq i32 %38, 0
  br i1 %cmp20.not, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %for.cond.30, %if.end21
  %call24 = tail call i32 @ssl_fill_hello_random(%struct.ssl_st* noundef nonnull %s, i32 noundef 0, i8* noundef nonnull %arraydecay, i64 noundef 32, i32 noundef 0) #12
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1143, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end28:                                         ; preds = %for.body.preheader, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %for.cond.7, %for.cond.8, %for.cond.9, %for.cond.10, %for.cond.11, %for.cond.12, %for.cond.13, %for.cond.14, %for.cond.15, %for.cond.16, %for.cond.17, %for.cond.18, %for.cond.19, %for.cond.20, %for.cond.21, %for.cond.22, %for.cond.23, %for.cond.24, %for.cond.25, %for.cond.26, %for.cond.27, %for.cond.28, %for.cond.29, %for.cond.30, %land.lhs.true23, %if.end21
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %39 = load i32, i32* %client_version, align 4, !tbaa !70
  %call29 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %39, i64 noundef 2) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end28
  %call35 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef 32) #12
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false31, %if.end28
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1182, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end38:                                         ; preds = %lor.lhs.false31
  %40 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %arraydecay41 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %40, i64 0, i32 5, i64 0
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  %41 = load i32, i32* %new_session, align 4, !tbaa !71
  %tobool42.not = icmp eq i32 %41, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.then48

lor.lhs.false43:                                  ; preds = %if.end38
  %ssl_version45 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %40, i64 0, i32 0
  %42 = load i32, i32* %ssl_version45, align 8, !tbaa !68
  %cmp46 = icmp eq i32 %42, 772
  br i1 %cmp46, label %if.then48, label %if.else70

if.then48:                                        ; preds = %lor.lhs.false43, %if.end38
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %43 = load i32, i32* %version, align 8, !tbaa !30
  %cmp49 = icmp eq i32 %43, 772
  br i1 %cmp49, label %land.lhs.true51, label %if.end84

land.lhs.true51:                                  ; preds = %if.then48
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %44 = load i64, i64* %options, align 8, !tbaa !46
  %and52 = and i64 %44, 1048576
  %cmp53.not = icmp eq i64 %and52, 0
  br i1 %cmp53.not, label %if.end84, label %if.then55

if.then55:                                        ; preds = %land.lhs.true51
  %tmp_session_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  store i64 32, i64* %tmp_session_id_len, align 8, !tbaa !72
  %arraydecay56 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %hello_retry_request57 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %45 = load i32, i32* %hello_retry_request57, align 8, !tbaa !49
  %cmp58 = icmp eq i32 %45, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end84

land.lhs.true60:                                  ; preds = %if.then55
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %46 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %46, i64 0, i32 0
  %47 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %call63 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %47, i8* noundef nonnull %arraydecay56, i64 noundef 32, i32 noundef 0) #12
  %cmp64 = icmp slt i32 %call63, 1
  br i1 %cmp64, label %if.then66, label %if.end84

if.then66:                                        ; preds = %land.lhs.true60
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1197, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.else70:                                        ; preds = %lor.lhs.false43
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %40, i64 0, i32 4
  %48 = load i64, i64* %session_id_length, align 8, !tbaa !79
  %version72 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %49 = load i32, i32* %version72, align 8, !tbaa !30
  %cmp73 = icmp eq i32 %49, 772
  br i1 %cmp73, label %if.then75, label %if.end84

if.then75:                                        ; preds = %if.else70
  %tmp_session_id_len76 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  store i64 %48, i64* %tmp_session_id_len76, align 8, !tbaa !72
  %arraydecay78 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %call82 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay78, i8* noundef nonnull %arraydecay41, i64 noundef %48) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then48, %land.lhs.true51, %if.else70, %if.then75, %land.lhs.true60, %if.then55
  %sess_id_len.0 = phi i64 [ 32, %land.lhs.true60 ], [ 32, %if.then55 ], [ %48, %if.then75 ], [ %48, %if.else70 ], [ 0, %land.lhs.true51 ], [ 0, %if.then48 ]
  %session_id.0 = phi i8* [ %arraydecay56, %land.lhs.true60 ], [ %arraydecay56, %if.then55 ], [ %arraydecay41, %if.then75 ], [ %arraydecay41, %if.else70 ], [ %arraydecay41, %land.lhs.true51 ], [ %arraydecay41, %if.then48 ]
  %call85 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #12
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then96, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.end84
  %cmp88.not = icmp eq i64 %sess_id_len.0, 0
  br i1 %cmp88.not, label %lor.lhs.false93, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %lor.lhs.false87
  %call91 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %session_id.0, i64 noundef %sess_id_len.0) #12
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then96, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true90, %lor.lhs.false87
  %call94 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %if.end97

if.then96:                                        ; preds = %lor.lhs.false93, %land.lhs.true90, %if.end84
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1215, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end97:                                         ; preds = %lor.lhs.false93
  %50 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc99 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %50, i64 0, i32 25
  %51 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc99, align 8, !tbaa !22
  %enc_flags100 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %51, i64 0, i32 12
  %52 = load i32, i32* %enc_flags100, align 8, !tbaa !24
  %and101 = and i32 %52, 8
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end115, label %if.then103

if.then103:                                       ; preds = %if.end97
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %53 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !80
  %cookie_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %53, i64 0, i32 1
  %54 = load i64, i64* %cookie_len, align 8, !tbaa !81
  %cmp104 = icmp ugt i64 %54, 255
  br i1 %cmp104, label %if.then113, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.then103
  %arraydecay108 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %53, i64 0, i32 0, i64 0
  %call111 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %arraydecay108, i64 noundef %54, i64 noundef 1) #12
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.end115

if.then113:                                       ; preds = %lor.lhs.false106, %if.then103
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1224, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end115:                                        ; preds = %lor.lhs.false106, %if.end97
  %call116 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1231, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end119:                                        ; preds = %if.end115
  %call120 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #12
  %call121 = tail call fastcc i32 @ssl_cipher_list_to_bytes(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_SSL_CIPHER* noundef %call120, %struct.wpacket_st* noundef %pkt) #11
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %cleanup180, label %if.end124

if.end124:                                        ; preds = %if.end119
  %call125 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1240, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end128:                                        ; preds = %if.end124
  %call129 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #12
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1246, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end132:                                        ; preds = %if.end128
  %call133 = tail call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #12
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end168, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end132
  %ctx136 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %55 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx136, align 8, !tbaa !73
  %comp_methods = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %55, i64 0, i32 30
  %56 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods, align 8, !tbaa !86
  %tobool137.not = icmp eq %struct.stack_st_SSL_COMP* %56, null
  br i1 %tobool137.not, label %if.end168, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %57 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc140 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %57, i64 0, i32 25
  %58 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc140, align 8, !tbaa !22
  %enc_flags141 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %58, i64 0, i32 12
  %59 = load i32, i32* %enc_flags141, align 8, !tbaa !24
  %and142 = and i32 %59, 8
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %if.then148

lor.lhs.false144:                                 ; preds = %land.lhs.true138
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  %60 = load i32, i32* %max_ver, align 8, !tbaa !87
  %cmp146 = icmp slt i32 %60, 772
  br i1 %cmp146, label %if.then148, label %if.end168

if.then148:                                       ; preds = %lor.lhs.false144, %land.lhs.true138
  %call151 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %56) #11
  %call152 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call151) #12
  %cmp154279 = icmp sgt i32 %call152, 0
  br i1 %cmp154279, label %for.body156, label %if.end168

for.cond153:                                      ; preds = %for.body156
  %exitcond.not = icmp eq i32 %inc166, %call152
  br i1 %exitcond.not, label %if.end168, label %for.body156, !llvm.loop !88

for.body156:                                      ; preds = %if.then148, %for.cond153
  %i.2280 = phi i32 [ %inc166, %for.cond153 ], [ 0, %if.then148 ]
  %61 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx136, align 8, !tbaa !73
  %comp_methods158 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %61, i64 0, i32 30
  %62 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods158, align 8, !tbaa !86
  %call159 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %62) #11
  %call160 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call159, i32 noundef %i.2280) #12
  %id = bitcast i8* %call160 to i32*
  %63 = load i32, i32* %id, align 8, !tbaa !60
  %call161 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %63, i64 noundef 1) #12
  %tobool162.not = icmp eq i32 %call161, 0
  %inc166 = add nuw nsw i32 %i.2280, 1
  br i1 %tobool162.not, label %if.then163, label %for.cond153

if.then163:                                       ; preds = %for.body156
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1257, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end168:                                        ; preds = %for.cond153, %if.then148, %lor.lhs.false144, %land.lhs.true135, %if.end132
  %call169 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #12
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then174, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %if.end168
  %call172 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then174, label %if.end175

if.then174:                                       ; preds = %lor.lhs.false171, %if.end168
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1265, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_client_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup180

if.end175:                                        ; preds = %lor.lhs.false171
  %call176 = tail call i32 @tls_construct_extensions(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef 128, %struct.x509_st* noundef null, i64 noundef 0) #12
  %tobool177.not = icmp ne i32 %call176, 0
  %. = zext i1 %tobool177.not to i32
  br label %cleanup180

cleanup180:                                       ; preds = %if.then163, %if.end175, %if.end119, %land.lhs.true, %if.then174, %if.then131, %if.then127, %if.then118, %if.then113, %if.then96, %if.then66, %if.then37, %if.then27, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then27 ], [ 0, %if.then66 ], [ 0, %if.then113 ], [ 0, %if.then174 ], [ 0, %if.then163 ], [ 0, %if.then131 ], [ 0, %if.then127 ], [ 0, %if.then118 ], [ 0, %if.then96 ], [ 0, %if.then37 ], [ 0, %land.lhs.true ], [ 0, %if.end119 ], [ %., %if.end175 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_end_of_early_data(%struct.ssl_st* noundef %s, %struct.wpacket_st* nocapture readnone %pkt) #0 {
entry:
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %0 = load i32, i32* %early_data_state, align 4, !tbaa !45
  switch i32 %0, label %if.then [
    i32 3, label %if.end
    i32 7, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3769, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_construct_end_of_early_data, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786689, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry, %entry
  store i32 7, i32* %early_data_state, align 4, !tbaa !45
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_client_certificate(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end16, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %pha_context = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 102
  %4 = load i8*, i8** %pha_context, align 8, !tbaa !90
  %cmp6 = icmp eq i8* %4, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #12
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then7
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3498, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_client_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.else:                                          ; preds = %if.then
  %pha_context_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 103
  %5 = load i64, i64* %pha_context_len, align 8, !tbaa !91
  %call11 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %4, i64 noundef %5, i64 noundef 1) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3502, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_client_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %return

if.end16:                                         ; preds = %if.then7, %if.else, %land.lhs.true, %entry
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  %6 = load i32, i32* %cert_req, align 8, !tbaa !47
  %cmp17 = icmp eq i32 %6, 2
  br i1 %cmp17, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end16
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %7 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !92
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %7, i64 0, i32 0
  %8 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !93
  br label %cond.end

cond.end:                                         ; preds = %if.end16, %cond.false
  %cond = phi %struct.cert_pkey_st* [ %8, %cond.false ], [ null, %if.end16 ]
  %call18 = tail call i64 @ssl3_output_cert_chain(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, %struct.cert_pkey_st* noundef %cond) #12
  %tobool19.not = icmp eq i64 %call18, 0
  br i1 %tobool19.not, label %return, label %if.end21

if.end21:                                         ; preds = %cond.end
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc23 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc23, align 8, !tbaa !22
  %enc_flags24 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 12
  %11 = load i32, i32* %enc_flags24, align 8, !tbaa !24
  %and25 = and i32 %11, 8
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %return

land.lhs.true27:                                  ; preds = %if.end21
  %version29 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 0
  %12 = load i32, i32* %version29, align 8, !tbaa !26
  %cmp30 = icmp slt i32 %12, 772
  %cmp34.not = icmp eq i32 %12, 65536
  %or.cond72 = or i1 %cmp30, %cmp34.not
  br i1 %or.cond72, label %return, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true27
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %13 = load i64, i64* %finish_md_len, align 8, !tbaa !96
  %cmp38 = icmp eq i64 %13, 0
  br i1 %cmp38, label %land.lhs.true42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %14 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !97
  %cmp41 = icmp eq i64 %14, 0
  br i1 %cmp41, label %land.lhs.true42, label %return

land.lhs.true42:                                  ; preds = %lor.lhs.false, %land.lhs.true35
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 4
  %change_cipher_state45 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %15 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state45, align 8, !tbaa !63
  %call46 = tail call i32 %15(%struct.ssl_st* noundef nonnull %s, i32 noundef 146) #12
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %return

if.then48:                                        ; preds = %land.lhs.true42
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3521, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_client_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 109, i8* noundef null) #12
  br label %return

return:                                           ; preds = %if.end21, %land.lhs.true27, %lor.lhs.false, %land.lhs.true42, %cond.end, %if.then48, %if.then13, %if.then9
  %retval.0 = phi i32 [ 0, %if.then48 ], [ 0, %if.then9 ], [ 0, %if.then13 ], [ 0, %cond.end ], [ 1, %land.lhs.true42 ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true27 ], [ 1, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_client_key_exchange(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #0 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @tls_construct_cke_psk_preamble(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %and2 = and i64 %conv, 65
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @tls_construct_cke_rsa(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %cleanup

if.else:                                          ; preds = %if.end
  %and9 = and i64 %conv, 258
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  %call12 = tail call fastcc i32 @tls_construct_cke_dhe(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %cleanup

if.else16:                                        ; preds = %if.else
  %and17 = and i64 %conv, 132
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.else24, label %if.then19

if.then19:                                        ; preds = %if.else16
  %call20 = tail call fastcc i32 @tls_construct_cke_ecdhe(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %cleanup

if.else24:                                        ; preds = %if.else16
  %and25 = and i64 %conv, 16
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.else32, label %if.then27

if.then27:                                        ; preds = %if.else24
  %call28 = tail call fastcc i32 @tls_construct_cke_gost(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %cleanup

if.else32:                                        ; preds = %if.else24
  %and33 = and i64 %conv, 512
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.else40, label %if.then35

if.then35:                                        ; preds = %if.else32
  %call36 = tail call fastcc i32 @tls_construct_cke_gost18(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %cleanup

if.else40:                                        ; preds = %if.else32
  %and41 = and i64 %conv, 32
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %if.else40
  %call44 = tail call fastcc i32 @tls_construct_cke_srp(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %cleanup

if.else48:                                        ; preds = %if.else40
  %and49 = and i64 %conv, 8
  %tobool50.not = icmp eq i64 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %cleanup

if.then51:                                        ; preds = %if.else48
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3305, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_client_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

err:                                              ; preds = %if.then43, %if.then35, %if.then27, %if.then19, %if.then11, %if.then4, %land.lhs.true, %if.then51
  %pms = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  %2 = load i8*, i8** %pms, align 8, !tbaa !64
  %pmslen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  %3 = load i64, i64* %pmslen, align 8, !tbaa !65
  tail call void @CRYPTO_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3311) #12
  store i8* null, i8** %pms, align 8, !tbaa !64
  store i64 0, i64* %pmslen, align 8, !tbaa !65
  %psk = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 24
  %4 = load i8*, i8** %psk, align 8, !tbaa !98
  %psklen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 25
  %5 = load i64, i64* %psklen, align 8, !tbaa !99
  tail call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3315) #12
  store i8* null, i8** %psk, align 8, !tbaa !98
  store i64 0, i64* %psklen, align 8, !tbaa !99
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then19, %if.then35, %if.else48, %if.then43, %if.then27, %if.then11, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.then11 ], [ 1, %if.then27 ], [ 1, %if.then43 ], [ 1, %if.else48 ], [ 1, %if.then35 ], [ 1, %if.then19 ], [ 1, %if.then4 ]
  ret i32 %retval.0
}

declare i32 @tls_construct_cert_verify(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_next_proto(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #0 {
entry:
  %padding = alloca i8*, align 8
  %0 = bitcast i8** %padding to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %padding, align 8, !tbaa !66
  %npn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  %1 = load i64, i64* %npn_len, align 8, !tbaa !100
  %add = add i64 %1, 2
  %rem = and i64 %add, 31
  %sub = sub nuw nsw i64 32, %rem
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %2 = load i8*, i8** %npn, align 8, !tbaa !101
  %call = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %2, i64 noundef %1, i64 noundef 1) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %sub, i8** noundef nonnull %padding, i64 noundef 1) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3582, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_next_proto, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %padding, align 8, !tbaa !66
  %call4 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls_construct_finished(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #3

declare i32 @tls_construct_key_update(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_statem_client_max_message_size(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #2 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %cleanup [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 39, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 45, label %sw.bb19
    i32 10, label %sw.bb9
    i32 9, label %sw.bb10
    i32 11, label %sw.bb17
    i32 38, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %max_cert_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %1 = load i64, i64* %max_cert_list, align 8, !tbaa !102
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %max_cert_list7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %2 = load i64, i64* %max_cert_list7, align 8, !tbaa !102
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !30
  %cmp = icmp eq i32 %3, 256
  %. = select i1 %cmp, i64 3, i64 1
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %sw.bb10
  %version12 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version12, align 8, !tbaa !26
  %cmp13 = icmp sgt i32 %7, 771
  br i1 %cmp13, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  %cmp16.not = icmp eq i32 %7, 65536
  %phi.sel = select i1 %cmp16.not, i64 65541, i64 131338
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %land.lhs.true, %land.rhs, %sw.bb9, %entry, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ 1, %sw.bb19 ], [ 20000, %sw.bb18 ], [ 64, %sw.bb17 ], [ %2, %sw.bb6 ], [ 102400, %sw.bb5 ], [ 16384, %sw.bb4 ], [ 16384, %sw.bb3 ], [ %1, %sw.bb2 ], [ 258, %sw.bb1 ], [ 65607, %sw.bb ], [ 0, %entry ], [ %., %sw.bb9 ], [ 65541, %land.lhs.true ], [ 65541, %sw.bb10 ], [ %phi.sel, %land.rhs ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_process_message(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb3
    i32 39, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb11
    i32 8, label %sw.bb13
    i32 10, label %sw.bb15
    i32 9, label %sw.bb17
    i32 11, label %sw.bb19
    i32 41, label %sw.bb21
    i32 38, label %sw.bb23
    i32 45, label %sw.bb25
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1023, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_statem_client_process_message, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @tls_process_server_hello(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @dtls_process_hello_verify(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @tls_process_server_certificate(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @tls_process_cert_verify(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @tls_process_cert_status(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @tls_process_key_exchange(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = tail call i32 @tls_process_certificate_request(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %call14 = tail call i32 @tls_process_server_done(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %call16 = tail call i32 @tls_process_change_cipher_spec(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %call18 = tail call i32 @tls_process_new_session_ticket(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %call20 = tail call i32 @tls_process_finished(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %call22 = tail call i32 @tls_process_hello_req(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %call24 = tail call fastcc i32 @tls_process_encrypted_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #11
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %call26 = tail call i32 @tls_process_key_update(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_server_hello(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %session_id = alloca %struct.PACKET, align 8
  %extpkt = alloca %struct.PACKET, align 8
  %cipherchars = alloca i8*, align 8
  %compression = alloca i32, align 4
  %sversion = alloca i32, align 4
  %extensions = alloca %struct.raw_extension_st*, align 8
  %pref_cipher = alloca %struct.ssl_cipher_st*, align 8
  %master_key_length = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %session_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %extpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast i8** %cipherchars to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  %3 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast i32* %sversion to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %5 = bitcast %struct.raw_extension_st** %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %sversion) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1389, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %6 = load i32, i32* %version, align 8, !tbaa !30
  %cmp = icmp eq i32 %6, 772
  %7 = load i32, i32* %sversion, align 4
  %cmp1 = icmp eq i32 %7, 771
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %if.end
  %call3 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp4 = icmp ugt i64 %call3, 31
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %call6 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #11
  %call7 = tail call i32 @memcmp(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hrrrandom, i64 0, i64 0), i8* noundef %call6, i64 noundef 32) #14
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true5
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  store i32 1, i32* %hello_retry_request, align 8, !tbaa !49
  %call10 = tail call fastcc i32 @PACKET_forward(%struct.PACKET* noundef %pkt, i64 noundef 32) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1401, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true2, %if.end
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call14 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef 32) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.else
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1406, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end18:                                         ; preds = %if.else, %if.then9
  %tobool39 = phi i1 [ false, %if.else ], [ true, %if.then9 ]
  %call19 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %session_id) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1413, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %session_id) #11
  %cmp24 = icmp ugt i64 %call23, 32
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1419, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 300, i8* noundef null) #12
  br label %err

if.end27:                                         ; preds = %if.end22
  %call28 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %cipherchars, i64 noundef 2) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1424, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end31:                                         ; preds = %if.end27
  %call32 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %compression) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1429, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end35:                                         ; preds = %if.end31
  %call36 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp37 = icmp ne i64 %call36, 0
  %or.cond325 = or i1 %tobool39, %cmp37
  br i1 %or.cond325, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end35
  call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %extpkt) #11
  br label %if.end49

if.else41:                                        ; preds = %if.end35
  %call42 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %extpkt) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.else41
  %call45 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp46.not = icmp eq i64 %call45, 0
  br i1 %cmp46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false44, %if.else41
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1438, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #12
  br label %err

if.end49:                                         ; preds = %lor.lhs.false44, %if.then40
  br i1 %tobool39, label %if.end60, label %if.then51

if.then51:                                        ; preds = %if.end49
  %call52 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extpkt, i32 noundef 768, %struct.raw_extension_st** noundef nonnull %extensions, i64* noundef null, i32 noundef 1) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.then51
  %8 = load %struct.raw_extension_st*, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call56 = call i32 @ssl_choose_client_version(%struct.ssl_st* noundef nonnull %s, i32 noundef %7, %struct.raw_extension_st* noundef %8) #12
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end60

if.end60:                                         ; preds = %if.end55, %if.end49
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 12
  %11 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %11, 8
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %lor.lhs.false70

land.lhs.true62:                                  ; preds = %if.end60
  %version64 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 0
  %12 = load i32, i32* %version64, align 8, !tbaa !26
  %cmp65 = icmp sgt i32 %12, 771
  br i1 %cmp65, label %land.lhs.true66, label %lor.lhs.false70

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %cmp69 = icmp ne i32 %12, 65536
  %or.cond326 = or i1 %tobool39, %cmp69
  br i1 %or.cond326, label %if.then72, label %if.end84

lor.lhs.false70:                                  ; preds = %land.lhs.true62, %if.end60
  br i1 %tobool39, label %if.then72, label %if.end92

if.then72:                                        ; preds = %lor.lhs.false70, %land.lhs.true66
  %13 = load i32, i32* %compression, align 4, !tbaa !67
  %cmp73.not = icmp eq i32 %13, 0
  br i1 %cmp73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.then72
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1460, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 341, i8* noundef null) #12
  br label %err

if.end75:                                         ; preds = %if.then72
  %tmp_session_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  %14 = load i64, i64* %tmp_session_id_len, align 8, !tbaa !72
  %cmp76.not = icmp eq i64 %call23, %14
  br i1 %cmp76.not, label %lor.lhs.false77, label %if.then82

lor.lhs.false77:                                  ; preds = %if.end75
  %call78 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %session_id) #11
  %arraydecay79 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %call80 = call i32 @memcmp(i8* noundef %call78, i8* noundef nonnull %arraydecay79, i64 noundef %call23) #14
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end84, label %if.then82

if.then82:                                        ; preds = %lor.lhs.false77, %if.end75
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1467, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 999, i8* noundef null) #12
  br label %err

if.end84:                                         ; preds = %lor.lhs.false77, %land.lhs.true66
  br i1 %tobool39, label %if.then86, label %if.end92

if.then86:                                        ; preds = %if.end84
  %15 = load i8*, i8** %cipherchars, align 8, !tbaa !66
  %call87 = call fastcc i32 @set_client_ciphersuite(%struct.ssl_st* noundef nonnull %s, i8* noundef %15) #11
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end90

if.end90:                                         ; preds = %if.then86
  %call91 = call fastcc i32 @tls_process_as_hello_retry_request(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extpkt) #11
  br label %cleanup314

if.end92:                                         ; preds = %lor.lhs.false70, %if.end84
  br i1 %tobool61.not, label %land.end, label %land.end.thread

land.end:                                         ; preds = %if.end92
  %version100 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 0
  %16 = load i32, i32* %version100, align 8, !tbaa !26
  %cmp101 = icmp sgt i32 %16, 771
  %cmp104 = icmp ne i32 %16, 65536
  %spec.select = and i1 %cmp101, %cmp104
  %spec.select470 = select i1 %spec.select, i32 512, i32 256
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end92
  %17 = phi i32 [ 256, %if.end92 ], [ %spec.select470, %land.end ]
  %18 = load %struct.raw_extension_st*, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call105 = call i32 @tls_validate_all_contexts(%struct.ssl_st* noundef nonnull %s, i32 noundef %17, %struct.raw_extension_st* noundef %18) #12
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %land.end.thread
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1488, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 110, i8* noundef null) #12
  br label %err

if.end108:                                        ; preds = %land.end.thread
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 0, i32* %hit, align 8, !tbaa !28
  %19 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc110 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 25
  %20 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc110, align 8, !tbaa !22
  %enc_flags111 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %20, i64 0, i32 12
  %21 = load i32, i32* %enc_flags111, align 8, !tbaa !24
  %and112 = and i32 %21, 8
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %land.lhs.true114, label %if.else131

land.lhs.true114:                                 ; preds = %if.end108
  %version116 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 0
  %22 = load i32, i32* %version116, align 8, !tbaa !26
  %cmp117 = icmp slt i32 %22, 772
  %cmp121.not = icmp eq i32 %22, 65536
  %or.cond456 = or i1 %cmp117, %cmp121.not
  br i1 %or.cond456, label %if.else131, label %if.then122

if.then122:                                       ; preds = %land.lhs.true114
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call123 = call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #12
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.then122
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1501, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 182, i8* noundef null) #12
  br label %err

if.end126:                                        ; preds = %if.then122
  %23 = load %struct.raw_extension_st*, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call127 = call i32 @tls_parse_extension(%struct.ssl_st* noundef nonnull %s, i32 noundef 25, i32 noundef 512, %struct.raw_extension_st* noundef %23, %struct.x509_st* noundef null, i64 noundef 0) #12
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end177

if.else131:                                       ; preds = %land.lhs.true114, %if.end108
  %24 = load i32, i32* %version, align 8, !tbaa !30
  %cmp133 = icmp sgt i32 %24, 768
  br i1 %cmp133, label %land.lhs.true134, label %if.end159

land.lhs.true134:                                 ; preds = %if.else131
  %session_secret_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  %25 = load i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb, align 8, !tbaa !31
  %cmp135.not = icmp eq i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %25, null
  br i1 %cmp135.not, label %if.end159, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %land.lhs.true134
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %26, i64 0, i32 26, i32 1
  %27 = load i8*, i8** %tick, align 8, !tbaa !33
  %tobool138.not = icmp eq i8* %27, null
  br i1 %tobool138.not, label %if.end159, label %if.then139

if.then139:                                       ; preds = %land.lhs.true136
  %28 = bitcast %struct.ssl_cipher_st** %pref_cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #13
  store %struct.ssl_cipher_st* null, %struct.ssl_cipher_st** %pref_cipher, align 8, !tbaa !66
  %29 = bitcast i32* %master_key_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #13
  store i32 512, i32* %master_key_length, align 4, !tbaa !67
  %arraydecay143 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %26, i64 0, i32 3, i64 0
  %session_secret_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 23
  %30 = load i8*, i8** %session_secret_cb_arg, align 8, !tbaa !103
  %call145 = call i32 %25(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay143, i32* noundef nonnull %master_key_length, %struct.stack_st_SSL_CIPHER* noundef null, %struct.ssl_cipher_st** noundef nonnull %pref_cipher, i8* noundef %30) #12
  %tobool146 = icmp ne i32 %call145, 0
  %31 = load i32, i32* %master_key_length, align 4
  %cmp148 = icmp sgt i32 %31, 0
  %or.cond328 = select i1 %tobool146, i1 %cmp148, i1 false
  br i1 %or.cond328, label %if.then149, label %cleanup

if.then149:                                       ; preds = %if.then139
  %conv469 = zext i32 %31 to i64
  %32 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %master_key_length151 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %32, i64 0, i32 1
  store i64 %conv469, i64* %master_key_length151, align 8, !tbaa !104
  %33 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %pref_cipher, align 8, !tbaa !66
  %tobool152.not = icmp eq %struct.ssl_cipher_st* %33, null
  br i1 %tobool152.not, label %cond.false, label %cleanup.thread

cond.false:                                       ; preds = %if.then149
  %34 = load i8*, i8** %cipherchars, align 8, !tbaa !66
  %call153 = call %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef nonnull %s, i8* noundef %34, i32 noundef 0) #12
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.false, %if.then149
  %35 = phi %struct.ssl_session_st* [ %.pre, %cond.false ], [ %32, %if.then149 ]
  %cond154 = phi %struct.ssl_cipher_st* [ %call153, %cond.false ], [ %33, %if.then149 ]
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %35, i64 0, i32 20
  store %struct.ssl_cipher_st* %cond154, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #13
  br label %if.end159

cleanup:                                          ; preds = %if.then139
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1543, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #13
  br label %err

if.end159:                                        ; preds = %cleanup.thread, %land.lhs.true136, %land.lhs.true134, %if.else131
  %cmp160.not = icmp eq i64 %call23, 0
  br i1 %cmp160.not, label %if.end177, label %land.lhs.true162

land.lhs.true162:                                 ; preds = %if.end159
  %session163 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %36 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session163, align 8, !tbaa !32
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %36, i64 0, i32 4
  %37 = load i64, i64* %session_id_length, align 8, !tbaa !79
  %cmp164 = icmp eq i64 %call23, %37
  br i1 %cmp164, label %land.lhs.true166, label %if.end177

land.lhs.true166:                                 ; preds = %land.lhs.true162
  %call167 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %session_id) #11
  %arraydecay170 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %36, i64 0, i32 5, i64 0
  %call171 = call i32 @memcmp(i8* noundef %call167, i8* noundef nonnull %arraydecay170, i64 noundef %call23) #14
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.end177.thread, label %if.end177

if.end177.thread:                                 ; preds = %land.lhs.true166
  store i32 1, i32* %hit, align 8, !tbaa !28
  br label %if.then180

if.end177:                                        ; preds = %if.end159, %land.lhs.true162, %land.lhs.true166, %if.end126
  %.pr = load i32, i32* %hit, align 8, !tbaa !28
  %tobool179.not = icmp eq i32 %.pr, 0
  %session196 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %38 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session196, align 8, !tbaa !32
  br i1 %tobool179.not, label %if.else195, label %if.then180

if.then180:                                       ; preds = %if.end177, %if.end177.thread
  %39 = phi %struct.ssl_session_st* [ %36, %if.end177.thread ], [ %38, %if.end177 ]
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 53
  %40 = load i64, i64* %sid_ctx_length, align 8, !tbaa !105
  %sid_ctx_length182 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %39, i64 0, i32 6
  %41 = load i64, i64* %sid_ctx_length182, align 8, !tbaa !106
  %cmp183.not = icmp eq i64 %40, %41
  br i1 %cmp183.not, label %lor.lhs.false185, label %if.then193

lor.lhs.false185:                                 ; preds = %if.then180
  %arraydecay187 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %39, i64 0, i32 7, i64 0
  %arraydecay189 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 54, i64 0
  %call191 = call i32 @memcmp(i8* noundef nonnull %arraydecay187, i8* noundef nonnull %arraydecay189, i64 noundef %40) #14
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end236, label %if.then193

if.then193:                                       ; preds = %lor.lhs.false185, %if.then180
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1560, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 272, i8* noundef null) #12
  br label %err

if.else195:                                       ; preds = %if.end177
  %session_id_length197 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %38, i64 0, i32 4
  %42 = load i64, i64* %session_id_length197, align 8, !tbaa !79
  %cmp198.not = icmp eq i64 %42, 0
  br i1 %cmp198.not, label %if.end205, label %if.then200

if.then200:                                       ; preds = %if.else195
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %43 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !107
  %sess_miss = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %43, i64 0, i32 15, i32 6
  %44 = atomicrmw add i32* %sess_miss, i32 1 monotonic, align 4
  %call201 = call i32 @ssl_get_new_session(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %if.then200.if.end205_crit_edge

if.then200.if.end205_crit_edge:                   ; preds = %if.then200
  %.pre472 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session196, align 8, !tbaa !32
  br label %if.end205

if.end205:                                        ; preds = %if.then200.if.end205_crit_edge, %if.else195
  %45 = phi %struct.ssl_session_st* [ %.pre472, %if.then200.if.end205_crit_edge ], [ %38, %if.else195 ]
  %46 = load i32, i32* %version, align 8, !tbaa !30
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %45, i64 0, i32 0
  store i32 %46, i32* %ssl_version, align 8, !tbaa !68
  %47 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc209 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %47, i64 0, i32 25
  %48 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc209, align 8, !tbaa !22
  %enc_flags210 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %48, i64 0, i32 12
  %49 = load i32, i32* %enc_flags210, align 8, !tbaa !24
  %and211 = and i32 %49, 8
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %land.lhs.true213, label %if.then223

land.lhs.true213:                                 ; preds = %if.end205
  %version215 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %47, i64 0, i32 0
  %50 = load i32, i32* %version215, align 8, !tbaa !26
  %cmp216 = icmp slt i32 %50, 772
  %cmp221.not = icmp eq i32 %50, 65536
  %or.cond458 = or i1 %cmp216, %cmp221.not
  br i1 %or.cond458, label %if.then223, label %if.end236

if.then223:                                       ; preds = %land.lhs.true213, %if.end205
  %session_id_length225 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %45, i64 0, i32 4
  store i64 %call23, i64* %session_id_length225, align 8, !tbaa !79
  %cmp226.not = icmp eq i64 %call23, 0
  br i1 %cmp226.not, label %if.end236, label %if.then228

if.then228:                                       ; preds = %if.then223
  %arraydecay231 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %45, i64 0, i32 5, i64 0
  %call232 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %session_id) #11
  %call233 = call i8* @memcpy(i8* noundef nonnull %arraydecay231, i8* noundef %call232, i64 noundef %call23) #12
  %.pre473 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session196, align 8, !tbaa !32
  br label %if.end236

if.end236:                                        ; preds = %land.lhs.true213, %if.then228, %if.then223, %lor.lhs.false185
  %51 = phi %struct.ssl_session_st* [ %45, %land.lhs.true213 ], [ %.pre473, %if.then228 ], [ %45, %if.then223 ], [ %39, %lor.lhs.false185 ]
  %52 = load i32, i32* %version, align 8, !tbaa !30
  %session238 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %ssl_version239 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %51, i64 0, i32 0
  %53 = load i32, i32* %ssl_version239, align 8, !tbaa !68
  %cmp240.not = icmp eq i32 %52, %53
  br i1 %cmp240.not, label %if.end243, label %if.then242

if.then242:                                       ; preds = %if.end236
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1598, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 210, i8* noundef null) #12
  br label %err

if.end243:                                        ; preds = %if.end236
  %min_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 36
  store i32 %52, i32* %min_ver, align 4, !tbaa !108
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  store i32 %52, i32* %max_ver, align 8, !tbaa !87
  %54 = load i8*, i8** %cipherchars, align 8, !tbaa !66
  %call249 = call fastcc i32 @set_client_ciphersuite(%struct.ssl_st* noundef nonnull %s, i8* noundef %54) #11
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %if.end252

if.end252:                                        ; preds = %if.end243
  %55 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool254.not = icmp eq i32 %55, 0
  %.pr463 = load i32, i32* %compression, align 4, !tbaa !67
  br i1 %tobool254.not, label %if.end260, label %land.lhs.true255

land.lhs.true255:                                 ; preds = %if.end252
  %56 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session238, align 8, !tbaa !32
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %56, i64 0, i32 19
  %57 = load i32, i32* %compress_meth, align 4, !tbaa !109
  %cmp257.not = icmp eq i32 %.pr463, %57
  br i1 %cmp257.not, label %if.end260, label %if.then259

if.then259:                                       ; preds = %land.lhs.true255
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1630, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 344, i8* noundef null) #12
  br label %err

if.end260:                                        ; preds = %if.end252, %land.lhs.true255
  %cmp261 = icmp eq i32 %.pr463, 0
  br i1 %cmp261, label %if.else278, label %if.else264

if.else264:                                       ; preds = %if.end260
  %call265 = call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #12
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then267, label %if.end271

if.then267:                                       ; preds = %if.else264
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1636, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 343, i8* noundef null) #12
  br label %err

if.end271:                                        ; preds = %if.else264
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %58 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %comp_methods = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %58, i64 0, i32 30
  %59 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods, align 8, !tbaa !86
  %call269 = call %struct.ssl_comp_st* @ssl3_comp_find(%struct.stack_st_SSL_COMP* noundef %59, i32 noundef %.pr463) #12
  %cmp275 = icmp eq %struct.ssl_comp_st* %call269, null
  br i1 %cmp275, label %if.then277, label %if.else278

if.then277:                                       ; preds = %if.end271
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1644, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_server_hello, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 257, i8* noundef null) #12
  br label %err

if.else278:                                       ; preds = %if.end260, %if.end271
  %comp.0468 = phi %struct.ssl_comp_st* [ %call269, %if.end271 ], [ null, %if.end260 ]
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  store %struct.ssl_comp_st* %comp.0468, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !59
  %60 = load %struct.raw_extension_st*, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call282 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef %17, %struct.raw_extension_st* noundef %60, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #12
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %err, label %if.end285

if.end285:                                        ; preds = %if.else278
  %61 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc287 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %61, i64 0, i32 25
  %62 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc287, align 8, !tbaa !22
  %enc_flags288 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %62, i64 0, i32 12
  %63 = load i32, i32* %enc_flags288, align 8, !tbaa !24
  %and289 = and i32 %63, 8
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %land.lhs.true291, label %if.end313

land.lhs.true291:                                 ; preds = %if.end285
  %version293 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %61, i64 0, i32 0
  %64 = load i32, i32* %version293, align 8, !tbaa !26
  %cmp294 = icmp slt i32 %64, 772
  %cmp299.not = icmp eq i32 %64, 65536
  %or.cond459 = or i1 %cmp294, %cmp299.not
  br i1 %or.cond459, label %if.end313, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %land.lhs.true291
  %setup_key_block = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %62, i64 0, i32 2
  %65 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %setup_key_block, align 8, !tbaa !62
  %call304 = call i32 %65(%struct.ssl_st* noundef nonnull %s) #12
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %err, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %land.lhs.true301
  %66 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc308 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %66, i64 0, i32 25
  %67 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc308, align 8, !tbaa !22
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %67, i64 0, i32 4
  %change_cipher_state309 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %68 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state309, align 8, !tbaa !63
  %call310 = call i32 %68(%struct.ssl_st* noundef nonnull %s, i32 noundef 145) #12
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %err, label %if.end313

if.end313:                                        ; preds = %lor.lhs.false306, %land.lhs.true291, %if.end285
  %69 = bitcast %struct.raw_extension_st** %extensions to i8**
  %70 = load i8*, i8** %69, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %70, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1700) #12
  br label %cleanup314

err:                                              ; preds = %cleanup, %land.lhs.true301, %lor.lhs.false306, %if.else278, %if.end243, %if.then200, %if.end126, %if.then86, %if.end55, %if.then51, %if.then277, %if.then267, %if.then259, %if.then242, %if.then193, %if.then125, %if.then107, %if.then82, %if.then74, %if.then47, %if.then34, %if.then30, %if.then26, %if.then21, %if.then16, %if.then12, %if.then
  %71 = bitcast %struct.raw_extension_st** %extensions to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %72, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1703) #12
  br label %cleanup314

cleanup314:                                       ; preds = %err, %if.end313, %if.end90
  %retval.0 = phi i32 [ 0, %err ], [ %call91, %if.end90 ], [ 3, %if.end313 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_process_hello_verify(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %cookiepkt = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %cookiepkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = tail call fastcc i32 @PACKET_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %cookiepkt) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1285, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls_process_hello_verify, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %cookiepkt) #11
  %cmp = icmp ugt i64 %call3, 255
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1291, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls_process_hello_verify, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 404, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !80
  %arraydecay = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 0, i64 0
  %call6 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %cookiepkt, i8* noundef %arraydecay, i64 noundef %call3) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1296, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls_process_hello_verify, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !80
  %cookie_len11 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 1
  store i64 %call3, i64* %cookie_len11, align 8, !tbaa !81
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end9 ], [ 0, %if.then8 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_server_certificate(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %cert_list_len = alloca i64, align 8
  %cert_len = alloca i64, align 8
  %x = alloca %struct.x509_st*, align 8
  %certbytes = alloca i8*, align 8
  %context = alloca i32, align 4
  %rawexts = alloca %struct.raw_extension_st*, align 8
  %extensions = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %cert_list_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i64* %cert_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !66
  %3 = bitcast i8** %certbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %4 = bitcast i32* %context to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  store i32 0, i32* %context, align 4, !tbaa !67
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 12
  %6 = bitcast %struct.stack_st_X509** %peer_chain to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %6, align 8, !tbaa !110
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1776, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 25
  %8 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %8, i64 0, i32 12
  %9 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %9, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false11

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 0
  %10 = load i32, i32* %version, align 8, !tbaa !26
  %cmp2 = icmp slt i32 %10, 772
  %cmp6.not = icmp eq i32 %10, 65536
  %or.cond129 = or i1 %cmp2, %cmp6.not
  br i1 %or.cond129, label %lor.lhs.false11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %context) #11
  %tobool9 = icmp eq i32 %call8, 0
  %11 = load i32, i32* %context, align 4
  %cmp10 = icmp ne i32 %11, 0
  %or.cond = select i1 %tobool9, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then20, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end, %land.lhs.true, %land.lhs.true7
  %call12 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef %pkt, i64* noundef nonnull %cert_list_len) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %12 = load i64, i64* %cert_list_len, align 8, !tbaa !111
  %cmp16.not = icmp ne i64 %call15, %12
  %cmp19 = icmp eq i64 %call15, 0
  %or.cond134 = or i1 %cmp19, %cmp16.not
  br i1 %or.cond134, label %if.then20, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false14
  %call22138 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %tobool23.not139 = icmp eq i64 %call22138, 0
  br i1 %tobool23.not139, label %cleanup88, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %13 = bitcast %struct.raw_extension_st** %rawexts to i8*
  %14 = bitcast %struct.PACKET* %extensions to i8*
  %15 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %16 = bitcast %struct.x509_st** %x to i8**
  br label %for.body

if.then20:                                        ; preds = %lor.lhs.false14, %lor.lhs.false11, %land.lhs.true7
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1785, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %if.end81
  %chainidx.0140 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end81 ]
  %call24 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef %pkt, i64* noundef nonnull %cert_len) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %for.body
  %17 = load i64, i64* %cert_len, align 8, !tbaa !111
  %call27 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %certbytes, i64 noundef %17) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false26, %for.body
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1791, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 135, i8* noundef null) #12
  br label %err

if.end30:                                         ; preds = %lor.lhs.false26
  %18 = load i8*, i8** %certbytes, align 8, !tbaa !66
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 0
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 85
  %21 = load i8*, i8** %propq, align 8, !tbaa !112
  %call32 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef %21) #12
  store %struct.x509_st* %call32, %struct.x509_st** %x, align 8, !tbaa !66
  %cmp33 = icmp eq %struct.x509_st* %call32, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1798, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786688, i8* noundef null) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1799, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end35:                                         ; preds = %if.end30
  %call36 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %x, i8** noundef nonnull %certbytes, i64 noundef %17) #12
  %cmp37 = icmp eq %struct.x509_st* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1804, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 42, i32 noundef 524301, i8* noundef null) #12
  br label %err

if.end39:                                         ; preds = %if.end35
  %22 = load i8*, i8** %certbytes, align 8, !tbaa !66
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %17
  %cmp40.not = icmp eq i8* %22, %add.ptr
  br i1 %cmp40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1809, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 135, i8* noundef null) #12
  br label %err

if.end42:                                         ; preds = %if.end39
  %23 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc44 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 25
  %24 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc44, align 8, !tbaa !22
  %enc_flags45 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %24, i64 0, i32 12
  %25 = load i32, i32* %enc_flags45, align 8, !tbaa !24
  %and46 = and i32 %25, 8
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end73

land.lhs.true48:                                  ; preds = %if.end42
  %version50 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 0
  %26 = load i32, i32* %version50, align 8, !tbaa !26
  %cmp51 = icmp slt i32 %26, 772
  %cmp55.not = icmp eq i32 %26, 65536
  %or.cond130 = or i1 %cmp51, %cmp55.not
  br i1 %or.cond130, label %if.end73, label %if.then56

if.then56:                                        ; preds = %land.lhs.true48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #13
  %call57 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %extensions) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1818, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #12
  br label %cleanup.thread

if.end60:                                         ; preds = %if.then56
  %cmp61 = icmp eq i64 %chainidx.0140, 0
  %conv = zext i1 %cmp61 to i32
  %call62 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extensions, i32 noundef 4096, %struct.raw_extension_st** noundef nonnull %rawexts, i64* noundef null, i32 noundef %conv) #12
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then70, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end60
  %27 = load %struct.raw_extension_st*, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  %28 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !66
  %call65 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp66 = icmp eq i64 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 4096, %struct.raw_extension_st* noundef %27, %struct.x509_st* noundef %28, i64 noundef %chainidx.0140, i32 noundef %conv67) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %cleanup

if.then70:                                        ; preds = %lor.lhs.false64, %if.end60
  %29 = load i8*, i8** %15, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1827) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then70, %if.then59
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br label %err

cleanup:                                          ; preds = %lor.lhs.false64
  %30 = load i8*, i8** %15, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1831) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #13
  br label %if.end73

if.end73:                                         ; preds = %cleanup, %land.lhs.true48, %if.end42
  %31 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain75 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %31, i64 0, i32 12
  %32 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain75, align 8, !tbaa !110
  %call76 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %32) #11
  %33 = load i8*, i8** %16, align 8, !tbaa !66
  %call78 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call76, i8* noundef %33) #12
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end73
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1835, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end81:                                         ; preds = %if.end73
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !66
  %inc = add i64 %chainidx.0140, 1
  %call22 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %tobool23.not = icmp eq i64 %call22, 0
  br i1 %tobool23.not, label %cleanup88, label %for.body, !llvm.loop !113

err:                                              ; preds = %cleanup.thread, %if.then80, %if.then41, %if.then38, %if.then34, %if.then29, %if.then20, %if.then
  %34 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !66
  call void @X509_free(%struct.x509_st* noundef %34) #12
  %35 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain83 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %35, i64 0, i32 12
  %36 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain83, align 8, !tbaa !110
  %call84 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %36) #11
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call84, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  %37 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain87 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %37, i64 0, i32 12
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %peer_chain87, align 8, !tbaa !110
  br label %cleanup88

cleanup88:                                        ; preds = %if.end81, %for.cond.preheader, %err
  %retval.0 = phi i32 [ 0, %err ], [ 2, %for.cond.preheader ], [ 2, %if.end81 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls_process_cert_verify(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_cert_status(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @tls_process_cert_status_body(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt) #11
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_key_exchange(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %save_param_start = alloca %struct.PACKET, align 8
  %signature = alloca %struct.PACKET, align 8
  %params = alloca %struct.PACKET, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %tbs = alloca i8*, align 8
  %sigalg = alloca i32, align 4
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  %1 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !66
  %2 = bitcast %struct.PACKET* %save_param_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %signature to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #13
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 4
  %5 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %conv = zext i32 %5 to i64
  %6 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !114
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #12
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %and = and i64 %conv, 456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @tls_process_ske_psk_preamble(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %pkt) #11
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %and7 = and i64 %conv, 72
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.end40

if.else:                                          ; preds = %if.end6
  %and10 = and i64 %conv, 32
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.else17, label %if.then12

if.then12:                                        ; preds = %if.else
  %call13 = call fastcc i32 @tls_process_ske_srp(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %pkt, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end40

if.else17:                                        ; preds = %if.else
  %and18 = and i64 %conv, 258
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.else17
  %call21 = call fastcc i32 @tls_process_ske_dhe(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %pkt, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end40

if.else25:                                        ; preds = %if.else17
  %and26 = and i64 %conv, 132
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.else33, label %if.then28

if.then28:                                        ; preds = %if.else25
  %call29 = call fastcc i32 @tls_process_ske_ecdhe(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %pkt, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end40

if.else33:                                        ; preds = %if.else25
  %tobool34.not = icmp eq i32 %5, 0
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.else33
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2212, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #12
  br label %err

if.end40:                                         ; preds = %if.then12, %if.then28, %if.else33, %if.then20, %if.end6
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  %cmp.not = icmp eq %struct.evp_pkey_st* %8, null
  br i1 %cmp.not, label %if.else145, label %if.then42

if.then42:                                        ; preds = %if.end40
  %9 = bitcast %struct.PACKET* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #13
  %10 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #13
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !66
  %11 = bitcast i8** %tbs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #13
  %call43 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %save_param_start) #11
  %call44 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #11
  %sub = sub i64 %call43, %call44
  %call45 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef nonnull %save_param_start, %struct.PACKET* noundef nonnull %params, i64 noundef %sub) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then42
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2231, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup138.thread

if.end48:                                         ; preds = %if.then42
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and49 = and i32 %14, 2
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else62, label %if.then51

if.then51:                                        ; preds = %if.end48
  %15 = bitcast i32* %sigalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #13
  %call52 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %sigalg) #11
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then51
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2239, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #13
  br label %cleanup138.thread

cleanup:                                          ; preds = %if.then51
  %16 = load i32, i32* %sigalg, align 4, !tbaa !67
  %conv56 = trunc i32 %16 to i16
  %call57 = tail call i32 @tls12_check_peer_sigalg(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %conv56, %struct.evp_pkey_st* noundef nonnull %8) #12
  %cmp58 = icmp slt i32 %call57, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #13
  br i1 %cmp58, label %cleanup138, label %if.end67

if.else62:                                        ; preds = %if.end48
  %call63 = tail call i32 @tls1_set_peer_legacy_sigalg(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %8) #12
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.else62
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2247, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup138.thread

if.end67:                                         ; preds = %if.else62, %cleanup
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %peer_sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 32
  %18 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !116
  %call70 = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %17, %struct.sigalg_lookup_st* noundef %18, %struct.evp_md_st** noundef nonnull %md) #12
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2253, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 297, i8* noundef null) #12
  br label %cleanup138.thread

if.end73:                                         ; preds = %if.end67
  %call81 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %signature) #11
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end73
  %call83 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #11
  %cmp84.not = icmp eq i64 %call83, 0
  br i1 %cmp84.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %lor.lhs.false, %if.end73
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2262, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup138.thread

if.end87:                                         ; preds = %lor.lhs.false
  %call88 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp89 = icmp eq %struct.evp_md_ctx_st* %call88, null
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2268, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup138.thread

if.end92:                                         ; preds = %if.end87
  %19 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !66
  %cmp93 = icmp eq %struct.evp_md_st* %19, null
  br i1 %cmp93, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end92
  %call95 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %19) #12
  br label %cond.end

cond.end:                                         ; preds = %if.end92, %cond.false
  %cond = phi i8* [ %call95, %cond.false ], [ null, %if.end92 ]
  %20 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %20, i64 0, i32 0
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %20, i64 0, i32 85
  %22 = load i8*, i8** %propq, align 8, !tbaa !112
  %call98 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call88, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %cond, %struct.ossl_lib_ctx_st* noundef %21, i8* noundef %22, %struct.evp_pkey_st* noundef nonnull %8, %struct.ossl_param_st* noundef null) #12
  %cmp99 = icmp slt i32 %call98, 1
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %cond.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2276, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %cleanup138.thread

if.end102:                                        ; preds = %cond.end
  %23 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %peer_sigalg, align 8, !tbaa !116
  %cmp106.not = icmp eq %struct.sigalg_lookup_st* %23, null
  br i1 %cmp106.not, label %if.end123, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end102
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %23, i64 0, i32 4
  %24 = load i32, i32* %sig, align 4, !tbaa !117
  %cmp111 = icmp eq i32 %24, 912
  br i1 %cmp111, label %if.then113, label %if.end123

if.then113:                                       ; preds = %land.lhs.true
  %25 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !66
  %call114 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %25, i32 noundef 6) #12
  %cmp115 = icmp slt i32 %call114, 1
  br i1 %cmp115, label %if.then121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.then113
  %26 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !66
  %call118 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %26, i32 noundef -1) #12
  %cmp119 = icmp slt i32 %call118, 1
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %lor.lhs.false117, %if.then113
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2283, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %cleanup138.thread

if.end123:                                        ; preds = %lor.lhs.false117, %land.lhs.true, %if.end102
  %call124 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %params) #11
  %call125 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %params) #11
  %call126 = call i64 @construct_key_exchange_tbs(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %tbs, i8* noundef %call124, i64 noundef %call125) #12
  %cmp127 = icmp eq i64 %call126, 0
  br i1 %cmp127, label %cleanup138.thread, label %if.end130

if.end130:                                        ; preds = %if.end123
  %call131 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %signature) #11
  %call132 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %signature) #11
  %27 = load i8*, i8** %tbs, align 8, !tbaa !66
  %call133 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef nonnull %call88, i8* noundef %call131, i64 noundef %call132, i8* noundef %27, i64 noundef %call126) #12
  %28 = load i8*, i8** %tbs, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2296) #12
  %cmp134 = icmp slt i32 %call133, 1
  br i1 %cmp134, label %if.then136, label %cleanup138.thread237

if.then136:                                       ; preds = %if.end130
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2298, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 123, i8* noundef null) #12
  br label %cleanup138.thread

cleanup138.thread237:                             ; preds = %if.end130
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call88) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #13
  br label %cleanup166

cleanup138.thread:                                ; preds = %if.then86, %if.then91, %if.then101, %if.then121, %if.then136, %if.then72, %if.then65, %if.then47, %if.end123, %cleanup.thread
  %md_ctx.0.ph = phi %struct.evp_md_ctx_st* [ null, %cleanup.thread ], [ %call88, %if.end123 ], [ null, %if.then47 ], [ null, %if.then65 ], [ null, %if.then72 ], [ %call88, %if.then136 ], [ %call88, %if.then121 ], [ %call88, %if.then101 ], [ null, %if.then91 ], [ null, %if.then86 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #13
  br label %err

cleanup138:                                       ; preds = %cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #13
  br label %err

if.else145:                                       ; preds = %if.end40
  %29 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %29, i64 0, i32 5
  %30 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and149 = and i32 %30, 68
  %tobool150.not = icmp ne i32 %and149, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool150.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end159, label %if.then154

if.then154:                                       ; preds = %if.else145
  %call155 = tail call i32 @ssl3_check_cert_and_algorithm(%struct.ssl_st* noundef nonnull %s) #11
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err, label %if.then157

if.then157:                                       ; preds = %if.then154
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2309, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 390, i8* noundef null) #12
  br label %err

if.end159:                                        ; preds = %if.else145
  %call160 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #11
  %cmp161.not = icmp eq i64 %call160, 0
  br i1 %cmp161.not, label %cleanup166, label %if.then163

if.then163:                                       ; preds = %if.end159
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2316, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_key_exchange, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 153, i8* noundef null) #12
  br label %err

err:                                              ; preds = %cleanup138, %cleanup138.thread, %if.then154, %if.then157, %if.then28, %if.then20, %if.then12, %if.then, %if.then163, %if.then35
  %md_ctx.1 = phi %struct.evp_md_ctx_st* [ null, %cleanup138 ], [ null, %if.then163 ], [ null, %if.then157 ], [ null, %if.then154 ], [ null, %if.then12 ], [ null, %if.then20 ], [ null, %if.then28 ], [ null, %if.then35 ], [ null, %if.then ], [ %md_ctx.0.ph, %cleanup138.thread ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md_ctx.1) #12
  br label %cleanup166

cleanup166:                                       ; preds = %cleanup138.thread237, %if.end159, %err
  %retval.0 = phi i32 [ 0, %err ], [ 3, %if.end159 ], [ 3, %cleanup138.thread237 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_certificate_request(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt) local_unnamed_addr #0 {
entry:
  %reqctx = alloca %struct.PACKET, align 8
  %extensions = alloca %struct.PACKET, align 8
  %rawexts = alloca %struct.raw_extension_st*, align 8
  %ctypes = alloca %struct.PACKET, align 8
  %sigalgs = alloca %struct.PACKET, align 8
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 0
  %0 = bitcast i32* %arrayidx to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %0, align 4, !tbaa !67
  %arrayidx.4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 4
  %1 = bitcast i32* %arrayidx.4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1, align 4, !tbaa !67
  %arrayidx.8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 33, i64 8
  store i32 0, i32* %arrayidx.8, align 4, !tbaa !67
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %4, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !26
  %cmp2 = icmp slt i32 %5, 772
  %cmp6.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp2, %cmp6.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast %struct.PACKET* %reqctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13
  %7 = bitcast %struct.PACKET* %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #13
  %8 = bitcast %struct.raw_extension_st** %rawexts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %9 = load i32, i32* %shutdown, align 4, !tbaa !51
  %and7 = and i32 %9, 1
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end, label %cleanup.thread

if.end:                                           ; preds = %if.then
  %ctype = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %10 = load i8*, i8** %ctype, align 8, !tbaa !119
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2349) #12
  store i8* null, i8** %ctype, align 8, !tbaa !119
  %ctype_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 10
  store i64 0, i64* %ctype_len, align 8, !tbaa !120
  %pha_context = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 102
  %11 = load i8*, i8** %pha_context, align 8, !tbaa !90
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2352) #12
  store i8* null, i8** %pha_context, align 8, !tbaa !90
  %pha_context_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 103
  store i64 0, i64* %pha_context_len, align 8, !tbaa !91
  %call = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %reqctx) #11
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call21 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %reqctx, i8** noundef nonnull %pha_context, i64* noundef nonnull %pha_context_len) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2358, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup.thread

if.end24:                                         ; preds = %lor.lhs.false
  %call25 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %extensions) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2363, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #12
  br label %cleanup.thread

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extensions, i32 noundef 16384, %struct.raw_extension_st** noundef nonnull %rawexts, i64* noundef null, i32 noundef 1) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then34, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end28
  %12 = load %struct.raw_extension_st*, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  %call32 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 16384, %struct.raw_extension_st* noundef %12, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false31, %if.end28
  %13 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2372) #12
  br label %cleanup.thread

if.end35:                                         ; preds = %lor.lhs.false31
  %15 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2375) #12
  %call36 = call i32 @tls1_process_sigalgs(%struct.ssl_st* noundef nonnull %s) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2377, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 271, i8* noundef null) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then38, %if.then34, %if.then27, %if.then23, %if.then
  %retval.0.ph = phi i32 [ 1, %if.then ], [ 0, %if.then23 ], [ 0, %if.then27 ], [ 0, %if.then34 ], [ 0, %if.then38 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %cleanup109

cleanup:                                          ; preds = %if.end35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %if.end85

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = bitcast %struct.PACKET* %ctypes to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #13
  %call42 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %ctypes) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2385, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br label %cleanup109

if.end45:                                         ; preds = %if.else
  %ctype48 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 9
  %ctype_len51 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 10
  %call52 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %ctypes, i8** noundef nonnull %ctype48, i64* noundef nonnull %ctype_len51) #11
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end45
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2390, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br label %cleanup109

if.end55:                                         ; preds = %if.end45
  %18 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc57 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %18, i64 0, i32 25
  %19 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc57, align 8, !tbaa !22
  %enc_flags58 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %19, i64 0, i32 12
  %20 = load i32, i32* %enc_flags58, align 8, !tbaa !24
  %and59 = and i32 %20, 2
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end77, label %if.then61

if.then61:                                        ; preds = %if.end55
  %21 = bitcast %struct.PACKET* %sigalgs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #13
  %call62 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %sigalgs) #11
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then61
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2398, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br label %cleanup109

if.end65:                                         ; preds = %if.then61
  %call66 = call i32 @tls1_save_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %sigalgs, i32 noundef 0) #12
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2408, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 360, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br label %cleanup109

if.end69:                                         ; preds = %if.end65
  %call70 = call i32 @tls1_process_sigalgs(%struct.ssl_st* noundef nonnull %s) #12
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %cleanup74

if.then72:                                        ; preds = %if.end69
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2412, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br label %cleanup109

cleanup74:                                        ; preds = %if.end69
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  br label %if.end77

if.end77:                                         ; preds = %cleanup74, %if.end55
  %call78 = call i32 @parse_ca_names(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #12
  %tobool79.not.not = icmp eq i32 %call78, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #13
  br i1 %tobool79.not.not, label %cleanup109, label %if.end85

if.end85:                                         ; preds = %cleanup, %if.end77
  %call86 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp87.not = icmp eq i64 %call86, 0
  br i1 %cmp87.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.end85
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2425, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_certificate_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup109

if.end89:                                         ; preds = %if.end85
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  store i32 1, i32* %cert_req, align 8, !tbaa !47
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc93 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 25
  %23 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc93, align 8, !tbaa !22
  %enc_flags94 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %23, i64 0, i32 12
  %24 = load i32, i32* %enc_flags94, align 8, !tbaa !24
  %and95 = and i32 %24, 8
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %land.lhs.true97, label %if.end108

land.lhs.true97:                                  ; preds = %if.end89
  %version99 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 0
  %25 = load i32, i32* %version99, align 8, !tbaa !26
  %cmp100 = icmp slt i32 %25, 772
  %cmp104.not = icmp eq i32 %25, 65536
  %or.cond164 = or i1 %cmp100, %cmp104.not
  br i1 %or.cond164, label %if.end108, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true97
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %26 = load i32, i32* %post_handshake_auth, align 8, !tbaa !43
  %cmp106.not = icmp eq i32 %26, 4
  br i1 %cmp106.not, label %if.end108, label %cleanup109

if.end108:                                        ; preds = %land.lhs.true105, %land.lhs.true97, %if.end89
  br label %cleanup109

cleanup109:                                       ; preds = %cleanup.thread, %land.lhs.true105, %if.then64, %if.then68, %if.then72, %if.then44, %if.then54, %if.end77, %if.end108, %if.then88
  %retval.4 = phi i32 [ 0, %if.then88 ], [ 2, %if.end108 ], [ 0, %if.end77 ], [ 0, %if.then54 ], [ 0, %if.then44 ], [ 0, %if.then72 ], [ 0, %if.then68 ], [ 0, %if.then64 ], [ 3, %land.lhs.true105 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_server_done(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2720, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_server_done, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %and = and i32 %1, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ssl_srp_calc_a_param_intern(%struct.ssl_st* noundef nonnull %s) #12
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then1
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2726, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_process_server_done, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 361, i8* noundef null) #12
  br label %return

if.end6:                                          ; preds = %if.then1, %if.end
  %call7 = tail call i32 @tls_process_initial_server_flight(%struct.ssl_st* noundef nonnull %s) #11
  %tobool8.not = icmp ne i32 %call7, 0
  %. = zext i1 %tobool8.not to i32
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %., %if.end6 ]
  ret i32 %retval.0
}

declare i32 @tls_process_change_cipher_spec(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_new_session_ticket(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %ticklen = alloca i32, align 4
  %ticket_lifetime_hint = alloca i64, align 8
  %age_add = alloca i64, align 8
  %sess_len = alloca i32, align 4
  %exts = alloca %struct.raw_extension_st*, align 8
  %nonce = alloca %struct.PACKET, align 8
  %extpkt = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %ticklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %1 = bitcast i64* %ticket_lifetime_hint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast i64* %age_add to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store i64 0, i64* %age_add, align 8, !tbaa !111
  %3 = bitcast i32* %sess_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast %struct.raw_extension_st** %exts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %exts, align 8, !tbaa !66
  %5 = bitcast %struct.PACKET* %nonce to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #13
  call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %nonce) #11
  %call = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef %pkt, i64* noundef nonnull %ticket_lifetime_hint) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %8, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %9, 772
  %cmp6.not = icmp eq i32 %9, 65536
  %or.cond = or i1 %cmp, %cmp6.not
  br i1 %or.cond, label %lor.lhs.false13, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef %pkt, i64* noundef nonnull %age_add) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %land.lhs.true7
  %call11 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %nonce) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10, %land.lhs.true, %lor.lhs.false
  %call14 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %ticklen) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc18 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 25
  %11 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc18, align 8, !tbaa !22
  %enc_flags19 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 12
  %12 = load i32, i32* %enc_flags19, align 8, !tbaa !24
  %and20 = and i32 %12, 8
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %cond.false

land.lhs.true22:                                  ; preds = %lor.lhs.false16
  %version24 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 0
  %13 = load i32, i32* %version24, align 8, !tbaa !26
  %cmp25 = icmp slt i32 %13, 772
  %cmp29.not = icmp eq i32 %13, 65536
  %or.cond319 = or i1 %cmp25, %cmp29.not
  br i1 %or.cond319, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true22
  %14 = load i32, i32* %ticklen, align 4, !tbaa !67
  %cmp30 = icmp eq i32 %14, 0
  br i1 %cmp30, label %if.then, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %cond.true
  %call32 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %conv = zext i32 %14 to i64
  %cmp33 = icmp ult i64 %call32, %conv
  br i1 %cmp33, label %if.then, label %land.lhs.true48

cond.false:                                       ; preds = %land.lhs.true22, %lor.lhs.false16
  %call35 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %15 = load i32, i32* %ticklen, align 4, !tbaa !67
  %conv36 = zext i32 %15 to i64
  %cmp37.not = icmp eq i64 %call35, %conv36
  br i1 %cmp37.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %lor.lhs.false31, %cond.true, %lor.lhs.false13, %lor.lhs.false10, %land.lhs.true7, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2464, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %cond.false
  %cmp39 = icmp eq i32 %15, 0
  br i1 %cmp39, label %cleanup228, label %if.end42

if.end42:                                         ; preds = %if.end
  br i1 %tobool21.not, label %if.end42.land.lhs.true48_crit_edge, label %lor.lhs.false58

if.end42.land.lhs.true48_crit_edge:               ; preds = %if.end42
  %version50.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 0
  %.pre = load i32, i32* %version50.phi.trans.insert, align 8, !tbaa !26
  br label %land.lhs.true48

land.lhs.true48:                                  ; preds = %lor.lhs.false31, %if.end42.land.lhs.true48_crit_edge
  %16 = phi i32 [ %.pre, %if.end42.land.lhs.true48_crit_edge ], [ %13, %lor.lhs.false31 ]
  %17 = phi i32 [ %15, %if.end42.land.lhs.true48_crit_edge ], [ %14, %lor.lhs.false31 ]
  %cmp51 = icmp slt i32 %16, 772
  %cmp56.not = icmp eq i32 %16, 65536
  %or.cond320 = or i1 %cmp51, %cmp56.not
  br i1 %or.cond320, label %lor.lhs.false58, label %land.lhs.true48.if.then61_crit_edge

land.lhs.true48.if.then61_crit_edge:              ; preds = %land.lhs.true48
  %session62.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %.pre333 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session62.phi.trans.insert, align 8, !tbaa !32
  br label %if.then61

lor.lhs.false58:                                  ; preds = %land.lhs.true48, %if.end42
  %18 = phi i32 [ %17, %land.lhs.true48 ], [ %15, %if.end42 ]
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %19 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %19, i64 0, i32 4
  %20 = load i64, i64* %session_id_length, align 8, !tbaa !79
  %cmp59.not = icmp eq i64 %20, 0
  br i1 %cmp59.not, label %if.end94, label %if.then61

if.then61:                                        ; preds = %land.lhs.true48.if.then61_crit_edge, %lor.lhs.false58
  %21 = phi %struct.ssl_session_st* [ %.pre333, %land.lhs.true48.if.then61_crit_edge ], [ %19, %lor.lhs.false58 ]
  %22 = phi i32 [ %17, %land.lhs.true48.if.then61_crit_edge ], [ %18, %lor.lhs.false58 ]
  %session62 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %call63 = tail call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef %21, i32 noundef 0) #12
  %cmp64 = icmp eq %struct.ssl_session_st* %call63, null
  br i1 %cmp64, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.then61
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !107
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %23, i64 0, i32 10
  %24 = load i32, i32* %session_cache_mode, align 8, !tbaa !121
  %and68 = and i32 %24, 1
  %cmp69.not = icmp eq i32 %and68, 0
  br i1 %cmp69.not, label %cleanup.thread, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end67
  %25 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc73 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %25, i64 0, i32 25
  %26 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc73, align 8, !tbaa !22
  %enc_flags74 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %26, i64 0, i32 12
  %27 = load i32, i32* %enc_flags74, align 8, !tbaa !24
  %and75 = and i32 %27, 8
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.then87

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %version79 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %25, i64 0, i32 0
  %28 = load i32, i32* %version79, align 8, !tbaa !26
  %cmp80 = icmp slt i32 %28, 772
  %cmp85.not = icmp eq i32 %28, 65536
  %or.cond321 = or i1 %cmp80, %cmp85.not
  br i1 %or.cond321, label %if.then87, label %cleanup.thread

if.then87:                                        ; preds = %land.lhs.true77, %land.lhs.true71
  %29 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session62, align 8, !tbaa !32
  %call90 = tail call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef nonnull %23, %struct.ssl_session_st* noundef %29) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end67, %if.then87, %land.lhs.true77
  %30 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session62, align 8, !tbaa !32
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %30) #12
  store %struct.ssl_session_st* %call63, %struct.ssl_session_st** %session62, align 8, !tbaa !32
  br label %if.end94

cleanup:                                          ; preds = %if.then61
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2492, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end94:                                         ; preds = %cleanup.thread, %lor.lhs.false58
  %31 = phi i32 [ %18, %lor.lhs.false58 ], [ %22, %cleanup.thread ]
  %call95 = tail call i64 @time(i64* noundef null) #12
  %session96 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %32 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %32, i64 0, i32 16
  store i64 %call95, i64* %time, align 8, !tbaa !122
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef %32) #12
  %33 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %33, i64 0, i32 26, i32 1
  %34 = load i8*, i8** %tick, align 8, !tbaa !33
  tail call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2513) #12
  %35 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %tick101 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %35, i64 0, i32 26, i32 1
  store i8* null, i8** %tick101, align 8, !tbaa !33
  %ticklen104 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %35, i64 0, i32 26, i32 2
  store i64 0, i64* %ticklen104, align 8, !tbaa !123
  %conv105 = zext i32 %31 to i64
  %call106 = tail call i8* @CRYPTO_malloc(i64 noundef %conv105, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2517) #12
  %36 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %tick109 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %36, i64 0, i32 26, i32 1
  store i8* %call106, i8** %tick109, align 8, !tbaa !33
  %cmp113 = icmp eq i8* %call106, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end94
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2519, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end116:                                        ; preds = %if.end94
  %call121 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %call106, i64 noundef %conv105) #11
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end116
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2523, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end124:                                        ; preds = %if.end116
  %37 = load i64, i64* %ticket_lifetime_hint, align 8, !tbaa !111
  %38 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %38, i64 0, i32 26, i32 3
  store i64 %37, i64* %tick_lifetime_hint, align 8, !tbaa !124
  %39 = load i64, i64* %age_add, align 8, !tbaa !111
  %conv127 = trunc i64 %39 to i32
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %38, i64 0, i32 26, i32 4
  store i32 %conv127, i32* %tick_age_add, align 8, !tbaa !125
  %ticklen133 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %38, i64 0, i32 26, i32 2
  store i64 %conv105, i64* %ticklen133, align 8, !tbaa !123
  %40 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc135 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 25
  %41 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc135, align 8, !tbaa !22
  %enc_flags136 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %41, i64 0, i32 12
  %42 = load i32, i32* %enc_flags136, align 8, !tbaa !24
  %and137 = and i32 %42, 8
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %if.end168

land.lhs.true139:                                 ; preds = %if.end124
  %version141 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 0
  %43 = load i32, i32* %version141, align 8, !tbaa !26
  %cmp142 = icmp slt i32 %43, 772
  %cmp147.not = icmp eq i32 %43, 65536
  %or.cond323 = or i1 %cmp142, %cmp147.not
  br i1 %or.cond323, label %if.end168, label %if.then149

if.then149:                                       ; preds = %land.lhs.true139
  %44 = bitcast %struct.PACKET* %extpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #13
  %call150 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %extpkt) #11
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then156, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %if.then149
  %call153 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp154.not = icmp eq i64 %call153, 0
  br i1 %cmp154.not, label %if.end157, label %if.then156

if.then156:                                       ; preds = %lor.lhs.false152, %if.then149
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2536, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup165.thread

if.end157:                                        ; preds = %lor.lhs.false152
  %call158 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extpkt, i32 noundef 8192, %struct.raw_extension_st** noundef nonnull %exts, i64* noundef null, i32 noundef 1) #12
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup165.thread, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %if.end157
  %45 = load %struct.raw_extension_st*, %struct.raw_extension_st** %exts, align 8, !tbaa !66
  %call161 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 8192, %struct.raw_extension_st* noundef %45, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #12
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %cleanup165.thread, label %cleanup165

cleanup165.thread:                                ; preds = %if.then156, %if.end157, %lor.lhs.false160
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #13
  br label %err

cleanup165:                                       ; preds = %lor.lhs.false160
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #13
  br label %if.end168

if.end168:                                        ; preds = %cleanup165, %land.lhs.true139, %if.end124
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %46 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %46, i64 0, i32 0
  %47 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %46, i64 0, i32 85
  %48 = load i8*, i8** %propq, align 8, !tbaa !112
  %call170 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %47, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %48) #12
  %cmp171 = icmp eq %struct.evp_md_st* %call170, null
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end168
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #12
  br label %err

if.end174:                                        ; preds = %if.end168
  %49 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %tick177 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %49, i64 0, i32 26, i32 1
  %50 = load i8*, i8** %tick177, align 8, !tbaa !33
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %49, i64 0, i32 5, i64 0
  %call180 = call i32 @EVP_Digest(i8* noundef %50, i64 noundef %conv105, i8* noundef nonnull %arraydecay, i32* noundef nonnull %sess_len, %struct.evp_md_st* noundef nonnull %call170, %struct.engine_st* noundef null) #12
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.end174
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2575, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %err

if.end183:                                        ; preds = %if.end174
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call170) #12
  %51 = load i32, i32* %sess_len, align 4, !tbaa !67
  %conv184 = zext i32 %51 to i64
  %52 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %session_id_length186 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %52, i64 0, i32 4
  store i64 %conv184, i64* %session_id_length186, align 8, !tbaa !79
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %52, i64 0, i32 10
  store i32 0, i32* %not_resumable, align 8, !tbaa !126
  %53 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc189 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %53, i64 0, i32 25
  %54 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc189, align 8, !tbaa !22
  %enc_flags190 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %54, i64 0, i32 12
  %55 = load i32, i32* %enc_flags190, align 8, !tbaa !24
  %and191 = and i32 %55, 8
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %land.lhs.true193, label %cleanup228

land.lhs.true193:                                 ; preds = %if.end183
  %version195 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %53, i64 0, i32 0
  %56 = load i32, i32* %version195, align 8, !tbaa !26
  %cmp196 = icmp slt i32 %56, 772
  %cmp201.not = icmp eq i32 %56, 65536
  %or.cond326 = or i1 %cmp196, %cmp201.not
  br i1 %or.cond326, label %cleanup228, label %if.then203

if.then203:                                       ; preds = %land.lhs.true193
  %call204 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #12
  %call205 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call204) #12
  %cmp206 = icmp sgt i32 %call205, -1
  br i1 %cmp206, label %if.end211, label %if.then210

if.then210:                                       ; preds = %if.then203
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2592, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_new_session_ticket, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end211:                                        ; preds = %if.then203
  %conv212332 = zext i32 %call205 to i64
  %arraydecay213 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 32, i64 0
  %call214 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %nonce) #11
  %call215 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %nonce) #11
  %57 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %arraydecay217 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %57, i64 0, i32 3, i64 0
  %call218 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call204, i8* noundef nonnull %arraydecay213, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @tls_process_new_session_ticket.nonce_label, i64 0, i64 0), i64 noundef 10, i8* noundef %call214, i64 noundef %call215, i8* noundef nonnull %arraydecay217, i64 noundef %conv212332, i32 noundef 1) #12
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %err, label %if.end221

if.end221:                                        ; preds = %if.end211
  %58 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session96, align 8, !tbaa !32
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %58, i64 0, i32 1
  store i64 %conv212332, i64* %master_key_length, align 8, !tbaa !104
  %59 = bitcast %struct.raw_extension_st** %exts to i8**
  %60 = load i8*, i8** %59, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %60, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2609) #12
  call void @ssl_update_cache(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #12
  br label %cleanup228

err:                                              ; preds = %cleanup165.thread, %cleanup, %if.end211, %if.then210, %if.then182, %if.then173, %if.then123, %if.then115, %if.then
  %sha256.0 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %cleanup ], [ null, %if.then115 ], [ null, %if.then173 ], [ %call170, %if.then182 ], [ null, %if.then123 ], [ null, %if.then210 ], [ null, %if.end211 ], [ null, %cleanup165.thread ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.0) #12
  %61 = bitcast %struct.raw_extension_st** %exts to i8**
  %62 = load i8*, i8** %61, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %62, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2617) #12
  br label %cleanup228

cleanup228:                                       ; preds = %if.end183, %land.lhs.true193, %if.end221, %if.end, %err
  %retval.1 = phi i32 [ 0, %err ], [ 3, %if.end ], [ 1, %if.end221 ], [ 3, %land.lhs.true193 ], [ 3, %if.end183 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.1
}

declare i32 @tls_process_finished(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_hello_req(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3596, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_hello_req, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !46
  %and = and i64 %0, 1073741824
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i32 noundef 100) #12
  br label %return

if.end3:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and4 = and i32 %3, 8
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef nonnull %s) #12
  br label %return

if.else:                                          ; preds = %if.end3
  %call8 = tail call i32 @SSL_renegotiate_abbreviated(%struct.ssl_st* noundef nonnull %s) #12
  br label %return

return:                                           ; preds = %if.then6, %if.else, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then1 ], [ 1, %if.else ], [ 1, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_encrypted_extensions(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #0 {
entry:
  %extensions = alloca %struct.PACKET, align 8
  %rawexts = alloca %struct.raw_extension_st*, align 8
  %0 = bitcast %struct.PACKET* %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.raw_extension_st** %rawexts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  %call = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %extensions) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3627, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_process_encrypted_extensions, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef %s, %struct.PACKET* noundef nonnull %extensions, i32 noundef 1024, %struct.raw_extension_st** noundef nonnull %rawexts, i64* noundef null, i32 noundef 1) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %2 = load %struct.raw_extension_st*, %struct.raw_extension_st** %rawexts, align 8, !tbaa !66
  %call5 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef %s, i32 noundef 1024, %struct.raw_extension_st* noundef %2, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false4
  %3 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3640) #12
  br label %cleanup

err:                                              ; preds = %if.end, %lor.lhs.false4, %if.then
  %5 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3644) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end8
  %retval.0 = phi i32 [ 0, %err ], [ 3, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls_process_key_update(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_client_post_process_message(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 39, label %sw.bb1
    i32 7, label %sw.bb1
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1081, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_statem_client_post_process_message, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @tls_post_process_server_certificate(%struct.ssl_st* noundef nonnull %s, i32 undef) #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry, %entry
  %call2 = tail call i32 @tls_prepare_client_certificate(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_post_process_server_certificate(%struct.ssl_st* noundef %s, i32 %wst) local_unnamed_addr #0 {
entry:
  %certidx = alloca i64, align 8
  %0 = bitcast i64* %certidx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 12
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain, align 8, !tbaa !110
  %call = tail call i32 @ssl_verify_cert_chain(%struct.ssl_st* noundef %s, %struct.stack_st_X509* noundef %2) #12
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 8, i32* %rwstate, align 8, !tbaa !42
  br label %cleanup

if.end:                                           ; preds = %entry
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %3 = load i32, i32* %verify_mode, align 8, !tbaa !127
  %cmp1 = icmp ne i32 %3, 0
  %cmp2 = icmp slt i32 %call, 1
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1883, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_post_process_server_certificate, i64 0, i64 0)) #12
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %4 = load i64, i64* %verify_result, align 8, !tbaa !128
  %conv = trunc i64 %4 to i32
  %call4 = tail call i32 @ssl_x509err2alert(i32 noundef %conv) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %call4, i32 noundef 134, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @ERR_clear_error() #12
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer_chain7 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 12
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain7, align 8, !tbaa !110
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %6) #11
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef 0) #12
  %7 = bitcast i8* %call9 to %struct.x509_st*
  %call10 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %7) #12
  %cmp11 = icmp eq %struct.evp_pkey_st* %call10, null
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call13 = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %call10) #12
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1898, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_post_process_server_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 239, i8* noundef null) #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call16 = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef nonnull %call10, i64* noundef nonnull %certidx) #12
  %cmp17 = icmp eq %struct.SSL_CERT_LOOKUP* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1903, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_post_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 247, i8* noundef null) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 12
  %10 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %10, 8
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.then31

land.lhs.true22:                                  ; preds = %if.end20
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !26
  %cmp24 = icmp slt i32 %11, 772
  %cmp29.not = icmp eq i32 %11, 65536
  %or.cond102 = or i1 %cmp24, %cmp29.not
  br i1 %or.cond102, label %if.then31, label %if.end37

if.then31:                                        ; preds = %land.lhs.true22, %if.end20
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call16, i64 0, i32 1
  %12 = load i32, i32* %amask, align 4, !tbaa !129
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %13 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %13, i64 0, i32 5
  %14 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and32 = and i32 %14, %12
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then31
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1913, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_post_process_server_certificate, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 383, i8* noundef null) #12
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true22, %if.then31
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 11
  %16 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  call void @X509_free(%struct.x509_st* noundef %16) #12
  %call39 = call i32 @X509_up_ref(%struct.x509_st* noundef %7) #12
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer41 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 11
  %18 = bitcast %struct.x509_st** %peer41 to i8**
  store i8* %call9, i8** %18, align 8, !tbaa !131
  %verify_result42 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %19 = load i64, i64* %verify_result42, align 8, !tbaa !128
  %verify_result44 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 13
  store i64 %19, i64* %verify_result44, align 8, !tbaa !132
  %20 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc46 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 25
  %21 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc46, align 8, !tbaa !22
  %enc_flags47 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %21, i64 0, i32 12
  %22 = load i32, i32* %enc_flags47, align 8, !tbaa !24
  %and48 = and i32 %22, 8
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %if.end64

land.lhs.true50:                                  ; preds = %if.end37
  %version52 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 0
  %23 = load i32, i32* %version52, align 8, !tbaa !26
  %cmp53 = icmp slt i32 %23, 772
  %cmp58.not = icmp eq i32 %23, 65536
  %or.cond103 = or i1 %cmp53, %cmp58.not
  br i1 %or.cond103, label %if.end64, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true50
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 50, i64 0
  %cert_verify_hash_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 51
  %call61 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i64 noundef 64, i64* noundef nonnull %cert_verify_hash_len) #12
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %land.lhs.true60, %land.lhs.true50, %if.end37
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true60, %if.end64, %if.then35, %if.then19, %if.then14, %if.then3, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 0, %if.then3 ], [ 0, %if.then14 ], [ 0, %if.then19 ], [ 0, %if.then35 ], [ 2, %if.end64 ], [ 0, %land.lhs.true60 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_prepare_client_certificate(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #0 {
entry:
  %x509 = alloca %struct.x509_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.x509_st** %x509 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.x509_st* null, %struct.x509_st** %x509, align 8, !tbaa !66
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  switch i32 %wst, label %if.end68 [
    i32 3, label %if.then
    i32 4, label %if.then21
  ]

if.then:                                          ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !92
  %cert_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 12
  %3 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %cert_cb, align 8, !tbaa !133
  %tobool.not = icmp eq i32 (%struct.ssl_st*, i8*)* %3, null
  br i1 %tobool.not, label %if.end11, label %if.then1

if.then1:                                         ; preds = %if.then
  %cert_cb_arg = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 13
  %4 = load i8*, i8** %cert_cb_arg, align 8, !tbaa !134
  %call = tail call i32 %3(%struct.ssl_st* noundef nonnull %s, i8* noundef %4) #12
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then1
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 4, i32* %rwstate, align 8, !tbaa !42
  br label %cleanup

if.end:                                           ; preds = %if.then1
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3428, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_prepare_client_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 234, i8* noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %rwstate10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate10, align 8, !tbaa !42
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.then
  %call12 = tail call fastcc i32 @ssl3_check_client_certificate(%struct.ssl_st* noundef nonnull %s) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then21, label %if.then14

if.then14:                                        ; preds = %if.end11
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %5 = load i32, i32* %post_handshake_auth, align 8, !tbaa !43
  %cmp15 = icmp eq i32 %5, 4
  %. = select i1 %cmp15, i32 1, i32 2
  br label %cleanup

if.then21:                                        ; preds = %entry, %if.end11
  %call22 = call i32 @ssl_do_client_cert_cb(%struct.ssl_st* noundef %s, %struct.x509_st** noundef nonnull %x509, %struct.evp_pkey_st** noundef nonnull %pkey) #11
  %cmp23 = icmp slt i32 %call22, 0
  %rwstate25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then21
  store i32 4, i32* %rwstate25, align 8, !tbaa !42
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  store i32 1, i32* %rwstate25, align 8, !tbaa !42
  %cmp28 = icmp eq i32 %call22, 1
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8
  %cmp29 = icmp ne %struct.evp_pkey_st* %6, null
  %or.cond = select i1 %cmp28, i1 %cmp29, i1 false
  %7 = load %struct.x509_st*, %struct.x509_st** %x509, align 8
  %cmp31 = icmp ne %struct.x509_st* %7, null
  %or.cond71 = select i1 %or.cond, i1 %cmp31, i1 false
  br i1 %or.cond71, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end26
  %call33 = call i32 @SSL_use_certificate(%struct.ssl_st* noundef nonnull %s, %struct.x509_st* noundef nonnull %7) #12
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  %call35 = call i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef %8) #12
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end42

if.then37:                                        ; preds = %lor.lhs.false, %if.then32
  br label %if.end42

if.else:                                          ; preds = %if.end26
  br i1 %cmp28, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.else
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3461, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_prepare_client_certificate, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 106, i8* noundef null) #12
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40, %lor.lhs.false, %if.then37
  %i.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.then37 ], [ 0, %if.then40 ], [ %call22, %if.else ]
  %9 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !66
  call void @X509_free(%struct.x509_st* noundef %9) #12
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #12
  %tobool43.not = icmp eq i32 %i.0, 0
  br i1 %tobool43.not, label %if.then50, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end42
  %call45 = call fastcc i32 @ssl3_check_client_certificate(%struct.ssl_st* noundef nonnull %s) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then50, label %if.end63

if.then50:                                        ; preds = %if.end42, %land.lhs.true44
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !30
  %cmp51 = icmp eq i32 %11, 768
  %cert_req = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 8
  br i1 %cmp51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.then50
  store i32 0, i32* %cert_req, align 8, !tbaa !47
  %call53 = call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i32 noundef 41) #12
  br label %cleanup

if.else54:                                        ; preds = %if.then50
  store i32 2, i32* %cert_req, align 8, !tbaa !47
  %call58 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #12
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.else54, %land.lhs.true44
  %post_handshake_auth64 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %12 = load i32, i32* %post_handshake_auth64, align 8, !tbaa !43
  %cmp65 = icmp eq i32 %12, 4
  %.102 = select i1 %cmp65, i32 1, i32 2
  br label %cleanup

if.end68:                                         ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3488, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_prepare_client_certificate, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.else54, %if.then14, %if.end68, %if.then52, %if.then24, %if.then8, %if.then6
  %retval.0 = phi i32 [ 3, %if.then6 ], [ 0, %if.then8 ], [ 4, %if.then24 ], [ 2, %if.then52 ], [ 0, %if.end68 ], [ %., %if.then14 ], [ 0, %if.else54 ], [ %.102, %if.end63 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @ssl_set_client_hello_version(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ssl_version_supported(%struct.ssl_st* noundef, i32 noundef, %struct.ssl_method_st** noundef) local_unnamed_addr #3

declare i32 @SSL_SESSION_is_resumable(%struct.ssl_session_st* noundef) local_unnamed_addr #3

declare i32 @ssl_get_new_session(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_fill_hello_random(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_cipher_list_to_bytes(%struct.ssl_st* noundef %s, %struct.stack_st_SSL_CIPHER* noundef %sk, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %1 = load i32, i32* %renegotiate, align 8, !tbaa !44
  %tobool.not = icmp eq i32 %1, 0
  %call = tail call i32 @ssl_set_client_disabled(%struct.ssl_st* noundef %s) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3671, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 191, i8* noundef null) #12
  br label %cleanup107

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %sk, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3676, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup107

if.end3:                                          ; preds = %if.end
  %spec.select = select i1 %tobool.not, i64 65532, i64 65534
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %2 = load i32, i32* %mode, align 8, !tbaa !135
  %and = and i32 %2, 128
  %tobool7.not = icmp eq i32 %and, 0
  %sub9 = add nsw i64 %spec.select, -2
  %maxlen.1 = select i1 %tobool7.not, i64 %spec.select, i64 %sub9
  %call11 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %sk) #11
  %call12176 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #12
  %cmp13177 = icmp sgt i32 %call12176, 0
  br i1 %cmp13177, label %for.body.lr.ph, label %if.then77.thread

for.body.lr.ph:                                   ; preds = %if.end3
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %max_ver = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 37
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %totlen.0179 = phi i64 [ 0, %for.body.lr.ph ], [ %totlen.1.ph, %for.inc ]
  %maxverok.0178 = phi i64 [ 0, %for.body.lr.ph ], [ %maxverok.2.ph, %for.inc ]
  %call16 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call11, i32 noundef %i.0180) #12
  %3 = bitcast i8* %call16 to %struct.ssl_cipher_st*
  %call17 = call i32 @ssl_cipher_disabled(%struct.ssl_st* noundef %s, %struct.ssl_cipher_st* noundef %3, i32 noundef 65537, i32 noundef 0) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %for.inc

if.end20:                                         ; preds = %for.body
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %put_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 20
  %5 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char, align 8, !tbaa !136
  %call21 = call i32 %5(%struct.ssl_cipher_st* noundef %3, %struct.wpacket_st* noundef %pkt, i64* noundef nonnull %len) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %tobool25.not = icmp eq i64 %maxverok.0178, 0
  br i1 %tobool25.not, label %if.then26, label %if.end74

if.then26:                                        ; preds = %if.end24
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and28 = and i32 %8, 8
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then26
  %max_dtls = getelementptr inbounds i8, i8* %call16, i64 56
  %9 = bitcast i8* %max_dtls to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !137
  %cmp31 = icmp eq i32 %10, 256
  %spec.select165 = select i1 %cmp31, i32 65280, i32 %10
  %11 = load i32, i32* %max_ver, align 8, !tbaa !87
  %cmp33 = icmp eq i32 %11, 256
  %cond40 = select i1 %cmp33, i32 65280, i32 %11
  %cmp41.not = icmp sgt i32 %spec.select165, %cond40
  br i1 %cmp41.not, label %if.end74, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then30
  %min_dtls = getelementptr inbounds i8, i8* %call16, i64 52
  %12 = bitcast i8* %min_dtls to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !138
  %cmp42 = icmp eq i32 %13, 256
  %spec.select166 = select i1 %cmp42, i32 65280, i32 %13
  %cmp59.not = icmp sge i32 %spec.select166, %cond40
  br label %if.end74

if.else:                                          ; preds = %if.then26
  %max_tls = getelementptr inbounds i8, i8* %call16, i64 48
  %14 = bitcast i8* %max_tls to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !139
  %16 = load i32, i32* %max_ver, align 8, !tbaa !87
  %cmp65.not = icmp slt i32 %15, %16
  br i1 %cmp65.not, label %if.end74, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.else
  %min_tls = getelementptr inbounds i8, i8* %call16, i64 44
  %17 = bitcast i8* %min_tls to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !140
  %cmp70.not = icmp sle i32 %18, %16
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true, %land.lhs.true66, %if.then30, %if.else, %if.end24
  %maxverok.1.shrunk = phi i1 [ true, %if.end24 ], [ false, %if.then30 ], [ false, %if.else ], [ %cmp70.not, %land.lhs.true66 ], [ %cmp59.not, %land.lhs.true ]
  %maxverok.1 = zext i1 %maxverok.1.shrunk to i64
  %19 = load i64, i64* %len, align 8, !tbaa !111
  %add = add i64 %19, %totlen.0179
  br label %for.inc

cleanup:                                          ; preds = %if.end20
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3710, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup107

for.inc:                                          ; preds = %if.end74, %for.body
  %maxverok.2.ph = phi i64 [ %maxverok.0178, %for.body ], [ %maxverok.1, %if.end74 ]
  %totlen.1.ph = phi i64 [ %totlen.0179, %for.body ], [ %add, %if.end74 ]
  %inc = add nuw nsw i32 %i.0180, 1
  %call12 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #12
  %cmp13 = icmp slt i32 %inc, %call12
  %cmp14 = icmp ult i64 %totlen.1.ph, %maxlen.1
  %20 = select i1 %cmp13, i1 %cmp14, i1 false
  br i1 %20, label %for.body, label %for.end, !llvm.loop !141

for.end:                                          ; preds = %for.inc
  %cmp75 = icmp ne i64 %totlen.1.ph, 0
  %tobool76 = icmp ne i64 %maxverok.2.ph, 0
  %or.cond = select i1 %cmp75, i1 %tobool76, i1 false
  br i1 %or.cond, label %if.then85, label %if.then77

if.then77:                                        ; preds = %for.end
  %spec.select189 = select i1 %tobool76, i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0)
  br label %if.then77.thread

if.then77.thread:                                 ; preds = %if.then77, %if.end3
  %21 = phi i8* [ getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), %if.end3 ], [ %spec.select189, %if.then77 ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3736, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 181, i8* noundef %21) #12
  br label %cleanup107

if.then85:                                        ; preds = %for.end
  br i1 %tobool.not, label %if.then87, label %if.end94

if.then87:                                        ; preds = %if.then85
  %method88 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method88, align 8, !tbaa !4
  %put_cipher_by_char89 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 20
  %23 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char89, align 8, !tbaa !136
  %call90 = call i32 %23(%struct.ssl_cipher_st* noundef nonnull @ssl_cipher_list_to_bytes.scsv, %struct.wpacket_st* noundef %pkt, i64* noundef nonnull %len) #12
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then87
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3747, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup107

if.end94:                                         ; preds = %if.then87, %if.then85
  %24 = load i32, i32* %mode, align 8, !tbaa !135
  %and96 = and i32 %24, 128
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %cleanup107, label %if.then98

if.then98:                                        ; preds = %if.end94
  %method99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %25 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method99, align 8, !tbaa !4
  %put_cipher_by_char100 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %25, i64 0, i32 20
  %26 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char100, align 8, !tbaa !136
  %call101 = call i32 %26(%struct.ssl_cipher_st* noundef nonnull @ssl_cipher_list_to_bytes.scsv.9, %struct.wpacket_st* noundef %pkt, i64* noundef nonnull %len) #12
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %cleanup107

if.then103:                                       ; preds = %if.then98
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3756, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_list_to_bytes, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup107

cleanup107:                                       ; preds = %cleanup, %if.then98, %if.end94, %if.then103, %if.then92, %if.then77.thread, %if.then2, %if.then
  %retval.2 = phi i32 [ 0, %if.then2 ], [ 0, %cleanup ], [ 0, %if.then103 ], [ 0, %if.then92 ], [ 0, %if.then77.thread ], [ 0, %if.then ], [ 1, %if.end94 ], [ 1, %if.then98 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.2
}

declare %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ssl_allow_compression(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tls_construct_extensions(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #7 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !114
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !67
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !114
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !143
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #2 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !143
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data, i64 noundef %len) #11
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
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #2 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #6 {
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
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_null_init(%struct.PACKET* nocapture noundef writeonly %pkt) unnamed_addr #9 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* null, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 0, i64* %remaining, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #7 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !114
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !67
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #11
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !114
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !143
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls_collect_extensions(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.raw_extension_st** noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_choose_client_version(%struct.ssl_st* noundef, i32 noundef, %struct.raw_extension_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_client_ciphersuite(%struct.ssl_st* noundef %s, i8* noundef %cipherchars) unnamed_addr #0 {
entry:
  %call = tail call %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef %s, i8* noundef %cipherchars, i32 noundef 0) #12
  %cmp = icmp eq %struct.ssl_cipher_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1313, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 248, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ssl_cipher_disabled(%struct.ssl_st* noundef %s, %struct.ssl_cipher_st* noundef nonnull %call, i32 noundef 65539, i32 noundef 1) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1321, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 261, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.stack_st_SSL_CIPHER* @ssl_get_ciphers_by_id(%struct.ssl_st* noundef %s) #12
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call4) #11
  %0 = bitcast %struct.ssl_cipher_st* %call to i8*
  %call7 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call5, i8* noundef nonnull %0) #12
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1329, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 261, i8* noundef null) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end10
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !26
  %cmp13 = icmp slt i32 %4, 772
  %cmp17.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp13, %cmp17.not
  br i1 %or.cond, label %if.end27, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %5 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %cmp19.not = icmp eq %struct.ssl_cipher_st* %5, null
  br i1 %cmp19.not, label %if.end27, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %5, i64 0, i32 3
  %6 = load i32, i32* %id, align 8, !tbaa !144
  %id24 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 3
  %7 = load i32, i32* %id24, align 8, !tbaa !144
  %cmp25.not = icmp eq i32 %6, %7
  br i1 %cmp25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true20
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1336, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 261, i8* noundef null) #12
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true20, %land.lhs.true18, %land.lhs.true, %if.end10
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %8 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 20
  %9 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !58
  %cmp28.not = icmp eq %struct.ssl_cipher_st* %9, null
  br i1 %cmp28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end27
  %id32 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %9, i64 0, i32 3
  %10 = load i32, i32* %id32, align 8, !tbaa !144
  %conv = zext i32 %10 to i64
  %cipher_id = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 21
  store i64 %conv, i64* %cipher_id, align 8, !tbaa !145
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %11 = load i32, i32* %hit, align 8, !tbaa !28
  %tobool35.not = icmp eq i32 %11, 0
  br i1 %tobool35.not, label %if.end71, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end34
  %cipher_id38 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 21
  %12 = load i64, i64* %cipher_id38, align 8, !tbaa !145
  %id39 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 3
  %13 = load i32, i32* %id39, align 8, !tbaa !144
  %conv40 = zext i32 %13 to i64
  %cmp41.not = icmp eq i64 %12, %conv40
  br i1 %cmp41.not, label %if.end71, label %if.then43

if.then43:                                        ; preds = %land.lhs.true36
  br i1 %tobool11.not, label %land.lhs.true49, label %if.else

land.lhs.true49:                                  ; preds = %if.then43
  %version51 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %14 = load i32, i32* %version51, align 8, !tbaa !26
  %cmp52 = icmp slt i32 %14, 772
  %cmp57.not = icmp eq i32 %14, 65536
  %or.cond114 = or i1 %cmp52, %cmp57.not
  br i1 %or.cond114, label %if.else, label %if.then59

if.then59:                                        ; preds = %land.lhs.true49
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 13
  %16 = load i32, i32* %algorithm2, align 8, !tbaa !146
  %call60 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %15, i32 noundef %16) #12
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %cipher63 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %18, i64 0, i32 20
  %19 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher63, align 8, !tbaa !58
  %algorithm264 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %19, i64 0, i32 13
  %20 = load i32, i32* %algorithm264, align 8, !tbaa !146
  %call65 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %17, i32 noundef %20) #12
  %cmp66.not = icmp eq %struct.evp_md_st* %call60, %call65
  br i1 %cmp66.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.then59
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1356, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 218, i8* noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true49, %if.then43
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1365, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.set_client_ciphersuite, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 197, i8* noundef null) #12
  br label %cleanup

if.end71:                                         ; preds = %if.then59, %land.lhs.true36, %if.end34
  %new_cipher74 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  store %struct.ssl_cipher_st* %call, %struct.ssl_cipher_st** %new_cipher74, align 8, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.else, %if.then68, %if.then26, %if.then9, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then9 ], [ 0, %if.else ], [ 0, %if.then68 ], [ 1, %if.end71 ], [ 0, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_as_hello_retry_request(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %extpkt) unnamed_addr #0 {
entry:
  %extensions = alloca %struct.raw_extension_st*, align 8
  %0 = bitcast %struct.raw_extension_st** %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !57
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %1) #12
  store %struct.evp_cipher_ctx_st* null, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !57
  %call = call i32 @tls_collect_extensions(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %extpkt, i32 noundef 2048, %struct.raw_extension_st** noundef nonnull %extensions, i64* noundef null, i32 noundef 1) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.raw_extension_st*, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %call2 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 2048, %struct.raw_extension_st* noundef %2, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = bitcast %struct.raw_extension_st** %extensions to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1727) #12
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %extensions, align 8, !tbaa !66
  %tls13_cookie_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 33
  %5 = load i64, i64* %tls13_cookie_len, align 8, !tbaa !147
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !148
  %cmp4.not = icmp eq %struct.evp_pkey_st* %6, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1735, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.tls_process_as_hello_retry_request, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 214, i8* noundef null) #12
  br label %err

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = call i32 @create_synthetic_message_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !149
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 1
  %8 = load i8*, i8** %data, align 8, !tbaa !150
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %9 = load i64, i64* %init_num, align 8, !tbaa !41
  %add = add i64 %9, 4
  %call11 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef %8, i64 noundef %add) #12
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %cleanup

err:                                              ; preds = %if.end10, %if.end6, %entry, %lor.lhs.false, %if.then5
  %10 = bitcast %struct.raw_extension_st** %extensions to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1762) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @tls_validate_all_contexts(%struct.ssl_st* noundef, i32 noundef, %struct.raw_extension_st* noundef) local_unnamed_addr #3

declare i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #3

declare i32 @tls_parse_extension(%struct.ssl_st* noundef, i32 noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ssl_comp_st* @ssl3_comp_find(%struct.stack_st_SSL_COMP* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tls_parse_all_extensions(%struct.ssl_st* noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #6 {
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

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #7 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !114
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !67
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !114
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !143
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare i32 @ssl_verify_cert_chain(%struct.ssl_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #3

declare i32 @ssl_x509err2alert(i32 noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #3

declare i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_ske_psk_preamble(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #0 {
entry:
  %psk_identity_hint = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %psk_identity_hint to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %psk_identity_hint) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1942, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_ske_psk_preamble, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %psk_identity_hint) #11
  %cmp = icmp ugt i64 %call1, 256
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1953, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_ske_psk_preamble, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 40, i32 noundef 146, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp5 = icmp eq i64 %call1, 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %psk_identity_hint7 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %2 = load i8*, i8** %psk_identity_hint7, align 8, !tbaa !152
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1958) #12
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %psk_identity_hint9 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 8
  store i8* null, i8** %psk_identity_hint9, align 8, !tbaa !152
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %call12 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %psk_identity_hint, i8** noundef nonnull %psk_identity_hint7) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.else
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1962, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_ske_psk_preamble, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else, %if.then14, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then14 ], [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_ske_srp(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, %struct.evp_pkey_st** nocapture noundef writeonly %pkey) unnamed_addr #0 {
entry:
  %prime = alloca %struct.PACKET, align 8
  %generator = alloca %struct.PACKET, align 8
  %salt = alloca %struct.PACKET, align 8
  %server_pub = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %prime to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %generator to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %salt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %server_pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #13
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %prime) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %generator) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %salt) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %server_pub) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1982, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_srp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call9 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %prime) #11
  %call10 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %prime) #11
  %conv = trunc i64 %call10 to i32
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call9, i32 noundef %conv, %struct.bignum_st* noundef null) #12
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  store %struct.bignum_st* %call11, %struct.bignum_st** %N, align 8, !tbaa !153
  %cmp = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp, label %if.then38, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %generator) #11
  %call15 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %generator) #11
  %conv16 = trunc i64 %call15 to i32
  %call17 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call14, i32 noundef %conv16, %struct.bignum_st* noundef null) #12
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  store %struct.bignum_st* %call17, %struct.bignum_st** %g, align 8, !tbaa !154
  %cmp19 = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp19, label %if.then38, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false13
  %call22 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %salt) #11
  %call23 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %salt) #11
  %conv24 = trunc i64 %call23 to i32
  %call25 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call22, i32 noundef %conv24, %struct.bignum_st* noundef null) #12
  %s27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  store %struct.bignum_st* %call25, %struct.bignum_st** %s27, align 8, !tbaa !155
  %cmp28 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp28, label %if.then38, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false21
  %call31 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %server_pub) #11
  %call32 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %server_pub) #11
  %conv33 = trunc i64 %call32 to i32
  %call34 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call31, i32 noundef %conv33, %struct.bignum_st* noundef null) #12
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  store %struct.bignum_st* %call34, %struct.bignum_st** %B, align 8, !tbaa !156
  %cmp36 = icmp eq %struct.bignum_st* %call34, null
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false30, %lor.lhs.false21, %lor.lhs.false13, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1998, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_srp, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524291, i8* noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false30
  %call40 = tail call i32 @srp_verify_server_param(%struct.ssl_st* noundef nonnull %s) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end39
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 5
  %5 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and = and i32 %5, 3
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %cleanup, label %if.then45

if.then45:                                        ; preds = %if.end43
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 11
  %7 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %call46 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %7) #12
  store %struct.evp_pkey_st* %call46, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then45, %if.end39, %if.then38, %if.then
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 0, %if.then ], [ 0, %if.end39 ], [ 1, %if.then45 ], [ 1, %if.end43 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_ske_dhe(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, %struct.evp_pkey_st** nocapture noundef writeonly %pkey) unnamed_addr #0 {
entry:
  %prime = alloca %struct.PACKET, align 8
  %generator = alloca %struct.PACKET, align 8
  %pub_key = alloca %struct.PACKET, align 8
  %peer_tmp = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.PACKET* %prime to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast %struct.PACKET* %generator to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %2 = bitcast %struct.PACKET* %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %3 = bitcast %struct.evp_pkey_st** %peer_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %prime) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %generator) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %pub_key) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2031, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %prime) #11
  %call7 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %prime) #11
  %conv = trunc i64 %call7 to i32
  %call8 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call6, i32 noundef %conv, %struct.bignum_st* noundef null) #12
  %call9 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %generator) #11
  %call10 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %generator) #11
  %conv11 = trunc i64 %call10 to i32
  %call12 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call9, i32 noundef %conv11, %struct.bignum_st* noundef null) #12
  %call13 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %pub_key) #11
  %call14 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pub_key) #11
  %conv15 = trunc i64 %call14 to i32
  %call16 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %call13, i32 noundef %conv15, %struct.bignum_st* noundef null) #12
  %cmp = icmp eq %struct.bignum_st* %call8, null
  %cmp19 = icmp eq %struct.bignum_st* %call12, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp19
  %cmp22 = icmp eq %struct.bignum_st* %call16, null
  %or.cond97 = select i1 %or.cond, i1 true, i1 %cmp22
  br i1 %or.cond97, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2041, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 524291, i8* noundef null) #12
  br label %err

if.end25:                                         ; preds = %if.end
  %call26 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #12
  %cmp27 = icmp eq %struct.ossl_param_bld_st* %call26, null
  br i1 %cmp27, label %if.then42, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end25
  %call30 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call8) #12
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then42, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call33 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call12) #12
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then42, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %call36 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call16) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then42, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %call39 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call26) #12
  %cmp40 = icmp eq %struct.ossl_param_st* %call39, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false38, %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false29, %if.end25
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2052, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end43:                                         ; preds = %lor.lhs.false38
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 0
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 85
  %6 = load i8*, i8** %propq, align 8, !tbaa !112
  %call45 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef %6) #12
  %cmp46 = icmp eq %struct.evp_pkey_ctx_st* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2058, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end49:                                         ; preds = %if.end43
  %call50 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call45) #12
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then57, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end49
  %call54 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call45, %struct.evp_pkey_st** noundef nonnull %peer_tmp, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %call39) #12
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false53, %if.end49
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2063, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 102, i8* noundef null) #12
  br label %err

if.end58:                                         ; preds = %lor.lhs.false53
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call45) #12
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx60 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx60, align 8, !tbaa !74
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %propq62 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 85
  %10 = load i8*, i8** %propq62, align 8, !tbaa !112
  %call63 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %8, %struct.evp_pkey_st* noundef %9, i8* noundef %10) #12
  %cmp64 = icmp eq %struct.evp_pkey_ctx_st* %call63, null
  br i1 %cmp64, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end58
  %call67 = call i32 @EVP_PKEY_param_check_quick(%struct.evp_pkey_ctx_st* noundef nonnull %call63) #12
  %cmp68.not = icmp eq i32 %call67, 1
  br i1 %cmp68.not, label %lor.lhs.false70, label %if.then74

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %call71 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef nonnull %call63) #12
  %cmp72.not = icmp eq i32 %call71, 1
  br i1 %cmp72.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %lor.lhs.false70, %lor.lhs.false66, %if.end58
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2078, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 102, i8* noundef null) #12
  br label %err

if.end75:                                         ; preds = %lor.lhs.false70
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %call76 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %11) #12
  %12 = bitcast %struct.evp_pkey_st** %peer_tmp to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !66
  %call77 = call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 262151, i32 noundef %call76, i32 noundef 0, i8* noundef %13) #12
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2085, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_ske_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 394, i8* noundef null) #12
  br label %err

if.end80:                                         ; preds = %if.end75
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %peer_tmp81 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  store %struct.evp_pkey_st* %14, %struct.evp_pkey_st** %peer_tmp81, align 8, !tbaa !115
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %15 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %15, i64 0, i32 5
  %16 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and = and i32 %16, 3
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %err, label %if.then84

if.then84:                                        ; preds = %if.end80
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 11
  %18 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %call85 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %18) #12
  store %struct.evp_pkey_st* %call85, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  br label %err

err:                                              ; preds = %if.end80, %if.then84, %if.then79, %if.then74, %if.then57, %if.then48, %if.then42, %if.then24
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then24 ], [ null, %if.then42 ], [ null, %if.then48 ], [ %call45, %if.then57 ], [ %call63, %if.then74 ], [ %call63, %if.then79 ], [ %call63, %if.then84 ], [ %call63, %if.end80 ]
  %params.1 = phi %struct.ossl_param_st* [ null, %if.then24 ], [ null, %if.then42 ], [ %call39, %if.then48 ], [ %call39, %if.then57 ], [ %call39, %if.then74 ], [ %call39, %if.then79 ], [ %call39, %if.then84 ], [ %call39, %if.end80 ]
  %tmpl.0 = phi %struct.ossl_param_bld_st* [ null, %if.then24 ], [ %call26, %if.then42 ], [ %call26, %if.then48 ], [ %call26, %if.then57 ], [ %call26, %if.then74 ], [ %call26, %if.then79 ], [ %call26, %if.then84 ], [ %call26, %if.end80 ]
  %ret.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then42 ], [ 0, %if.then48 ], [ 0, %if.then57 ], [ 0, %if.then74 ], [ 0, %if.then79 ], [ 1, %if.then84 ], [ 1, %if.end80 ]
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %tmpl.0) #12
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.1) #12
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !66
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %19) #12
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #12
  call void @BN_free(%struct.bignum_st* noundef %call8) #12
  call void @BN_free(%struct.bignum_st* noundef %call12) #12
  call void @BN_free(%struct.bignum_st* noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_ske_ecdhe(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt, %struct.evp_pkey_st** nocapture noundef writeonly %pkey) unnamed_addr #0 {
entry:
  %encoded_pt = alloca %struct.PACKET, align 8
  %curve_type = alloca i32, align 4
  %curve_id = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %encoded_pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  %1 = bitcast i32* %curve_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = bitcast i32* %curve_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %curve_type) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %curve_id) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2125, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_ske_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %curve_type, align 4, !tbaa !67
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %lor.lhs.false3, label %if.then6

lor.lhs.false3:                                   ; preds = %if.end
  %4 = load i32, i32* %curve_id, align 4, !tbaa !67
  %conv = trunc i32 %4 to i16
  %call4 = tail call i32 @tls1_check_group_id(%struct.ssl_st* noundef %s, i16 noundef zeroext %conv, i32 noundef 1) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false3, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2134, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_ske_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 378, i8* noundef null) #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %call9 = tail call %struct.evp_pkey_st* @ssl_generate_param_group(%struct.ssl_st* noundef %s, i16 noundef zeroext %conv) #12
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  store %struct.evp_pkey_st* %call9, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %cmp10 = icmp eq %struct.evp_pkey_st* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2140, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_ske_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 314, i8* noundef null) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %encoded_pt) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2145, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_ske_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %call20 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %encoded_pt) #11
  %call21 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %encoded_pt) #11
  %call22 = tail call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef %5, i8* noundef %call20, i64 noundef %call21) #12
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end17
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2152, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_ske_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 306, i8* noundef null) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %6 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %6, i64 0, i32 5
  %7 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %8 = and i32 %7, 9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end42, label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.end26
  %session38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %10 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session38, align 8, !tbaa !32
  %peer39 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 11
  %11 = load %struct.x509_st*, %struct.x509_st** %peer39, align 8, !tbaa !131
  %call40 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %11) #12
  store %struct.evp_pkey_st* %call40, %struct.evp_pkey_st** %pkey, align 8, !tbaa !66
  br label %if.end42

if.end42:                                         ; preds = %if.end26, %if.end42.sink.split
  %session43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %12 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session43, align 8, !tbaa !32
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %12, i64 0, i32 22
  store i32 %4, i32* %kex_group, align 8, !tbaa !157
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then25, %if.then16, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then12 ], [ 0, %if.then25 ], [ 1, %if.end42 ], [ 0, %if.then16 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %len) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @tls12_check_peer_sigalg(%struct.ssl_st* noundef, i16 noundef zeroext, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @tls1_set_peer_legacy_sigalg(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef, %struct.sigalg_lookup_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #3

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @construct_key_exchange_tbs(%struct.ssl_st* noundef, i8** noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_check_cert_and_algorithm(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %idx = alloca i64, align 8
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 4
  %2 = load i32, i32* %algorithm_mkey, align 4, !tbaa !39
  %conv = zext i32 %2 to i64
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %4 = and i32 %3, 171
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 11
  %6 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %6) #12
  %call5 = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef %call, i64* noundef nonnull %idx) #12
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call5, null
  br i1 %cmp, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call5, i64 0, i32 1
  %7 = load i32, i32* %amask, align 4, !tbaa !129
  %and857 = and i32 %7, %3
  %cmp9 = icmp eq i32 %and857, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3546, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl3_check_cert_and_algorithm, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 221, i8* noundef null) #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %and14 = and i32 %7, 8
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end12
  %8 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer18 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %8, i64 0, i32 11
  %9 = load %struct.x509_st*, %struct.x509_st** %peer18, align 8, !tbaa !131
  %call19 = call i32 @ssl_check_srvr_ecc_cert_and_alg(%struct.x509_st* noundef %9, %struct.ssl_st* noundef nonnull %s) #12
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.then16
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3553, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl3_check_cert_and_algorithm, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 304, i8* noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %and24 = and i64 %conv, 65
  %tobool25 = icmp ne i64 %and24, 0
  %10 = load i64, i64* %idx, align 8
  %cmp26 = icmp ne i64 %10, 0
  %or.cond = select i1 %tobool25, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3559, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl3_check_cert_and_algorithm, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 169, i8* noundef null) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %and30 = and i64 %conv, 2
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %cleanup, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end29
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %cmp34 = icmp eq %struct.evp_pkey_st* %11, null
  br i1 %cmp34, label %if.then36, label %cleanup

if.then36:                                        ; preds = %land.lhs.true32
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3564, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl3_check_cert_and_algorithm, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true32, %if.then16, %entry, %if.then36, %if.then28, %if.end22, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end22 ], [ 0, %if.then28 ], [ 0, %if.then36 ], [ 1, %entry ], [ 1, %if.then16 ], [ 1, %land.lhs.true32 ], [ 1, %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !66
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 421) #12
  store i8* null, i8** %data, align 8, !tbaa !66
  store i64 0, i64* %len, align 8, !tbaa !111
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !142
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 430) #12
  store i8* %call1, i8** %data, align 8, !tbaa !66
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !111
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @tls1_process_sigalgs(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls1_save_sigalgs(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @parse_ca_names(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #3

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

declare void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_send_fatal(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @tls13_hkdf_expand(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @ssl_update_cache(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_cert_status_body(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #0 {
entry:
  %resplen = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %resplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %type) #11
  %tobool = icmp eq i32 %call, 0
  %2 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %2, 1
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2632, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cert_status_body, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 329, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* noundef %pkt, i64* noundef nonnull %resplen) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then6, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %call4 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %3 = load i64, i64* %resplen, align 8, !tbaa !111
  %cmp5.not = icmp eq i64 %call4, %3
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false3, %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2637, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cert_status_body, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %call4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2640) #12
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  store i8* %call8, i8** %resp, align 8, !tbaa !158
  %cmp12 = icmp eq i8* %call8, null
  %resp_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  store i64 0, i64* %resp_len, align 8, !tbaa !159
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2643, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cert_status_body, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  store i64 %call4, i64* %resp_len, align 8, !tbaa !159
  %call23 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %call8, i64 noundef %call4) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.end16
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2648, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cert_status_body, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then25, %if.then13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then13 ], [ 0, %if.then25 ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3_len(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %i = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef %pkt, i64* noundef nonnull %i) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %i, align 8, !tbaa !111
  store i64 %1, i64* %data, align 8, !tbaa !111
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_initial_server_flight(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl3_check_cert_and_algorithm(%struct.ssl_st* noundef %s) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %0 = load i32, i32* %status_type, align 8, !tbaa !160
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %status_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 6
  %2 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %status_cb, align 8, !tbaa !161
  %cmp2.not = icmp eq i32 (%struct.ssl_st*, i8*)* %2, null
  br i1 %cmp2.not, label %if.end16, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %status_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 7
  %3 = load i8*, i8** %status_arg, align 8, !tbaa !162
  %call9 = tail call i32 %2(%struct.ssl_st* noundef nonnull %s, i8* noundef %3) #12
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then3
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2694, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_process_initial_server_flight, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 113, i32 noundef 328, i8* noundef null) #12
  br label %return

if.end12:                                         ; preds = %if.then3
  %cmp13 = icmp slt i32 %call9, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2699, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_process_initial_server_flight, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 305, i8* noundef null) #12
  br label %return

if.end16:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %ct_validation_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 91
  %4 = load i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)** %ct_validation_callback, align 8, !tbaa !163
  %cmp17.not = icmp eq i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)* %4, null
  br i1 %cmp17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @ssl_validate_ct(%struct.ssl_st* noundef nonnull %s) #12
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %if.then18
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %5 = load i32, i32* %verify_mode, align 8, !tbaa !127
  %and = and i32 %5, 1
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end25, label %return

if.end25:                                         ; preds = %if.then18, %land.lhs.true21, %if.end16
  br label %return

return:                                           ; preds = %if.then14, %if.then11, %land.lhs.true21, %entry, %if.end25
  %retval.1 = phi i32 [ 1, %if.end25 ], [ 0, %entry ], [ 0, %land.lhs.true21 ], [ 0, %if.then11 ], [ 0, %if.then14 ]
  ret i32 %retval.1
}

declare i32 @ssl_validate_ct(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ssl_srp_calc_a_param_intern(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_gost18_cke_cipher_nid(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #2 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 6
  %1 = load i32, i32* %algorithm_enc, align 4, !tbaa !164
  %and = and i32 %1, 4194304
  %cmp.not = icmp eq i32 %and, 0
  %and5 = and i32 %1, 8388608
  %cmp6.not = icmp eq i32 %and5, 0
  %. = select i1 %cmp6.not, i32 0, i32 1013
  %retval.0 = select i1 %cmp.not, i32 %., i32 1188
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_gost_ukm(%struct.ssl_st* noundef %s, i8* noundef %dgst_buf) local_unnamed_addr #0 {
entry:
  %md_len = alloca i32, align 4
  %0 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !112
  %call = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %2, i32 noundef 982, i8* noundef %3) #12
  %cmp = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp3 = icmp eq %struct.evp_md_ctx_st* %call2, null
  br i1 %cmp3, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call2, %struct.evp_md_st* noundef nonnull %call) #12
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.then17, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %call7 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call2, i8* noundef nonnull %arraydecay, i64 noundef 32) #12
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then17, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %arraydecay11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call12 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call2, i8* noundef nonnull %arraydecay11, i64 noundef 32) #12
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %call15 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call2, i8* noundef %dgst_buf, i32* noundef nonnull %md_len) #12
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.end
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call2) #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %lor.lhs.false14
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call2) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.end18
  %retval.0.ph = phi i32 [ 1, %if.end18 ], [ 0, %if.then17 ]
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_psk_preamble(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %identity = alloca [257 x i8], align 16
  %psk = alloca [512 x i8], align 16
  %0 = getelementptr inbounds [257 x i8], [257 x i8]* %identity, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %0) #13
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %psk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %1) #13
  %psk_client_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 67
  %2 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !165
  %cmp = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2757, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 224, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 257) #12
  %3 = load i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)** %psk_client_callback, align 8, !tbaa !165
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %psk_identity_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 8
  %5 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !152
  %call4 = call i32 %3(%struct.ssl_st* noundef nonnull %s, i8* noundef %5, i8* noundef nonnull %0, i32 noundef 256, i8* noundef nonnull %1, i32 noundef 512) #12
  %conv = zext i32 %call4 to i64
  %cmp5 = icmp ugt i32 %call4, 512
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2768, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.else:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %call4, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2772, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 223, i8* noundef null) #12
  br label %err

if.end12:                                         ; preds = %if.else
  %call14 = call i64 @strlen(i8* noundef nonnull %0) #14
  %cmp15 = icmp ugt i64 %call14, 256
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2778, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end18:                                         ; preds = %if.end12
  %call20 = call i8* @CRYPTO_memdup(i8* noundef nonnull %1, i64 noundef %conv, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2782) #12
  %call22 = call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2783) #12
  %cmp23 = icmp eq i8* %call20, null
  %cmp25 = icmp eq i8* %call22, null
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end18
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2785, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end28:                                         ; preds = %if.end18
  %psk29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 24
  %6 = load i8*, i8** %psk29, align 8, !tbaa !98
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2789) #12
  store i8* %call20, i8** %psk29, align 8, !tbaa !98
  %psklen35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 25
  store i64 %conv, i64* %psklen35, align 8, !tbaa !99
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %psk_identity = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 9
  %8 = load i8*, i8** %psk_identity, align 8, !tbaa !166
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2793) #12
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %psk_identity38 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 9
  store i8* %call22, i8** %psk_identity38, align 8, !tbaa !166
  %call40 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %0, i64 noundef %call14, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then41, label %err

if.then41:                                        ; preds = %if.end28
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2798, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cke_psk_preamble, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

err:                                              ; preds = %if.end28, %if.then41, %if.then27, %if.then17, %if.then10, %if.then7, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then10 ], [ 0, %if.then17 ], [ 0, %if.then27 ], [ 0, %if.then41 ], [ 1, %if.end28 ]
  %identitylen.0 = phi i64 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then10 ], [ %call14, %if.then17 ], [ %call14, %if.then27 ], [ %call14, %if.then41 ], [ %call14, %if.end28 ]
  %tmppsk.0 = phi i8* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then10 ], [ null, %if.then17 ], [ %call20, %if.then27 ], [ null, %if.then41 ], [ null, %if.end28 ]
  %tmpidentity.0 = phi i8* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then10 ], [ null, %if.then17 ], [ %call22, %if.then27 ], [ null, %if.then41 ], [ null, %if.end28 ]
  %psklen.0 = phi i64 [ 0, %if.then ], [ 512, %if.then7 ], [ 0, %if.then10 ], [ %conv, %if.then17 ], [ %conv, %if.then27 ], [ %conv, %if.then41 ], [ %conv, %if.end28 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef %psklen.0) #12
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 257) #12
  call void @CRYPTO_clear_free(i8* noundef %tmppsk.0, i64 noundef %psklen.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2807) #12
  call void @CRYPTO_clear_free(i8* noundef %tmpidentity.0, i64 noundef %identitylen.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2808) #12
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %0) #13
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_rsa(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %encdata = alloca i8*, align 8
  %enclen = alloca i64, align 8
  %0 = bitcast i8** %encdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %encdata, align 8, !tbaa !66
  %1 = bitcast i64* %enclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 11
  %3 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %cmp = icmp eq %struct.x509_st* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2830, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %3) #12
  %call3 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2836, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2841) #12
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2843, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %4 = load i32, i32* %client_version, align 4, !tbaa !70
  %5 = lshr i32 %4, 8
  %conv = trunc i32 %5 to i8
  store i8 %conv, i8* %call6, align 1, !tbaa !69
  %6 = load i32, i32* %client_version, align 4, !tbaa !70
  %conv11 = trunc i32 %6 to i8
  %arrayidx12 = getelementptr inbounds i8, i8* %call6, i64 1
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !69
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %add.ptr = getelementptr inbounds i8, i8* %call6, i64 2
  %call13 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef nonnull %add.ptr, i64 noundef 46, i32 noundef 0) #12
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2850, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end17:                                         ; preds = %if.end9
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !30
  %cmp18 = icmp sgt i32 %9, 768
  br i1 %cmp18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end17
  %call20 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2856, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end23:                                         ; preds = %land.lhs.true, %if.end17
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx25 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 0
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx25, align 8, !tbaa !74
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 85
  %12 = load i8*, i8** %propq, align 8, !tbaa !112
  %call27 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %11, %struct.evp_pkey_st* noundef %call, i8* noundef %12) #12
  %cmp28 = icmp eq %struct.evp_pkey_ctx_st* %call27, null
  br i1 %cmp28, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %call30 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call27) #12
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %call34 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call27, i8* noundef null, i64* noundef nonnull %enclen, i8* noundef nonnull %call6, i64 noundef 48) #12
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false33, %lor.lhs.false, %if.end23
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2863, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %err

if.end38:                                         ; preds = %lor.lhs.false33
  %13 = load i64, i64* %enclen, align 8, !tbaa !111
  %call39 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %13, i8** noundef nonnull %encdata) #12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end38
  %14 = load i8*, i8** %encdata, align 8, !tbaa !66
  %call42 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call27, i8* noundef %14, i64* noundef nonnull %enclen, i8* noundef nonnull %call6, i64 noundef 48) #12
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false41, %if.end38
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2868, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 119, i8* noundef null) #12
  br label %err

if.end46:                                         ; preds = %lor.lhs.false41
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call27) #12
  %15 = load i32, i32* %version, align 8, !tbaa !30
  %cmp48 = icmp sgt i32 %15, 768
  br i1 %cmp48, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end46
  %call51 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #12
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true50
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2876, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_rsa, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end54:                                         ; preds = %land.lhs.true50, %if.end46
  %16 = load i8*, i8** %encdata, align 8, !tbaa !66
  %17 = load i64, i64* %enclen, align 8, !tbaa !111
  %call55 = call i32 @ssl_log_rsa_client_key_exchange(%struct.ssl_st* noundef nonnull %s, i8* noundef %16, i64 noundef %17, i8* noundef nonnull %call6, i64 noundef 48) #12
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.end54
  %pms59 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call6, i8** %pms59, align 8, !tbaa !64
  %pmslen62 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 48, i64* %pmslen62, align 8, !tbaa !65
  br label %cleanup

err:                                              ; preds = %if.end54, %if.then53, %if.then45, %if.then37, %if.then22, %if.then16
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then16 ], [ %call27, %if.then37 ], [ %call27, %if.then45 ], [ null, %if.end54 ], [ null, %if.then53 ], [ null, %if.then22 ]
  call void @CRYPTO_clear_free(i8* noundef nonnull %call6, i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2891) #12
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end58, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %err ], [ 1, %if.end58 ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_dhe(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %keybytes = alloca i8*, align 8
  %encoded_pub = alloca i8*, align 8
  %0 = bitcast i8** %keybytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %keybytes, align 8, !tbaa !66
  %1 = bitcast i8** %encoded_pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store i8* null, i8** %encoded_pub, align 8, !tbaa !66
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2908, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %2) #12
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2914, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_dhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %2, i32 noundef 0) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef nonnull %encoded_pub) #12
  %cmp9 = icmp eq i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2928, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %2) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %call) #12
  %conv = sext i32 %call12 to i64
  %sub = sub i64 %conv, %call8
  %cmp13.not = icmp eq i64 %sub, 0
  br i1 %cmp13.not, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.end11
  %call16 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %sub, i8** noundef nonnull %keybytes, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then15
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2942, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end18:                                         ; preds = %if.then15
  %3 = load i8*, i8** %keybytes, align 8, !tbaa !66
  %call19 = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef %sub) #12
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end11
  %4 = load i8*, i8** %encoded_pub, align 8, !tbaa !66
  %call21 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %4, i64 noundef %call8, i64 noundef 2) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %err

if.then23:                                        ; preds = %if.end20
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2949, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_dhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

err:                                              ; preds = %if.end20, %if.end3, %if.then23, %if.then17, %if.then2, %if.then
  %ckey.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then2 ], [ %call, %if.end3 ], [ %call, %if.then23 ], [ %call, %if.then17 ], [ %call, %if.end20 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.end3 ], [ 0, %if.then23 ], [ 0, %if.then17 ], [ 1, %if.end20 ]
  %5 = load i8*, i8** %encoded_pub, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2955) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %ckey.0) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then10
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_ecdhe(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %encodedPoint = alloca i8*, align 8
  %0 = bitcast i8** %encodedPoint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %encodedPoint, align 8, !tbaa !66
  %peer_tmp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 35
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer_tmp, align 8, !tbaa !115
  %cmp = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2969, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_cke_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %1) #12
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2975, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_cke_ecdhe, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %1, i32 noundef 0) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call, i8** noundef nonnull %encodedPoint) #12
  %cmp9 = icmp eq i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2988, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_cke_ecdhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524304, i8* noundef null) #12
  br label %err

if.end11:                                         ; preds = %if.end7
  %2 = load i8*, i8** %encodedPoint, align 8, !tbaa !66
  %call12 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %2, i64 noundef %call8, i64 noundef 1) #12
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %err

if.then13:                                        ; preds = %if.end11
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2993, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tls_construct_cke_ecdhe, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

err:                                              ; preds = %if.end11, %if.end3, %if.then13, %if.then10, %if.then2
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end3 ], [ 0, %if.then10 ], [ 0, %if.then13 ], [ 1, %if.end11 ]
  %3 = load i8*, i8** %encodedPoint, align 8, !tbaa !66
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 2999) #12
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_gost(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %msglen = alloca i64, align 8
  %md_len = alloca i32, align 4
  %shared_ukm = alloca [32 x i8], align 16
  %tmp = alloca [256 x i8], align 16
  %0 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i32* %md_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %shared_ukm, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #13
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #13
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !36
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 5
  %5 = load i32, i32* %algorithm_auth, align 8, !tbaa !37
  %and = and i32 %5, 128
  %cmp.not = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp.not, i32 809, i32 982
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 11
  %7 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %cmp2 = icmp eq %struct.x509_st* %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3027, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 330, i8* noundef null) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 0
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %7) #12
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 85
  %11 = load i8*, i8** %propq, align 8, !tbaa !112
  %call6 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %9, %struct.evp_pkey_st* noundef %call, i8* noundef %11) #12
  %cmp7 = icmp eq %struct.evp_pkey_ctx_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3035, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3046) #12
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3048, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #12
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx17 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 0
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx17, align 8, !tbaa !74
  %call18 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef nonnull %call10, i64 noundef 32, i32 noundef 0) #12
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %if.end13
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3056, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp23 = icmp eq %struct.evp_md_ctx_st* %call22, null
  br i1 %cmp23, label %if.then42, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %call25 = tail call i8* @OBJ_nid2sn(i32 noundef %spec.select) #12
  %call26 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call25) #12
  %call27 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call22, %struct.evp_md_st* noundef %call26) #12
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %if.then42, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %call31 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %arraydecay, i64 noundef 32) #12
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then42, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %arraydecay35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call36 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %arraydecay35, i64 noundef 32) #12
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %if.then42, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  %call40 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %2, i32* noundef nonnull %md_len) #12
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false38, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false24, %if.end21
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3071, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end43:                                         ; preds = %lor.lhs.false38
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call22) #12
  %call45 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call6, i32 noundef -1, i32 noundef 512, i32 noundef 8, i32 noundef 8, i8* noundef nonnull %2) #12
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3078, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #12
  br label %err

if.end48:                                         ; preds = %if.end43
  store i64 255, i64* %msglen, align 8, !tbaa !111
  %call50 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call6, i8* noundef nonnull %3, i64* noundef nonnull %msglen, i8* noundef nonnull %call10, i64 noundef 32) #12
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3087, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #12
  br label %err

if.end53:                                         ; preds = %if.end48
  %call54 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 48, i64 noundef 1) #12
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %if.then63, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end53
  %14 = load i64, i64* %msglen, align 8, !tbaa !111
  %cmp56 = icmp ugt i64 %14, 127
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false59

land.lhs.true:                                    ; preds = %lor.lhs.false55
  %call57 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 129, i64 noundef 1) #12
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then63, label %land.lhs.true.lor.lhs.false59_crit_edge

land.lhs.true.lor.lhs.false59_crit_edge:          ; preds = %land.lhs.true
  %.pre = load i64, i64* %msglen, align 8, !tbaa !111
  br label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true.lor.lhs.false59_crit_edge, %lor.lhs.false55
  %15 = phi i64 [ %.pre, %land.lhs.true.lor.lhs.false59_crit_edge ], [ %14, %lor.lhs.false55 ]
  %call61 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %3, i64 noundef %15, i64 noundef 1) #12
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false59, %land.lhs.true, %if.end53
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3094, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_construct_cke_gost, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end64:                                         ; preds = %lor.lhs.false59
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #12
  %pms67 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call10, i8** %pms67, align 8, !tbaa !64
  %pmslen70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 32, i64* %pmslen70, align 8, !tbaa !65
  br label %cleanup

err:                                              ; preds = %if.then63, %if.then52, %if.then47, %if.then42, %if.then20, %if.then12
  %ukm_hash.0 = phi %struct.evp_md_ctx_st* [ null, %if.then12 ], [ null, %if.then20 ], [ %call22, %if.then42 ], [ null, %if.then47 ], [ null, %if.then52 ], [ null, %if.then63 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #12
  call void @CRYPTO_clear_free(i8* noundef %call10, i64 noundef 32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3105) #12
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ukm_hash.0) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end64, %if.then8, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then8 ], [ 0, %err ], [ 1, %if.end64 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_gost18(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %rnd_dgst = alloca [32 x i8], align 16
  %tmp = alloca [255 x i8], align 16
  %msglen = alloca i64, align 8
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %rnd_dgst, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #13
  %1 = getelementptr inbounds [255 x i8], [255 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %1) #13
  %2 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  %call = tail call i32 @ossl_gost18_cke_cipher_nid(%struct.ssl_st* noundef %s) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3163, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @ossl_gost_ukm(%struct.ssl_st* noundef %s, i8* noundef nonnull %0) #11
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3168, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3174) #12
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3176, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end8:                                          ; preds = %if.end4
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !74
  %call9 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef nonnull %call5, i64 noundef 32, i32 noundef 0) #12
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3181, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end12:                                         ; preds = %if.end8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 11
  %6 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !131
  %cmp13 = icmp eq %struct.x509_st* %6, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3189, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 330, i8* noundef null) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %libctx17 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx17, align 8, !tbaa !74
  %call18 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %6) #12
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 85
  %10 = load i8*, i8** %propq, align 8, !tbaa !112
  %call20 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %8, %struct.evp_pkey_st* noundef %call18, i8* noundef %10) #12
  %cmp21 = icmp eq %struct.evp_pkey_ctx_st* %call20, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3197, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call24 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call20) #12
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3202, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end27:                                         ; preds = %if.end23
  %call29 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call20, i32 noundef -1, i32 noundef 512, i32 noundef 8, i32 noundef 32, i8* noundef nonnull %0) #12
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3209, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #12
  br label %err

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call20, i32 noundef -1, i32 noundef 512, i32 noundef 12, i32 noundef %call, i8* noundef null) #12
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3215, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #12
  br label %err

if.end36:                                         ; preds = %if.end32
  store i64 255, i64* %msglen, align 8, !tbaa !111
  %call38 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call20, i8* noundef nonnull %1, i64* noundef nonnull %msglen, i8* noundef nonnull %call5, i64 noundef 32) #12
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3221, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #12
  br label %err

if.end41:                                         ; preds = %if.end36
  %11 = load i64, i64* %msglen, align 8, !tbaa !111
  %call43 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %1, i64 noundef %11) #12
  %tobool.not = icmp eq i32 %call43, 0
  br i1 %tobool.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3226, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_construct_cke_gost18, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

if.end45:                                         ; preds = %if.end41
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call20) #12
  %pms47 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 22
  store i8* %call5, i8** %pms47, align 8, !tbaa !64
  %pmslen50 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 23
  store i64 32, i64* %pmslen50, align 8, !tbaa !65
  br label %cleanup

err:                                              ; preds = %if.then44, %if.then40, %if.then35, %if.then31, %if.then26, %if.then11, %if.then7, %if.then3
  %pkey_ctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then11 ], [ %call20, %if.then26 ], [ %call20, %if.then31 ], [ %call20, %if.then35 ], [ %call20, %if.then40 ], [ %call20, %if.then44 ]
  %pms.0 = phi i8* [ null, %if.then3 ], [ null, %if.then7 ], [ %call5, %if.then11 ], [ %call5, %if.then26 ], [ %call5, %if.then31 ], [ %call5, %if.then35 ], [ %call5, %if.then40 ], [ %call5, %if.then44 ]
  %pmslen.0 = phi i64 [ 0, %if.then3 ], [ 32, %if.then7 ], [ 32, %if.then11 ], [ 32, %if.then26 ], [ 32, %if.then31 ], [ 32, %if.then35 ], [ 32, %if.then40 ], [ 32, %if.then44 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pkey_ctx.0) #12
  call void @CRYPTO_clear_free(i8* noundef %pms.0, i64 noundef %pmslen.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3237) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end45, %if.then22, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 0, %if.then14 ], [ 0, %if.then22 ], [ 1, %if.end45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_construct_cke_srp(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) unnamed_addr #0 {
entry:
  %abytes = alloca i8*, align 8
  %0 = bitcast i8** %abytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %abytes, align 8, !tbaa !66
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  %1 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !167
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #12
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call3 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %conv, i8** noundef nonnull %abytes, i64 noundef 2) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !167
  %3 = load i8*, i8** %abytes, align 8, !tbaa !66
  %call6 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %2, i8* noundef %3) #12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %srp_username = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 27
  %5 = load i8*, i8** %srp_username, align 8, !tbaa !168
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3258) #12
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %6 = load i8*, i8** %login, align 8, !tbaa !169
  %call8 = call i8* @CRYPTO_strdup(i8* noundef %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 3259) #12
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !32
  %srp_username10 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 27
  store i8* %call8, i8** %srp_username10, align 8, !tbaa !168
  %cmp13 = icmp eq i8* %call8, null
  br i1 %cmp13, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %entry, %lor.lhs.false
  %.sink25 = phi i32 [ 3253, %lor.lhs.false ], [ 3253, %entry ], [ 3261, %if.end ]
  %.sink = phi i32 [ 786691, %lor.lhs.false ], [ 786691, %entry ], [ 786688, %if.end ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_construct_cke_srp, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @srp_generate_client_master_secret(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ssl_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl3_check_client_certificate(%struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %call = tail call i32 @tls_choose_sigalg(%struct.ssl_st* noundef %s, i32 noundef 0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  %0 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !170
  %cmp = icmp eq %struct.sigalg_lookup_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !92
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 4
  %2 = load i32, i32* %cert_flags, align 4, !tbaa !171
  %and = and i32 %2, 196609
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @tls1_check_chain(%struct.ssl_st* noundef nonnull %s, %struct.x509_st* noundef null, %struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef -2) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_do_client_cert_cb(%struct.ssl_st* noundef %s, %struct.x509_st** noundef %px509, %struct.evp_pkey_st** noundef %ppkey) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %client_cert_engine = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 57
  %1 = load %struct.engine_st*, %struct.engine_st** %client_cert_engine, align 8, !tbaa !172
  %tobool.not = icmp eq %struct.engine_st* %1, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @tls_engine_load_ssl_client_cert(%struct.ssl_st* noundef nonnull %s, %struct.x509_st** noundef %px509, %struct.evp_pkey_st** noundef %ppkey) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end2_crit_edge, label %cleanup

if.then.if.end2_crit_edge:                        ; preds = %if.then
  %.pre = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry
  %2 = phi %struct.ssl_ctx_st* [ %.pre, %if.then.if.end2_crit_edge ], [ %0, %entry ]
  %client_cert_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 21
  %3 = load i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)** %client_cert_cb, align 8, !tbaa !173
  %tobool4.not = icmp eq i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)* %3, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end2
  %call8 = tail call i32 %3(%struct.ssl_st* noundef nonnull %s, %struct.x509_st** noundef %px509, %struct.evp_pkey_st** noundef %ppkey) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.then5 ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

declare i32 @SSL_use_certificate(%struct.ssl_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @ssl3_send_alert(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @ssl3_output_cert_chain(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, %struct.cert_pkey_st* noundef) local_unnamed_addr #3

declare i32 @ssl_check_srvr_ecc_cert_and_alg(%struct.x509_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @SSL_renegotiate(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @SSL_renegotiate_abbreviated(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls_engine_load_ssl_client_cert(%struct.ssl_st* noundef, %struct.x509_st** noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

declare i32 @tls13_restore_handshake_digest_for_pha(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !143
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !143
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef %len) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %1 = load i8, i8* %0, align 1, !tbaa !69
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !67
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !69
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !67
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  store i8* %0, i8** %data, align 8, !tbaa !66
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %1 = load i8, i8* %0, align 1, !tbaa !69
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !67
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ssl_cipher_disabled(%struct.ssl_st* noundef, %struct.ssl_cipher_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st_SSL_CIPHER* @ssl_get_ciphers_by_id(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @create_synthetic_message_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ssl3_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %1 = load i8, i8* %0, align 1, !tbaa !69
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !111
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !69
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !111
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !69
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !111
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_strndup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !66
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 450) #12
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !142
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %call1 = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 453) #12
  store i8* %call1, i8** %data, align 8, !tbaa !66
  %cmp = icmp ne i8* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @srp_verify_server_param(%struct.ssl_st* noundef) local_unnamed_addr #3

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #3

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_param_check_quick(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @tls1_check_group_id(%struct.ssl_st* noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @ssl_generate_param_group(%struct.ssl_st* noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %call1 = tail call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #9 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !142
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !143
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !142
  %1 = load i8, i8* %0, align 1, !tbaa !69
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  store i64 %shl, i64* %data, align 8, !tbaa !111
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !69
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !111
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !69
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or8 = or i64 %shl7, %or
  store i64 %or8, i64* %data, align 8, !tbaa !111
  %add.ptr10 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !69
  %conv11 = zext i8 %4 to i64
  %or12 = or i64 %or8, %conv11
  store i64 %or12, i64* %data, align 8, !tbaa !111
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #8

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #3

declare i32 @ssl_log_rsa_client_key_exchange(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @ssl_derive(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #3

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @tls_choose_sigalg(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tls1_check_chain(%struct.ssl_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl_set_client_disabled(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!22 = !{!23, !9, i64 192}
!23 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!24 = !{!25, !6, i64 96}
!25 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!26 = !{!23, !6, i64 0}
!27 = !{!10, !7, i64 20}
!28 = !{!5, !6, i64 1232}
!29 = !{!5, !6, i64 2712}
!30 = !{!5, !6, i64 0}
!31 = !{!5, !9, i64 2808}
!32 = !{!5, !9, i64 2328}
!33 = !{!34, !9, i64 824}
!34 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !35, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!35 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!36 = !{!5, !9, i64 736}
!37 = !{!38, !6, i64 32}
!38 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!39 = !{!38, !6, i64 28}
!40 = !{!5, !6, i64 2676}
!41 = !{!5, !11, i64 152}
!42 = !{!5, !6, i64 40}
!43 = !{!5, !7, i64 2984}
!44 = !{!5, !6, i64 2976}
!45 = !{!5, !7, i64 132}
!46 = !{!5, !11, i64 2536}
!47 = !{!5, !6, i64 752}
!48 = !{!5, !11, i64 168}
!49 = !{!5, !7, i64 2280}
!50 = !{!5, !6, i64 1156}
!51 = !{!5, !6, i64 68}
!52 = !{!5, !6, i64 2864}
!53 = !{!5, !6, i64 2980}
!54 = !{!10, !6, i64 48}
!55 = !{!5, !6, i64 7488}
!56 = !{!5, !6, i64 2568}
!57 = !{!5, !9, i64 2168}
!58 = !{!34, !9, i64 760}
!59 = !{!5, !9, i64 832}
!60 = !{!61, !6, i64 0}
!61 = !{!"ssl_comp_st", !6, i64 0, !9, i64 8, !9, i64 16}
!62 = !{!25, !9, i64 16}
!63 = !{!25, !9, i64 32}
!64 = !{!5, !9, i64 864}
!65 = !{!5, !11, i64 872}
!66 = !{!9, !9, i64 0}
!67 = !{!6, !6, i64 0}
!68 = !{!34, !6, i64 0}
!69 = !{!7, !7, i64 0}
!70 = !{!5, !6, i64 2572}
!71 = !{!5, !6, i64 60}
!72 = !{!5, !11, i64 2400}
!73 = !{!5, !9, i64 2472}
!74 = !{!75, !9, i64 0}
!75 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !76, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !77, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !78, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!76 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!77 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!78 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!79 = !{!34, !11, i64 592}
!80 = !{!5, !9, i64 1208}
!81 = !{!82, !11, i64 256}
!82 = !{!"dtls1_state_st", !7, i64 0, !11, i64 256, !6, i64 264, !14, i64 268, !14, i64 270, !14, i64 272, !9, i64 280, !9, i64 288, !11, i64 296, !11, i64 304, !83, i64 312, !83, i64 400, !6, i64 488, !85, i64 496, !6, i64 512, !6, i64 516, !9, i64 520}
!83 = !{!"hm_header_st", !7, i64 0, !11, i64 8, !14, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !84, i64 48}
!84 = !{!"dtls1_retransmit_state", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32}
!85 = !{!"timeval", !11, i64 0, !11, i64 8}
!86 = !{!75, !9, i64 280}
!87 = !{!5, !6, i64 1000}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!5, !9, i64 2992}
!91 = !{!5, !11, i64 3000}
!92 = !{!5, !9, i64 2200}
!93 = !{!94, !9, i64 0}
!94 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !95, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!95 = !{!"", !9, i64 0, !11, i64 8}
!96 = !{!5, !11, i64 576}
!97 = !{!5, !11, i64 712}
!98 = !{!5, !9, i64 880}
!99 = !{!5, !11, i64 888}
!100 = !{!5, !11, i64 2848}
!101 = !{!5, !9, i64 2840}
!102 = !{!5, !11, i64 2560}
!103 = !{!5, !9, i64 2816}
!104 = !{!34, !11, i64 8}
!105 = !{!5, !11, i64 2288}
!106 = !{!34, !11, i64 632}
!107 = !{!5, !9, i64 2952}
!108 = !{!5, !6, i64 996}
!109 = !{!34, !6, i64 756}
!110 = !{!34, !9, i64 704}
!111 = !{!11, !11, i64 0}
!112 = !{!75, !9, i64 1088}
!113 = distinct !{!113, !89}
!114 = !{i64 0, i64 8, !66, i64 8, i64 8, !111}
!115 = !{!5, !9, i64 1200}
!116 = !{!5, !9, i64 944}
!117 = !{!118, !6, i64 20}
!118 = !{!"sigalg_lookup_st", !9, i64 0, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!119 = !{!5, !9, i64 760}
!120 = !{!5, !11, i64 768}
!121 = !{!75, !6, i64 80}
!122 = !{!34, !11, i64 736}
!123 = !{!34, !11, i64 832}
!124 = !{!34, !11, i64 840}
!125 = !{!34, !6, i64 848}
!126 = !{!34, !6, i64 688}
!127 = !{!5, !6, i64 2408}
!128 = !{!5, !11, i64 2488}
!129 = !{!130, !6, i64 4}
!130 = !{!"", !6, i64 0, !6, i64 4}
!131 = !{!34, !9, i64 696}
!132 = !{!34, !11, i64 712}
!133 = !{!94, !9, i64 440}
!134 = !{!94, !9, i64 448}
!135 = !{!5, !6, i64 2544}
!136 = !{!23, !9, i64 152}
!137 = !{!38, !6, i64 56}
!138 = !{!38, !6, i64 52}
!139 = !{!38, !6, i64 48}
!140 = !{!38, !6, i64 44}
!141 = distinct !{!141, !89}
!142 = !{!95, !9, i64 0}
!143 = !{!95, !11, i64 8}
!144 = !{!38, !6, i64 24}
!145 = !{!34, !11, i64 768}
!146 = !{!38, !6, i64 64}
!147 = !{!5, !11, i64 2880}
!148 = !{!5, !9, i64 744}
!149 = !{!5, !9, i64 136}
!150 = !{!151, !9, i64 8}
!151 = !{!"buf_mem_st", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 24}
!152 = !{!34, !9, i64 672}
!153 = !{!5, !9, i64 3064}
!154 = !{!5, !9, i64 3072}
!155 = !{!5, !9, i64 3080}
!156 = !{!5, !9, i64 3088}
!157 = !{!34, !6, i64 776}
!158 = !{!5, !9, i64 2696}
!159 = !{!5, !11, i64 2704}
!160 = !{!5, !6, i64 2656}
!161 = !{!75, !9, i64 592}
!162 = !{!75, !9, i64 600}
!163 = !{!5, !9, i64 2920}
!164 = !{!38, !6, i64 36}
!165 = !{!5, !9, i64 2440}
!166 = !{!34, !9, i64 680}
!167 = !{!5, !9, i64 3096}
!168 = !{!34, !9, i64 880}
!169 = !{!5, !9, i64 3056}
!170 = !{!5, !9, i64 896}
!171 = !{!94, !6, i64 28}
!172 = !{!75, !9, i64 512}
!173 = !{!75, !9, i64 200}
